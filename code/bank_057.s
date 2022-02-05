; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $057", ROMX[$4000], BANK[$57]

	add sp, -$10                                     ; $4000: $e8 $f0
	sbc $df                                          ; $4002: $de $df
	ld a, a                                          ; $4004: $7f
	ld l, e                                          ; $4005: $6b
	ld a, c                                          ; $4006: $79
	ld d, l                                          ; $4007: $55
	add b                                            ; $4008: $80
	add hl, sp                                       ; $4009: $39
	ld d, d                                          ; $400a: $52
	ld h, d                                          ; $400b: $62
	dec h                                            ; $400c: $25
	ld b, h                                          ; $400d: $44
	ld c, d                                          ; $400e: $4a
	ld c, b                                          ; $400f: $48
	adc h                                            ; $4010: $8c
	sbc $bc                                          ; $4011: $de $bc
	cp h                                             ; $4013: $bc
	ld hl, sp-$07                                    ; $4014: $f8 $f9
	pop af                                           ; $4016: $f1
	ldh a, [c]                                       ; $4017: $f2
	ldh a, [c]                                       ; $4018: $f2
	ld [bc], a                                       ; $4019: $02
	dec b                                            ; $401a: $05
	nop                                              ; $401b: $00
	add hl, bc                                       ; $401c: $09
	inc bc                                           ; $401d: $03
	inc de                                           ; $401e: $13
	add [hl]                                         ; $401f: $86
	ld l, $24                                        ; $4020: $2e $24
	ld c, b                                          ; $4022: $48
	sbc c                                            ; $4023: $99
	or e                                             ; $4024: $b3
	ld [hl], $66                                     ; $4025: $36 $66
	ld l, h                                          ; $4027: $6c
	sbc c                                            ; $4028: $99
	ret z                                            ; $4029: $c8

	pop hl                                           ; $402a: $e1
	jp nz, $8f85                                     ; $402b: $c2 $85 $8f

	inc bc                                           ; $402e: $03
	sbc $07                                          ; $402f: $de $07
	sbc h                                            ; $4031: $9c
	ld b, b                                          ; $4032: $40
	add c                                            ; $4033: $81
	add e                                            ; $4034: $83
	ld a, e                                          ; $4035: $7b
	ld sp, hl                                        ; $4036: $f9
	rst SubAFromDE                                          ; $4037: $df
	dec b                                            ; $4038: $05
	add [hl]                                         ; $4039: $86
	db $e4                                           ; $403a: $e4
	sub [hl]                                         ; $403b: $96
	ld [hl], d                                       ; $403c: $72
	ldh a, [c]                                       ; $403d: $f2
	or $ee                                           ; $403e: $f6 $ee
	rst $38                                          ; $4040: $ff
	ld a, a                                          ; $4041: $7f
	dec b                                            ; $4042: $05
	db $e4                                           ; $4043: $e4
	and h                                            ; $4044: $a4
	inc h                                            ; $4045: $24
	inc h                                            ; $4046: $24
	inc [hl]                                         ; $4047: $34
	rra                                              ; $4048: $1f
	adc h                                            ; $4049: $8c
	ld h, b                                          ; $404a: $60
	jr nz, jr_057_406d                               ; $404b: $20 $20

	or b                                             ; $404d: $b0
	ldh a, [rSVBK]                                   ; $404e: $f0 $70
	ldh a, [$f8]                                     ; $4050: $f0 $f8
	ld b, b                                          ; $4052: $40
	sbc $a0                                          ; $4053: $de $a0
	ld a, c                                          ; $4055: $79
	ld c, $9d                                        ; $4056: $0e $9d
	nop                                              ; $4058: $00
	inc bc                                           ; $4059: $03
	ld a, e                                          ; $405a: $7b
	jp c, Jump_057_5360                              ; $405b: $da $60 $53

	ld [hl], l                                       ; $405e: $75
	ld a, a                                          ; $405f: $7f
	sbc c                                            ; $4060: $99
	ret nz                                           ; $4061: $c0

	ldh [$e0], a                                     ; $4062: $e0 $e0
	ldh a, [$d0]                                     ; $4064: $f0 $d0
	and b                                            ; $4066: $a0
	ei                                               ; $4067: $fb
	sbc l                                            ; $4068: $9d
	jr nc, jr_057_40cb                               ; $4069: $30 $60

	ld [hl], d                                       ; $406b: $72
	and h                                            ; $406c: $a4

jr_057_406d:
	ld a, a                                          ; $406d: $7f
	cp $6f                                           ; $406e: $fe $6f
	sbc $de                                          ; $4070: $de $de
	ld bc, $0393                                     ; $4072: $01 $93 $03
	ld e, d                                          ; $4075: $5a
	sbc $bf                                          ; $4076: $de $bf
	cp e                                             ; $4078: $bb
	ld h, l                                          ; $4079: $65
	push bc                                          ; $407a: $c5
	sub h                                            ; $407b: $94
	ld d, [hl]                                       ; $407c: $56
	ld c, a                                          ; $407d: $4f
	ld e, a                                          ; $407e: $5f
	sbc a                                            ; $407f: $9f

jr_057_4080:
	ld a, d                                          ; $4080: $7a
	reti                                             ; $4081: $d9


	adc c                                            ; $4082: $89
	rst AddAOntoHL                                          ; $4083: $ef
	db $eb                                           ; $4084: $eb
	rst AddAOntoHL                                          ; $4085: $ef
	xor a                                            ; $4086: $af
	and c                                            ; $4087: $a1
	ld a, [hl]                                       ; $4088: $7e
	dec a                                            ; $4089: $3d
	add d                                            ; $408a: $82
	db $fc                                           ; $408b: $fc
	ld d, b                                          ; $408c: $50
	ccf                                              ; $408d: $3f
	ccf                                              ; $408e: $3f
	ld sp, $c39f                                     ; $408f: $31 $9f $c3
	cp $fc                                           ; $4092: $fe $fc
	ret nc                                           ; $4094: $d0

	rst $38                                          ; $4095: $ff
	rst AddAOntoHL                                          ; $4096: $ef
	rst SubAFromBC                                          ; $4097: $e7
	pop af                                           ; $4098: $f1
	sbc $7e                                          ; $4099: $de $7e
	sbc c                                            ; $409b: $99
	inc a                                            ; $409c: $3c

Jump_057_409d:
	xor a                                            ; $409d: $af
	daa                                              ; $409e: $27
	db $e3                                           ; $409f: $e3
	di                                               ; $40a0: $f3
	adc [hl]                                         ; $40a1: $8e
	sbc $02                                          ; $40a2: $de $02
	add b                                            ; $40a4: $80
	rst SubAFromDE                                          ; $40a5: $df
	ldh [$f0], a                                     ; $40a6: $e0 $f0
	ld l, e                                          ; $40a8: $6b
	ld a, a                                          ; $40a9: $7f
	ld a, a                                          ; $40aa: $7f
	daa                                              ; $40ab: $27
	xor l                                            ; $40ac: $ad
	ld de, $c08e                                     ; $40ad: $11 $8e $c0
	ld [hl], c                                       ; $40b0: $71
	ld a, a                                          ; $40b1: $7f
	ld c, a                                          ; $40b2: $4f
	ccf                                              ; $40b3: $3f
	xor $10                                          ; $40b4: $ee $10
	jr nz, jr_057_4118                               ; $40b6: $20 $60

	ld hl, sp+$7f                                    ; $40b8: $f8 $7f
	rst GetHLinHL                                          ; $40ba: $cf
	ld e, h                                          ; $40bb: $5c
	ld [hl], c                                       ; $40bc: $71
	db $10                                           ; $40bd: $10
	jr nz, jr_057_4080                               ; $40be: $20 $c0

	ldh a, [$ef]                                     ; $40c0: $f0 $ef
	rst JumpTable                                          ; $40c2: $c7
	sbc [hl]                                         ; $40c3: $9e
	adc [hl]                                         ; $40c4: $8e
	ei                                               ; $40c5: $fb
	dec b                                            ; $40c6: $05
	add hl, bc                                       ; $40c7: $09
	rra                                              ; $40c8: $1f
	ld [hl], a                                       ; $40c9: $77
	rst JumpTable                                          ; $40ca: $c7

jr_057_40cb:
	dec de                                           ; $40cb: $1b
	ld a, e                                          ; $40cc: $7b
	db $fd                                           ; $40cd: $fd
	ld [$1e04], sp                                   ; $40ce: $08 $04 $1e
	ld a, a                                          ; $40d1: $7f
	rst AddAOntoHL                                          ; $40d2: $ef
	cp a                                             ; $40d3: $bf
	rst $38                                          ; $40d4: $ff
	rst $38                                          ; $40d5: $ff
	db $fd                                           ; $40d6: $fd
	rst SubAFromDE                                          ; $40d7: $df
	add b                                            ; $40d8: $80
	rst SubAFromDE                                          ; $40d9: $df
	ret nz                                           ; $40da: $c0

	ld h, a                                          ; $40db: $67
	ld hl, sp-$69                                    ; $40dc: $f8 $97

jr_057_40de:
	db $fd                                           ; $40de: $fd
	or a                                             ; $40df: $b7
	ld a, [hl]                                       ; $40e0: $7e
	db $eb                                           ; $40e1: $eb
	or a                                             ; $40e2: $b7
	ld [$aa57], a                                    ; $40e3: $ea $57 $aa
	ld [hl], e                                       ; $40e6: $73
	add b                                            ; $40e7: $80
	sbc $03                                          ; $40e8: $de $03
	sbc e                                            ; $40ea: $9b
	rst $38                                          ; $40eb: $ff
	xor [hl]                                         ; $40ec: $ae
	ld hl, sp-$20                                    ; $40ed: $f8 $e0
	ld a, b                                          ; $40ef: $78
	dec h                                            ; $40f0: $25
	rst SubAFromDE                                          ; $40f1: $df
	ld bc, $079d                                     ; $40f2: $01 $9d $07
	rra                                              ; $40f5: $1f
	call c, $95ff                                    ; $40f6: $dc $ff $95
	db $fc                                           ; $40f9: $fc
	ld e, $07                                        ; $40fa: $1e $07
	ld bc, $4830                                     ; $40fc: $01 $30 $48
	add l                                            ; $40ff: $85
	inc sp                                           ; $4100: $33
	ld hl, sp-$04                                    ; $4101: $f8 $fc
	sbc $ff                                          ; $4103: $de $ff
	adc a                                            ; $4105: $8f
	rst SubAFromDE                                          ; $4106: $df
	cp a                                             ; $4107: $bf
	ld a, [hl]                                       ; $4108: $7e
	di                                               ; $4109: $f3
	rrca                                             ; $410a: $0f
	cp a                                             ; $410b: $bf
	rst $38                                          ; $410c: $ff
	ld a, a                                          ; $410d: $7f
	jr nc, jr_057_40de                               ; $410e: $30 $ce

	daa                                              ; $4110: $27
	sub e                                            ; $4111: $93
	rlca                                             ; $4112: $07
	dec de                                           ; $4113: $1b
	db $e3                                           ; $4114: $e3
	rst JumpTable                                          ; $4115: $c7
	sbc $ff                                          ; $4116: $de $ff

jr_057_4118:
	sbc c                                            ; $4118: $99
	ldh a, [$f4]                                     ; $4119: $f0 $f4
	db $ec                                           ; $411b: $ec
	ld [$daca], a                                    ; $411c: $ea $ca $da
	ld a, d                                          ; $411f: $7a
	jp $fb8d                                         ; $4120: $c3 $8d $fb


	di                                               ; $4123: $f3
	push af                                          ; $4124: $f5
	push af                                          ; $4125: $f5
	push hl                                          ; $4126: $e5
	ld h, b                                          ; $4127: $60
	ld h, b                                          ; $4128: $60
	sbc b                                            ; $4129: $98
	sbc d                                            ; $412a: $9a
	sbc c                                            ; $412b: $99
	sbc b                                            ; $412c: $98
	sbc c                                            ; $412d: $99
	sbc c                                            ; $412e: $99
	adc c                                            ; $412f: $89
	adc c                                            ; $4130: $89
	and $e4                                          ; $4131: $e6 $e4
	db $e4                                           ; $4133: $e4
	sbc $e5                                          ; $4134: $de $e5
	rst SubAFromDE                                          ; $4136: $df
	push af                                          ; $4137: $f5
	rst SubAFromDE                                          ; $4138: $df
	ld c, $dc                                        ; $4139: $0e $dc
	ld e, $9c                                        ; $413b: $1e $9c
	adc [hl]                                         ; $413d: $8e
	ret c                                            ; $413e: $d8

	ret c                                            ; $413f: $d8

	db $db                                           ; $4140: $db
	ret nc                                           ; $4141: $d0

	sub a                                            ; $4142: $97
	ld b, $02                                        ; $4143: $06 $02
	ld [bc], a                                       ; $4145: $02
	rlca                                             ; $4146: $07
	inc bc                                           ; $4147: $03
	nop                                              ; $4148: $00
	dec b                                            ; $4149: $05

jr_057_414a:
	nop                                              ; $414a: $00
	sbc $05                                          ; $414b: $de $05
	rst SubAFromDE                                          ; $414d: $df
	inc b                                            ; $414e: $04
	adc a                                            ; $414f: $8f
	rlca                                             ; $4150: $07
	ld [bc], a                                       ; $4151: $02
	ld [bc], a                                       ; $4152: $02
	db $fd                                           ; $4153: $fd
	cp [hl]                                          ; $4154: $be
	rst FarCall                                          ; $4155: $f7
	ld [hl], l                                       ; $4156: $75
	dec a                                            ; $4157: $3d
	adc l                                            ; $4158: $8d
	dec c                                            ; $4159: $0d
	rrca                                             ; $415a: $0f
	adc [hl]                                         ; $415b: $8e
	ld c, a                                          ; $415c: $4f
	rrca                                             ; $415d: $0f
	adc a                                            ; $415e: $8f
	rst JumpTable                                          ; $415f: $c7
	sbc $07                                          ; $4160: $de $07
	rst SubAFromDE                                          ; $4162: $df
	ld hl, sp-$65                                    ; $4163: $f8 $9b
	ld a, h                                          ; $4165: $7c
	cp h                                             ; $4166: $bc
	sbc $ef                                          ; $4167: $de $ef
	ld [hl], a                                       ; $4169: $77
	ld e, b                                          ; $416a: $58
	ld a, a                                          ; $416b: $7f
	ld h, e                                          ; $416c: $63
	ld a, a                                          ; $416d: $7f
	dec h                                            ; $416e: $25
	ld a, h                                          ; $416f: $7c
	and c                                            ; $4170: $a1
	sbc l                                            ; $4171: $9d
	ld bc, $7a05                                     ; $4172: $01 $05 $7a
	pop hl                                           ; $4175: $e1
	ld a, e                                          ; $4176: $7b
	db $f4                                           ; $4177: $f4
	ld a, [hl]                                       ; $4178: $7e
	or a                                             ; $4179: $b7
	ld h, [hl]                                       ; $417a: $66
	cp a                                             ; $417b: $bf
	ld a, e                                          ; $417c: $7b
	ld c, d                                          ; $417d: $4a
	ld a, e                                          ; $417e: $7b
	ld h, b                                          ; $417f: $60
	ld a, l                                          ; $4180: $7d
	pop de                                           ; $4181: $d1
	ld [hl], e                                       ; $4182: $73
	dec a                                            ; $4183: $3d
	ld a, l                                          ; $4184: $7d
	ld [hl], b                                       ; $4185: $70
	add b                                            ; $4186: $80
	inc bc                                           ; $4187: $03
	inc c                                            ; $4188: $0c
	inc e                                            ; $4189: $1c
	ccf                                              ; $418a: $3f
	ld a, h                                          ; $418b: $7c
	ld hl, sp-$06                                    ; $418c: $f8 $fa
	ld [bc], a                                       ; $418e: $02
	ld b, $07                                        ; $418f: $06 $07
	rrca                                             ; $4191: $0f
	rra                                              ; $4192: $1f
	ccf                                              ; $4193: $3f
	ld a, a                                          ; $4194: $7f
	db $fd                                           ; $4195: $fd
	ld d, [hl]                                       ; $4196: $56
	ld d, l                                          ; $4197: $55
	ld d, e                                          ; $4198: $53
	sub d                                            ; $4199: $92
	add hl, de                                       ; $419a: $19
	sbc l                                            ; $419b: $9d
	push bc                                          ; $419c: $c5
	jp nz, Jump_057_6b6b                             ; $419d: $c2 $6b $6b

	db $ed                                           ; $41a0: $ed
	db $ed                                           ; $41a1: $ed
	and $66                                          ; $41a2: $e6 $66
	ld [hl], $37                                     ; $41a4: $36 $37
	add a                                            ; $41a6: $87
	or b                                             ; $41a7: $b0
	jp nc, $b76a                                     ; $41a8: $d2 $6a $b7

	sbc e                                            ; $41ab: $9b
	ld c, a                                          ; $41ac: $4f
	ld h, a                                          ; $41ad: $67
	or e                                             ; $41ae: $b3
	ld h, b                                          ; $41af: $60
	jr nc, jr_057_414a                               ; $41b0: $30 $98

	call z, $f2e6                                    ; $41b2: $cc $e6 $f2
	ld sp, hl                                        ; $41b5: $f9
	ld a, l                                          ; $41b6: $7d
	cpl                                              ; $41b7: $2f
	jr nz, jr_057_41ea                               ; $41b8: $20 $30

	ld sp, $9f38                                     ; $41ba: $31 $38 $9f
	sbc h                                            ; $41bd: $9c
	sbc e                                            ; $41be: $9b
	ld a, e                                          ; $41bf: $7b
	or c                                             ; $41c0: $b1
	adc [hl]                                         ; $41c1: $8e
	ld bc, $0702                                     ; $41c2: $01 $02 $07
	ld c, $3f                                        ; $41c5: $0e $3f
	ld a, a                                          ; $41c7: $7f
	dec sp                                           ; $41c8: $3b
	inc a                                            ; $41c9: $3c
	ld sp, $1fc7                                     ; $41ca: $31 $c7 $1f
	ld a, a                                          ; $41cd: $7f
	rst $38                                          ; $41ce: $ff
	ld sp, hl                                        ; $41cf: $f9
	ld [hl], a                                       ; $41d0: $77
	adc $3b                                          ; $41d1: $ce $3b
	halt                                             ; $41d3: $76
	ldh [rPCM34], a                                  ; $41d4: $e0 $77
	db $f4                                           ; $41d6: $f4
	rst SubAFromDE                                          ; $41d7: $df
	rst $38                                          ; $41d8: $ff
	sbc l                                            ; $41d9: $9d
	db $fd                                           ; $41da: $fd
	db $f4                                           ; $41db: $f4
	ld [hl], a                                       ; $41dc: $77
	db $f4                                           ; $41dd: $f4
	rst SubAFromDE                                          ; $41de: $df
	rst $38                                          ; $41df: $ff
	ld a, h                                          ; $41e0: $7c
	res 2, a                                         ; $41e1: $cb $97
	db $fd                                           ; $41e3: $fd
	xor $f6                                          ; $41e4: $ee $f6
	ei                                               ; $41e6: $fb
	ei                                               ; $41e7: $fb
	ld sp, hl                                        ; $41e8: $f9
	ldh a, [c]                                       ; $41e9: $f2

jr_057_41ea:
	ld [hl], c                                       ; $41ea: $71
	call c, $9cff                                    ; $41eb: $dc $ff $9c
	ei                                               ; $41ee: $fb
	db $f4                                           ; $41ef: $f4
	ld sp, hl                                        ; $41f0: $f9
	ld a, d                                          ; $41f1: $7a
	ld b, d                                          ; $41f2: $42
	sbc d                                            ; $41f3: $9a
	ld [hl], b                                       ; $41f4: $70
	ld a, b                                          ; $41f5: $78
	cp b                                             ; $41f6: $b8
	cp h                                             ; $41f7: $bc
	call c, $f87b                                    ; $41f8: $dc $7b $f8
	ld a, a                                          ; $41fb: $7f
	ld h, d                                          ; $41fc: $62
	ld a, [hl]                                       ; $41fd: $7e
	db $eb                                           ; $41fe: $eb
	sub l                                            ; $41ff: $95
	db $fc                                           ; $4200: $fc
	ld d, a                                          ; $4201: $57
	xor l                                            ; $4202: $ad
	ld e, b                                          ; $4203: $58
	or b                                             ; $4204: $b0
	ld d, b                                          ; $4205: $50
	and b                                            ; $4206: $a0
	ld h, b                                          ; $4207: $60
	ld de, $7b03                                     ; $4208: $11 $03 $7b
	add c                                            ; $420b: $81
	ld a, a                                          ; $420c: $7f
	add b                                            ; $420d: $80
	sub l                                            ; $420e: $95
	ccf                                              ; $420f: $3f
	rra                                              ; $4210: $1f
	ld [bc], a                                       ; $4211: $02
	inc b                                            ; $4212: $04
	ld hl, sp+$10                                    ; $4213: $f8 $10
	jr nz, jr_057_4257                               ; $4215: $20 $40

	add b                                            ; $4217: $80
	inc bc                                           ; $4218: $03
	reti                                             ; $4219: $d9


	rst $38                                          ; $421a: $ff
	sbc l                                            ; $421b: $9d
	ld a, a                                          ; $421c: $7f
	add hl, sp                                       ; $421d: $39
	ld a, e                                          ; $421e: $7b
	xor a                                            ; $421f: $af
	add b                                            ; $4220: $80
	ld a, a                                          ; $4221: $7f
	ldh [$80], a                                     ; $4222: $e0 $80
	rst GetHLinHL                                          ; $4224: $cf
	pop af                                           ; $4225: $f1
	db $fc                                           ; $4226: $fc
	ldh [hDisp0_OBP1], a                                     ; $4227: $e0 $87
	ld hl, sp-$40                                    ; $4229: $f8 $c0
	nop                                              ; $422b: $00
	sub e                                            ; $422c: $93
	ret                                              ; $422d: $c9


	add sp, -$18                                     ; $422e: $e8 $e8
	rst AddAOntoHL                                          ; $4230: $ef
	rst AddAOntoHL                                          ; $4231: $ef
	cpl                                              ; $4232: $2f
	cpl                                              ; $4233: $2f
	rst $38                                          ; $4234: $ff
	ld a, a                                          ; $4235: $7f
	rst AddAOntoHL                                          ; $4236: $ef
	cpl                                              ; $4237: $2f
	rst AddAOntoHL                                          ; $4238: $ef
	jr z, jr_057_4274                                ; $4239: $28 $39

	inc a                                            ; $423b: $3c
	rst SubAFromDE                                          ; $423c: $df
	rst AddAOntoHL                                          ; $423d: $ef
	db $ed                                           ; $423e: $ed
	push af                                          ; $423f: $f5
	sub [hl]                                         ; $4240: $96
	jp c, $9694                                      ; $4241: $da $94 $96

	adc e                                            ; $4244: $8b
	ldh [$f0], a                                     ; $4245: $e0 $f0
	ldh a, [c]                                       ; $4247: $f2
	ld a, d                                          ; $4248: $7a
	db $fd                                           ; $4249: $fd
	sbc $ff                                          ; $424a: $de $ff
	sub l                                            ; $424c: $95
	ld c, e                                          ; $424d: $4b
	rst JumpTable                                          ; $424e: $c7
	push bc                                          ; $424f: $c5
	push hl                                          ; $4250: $e5
	or l                                             ; $4251: $b5
	ld [hl], d                                       ; $4252: $72
	ld a, [de]                                       ; $4253: $1a
	sbc l                                            ; $4254: $9d
	push af                                          ; $4255: $f5
	ld a, l                                          ; $4256: $7d

jr_057_4257:
	sbc $7f                                          ; $4257: $de $7f
	ld a, e                                          ; $4259: $7b
	ld a, h                                          ; $425a: $7c
	adc l                                            ; $425b: $8d
	adc [hl]                                         ; $425c: $8e
	and [hl]                                         ; $425d: $a6
	ld b, h                                          ; $425e: $44
	ld d, b                                          ; $425f: $50
	ld l, b                                          ; $4260: $68
	or h                                             ; $4261: $b4
	cp d                                             ; $4262: $ba
	ld a, [hl]                                       ; $4263: $7e
	ret nc                                           ; $4264: $d0

	ret z                                            ; $4265: $c8

	add sp, -$1c                                     ; $4266: $e8 $e4
	ldh a, [c]                                       ; $4268: $f2
	ld sp, hl                                        ; $4269: $f9
	db $fc                                           ; $426a: $fc
	rst SubAFromBC                                          ; $426b: $e7
	ld [bc], a                                       ; $426c: $02
	ld [bc], a                                       ; $426d: $02
	ld a, b                                          ; $426e: $78
	adc c                                            ; $426f: $89
	sbc h                                            ; $4270: $9c
	dec b                                            ; $4271: $05
	dec c                                            ; $4272: $0d
	dec bc                                           ; $4273: $0b

jr_057_4274:
	cp $de                                           ; $4274: $fe $de
	ld [bc], a                                       ; $4276: $02
	sub e                                            ; $4277: $93
	add d                                            ; $4278: $82
	ld b, h                                          ; $4279: $44
	rrca                                             ; $427a: $0f

Jump_057_427b:
	rrca                                             ; $427b: $0f
	dec e                                            ; $427c: $1d
	dec de                                           ; $427d: $1b
	or a                                             ; $427e: $b7
	rst AddAOntoHL                                          ; $427f: $ef
	rst AddAOntoHL                                          ; $4280: $ef
	rst GetHLinHL                                          ; $4281: $cf
	rlca                                             ; $4282: $07
	rrca                                             ; $4283: $0f
	ld a, e                                          ; $4284: $7b
	add b                                            ; $4285: $80
	sbc l                                            ; $4286: $9d
	ld a, $7e                                        ; $4287: $3e $7e
	halt                                             ; $4289: $76
	ld e, d                                          ; $428a: $5a
	ld [hl], d                                       ; $428b: $72
	ld c, c                                          ; $428c: $49
	sbc e                                            ; $428d: $9b
	ld a, a                                          ; $428e: $7f
	ccf                                              ; $428f: $3f
	rra                                              ; $4290: $1f
	rlca                                             ; $4291: $07
	ld [hl], l                                       ; $4292: $75
	xor e                                            ; $4293: $ab
	ld a, a                                          ; $4294: $7f
	xor b                                            ; $4295: $a8
	ld a, e                                          ; $4296: $7b
	db $ed                                           ; $4297: $ed
	ld a, d                                          ; $4298: $7a
	push de                                          ; $4299: $d5
	sbc h                                            ; $429a: $9c
	add b                                            ; $429b: $80
	ldh [$f8], a                                     ; $429c: $e0 $f8
	ld [hl], a                                       ; $429e: $77
	ld sp, hl                                        ; $429f: $f9
	sub c                                            ; $42a0: $91
	nop                                              ; $42a1: $00
	rlca                                             ; $42a2: $07
	rla                                              ; $42a3: $17
	ld e, a                                          ; $42a4: $5f
	ld a, a                                          ; $42a5: $7f
	db $dd                                           ; $42a6: $dd
	db $fd                                           ; $42a7: $fd
	rst $38                                          ; $42a8: $ff
	ld [hl], e                                       ; $42a9: $73
	inc bc                                           ; $42aa: $03
	rrca                                             ; $42ab: $0f
	ccf                                              ; $42ac: $3f
	rst $38                                          ; $42ad: $ff
	ccf                                              ; $42ae: $3f
	sbc $1f                                          ; $42af: $de $1f
	sbc [hl]                                         ; $42b1: $9e
	ld a, [$6add]                                    ; $42b2: $fa $dd $6a
	sbc h                                            ; $42b5: $9c
	ld l, e                                          ; $42b6: $6b
	ld c, c                                          ; $42b7: $49
	reti                                             ; $42b8: $d9


	call c, $83fd                                    ; $42b9: $dc $fd $83
	db $fc                                           ; $42bc: $fc
	cp $fe                                           ; $42bd: $fe $fe
	and d                                            ; $42bf: $a2
	or [hl]                                          ; $42c0: $b6
	ld [bc], a                                       ; $42c1: $02
	add hl, bc                                       ; $42c2: $09
	ld c, e                                          ; $42c3: $4b
	ld b, l                                          ; $42c4: $45
	dec [hl]                                         ; $42c5: $35
	scf                                              ; $42c6: $37
	rla                                              ; $42c7: $17
	inc bc                                           ; $42c8: $03
	add e                                            ; $42c9: $83
	sub e                                            ; $42ca: $93
	sub c                                            ; $42cb: $91
	sbc c                                            ; $42cc: $99
	reti                                             ; $42cd: $d9


	reti                                             ; $42ce: $d9


	sub d                                            ; $42cf: $92
	ld e, b                                          ; $42d0: $58
	ld c, h                                          ; $42d1: $4c
	ld h, $ab                                        ; $42d2: $26 $ab
	dec c                                            ; $42d4: $0d
	ld d, l                                          ; $42d5: $55
	ld d, [hl]                                       ; $42d6: $56
	ld a, l                                          ; $42d7: $7d
	ld a, e                                          ; $42d8: $7b
	inc h                                            ; $42d9: $24
	add e                                            ; $42da: $83
	rla                                              ; $42db: $17
	sub e                                            ; $42dc: $93
	adc e                                            ; $42dd: $8b
	adc c                                            ; $42de: $89
	rst SubAFromDE                                          ; $42df: $df
	rst $38                                          ; $42e0: $ff
	rst $38                                          ; $42e1: $ff
	add sp, -$0d                                     ; $42e2: $e8 $f3
	ldh a, [$e3]                                     ; $42e4: $f0 $e3
	add l                                            ; $42e6: $85
	cp a                                             ; $42e7: $bf
	sbc a                                            ; $42e8: $9f
	sbc a                                            ; $42e9: $9f
	sbc b                                            ; $42ea: $98
	sub e                                            ; $42eb: $93
	and b                                            ; $42ec: $a0
	pop bc                                           ; $42ed: $c1
	ret nz                                           ; $42ee: $c0

	rst AddAOntoHL                                          ; $42ef: $ef
	rst FarCall                                          ; $42f0: $f7
	ei                                               ; $42f1: $fb
	ld a, l                                          ; $42f2: $7d
	db $fd                                           ; $42f3: $fd
	rra                                              ; $42f4: $1f
	ld a, [$dce0]                                    ; $42f5: $fa $e0 $dc
	rst $38                                          ; $42f8: $ff
	sub a                                            ; $42f9: $97
	rra                                              ; $42fa: $1f
	db $fc                                           ; $42fb: $fc
	ld b, b                                          ; $42fc: $40
	ldh a, [$c6]                                     ; $42fd: $f0 $c6
	db $ed                                           ; $42ff: $ed
	push af                                          ; $4300: $f5
	ei                                               ; $4301: $fb
	ld a, d                                          ; $4302: $7a
	ld b, d                                          ; $4303: $42
	sbc d                                            ; $4304: $9a
	pop hl                                           ; $4305: $e1
	db $e3                                           ; $4306: $e3
	rst $38                                          ; $4307: $ff
	rst FarCall                                          ; $4308: $f7
	ldh a, [c]                                       ; $4309: $f2
	ld a, e                                          ; $430a: $7b
	ld hl, sp-$6a                                    ; $430b: $f8 $96
	ld a, d                                          ; $430d: $7a
	ld a, [hl]                                       ; $430e: $7e
	sbc a                                            ; $430f: $9f
	sbc a                                            ; $4310: $9f
	ld a, h                                          ; $4311: $7c
	ei                                               ; $4312: $fb
	ld e, $00                                        ; $4313: $1e $00
	rst $38                                          ; $4315: $ff
	sbc $3f                                          ; $4316: $de $3f
	ld a, [hl]                                       ; $4318: $7e
	rst FarCall                                          ; $4319: $f7
	ld a, a                                          ; $431a: $7f
	ld l, [hl]                                       ; $431b: $6e
	sbc b                                            ; $431c: $98
	sbc $ee                                          ; $431d: $de $ee
	ld c, [hl]                                       ; $431f: $4e
	ld a, $fe                                        ; $4320: $3e $fe
	cp $f2                                           ; $4322: $fe $f2
	reti                                             ; $4324: $d9


	cp $96                                           ; $4325: $fe $96
	ld [bc], a                                       ; $4327: $02
	add hl, sp                                       ; $4328: $39
	and a                                            ; $4329: $a7
	ld hl, $1f79                                     ; $432a: $21 $79 $1f
	cp a                                             ; $432d: $bf
	ld a, $7c                                        ; $432e: $3e $7c
	ld a, d                                          ; $4330: $7a
	call nz, $3f8f                                   ; $4331: $c4 $8f $3f
	rla                                              ; $4334: $17
	inc h                                            ; $4335: $24
	jr nz, jr_057_4378                               ; $4336: $20 $40

	ld c, $18                                        ; $4338: $0e $18
	ldh [$c0], a                                     ; $433a: $e0 $c0
	add b                                            ; $433c: $80
	ld bc, $0703                                     ; $433d: $01 $03 $07
	db $fc                                           ; $4340: $fc
	ldh a, [$e0]                                     ; $4341: $f0 $e0
	ld a, b                                          ; $4343: $78
	jp nz, $f77f                                     ; $4344: $c2 $7f $f7

	sub l                                            ; $4347: $95
	nop                                              ; $4348: $00
	rrca                                             ; $4349: $0f
	ccf                                              ; $434a: $3f
	ld a, b                                          ; $434b: $78
	db $fc                                           ; $434c: $fc
	call z, $0484                                    ; $434d: $cc $84 $04
	nop                                              ; $4350: $00
	nop                                              ; $4351: $00
	ld a, d                                          ; $4352: $7a
	ld [hl+], a                                      ; $4353: $22
	sbc $ff                                          ; $4354: $de $ff
	sbc l                                            ; $4356: $9d
	daa                                              ; $4357: $27
	ldh a, [$7b]                                     ; $4358: $f0 $7b
	ld c, c                                          ; $435a: $49
	rst SubAFromDE                                          ; $435b: $df
	rrca                                             ; $435c: $0f
	sbc e                                            ; $435d: $9b
	rlca                                             ; $435e: $07
	ccf                                              ; $435f: $3f
	rra                                              ; $4360: $1f
	rst $38                                          ; $4361: $ff
	ld a, c                                          ; $4362: $79
	pop hl                                           ; $4363: $e1
	rst SubAFromDE                                          ; $4364: $df
	db $fc                                           ; $4365: $fc
	sbc c                                            ; $4366: $99
	adc l                                            ; $4367: $8d
	add h                                            ; $4368: $84
	add $c3                                          ; $4369: $c6 $c3
	pop hl                                           ; $436b: $e1
	ldh a, [$6e]                                     ; $436c: $f0 $6e
	sub l                                            ; $436e: $95
	ld a, e                                          ; $436f: $7b
	inc c                                            ; $4370: $0c
	ld [hl], l                                       ; $4371: $75
	ld c, e                                          ; $4372: $4b
	ld a, [hl]                                       ; $4373: $7e
	ld c, e                                          ; $4374: $4b
	ld a, e                                          ; $4375: $7b
	push bc                                          ; $4376: $c5
	reti                                             ; $4377: $d9


jr_057_4378:
	rst $38                                          ; $4378: $ff
	sub [hl]                                         ; $4379: $96
	db $fd                                           ; $437a: $fd
	cp h                                             ; $437b: $bc
	jr c, jr_057_43b6                                ; $437c: $38 $38

	inc a                                            ; $437e: $3c
	inc e                                            ; $437f: $1c
	ld e, $1e                                        ; $4380: $1e $1e
	pop hl                                           ; $4382: $e1
	db $dd                                           ; $4383: $dd
	ldh [$de], a                                     ; $4384: $e0 $de
	ldh a, [hDisp1_LCDC]                                     ; $4386: $f0 $8f
	sbc c                                            ; $4388: $99
	sub c                                            ; $4389: $91
	ld b, c                                          ; $438a: $41
	ld b, c                                          ; $438b: $41
	ld hl, $1121                                     ; $438c: $21 $21 $11
	db $10                                           ; $438f: $10
	ld hl, $51a1                                     ; $4390: $21 $a1 $51
	ld [hl], c                                       ; $4393: $71
	ld sp, $1939                                     ; $4394: $31 $39 $19
	jr jr_057_4414                                   ; $4397: $18 $7b

	or l                                             ; $4399: $b5
	ld a, l                                          ; $439a: $7d
	ld [hl], b                                       ; $439b: $70
	ld a, [hl]                                       ; $439c: $7e
	xor l                                            ; $439d: $ad
	sbc l                                            ; $439e: $9d
	add c                                            ; $439f: $81
	db $fc                                           ; $43a0: $fc
	ld a, e                                          ; $43a1: $7b
	or h                                             ; $43a2: $b4
	rst SubAFromDE                                          ; $43a3: $df
	cp $7b                                           ; $43a4: $fe $7b
	jp $fedf                                         ; $43a6: $c3 $df $fe


	rst SubAFromDE                                          ; $43a9: $df
	ei                                               ; $43aa: $fb
	rst SubAFromDE                                          ; $43ab: $df
	db $fd                                           ; $43ac: $fd
	sbc [hl]                                         ; $43ad: $9e
	cp $f3                                           ; $43ae: $fe $f3
	rst SubAFromDE                                          ; $43b0: $df
	add b                                            ; $43b1: $80
	ld sp, hl                                        ; $43b2: $f9
	sub $1f                                          ; $43b3: $d6 $1f
	sub d                                            ; $43b5: $92

jr_057_43b6:
	rla                                              ; $43b6: $17
	inc de                                           ; $43b7: $13
	inc de                                           ; $43b8: $13
	ld bc, $fd01                                     ; $43b9: $01 $01 $fd
	db $fd                                           ; $43bc: $fd
	dec e                                            ; $43bd: $1d
	inc b                                            ; $43be: $04
	ld b, $82                                        ; $43bf: $06 $82
	jp nz, $dec2                                     ; $43c1: $c2 $c2 $de

	cp $dc                                           ; $43c4: $fe $dc
	rst $38                                          ; $43c6: $ff
	add a                                            ; $43c7: $87
	inc sp                                           ; $43c8: $33
	cp d                                             ; $43c9: $ba
	sbc d                                            ; $43ca: $9a
	sbc e                                            ; $43cb: $9b
	sbc e                                            ; $43cc: $9b

jr_057_43cd:
	db $db                                           ; $43cd: $db
	rst GetHLinHL                                          ; $43ce: $cf
	ld c, l                                          ; $43cf: $4d
	db $dd                                           ; $43d0: $dd
	ld c, l                                          ; $43d1: $4d
	ld l, l                                          ; $43d2: $6d
	ld l, h                                          ; $43d3: $6c
	ld l, h                                          ; $43d4: $6c
	inc l                                            ; $43d5: $2c
	inc [hl]                                         ; $43d6: $34
	or [hl]                                          ; $43d7: $b6
	ld [hl], $b6                                     ; $43d8: $36 $b6
	cp [hl]                                          ; $43da: $be
	xor [hl]                                         ; $43db: $ae
	adc h                                            ; $43dc: $8c
	ret z                                            ; $43dd: $c8

	ret z                                            ; $43de: $c8

	jp hl                                            ; $43df: $e9


	sbc $c9                                          ; $43e0: $de $c9
	sbc l                                            ; $43e2: $9d
	reti                                             ; $43e3: $d9


	ei                                               ; $43e4: $fb
	sbc $ff                                          ; $43e5: $de $ff
	sub [hl]                                         ; $43e7: $96
	add l                                            ; $43e8: $85
	db $fc                                           ; $43e9: $fc
	rst GetHLinHL                                          ; $43ea: $cf
	ldh a, [c]                                       ; $43eb: $f2
	sbc a                                            ; $43ec: $9f
	and c                                            ; $43ed: $a1
	add b                                            ; $43ee: $80
	nop                                              ; $43ef: $00
	jp $ce7b                                         ; $43f0: $c3 $7b $ce


	sbc h                                            ; $43f3: $9c
	ldh [c], a                                       ; $43f4: $e2
	jp Jump_057_77c1                                 ; $43f5: $c3 $c1 $77


	inc d                                            ; $43f8: $14
	sbc d                                            ; $43f9: $9a
	add a                                            ; $43fa: $87
	ld c, h                                          ; $43fb: $4c
	db $db                                           ; $43fc: $db
	ei                                               ; $43fd: $fb
	dec e                                            ; $43fe: $1d
	ld [hl], a                                       ; $43ff: $77
	inc d                                            ; $4400: $14
	ld a, [hl]                                       ; $4401: $7e
	inc a                                            ; $4402: $3c
	ld a, c                                          ; $4403: $79
	ld [$9b7d], sp                                   ; $4404: $08 $7d $9b
	sbc l                                            ; $4407: $9d
	adc a                                            ; $4408: $8f
	ccf                                              ; $4409: $3f
	ld a, e                                          ; $440a: $7b
	dec a                                            ; $440b: $3d
	rst $38                                          ; $440c: $ff
	ld l, [hl]                                       ; $440d: $6e
	dec [hl]                                         ; $440e: $35
	ld a, a                                          ; $440f: $7f
	add l                                            ; $4410: $85
	sbc c                                            ; $4411: $99
	db $fc                                           ; $4412: $fc
	cp a                                             ; $4413: $bf

jr_057_4414:
	rst FarCall                                          ; $4414: $f7
	adc a                                            ; $4415: $8f
	add hl, bc                                       ; $4416: $09
	ld [$0675], sp                                   ; $4417: $08 $75 $06
	ld a, [hl]                                       ; $441a: $7e
	ld a, $95                                        ; $441b: $3e $95
	sbc [hl]                                         ; $441d: $9e
	ld e, $0e                                        ; $441e: $1e $0e
	ld b, $3e                                        ; $4420: $06 $3e
	db $fc                                           ; $4422: $fc
	ld hl, sp-$10                                    ; $4423: $f8 $f0
	add b                                            ; $4425: $80
	ld h, b                                          ; $4426: $60
	sbc $02                                          ; $4427: $de $02
	sub d                                            ; $4429: $92
	inc b                                            ; $442a: $04
	ld [$00f0], sp                                   ; $442b: $08 $f0 $00
	nop                                              ; $442e: $00
	ld a, h                                          ; $442f: $7c
	ld a, b                                          ; $4430: $78
	ld a, b                                          ; $4431: $78
	jr c, jr_057_446d                                ; $4432: $38 $39

	rra                                              ; $4434: $1f
	ld c, $00                                        ; $4435: $0e $00
	sbc $40                                          ; $4437: $de $40
	rst SubAFromDE                                          ; $4439: $df
	jr nz, jr_057_43cd                               ; $443a: $20 $91

	ld de, $000e                                     ; $443c: $11 $0e $00
	ld c, $1e                                        ; $443f: $0e $1e
	ccf                                              ; $4441: $3f
	ld a, a                                          ; $4442: $7f
	ld sp, hl                                        ; $4443: $f9
	ldh a, [$e0]                                     ; $4444: $f0 $e0
	ldh [rTAC], a                                    ; $4446: $e0 $07
	dec bc                                           ; $4448: $0b
	ld de, $7979                                     ; $4449: $11 $79 $79
	ld [hl], e                                       ; $444c: $73
	ld c, b                                          ; $444d: $48
	ld a, b                                          ; $444e: $78
	or a                                             ; $444f: $b7
	sbc l                                            ; $4450: $9d
	ld [hl], b                                       ; $4451: $70
	inc a                                            ; $4452: $3c
	ld [hl], d                                       ; $4453: $72
	rst SubAFromDE                                          ; $4454: $df
	ld a, d                                          ; $4455: $7a
	ldh [$7f], a                                     ; $4456: $e0 $7f
	inc de                                           ; $4458: $13
	rst SubAFromDE                                          ; $4459: $df
	ld bc, $b47c                                     ; $445a: $01 $7c $b4
	sbc l                                            ; $445d: $9d
	ld b, $18                                        ; $445e: $06 $18
	ld l, a                                          ; $4460: $6f
	ld d, d                                          ; $4461: $52
	rst SubAFromDE                                          ; $4462: $df
	rst $38                                          ; $4463: $ff
	ld a, l                                          ; $4464: $7d
	ld l, l                                          ; $4465: $6d
	sub h                                            ; $4466: $94
	add b                                            ; $4467: $80
	cp h                                             ; $4468: $bc
	db $e3                                           ; $4469: $e3
	ret nz                                           ; $446a: $c0

	ret nz                                           ; $446b: $c0

	add b                                            ; $446c: $80

jr_057_446d:
	jr c, jr_057_44ed                                ; $446d: $38 $7e

	rst $38                                          ; $446f: $ff
	rst $38                                          ; $4470: $ff
	rst FarCall                                          ; $4471: $f7
	ld a, e                                          ; $4472: $7b
	rst FarCall                                          ; $4473: $f7
	ld l, a                                          ; $4474: $6f
	ld de, $b47f                                     ; $4475: $11 $7f $b4
	ld a, e                                          ; $4478: $7b
	call nc, Call_057_707c                           ; $4479: $d4 $7c $70

jr_057_447c:
	sbc h                                            ; $447c: $9c
	db $e3                                           ; $447d: $e3
	pop af                                           ; $447e: $f1
	ld a, b                                          ; $447f: $78
	ld a, d                                          ; $4480: $7a
	sub h                                            ; $4481: $94
	db $dd                                           ; $4482: $dd
	rrca                                             ; $4483: $0f
	sbc [hl]                                         ; $4484: $9e
	rlca                                             ; $4485: $07
	ld a, c                                          ; $4486: $79
	inc de                                           ; $4487: $13
	db $dd                                           ; $4488: $dd
	ld hl, sp-$62                                    ; $4489: $f8 $9e
	db $fc                                           ; $448b: $fc
	db $dd                                           ; $448c: $dd
	ld [$f17a], sp                                   ; $448d: $08 $7a $f1
	sbc [hl]                                         ; $4490: $9e
	add h                                            ; $4491: $84
	db $dd                                           ; $4492: $dd
	inc c                                            ; $4493: $0c
	db $dd                                           ; $4494: $dd
	inc b                                            ; $4495: $04
	rst SubAFromDE                                          ; $4496: $df
	add b                                            ; $4497: $80
	ld [hl], e                                       ; $4498: $73
	add [hl]                                         ; $4499: $86
	sbc [hl]                                         ; $449a: $9e
	db $10                                           ; $449b: $10
	halt                                             ; $449c: $76
	add c                                            ; $449d: $81
	ld a, a                                          ; $449e: $7f
	call z, $cb7f                                    ; $449f: $cc $7f $cb
	ld a, a                                          ; $44a2: $7f
	xor b                                            ; $44a3: $a8
	ld a, e                                          ; $44a4: $7b
	ld sp, hl                                        ; $44a5: $f9
	sbc h                                            ; $44a6: $9c
	jr nz, jr_057_44c7                               ; $44a7: $20 $1e

	rrca                                             ; $44a9: $0f
	ld a, b                                          ; $44aa: $78
	ld e, d                                          ; $44ab: $5a
	ld a, a                                          ; $44ac: $7f
	adc c                                            ; $44ad: $89
	ld a, d                                          ; $44ae: $7a
	ld e, [hl]                                       ; $44af: $5e
	sbc h                                            ; $44b0: $9c
	ret nz                                           ; $44b1: $c0

	ld b, b                                          ; $44b2: $40
	jr nz, @+$7d                                     ; $44b3: $20 $7b

	add b                                            ; $44b5: $80
	sbc l                                            ; $44b6: $9d
	ld [bc], a                                       ; $44b7: $02
	db $e3                                           ; $44b8: $e3
	ld e, d                                          ; $44b9: $5a
	ret nz                                           ; $44ba: $c0

	sbc d                                            ; $44bb: $9a
	rla                                              ; $44bc: $17
	inc sp                                           ; $44bd: $33
	inc sp                                           ; $44be: $33
	ld [hl], a                                       ; $44bf: $77
	rst $38                                          ; $44c0: $ff
	ld a, e                                          ; $44c1: $7b
	ld a, d                                          ; $44c2: $7a
	db $fc                                           ; $44c3: $fc
	rst SubAFromDE                                          ; $44c4: $df
	and c                                            ; $44c5: $a1
	sbc d                                            ; $44c6: $9a

jr_057_44c7:
	or c                                             ; $44c7: $b1
	sbc e                                            ; $44c8: $9b
	adc [hl]                                         ; $44c9: $8e
	ret nz                                           ; $44ca: $c0

	rst JumpTable                                          ; $44cb: $c7
	ld l, [hl]                                       ; $44cc: $6e
	ld a, $92                                        ; $44cd: $3e $92
	rst $38                                          ; $44cf: $ff
	ld a, b                                          ; $44d0: $78
	ld a, a                                          ; $44d1: $7f
	ld l, l                                          ; $44d2: $6d
	ld l, l                                          ; $44d3: $6d
	ld h, l                                          ; $44d4: $65
	ld h, l                                          ; $44d5: $65
	ld l, l                                          ; $44d6: $6d
	call $3f9d                                       ; $44d7: $cd $9d $3f
	sub [hl]                                         ; $44da: $96
	sub [hl]                                         ; $44db: $96
	sbc $9e                                          ; $44dc: $de $9e
	ld a, l                                          ; $44de: $7d
	jr nc, jr_057_447c                               ; $44df: $30 $9b

	cp $bf                                           ; $44e1: $fe $bf
	sub e                                            ; $44e3: $93
	sub c                                            ; $44e4: $91
	db $dd                                           ; $44e5: $dd
	adc b                                            ; $44e6: $88
	adc [hl]                                         ; $44e7: $8e
	add h                                            ; $44e8: $84
	rst $38                                          ; $44e9: $ff
	rst $38                                          ; $44ea: $ff
	cp e                                             ; $44eb: $bb
	cp c                                             ; $44ec: $b9

jr_057_44ed:
	cp b                                             ; $44ed: $b8
	cp b                                             ; $44ee: $b8
	sbc h                                            ; $44ef: $9c
	sbc h                                            ; $44f0: $9c
	ld c, h                                          ; $44f1: $4c
	ld b, [hl]                                       ; $44f2: $46
	ld b, a                                          ; $44f3: $47
	jp Jump_057_75ff                                 ; $44f4: $c3 $ff $75


	ld h, l                                          ; $44f7: $65
	ld a, l                                          ; $44f8: $7d
	sbc $80                                          ; $44f9: $de $80
	sbc [hl]                                         ; $44fb: $9e
	ret nz                                           ; $44fc: $c0

	ld [hl], a                                       ; $44fd: $77
	adc l                                            ; $44fe: $8d
	sub e                                            ; $44ff: $93
	ld c, l                                          ; $4500: $4d
	rla                                              ; $4501: $17
	dec bc                                           ; $4502: $0b
	jp nz, $12ff                                     ; $4503: $c2 $ff $12

	ld [de], a                                       ; $4506: $12
	rst $38                                          ; $4507: $ff
	ccf                                              ; $4508: $3f
	rrca                                             ; $4509: $0f
	ld b, $06                                        ; $450a: $06 $06
	db $dd                                           ; $450c: $dd
	rst $38                                          ; $450d: $ff
	sub h                                            ; $450e: $94
	db $ed                                           ; $450f: $ed
	jp nz, $0308                                     ; $4510: $c2 $08 $03

	rst $38                                          ; $4513: $ff
	jr z, jr_057_453e                                ; $4514: $28 $28

	rst AddAOntoHL                                          ; $4516: $ef
	ldh a, [c]                                       ; $4517: $f2
	add h                                            ; $4518: $84
	nop                                              ; $4519: $00
	ld [hl], c                                       ; $451a: $71
	db $fc                                           ; $451b: $fc
	sbc h                                            ; $451c: $9c
	jr z, jr_057_456f                                ; $451d: $28 $50

	and b                                            ; $451f: $a0
	halt                                             ; $4520: $76
	ld sp, hl                                        ; $4521: $f9
	sbc d                                            ; $4522: $9a
	add b                                            ; $4523: $80
	jr jr_057_4556                                   ; $4524: $18 $30

	ld h, b                                          ; $4526: $60
	ret nz                                           ; $4527: $c0

	db $dd                                           ; $4528: $dd
	add b                                            ; $4529: $80
	adc a                                            ; $452a: $8f
	sbc b                                            ; $452b: $98
	and $59                                          ; $452c: $e6 $59
	ld [$aa75], a                                    ; $452e: $ea $75 $aa
	ld [hl], l                                       ; $4531: $75
	cp d                                             ; $4532: $ba
	nop                                              ; $4533: $00
	nop                                              ; $4534: $00
	jr nz, jr_057_454b                               ; $4535: $20 $14

	ld a, [bc]                                       ; $4537: $0a
	dec d                                            ; $4538: $15
	ld a, [bc]                                       ; $4539: $0a
	dec b                                            ; $453a: $05
	pop af                                           ; $453b: $f1
	ld a, e                                          ; $453c: $7b
	inc sp                                           ; $453d: $33

jr_057_453e:
	sbc d                                            ; $453e: $9a
	rra                                              ; $453f: $1f
	add hl, bc                                       ; $4540: $09
	rrca                                             ; $4541: $0f
	db $10                                           ; $4542: $10
	db $10                                           ; $4543: $10
	ld [hl], a                                       ; $4544: $77
	ld hl, sp+$74                                    ; $4545: $f8 $74
	xor l                                            ; $4547: $ad
	sbc $0f                                          ; $4548: $de $0f
	sub h                                            ; $454a: $94

jr_057_454b:
	rst FarCall                                          ; $454b: $f7
	ld a, d                                          ; $454c: $7a
	ld b, d                                          ; $454d: $42
	ld a, b                                          ; $454e: $78
	rlca                                             ; $454f: $07
	dec bc                                           ; $4550: $0b
	add hl, bc                                       ; $4551: $09
	dec c                                            ; $4552: $0d
	adc a                                            ; $4553: $8f
	ei                                               ; $4554: $fb
	ei                                               ; $4555: $fb

jr_057_4556:
	ld l, [hl]                                       ; $4556: $6e
	ld l, h                                          ; $4557: $6c
	rst SubAFromDE                                          ; $4558: $df
	and l                                            ; $4559: $a5
	sbc h                                            ; $455a: $9c
	dec a                                            ; $455b: $3d
	ld b, c                                          ; $455c: $41
	ldh [$7b], a                                     ; $455d: $e0 $7b
	and c                                            ; $455f: $a1
	rst SubAFromDE                                          ; $4560: $df
	cp a                                             ; $4561: $bf
	ld a, [hl]                                       ; $4562: $7e
	ld d, [hl]                                       ; $4563: $56
	ld l, [hl]                                       ; $4564: $6e
	sbc l                                            ; $4565: $9d
	ld [hl], l                                       ; $4566: $75
	sbc $de                                          ; $4567: $de $de
	sub b                                            ; $4569: $90
	sub a                                            ; $456a: $97
	jr nc, jr_057_458d                               ; $456b: $30 $20

	ld h, b                                          ; $456d: $60
	db $10                                           ; $456e: $10

jr_057_456f:
	ld [$0408], sp                                   ; $456f: $08 $08 $04
	ld [bc], a                                       ; $4572: $02
	ld a, e                                          ; $4573: $7b
	inc h                                            ; $4574: $24
	sbc d                                            ; $4575: $9a
	inc a                                            ; $4576: $3c
	ld e, $0f                                        ; $4577: $1e $0f
	rst JumpTable                                          ; $4579: $c7
	ld [hl], e                                       ; $457a: $73
	ld a, c                                          ; $457b: $79
	ld d, [hl]                                       ; $457c: $56
	db $db                                           ; $457d: $db
	rlca                                             ; $457e: $07
	sub e                                            ; $457f: $93
	add e                                            ; $4580: $83
	ld b, e                                          ; $4581: $43
	ld a, h                                          ; $4582: $7c
	inc a                                            ; $4583: $3c
	inc e                                            ; $4584: $1c
	adc h                                            ; $4585: $8c
	call nz, $f2e4                                   ; $4586: $c4 $e4 $f2
	ld a, [$8484]                                    ; $4589: $fa $84 $84
	db $dd                                           ; $458c: $dd

jr_057_458d:
	ret nz                                           ; $458d: $c0

	rst SubAFromDE                                          ; $458e: $df
	ldh [$df], a                                     ; $458f: $e0 $df
	inc b                                            ; $4591: $04
	ei                                               ; $4592: $fb
	ld a, e                                          ; $4593: $7b
	ret nc                                           ; $4594: $d0

	ld a, [hl]                                       ; $4595: $7e
	cp b                                             ; $4596: $b8
	sbc h                                            ; $4597: $9c
	ld b, $02                                        ; $4598: $06 $02
	inc bc                                           ; $459a: $03
	ld [hl], l                                       ; $459b: $75
	inc l                                            ; $459c: $2c
	ld [hl], l                                       ; $459d: $75
	ld [hl], a                                       ; $459e: $77
	ld l, a                                          ; $459f: $6f
	jp nz, Jump_057_7eff                             ; $45a0: $c2 $ff $7e

	sub [hl]                                         ; $45a3: $96
	ld l, [hl]                                       ; $45a4: $6e
	ld e, [hl]                                       ; $45a5: $5e
	sbc [hl]                                         ; $45a6: $9e
	pop af                                           ; $45a7: $f1
	ld l, [hl]                                       ; $45a8: $6e
	ld [hl], c                                       ; $45a9: $71
	sbc [hl]                                         ; $45aa: $9e
	jr jr_057_4620                                   ; $45ab: $18 $73

	sbc h                                            ; $45ad: $9c
	ld a, a                                          ; $45ae: $7f
	ret z                                            ; $45af: $c8

	ld a, h                                          ; $45b0: $7c
	ld [hl-], a                                      ; $45b1: $32
	sbc [hl]                                         ; $45b2: $9e
	jp $3e7a                                         ; $45b3: $c3 $7a $3e


	or $7c                                           ; $45b6: $f6 $7c
	dec hl                                           ; $45b8: $2b
	db $db                                           ; $45b9: $db
	ret nz                                           ; $45ba: $c0

	reti                                             ; $45bb: $d9


	ld a, a                                          ; $45bc: $7f
	sbc [hl]                                         ; $45bd: $9e
	jp $207a                                         ; $45be: $c3 $7a $20


	halt                                             ; $45c1: $76
	and h                                            ; $45c2: $a4
	ld l, c                                          ; $45c3: $69
	ld [hl], c                                       ; $45c4: $71
	sbc e                                            ; $45c5: $9b
	rst $38                                          ; $45c6: $ff
	add h                                            ; $45c7: $84
	add h                                            ; $45c8: $84
	inc b                                            ; $45c9: $04
	db $dd                                           ; $45ca: $dd
	ld [bc], a                                       ; $45cb: $02
	adc [hl]                                         ; $45cc: $8e
	ld bc, $9c9c                                     ; $45cd: $01 $9c $9c
	sbc [hl]                                         ; $45d0: $9e
	adc $ce                                          ; $45d1: $ce $ce
	rst GetHLinHL                                          ; $45d3: $cf
	rst GetHLinHL                                          ; $45d4: $cf
	rst SubAFromBC                                          ; $45d5: $e7
	ld a, e                                          ; $45d6: $7b
	ld [hl], c                                       ; $45d7: $71
	jr nc, jr_057_4612                               ; $45d8: $30 $38

	ld a, $3f                                        ; $45da: $3e $3f
	ld e, $1c                                        ; $45dc: $1e $1c
	halt                                             ; $45de: $76
	ld d, e                                          ; $45df: $53
	ld a, d                                          ; $45e0: $7a
	ld d, c                                          ; $45e1: $51
	sub [hl]                                         ; $45e2: $96
	rra                                              ; $45e3: $1f
	inc de                                           ; $45e4: $13
	db $d3                                           ; $45e5: $d3
	di                                               ; $45e6: $f3
	ld [hl], e                                       ; $45e7: $73
	inc de                                           ; $45e8: $13
	pop af                                           ; $45e9: $f1
	ld [hl], c                                       ; $45ea: $71
	ld sp, $ffd9                                     ; $45eb: $31 $d9 $ff
	ld a, e                                          ; $45ee: $7b
	ld sp, $389a                                     ; $45ef: $31 $9a $38
	ldh a, [$c0]                                     ; $45f2: $f0 $c0
	add b                                            ; $45f4: $80
	inc e                                            ; $45f5: $1c
	reti                                             ; $45f6: $d9


	rst $38                                          ; $45f7: $ff
	ld a, [hl]                                       ; $45f8: $7e
	ld b, b                                          ; $45f9: $40

jr_057_45fa:
	halt                                             ; $45fa: $76
	ld hl, $20df                                     ; $45fb: $21 $df $20
	ld l, a                                          ; $45fe: $6f
	ld c, d                                          ; $45ff: $4a
	rst SubAFromDE                                          ; $4600: $df
	ldh [hDisp1_OBP0], a                                     ; $4601: $e0 $93
	ld [hl], h                                       ; $4603: $74
	cp d                                             ; $4604: $ba
	ld d, h                                          ; $4605: $54
	cp d                                             ; $4606: $ba
	ld e, h                                          ; $4607: $5c
	xor [hl]                                         ; $4608: $ae
	ld e, [hl]                                       ; $4609: $5e
	cpl                                              ; $460a: $2f
	dec bc                                           ; $460b: $0b
	dec b                                            ; $460c: $05
	dec bc                                           ; $460d: $0b
	dec b                                            ; $460e: $05
	ld [hl], l                                       ; $460f: $75
	or l                                             ; $4610: $b5
	pop af                                           ; $4611: $f1

jr_057_4612:
	rst SubAFromDE                                          ; $4612: $df
	db $10                                           ; $4613: $10
	sbc h                                            ; $4614: $9c
	ld [hl+], a                                      ; $4615: $22
	ld hl, $de21                                     ; $4616: $21 $21 $de
	jr nz, jr_057_45fa                               ; $4619: $20 $df

	rra                                              ; $461b: $1f
	db $db                                           ; $461c: $db
	ccf                                              ; $461d: $3f
	sbc b                                            ; $461e: $98
	ld [bc], a                                       ; $461f: $02

jr_057_4620:
	ld b, d                                          ; $4620: $42
	ld b, d                                          ; $4621: $42
	ld [hl+], a                                      ; $4622: $22
	or d                                             ; $4623: $b2
	sbc $fe                                          ; $4624: $de $fe
	ld a, c                                          ; $4626: $79
	and d                                            ; $4627: $a2
	db $db                                           ; $4628: $db
	rst $38                                          ; $4629: $ff
	rst SubAFromDE                                          ; $462a: $df
	ld b, c                                          ; $462b: $41
	sbc c                                            ; $462c: $99
	ld b, e                                          ; $462d: $43
	ld h, [hl]                                       ; $462e: $66
	ld a, h                                          ; $462f: $7c
	ld a, b                                          ; $4630: $78
	ld [hl], b                                       ; $4631: $70
	ld h, b                                          ; $4632: $60
	reti                                             ; $4633: $d9


	rst $38                                          ; $4634: $ff
	ld [hl], d                                       ; $4635: $72
	push bc                                          ; $4636: $c5
	sbc $80                                          ; $4637: $de $80
	sbc l                                            ; $4639: $9d
	ld h, b                                          ; $463a: $60
	ldh [$db], a                                     ; $463b: $e0 $db
	ret nz                                           ; $463d: $c0

	db $fc                                           ; $463e: $fc
	sbc b                                            ; $463f: $98
	ld bc, $300e                                     ; $4640: $01 $0e $30
	rlca                                             ; $4643: $07
	add e                                            ; $4644: $83
	pop af                                           ; $4645: $f1
	ld a, h                                          ; $4646: $7c
	ld [hl], a                                       ; $4647: $77
	ld e, l                                          ; $4648: $5d
	sub [hl]                                         ; $4649: $96
	inc hl                                           ; $464a: $23
	inc de                                           ; $464b: $13
	dec de                                           ; $464c: $1b
	rrca                                             ; $464d: $0f
	dec bc                                           ; $464e: $0b
	rst $38                                          ; $464f: $ff
	inc bc                                           ; $4650: $03
	ld bc, $dbfa                                     ; $4651: $01 $fa $db
	cp $9e                                           ; $4654: $fe $9e
	rst $38                                          ; $4656: $ff
	ld l, b                                          ; $4657: $68
	add hl, sp                                       ; $4658: $39
	ld a, c                                          ; $4659: $79
	ld b, $fb                                        ; $465a: $06 $fb
	ld h, a                                          ; $465c: $67
	ld a, l                                          ; $465d: $7d
	ld h, e                                          ; $465e: $63
	halt                                             ; $465f: $76
	ld [hl], l                                       ; $4660: $75
	add a                                            ; $4661: $87
	sbc l                                            ; $4662: $9d
	ld b, b                                          ; $4663: $40
	ld h, b                                          ; $4664: $60
	ld [hl], a                                       ; $4665: $77
	and b                                            ; $4666: $a0
	ld [hl], c                                       ; $4667: $71
	ld l, a                                          ; $4668: $6f
	sbc l                                            ; $4669: $9d
	inc c                                            ; $466a: $0c
	ld b, $6e                                        ; $466b: $06 $6e
	pop de                                           ; $466d: $d1
	ld h, [hl]                                       ; $466e: $66
	or b                                             ; $466f: $b0
	sub a                                            ; $4670: $97
	nop                                              ; $4671: $00
	ld b, e                                          ; $4672: $43
	ccf                                              ; $4673: $3f
	sbc a                                            ; $4674: $9f
	adc $66                                          ; $4675: $ce $66
	ld [hl], $1a                                     ; $4677: $36 $1a
	ld h, [hl]                                       ; $4679: $66
	or b                                             ; $467a: $b0
	reti                                             ; $467b: $d9


	add b                                            ; $467c: $80
	ld e, e                                          ; $467d: $5b
	ld [hl], b                                       ; $467e: $70
	ld l, [hl]                                       ; $467f: $6e
	xor b                                            ; $4680: $a8
	jp c, Jump_057_6eff                              ; $4681: $da $ff $6e

	or d                                             ; $4684: $b2
	rst $38                                          ; $4685: $ff
	db $dd                                           ; $4686: $dd
	rst SubAFromBC                                          ; $4687: $e7
	db $dd                                           ; $4688: $dd
	di                                               ; $4689: $f3
	sub a                                            ; $468a: $97
	rra                                              ; $468b: $1f
	dec c                                            ; $468c: $0d
	inc c                                            ; $468d: $0c
	ld c, $86                                        ; $468e: $0e $86
	add a                                            ; $4690: $87
	add e                                            ; $4691: $83
	add e                                            ; $4692: $83
	ld [hl], l                                       ; $4693: $75
	rst SubAFromBC                                          ; $4694: $e7
	rst SubAFromDE                                          ; $4695: $df
	add a                                            ; $4696: $87
	rst SubAFromDE                                          ; $4697: $df
	add e                                            ; $4698: $83
	sbc e                                            ; $4699: $9b
	inc de                                           ; $469a: $13
	add d                                            ; $469b: $82
	db $eb                                           ; $469c: $eb
	ld a, e                                          ; $469d: $7b
	ld a, d                                          ; $469e: $7a
	add hl, de                                       ; $469f: $19
	ld a, b                                          ; $46a0: $78
	ld b, [hl]                                       ; $46a1: $46
	db $db                                           ; $46a2: $db
	rst $38                                          ; $46a3: $ff
	sbc c                                            ; $46a4: $99
	ld [hl], b                                       ; $46a5: $70
	ldh [$c0], a                                     ; $46a6: $e0 $c0
	adc $f0                                          ; $46a8: $ce $f0
	ldh [$5f], a                                     ; $46aa: $e0 $5f
	or b                                             ; $46ac: $b0
	ld a, b                                          ; $46ad: $78
	push hl                                          ; $46ae: $e5
	call c, Call_057_6f10                            ; $46af: $dc $10 $6f
	ld c, d                                          ; $46b2: $4a
	rst SubAFromDE                                          ; $46b3: $df
	ldh a, [$97]                                     ; $46b4: $f0 $97
	ld d, a                                          ; $46b6: $57
	cpl                                              ; $46b7: $2f
	rla                                              ; $46b8: $17
	dec hl                                           ; $46b9: $2b
	dec d                                            ; $46ba: $15
	dec bc                                           ; $46bb: $0b
	dec d                                            ; $46bc: $15
	dec bc                                           ; $46bd: $0b
	ld sp, hl                                        ; $46be: $f9
	ld c, a                                          ; $46bf: $4f
	nop                                              ; $46c0: $00
	sbc $66                                          ; $46c1: $de $66
	rst SubAFromDE                                          ; $46c3: $df
	ld [hl+], a                                      ; $46c4: $22
	sbc h                                            ; $46c5: $9c
	inc sp                                           ; $46c6: $33
	ld [hl-], a                                      ; $46c7: $32
	ld h, $dc                                        ; $46c8: $26 $dc
	ld h, [hl]                                       ; $46ca: $66
	ld a, e                                          ; $46cb: $7b
	or $9e                                           ; $46cc: $f6 $9e
	inc sp                                           ; $46ce: $33
	ld [hl], e                                       ; $46cf: $73
	or $9e                                           ; $46d0: $f6 $9e
	ld h, d                                          ; $46d2: $62
	ld a, e                                          ; $46d3: $7b
	rst FarCall                                          ; $46d4: $f7
	ld a, e                                          ; $46d5: $7b
	or $9e                                           ; $46d6: $f6 $9e
	ld h, d                                          ; $46d8: $62
	ld l, a                                          ; $46d9: $6f
	db $ed                                           ; $46da: $ed
	ld l, e                                          ; $46db: $6b
	or $dd                                           ; $46dc: $f6 $dd
	inc sp                                           ; $46de: $33
	ld a, e                                          ; $46df: $7b
	ldh [c], a                                       ; $46e0: $e2
	sbc l                                            ; $46e1: $9d
	ld h, l                                          ; $46e2: $65
	ld b, h                                          ; $46e3: $44
	ld [hl], e                                       ; $46e4: $73
	or $9b                                           ; $46e5: $f6 $9b
	ld [hl], $66                                     ; $46e7: $36 $66
	ld h, [hl]                                       ; $46e9: $66
	ld d, h                                          ; $46ea: $54
	ld h, e                                          ; $46eb: $63
	or $98                                           ; $46ec: $f6 $98
	inc [hl]                                         ; $46ee: $34
	ld b, h                                          ; $46ef: $44
	inc [hl]                                         ; $46f0: $34
	ld b, e                                          ; $46f1: $43
	ld b, h                                          ; $46f2: $44
	ld b, h                                          ; $46f3: $44
	ld [hl+], a                                      ; $46f4: $22
	ld a, e                                          ; $46f5: $7b
	ldh [c], a                                       ; $46f6: $e2
	sbc h                                            ; $46f7: $9c
	dec [hl]                                         ; $46f8: $35
	ld d, h                                          ; $46f9: $54
	ld b, h                                          ; $46fa: $44
	ld [hl], a                                       ; $46fb: $77
	or $9a                                           ; $46fc: $f6 $9a
	ld b, d                                          ; $46fe: $42
	ld [hl+], a                                      ; $46ff: $22
	ld h, $62                                        ; $4700: $26 $62
	ld [hl+], a                                      ; $4702: $22
	db $dd                                           ; $4703: $dd
	ld b, h                                          ; $4704: $44
	sbc [hl]                                         ; $4705: $9e
	ld b, l                                          ; $4706: $45
	ld h, e                                          ; $4707: $63
	or $9b                                           ; $4708: $f6 $9b
	ld b, h                                          ; $470a: $44
	ld b, [hl]                                       ; $470b: $46
	ld [hl+], a                                      ; $470c: $22
	ld h, $9d                                        ; $470d: $26 $9d
	adc d                                            ; $470f: $8a
	adc h                                            ; $4710: $8c
	rst $38                                          ; $4711: $ff
	cp $fc                                           ; $4712: $fe $fc
	ld hl, sp-$0f                                    ; $4714: $f8 $f1
	db $e3                                           ; $4716: $e3
	add a                                            ; $4717: $87
	rrca                                             ; $4718: $0f
	nop                                              ; $4719: $00
	ld bc, $0703                                     ; $471a: $01 $03 $07
	ld c, $1c                                        ; $471d: $0e $1c
	ld a, b                                          ; $471f: $78
	ldh a, [rIF]                                     ; $4720: $f0 $0f
	rra                                              ; $4722: $1f
	ccf                                              ; $4723: $3f
	ld a, e                                          ; $4724: $7b
	xor $9a                                          ; $4725: $ee $9a
	pop hl                                           ; $4727: $e1
	rst JumpTable                                          ; $4728: $c7
	ldh a, [$e0]                                     ; $4729: $f0 $e0
	ret nz                                           ; $472b: $c0

	ld a, e                                          ; $472c: $7b
	xor $98                                          ; $472d: $ee $98
	ld e, $38                                        ; $472f: $1e $38
	rst JumpTable                                          ; $4731: $c7
	adc a                                            ; $4732: $8f
	rra                                              ; $4733: $1f
	ccf                                              ; $4734: $3f
	ld a, [hl]                                       ; $4735: $7e
	ld a, e                                          ; $4736: $7b
	db $dd                                           ; $4737: $dd
	sbc d                                            ; $4738: $9a
	jr c, @+$72                                      ; $4739: $38 $70

	ldh [$c0], a                                     ; $473b: $e0 $c0
	add c                                            ; $473d: $81
	ld a, e                                          ; $473e: $7b
	db $dd                                           ; $473f: $dd
	add d                                            ; $4740: $82
	di                                               ; $4741: $f3
	jp $1383                                         ; $4742: $c3 $83 $13


	inc sp                                           ; $4745: $33
	ld [hl], e                                       ; $4746: $73
	di                                               ; $4747: $f3
	di                                               ; $4748: $f3
	inc c                                            ; $4749: $0c
	inc a                                            ; $474a: $3c
	ld a, h                                          ; $474b: $7c
	db $ec                                           ; $474c: $ec
	call z, $0d8d                                    ; $474d: $cc $8d $0d
	dec c                                            ; $4750: $0d
	ldh [$c1], a                                     ; $4751: $e0 $c1
	add c                                            ; $4753: $81
	adc e                                            ; $4754: $8b
	adc e                                            ; $4755: $8b
	rla                                              ; $4756: $17
	rla                                              ; $4757: $17
	daa                                              ; $4758: $27
	ccf                                              ; $4759: $3f
	ld a, [hl]                                       ; $475a: $7e
	cp $fc                                           ; $475b: $fe $fc
	db $fc                                           ; $475d: $fc
	db $dd                                           ; $475e: $dd
	ld hl, sp-$80                                    ; $475f: $f8 $80
	db $e3                                           ; $4761: $e3
	rst GetHLinHL                                          ; $4762: $cf
	cp h                                             ; $4763: $bc
	db $db                                           ; $4764: $db
	ld [hl], a                                       ; $4765: $77
	or a                                             ; $4766: $b7
	or $07                                           ; $4767: $f6 $07
	inc e                                            ; $4769: $1c
	ld sp, $6463                                     ; $476a: $31 $63 $64
	ret z                                            ; $476d: $c8

	ret z                                            ; $476e: $c8

	adc c                                            ; $476f: $89
	add hl, bc                                       ; $4770: $09
	dec bc                                           ; $4771: $0b
	push bc                                          ; $4772: $c5
	daa                                              ; $4773: $27
	rst SubAFromDE                                          ; $4774: $df
	rst $38                                          ; $4775: $ff
	db $dd                                           ; $4776: $dd
	cp [hl]                                          ; $4777: $be
	or $f4                                           ; $4778: $f6 $f4
	ld a, [$30f8]                                    ; $477a: $fa $f8 $30
	db $10                                           ; $477d: $10
	ld a, $7f                                        ; $477e: $3e $7f
	add b                                            ; $4780: $80
	rst GetHLinHL                                          ; $4781: $cf
	rst FarCall                                          ; $4782: $f7
	ei                                               ; $4783: $fb
	ld [hl], a                                       ; $4784: $77
	db $fd                                           ; $4785: $fd
	db $db                                           ; $4786: $db
	ld a, [hl-]                                      ; $4787: $3a
	jp z, $1830                                      ; $4788: $ca $30 $18

	inc c                                            ; $478b: $0c
	call z, $3626                                    ; $478c: $cc $26 $36
	rst SubAFromHL                                          ; $478f: $d7
	ld a, a                                          ; $4790: $7f
	rst $38                                          ; $4791: $ff
	rst $38                                          ; $4792: $ff
	rst SubAFromDE                                          ; $4793: $df
	rst $38                                          ; $4794: $ff
	rst FarCall                                          ; $4795: $f7
	rst AddAOntoHL                                          ; $4796: $ef
	db $eb                                           ; $4797: $eb
	rst SubAFromBC                                          ; $4798: $e7
	jr nz, jr_057_47bb                               ; $4799: $20 $20

	jr nc, jr_057_47ad                               ; $479b: $30 $10

	jr jr_057_47b7                                   ; $479d: $18 $18

	inc e                                            ; $479f: $1c
	sub h                                            ; $47a0: $94
	inc e                                            ; $47a1: $1c
	rlca                                             ; $47a2: $07

jr_057_47a3:
	rlca                                             ; $47a3: $07
	sub e                                            ; $47a4: $93
	sub e                                            ; $47a5: $93
	adc e                                            ; $47a6: $8b
	adc e                                            ; $47a7: $8b
	adc c                                            ; $47a8: $89
	call $f8f8                                       ; $47a9: $cd $f8 $f8
	db $dd                                           ; $47ac: $dd

jr_057_47ad:
	ld a, h                                          ; $47ad: $7c
	adc l                                            ; $47ae: $8d
	ld a, [hl]                                       ; $47af: $7e
	ld a, $73                                        ; $47b0: $3e $73
	ld d, e                                          ; $47b2: $53
	dec sp                                           ; $47b3: $3b
	dec hl                                           ; $47b4: $2b
	sbc c                                            ; $47b5: $99
	sub l                                            ; $47b6: $95

jr_057_47b7:
	adc b                                            ; $47b7: $88
	adc h                                            ; $47b8: $8c
	rst GetHLinHL                                          ; $47b9: $cf
	rst AddAOntoHL                                          ; $47ba: $ef

jr_057_47bb:
	rst SubAFromBC                                          ; $47bb: $e7
	rst FarCall                                          ; $47bc: $f7
	ld [hl], a                                       ; $47bd: $77
	ld a, e                                          ; $47be: $7b
	ld a, a                                          ; $47bf: $7f
	ld a, a                                          ; $47c0: $7f
	db $dd                                           ; $47c1: $dd
	jr c, jr_057_47a3                                ; $47c2: $38 $df

	sbc h                                            ; $47c4: $9c
	sbc l                                            ; $47c5: $9d
	adc $ef                                          ; $47c6: $ce $ef
	reti                                             ; $47c8: $d9


	rst $38                                          ; $47c9: $ff
	sbc $90                                          ; $47ca: $de $90
	sbc d                                            ; $47cc: $9a
	sbc b                                            ; $47cd: $98
	ret c                                            ; $47ce: $d8

	ld c, b                                          ; $47cf: $48
	ld l, h                                          ; $47d0: $6c
	ld l, h                                          ; $47d1: $6c
	ld e, a                                          ; $47d2: $5f
	ldh a, [$99]                                     ; $47d3: $f0 $99
	ret c                                            ; $47d5: $d8

	ret z                                            ; $47d6: $c8

	add sp, $6c                                      ; $47d7: $e8 $6c
	ld a, h                                          ; $47d9: $7c
	ld a, $d9                                        ; $47da: $3e $d9
	rst $38                                          ; $47dc: $ff
	sbc $c3                                          ; $47dd: $de $c3
	rst SubAFromDE                                          ; $47df: $df
	pop hl                                           ; $47e0: $e1
	sbc h                                            ; $47e1: $9c
	ld [hl], c                                       ; $47e2: $71
	ld [hl], b                                       ; $47e3: $70
	ld a, b                                          ; $47e4: $78
	db $db                                           ; $47e5: $db
	rst $38                                          ; $47e6: $ff
	sbc b                                            ; $47e7: $98
	rst SubAFromDE                                          ; $47e8: $df
	rst AddAOntoHL                                          ; $47e9: $ef
	rrca                                             ; $47ea: $0f
	rrca                                             ; $47eb: $0f
	adc a                                            ; $47ec: $8f
	adc a                                            ; $47ed: $8f
	add a                                            ; $47ee: $87
	sbc $c7                                          ; $47ef: $de $c7
	reti                                             ; $47f1: $d9


	rst $38                                          ; $47f2: $ff
	sub a                                            ; $47f3: $97
	dec a                                            ; $47f4: $3d
	ld l, a                                          ; $47f5: $6f
	ld h, a                                          ; $47f6: $67
	ld h, l                                          ; $47f7: $65
	ld h, l                                          ; $47f8: $65
	ld l, h                                          ; $47f9: $6c
	ld l, h                                          ; $47fa: $6c
	db $fc                                           ; $47fb: $fc
	reti                                             ; $47fc: $d9


	rst $38                                          ; $47fd: $ff
	adc [hl]                                         ; $47fe: $8e
	inc hl                                           ; $47ff: $23
	rst FarCall                                          ; $4800: $f7
	rst $38                                          ; $4801: $ff
	ld a, a                                          ; $4802: $7f
	cp a                                             ; $4803: $bf
	rst SubAFromDE                                          ; $4804: $df
	rst AddAOntoHL                                          ; $4805: $ef
	rst FarCall                                          ; $4806: $f7
	rst $38                                          ; $4807: $ff
	rra                                              ; $4808: $1f
	rrca                                             ; $4809: $0f
	add a                                            ; $480a: $87
	jp $f0e1                                         ; $480b: $c3 $e1 $f0


	ld hl, sp+$7f                                    ; $480e: $f8 $7f
	ld a, e                                          ; $4810: $7b
	ld e, [hl]                                       ; $4811: $5e
	sbc $ff                                          ; $4812: $de $ff
	sbc [hl]                                         ; $4814: $9e
	ei                                               ; $4815: $fb
	ld a, e                                          ; $4816: $7b
	inc h                                            ; $4817: $24
	rst SubAFromDE                                          ; $4818: $df
	ldh a, [$df]                                     ; $4819: $f0 $df
	rst $38                                          ; $481b: $ff
	ld l, a                                          ; $481c: $6f
	ldh a, [c]                                       ; $481d: $f2
	sbc $ff                                          ; $481e: $de $ff
	ei                                               ; $4820: $fb
	sbc d                                            ; $4821: $9a
	ret nz                                           ; $4822: $c0

	ldh a, [$3f]                                     ; $4823: $f0 $3f
	ld a, a                                          ; $4825: $7f
	add $6f                                          ; $4826: $c6 $6f
	or $9d                                           ; $4828: $f6 $9d
	add b                                            ; $482a: $80
	add hl, sp                                       ; $482b: $39
	call c, Call_057_76ff                            ; $482c: $dc $ff $76
	pop de                                           ; $482f: $d1
	sbc e                                            ; $4830: $9b
	ld a, h                                          ; $4831: $7c
	jr jr_057_4835                                   ; $4832: $18 $01

	inc bc                                           ; $4834: $03

jr_057_4835:
	halt                                             ; $4835: $76
	pop de                                           ; $4836: $d1
	sbc d                                            ; $4837: $9a
	add e                                            ; $4838: $83
	rst SubAFromBC                                          ; $4839: $e7
	cp $fc                                           ; $483a: $fe $fc
	db $e3                                           ; $483c: $e3
	ld a, d                                          ; $483d: $7a
	cp a                                             ; $483e: $bf
	sbc d                                            ; $483f: $9a
	ld a, a                                          ; $4840: $7f
	cp $fc                                           ; $4841: $fe $fc
	ldh a, [rAUD3LEVEL]                              ; $4843: $f0 $1c
	ld a, d                                          ; $4845: $7a
	cp a                                             ; $4846: $bf
	sub e                                            ; $4847: $93
	add b                                            ; $4848: $80
	ld bc, $0f03                                     ; $4849: $01 $03 $0f
	di                                               ; $484c: $f3
	ldh [c], a                                       ; $484d: $e2
	jp nz, $1282                                     ; $484e: $c2 $82 $12

	ld [hl], $77                                     ; $4851: $36 $77
	rst $38                                          ; $4853: $ff
	ld a, d                                          ; $4854: $7a
	sbc b                                            ; $4855: $98
	sbc d                                            ; $4856: $9a
	ld a, a                                          ; $4857: $7f
	rst AddAOntoHL                                          ; $4858: $ef
	rst GetHLinHL                                          ; $4859: $cf
	adc a                                            ; $485a: $8f
	rrca                                             ; $485b: $0f
	db $dd                                           ; $485c: $dd
	daa                                              ; $485d: $27
	sbc $23                                          ; $485e: $de $23
	sbc [hl]                                         ; $4860: $9e
	ld de, $f8dd                                     ; $4861: $11 $dd $f8
	sbc $fc                                          ; $4864: $de $fc
	sub h                                            ; $4866: $94
	cp $f5                                           ; $4867: $fe $f5
	push af                                          ; $4869: $f5
	cp l                                             ; $486a: $bd
	cp a                                             ; $486b: $bf
	ld a, a                                          ; $486c: $7f
	ld e, [hl]                                       ; $486d: $5e
	ld e, [hl]                                       ; $486e: $5e
	ld e, e                                          ; $486f: $5b
	adc d                                            ; $4870: $8a
	adc d                                            ; $4871: $8a
	sbc $ca                                          ; $4872: $de $ca
	rst SubAFromDE                                          ; $4874: $df
	db $eb                                           ; $4875: $eb
	sbc e                                            ; $4876: $9b
	rst AddAOntoHL                                          ; $4877: $ef
	ld [hl], d                                       ; $4878: $72
	pop hl                                           ; $4879: $e1
	pop hl                                           ; $487a: $e1
	sbc $e0                                          ; $487b: $de $e0
	rst SubAFromDE                                          ; $487d: $df
	ld h, b                                          ; $487e: $60
	sbc h                                            ; $487f: $9c
	jp $8181                                         ; $4880: $c3 $81 $81


	sbc $80                                          ; $4883: $de $80
	rst SubAFromDE                                          ; $4885: $df
	ret nz                                           ; $4886: $c0

	sub a                                            ; $4887: $97
	ld c, c                                          ; $4888: $49
	add hl, hl                                       ; $4889: $29
	dec h                                            ; $488a: $25
	and h                                            ; $488b: $a4
	and d                                            ; $488c: $a2
	or d                                             ; $488d: $b2
	or e                                             ; $488e: $b3
	add hl, hl                                       ; $488f: $29
	jp c, $85ff                                      ; $4890: $da $ff $85

	ld l, a                                          ; $4893: $6f
	rst FarCall                                          ; $4894: $f7
	ld [hl], l                                       ; $4895: $75
	ld [hl], e                                       ; $4896: $73
	or d                                             ; $4897: $b2
	sbc e                                            ; $4898: $9b
	ld c, c                                          ; $4899: $49
	ld h, c                                          ; $489a: $61
	ldh a, [$0c]                                     ; $489b: $f0 $0c
	adc [hl]                                         ; $489d: $8e
	adc [hl]                                         ; $489e: $8e
	rst GetHLinHL                                          ; $489f: $cf
	rst SubAFromBC                                          ; $48a0: $e7
	rst FarCall                                          ; $48a1: $f7
	rst $38                                          ; $48a2: $ff
	rst SubAFromDE                                          ; $48a3: $df

Jump_057_48a4:
	push bc                                          ; $48a4: $c5
	call nz, $c2c6                                   ; $48a5: $c4 $c6 $c2
	ldh [c], a                                       ; $48a8: $e2
	ld h, e                                          ; $48a9: $63
	pop hl                                           ; $48aa: $e1
	and c                                            ; $48ab: $a1
	ld a, $de                                        ; $48ac: $3e $de
	ccf                                              ; $48ae: $3f
	adc a                                            ; $48af: $8f
	rra                                              ; $48b0: $1f
	sbc a                                            ; $48b1: $9f
	sbc a                                            ; $48b2: $9f
	rst SubAFromDE                                          ; $48b3: $df
	adc h                                            ; $48b4: $8c
	jp z, $4bca                                      ; $48b5: $ca $ca $4b

	ld l, c                                          ; $48b8: $69
	ld h, l                                          ; $48b9: $65
	dec h                                            ; $48ba: $25
	or h                                             ; $48bb: $b4
	ld a, a                                          ; $48bc: $7f
	ccf                                              ; $48bd: $3f
	ccf                                              ; $48be: $3f
	cp a                                             ; $48bf: $bf
	ld a, e                                          ; $48c0: $7b
	pop af                                           ; $48c1: $f1
	sub [hl]                                         ; $48c2: $96
	rst GetHLinHL                                          ; $48c3: $cf
	ld a, e                                          ; $48c4: $7b
	add hl, sp                                       ; $48c5: $39
	inc e                                            ; $48c6: $1c
	ld a, [de]                                       ; $48c7: $1a
	add hl, bc                                       ; $48c8: $09
	and l                                            ; $48c9: $a5
	sub d                                            ; $48ca: $92
	jp z, $ffdb                                      ; $48cb: $ca $db $ff

	rst SubAFromDE                                          ; $48ce: $df
	cp $dd                                           ; $48cf: $fe $dd
	rst $38                                          ; $48d1: $ff
	ld a, a                                          ; $48d2: $7f
	halt                                             ; $48d3: $76
	rst SubAFromDE                                          ; $48d4: $df
	ld a, a                                          ; $48d5: $7f
	sbc e                                            ; $48d6: $9b
	ei                                               ; $48d7: $fb
	db $ed                                           ; $48d8: $ed
	or $9a                                           ; $48d9: $f6 $9a
	db $fd                                           ; $48db: $fd
	sbc l                                            ; $48dc: $9d
	ccf                                              ; $48dd: $3f
	sbc a                                            ; $48de: $9f
	ld l, [hl]                                       ; $48df: $6e
	push hl                                          ; $48e0: $e5
	sbc d                                            ; $48e1: $9a
	rst FarCall                                          ; $48e2: $f7
	ld a, [$3efc]                                    ; $48e3: $fa $fc $3e
	inc bc                                           ; $48e6: $03
	cp $7f                                           ; $48e7: $fe $7f
	ld l, [hl]                                       ; $48e9: $6e
	db $db                                           ; $48ea: $db
	rst $38                                          ; $48eb: $ff
	sbc h                                            ; $48ec: $9c
	rst SubAFromBC                                          ; $48ed: $e7
	ld [hl], e                                       ; $48ee: $73
	add hl, de                                       ; $48ef: $19
	db $fc                                           ; $48f0: $fc
	sbc c                                            ; $48f1: $99
	ld h, a                                          ; $48f2: $67
	ld [hl], e                                       ; $48f3: $73
	inc sp                                           ; $48f4: $33
	xor e                                            ; $48f5: $ab
	cp $f7                                           ; $48f6: $fe $f7
	ld l, e                                          ; $48f8: $6b
	add e                                            ; $48f9: $83
	adc e                                            ; $48fa: $8b
	ld l, $06                                        ; $48fb: $2e $06
	inc bc                                           ; $48fd: $03
	rst $38                                          ; $48fe: $ff
	push bc                                          ; $48ff: $c5
	ld d, b                                          ; $4900: $50
	db $f4                                           ; $4901: $f4
	sub e                                            ; $4902: $93
	sbc a                                            ; $4903: $9f
	ld l, e                                          ; $4904: $6b
	ld l, a                                          ; $4905: $6f
	adc a                                            ; $4906: $8f
	add e                                            ; $4907: $83
	ldh [$38], a                                     ; $4908: $e0 $38
	ld l, [hl]                                       ; $490a: $6e
	ld h, e                                          ; $490b: $63
	sub a                                            ; $490c: $97
	sub a                                            ; $490d: $97
	ld a, [$b17b]                                    ; $490e: $fa $7b $b1
	sbc h                                            ; $4911: $9c
	rra                                              ; $4912: $1f
	pop bc                                           ; $4913: $c1
	ret c                                            ; $4914: $d8

	ld a, c                                          ; $4915: $79
	di                                               ; $4916: $f3
	add b                                            ; $4917: $80
	ld a, [hl]                                       ; $4918: $7e
	rra                                              ; $4919: $1f
	rlca                                             ; $491a: $07
	add b                                            ; $491b: $80
	ldh [$f8], a                                     ; $491c: $e0 $f8
	ld e, [hl]                                       ; $491e: $5e
	cpl                                              ; $491f: $2f
	adc l                                            ; $4920: $8d
	rst JumpTable                                          ; $4921: $c7
	ldh [c], a                                       ; $4922: $e2
	pop de                                           ; $4923: $d1
	daa                                              ; $4924: $27
	dec bc                                           ; $4925: $0b
	ccf                                              ; $4926: $3f
	rra                                              ; $4927: $1f
	rrca                                             ; $4928: $0f
	rlca                                             ; $4929: $07
	add e                                            ; $492a: $83
	pop hl                                           ; $492b: $e1
	jr jr_057_4932                                   ; $492c: $18 $04

	rst SubAFromDE                                          ; $492e: $df
	xor a                                            ; $492f: $af
	rst SubAFromHL                                          ; $4930: $d7
	xor e                                            ; $4931: $ab

jr_057_4932:
	push de                                          ; $4932: $d5
	ld [$ead5], a                                    ; $4933: $ea $d5 $ea
	ld hl, sp+$6f                                    ; $4936: $f8 $6f
	xor b                                            ; $4938: $a8
	sbc h                                            ; $4939: $9c
	ld a, a                                          ; $493a: $7f
	ld [hl], h                                       ; $493b: $74
	db $fc                                           ; $493c: $fc
	sbc $fe                                          ; $493d: $de $fe
	sbc d                                            ; $493f: $9a
	ld h, [hl]                                       ; $4940: $66
	ld b, d                                          ; $4941: $42
	ret nz                                           ; $4942: $c0

	adc e                                            ; $4943: $8b
	inc bc                                           ; $4944: $03
	sbc $01                                          ; $4945: $de $01
	adc e                                            ; $4947: $8b
	sbc c                                            ; $4948: $99
	cp l                                             ; $4949: $bd
	ccf                                              ; $494a: $3f
	inc bc                                           ; $494b: $03
	ld de, $0008                                     ; $494c: $11 $08 $00
	ld [bc], a                                       ; $494f: $02
	inc bc                                           ; $4950: $03
	dec bc                                           ; $4951: $0b
	rla                                              ; $4952: $17
	db $fc                                           ; $4953: $fc
	xor $f7                                          ; $4954: $ee $f7
	rst $38                                          ; $4956: $ff
	db $fd                                           ; $4957: $fd
	db $fc                                           ; $4958: $fc
	db $f4                                           ; $4959: $f4
	add sp, -$1f                                     ; $495a: $e8 $e1
	ld [hl], l                                       ; $495c: $75
	ld a, a                                          ; $495d: $7f
	sbc e                                            ; $495e: $9b
	ld e, $9c                                        ; $495f: $1e $9c
	ret z                                            ; $4961: $c8

	ld e, $75                                        ; $4962: $1e $75
	ld a, a                                          ; $4964: $7f
	sbc h                                            ; $4965: $9c
	pop hl                                           ; $4966: $e1
	ld h, e                                          ; $4967: $63
	scf                                              ; $4968: $37
	ld a, d                                          ; $4969: $7a
	ld [hl], l                                       ; $496a: $75
	ld a, c                                          ; $496b: $79
	ld a, [hl]                                       ; $496c: $7e
	ld a, l                                          ; $496d: $7d
	ld a, a                                          ; $496e: $7f
	ld a, [hl]                                       ; $496f: $7e
	ret nz                                           ; $4970: $c0

	rst SubAFromDE                                          ; $4971: $df
	inc a                                            ; $4972: $3c
	ld a, l                                          ; $4973: $7d
	ld a, [hl]                                       ; $4974: $7e
	sub [hl]                                         ; $4975: $96
	adc h                                            ; $4976: $8c
	inc c                                            ; $4977: $0c
	db $10                                           ; $4978: $10
	adc b                                            ; $4979: $88
	adc b                                            ; $497a: $88
	call nz, $f3e2                                   ; $497b: $c4 $e2 $f3
	ld sp, hl                                        ; $497e: $f9
	ld l, a                                          ; $497f: $6f
	or e                                             ; $4980: $b3
	ld a, a                                          ; $4981: $7f
	sbc e                                            ; $4982: $9b

jr_057_4983:
	sub l                                            ; $4983: $95
	rra                                              ; $4984: $1f
	ld l, e                                          ; $4985: $6b
	dec hl                                           ; $4986: $2b
	ld l, $3e                                        ; $4987: $2e $3e
	inc a                                            ; $4989: $3c
	dec a                                            ; $498a: $3d
	inc sp                                           ; $498b: $33
	ccf                                              ; $498c: $3f
	cp $7b                                           ; $498d: $fe $7b
	ld a, [hl]                                       ; $498f: $7e
	rst SubAFromDE                                          ; $4990: $df
	add sp, -$78                                     ; $4991: $e8 $88
	rst AddAOntoHL                                          ; $4993: $ef
	db $ec                                           ; $4994: $ec
	ldh a, [$f0]                                     ; $4995: $f0 $f0
	ld [hl], b                                       ; $4997: $70
	jr jr_057_49ba                                   ; $4998: $18 $20

	ldh a, [$e8]                                     ; $499a: $f0 $e8
	ld hl, sp-$40                                    ; $499c: $f8 $c0
	ld h, b                                          ; $499e: $60
	jr nc, jr_057_49a1                               ; $499f: $30 $00

jr_057_49a1:
	jr nz, jr_057_4983                               ; $49a1: $20 $e0

	sub b                                            ; $49a3: $90
	nop                                              ; $49a4: $00
	dec h                                            ; $49a5: $25
	ld [hl+], a                                      ; $49a6: $22
	ld b, c                                          ; $49a7: $41
	ld d, b                                          ; $49a8: $50
	rrca                                             ; $49a9: $0f
	sbc $1f                                          ; $49aa: $de $1f
	add c                                            ; $49ac: $81
	ld h, a                                          ; $49ad: $67
	ld h, e                                          ; $49ae: $63
	ld b, c                                          ; $49af: $41
	ld b, b                                          ; $49b0: $40
	rra                                              ; $49b1: $1f
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	ld bc, $dcf8                                     ; $49b4: $01 $f8 $dc
	rst AddAOntoHL                                          ; $49b7: $ef
	rst FarCall                                          ; $49b8: $f7
	rst SubAFromDE                                          ; $49b9: $df

jr_057_49ba:
	cp h                                             ; $49ba: $bc
	rst $38                                          ; $49bb: $ff
	ld hl, sp+$2f                                    ; $49bc: $f8 $2f
	sub a                                            ; $49be: $97
	add e                                            ; $49bf: $83
	ret nz                                           ; $49c0: $c0

	ldh [$7f], a                                     ; $49c1: $e0 $7f
	nop                                              ; $49c3: $00
	rst $38                                          ; $49c4: $ff
	pop bc                                           ; $49c5: $c1
	ld h, c                                          ; $49c6: $61
	jr nz, @-$2e                                     ; $49c7: $20 $d0

	ld hl, sp+$7e                                    ; $49c9: $f8 $7e
	ld l, [hl]                                       ; $49cb: $6e
	jr @-$6c                                         ; $49cc: $18 $92

	ccf                                              ; $49ce: $3f
	adc a                                            ; $49cf: $8f
	inc bc                                           ; $49d0: $03
	add c                                            ; $49d1: $81

Call_057_49d2:
	sub h                                            ; $49d2: $94
	call nc, $cade                                   ; $49d3: $d4 $de $ca
	ld [$f567], a                                    ; $49d6: $ea $67 $f5
	ld sp, $79ef                                     ; $49d9: $31 $ef $79
	add b                                            ; $49dc: $80
	ld a, l                                          ; $49dd: $7d
	ld b, l                                          ; $49de: $45
	sub l                                            ; $49df: $95
	ei                                               ; $49e0: $fb
	rst $38                                          ; $49e1: $ff
	ld b, h                                          ; $49e2: $44
	ld h, a                                          ; $49e3: $67
	inc sp                                           ; $49e4: $33
	add hl, sp                                       ; $49e5: $39
	inc d                                            ; $49e6: $14
	dec bc                                           ; $49e7: $0b
	add hl, bc                                       ; $49e8: $09
	add h                                            ; $49e9: $84
	ld h, l                                          ; $49ea: $65
	rst GetHLinHL                                          ; $49eb: $cf
	ld a, [hl]                                       ; $49ec: $7e
	ld h, $de                                        ; $49ed: $26 $de
	ldh [$7b], a                                     ; $49ef: $e0 $7b
	inc [hl]                                         ; $49f1: $34
	ld a, c                                          ; $49f2: $79
	cp $df                                           ; $49f3: $fe $df
	ret nz                                           ; $49f5: $c0

	ld a, e                                          ; $49f6: $7b
	inc [hl]                                         ; $49f7: $34
	call c, $df1f                                    ; $49f8: $dc $1f $df
	rrca                                             ; $49fb: $0f
	sbc [hl]                                         ; $49fc: $9e
	rlca                                             ; $49fd: $07
	ld sp, hl                                        ; $49fe: $f9
	ld c, l                                          ; $49ff: $4d
	ret nc                                           ; $4a00: $d0

	rst $38                                          ; $4a01: $ff
	ld a, [hl]                                       ; $4a02: $7e
	dec de                                           ; $4a03: $1b
	ld l, a                                          ; $4a04: $6f
	rlca                                             ; $4a05: $07
	sbc h                                            ; $4a06: $9c
	inc b                                            ; $4a07: $04
	ld [bc], a                                       ; $4a08: $02
	ld bc, $85fc                                     ; $4a09: $01 $fc $85
	ld a, e                                          ; $4a0c: $7b
	inc de                                           ; $4a0d: $13
	nop                                              ; $4a0e: $00
	cp b                                             ; $4a0f: $b8
	ei                                               ; $4a10: $fb
	or e                                             ; $4a11: $b3
	rst $38                                          ; $4a12: $ff
	ccf                                              ; $4a13: $3f
	rst $38                                          ; $4a14: $ff
	rrca                                             ; $4a15: $0f
	nop                                              ; $4a16: $00
	ret nz                                           ; $4a17: $c0

	ld a, h                                          ; $4a18: $7c
	ld c, a                                          ; $4a19: $4f
	ld b, c                                          ; $4a1a: $41
	pop bc                                           ; $4a1b: $c1
	rst $38                                          ; $4a1c: $ff
	rst $38                                          ; $4a1d: $ff
	rra                                              ; $4a1e: $1f
	nop                                              ; $4a1f: $00
	ldh a, [$cf]                                     ; $4a20: $f0 $cf
	cp $ff                                           ; $4a22: $fe $ff
	db $fc                                           ; $4a24: $fc
	cp $7b                                           ; $4a25: $fe $7b
	cp l                                             ; $4a27: $bd
	ld a, l                                          ; $4a28: $7d
	and d                                            ; $4a29: $a2
	sub e                                            ; $4a2a: $93
	rra                                              ; $4a2b: $1f
	jp $91e3                                         ; $4a2c: $c3 $e3 $91


	add hl, de                                       ; $4a2f: $19
	dec c                                            ; $4a30: $0d
	adc a                                            ; $4a31: $8f
	rst AddAOntoHL                                          ; $4a32: $ef
	daa                                              ; $4a33: $27
	nop                                              ; $4a34: $00
	nop                                              ; $4a35: $00
	ldh [$71], a                                     ; $4a36: $e0 $71
	sbc c                                            ; $4a38: $99
	sub a                                            ; $4a39: $97
	or l                                             ; $4a3a: $b5
	ld [$fad5], a                                    ; $4a3b: $ea $d5 $fa
	db $fd                                           ; $4a3e: $fd
	ld [$f8f9], a                                    ; $4a3f: $ea $f9 $f8
	ld a, d                                          ; $4a42: $7a
	jr nc, jr_057_4ab8                               ; $4a43: $30 $73

	sub a                                            ; $4a45: $97
	sbc d                                            ; $4a46: $9a
	sbc $be                                          ; $4a47: $de $be
	cp $7c                                           ; $4a49: $fe $7c
	inc a                                            ; $4a4b: $3c
	ld a, c                                          ; $4a4c: $79
	ld h, h                                          ; $4a4d: $64
	sub [hl]                                         ; $4a4e: $96
	ld hl, $0141                                     ; $4a4f: $21 $41 $01
	add e                                            ; $4a52: $83
	jp $0707                                         ; $4a53: $c3 $07 $07


jr_057_4a56:
	rrca                                             ; $4a56: $0f
	rlca                                             ; $4a57: $07
	ld a, e                                          ; $4a58: $7b
	db $eb                                           ; $4a59: $eb
	adc [hl]                                         ; $4a5a: $8e
	rlca                                             ; $4a5b: $07
	dec bc                                           ; $4a5c: $0b
	inc b                                            ; $4a5d: $04
	inc bc                                           ; $4a5e: $03
	ld hl, sp-$20                                    ; $4a5f: $f8 $e0
	ldh [$f0], a                                     ; $4a61: $e0 $f0
	ld hl, sp-$0c                                    ; $4a63: $f8 $f4
	ei                                               ; $4a65: $fb
	db $fc                                           ; $4a66: $fc
	jp $f3e3                                         ; $4a67: $c3 $e3 $f3


	ld sp, hl                                        ; $4a6a: $f9
	ld sp, hl                                        ; $4a6b: $f9
	ld a, d                                          ; $4a6c: $7a
	ld [hl], e                                       ; $4a6d: $73
	sub d                                            ; $4a6e: $92
	inc a                                            ; $4a6f: $3c
	inc e                                            ; $4a70: $1c
	inc c                                            ; $4a71: $0c
	ld b, $06                                        ; $4a72: $06 $06
	inc bc                                           ; $4a74: $03
	inc bc                                           ; $4a75: $03
	add c                                            ; $4a76: $81
	di                                               ; $4a77: $f3
	di                                               ; $4a78: $f3
	db $e3                                           ; $4a79: $e3
	rst JumpTable                                          ; $4a7a: $c7
	add a                                            ; $4a7b: $87
	ld a, b                                          ; $4a7c: $78
	ld a, $df                                        ; $4a7d: $3e $df
	inc c                                            ; $4a7f: $0c
	sub c                                            ; $4a80: $91
	inc e                                            ; $4a81: $1c
	inc a                                            ; $4a82: $3c
	ld a, [hl]                                       ; $4a83: $7e
	rst AddAOntoHL                                          ; $4a84: $ef
	call $f18c                                       ; $4a85: $cd $8c $f1
	pop af                                           ; $4a88: $f1
	ldh a, [c]                                       ; $4a89: $f2
	rst SubAFromBC                                          ; $4a8a: $e7
	call z, $e391                                    ; $4a8b: $cc $91 $e3
	add [hl]                                         ; $4a8e: $86
	sbc $1f                                          ; $4a8f: $de $1f
	ld a, l                                          ; $4a91: $7d
	ld sp, hl                                        ; $4a92: $f9
	halt                                             ; $4a93: $76
	cp h                                             ; $4a94: $bc
	sub e                                            ; $4a95: $93
	ld a, l                                          ; $4a96: $7d
	xor a                                            ; $4a97: $af

jr_057_4a98:
	ld a, a                                          ; $4a98: $7f
	db $fc                                           ; $4a99: $fc
	xor h                                            ; $4a9a: $ac
	xor h                                            ; $4a9b: $ac
	xor l                                            ; $4a9c: $ad
	ldh [$e3], a                                     ; $4a9d: $e0 $e3
	rst $38                                          ; $4a9f: $ff
	db $f4                                           ; $4aa0: $f4
	ldh a, [$de]                                     ; $4aa1: $f0 $de
	ld hl, sp-$7a                                    ; $4aa3: $f8 $86
	ld a, h                                          ; $4aa5: $7c
	ldh [$b8], a                                     ; $4aa6: $e0 $b8
	cp b                                             ; $4aa8: $b8
	add sp, -$30                                     ; $4aa9: $e8 $d0
	ld h, b                                          ; $4aab: $60
	pop af                                           ; $4aac: $f1
	ldh a, [$f8]                                     ; $4aad: $f0 $f8
	sbc b                                            ; $4aaf: $98
	ld hl, sp-$08                                    ; $4ab0: $f8 $f8
	ld d, b                                          ; $4ab2: $50
	nop                                              ; $4ab3: $00
	nop                                              ; $4ab4: $00
	rrca                                             ; $4ab5: $0f
	dec b                                            ; $4ab6: $05
	nop                                              ; $4ab7: $00

jr_057_4ab8:
	nop                                              ; $4ab8: $00
	add b                                            ; $4ab9: $80
	ret nz                                           ; $4aba: $c0

	ldh [$e0], a                                     ; $4abb: $e0 $e0
	inc bc                                           ; $4abd: $03
	ld [hl], l                                       ; $4abe: $75
	db $e3                                           ; $4abf: $e3
	ld [hl], a                                       ; $4ac0: $77
	jr nz, jr_057_4a56                               ; $4ac1: $20 $93

	inc sp                                           ; $4ac3: $33
	ld a, $0d                                        ; $4ac4: $3e $0d
	inc de                                           ; $4ac6: $13
	nop                                              ; $4ac7: $00
	ld d, a                                          ; $4ac8: $57
	xor a                                            ; $4ac9: $af
	rst $38                                          ; $4aca: $ff
	daa                                              ; $4acb: $27
	ccf                                              ; $4acc: $3f
	cpl                                              ; $4acd: $2f
	ld e, $fe                                        ; $4ace: $1e $fe
	ld a, [hl]                                       ; $4ad0: $7e
	or e                                             ; $4ad1: $b3
	db $db                                           ; $4ad2: $db
	rst $38                                          ; $4ad3: $ff
	sbc h                                            ; $4ad4: $9c
	ld sp, hl                                        ; $4ad5: $f9
	ldh [$80], a                                     ; $4ad6: $e0 $80
	db $fc                                           ; $4ad8: $fc
	add a                                            ; $4ad9: $87
	jr c, jr_057_4a98                                ; $4ada: $38 $bc

	cp h                                             ; $4adc: $bc
	cp $ff                                           ; $4add: $fe $ff
	db $fd                                           ; $4adf: $fd
	ld a, [$effa]                                    ; $4ae0: $fa $fa $ef
	rst SubAFromBC                                          ; $4ae3: $e7
	rst SubAFromBC                                          ; $4ae4: $e7
	ld h, e                                          ; $4ae5: $63
	ld b, e                                          ; $4ae6: $43
	rst JumpTable                                          ; $4ae7: $c7
	rst GetHLinHL                                          ; $4ae8: $cf
	rst $38                                          ; $4ae9: $ff
	add d                                            ; $4aea: $82
	ld b, c                                          ; $4aeb: $41
	ld h, b                                          ; $4aec: $60
	jr nc, jr_057_4b27                               ; $4aed: $30 $38

	ld e, $8f                                        ; $4aef: $1e $8f
	adc a                                            ; $4af1: $8f
	reti                                             ; $4af2: $d9


	rst $38                                          ; $4af3: $ff
	sub a                                            ; $4af4: $97
	ld a, [hl]                                       ; $4af5: $7e
	inc e                                            ; $4af6: $1c
	add a                                            ; $4af7: $87
	ld b, e                                          ; $4af8: $43
	jr nc, @+$0e                                     ; $4af9: $30 $0c

	jp Jump_057_7af0                                 ; $4afb: $c3 $f0 $7a


	ld d, c                                          ; $4afe: $51
	call c, $dfff                                    ; $4aff: $dc $ff $df
	rlca                                             ; $4b02: $07
	sbc c                                            ; $4b03: $99
	inc bc                                           ; $4b04: $03
	add e                                            ; $4b05: $83
	jp $c1c1                                         ; $4b06: $c3 $c1 $c1


	pop hl                                           ; $4b09: $e1
	db $fd                                           ; $4b0a: $fd
	ld [hl], l                                       ; $4b0b: $75
	rrca                                             ; $4b0c: $0f
	ld c, d                                          ; $4b0d: $4a
	ret nz                                           ; $4b0e: $c0

	sbc l                                            ; $4b0f: $9d
	rlca                                             ; $4b10: $07
	rst $38                                          ; $4b11: $ff
	ld a, e                                          ; $4b12: $7b
	or e                                             ; $4b13: $b3
	adc a                                            ; $4b14: $8f
	db $fd                                           ; $4b15: $fd
	rst $38                                          ; $4b16: $ff
	ei                                               ; $4b17: $fb
	rst FarCall                                          ; $4b18: $f7
	nop                                              ; $4b19: $00
	ld bc, $0703                                     ; $4b1a: $01 $03 $07
	ld c, $3c                                        ; $4b1d: $0e $3c
	db $fc                                           ; $4b1f: $fc
	ld hl, sp-$01                                    ; $4b20: $f8 $ff
	ld a, a                                          ; $4b22: $7f
	xor $e0                                          ; $4b23: $ee $e0
	ld [hl], a                                       ; $4b25: $77
	adc l                                            ; $4b26: $8d

jr_057_4b27:
	sub l                                            ; $4b27: $95
	add c                                            ; $4b28: $81
	sbc a                                            ; $4b29: $9f
	jr nz, jr_057_4b4c                               ; $4b2a: $20 $20

	ccf                                              ; $4b2c: $3f
	ld [$2010], sp                                   ; $4b2d: $08 $10 $20
	cp $c0                                           ; $4b30: $fe $c0
	ld l, [hl]                                       ; $4b32: $6e
	adc l                                            ; $4b33: $8d
	sbc b                                            ; $4b34: $98
	ld a, b                                          ; $4b35: $78
	add b                                            ; $4b36: $80
	nop                                              ; $4b37: $00

jr_057_4b38:
	jr c, jr_057_4b38                                ; $4b38: $38 $fe

	inc bc                                           ; $4b3a: $03
	ld bc, $804a                                     ; $4b3b: $01 $4a $80
	rst SubAFromDE                                          ; $4b3e: $df
	add b                                            ; $4b3f: $80
	sbc l                                            ; $4b40: $9d
	ld hl, sp-$18                                    ; $4b41: $f8 $e8
	ld [hl], h                                       ; $4b43: $74
	scf                                              ; $4b44: $37
	sbc l                                            ; $4b45: $9d
	ldh a, [$d0]                                     ; $4b46: $f0 $d0

jr_057_4b48:
	ld [hl], l                                       ; $4b48: $75
	db $fc                                           ; $4b49: $fc
	ld [hl], a                                       ; $4b4a: $77
	inc c                                            ; $4b4b: $0c

jr_057_4b4c:
	sbc d                                            ; $4b4c: $9a
	ret z                                            ; $4b4d: $c8

	jr jr_057_4b48                                   ; $4b4e: $18 $f8

	ld hl, sp-$19                                    ; $4b50: $f8 $e7
	sbc $ff                                          ; $4b52: $de $ff
	sbc d                                            ; $4b54: $9a
	scf                                              ; $4b55: $37
	rst SubAFromBC                                          ; $4b56: $e7
	rlca                                             ; $4b57: $07
	rlca                                             ; $4b58: $07

jr_057_4b59:
	jr jr_057_4b59                                   ; $4b59: $18 $fe

	ld [hl], d                                       ; $4b5b: $72
	ld l, d                                          ; $4b5c: $6a
	sbc l                                            ; $4b5d: $9d
	pop hl                                           ; $4b5e: $e1
	pop af                                           ; $4b5f: $f1
	ld l, l                                          ; $4b60: $6d
	ld h, c                                          ; $4b61: $61
	sbc e                                            ; $4b62: $9b
	ld e, $0e                                        ; $4b63: $1e $0e
	rlca                                             ; $4b65: $07
	ld a, a                                          ; $4b66: $7f
	db $dd                                           ; $4b67: $dd
	cp a                                             ; $4b68: $bf
	rst SubAFromDE                                          ; $4b69: $df
	ld a, a                                          ; $4b6a: $7f
	sbc l                                            ; $4b6b: $9d
	rst $38                                          ; $4b6c: $ff
	add b                                            ; $4b6d: $80
	db $dd                                           ; $4b6e: $dd
	ld b, b                                          ; $4b6f: $40
	rst SubAFromDE                                          ; $4b70: $df
	add b                                            ; $4b71: $80
	sub d                                            ; $4b72: $92
	nop                                              ; $4b73: $00
	ld [hl], a                                       ; $4b74: $77
	inc a                                            ; $4b75: $3c
	jr c, jr_057_4ba8                                ; $4b76: $38 $30

	pop hl                                           ; $4b78: $e1
	jp nz, $84c2                                     ; $4b79: $c2 $c2 $84

	adc a                                            ; $4b7c: $8f
	rst GetHLinHL                                          ; $4b7d: $cf
	rst SubAFromDE                                          ; $4b7e: $df
	rst $38                                          ; $4b7f: $ff
	ld a, e                                          ; $4b80: $7b
	jp hl                                            ; $4b81: $e9


	sbc c                                            ; $4b82: $99
	rst $38                                          ; $4b83: $ff
	inc e                                            ; $4b84: $1c
	ld a, [hl+]                                      ; $4b85: $2a
	ld l, d                                          ; $4b86: $6a
	adc $5d                                          ; $4b87: $ce $5d
	sbc $7d                                          ; $4b89: $de $7d
	ld a, a                                          ; $4b8b: $7f
	ld l, c                                          ; $4b8c: $69
	sbc h                                            ; $4b8d: $9c
	db $fd                                           ; $4b8e: $fd
	ld sp, hl                                        ; $4b8f: $f9
	di                                               ; $4b90: $f3
	sbc $d3                                          ; $4b91: $de $d3
	sub a                                            ; $4b93: $97
	call z, $9ece                                    ; $4b94: $cc $ce $9e
	cp h                                             ; $4b97: $bc
	dec hl                                           ; $4b98: $2b
	ld l, d                                          ; $4b99: $6a
	ld e, c                                          ; $4b9a: $59
	ld e, l                                          ; $4b9b: $5d
	ld [hl], h                                       ; $4b9c: $74
	inc [hl]                                         ; $4b9d: $34
	ld [hl], a                                       ; $4b9e: $77
	cp h                                             ; $4b9f: $bc
	sbc l                                            ; $4ba0: $9d
	pop af                                           ; $4ba1: $f1
	ld bc, $2779                                     ; $4ba2: $01 $79 $27
	ld a, d                                          ; $4ba5: $7a
	adc $ff                                          ; $4ba6: $ce $ff

jr_057_4ba8:
	ld a, l                                          ; $4ba8: $7d
	ld a, [hl+]                                      ; $4ba9: $2a
	ld [hl], a                                       ; $4baa: $77
	ld a, a                                          ; $4bab: $7f
	rst SubAFromDE                                          ; $4bac: $df
	ldh a, [$7a]                                     ; $4bad: $f0 $7a
	rst SubAFromBC                                          ; $4baf: $e7
	sbc l                                            ; $4bb0: $9d
	jr jr_057_4bf3                                   ; $4bb1: $18 $40

	ld a, [$b09b]                                    ; $4bb3: $fa $9b $b0
	nop                                              ; $4bb6: $00
	ld d, a                                          ; $4bb7: $57
	dec bc                                           ; $4bb8: $0b
	sbc $07                                          ; $4bb9: $de $07
	sbc $0f                                          ; $4bbb: $de $0f
	ld e, l                                          ; $4bbd: $5d
	ret nc                                           ; $4bbe: $d0

	sbc h                                            ; $4bbf: $9c
	cp $fb                                           ; $4bc0: $fe $fb
	rst $38                                          ; $4bc2: $ff
	ld a, e                                          ; $4bc3: $7b
	rra                                              ; $4bc4: $1f
	rst SubAFromDE                                          ; $4bc5: $df
	ld bc, $0391                                     ; $4bc6: $01 $91 $03
	ld b, $06                                        ; $4bc9: $06 $06
	ld c, $1c                                        ; $4bcb: $0e $1c
	inc a                                            ; $4bcd: $3c
	jp z, $eaea                                      ; $4bce: $ca $ea $ea

	db $eb                                           ; $4bd1: $eb
	db $eb                                           ; $4bd2: $eb
	jp hl                                            ; $4bd3: $e9


	ld sp, hl                                        ; $4bd4: $f9
	ld sp, hl                                        ; $4bd5: $f9

Call_057_4bd6:
	ld a, e                                          ; $4bd6: $7b
	sub e                                            ; $4bd7: $93
	sbc $7f                                          ; $4bd8: $de $7f
	rst SubAFromDE                                          ; $4bda: $df
	ccf                                              ; $4bdb: $3f
	sub a                                            ; $4bdc: $97
	ld b, a                                          ; $4bdd: $47
	ld h, e                                          ; $4bde: $63
	ld sp, $3c39                                     ; $4bdf: $31 $39 $3c
	ld e, $1f                                        ; $4be2: $1e $1f
	sbc a                                            ; $4be4: $9f
	reti                                             ; $4be5: $d9


	rst $38                                          ; $4be6: $ff
	ld a, e                                          ; $4be7: $7b
	rst JumpTable                                          ; $4be8: $c7
	sbc d                                            ; $4be9: $9a
	add b                                            ; $4bea: $80
	rst JumpTable                                          ; $4beb: $c7
	ld a, a                                          ; $4bec: $7f
	rst $38                                          ; $4bed: $ff
	ld b, $d6                                        ; $4bee: $06 $d6
	rst $38                                          ; $4bf0: $ff
	sbc l                                            ; $4bf1: $9d
	rst GetHLinHL                                          ; $4bf2: $cf

jr_057_4bf3:
	add a                                            ; $4bf3: $87
	ld a, e                                          ; $4bf4: $7b
	xor a                                            ; $4bf5: $af
	ld a, h                                          ; $4bf6: $7c
	call nc, $b67b                                   ; $4bf7: $d4 $7b $b6
	rst SubAFromDE                                          ; $4bfa: $df
	db $fc                                           ; $4bfb: $fc
	ld a, [hl]                                       ; $4bfc: $7e
	ldh [$7c], a                                     ; $4bfd: $e0 $7c
	ld e, d                                          ; $4bff: $5a
	ld a, a                                          ; $4c00: $7f
	or b                                             ; $4c01: $b0
	add a                                            ; $4c02: $87
	rst SubAFromBC                                          ; $4c03: $e7
	jp c, $3ff8                                      ; $4c04: $da $f8 $3f

	rst $38                                          ; $4c07: $ff
	cp a                                             ; $4c08: $bf
	daa                                              ; $4c09: $27
	jr nz, jr_057_4c4b                               ; $4c0a: $20 $3f

	inc a                                            ; $4c0c: $3c
	ldh [$ef], a                                     ; $4c0d: $e0 $ef
	rst SubAFromDE                                          ; $4c0f: $df
	cp a                                             ; $4c10: $bf
	ld a, a                                          ; $4c11: $7f
	rst $38                                          ; $4c12: $ff
	rst GetHLinHL                                          ; $4c13: $cf
	rra                                              ; $4c14: $1f
	ccf                                              ; $4c15: $3f
	ldh a, [$e1]                                     ; $4c16: $f0 $e1
	add $98                                          ; $4c18: $c6 $98
	ld h, b                                          ; $4c1a: $60
	ld a, d                                          ; $4c1b: $7a
	ld e, l                                          ; $4c1c: $5d
	jp c, $9dff                                      ; $4c1d: $da $ff $9d

	cp $40                                           ; $4c20: $fe $40
	ld l, [hl]                                       ; $4c22: $6e

Call_057_4c23:
	ld d, c                                          ; $4c23: $51
	sbc h                                            ; $4c24: $9c
	ld bc, $fdfe                                     ; $4c25: $01 $fe $fd
	ld a, d                                          ; $4c28: $7a
	ld b, h                                          ; $4c29: $44
	sbc h                                            ; $4c2a: $9c
	and e                                            ; $4c2b: $a3
	ld b, a                                          ; $4c2c: $47
	adc h                                            ; $4c2d: $8c
	ld a, d                                          ; $4c2e: $7a
	and c                                            ; $4c2f: $a1
	ld a, [hl]                                       ; $4c30: $7e
	db $dd                                           ; $4c31: $dd
	ld [hl], b                                       ; $4c32: $70
	ld a, [$ffdc]                                    ; $4c33: $fa $dc $ff
	sbc l                                            ; $4c36: $9d
	ccf                                              ; $4c37: $3f
	ret nz                                           ; $4c38: $c0

	ld a, c                                          ; $4c39: $79
	or c                                             ; $4c3a: $b1
	ld [hl], l                                       ; $4c3b: $75
	ld b, l                                          ; $4c3c: $45
	ld a, c                                          ; $4c3d: $79
	ld de, $a09a                                     ; $4c3e: $11 $9a $a0
	ldh [$c0], a                                     ; $4c41: $e0 $c0
	ret nz                                           ; $4c43: $c0

	add b                                            ; $4c44: $80
	sbc $3f                                          ; $4c45: $de $3f
	sbc $7f                                          ; $4c47: $de $7f
	db $db                                           ; $4c49: $db
	rst $38                                          ; $4c4a: $ff

jr_057_4c4b:
	sbc e                                            ; $4c4b: $9b
	ld h, b                                          ; $4c4c: $60
	adc d                                            ; $4c4d: $8a
	ld d, l                                          ; $4c4e: $55
	xor d                                            ; $4c4f: $aa

jr_057_4c50:
	db $fd                                           ; $4c50: $fd
	sbc e                                            ; $4c51: $9b
	sbc a                                            ; $4c52: $9f

jr_057_4c53:
	ld [hl], l                                       ; $4c53: $75
	xor d                                            ; $4c54: $aa
	ld d, l                                          ; $4c55: $55
	sbc $fd                                          ; $4c56: $de $fd
	sbc d                                            ; $4c58: $9a
	cp l                                             ; $4c59: $bd
	sbc l                                            ; $4c5a: $9d
	add hl, sp                                       ; $4c5b: $39
	ld e, e                                          ; $4c5c: $5b
	sbc e                                            ; $4c5d: $9b
	sbc $02                                          ; $4c5e: $de $02
	sbc d                                            ; $4c60: $9a
	ld b, d                                          ; $4c61: $42
	ld h, d                                          ; $4c62: $62
	add $a4                                          ; $4c63: $c6 $a4
	ld h, h                                          ; $4c65: $64
	sbc $ff                                          ; $4c66: $de $ff
	call c, Call_057_7bfd                            ; $4c68: $dc $fd $7b
	and l                                            ; $4c6b: $a5
	call c, $df03                                    ; $4c6c: $dc $03 $df
	add h                                            ; $4c6f: $84
	sbc h                                            ; $4c70: $9c
	adc b                                            ; $4c71: $88
	ld [$de08], sp                                   ; $4c72: $08 $08 $de
	jr jr_057_4c50                                   ; $4c75: $18 $d9

	rst $38                                          ; $4c77: $ff
	sub d                                            ; $4c78: $92
	ld a, l                                          ; $4c79: $7d
	ld sp, hl                                        ; $4c7a: $f9
	reti                                             ; $4c7b: $d9


	cp a                                             ; $4c7c: $bf
	ld c, a                                          ; $4c7d: $4f
	ld [hl], $1f                                     ; $4c7e: $36 $1f
	rst $38                                          ; $4c80: $ff
	db $d3                                           ; $4c81: $d3
	rst SubAFromHL                                          ; $4c82: $d7
	rst FarCall                                          ; $4c83: $f7
	rst $38                                          ; $4c84: $ff
	ldh a, [$78]                                     ; $4c85: $f0 $78
	add hl, sp                                       ; $4c87: $39
	sbc c                                            ; $4c88: $99
	ld d, h                                          ; $4c89: $54
	and h                                            ; $4c8a: $a4
	call z, $261e                                    ; $4c8b: $cc $1e $26
	jp nz, $197a                                     ; $4c8e: $c2 $7a $19

	jp c, $97ff                                      ; $4c91: $da $ff $97

	ldh [rSVBK], a                                   ; $4c94: $e0 $70
	ld e, b                                          ; $4c96: $58
	ld e, h                                          ; $4c97: $5c
	rla                                              ; $4c98: $17
	dec bc                                           ; $4c99: $0b
	dec bc                                           ; $4c9a: $0b
	dec b                                            ; $4c9b: $05
	ld a, e                                          ; $4c9c: $7b
	add b                                            ; $4c9d: $80
	ld [hl], b                                       ; $4c9e: $70
	add $9d                                          ; $4c9f: $c6 $9d
	nop                                              ; $4ca1: $00

jr_057_4ca2:
	jr nc, jr_057_4ca2                               ; $4ca2: $30 $fe

	sbc h                                            ; $4ca4: $9c
	ld b, b                                          ; $4ca5: $40
	jp nc, Jump_057_6ef3                             ; $4ca6: $d2 $f3 $6e

	ld sp, $1b7f                                     ; $4ca9: $31 $7f $1b
	ld a, d                                          ; $4cac: $7a
	dec a                                            ; $4cad: $3d
	sbc e                                            ; $4cae: $9b
	dec sp                                           ; $4caf: $3b
	ld l, a                                          ; $4cb0: $6f
	cp a                                             ; $4cb1: $bf
	cp $7a                                           ; $4cb2: $fe $7a
	jr nz, jr_057_4c53                               ; $4cb4: $20 $9d

	ld bc, $7b07                                     ; $4cb6: $01 $07 $7b
	ld d, b                                          ; $4cb9: $50
	sbc e                                            ; $4cba: $9b
	add c                                            ; $4cbb: $81
	rst $38                                          ; $4cbc: $ff
	rst FarCall                                          ; $4cbd: $f7
	rst $38                                          ; $4cbe: $ff
	ld a, e                                          ; $4cbf: $7b
	dec e                                            ; $4cc0: $1d
	ld a, d                                          ; $4cc1: $7a
	nop                                              ; $4cc2: $00
	ld a, d                                          ; $4cc3: $7a
	ld a, [de]                                       ; $4cc4: $1a
	sbc b                                            ; $4cc5: $98
	pop hl                                           ; $4cc6: $e1
	pop bc                                           ; $4cc7: $c1
	ld bc, $ffc3                                     ; $4cc8: $01 $c3 $ff
	ldh [$c0], a                                     ; $4ccb: $e0 $c0
	ld a, d                                          ; $4ccd: $7a
	ld c, d                                          ; $4cce: $4a
	rst SubAFromDE                                          ; $4ccf: $df
	ld [bc], a                                       ; $4cd0: $02
	ld h, a                                          ; $4cd1: $67
	dec [hl]                                         ; $4cd2: $35
	sbc [hl]                                         ; $4cd3: $9e
	ldh a, [rOBP0]                                   ; $4cd4: $f0 $48
	ld l, b                                          ; $4cd6: $68
	ld a, l                                          ; $4cd7: $7d
	call $cc7d                                       ; $4cd8: $cd $7d $cc
	sbc [hl]                                         ; $4cdb: $9e
	jr nz, @+$7c                                     ; $4cdc: $20 $7a

	daa                                              ; $4cde: $27
	ld h, d                                          ; $4cdf: $62
	or b                                             ; $4ce0: $b0
	sbc e                                            ; $4ce1: $9b
	rra                                              ; $4ce2: $1f
	inc e                                            ; $4ce3: $1c
	inc a                                            ; $4ce4: $3c
	ld a, l                                          ; $4ce5: $7d
	ld a, e                                          ; $4ce6: $7b
	daa                                              ; $4ce7: $27
	ld a, [hl]                                       ; $4ce8: $7e
	inc sp                                           ; $4ce9: $33
	sbc c                                            ; $4cea: $99
	rst FarCall                                          ; $4ceb: $f7
	rst SubAFromBC                                          ; $4cec: $e7
	rst SubAFromBC                                          ; $4ced: $e7
	rst GetHLinHL                                          ; $4cee: $cf
	rst SubAFromHL                                          ; $4cef: $d7
	and a                                            ; $4cf0: $a7
	ld a, b                                          ; $4cf1: $78
	cp c                                             ; $4cf2: $b9
	sbc e                                            ; $4cf3: $9b
	ldh [hDisp1_SCY], a                                     ; $4cf4: $e0 $90
	db $10                                           ; $4cf6: $10
	ld [hl], b                                       ; $4cf7: $70
	ld a, b                                          ; $4cf8: $78
	or c                                             ; $4cf9: $b1
	ld a, a                                          ; $4cfa: $7f
	rst FarCall                                          ; $4cfb: $f7
	db $dd                                           ; $4cfc: $dd
	ldh a, [$67]                                     ; $4cfd: $f0 $67
	inc c                                            ; $4cff: $0c
	ld sp, hl                                        ; $4d00: $f9
	ld a, l                                          ; $4d01: $7d
	ld [hl], d                                       ; $4d02: $72
	sbc c                                            ; $4d03: $99
	db $f4                                           ; $4d04: $f4
	add sp, -$30                                     ; $4d05: $e8 $d0
	and b                                            ; $4d07: $a0
	ret nz                                           ; $4d08: $c0

	add b                                            ; $4d09: $80
	halt                                             ; $4d0a: $76
	pop de                                           ; $4d0b: $d1
	ld a, d                                          ; $4d0c: $7a
	xor $77                                          ; $4d0d: $ee $77
	add sp, $7a                                      ; $4d0f: $e8 $7a
	ld b, l                                          ; $4d11: $45
	ld a, [hl]                                       ; $4d12: $7e
	ld b, h                                          ; $4d13: $44
	ld h, d                                          ; $4d14: $62
	rst JumpTable                                          ; $4d15: $c7
	sbc [hl]                                         ; $4d16: $9e
	ld a, [hl]                                       ; $4d17: $7e
	ld a, d                                          ; $4d18: $7a
	ld a, d                                          ; $4d19: $7a
	sbc h                                            ; $4d1a: $9c
	cp b                                             ; $4d1b: $b8
	jr c, jr_057_4d4e                                ; $4d1c: $38 $30

	ld c, l                                          ; $4d1e: $4d
	ld a, b                                          ; $4d1f: $78
	ld a, a                                          ; $4d20: $7f
	sbc $d9                                          ; $4d21: $de $d9
	rst $38                                          ; $4d23: $ff
	sbc e                                            ; $4d24: $9b
	dec d                                            ; $4d25: $15
	ld c, d                                          ; $4d26: $4a
	dec d                                            ; $4d27: $15
	ld [bc], a                                       ; $4d28: $02
	ld [hl], a                                       ; $4d29: $77
	ld b, h                                          ; $4d2a: $44
	sbc h                                            ; $4d2b: $9c
	ld [$eab5], a                                    ; $4d2c: $ea $b5 $ea
	ld a, d                                          ; $4d2f: $7a
	add [hl]                                         ; $4d30: $86
	adc l                                            ; $4d31: $8d
	cp $f8                                           ; $4d32: $fe $f8
	ld e, e                                          ; $4d34: $5b
	sbc e                                            ; $4d35: $9b
	dec de                                           ; $4d36: $1b
	dec bc                                           ; $4d37: $0b
	ld bc, $fe78                                     ; $4d38: $01 $78 $fe
	rst $38                                          ; $4d3b: $ff

jr_057_4d3c:
	and h                                            ; $4d3c: $a4
	ld h, h                                          ; $4d3d: $64
	db $e4                                           ; $4d3e: $e4
	db $f4                                           ; $4d3f: $f4
	cp $87                                           ; $4d40: $fe $87
	ld bc, $de00                                     ; $4d42: $01 $00 $de
	db $fd                                           ; $4d45: $fd
	sbc d                                            ; $4d46: $9a
	sub c                                            ; $4d47: $91
	ld bc, $1f0f                                     ; $4d48: $01 $0f $1f
	ld a, $de                                        ; $4d4b: $3e $de
	inc bc                                           ; $4d4d: $03

jr_057_4d4e:
	add b                                            ; $4d4e: $80
	ld l, a                                          ; $4d4f: $6f
	rst $38                                          ; $4d50: $ff
	di                                               ; $4d51: $f3
	rst AddAOntoHL                                          ; $4d52: $ef
	rst $38                                          ; $4d53: $ff
	dec bc                                           ; $4d54: $0b
	ld c, $1e                                        ; $4d55: $0e $1e
	jr c, jr_057_4d3c                                ; $4d57: $38 $e3

	call $2092                                       ; $4d59: $cd $92 $20
	rst $38                                          ; $4d5c: $ff
	rst $38                                          ; $4d5d: $ff
	db $fc                                           ; $4d5e: $fc
	ldh a, [$c0]                                     ; $4d5f: $f0 $c0
	add e                                            ; $4d61: $83
	inc c                                            ; $4d62: $0c
	nop                                              ; $4d63: $00

jr_057_4d64:
	ret nc                                           ; $4d64: $d0

	add b                                            ; $4d65: $80
	rra                                              ; $4d66: $1f
	db $ec                                           ; $4d67: $ec
	ldh a, [rIE]                                     ; $4d68: $f0 $ff
	nop                                              ; $4d6a: $00
	ld bc, $00e0                                     ; $4d6b: $01 $e0 $00
	ld [hl], a                                       ; $4d6e: $77
	ld bc, $9dff                                     ; $4d6f: $01 $ff $9d
	add hl, bc                                       ; $4d72: $09
	ld hl, sp+$7b                                    ; $4d73: $f8 $7b
	ld e, $9a                                        ; $4d75: $1e $9a
	rst $38                                          ; $4d77: $ff
	ld bc, $0fff                                     ; $4d78: $01 $ff $0f
	rrca                                             ; $4d7b: $0f
	ld [hl], e                                       ; $4d7c: $73
	sub d                                            ; $4d7d: $92
	sub a                                            ; $4d7e: $97
	ld bc, $c786                                     ; $4d7f: $01 $86 $c7
	jp $f1e3                                         ; $4d82: $c3 $e3 $f1


	ld sp, hl                                        ; $4d85: $f9
	db $fd                                           ; $4d86: $fd
	ld a, e                                          ; $4d87: $7b
	and h                                            ; $4d88: $a4
	ld h, [hl]                                       ; $4d89: $66
	ld d, $75                                        ; $4d8a: $16 $75
	and b                                            ; $4d8c: $a0
	sbc [hl]                                         ; $4d8d: $9e
	ld a, [$b576]                                    ; $4d8e: $fa $76 $b5
	add a                                            ; $4d91: $87
	cp $f5                                           ; $4d92: $fe $f5
	rst FarCall                                          ; $4d94: $f7
	xor $ea                                          ; $4d95: $ee $ea
	cp $fd                                           ; $4d97: $fe $fd
	ld sp, hl                                        ; $4d99: $f9
	ld sp, hl                                        ; $4d9a: $f9
	ld a, h                                          ; $4d9b: $7c
	db $fc                                           ; $4d9c: $fc
	cp $f3                                           ; $4d9d: $fe $f3
	add e                                            ; $4d9f: $83
	add a                                            ; $4da0: $87
	adc a                                            ; $4da1: $8f
	adc a                                            ; $4da2: $8f
	add a                                            ; $4da3: $87
	rlca                                             ; $4da4: $07
	inc bc                                           ; $4da5: $03
	inc bc                                           ; $4da6: $03
	cp $fc                                           ; $4da7: $fe $fc
	ld hl, sp+$7a                                    ; $4da9: $f8 $7a
	ret z                                            ; $4dab: $c8

	sbc d                                            ; $4dac: $9a
	add c                                            ; $4dad: $81
	add e                                            ; $4dae: $83
	add a                                            ; $4daf: $87
	rrca                                             ; $4db0: $0f
	rra                                              ; $4db1: $1f
	ld a, d                                          ; $4db2: $7a
	cp d                                             ; $4db3: $ba
	rst SubAFromDE                                          ; $4db4: $df
	rst $38                                          ; $4db5: $ff
	sbc [hl]                                         ; $4db6: $9e
	inc b                                            ; $4db7: $04
	ld a, d                                          ; $4db8: $7a
	ld c, a                                          ; $4db9: $4f
	sbc h                                            ; $4dba: $9c
	adc b                                            ; $4dbb: $88
	sbc b                                            ; $4dbc: $98
	db $10                                           ; $4dbd: $10
	ld h, e                                          ; $4dbe: $63
	ld b, b                                          ; $4dbf: $40
	rst SubAFromDE                                          ; $4dc0: $df
	ld bc, $0299                                     ; $4dc1: $01 $99 $02
	inc b                                            ; $4dc4: $04
	inc b                                            ; $4dc5: $04
	ld [$1008], sp                                   ; $4dc6: $08 $08 $10
	ld h, e                                          ; $4dc9: $63
	jr nc, jr_057_4d64                               ; $4dca: $30 $98

	inc b                                            ; $4dcc: $04
	add hl, bc                                       ; $4dcd: $09
	dec d                                            ; $4dce: $15
	dec bc                                           ; $4dcf: $0b
	ld [de], a                                       ; $4dd0: $12
	dec hl                                           ; $4dd1: $2b
	ld d, a                                          ; $4dd2: $57
	ld a, b                                          ; $4dd3: $78
	ld l, l                                          ; $4dd4: $6d
	adc a                                            ; $4dd5: $8f
	db $eb                                           ; $4dd6: $eb
	rst FarCall                                          ; $4dd7: $f7
	rst AddAOntoHL                                          ; $4dd8: $ef
	sub $ae                                          ; $4dd9: $d6 $ae
	rst $38                                          ; $4ddb: $ff
	rst $38                                          ; $4ddc: $ff
	ld a, a                                          ; $4ddd: $7f
	rst $38                                          ; $4dde: $ff
	rst FarCall                                          ; $4ddf: $f7
	rst SubAFromBC                                          ; $4de0: $e7
	and $ce                                          ; $4de1: $e6 $ce
	rst JumpTable                                          ; $4de3: $c7
	adc a                                            ; $4de4: $8f
	adc a                                            ; $4de5: $8f
	ld a, d                                          ; $4de6: $7a
	ld h, l                                          ; $4de7: $65
	ld a, [hl]                                       ; $4de8: $7e
	xor $79                                          ; $4de9: $ee $79
	jp z, $d89d                                      ; $4deb: $ca $9d $d8

	db $fc                                           ; $4dee: $fc
	ld a, e                                          ; $4def: $7b
	sbc a                                            ; $4df0: $9f
	ld a, h                                          ; $4df1: $7c
	adc b                                            ; $4df2: $88
	sbc c                                            ; $4df3: $99
	add sp, -$14                                     ; $4df4: $e8 $ec
	call nz, $c6c4                                   ; $4df6: $c4 $c4 $c6
	jp nz, $6b79                                     ; $4df9: $c2 $79 $6b

	ld a, b                                          ; $4dfc: $78
	ld a, a                                          ; $4dfd: $7f
	sbc l                                            ; $4dfe: $9d

Jump_057_4dff:
	pop hl                                           ; $4dff: $e1
	ret nz                                           ; $4e00: $c0

	ld [hl], c                                       ; $4e01: $71
	and b                                            ; $4e02: $a0
	ld a, a                                          ; $4e03: $7f
	add hl, hl                                       ; $4e04: $29
	sbc [hl]                                         ; $4e05: $9e
	ld a, a                                          ; $4e06: $7f
	ld e, l                                          ; $4e07: $5d
	ld [$ffdb], sp                                   ; $4e08: $08 $db $ff
	sub a                                            ; $4e0b: $97
	ld b, $0c                                        ; $4e0c: $06 $0c
	inc c                                            ; $4e0e: $0c
	jr jr_057_4e29                                   ; $4e0f: $18 $18

	jr nc, jr_057_4e33                               ; $4e11: $30 $20

	ld h, b                                          ; $4e13: $60
	reti                                             ; $4e14: $d9


	rst $38                                          ; $4e15: $ff
	rst SubAFromDE                                          ; $4e16: $df
	ld [hl], b                                       ; $4e17: $70
	rst SubAFromDE                                          ; $4e18: $df
	ld h, b                                          ; $4e19: $60
	sbc e                                            ; $4e1a: $9b
	ld h, c                                          ; $4e1b: $61
	jp nz, $c9c4                                     ; $4e1c: $c2 $c4 $c9

	ld h, e                                          ; $4e1f: $63
	ldh [$9c], a                                     ; $4e20: $e0 $9c
	add hl, de                                       ; $4e22: $19
	ld [hl], e                                       ; $4e23: $73
	rst GetHLinHL                                          ; $4e24: $cf
	ld e, c                                          ; $4e25: $59
	ld l, b                                          ; $4e26: $68
	ld a, d                                          ; $4e27: $7a
	ld d, b                                          ; $4e28: $50

jr_057_4e29:
	add b                                            ; $4e29: $80
	ccf                                              ; $4e2a: $3f
	ld e, a                                          ; $4e2b: $5f
	cp a                                             ; $4e2c: $bf
	ld d, [hl]                                       ; $4e2d: $56
	xor h                                            ; $4e2e: $ac
	xor c                                            ; $4e2f: $a9
	ldh a, [$e0]                                     ; $4e30: $f0 $e0
	ret nz                                           ; $4e32: $c0

jr_057_4e33:
	and b                                            ; $4e33: $a0
	ld b, b                                          ; $4e34: $40
	xor c                                            ; $4e35: $a9
	ld d, e                                          ; $4e36: $53
	ld d, [hl]                                       ; $4e37: $56
	rst SubAFromBC                                          ; $4e38: $e7
	pop bc                                           ; $4e39: $c1
	pop bc                                           ; $4e3a: $c1
	sub l                                            ; $4e3b: $95
	dec hl                                           ; $4e3c: $2b
	ld d, a                                          ; $4e3d: $57
	xor e                                            ; $4e3e: $ab
	ld d, a                                          ; $4e3f: $57
	jr jr_057_4e80                                   ; $4e40: $18 $3e

	ccf                                              ; $4e42: $3f
	ld l, e                                          ; $4e43: $6b
	push de                                          ; $4e44: $d5
	xor e                                            ; $4e45: $ab
	ld d, a                                          ; $4e46: $57
	xor e                                            ; $4e47: $ab
	add $98                                          ; $4e48: $c6 $98
	add h                                            ; $4e4a: $84
	inc c                                            ; $4e4b: $0c
	jr jr_057_4e5e                                   ; $4e4c: $18 $10

	ld [hl], b                                       ; $4e4e: $70
	ldh [$e0], a                                     ; $4e4f: $e0 $e0
	ld a, b                                          ; $4e51: $78
	push af                                          ; $4e52: $f5
	ld a, b                                          ; $4e53: $78
	add l                                            ; $4e54: $85
	ld a, a                                          ; $4e55: $7f
	db $db                                           ; $4e56: $db
	ld a, l                                          ; $4e57: $7d
	push af                                          ; $4e58: $f5
	sbc [hl]                                         ; $4e59: $9e
	dec c                                            ; $4e5a: $0d
	ld l, d                                          ; $4e5b: $6a
	ld a, l                                          ; $4e5c: $7d
	ld a, d                                          ; $4e5d: $7a

jr_057_4e5e:
	adc c                                            ; $4e5e: $89
	halt                                             ; $4e5f: $76
	ld b, b                                          ; $4e60: $40
	sub l                                            ; $4e61: $95
	ei                                               ; $4e62: $fb
	nop                                              ; $4e63: $00
	rrca                                             ; $4e64: $0f
	ld a, e                                          ; $4e65: $7b
	rst $38                                          ; $4e66: $ff
	ld a, l                                          ; $4e67: $7d
	nop                                              ; $4e68: $00
	inc bc                                           ; $4e69: $03
	db $fc                                           ; $4e6a: $fc
	nop                                              ; $4e6b: $00
	ld a, d                                          ; $4e6c: $7a
	cp [hl]                                          ; $4e6d: $be
	sub d                                            ; $4e6e: $92
	ld a, $00                                        ; $4e6f: $3e $00
	rst $38                                          ; $4e71: $ff
	inc bc                                           ; $4e72: $03
	ld a, [hl]                                       ; $4e73: $7e
	cp h                                             ; $4e74: $bc
	ldh [$fc], a                                     ; $4e75: $e0 $fc
	ld b, $3c                                        ; $4e77: $06 $3c
	rst $38                                          ; $4e79: $ff
	ld bc, $7b03                                     ; $4e7a: $01 $03 $7b
	sbc d                                            ; $4e7d: $9a
	ld a, a                                          ; $4e7e: $7f
	ld e, e                                          ; $4e7f: $5b

jr_057_4e80:
	sbc l                                            ; $4e80: $9d
	rst GetHLinHL                                          ; $4e81: $cf
	adc a                                            ; $4e82: $8f
	ld a, e                                          ; $4e83: $7b
	sbc [hl]                                         ; $4e84: $9e
	halt                                             ; $4e85: $76
	daa                                              ; $4e86: $27
	ld l, d                                          ; $4e87: $6a
	jp $fa81                                         ; $4e88: $c3 $81 $fa


	db $fc                                           ; $4e8b: $fc
	db $f4                                           ; $4e8c: $f4
	db $fc                                           ; $4e8d: $fc
	ldh a, [$f9]                                     ; $4e8e: $f0 $f9
	ld sp, hl                                        ; $4e90: $f9
	rst FarCall                                          ; $4e91: $f7
	adc $d4                                          ; $4e92: $ce $d4
	sbc h                                            ; $4e94: $9c
	sub h                                            ; $4e95: $94
	inc e                                            ; $4e96: $1c
	ld c, $0b                                        ; $4e97: $0e $0b
	rra                                              ; $4e99: $1f
	ld c, c                                          ; $4e9a: $49
	inc bc                                           ; $4e9b: $03
	ld l, c                                          ; $4e9c: $69
	ld sp, $c321                                     ; $4e9d: $31 $21 $c3
	rrca                                             ; $4ea0: $0f
	ccf                                              ; $4ea1: $3f
	rlca                                             ; $4ea2: $07
	rra                                              ; $4ea3: $1f
	dec e                                            ; $4ea4: $1d
	ld h, c                                          ; $4ea5: $61
	pop bc                                           ; $4ea6: $c1
	add c                                            ; $4ea7: $81
	halt                                             ; $4ea8: $76
	dec b                                            ; $4ea9: $05
	sbc [hl]                                         ; $4eaa: $9e
	inc bc                                           ; $4eab: $03
	sbc $83                                          ; $4eac: $de $83
	ld a, [hl]                                       ; $4eae: $7e
	adc h                                            ; $4eaf: $8c
	reti                                             ; $4eb0: $d9


	rst $38                                          ; $4eb1: $ff
	ld a, a                                          ; $4eb2: $7f
	dec [hl]                                         ; $4eb3: $35
	ld a, a                                          ; $4eb4: $7f
	inc [hl]                                         ; $4eb5: $34
	sbc [hl]                                         ; $4eb6: $9e
	ld b, b                                          ; $4eb7: $40
	sbc $c0                                          ; $4eb8: $de $c0
	reti                                             ; $4eba: $d9


	rst $38                                          ; $4ebb: $ff
	ld a, l                                          ; $4ebc: $7d
	sub h                                            ; $4ebd: $94
	sbc c                                            ; $4ebe: $99
	ld h, b                                          ; $4ebf: $60
	jr nc, jr_057_4eda                               ; $4ec0: $30 $18

	dec c                                            ; $4ec2: $0d
	rrca                                             ; $4ec3: $0f
	jr c, jr_057_4f35                                ; $4ec4: $38 $6f

	or c                                             ; $4ec6: $b1
	rst SubAFromDE                                          ; $4ec7: $df
	rst $38                                          ; $4ec8: $ff
	adc [hl]                                         ; $4ec9: $8e
	dec h                                            ; $4eca: $25
	ld d, a                                          ; $4ecb: $57
	xor a                                            ; $4ecc: $af
	ld c, e                                          ; $4ecd: $4b
	xor a                                            ; $4ece: $af
	rla                                              ; $4ecf: $17
	rst $38                                          ; $4ed0: $ff
	dec a                                            ; $4ed1: $3d
	sbc $ac                                          ; $4ed2: $de $ac
	ld e, h                                          ; $4ed4: $5c
	cp l                                             ; $4ed5: $bd
	ld e, c                                          ; $4ed6: $59
	ei                                               ; $4ed7: $fb
	di                                               ; $4ed8: $f3
	di                                               ; $4ed9: $f3

jr_057_4eda:
	sbc $7a                                          ; $4eda: $de $7a
	adc d                                            ; $4edc: $8a
	sbc e                                            ; $4edd: $9b
	rst AddAOntoHL                                          ; $4ede: $ef
	rst JumpTable                                          ; $4edf: $c7
	jp Jump_057_6799                                 ; $4ee0: $c3 $99 $67


	dec e                                            ; $4ee3: $1d
	ld a, c                                          ; $4ee4: $79
	dec h                                            ; $4ee5: $25
	add d                                            ; $4ee6: $82
	db $fd                                           ; $4ee7: $fd
	cp $fa                                           ; $4ee8: $fe $fa
	push af                                          ; $4eea: $f5
	ld hl, sp-$3d                                    ; $4eeb: $f8 $c3
	add c                                            ; $4eed: $81
	add c                                            ; $4eee: $81
	add e                                            ; $4eef: $83
	add e                                            ; $4ef0: $83
	add a                                            ; $4ef1: $87
	adc [hl]                                         ; $4ef2: $8e
	adc a                                            ; $4ef3: $8f
	add h                                            ; $4ef4: $84
	adc b                                            ; $4ef5: $88
	jr nz, jr_057_4f50                               ; $4ef6: $20 $58

	ld [hl+], a                                      ; $4ef8: $22
	ld d, b                                          ; $4ef9: $50
	ld b, b                                          ; $4efa: $40
	sub b                                            ; $4efb: $90
	ei                                               ; $4efc: $fb
	rst FarCall                                          ; $4efd: $f7
	rst SubAFromDE                                          ; $4efe: $df
	and a                                            ; $4eff: $a7
	db $dd                                           ; $4f00: $dd
	xor a                                            ; $4f01: $af
	cp a                                             ; $4f02: $bf
	ld l, a                                          ; $4f03: $6f
	ld l, a                                          ; $4f04: $6f
	inc [hl]                                         ; $4f05: $34
	ld e, l                                          ; $4f06: $5d
	or b                                             ; $4f07: $b0
	rst SubAFromDE                                          ; $4f08: $df
	ld b, b                                          ; $4f09: $40
	ld a, c                                          ; $4f0a: $79
	db $10                                           ; $4f0b: $10
	ld a, l                                          ; $4f0c: $7d
	rrca                                             ; $4f0d: $0f
	sbc [hl]                                         ; $4f0e: $9e
	inc b                                            ; $4f0f: $04
	reti                                             ; $4f10: $d9


	rst $38                                          ; $4f11: $ff
	sbc b                                            ; $4f12: $98
	db $d3                                           ; $4f13: $d3
	rst SubAFromBC                                          ; $4f14: $e7
	rst AddAOntoHL                                          ; $4f15: $ef
	rst GetHLinHL                                          ; $4f16: $cf
	rst SubAFromDE                                          ; $4f17: $df
	sbc a                                            ; $4f18: $9f
	cp a                                             ; $4f19: $bf
	ld [hl], d                                       ; $4f1a: $72
	inc [hl]                                         ; $4f1b: $34
	jp c, Jump_057_76ff                              ; $4f1c: $da $ff $76

	ld a, a                                          ; $4f1f: $7f
	ld h, d                                          ; $4f20: $62
	and b                                            ; $4f21: $a0
	add b                                            ; $4f22: $80
	jr z, jr_057_4f2e                                ; $4f23: $28 $09

	add d                                            ; $4f25: $82
	ld d, l                                          ; $4f26: $55
	xor d                                            ; $4f27: $aa
	ld d, b                                          ; $4f28: $50
	and d                                            ; $4f29: $a2
	rlca                                             ; $4f2a: $07
	rst SubAFromHL                                          ; $4f2b: $d7
	or $7d                                           ; $4f2c: $f6 $7d

jr_057_4f2e:
	xor d                                            ; $4f2e: $aa
	ld d, l                                          ; $4f2f: $55
	xor a                                            ; $4f30: $af
	ld e, l                                          ; $4f31: $5d
	ei                                               ; $4f32: $fb
	xor [hl]                                         ; $4f33: $ae
	ld d, [hl]                                       ; $4f34: $56

jr_057_4f35:
	xor l                                            ; $4f35: $ad
	ld d, l                                          ; $4f36: $55
	xor l                                            ; $4f37: $ad
	ld e, c                                          ; $4f38: $59
	or e                                             ; $4f39: $b3
	db $e3                                           ; $4f3a: $e3
	ld d, a                                          ; $4f3b: $57
	xor a                                            ; $4f3c: $af
	ld d, a                                          ; $4f3d: $57
	xor a                                            ; $4f3e: $af
	ld e, a                                          ; $4f3f: $5f
	cp a                                             ; $4f40: $bf
	ld a, a                                          ; $4f41: $7f
	ld a, b                                          ; $4f42: $78
	pop bc                                           ; $4f43: $c1
	rst SubAFromDE                                          ; $4f44: $df
	ret nz                                           ; $4f45: $c0

	db $dd                                           ; $4f46: $dd
	add b                                            ; $4f47: $80
	ld l, a                                          ; $4f48: $6f
	ld a, [$7bfa]                                    ; $4f49: $fa $fa $7b
	ld a, [de]                                       ; $4f4c: $1a
	ld sp, hl                                        ; $4f4d: $f9
	sbc d                                            ; $4f4e: $9a
	inc bc                                           ; $4f4f: $03

jr_057_4f50:
	rra                                              ; $4f50: $1f
	ccf                                              ; $4f51: $3f
	ld a, h                                          ; $4f52: $7c
	ld hl, sp+$7a                                    ; $4f53: $f8 $7a
	add e                                            ; $4f55: $83
	ld a, a                                          ; $4f56: $7f
	rst FarCall                                          ; $4f57: $f7
	ld [hl], l                                       ; $4f58: $75
	nop                                              ; $4f59: $00
	rst SubAFromDE                                          ; $4f5a: $df
	rst $38                                          ; $4f5b: $ff
	ld a, h                                          ; $4f5c: $7c
	rst SubAFromHL                                          ; $4f5d: $d7
	ld [hl], a                                       ; $4f5e: $77
	ld [hl], d                                       ; $4f5f: $72
	ld a, e                                          ; $4f60: $7b
	db $f4                                           ; $4f61: $f4
	ld h, l                                          ; $4f62: $65
	sub c                                            ; $4f63: $91
	ld [hl], a                                       ; $4f64: $77
	sub d                                            ; $4f65: $92
	sbc h                                            ; $4f66: $9c
	ret nc                                           ; $4f67: $d0

	sbc b                                            ; $4f68: $98
	ld l, b                                          ; $4f69: $68
	ld [hl], a                                       ; $4f6a: $77
	ld sp, hl                                        ; $4f6b: $f9
	sbc $f0                                          ; $4f6c: $de $f0
	sub c                                            ; $4f6e: $91
	sbc b                                            ; $4f6f: $98
	ld [hl], d                                       ; $4f70: $72
	ld l, $0d                                        ; $4f71: $2e $0d
	dec bc                                           ; $4f73: $0b
	rlca                                             ; $4f74: $07
	ld bc, $0000                                     ; $4f75: $01 $00 $00
	dec h                                            ; $4f78: $25
	ld hl, $1623                                     ; $4f79: $21 $23 $16
	inc c                                            ; $4f7c: $0c
	halt                                             ; $4f7d: $76
	ld [$fedf], sp                                   ; $4f7e: $08 $df $fe
	ld [hl], e                                       ; $4f81: $73
	push hl                                          ; $4f82: $e5
	rst SubAFromDE                                          ; $4f83: $df
	add e                                            ; $4f84: $83
	ld a, l                                          ; $4f85: $7d
	ldh a, [$79]                                     ; $4f86: $f0 $79
	rst AddAOntoHL                                          ; $4f88: $ef
	sub a                                            ; $4f89: $97
	rra                                              ; $4f8a: $1f
	inc hl                                           ; $4f8b: $23
	ld sp, $1931                                     ; $4f8c: $31 $31 $19
	add hl, de                                       ; $4f8f: $19
	dec c                                            ; $4f90: $0d
	inc c                                            ; $4f91: $0c
	ld h, e                                          ; $4f92: $63
	ld b, b                                          ; $4f93: $40
	sbc [hl]                                         ; $4f94: $9e
	add c                                            ; $4f95: $81
	jp c, $d982                                      ; $4f96: $da $82 $d9

	rst $38                                          ; $4f99: $ff
	add e                                            ; $4f9a: $83
	jp nz, $0a05                                     ; $4f9b: $c2 $05 $0a

	dec d                                            ; $4f9e: $15
	ld a, [bc]                                       ; $4f9f: $0a
	inc b                                            ; $4fa0: $04
	ld a, [bc]                                       ; $4fa1: $0a
	inc b                                            ; $4fa2: $04
	db $fd                                           ; $4fa3: $fd
	ld a, [$eaf5]                                    ; $4fa4: $fa $f5 $ea
	push af                                          ; $4fa7: $f5
	ei                                               ; $4fa8: $fb
	push af                                          ; $4fa9: $f5
	ei                                               ; $4faa: $fb
	xor h                                            ; $4fab: $ac
	ld a, $3f                                        ; $4fac: $3e $3f
	ld e, a                                          ; $4fae: $5f
	ld l, [hl]                                       ; $4faf: $6e
	ld a, [hl]                                       ; $4fb0: $7e
	ld a, h                                          ; $4fb1: $7c
	sbc h                                            ; $4fb2: $9c
	ld [hl], a                                       ; $4fb3: $77
	rst SubAFromBC                                          ; $4fb4: $e7
	rst AddAOntoHL                                          ; $4fb5: $ef
	rst AddAOntoHL                                          ; $4fb6: $ef
	sbc $df                                          ; $4fb7: $de $df
	sub [hl]                                         ; $4fb9: $96
	rst $38                                          ; $4fba: $ff
	sbc l                                            ; $4fbb: $9d
	ccf                                              ; $4fbc: $3f
	rra                                              ; $4fbd: $1f
	ld b, a                                          ; $4fbe: $47
	ld h, c                                          ; $4fbf: $61
	ld sp, hl                                        ; $4fc0: $f9
	rst $38                                          ; $4fc1: $ff
	rra                                              ; $4fc2: $1f
	reti                                             ; $4fc3: $d9


	rst $38                                          ; $4fc4: $ff
	adc h                                            ; $4fc5: $8c
	ld [$d4f1], a                                    ; $4fc6: $ea $f1 $d4
	ld [$d2a5], a                                    ; $4fc9: $ea $a5 $d2
	ret                                              ; $4fcc: $c9


	add h                                            ; $4fcd: $84
	sbc l                                            ; $4fce: $9d
	sbc [hl]                                         ; $4fcf: $9e
	cp e                                             ; $4fd0: $bb
	or l                                             ; $4fd1: $b5
	ld a, [$fefd]                                    ; $4fd2: $fa $fd $fe
	rst $38                                          ; $4fd5: $ff
	ld b, b                                          ; $4fd6: $40
	add b                                            ; $4fd7: $80
	ld b, b                                          ; $4fd8: $40
	ld [hl], e                                       ; $4fd9: $73
	ld a, [hl-]                                      ; $4fda: $3a
	ld a, a                                          ; $4fdb: $7f
	dec h                                            ; $4fdc: $25
	ld a, e                                          ; $4fdd: $7b
	inc hl                                           ; $4fde: $23
	sbc $ff                                          ; $4fdf: $de $ff
	rst SubAFromDE                                          ; $4fe1: $df
	ld [bc], a                                       ; $4fe2: $02
	sbc c                                            ; $4fe3: $99
	ld b, $04                                        ; $4fe4: $06 $04
	inc b                                            ; $4fe6: $04
	inc c                                            ; $4fe7: $0c
	inc c                                            ; $4fe8: $0c
	ld [$3061], sp                                   ; $4fe9: $08 $61 $30
	sbc $09                                          ; $4fec: $de $09
	rst SubAFromDE                                          ; $4fee: $df
	ld de, $32df                                     ; $4fef: $11 $df $32
	reti                                             ; $4ff2: $d9


	rst $38                                          ; $4ff3: $ff
	sbc l                                            ; $4ff4: $9d
	cp h                                             ; $4ff5: $bc
	cp b                                             ; $4ff6: $b8
	ld a, c                                          ; $4ff7: $79
	ld a, a                                          ; $4ff8: $7f
	sbc [hl]                                         ; $4ff9: $9e
	ld h, b                                          ; $4ffa: $60
	ld e, [hl]                                       ; $4ffb: $5e
	ld b, b                                          ; $4ffc: $40
	call c, $de40                                    ; $4ffd: $dc $40 $de
	ld h, b                                          ; $5000: $60
	reti                                             ; $5001: $d9


	rst $38                                          ; $5002: $ff
	sbc l                                            ; $5003: $9d
	cp a                                             ; $5004: $bf
	ldh [rPCM34], a                                  ; $5005: $e0 $77
	or c                                             ; $5007: $b1
	ld a, [hl]                                       ; $5008: $7e
	ld a, [$5066]                                    ; $5009: $fa $66 $50
	sbc $07                                          ; $500c: $de $07
	sbc d                                            ; $500e: $9a
	dec c                                            ; $500f: $0d
	dec e                                            ; $5010: $1d
	ld a, c                                          ; $5011: $79
	pop af                                           ; $5012: $f1
	pop hl                                           ; $5013: $e1
	ld h, e                                          ; $5014: $63
	or b                                             ; $5015: $b0
	halt                                             ; $5016: $76
	pop de                                           ; $5017: $d1
	ld a, a                                          ; $5018: $7f
	dec h                                            ; $5019: $25
	sbc [hl]                                         ; $501a: $9e
	rlca                                             ; $501b: $07
	ld sp, hl                                        ; $501c: $f9
	ld a, a                                          ; $501d: $7f
	push af                                          ; $501e: $f5
	ld l, [hl]                                       ; $501f: $6e
	and $6d                                          ; $5020: $e6 $6d
	nop                                              ; $5022: $00
	rst SubAFromDE                                          ; $5023: $df
	rra                                              ; $5024: $1f
	sbc d                                            ; $5025: $9a
	add b                                            ; $5026: $80
	add c                                            ; $5027: $81
	add e                                            ; $5028: $83
	jp $d6e7                                         ; $5029: $c3 $e7 $d6


	rst $38                                          ; $502c: $ff
	ld a, d                                          ; $502d: $7a
	ldh a, [c]                                       ; $502e: $f2
	ld a, a                                          ; $502f: $7f
	cp $9b                                           ; $5030: $fe $9b
	db $f4                                           ; $5032: $f4
	ld hl, sp-$14                                    ; $5033: $f8 $ec
	cp $76                                           ; $5035: $fe $76
	xor e                                            ; $5037: $ab
	ld a, e                                          ; $5038: $7b
	and l                                            ; $5039: $a5
	sub h                                            ; $503a: $94
	ld e, h                                          ; $503b: $5c
	halt                                             ; $503c: $76
	db $eb                                           ; $503d: $eb
	ld e, d                                          ; $503e: $5a
	and l                                            ; $503f: $a5
	ld d, c                                          ; $5040: $51
	ld [bc], a                                       ; $5041: $02
	nop                                              ; $5042: $00
	jr z, @+$0e                                      ; $5043: $28 $0c

	ld d, $7a                                        ; $5045: $16 $7a
	jp z, $97ff                                      ; $5047: $ca $ff $97

	jr c, jr_057_50bc                                ; $504a: $38 $70

	pop af                                           ; $504c: $f1
	pop hl                                           ; $504d: $e1
	ld [hl], e                                       ; $504e: $73
	ld c, a                                          ; $504f: $4f
	or $6b                                           ; $5050: $f6 $6b
	cp $9a                                           ; $5052: $fe $9a
	add b                                            ; $5054: $80
	add sp, $2e                                      ; $5055: $e8 $2e
	ld [$de00], sp                                   ; $5057: $08 $00 $de
	ldh a, [$9a]                                     ; $505a: $f0 $9a
	db $fc                                           ; $505c: $fc
	db $ec                                           ; $505d: $ec
	cp $df                                           ; $505e: $fe $df
	rst AddAOntoHL                                          ; $5060: $ef
	db $dd                                           ; $5061: $dd
	rra                                              ; $5062: $1f
	ld a, h                                          ; $5063: $7c
	di                                               ; $5064: $f3
	sub l                                            ; $5065: $95
	cpl                                              ; $5066: $2f
	rra                                              ; $5067: $1f
	inc d                                            ; $5068: $14
	ld [de], a                                       ; $5069: $12
	ld [de], a                                       ; $506a: $12
	db $10                                           ; $506b: $10
	db $10                                           ; $506c: $10
	jr jr_057_5087                                   ; $506d: $18 $18

	adc h                                            ; $506f: $8c
	reti                                             ; $5070: $d9


	rst $38                                          ; $5071: $ff
	db $dd                                           ; $5072: $dd
	add [hl]                                         ; $5073: $86
	ld a, b                                          ; $5074: $78
	dec h                                            ; $5075: $25
	sbc [hl]                                         ; $5076: $9e
	adc a                                            ; $5077: $8f
	reti                                             ; $5078: $d9


	rst $38                                          ; $5079: $ff
	halt                                             ; $507a: $76

Jump_057_507b:
	call nz, $0a9b                                   ; $507b: $c4 $9b $0a
	ld b, $04                                        ; $507e: $06 $04
	ld [$c476], sp                                   ; $5080: $08 $76 $c4
	sub e                                            ; $5083: $93
	push af                                          ; $5084: $f5
	ld sp, hl                                        ; $5085: $f9
	ei                                               ; $5086: $fb

jr_057_5087:
	rst FarCall                                          ; $5087: $f7
	cp a                                             ; $5088: $bf
	rst $38                                          ; $5089: $ff
	sbc $cc                                          ; $508a: $de $cc
	db $dd                                           ; $508c: $dd
	ld a, h                                          ; $508d: $7c
	ld a, a                                          ; $508e: $7f
	ld [hl], a                                       ; $508f: $77
	ld h, b                                          ; $5090: $60
	or b                                             ; $5091: $b0
	sbc b                                            ; $5092: $98
	di                                               ; $5093: $f3
	pop hl                                           ; $5094: $e1
	ld [hl], d                                       ; $5095: $72
	cp $ce                                           ; $5096: $fe $ce
	call Call_057_6b9c                               ; $5098: $cd $9c $6b
	ld [hl], d                                       ; $509b: $72
	adc [hl]                                         ; $509c: $8e
	rst $38                                          ; $509d: $ff
	sub d                                            ; $509e: $92
	ld hl, $5028                                     ; $509f: $21 $28 $50
	jr nz, jr_057_50f4                               ; $50a2: $20 $50

	jr nz, jr_057_50e6                               ; $50a4: $20 $40

	rst AddAOntoHL                                          ; $50a6: $ef
	rst SubAFromDE                                          ; $50a7: $df
	rst SubAFromHL                                          ; $50a8: $d7
	xor a                                            ; $50a9: $af

jr_057_50aa:
	rst SubAFromDE                                          ; $50aa: $df
	xor a                                            ; $50ab: $af
	rst SubAFromDE                                          ; $50ac: $df
	cp a                                             ; $50ad: $bf
	ld a, e                                          ; $50ae: $7b
	adc c                                            ; $50af: $89
	sbc d                                            ; $50b0: $9a
	ldh [$7f], a                                     ; $50b1: $e0 $7f
	ccf                                              ; $50b3: $3f
	jr c, jr_057_50c6                                ; $50b4: $38 $10

	reti                                             ; $50b6: $d9


	rst $38                                          ; $50b7: $ff
	sbc [hl]                                         ; $50b8: $9e
	ld [$18de], sp                                   ; $50b9: $08 $de $18

jr_057_50bc:
	sbc l                                            ; $50bc: $9d
	sub b                                            ; $50bd: $90
	ldh a, [$5c]                                     ; $50be: $f0 $5c
	ld b, b                                          ; $50c0: $40
	rst SubAFromDE                                          ; $50c1: $df
	ld [hl+], a                                      ; $50c2: $22
	sbc h                                            ; $50c3: $9c
	ld h, d                                          ; $50c4: $62
	ld h, l                                          ; $50c5: $65

jr_057_50c6:
	ld h, l                                          ; $50c6: $65
	sbc $c5                                          ; $50c7: $de $c5
	reti                                             ; $50c9: $d9


	rst $38                                          ; $50ca: $ff
	ld [hl], c                                       ; $50cb: $71
	ld [hl], d                                       ; $50cc: $72
	halt                                             ; $50cd: $76
	jr jr_057_50aa                                   ; $50ce: $18 $da

	rst $38                                          ; $50d0: $ff
	sbc e                                            ; $50d1: $9b
	db $e3                                           ; $50d2: $e3
	rst SubAFromBC                                          ; $50d3: $e7
	rst AddAOntoHL                                          ; $50d4: $ef
	ei                                               ; $50d5: $fb
	ld a, d                                          ; $50d6: $7a
	ld a, b                                          ; $50d7: $78
	sbc [hl]                                         ; $50d8: $9e
	db $fc                                           ; $50d9: $fc
	db $dd                                           ; $50da: $dd
	rst $38                                          ; $50db: $ff
	sbc l                                            ; $50dc: $9d
	db $fd                                           ; $50dd: $fd
	ld hl, sp+$73                                    ; $50de: $f8 $73
	ld sp, hl                                        ; $50e0: $f9
	ld [hl], c                                       ; $50e1: $71
	call c, $ffd9                                    ; $50e2: $dc $d9 $ff
	sbc h                                            ; $50e5: $9c

jr_057_50e6:
	pop hl                                           ; $50e6: $e1
	pop bc                                           ; $50e7: $c1
	add c                                            ; $50e8: $81
	db $dd                                           ; $50e9: $dd
	inc bc                                           ; $50ea: $03
	sbc [hl]                                         ; $50eb: $9e
	ld bc, $ffd9                                     ; $50ec: $01 $d9 $ff
	ld a, h                                          ; $50ef: $7c
	or d                                             ; $50f0: $b2
	ld a, [hl]                                       ; $50f1: $7e
	rst SubAFromDE                                          ; $50f2: $df
	sbc e                                            ; $50f3: $9b

jr_057_50f4:
	rst $38                                          ; $50f4: $ff
	ld a, b                                          ; $50f5: $78
	nop                                              ; $50f6: $00
	add e                                            ; $50f7: $83
	ld [hl], e                                       ; $50f8: $73
	cp h                                             ; $50f9: $bc
	sbc [hl]                                         ; $50fa: $9e
	add a                                            ; $50fb: $87
	sbc $ff                                          ; $50fc: $de $ff
	ld a, h                                          ; $50fe: $7c
	call c, $e79a                                    ; $50ff: $dc $9a $e7
	add hl, bc                                       ; $5102: $09
	ld de, $f060                                     ; $5103: $11 $60 $f0
	ld a, c                                          ; $5106: $79
	db $d3                                           ; $5107: $d3
	ld l, c                                          ; $5108: $69
	inc sp                                           ; $5109: $33
	sbc c                                            ; $510a: $99
	pop af                                           ; $510b: $f1
	ldh a, [$f2]                                     ; $510c: $f0 $f2
	sbc l                                            ; $510e: $9d
	add $c3                                          ; $510f: $c6 $c3
	ld [hl], a                                       ; $5111: $77
	ld d, h                                          ; $5112: $54
	ld a, d                                          ; $5113: $7a
	ld hl, $ff88                                     ; $5114: $21 $88 $ff
	reti                                             ; $5117: $d9


	ld a, [hl]                                       ; $5118: $7e
	cp a                                             ; $5119: $bf
	ld e, a                                          ; $511a: $5f
	or [hl]                                          ; $511b: $b6
	ld e, a                                          ; $511c: $5f
	dec hl                                           ; $511d: $2b
	ld d, [hl]                                       ; $511e: $56
	jr nz, @-$7e                                     ; $511f: $20 $80

	ld b, b                                          ; $5121: $40
	and b                                            ; $5122: $a0
	ld c, b                                          ; $5123: $48
	and b                                            ; $5124: $a0
	call nc, $40e9                                   ; $5125: $d4 $e9 $40
	add b                                            ; $5128: $80
	jp nc, $fb2c                                     ; $5129: $d2 $2c $fb

	xor $6e                                          ; $512c: $ee $6e
	ld a, b                                          ; $512e: $78
	db $fd                                           ; $512f: $fd
	sub a                                            ; $5130: $97
	ld b, $03                                        ; $5131: $06 $03
	ld de, $0143                             ; $5133: $11 $43 $01
	or e                                             ; $5136: $b3
	xor $fe                                          ; $5137: $ee $fe
	ld h, l                                          ; $5139: $65
	ld [hl], $92                                     ; $513a: $36 $92
	rst AddAOntoHL                                          ; $513c: $ef
	cp l                                             ; $513d: $bd
	call c, $d8b8                                    ; $513e: $dc $b8 $d8
	ld [hl], b                                       ; $5141: $70
	or b                                             ; $5142: $b0
	ld h, b                                          ; $5143: $60
	rra                                              ; $5144: $1f
	ld c, a                                          ; $5145: $4f
	cpl                                              ; $5146: $2f
	ld e, a                                          ; $5147: $5f
	ccf                                              ; $5148: $3f
	ld a, c                                          ; $5149: $79
	db $ed                                           ; $514a: $ed
	sbc b                                            ; $514b: $98
	adc h                                            ; $514c: $8c
	adc [hl]                                         ; $514d: $8e
	adc $c7                                          ; $514e: $ce $c7
	ld b, a                                          ; $5150: $47
	ld b, e                                          ; $5151: $43
	ld b, e                                          ; $5152: $43
	ld a, e                                          ; $5153: $7b
	or b                                             ; $5154: $b0
	db $db                                           ; $5155: $db
	rst $38                                          ; $5156: $ff
	reti                                             ; $5157: $d9


	rst GetHLinHL                                          ; $5158: $cf
	reti                                             ; $5159: $d9


	rst $38                                          ; $515a: $ff
	sbc e                                            ; $515b: $9b
	ld [bc], a                                       ; $515c: $02
	inc b                                            ; $515d: $04
	nop                                              ; $515e: $00
	ld [bc], a                                       ; $515f: $02
	db $fd                                           ; $5160: $fd
	sbc e                                            ; $5161: $9b
	db $fd                                           ; $5162: $fd
	ei                                               ; $5163: $fb
	rst $38                                          ; $5164: $ff
	db $fd                                           ; $5165: $fd
	db $dd                                           ; $5166: $dd
	rst $38                                          ; $5167: $ff
	sbc b                                            ; $5168: $98
	ld h, a                                          ; $5169: $67
	ld h, e                                          ; $516a: $63
	ld [hl], b                                       ; $516b: $70
	ld a, h                                          ; $516c: $7c
	ld a, h                                          ; $516d: $7c
	ld a, c                                          ; $516e: $79
	ld a, a                                          ; $516f: $7f
	ld h, [hl]                                       ; $5170: $66
	ld bc, $ff96                                     ; $5171: $01 $96 $ff
	inc a                                            ; $5174: $3c
	add hl, sp                                       ; $5175: $39
	ld a, b                                          ; $5176: $78
	ldh a, [c]                                       ; $5177: $f2
	pop af                                           ; $5178: $f1
	ldh a, [$e6]                                     ; $5179: $f0 $e6
	db $e4                                           ; $517b: $e4
	ld l, a                                          ; $517c: $6f
	ld [hl], c                                       ; $517d: $71
	ld a, [hl]                                       ; $517e: $7e
	sbc a                                            ; $517f: $9f
	sbc l                                            ; $5180: $9d
	and b                                            ; $5181: $a0
	nop                                              ; $5182: $00
	ld l, h                                          ; $5183: $6c
	res 3, l                                         ; $5184: $cb $9d
	ld e, a                                          ; $5186: $5f
	rst $38                                          ; $5187: $ff
	ld l, a                                          ; $5188: $6f
	db $dd                                           ; $5189: $dd
	sbc d                                            ; $518a: $9a
	jr jr_057_5195                                   ; $518b: $18 $08

	inc b                                            ; $518d: $04
	ld [bc], a                                       ; $518e: $02
	inc bc                                           ; $518f: $03
	ld e, b                                          ; $5190: $58
	ld d, b                                          ; $5191: $50
	rst $38                                          ; $5192: $ff
	sbc c                                            ; $5193: $99
	add c                                            ; $5194: $81

jr_057_5195:
	ld h, c                                          ; $5195: $61
	dec e                                            ; $5196: $1d
	jp $0738                                         ; $5197: $c3 $38 $07


Call_057_519a:
	reti                                             ; $519a: $d9


	rst $38                                          ; $519b: $ff
	sub a                                            ; $519c: $97
	push bc                                          ; $519d: $c5
	call $cbcb                                       ; $519e: $cd $cb $cb
	db $eb                                           ; $51a1: $eb
	ei                                               ; $51a2: $fb
	ei                                               ; $51a3: $fb
	dec bc                                           ; $51a4: $0b

jr_057_51a5:
	ld d, l                                          ; $51a5: $55
	ret nz                                           ; $51a6: $c0

	ld d, [hl]                                       ; $51a7: $56
	ret nz                                           ; $51a8: $c0

	pop de                                           ; $51a9: $d1
	rst $38                                          ; $51aa: $ff
	ld e, b                                          ; $51ab: $58
	nop                                              ; $51ac: $00
	rst SubAFromDE                                          ; $51ad: $df
	ld h, [hl]                                       ; $51ae: $66
	sbc $22                                          ; $51af: $de $22
	sbc [hl]                                         ; $51b1: $9e
	ld h, $de                                        ; $51b2: $26 $de
	ld h, [hl]                                       ; $51b4: $66
	sbc [hl]                                         ; $51b5: $9e
	ld h, h                                          ; $51b6: $64
	ld a, e                                          ; $51b7: $7b
	or $9c                                           ; $51b8: $f6 $9c
	inc sp                                           ; $51ba: $33
	ld [hl+], a                                      ; $51bb: $22
	inc hl                                           ; $51bc: $23
	sbc $66                                          ; $51bd: $de $66
	sbc h                                            ; $51bf: $9c
	ld b, h                                          ; $51c0: $44
	ld h, [hl]                                       ; $51c1: $66
	ld h, [hl]                                       ; $51c2: $66
	sbc $33                                          ; $51c3: $de $33
	sbc l                                            ; $51c5: $9d
	inc hl                                           ; $51c6: $23
	ld b, [hl]                                       ; $51c7: $46
	ld h, a                                          ; $51c8: $67
	or $9d                                           ; $51c9: $f6 $9d
	inc sp                                           ; $51cb: $33
	ld [hl], $77                                     ; $51cc: $36 $77
	or $9a                                           ; $51ce: $f6 $9a
	ld h, e                                          ; $51d0: $63
	inc hl                                           ; $51d1: $23
	inc sp                                           ; $51d2: $33
	inc sp                                           ; $51d3: $33
	ld [hl-], a                                      ; $51d4: $32
	ld a, e                                          ; $51d5: $7b
	db $ec                                           ; $51d6: $ec
	ld a, a                                          ; $51d7: $7f
	ret c                                            ; $51d8: $d8

	sbc [hl]                                         ; $51d9: $9e
	ld h, d                                          ; $51da: $62
	ld a, e                                          ; $51db: $7b
	or $dd                                           ; $51dc: $f6 $dd
	ld h, [hl]                                       ; $51de: $66
	ld a, e                                          ; $51df: $7b
	db $ec                                           ; $51e0: $ec
	sbc l                                            ; $51e1: $9d
	ld b, h                                          ; $51e2: $44
	dec h                                            ; $51e3: $25
	ld a, e                                          ; $51e4: $7b
	db $e4                                           ; $51e5: $e4
	ld [hl], a                                       ; $51e6: $77
	or $9b                                           ; $51e7: $f6 $9b
	ld b, l                                          ; $51e9: $45
	ld d, h                                          ; $51ea: $54
	ld b, l                                          ; $51eb: $45
	ld d, [hl]                                       ; $51ec: $56
	ld [hl], e                                       ; $51ed: $73
	or $9b                                           ; $51ee: $f6 $9b
	ld h, h                                          ; $51f0: $64
	ld h, l                                          ; $51f1: $65
	ld b, h                                          ; $51f2: $44
	ld d, l                                          ; $51f3: $55
	call c, $df66                                    ; $51f4: $dc $66 $df
	ld b, h                                          ; $51f7: $44
	sbc l                                            ; $51f8: $9d
	ld d, l                                          ; $51f9: $55
	ld b, l                                          ; $51fa: $45
	ld h, e                                          ; $51fb: $63
	or $9e                                           ; $51fc: $f6 $9e
	inc sp                                           ; $51fe: $33
	ld l, a                                          ; $51ff: $6f
	or $9e                                           ; $5200: $f6 $9e
	ld b, [hl]                                       ; $5202: $46
	jp z, $978a                                      ; $5203: $ca $8a $97

	rst SubAFromHL                                          ; $5206: $d7
	xor d                                            ; $5207: $aa
	db $dd                                           ; $5208: $dd
	xor d                                            ; $5209: $aa
	ld [hl], a                                       ; $520a: $77
	xor d                                            ; $520b: $aa
	ld d, l                                          ; $520c: $55
	xor d                                            ; $520d: $aa
	reti                                             ; $520e: $d9


	rst $38                                          ; $520f: $ff
	add [hl]                                         ; $5210: $86
	ld [hl], a                                       ; $5211: $77
	xor l                                            ; $5212: $ad
	sbc $ad                                          ; $5213: $de $ad
	ld a, d                                          ; $5215: $7a
	xor h                                            ; $5216: $ac
	ld e, b                                          ; $5217: $58
	ldh a, [rIE]                                     ; $5218: $f0 $ff
	cp $f8                                           ; $521a: $fe $f8
	ld hl, sp-$10                                    ; $521c: $f8 $f0
	ldh a, [$e0]                                     ; $521e: $f0 $e0
	jr nz, jr_057_51a5                               ; $5220: $20 $83

	nop                                              ; $5222: $00
	ret nz                                           ; $5223: $c0

	nop                                              ; $5224: $00
	nop                                              ; $5225: $00
	ld [$1a18], sp                                   ; $5226: $08 $18 $1a
	add e                                            ; $5229: $83
	ld a, [$ee87]                                    ; $522a: $fa $87 $ee
	push de                                          ; $522d: $d5
	ld a, e                                          ; $522e: $7b
	dec [hl]                                         ; $522f: $35
	ld e, $1f                                        ; $5230: $1e $1f
	ld a, [bc]                                       ; $5232: $0a
	ld c, l                                          ; $5233: $4d
	rst $38                                          ; $5234: $ff
	ld a, a                                          ; $5235: $7f
	rra                                              ; $5236: $1f
	rra                                              ; $5237: $1f
	rrca                                             ; $5238: $0f
	nop                                              ; $5239: $00
	rrca                                             ; $523a: $0f
	rlca                                             ; $523b: $07
	xor $55                                          ; $523c: $ee $55
	cp e                                             ; $523e: $bb
	ld d, l                                          ; $523f: $55
	xor $55                                          ; $5240: $ee $55
	xor d                                            ; $5242: $aa
	ld d, l                                          ; $5243: $55
	reti                                             ; $5244: $d9


	rst $38                                          ; $5245: $ff
	ld a, a                                          ; $5246: $7f
	db $f4                                           ; $5247: $f4
	sub c                                            ; $5248: $91
	cp a                                             ; $5249: $bf
	ld d, e                                          ; $524a: $53
	pop af                                           ; $524b: $f1
	ld d, c                                          ; $524c: $51
	cp b                                             ; $524d: $b8
	ld e, h                                          ; $524e: $5c
	rst $38                                          ; $524f: $ff
	rst $38                                          ; $5250: $ff
	di                                               ; $5251: $f3
	pop hl                                           ; $5252: $e1
	ldh [$f1], a                                     ; $5253: $e0 $f1
	ldh a, [$98]                                     ; $5255: $f0 $98
	ld [hl], e                                       ; $5257: $73
	ldh [$9c], a                                     ; $5258: $e0 $9c
	push de                                          ; $525a: $d5
	xor d                                            ; $525b: $aa
	rst SubAFromDE                                          ; $525c: $df
	jp c, $9eff                                      ; $525d: $da $ff $9e

	pop hl                                           ; $5260: $e1
	ccf                                              ; $5261: $3f
	ret nc                                           ; $5262: $d0

	ld c, a                                          ; $5263: $4f
	ldh a, [hDisp1_WY]                                     ; $5264: $f0 $95
	add b                                            ; $5266: $80
	sbc h                                            ; $5267: $9c
	pop hl                                           ; $5268: $e1
	add c                                            ; $5269: $81
	nop                                              ; $526a: $00
	ld a, $7f                                        ; $526b: $3e $7f
	rst $38                                          ; $526d: $ff
	nop                                              ; $526e: $00
	db $10                                           ; $526f: $10
	ld a, e                                          ; $5270: $7b
	adc b                                            ; $5271: $88
	adc h                                            ; $5272: $8c
	inc e                                            ; $5273: $1c
	ld a, a                                          ; $5274: $7f
	di                                               ; $5275: $f3
	xor $f5                                          ; $5276: $ee $f5
	ei                                               ; $5278: $fb
	push af                                          ; $5279: $f5
	xor $75                                          ; $527a: $ee $75
	jp z, $7fd5                                      ; $527c: $ca $d5 $7f

	ld a, a                                          ; $527f: $7f
	ccf                                              ; $5280: $3f
	ccf                                              ; $5281: $3f
	ld a, a                                          ; $5282: $7f
	ld e, a                                          ; $5283: $5f
	rst SubAFromDE                                          ; $5284: $df
	ld e, a                                          ; $5285: $5f
	ld l, e                                          ; $5286: $6b
	ret nc                                           ; $5287: $d0

	sbc [hl]                                         ; $5288: $9e
	push de                                          ; $5289: $d5
	ld h, e                                          ; $528a: $63
	ret nz                                           ; $528b: $c0

	sbc b                                            ; $528c: $98
	ld [hl], l                                       ; $528d: $75
	cp e                                             ; $528e: $bb
	ld [hl], l                                       ; $528f: $75
	cp $75                                           ; $5290: $fe $75
	ld [$d975], a                                    ; $5292: $ea $75 $d9
	rst $38                                          ; $5295: $ff
	sub a                                            ; $5296: $97
	cp $fd                                           ; $5297: $fe $fd
	rst $38                                          ; $5299: $ff
	ld a, a                                          ; $529a: $7f
	cp $7f                                           ; $529b: $fe $7f
	cp a                                             ; $529d: $bf
	ld a, a                                          ; $529e: $7f
	ld c, a                                          ; $529f: $4f
	and b                                            ; $52a0: $a0
	sbc l                                            ; $52a1: $9d
	ld a, [hl]                                       ; $52a2: $7e
	sub c                                            ; $52a3: $91
	jp c, $9eff                                      ; $52a4: $da $ff $9e

	db $e3                                           ; $52a7: $e3
	ld l, a                                          ; $52a8: $6f
	ldh a, [$9e]                                     ; $52a9: $f0 $9e
	xor e                                            ; $52ab: $ab
	ld h, a                                          ; $52ac: $67
	ret nz                                           ; $52ad: $c0

	sub [hl]                                         ; $52ae: $96
	cp $ee                                           ; $52af: $fe $ee
	ld d, h                                          ; $52b1: $54
	cp e                                             ; $52b2: $bb
	ld d, l                                          ; $52b3: $55
	rst AddAOntoHL                                          ; $52b4: $ef
	ld d, a                                          ; $52b5: $57
	db $eb                                           ; $52b6: $eb
	or a                                             ; $52b7: $b7
	jp c, Jump_057_63ff                              ; $52b8: $da $ff $63

	ret z                                            ; $52bb: $c8

	reti                                             ; $52bc: $d9


	rst $38                                          ; $52bd: $ff
	sbc h                                            ; $52be: $9c
	ei                                               ; $52bf: $fb
	db $fd                                           ; $52c0: $fd
	cp $7b                                           ; $52c1: $fe $7b
	ld a, [hl]                                       ; $52c3: $7e
	sbc [hl]                                         ; $52c4: $9e
	ld [$9063], a                                    ; $52c5: $ea $63 $90
	sbc c                                            ; $52c8: $99
	cp a                                             ; $52c9: $bf
	ld c, a                                          ; $52ca: $4f
	rst $38                                          ; $52cb: $ff
	ld e, a                                          ; $52cc: $5f
	cp a                                             ; $52cd: $bf
	ld a, a                                          ; $52ce: $7f
	ld a, e                                          ; $52cf: $7b
	sbc d                                            ; $52d0: $9a
	jp c, Jump_057_7fff                              ; $52d1: $da $ff $7f

	ld [hl], l                                       ; $52d4: $75
	sbc c                                            ; $52d5: $99
	nop                                              ; $52d6: $00
	ld d, l                                          ; $52d7: $55
	ld bc, $00aa                                     ; $52d8: $01 $aa $00
	nop                                              ; $52db: $00
	ld [hl], e                                       ; $52dc: $73
	or e                                             ; $52dd: $b3
	sbc $ff                                          ; $52de: $de $ff
	sub e                                            ; $52e0: $93
	halt                                             ; $52e1: $76
	and [hl]                                         ; $52e2: $a6
	ld sp, $29ec                                     ; $52e3: $31 $ec $29
	and d                                            ; $52e6: $a2
	ld [hl+], a                                      ; $52e7: $22
	ld h, e                                          ; $52e8: $63
	ret nz                                           ; $52e9: $c0

	ldh [$c0], a                                     ; $52ea: $e0 $c0
	nop                                              ; $52ec: $00
	sbc $c0                                          ; $52ed: $de $c0
	sub [hl]                                         ; $52ef: $96
	pop bc                                           ; $52f0: $c1
	ld [hl], c                                       ; $52f1: $71
	ld h, c                                          ; $52f2: $61
	call c, $2cb4                                    ; $52f3: $dc $b4 $2c
	dec h                                            ; $52f6: $25
	add hl, sp                                       ; $52f7: $39
	inc bc                                           ; $52f8: $03
	cp $87                                           ; $52f9: $fe $87
	inc b                                            ; $52fb: $04
	inc c                                            ; $52fc: $0c
	inc h                                            ; $52fd: $24
	jr @+$04                                         ; $52fe: $18 $02

	ld c, a                                          ; $5300: $4f
	call $3a50                                       ; $5301: $cd $50 $3a
	db $e4                                           ; $5304: $e4
	push af                                          ; $5305: $f5
	ret nz                                           ; $5306: $c0

	add b                                            ; $5307: $80
	nop                                              ; $5308: $00
	ld b, $0f                                        ; $5309: $06 $0f
	rlca                                             ; $530b: $07
	dec de                                           ; $530c: $1b
	db $db                                           ; $530d: $db
	rst $38                                          ; $530e: $ff
	rst $38                                          ; $530f: $ff
	xor d                                            ; $5310: $aa
	ld d, l                                          ; $5311: $55
	nop                                              ; $5312: $00
	ld [hl], a                                       ; $5313: $77
	cp [hl]                                          ; $5314: $be
	ld l, e                                          ; $5315: $6b
	ret nz                                           ; $5316: $c0

	adc e                                            ; $5317: $8b
	db $fd                                           ; $5318: $fd
	ld hl, sp-$74                                    ; $5319: $f8 $8c
	rst JumpTable                                          ; $531b: $c7
	jp $3f67                                         ; $531c: $c3 $67 $3f


	rra                                              ; $531f: $1f
	sbc a                                            ; $5320: $9f
	rst SubAFromDE                                          ; $5321: $df
	inc b                                            ; $5322: $04
	add d                                            ; $5323: $82
	jp nz, $1723                                     ; $5324: $c2 $23 $17

	rra                                              ; $5327: $1f
	rrca                                             ; $5328: $0f
	adc a                                            ; $5329: $8f
	pop bc                                           ; $532a: $c1
	jp $e86a                                         ; $532b: $c3 $6a $e8


	sbc b                                            ; $532e: $98
	add c                                            ; $532f: $81
	jp $faff                                         ; $5330: $c3 $ff $fa


	ld hl, sp-$38                                    ; $5333: $f8 $c8
	ret                                              ; $5335: $c9


	ld a, e                                          ; $5336: $7b
	ret nc                                           ; $5337: $d0

	ld h, e                                          ; $5338: $63
	ld [hl], h                                       ; $5339: $74
	sbc e                                            ; $533a: $9b
	rst $38                                          ; $533b: $ff
	inc a                                            ; $533c: $3c
	nop                                              ; $533d: $00
	jr nz, jr_057_53bb                               ; $533e: $20 $7b

	ldh a, [$63]                                     ; $5340: $f0 $63
	ld c, h                                          ; $5342: $4c
	add a                                            ; $5343: $87
	jp $0603                                         ; $5344: $c3 $03 $06


	ld b, $f7                                        ; $5347: $06 $f7
	inc [hl]                                         ; $5349: $34
	ld c, $d1                                        ; $534a: $0e $d1
	rst $38                                          ; $534c: $ff
	rst SubAFromDE                                          ; $534d: $df
	pop af                                           ; $534e: $f1
	rst $38                                          ; $534f: $ff
	or b                                             ; $5350: $b0
	sub b                                            ; $5351: $90
	adc h                                            ; $5352: $8c
	ret nz                                           ; $5353: $c0

	ldh [$de], a                                     ; $5354: $e0 $de
	ld [hl], c                                       ; $5356: $71
	ld e, a                                          ; $5357: $5f
	ld l, d                                          ; $5358: $6a
	ld [hl], l                                       ; $5359: $75
	ld [hl], b                                       ; $535a: $70
	ld a, l                                          ; $535b: $7d
	sbc $ff                                          ; $535c: $de $ff
	ld a, [hl]                                       ; $535e: $7e
	rst JumpTable                                          ; $535f: $c7

Jump_057_5360:
	sbc $3f                                          ; $5360: $de $3f
	sub a                                            ; $5362: $97
	ld a, a                                          ; $5363: $7f
	db $d3                                           ; $5364: $d3
	pop de                                           ; $5365: $d1
	pop de                                           ; $5366: $d1
	xor d                                            ; $5367: $aa
	push de                                          ; $5368: $d5
	ret z                                            ; $5369: $c8

	db $dd                                           ; $536a: $dd
	ld a, e                                          ; $536b: $7b
	adc c                                            ; $536c: $89
	jp c, $99ff                                      ; $536d: $da $ff $99

	ld b, $04                                        ; $5370: $06 $04
	ld [$4055], a                                    ; $5372: $ea $55 $40
	rst SubAFromHL                                          ; $5375: $d7
	ld a, e                                          ; $5376: $7b
	add [hl]                                         ; $5377: $86
	sbc [hl]                                         ; $5378: $9e
	db $fc                                           ; $5379: $fc
	db $dd                                           ; $537a: $dd
	rst $38                                          ; $537b: $ff
	sub e                                            ; $537c: $93
	db $fc                                           ; $537d: $fc
	ld hl, $2723                                     ; $537e: $21 $23 $27
	cp [hl]                                          ; $5381: $be
	ld e, a                                          ; $5382: $5f
	ld e, $f9                                        ; $5383: $1e $f9
	ldh [c], a                                       ; $5385: $e2
	sub h                                            ; $5386: $94
	add hl, hl                                       ; $5387: $29
	ld a, [hl+]                                      ; $5388: $2a
	ld [hl], a                                       ; $5389: $77
	ld [hl], c                                       ; $538a: $71
	add b                                            ; $538b: $80
	db $fc                                           ; $538c: $fc
	add sp, -$30                                     ; $538d: $e8 $d0
	sub c                                            ; $538f: $91
	ld [hl], h                                       ; $5390: $74
	db $fc                                           ; $5391: $fc
	di                                               ; $5392: $f3
	add hl, de                                       ; $5393: $19
	ld b, h                                          ; $5394: $44
	sub b                                            ; $5395: $90
	dec sp                                           ; $5396: $3b
	db $ec                                           ; $5397: $ec
	ld hl, sp-$01                                    ; $5398: $f8 $ff
	rrca                                             ; $539a: $0f
	rlca                                             ; $539b: $07
	jr c, jr_057_53fe                                ; $539c: $38 $60

	rst JumpTable                                          ; $539e: $c7
	sbc a                                            ; $539f: $9f
	ld l, d                                          ; $53a0: $6a
	xor h                                            ; $53a1: $ac
	sub l                                            ; $53a2: $95
	jp nc, $28bc                                     ; $53a3: $d2 $bc $28

	db $fd                                           ; $53a6: $fd
	add a                                            ; $53a7: $87
	db $fc                                           ; $53a8: $fc
	ld a, b                                          ; $53a9: $78
	ld hl, sp-$74                                    ; $53aa: $f8 $8c
	ld sp, hl                                        ; $53ac: $f9
	ld a, e                                          ; $53ad: $7b
	rra                                              ; $53ae: $1f
	rst $38                                          ; $53af: $ff
	rst $38                                          ; $53b0: $ff
	ld l, e                                          ; $53b1: $6b
	sbc a                                            ; $53b2: $9f
	ld hl, $e152                                     ; $53b3: $21 $52 $e1
	xor b                                            ; $53b6: $a8
	and e                                            ; $53b7: $a3
	adc a                                            ; $53b8: $8f
	rra                                              ; $53b9: $1f
	ld a, a                                          ; $53ba: $7f

jr_057_53bb:
	rst $38                                          ; $53bb: $ff
	pop hl                                           ; $53bc: $e1
	ret nz                                           ; $53bd: $c0

	rst JumpTable                                          ; $53be: $c7
	ld l, [hl]                                       ; $53bf: $6e
	add hl, de                                       ; $53c0: $19
	rst SubAFromDE                                          ; $53c1: $df
	ld a, a                                          ; $53c2: $7f
	sbc l                                            ; $53c3: $9d
	rst $38                                          ; $53c4: $ff
	ld l, a                                          ; $53c5: $6f
	jp c, $98ff                                      ; $53c6: $da $ff $98

	sbc a                                            ; $53c9: $9f
	db $eb                                           ; $53ca: $eb
	rst SubAFromHL                                          ; $53cb: $d7
	rst JumpTable                                          ; $53cc: $c7
	adc a                                            ; $53cd: $8f
	sbc a                                            ; $53ce: $9f
	cp a                                             ; $53cf: $bf
	ld [hl], d                                       ; $53d0: $72
	push hl                                          ; $53d1: $e5
	call c, $99ff                                    ; $53d2: $dc $ff $99
	ld a, [$f0f5]                                    ; $53d5: $fa $f5 $f0
	push hl                                          ; $53d8: $e5
	ret nc                                           ; $53d9: $d0

	add b                                            ; $53da: $80
	ld l, [hl]                                       ; $53db: $6e
	ret nc                                           ; $53dc: $d0

	db $dd                                           ; $53dd: $dd
	rst $38                                          ; $53de: $ff
	cp $9c                                           ; $53df: $fe $9c
	ld bc, $3f07                                     ; $53e1: $01 $07 $3f
	ld l, e                                          ; $53e4: $6b
	dec a                                            ; $53e5: $3d

Jump_057_53e6:
	sub d                                            ; $53e6: $92
	ld hl, sp-$40                                    ; $53e7: $f8 $c0
	add a                                            ; $53e9: $87
	ld h, e                                          ; $53ea: $63
	ld b, c                                          ; $53eb: $41
	push de                                          ; $53ec: $d5
	or h                                             ; $53ed: $b4

jr_057_53ee:
	and $8f                                          ; $53ee: $e6 $8f
	rst GetHLinHL                                          ; $53f0: $cf
	rst AddAOntoHL                                          ; $53f1: $ef
	pop bc                                           ; $53f2: $c1
	pop bc                                           ; $53f3: $c1
	db $dd                                           ; $53f4: $dd
	add b                                            ; $53f5: $80
	adc b                                            ; $53f6: $88
	pop bc                                           ; $53f7: $c1
	ld h, e                                          ; $53f8: $63
	ld b, $82                                        ; $53f9: $06 $82
	db $ed                                           ; $53fb: $ed
	rst $38                                          ; $53fc: $ff
	ld a, a                                          ; $53fd: $7f

jr_057_53fe:
	sbc l                                            ; $53fe: $9d
	rst AddAOntoHL                                          ; $53ff: $ef
	adc a                                            ; $5400: $8f
	ld b, $82                                        ; $5401: $06 $82
	pop bc                                           ; $5403: $c1
	ld h, e                                          ; $5404: $63
	ccf                                              ; $5405: $3f
	rlca                                             ; $5406: $07
	sbc a                                            ; $5407: $9f
	rst $38                                          ; $5408: $ff
	inc bc                                           ; $5409: $03
	ld b, a                                          ; $540a: $47
	rst SubAFromBC                                          ; $540b: $e7
	cp $f7                                           ; $540c: $fe $f7
	ld [hl], a                                       ; $540e: $77
	ld d, h                                          ; $540f: $54
	adc b                                            ; $5410: $88
	cp b                                             ; $5411: $b8
	jr jr_057_5455                                   ; $5412: $18 $41

	adc b                                            ; $5414: $88
	jr c, @-$42                                      ; $5415: $38 $bc

	and $00                                          ; $5417: $e6 $00
	nop                                              ; $5419: $00
	ld [hl+], a                                      ; $541a: $22
	ld a, c                                          ; $541b: $79
	ld hl, sp-$07                                    ; $541c: $f8 $f9
	ei                                               ; $541e: $fb
	cp $f8                                           ; $541f: $fe $f8
	db $fc                                           ; $5421: $fc
	sbc $9f                                          ; $5422: $de $9f
	rlca                                             ; $5424: $07
	ld h, $cc                                        ; $5425: $26 $cc
	ld h, c                                          ; $5427: $61
	halt                                             ; $5428: $76
	ld e, l                                          ; $5429: $5d
	ld a, [hl]                                       ; $542a: $7e
	ret                                              ; $542b: $c9


	sbc l                                            ; $542c: $9d
	rlca                                             ; $542d: $07
	inc bc                                           ; $542e: $03
	ld a, e                                          ; $542f: $7b
	ld a, h                                          ; $5430: $7c
	rst SubAFromDE                                          ; $5431: $df
	ldh a, [$73]                                     ; $5432: $f0 $73
	ld a, [hl+]                                      ; $5434: $2a
	call c, $98ff                                    ; $5435: $dc $ff $98
	add c                                            ; $5438: $81
	ret                                              ; $5439: $c9


	sbc c                                            ; $543a: $99
	add hl, de                                       ; $543b: $19
	add hl, de                                       ; $543c: $19
	dec sp                                           ; $543d: $3b
	ld [hl], e                                       ; $543e: $73
	rst SubAFromHL                                          ; $543f: $d7
	rst $38                                          ; $5440: $ff
	sbc d                                            ; $5441: $9a
	jr nc, @-$6e                                     ; $5442: $30 $90

	sbc b                                            ; $5444: $98
	adc h                                            ; $5445: $8c
	adc [hl]                                         ; $5446: $8e
	ld a, e                                          ; $5447: $7b
	sbc b                                            ; $5448: $98
	reti                                             ; $5449: $d9


	rst $38                                          ; $544a: $ff
	sbc $0c                                          ; $544b: $de $0c
	rst SubAFromDE                                          ; $544d: $df
	jr jr_057_53ee                                   ; $544e: $18 $9e

	add hl, sp                                       ; $5450: $39
	ld a, e                                          ; $5451: $7b
	rst SubAFromDE                                          ; $5452: $df
	rst SubAFromDE                                          ; $5453: $df
	cp a                                             ; $5454: $bf

jr_057_5455:
	sbc l                                            ; $5455: $9d
	cp c                                             ; $5456: $b9
	sbc l                                            ; $5457: $9d
	sbc $ff                                          ; $5458: $de $ff
	sbc c                                            ; $545a: $99
	ld l, a                                          ; $545b: $6f
	xor a                                            ; $545c: $af
	or h                                             ; $545d: $b4
	sbc c                                            ; $545e: $99
	adc l                                            ; $545f: $8d
	sbc a                                            ; $5460: $9f

jr_057_5461:
	ld a, d                                          ; $5461: $7a
	rst JumpTable                                          ; $5462: $c7
	rst SubAFromDE                                          ; $5463: $df
	rst SubAFromDE                                          ; $5464: $df
	ld a, a                                          ; $5465: $7f
	dec sp                                           ; $5466: $3b
	sbc $ff                                          ; $5467: $de $ff
	sbc b                                            ; $5469: $98
	pop de                                           ; $546a: $d1
	sub c                                            ; $546b: $91
	sub b                                            ; $546c: $90
	ldh a, [hDisp1_SCY]                                     ; $546d: $f0 $90
	jr nc, jr_057_5461                               ; $546f: $30 $f0

	db $db                                           ; $5471: $db
	rst $38                                          ; $5472: $ff
	sbc e                                            ; $5473: $9b
	db $fc                                           ; $5474: $fc
	ldh [rSB], a                                     ; $5475: $e0 $01
	nop                                              ; $5477: $00
	sbc $80                                          ; $5478: $de $80
	sub d                                            ; $547a: $92
	jp $f1de                                         ; $547b: $c3 $de $f1


	rlca                                             ; $547e: $07
	ld sp, hl                                        ; $547f: $f9
	ldh a, [c]                                       ; $5480: $f2
	db $e4                                           ; $5481: $e4
	ret z                                            ; $5482: $c8

	sbc c                                            ; $5483: $99
	ld [hl-], a                                      ; $5484: $32
	ld h, h                                          ; $5485: $64
	ret z                                            ; $5486: $c8

	ld l, a                                          ; $5487: $6f
	ld l, e                                          ; $5488: $6b
	dec a                                            ; $5489: $3d
	add b                                            ; $548a: $80
	ld d, a                                          ; $548b: $57
	ld b, l                                          ; $548c: $45
	xor a                                            ; $548d: $af
	ld e, e                                          ; $548e: $5b
	db $e4                                           ; $548f: $e4
	sub b                                            ; $5490: $90
	inc bc                                           ; $5491: $03
	inc c                                            ; $5492: $0c
	ld hl, $4323                                     ; $5493: $21 $23 $43
	add a                                            ; $5496: $87
	ld e, $78                                        ; $5497: $1e $78
	ldh [$03], a                                     ; $5499: $e0 $03
	ld de, $cd62                                     ; $549b: $11 $62 $cd
	ld d, $28                                        ; $549e: $16 $28
	sub l                                            ; $54a0: $95
	ld [hl-], a                                      ; $54a1: $32
	ld l, b                                          ; $54a2: $68
	ei                                               ; $54a3: $fb
	rst FarCall                                          ; $54a4: $f7
	add $8c                                          ; $54a5: $c6 $8c
	inc e                                            ; $54a7: $1c
	ld a, b                                          ; $54a8: $78
	ld sp, hl                                        ; $54a9: $f9
	add b                                            ; $54aa: $80
	di                                               ; $54ab: $f3
	ld h, l                                          ; $54ac: $65
	sub c                                            ; $54ad: $91
	ld b, e                                          ; $54ae: $43
	rrca                                             ; $54af: $0f
	sub l                                            ; $54b0: $95
	ld a, $70                                        ; $54b1: $3e $70
	rst AddAOntoHL                                          ; $54b3: $ef
	add e                                            ; $54b4: $83
	rrca                                             ; $54b5: $0f
	ccf                                              ; $54b6: $3f
	ld a, a                                          ; $54b7: $7f
	ld a, e                                          ; $54b8: $7b
	pop hl                                           ; $54b9: $e1
	rst GetHLinHL                                          ; $54ba: $cf
	sbc a                                            ; $54bb: $9f
	cp c                                             ; $54bc: $b9
	or $ef                                           ; $54bd: $f6 $ef
	ld hl, sp-$18                                    ; $54bf: $f8 $e8
	jp nc, $d9b3                                     ; $54c1: $d2 $b3 $d9

	cp $f8                                           ; $54c4: $fe $f8
	rst $38                                          ; $54c6: $ff
	rst $38                                          ; $54c7: $ff
	ldh a, [$e1]                                     ; $54c8: $f0 $e1
	adc b                                            ; $54ca: $88
	db $fc                                           ; $54cb: $fc
	xor $0b                                          ; $54cc: $ee $0b
	dec b                                            ; $54ce: $05
	inc de                                           ; $54cf: $13
	call nz, $72a1                                   ; $54d0: $c4 $a1 $72
	cp c                                             ; $54d3: $b9
	call c, $0307                                    ; $54d4: $dc $07 $03
	pop hl                                           ; $54d7: $e1
	ld sp, hl                                        ; $54d8: $f9
	ld a, h                                          ; $54d9: $7c
	sbc h                                            ; $54da: $9c
	adc $6f                                          ; $54db: $ce $6f
	db $fc                                           ; $54dd: $fc
	ld hl, sp-$10                                    ; $54de: $f8 $f0
	ldh [$80], a                                     ; $54e0: $e0 $80
	sbc $40                                          ; $54e2: $de $40
	ld e, d                                          ; $54e4: $5a
	ret nc                                           ; $54e5: $d0

	db $fc                                           ; $54e6: $fc
	ld l, l                                          ; $54e7: $6d
	ld h, e                                          ; $54e8: $63
	sbc [hl]                                         ; $54e9: $9e
	cp $63                                           ; $54ea: $fe $63
	ld b, b                                          ; $54ec: $40
	ld a, a                                          ; $54ed: $7f
	ld l, a                                          ; $54ee: $6f
	sbc l                                            ; $54ef: $9d
	nop                                              ; $54f0: $00
	rlca                                             ; $54f1: $07
	ld [hl], e                                       ; $54f2: $73
	add sp, $62                                      ; $54f3: $e8 $62
	sub [hl]                                         ; $54f5: $96
	ld a, e                                          ; $54f6: $7b
	ld l, a                                          ; $54f7: $6f
	sub [hl]                                         ; $54f8: $96
	ccf                                              ; $54f9: $3f
	rrca                                             ; $54fa: $0f
	rlca                                             ; $54fb: $07
	rrca                                             ; $54fc: $0f
	rra                                              ; $54fd: $1f
	ccf                                              ; $54fe: $3f
	ld a, a                                          ; $54ff: $7f
	rst FarCall                                          ; $5500: $f7
	ei                                               ; $5501: $fb
	ld a, e                                          ; $5502: $7b
	ld c, l                                          ; $5503: $4d
	ld a, h                                          ; $5504: $7c
	ld [hl], b                                       ; $5505: $70
	sbc h                                            ; $5506: $9c
	jp hl                                            ; $5507: $e9


	xor $df                                          ; $5508: $ee $df
	ld a, e                                          ; $550a: $7b
	rst FarCall                                          ; $550b: $f7
	call c, $94ff                                    ; $550c: $dc $ff $94
	rst SubAFromBC                                          ; $550f: $e7
	rst $38                                          ; $5510: $ff
	and h                                            ; $5511: $a4
	ld h, a                                          ; $5512: $67
	sub d                                            ; $5513: $92
	ldh a, [$f4]                                     ; $5514: $f0 $f4
	ld c, [hl]                                       ; $5516: $4e
	sbc h                                            ; $5517: $9c
	and $fb                                          ; $5518: $e6 $fb
	ld [hl], l                                       ; $551a: $75
	ld [hl], $90                                     ; $551b: $36 $90
	cp $ec                                           ; $551d: $fe $ec
	ld hl, sp-$7c                                    ; $551f: $f8 $84
	ld [bc], a                                       ; $5521: $02
	ld de, $3fb9                                     ; $5522: $11 $b9 $3f
	rra                                              ; $5525: $1f
	sbc [hl]                                         ; $5526: $9e
	db $fc                                           ; $5527: $fc
	adc [hl]                                         ; $5528: $8e
	rst FarCall                                          ; $5529: $f7
	rst SubAFromDE                                          ; $552a: $df
	xor a                                            ; $552b: $af
	ld a, e                                          ; $552c: $7b
	call $c37f                                       ; $552d: $cd $7f $c3
	sbc l                                            ; $5530: $9d
	ld hl, sp-$20                                    ; $5531: $f8 $e0
	ld a, c                                          ; $5533: $79
	ld e, e                                          ; $5534: $5b
	db $fd                                           ; $5535: $fd
	sbc d                                            ; $5536: $9a
	add b                                            ; $5537: $80
	ret nz                                           ; $5538: $c0

	db $e3                                           ; $5539: $e3
	pop hl                                           ; $553a: $e1
	pop hl                                           ; $553b: $e1
	ld a, e                                          ; $553c: $7b
	rlca                                             ; $553d: $07
	ld a, h                                          ; $553e: $7c
	ld a, a                                          ; $553f: $7f
	sbc $1f                                          ; $5540: $de $1f
	ld a, a                                          ; $5542: $7f
	or c                                             ; $5543: $b1
	ld a, e                                          ; $5544: $7b
	sub a                                            ; $5545: $97
	sbc [hl]                                         ; $5546: $9e
	ret nz                                           ; $5547: $c0

	ld h, l                                          ; $5548: $65
	inc de                                           ; $5549: $13
	sbc $ff                                          ; $554a: $de $ff
	sbc [hl]                                         ; $554c: $9e
	ld a, $77                                        ; $554d: $3e $77
	add sp, -$65                                     ; $554f: $e8 $9b
	add a                                            ; $5551: $87
	ldh [rIE], a                                     ; $5552: $e0 $ff
	pop bc                                           ; $5554: $c1
	ld a, e                                          ; $5555: $7b
	ret c                                            ; $5556: $d8

	sbc [hl]                                         ; $5557: $9e
	ldh [$7b], a                                     ; $5558: $e0 $7b
	inc a                                            ; $555a: $3c
	sub l                                            ; $555b: $95
	ccf                                              ; $555c: $3f
	rst GetHLinHL                                          ; $555d: $cf
	xor $dc                                          ; $555e: $ee $dc
	cp b                                             ; $5560: $b8
	ld a, c                                          ; $5561: $79
	di                                               ; $5562: $f3
	or $ff                                           ; $5563: $f6 $ff
	ccf                                              ; $5565: $3f
	ld a, e                                          ; $5566: $7b
	cp d                                             ; $5567: $ba
	halt                                             ; $5568: $76
	push de                                          ; $5569: $d5
	sub l                                            ; $556a: $95
	db $e3                                           ; $556b: $e3
	ld hl, sp+$0f                                    ; $556c: $f8 $0f
	ld a, [$03c0]                                    ; $556e: $fa $c0 $03
	inc a                                            ; $5571: $3c
	ldh a, [$c0]                                     ; $5572: $f0 $c0
	rlca                                             ; $5574: $07
	ld a, d                                          ; $5575: $7a
	ret                                              ; $5576: $c9


	sub l                                            ; $5577: $95
	add b                                            ; $5578: $80
	inc bc                                           ; $5579: $03
	daa                                              ; $557a: $27
	sbc l                                            ; $557b: $9d
	ld [hl], c                                       ; $557c: $71
	db $db                                           ; $557d: $db
	daa                                              ; $557e: $27
	jp c, $c333                                      ; $557f: $da $33 $c3

	ld a, c                                          ; $5582: $79
	ret nc                                           ; $5583: $d0

	adc [hl]                                         ; $5584: $8e
	rst SubAFromBC                                          ; $5585: $e7
	rra                                              ; $5586: $1f
	ccf                                              ; $5587: $3f
	cp $fe                                           ; $5588: $fe $fe
	add sp, -$60                                     ; $558a: $e8 $a0
	ld b, a                                          ; $558c: $47
	adc h                                            ; $558d: $8c
	sub b                                            ; $558e: $90
	inc h                                            ; $558f: $24
	ld [$f059], sp                                   ; $5590: $08 $59 $f0
	ret nz                                           ; $5593: $c0

	add b                                            ; $5594: $80
	inc bc                                           ; $5595: $03
	ld a, e                                          ; $5596: $7b
	ld d, h                                          ; $5597: $54
	add d                                            ; $5598: $82
	ccf                                              ; $5599: $3f
	ld sp, $0dc2                                     ; $559a: $31 $c2 $0d
	ld a, [bc]                                       ; $559d: $0a
	inc e                                            ; $559e: $1c
	ld a, c                                          ; $559f: $79
	di                                               ; $55a0: $f3
	rst SubAFromBC                                          ; $55a1: $e7
	rrca                                             ; $55a2: $0f
	ccf                                              ; $55a3: $3f
	cp $fd                                           ; $55a4: $fe $fd
	di                                               ; $55a6: $f3
	rst SubAFromBC                                          ; $55a7: $e7
	rst GetHLinHL                                          ; $55a8: $cf
	sbc a                                            ; $55a9: $9f
	ld [hl], h                                       ; $55aa: $74
	xor c                                            ; $55ab: $a9
	ld d, e                                          ; $55ac: $53
	rst SubAFromBC                                          ; $55ad: $e7
	sbc h                                            ; $55ae: $9c
	ld a, c                                          ; $55af: $79
	rst $38                                          ; $55b0: $ff
	ld a, a                                          ; $55b1: $7f
	and e                                            ; $55b2: $a3
	ld h, a                                          ; $55b3: $67
	rst AddAOntoHL                                          ; $55b4: $ef
	sbc $77                                          ; $55b5: $de $77
	or c                                             ; $55b7: $b1
	add d                                            ; $55b8: $82
	reti                                             ; $55b9: $d9


	jp nc, Jump_057_6fa7                             ; $55ba: $d2 $a7 $6f

	xor $ec                                          ; $55bd: $ee $ec
	ld hl, sp-$50                                    ; $55bf: $f8 $b0
	cp a                                             ; $55c1: $bf
	ccf                                              ; $55c2: $3f
	ld a, h                                          ; $55c3: $7c
	db $fc                                           ; $55c4: $fc
	ld hl, sp-$08                                    ; $55c5: $f8 $f8
	jr nc, @+$32                                     ; $55c7: $30 $30

	rst AddAOntoHL                                          ; $55c9: $ef
	or $8e                                           ; $55ca: $f6 $8e
	ld c, $0a                                        ; $55cc: $0e $0a
	ld a, [bc]                                       ; $55ce: $0a
	ld b, $07                                        ; $55cf: $06 $07
	or $1b                                           ; $55d1: $f6 $1b
	dec bc                                           ; $55d3: $0b
	dec bc                                           ; $55d4: $0b
	rrca                                             ; $55d5: $0f
	sbc $07                                          ; $55d6: $de $07
	sub a                                            ; $55d8: $97
	add $a6                                          ; $55d9: $c6 $a6
	and [hl]                                         ; $55db: $a6
	and a                                            ; $55dc: $a7
	and a                                            ; $55dd: $a7
	daa                                              ; $55de: $27
	daa                                              ; $55df: $27
	inc hl                                           ; $55e0: $23
	call c, $de7f                                    ; $55e1: $dc $7f $de

jr_057_55e4:
	rst $38                                          ; $55e4: $ff
	call c, $9440                                    ; $55e5: $dc $40 $94
	ret nz                                           ; $55e8: $c0

	ld b, b                                          ; $55e9: $40
	nop                                              ; $55ea: $00
	jp c, $d5e7                                      ; $55eb: $da $e7 $d5

	jp nc, $c4e9                                     ; $55ee: $d2 $e9 $c4

	pop de                                           ; $55f1: $d1
	ret nz                                           ; $55f2: $c0

	ld sp, hl                                        ; $55f3: $f9
	sbc b                                            ; $55f4: $98
	push de                                          ; $55f5: $d5
	xor d                                            ; $55f6: $aa
	call c, $95a6                                    ; $55f7: $dc $a6 $95
	inc hl                                           ; $55fa: $23
	ld [$7855], sp                                   ; $55fb: $08 $55 $78
	db $dd                                           ; $55fe: $dd
	add b                                            ; $55ff: $80
	sbc [hl]                                         ; $5600: $9e
	ret z                                            ; $5601: $c8

	ld e, d                                          ; $5602: $5a
	or b                                             ; $5603: $b0
	db $fd                                           ; $5604: $fd
	sbc [hl]                                         ; $5605: $9e
	jr nz, jr_057_55e4                               ; $5606: $20 $dc

	rst $38                                          ; $5608: $ff
	ld [hl], a                                       ; $5609: $77
	inc d                                            ; $560a: $14
	ld a, [hl]                                       ; $560b: $7e
	or h                                             ; $560c: $b4
	ld [hl], l                                       ; $560d: $75
	ld d, l                                          ; $560e: $55
	sbc [hl]                                         ; $560f: $9e
	inc bc                                           ; $5610: $03
	sbc $ff                                          ; $5611: $de $ff
	sbc h                                            ; $5613: $9c
	add a                                            ; $5614: $87
	nop                                              ; $5615: $00
	ld a, b                                          ; $5616: $78
	sbc $ff                                          ; $5617: $de $ff
	ld a, [hl]                                       ; $5619: $7e
	add [hl]                                         ; $561a: $86
	ld a, [hl]                                       ; $561b: $7e
	sub b                                            ; $561c: $90
	ld a, a                                          ; $561d: $7f
	ld hl, sp-$6b                                    ; $561e: $f8 $95
	adc h                                            ; $5620: $8c
	db $fc                                           ; $5621: $fc
	ldh a, [$e0]                                     ; $5622: $f0 $e0
	ldh a, [$c1]                                     ; $5624: $f0 $c1
	db $e3                                           ; $5626: $e3
	and a                                            ; $5627: $a7
	xor a                                            ; $5628: $af
	ld hl, sp+$7a                                    ; $5629: $f8 $7a
	ld e, b                                          ; $562b: $58
	ld a, [hl]                                       ; $562c: $7e
	adc $df                                          ; $562d: $ce $df
	ret nz                                           ; $562f: $c0

	ld [hl], e                                       ; $5630: $73
	adc e                                            ; $5631: $8b
	ld e, d                                          ; $5632: $5a
	ld e, b                                          ; $5633: $58
	rst SubAFromDE                                          ; $5634: $df
	ldh a, [$df]                                     ; $5635: $f0 $df
	ld hl, sp-$21                                    ; $5637: $f8 $df
	db $fc                                           ; $5639: $fc
	rst SubAFromDE                                          ; $563a: $df
	cp $df                                           ; $563b: $fe $df
	rrca                                             ; $563d: $0f
	rst SubAFromDE                                          ; $563e: $df
	rlca                                             ; $563f: $07
	rst SubAFromDE                                          ; $5640: $df
	inc bc                                           ; $5641: $03
	rst SubAFromDE                                          ; $5642: $df
	ld bc, $d17a                                     ; $5643: $01 $7a $d1
	ld a, d                                          ; $5646: $7a

jr_057_5647:
	cp b                                             ; $5647: $b8
	ld a, a                                          ; $5648: $7f
	di                                               ; $5649: $f3
	jp nc, Jump_057_5dff                             ; $564a: $d2 $ff $5d

	ld d, [hl]                                       ; $564d: $56
	ld l, h                                          ; $564e: $6c
	ld [hl], $9b                                     ; $564f: $36 $9b
	nop                                              ; $5651: $00
	cp $fe                                           ; $5652: $fe $fe
	db $fc                                           ; $5654: $fc
	sbc $fd                                          ; $5655: $de $fd
	rst SubAFromDE                                          ; $5657: $df
	rst $38                                          ; $5658: $ff
	sub h                                            ; $5659: $94
	sub c                                            ; $565a: $91
	ld h, $c8                                        ; $565b: $26 $c8
	sub b                                            ; $565d: $90
	sub b                                            ; $565e: $90
	and c                                            ; $565f: $a1
	xor a                                            ; $5660: $af
	rst $38                                          ; $5661: $ff
	ld l, a                                          ; $5662: $6f
	rst SubAFromDE                                          ; $5663: $df
	cp a                                             ; $5664: $bf
	ld [hl], a                                       ; $5665: $77
	ld [hl], a                                       ; $5666: $77
	sub l                                            ; $5667: $95
	ldh a, [$03]                                     ; $5668: $f0 $03
	rlca                                             ; $566a: $07
	ld b, $0e                                        ; $566b: $06 $0e
	rra                                              ; $566d: $1f
	rst $38                                          ; $566e: $ff
	di                                               ; $566f: $f3
	db $fd                                           ; $5670: $fd
	cp $72                                           ; $5671: $fe $72
	add b                                            ; $5673: $80
	sub b                                            ; $5674: $90
	rrca                                             ; $5675: $0f
	inc bc                                           ; $5676: $03
	add hl, de                                       ; $5677: $19
	inc sp                                           ; $5678: $33
	or e                                             ; $5679: $b3
	or d                                             ; $567a: $b2
	inc [hl]                                         ; $567b: $34
	sub [hl]                                         ; $567c: $96
	db $f4                                           ; $567d: $f4
	db $fc                                           ; $567e: $fc
	ld a, a                                          ; $567f: $7f
	ld a, a                                          ; $5680: $7f
	ld a, [hl]                                       ; $5681: $7e
	ld a, [hl]                                       ; $5682: $7e
	cp $de                                           ; $5683: $fe $de
	db $fc                                           ; $5685: $fc
	add b                                            ; $5686: $80
	sbc h                                            ; $5687: $9c
	ei                                               ; $5688: $fb
	or a                                             ; $5689: $b7
	db $ec                                           ; $568a: $ec
	cp b                                             ; $568b: $b8
	db $10                                           ; $568c: $10
	sub b                                            ; $568d: $90
	ld d, b                                          ; $568e: $50
	ld a, a                                          ; $568f: $7f
	ld h, a                                          ; $5690: $67
	ld c, [hl]                                       ; $5691: $4e
	inc e                                            ; $5692: $1c
	jr jr_057_56c5                                   ; $5693: $18 $30

	jr nc, jr_057_5647                               ; $5695: $30 $b0

	cp $c0                                           ; $5697: $fe $c0
	nop                                              ; $5699: $00
	rrca                                             ; $569a: $0f
	jr nc, jr_057_569d                               ; $569b: $30 $00

jr_057_569d:
	rrca                                             ; $569d: $0f
	add hl, de                                       ; $569e: $19
	ldh a, [$80]                                     ; $569f: $f0 $80
	ld bc, $703f                                     ; $56a1: $01 $3f $70
	inc bc                                           ; $56a4: $03
	rra                                              ; $56a5: $1f
	sub e                                            ; $56a6: $93
	ld a, e                                          ; $56a7: $7b
	db $10                                           ; $56a8: $10
	db $10                                           ; $56a9: $10
	ld l, b                                          ; $56aa: $68
	cp h                                             ; $56ab: $bc
	ld a, b                                          ; $56ac: $78
	jr nc, jr_057_56b0                               ; $56ad: $30 $01

	add c                                            ; $56af: $81

jr_057_56b0:
	db $10                                           ; $56b0: $10
	db $10                                           ; $56b1: $10
	ld hl, sp+$7a                                    ; $56b2: $f8 $7a
	db $f4                                           ; $56b4: $f4
	ld a, [hl]                                       ; $56b5: $7e
	ld c, h                                          ; $56b6: $4c
	add a                                            ; $56b7: $87
	rlca                                             ; $56b8: $07
	dec bc                                           ; $56b9: $0b
	rrca                                             ; $56ba: $0f
	ld a, [de]                                       ; $56bb: $1a
	ld d, d                                          ; $56bc: $52
	and d                                            ; $56bd: $a2
	ei                                               ; $56be: $fb
	ld e, a                                          ; $56bf: $5f
	dec b                                            ; $56c0: $05
	dec c                                            ; $56c1: $0d
	add hl, bc                                       ; $56c2: $09
	ld d, c                                          ; $56c3: $51
	pop hl                                           ; $56c4: $e1

jr_057_56c5:
	ld [hl], c                                       ; $56c5: $71
	dec e                                            ; $56c6: $1d
	db $e3                                           ; $56c7: $e3
	inc sp                                           ; $56c8: $33
	cp c                                             ; $56c9: $b9
	sbc l                                            ; $56ca: $9d
	sbc $d7                                          ; $56cb: $de $d7
	and a                                            ; $56cd: $a7
	rlca                                             ; $56ce: $07
	rrca                                             ; $56cf: $0f
	ld d, d                                          ; $56d0: $52
	add sp, -$02                                     ; $56d1: $e8 $fe
	sbc [hl]                                         ; $56d3: $9e
	ld [hl+], a                                      ; $56d4: $22
	ld [hl], d                                       ; $56d5: $72
	pop hl                                           ; $56d6: $e1
	sbc l                                            ; $56d7: $9d
	add b                                            ; $56d8: $80
	inc b                                            ; $56d9: $04
	ld sp, hl                                        ; $56da: $f9
	sbc l                                            ; $56db: $9d
	ld [bc], a                                       ; $56dc: $02
	ld b, b                                          ; $56dd: $40
	ld [hl], e                                       ; $56de: $73
	push af                                          ; $56df: $f5
	sbc [hl]                                         ; $56e0: $9e
	inc b                                            ; $56e1: $04
	reti                                             ; $56e2: $d9


	rst $38                                          ; $56e3: $ff
	sbc e                                            ; $56e4: $9b
	ret z                                            ; $56e5: $c8

	add sp, -$14                                     ; $56e6: $e8 $ec
	db $ec                                           ; $56e8: $ec
	ld a, e                                          ; $56e9: $7b
	add hl, de                                       ; $56ea: $19
	ret c                                            ; $56eb: $d8

	rst $38                                          ; $56ec: $ff
	sbc c                                            ; $56ed: $99
	jr nz, jr_057_5712                               ; $56ee: $20 $22

	ld [hl-], a                                      ; $56f0: $32
	ld [hl], d                                       ; $56f1: $72
	halt                                             ; $56f2: $76
	halt                                             ; $56f3: $76
	ld [hl], h                                       ; $56f4: $74
	ld d, [hl]                                       ; $56f5: $56
	db $db                                           ; $56f6: $db
	rst $38                                          ; $56f7: $ff
	ld a, a                                          ; $56f8: $7f
	ld c, b                                          ; $56f9: $48
	sbc c                                            ; $56fa: $99
	rlca                                             ; $56fb: $07
	ld c, a                                          ; $56fc: $4f
	rst GetHLinHL                                          ; $56fd: $cf
	sbc [hl]                                         ; $56fe: $9e
	sbc h                                            ; $56ff: $9c
	sbc h                                            ; $5700: $9c
	ld h, l                                          ; $5701: $65
	add $88                                          ; $5702: $c6 $88
	add hl, sp                                       ; $5704: $39
	sub c                                            ; $5705: $91
	di                                               ; $5706: $f3
	rst SubAFromHL                                          ; $5707: $d7
	pop hl                                           ; $5708: $e1
	ldh [$8e], a                                     ; $5709: $e0 $8e
	ld l, h                                          ; $570b: $6c
	rst SubAFromDE                                          ; $570c: $df
	ld d, a                                          ; $570d: $57
	cp e                                             ; $570e: $bb
	ld l, l                                          ; $570f: $6d
	ld [hl], a                                       ; $5710: $77
	db $dd                                           ; $5711: $dd

jr_057_5712:
	xor $9a                                          ; $5712: $ee $9a
	ldh [$b8], a                                     ; $5714: $e0 $b8
	call z, $98f2                                    ; $5716: $cc $f2 $98
	and $b1                                          ; $5719: $e6 $b1
	ld [hl], h                                       ; $571b: $74
	add l                                            ; $571c: $85
	sbc d                                            ; $571d: $9a
	rst $38                                          ; $571e: $ff
	ret nz                                           ; $571f: $c0

	or b                                             ; $5720: $b0
	ld c, $81                                        ; $5721: $0e $81
	db $fd                                           ; $5723: $fd
	ld [hl], c                                       ; $5724: $71
	cp a                                             ; $5725: $bf
	db $dd                                           ; $5726: $dd
	rst $38                                          ; $5727: $ff
	sbc h                                            ; $5728: $9c
	ld c, $00                                        ; $5729: $0e $00
	pop bc                                           ; $572b: $c1
	db $fc                                           ; $572c: $fc
	sbc [hl]                                         ; $572d: $9e
	pop af                                           ; $572e: $f1
	ld a, e                                          ; $572f: $7b
	cp b                                             ; $5730: $b8
	sbc c                                            ; $5731: $99
	inc bc                                           ; $5732: $03
	add c                                            ; $5733: $81
	add e                                            ; $5734: $83
	add a                                            ; $5735: $87
	rrca                                             ; $5736: $0f
	ccf                                              ; $5737: $3f
	ld [hl], l                                       ; $5738: $75
	jr nz, jr_057_57ad                               ; $5739: $20 $72

	sub l                                            ; $573b: $95
	add a                                            ; $573c: $87
	rst FarCall                                          ; $573d: $f7
	cp $df                                           ; $573e: $fe $df
	push bc                                          ; $5740: $c5
	add e                                            ; $5741: $83
	jp Jump_057_776f                                 ; $5742: $c3 $6f $77


	ld hl, sp-$1f                                    ; $5745: $f8 $e1
	pop hl                                           ; $5747: $e1
	jp $86c2                                         ; $5748: $c3 $c2 $86


	add h                                            ; $574b: $84
	adc h                                            ; $574c: $8c
	ccf                                              ; $574d: $3f
	rst JumpTable                                          ; $574e: $c7
	nop                                              ; $574f: $00
	pop bc                                           ; $5750: $c1
	ldh a, [c]                                       ; $5751: $f2
	push af                                          ; $5752: $f5
	db $eb                                           ; $5753: $eb
	push af                                          ; $5754: $f5
	ld [hl], d                                       ; $5755: $72
	ld c, [hl]                                       ; $5756: $4e
	add h                                            ; $5757: $84
	ld c, $1c                                        ; $5758: $0e $1c
	dec de                                           ; $575a: $1b
	rst FarCall                                          ; $575b: $f7
	and $bf                                          ; $575c: $e6 $bf
	ld a, a                                          ; $575e: $7f
	rst $38                                          ; $575f: $ff
	sbc a                                            ; $5760: $9f
	ld e, a                                          ; $5761: $5f
	cp [hl]                                          ; $5762: $be
	ld hl, sp-$01                                    ; $5763: $f8 $ff
	pop bc                                           ; $5765: $c1
	add b                                            ; $5766: $80
	nop                                              ; $5767: $00
	ld h, b                                          ; $5768: $60
	ldh [$c1], a                                     ; $5769: $e0 $c1
	cp $ff                                           ; $576b: $fe $ff
	ld a, a                                          ; $576d: $7f
	cp a                                             ; $576e: $bf
	ld d, c                                          ; $576f: $51
	ldh [$71], a                                     ; $5770: $e0 $71
	pop de                                           ; $5772: $d1
	ld a, b                                          ; $5773: $78
	ccf                                              ; $5774: $3f
	sbc l                                            ; $5775: $9d
	ret nz                                           ; $5776: $c0

	xor $7b                                          ; $5777: $ee $7b
	cp a                                             ; $5779: $bf
	add b                                            ; $577a: $80
	db $fc                                           ; $577b: $fc
	ld a, [hl]                                       ; $577c: $7e
	cp l                                             ; $577d: $bd
	sbc l                                            ; $577e: $9d
	rst SubAFromDE                                          ; $577f: $df
	xor $ef                                          ; $5780: $ee $ef
	ld l, a                                          ; $5782: $6f
	db $fc                                           ; $5783: $fc

jr_057_5784:
	db $fc                                           ; $5784: $fc
	ld a, [hl]                                       ; $5785: $7e
	ld a, [hl]                                       ; $5786: $7e
	ld a, $1f                                        ; $5787: $3e $1f
	rra                                              ; $5789: $1f
	sbc a                                            ; $578a: $9f
	ld d, b                                          ; $578b: $50
	db $10                                           ; $578c: $10
	ld e, b                                          ; $578d: $58
	xor b                                            ; $578e: $a8
	and h                                            ; $578f: $a4
	call nc, Call_057_49d2                           ; $5790: $d4 $d2 $49
	or b                                             ; $5793: $b0
	ldh a, [$f8]                                     ; $5794: $f0 $f8
	ld a, b                                          ; $5796: $78
	ld a, h                                          ; $5797: $7c
	inc a                                            ; $5798: $3c
	ld a, $9c                                        ; $5799: $3e $9c
	cp a                                             ; $579b: $bf
	db $10                                           ; $579c: $10
	and b                                            ; $579d: $a0
	db $fc                                           ; $579e: $fc
	sbc h                                            ; $579f: $9c
	ld bc, $4080                                     ; $57a0: $01 $80 $40
	ei                                               ; $57a3: $fb
	sub [hl]                                         ; $57a4: $96
	ld [$ff3d], sp                                   ; $57a5: $08 $3d $ff
	rlca                                             ; $57a8: $07
	ld b, $00                                        ; $57a9: $06 $00
	ld h, b                                          ; $57ab: $60
	ld d, b                                          ; $57ac: $50

jr_057_57ad:
	ld bc, $df75                                     ; $57ad: $01 $75 $df
	sub d                                            ; $57b0: $92
	inc c                                            ; $57b1: $0c
	jr nc, jr_057_5784                               ; $57b2: $30 $d0

	xor $14                                          ; $57b4: $ee $14
	inc c                                            ; $57b6: $0c
	adc b                                            ; $57b7: $88
	jr jr_057_57c3                                   ; $57b8: $18 $09

	add hl, sp                                       ; $57ba: $39
	add hl, de                                       ; $57bb: $19
	di                                               ; $57bc: $f3
	cp a                                             ; $57bd: $bf
	sbc $0f                                          ; $57be: $de $0f
	rst SubAFromDE                                          ; $57c0: $df
	rra                                              ; $57c1: $1f
	ld a, a                                          ; $57c2: $7f

jr_057_57c3:
	adc h                                            ; $57c3: $8c
	ld a, a                                          ; $57c4: $7f
	db $fd                                           ; $57c5: $fd
	sbc $ff                                          ; $57c6: $de $ff
	sbc l                                            ; $57c8: $9d
	adc a                                            ; $57c9: $8f
	ld a, e                                          ; $57ca: $7b
	jp c, $7dff                                      ; $57cb: $da $ff $7d

	call nc, $bd70                                   ; $57ce: $d4 $70 $bd
	sbc $80                                          ; $57d1: $de $80
	sbc b                                            ; $57d3: $98
	ld c, b                                          ; $57d4: $48
	add b                                            ; $57d5: $80
	sub d                                            ; $57d6: $92
	ld b, h                                          ; $57d7: $44
	xor d                                            ; $57d8: $aa
	push de                                          ; $57d9: $d5
	db $eb                                           ; $57da: $eb
	ld hl, sp-$68                                    ; $57db: $f8 $98
	add c                                            ; $57dd: $81
	ld [$05a0], sp                                   ; $57de: $08 $a0 $05
	xor d                                            ; $57e1: $aa
	ld d, l                                          ; $57e2: $55
	cp d                                             ; $57e3: $ba
	pop bc                                           ; $57e4: $c1
	rst $38                                          ; $57e5: $ff
	reti                                             ; $57e6: $d9


	rst $38                                          ; $57e7: $ff
	sub a                                            ; $57e8: $97
	rra                                              ; $57e9: $1f
	inc e                                            ; $57ea: $1c
	ld a, $3f                                        ; $57eb: $3e $3f
	ld a, $3f                                        ; $57ed: $3e $3f
	ld h, l                                          ; $57ef: $65
	ld [hl], a                                       ; $57f0: $77
	ld h, [hl]                                       ; $57f1: $66
	ret nz                                           ; $57f2: $c0

	sub e                                            ; $57f3: $93
	add sp, -$31                                     ; $57f4: $e8 $cf
	call Call_057_7261                               ; $57f6: $cd $61 $72
	rst FarCall                                          ; $57f9: $f7
	ld [hl], c                                       ; $57fa: $71
	add hl, sp                                       ; $57fb: $39
	adc l                                            ; $57fc: $8d
	add [hl]                                         ; $57fd: $86
	add e                                            ; $57fe: $83
	add c                                            ; $57ff: $81
	db $dd                                           ; $5800: $dd
	add b                                            ; $5801: $80
	ld l, e                                          ; $5802: $6b
	ld sp, hl                                        ; $5803: $f9
	sub [hl]                                         ; $5804: $96
	add b                                            ; $5805: $80
	ld [hl], b                                       ; $5806: $70
	inc a                                            ; $5807: $3c
	rlca                                             ; $5808: $07
	pop hl                                           ; $5809: $e1
	jr nc, jr_057_5818                               ; $580a: $30 $0c

	inc bc                                           ; $580c: $03
	ld [bc], a                                       ; $580d: $02
	db $dd                                           ; $580e: $dd
	rst $38                                          ; $580f: $ff
	sub h                                            ; $5810: $94
	ld a, a                                          ; $5811: $7f
	rra                                              ; $5812: $1f
	rlca                                             ; $5813: $07
	ld bc, $1f78                                     ; $5814: $01 $78 $1f
	add e                                            ; $5817: $83

jr_057_5818:
	ldh a, [$7e]                                     ; $5818: $f0 $7e
	rrca                                             ; $581a: $0f
	jp $6678                                         ; $581b: $c3 $78 $66


	db $db                                           ; $581e: $db
	rst $38                                          ; $581f: $ff
	ld a, a                                          ; $5820: $7f
	ld e, a                                          ; $5821: $5f
	ld a, e                                          ; $5822: $7b
	or h                                             ; $5823: $b4
	sbc l                                            ; $5824: $9d
	rst JumpTable                                          ; $5825: $c7
	rst $38                                          ; $5826: $ff
	ld [hl], a                                       ; $5827: $77
	ld e, e                                          ; $5828: $5b
	call c, $9dff                                    ; $5829: $dc $ff $9d
	ld [hl], a                                       ; $582c: $77
	ccf                                              ; $582d: $3f
	sbc $0f                                          ; $582e: $de $0f
	rst SubAFromDE                                          ; $5830: $df
	sbc a                                            ; $5831: $9f
	sbc d                                            ; $5832: $9a
	rst SubAFromDE                                          ; $5833: $df
	adc h                                            ; $5834: $8c
	adc $fd                                          ; $5835: $ce $fd
	db $fd                                           ; $5837: $fd
	db $dd                                           ; $5838: $dd
	ld sp, hl                                        ; $5839: $f9
	sub e                                            ; $583a: $93
	db $eb                                           ; $583b: $eb
	add $7d                                          ; $583c: $c6 $7d
	ei                                               ; $583e: $fb
	rst FarCall                                          ; $583f: $f7
	rst AddAOntoHL                                          ; $5840: $ef
	rst $38                                          ; $5841: $ff
	rst SubAFromDE                                          ; $5842: $df
	scf                                              ; $5843: $37
	ld a, a                                          ; $5844: $7f
	cp $fc                                           ; $5845: $fe $fc
	ld [hl], l                                       ; $5847: $75
	dec l                                            ; $5848: $2d
	adc b                                            ; $5849: $88
	ld a, [hl]                                       ; $584a: $7e
	db $fd                                           ; $584b: $fd
	db $fd                                           ; $584c: $fd
	db $dd                                           ; $584d: $dd
	cp e                                             ; $584e: $bb
	cp e                                             ; $584f: $bb
	ld [hl], a                                       ; $5850: $77
	ld [hl], a                                       ; $5851: $77
	add c                                            ; $5852: $81
	inc bc                                           ; $5853: $03
	inc bc                                           ; $5854: $03
	inc hl                                           ; $5855: $23
	ld b, a                                          ; $5856: $47
	ld b, a                                          ; $5857: $47
	adc a                                            ; $5858: $8f
	adc a                                            ; $5859: $8f
	pop de                                           ; $585a: $d1
	reti                                             ; $585b: $d9


	cp c                                             ; $585c: $b9
	xor c                                            ; $585d: $a9
	cp l                                             ; $585e: $bd
	db $fd                                           ; $585f: $fd
	db $fd                                           ; $5860: $fd
	ld a, d                                          ; $5861: $7a
	daa                                              ; $5862: $27
	rst SubAFromDE                                          ; $5863: $df
	rst SubAFromDE                                          ; $5864: $df
	sbc [hl]                                         ; $5865: $9e
	rst GetHLinHL                                          ; $5866: $cf
	sbc $8f                                          ; $5867: $de $8f
	sub h                                            ; $5869: $94
	ld l, a                                          ; $586a: $6f
	cpl                                              ; $586b: $2f
	xor a                                            ; $586c: $af
	adc [hl]                                         ; $586d: $8e
	adc $fc                                          ; $586e: $ce $fc
	ld hl, sp-$03                                    ; $5870: $f8 $fd
	sbc a                                            ; $5872: $9f
	rst SubAFromDE                                          ; $5873: $df
	rst SubAFromDE                                          ; $5874: $df
	call c, $97ff                                    ; $5875: $dc $ff $97
	ret                                              ; $5878: $c9


	adc b                                            ; $5879: $88
	adc b                                            ; $587a: $88
	ld c, b                                          ; $587b: $48
	ld d, c                                          ; $587c: $51
	pop de                                           ; $587d: $d1
	ldh a, [c]                                       ; $587e: $f2
	and h                                            ; $587f: $a4
	ld [hl], l                                       ; $5880: $75
	ld d, d                                          ; $5881: $52
	ld [hl], d                                       ; $5882: $72
	ld [$83df], sp                                   ; $5883: $08 $df $83
	sub [hl]                                         ; $5886: $96
	ret nz                                           ; $5887: $c0

	ldh [$f0], a                                     ; $5888: $e0 $f0
	ld a, c                                          ; $588a: $79
	ld a, a                                          ; $588b: $7f
	ld bc, $8283                                     ; $588c: $01 $83 $82
	add c                                            ; $588f: $81
	ld a, e                                          ; $5890: $7b
	rst FarCall                                          ; $5891: $f7
	sbc [hl]                                         ; $5892: $9e
	rst $38                                          ; $5893: $ff
	ld a, e                                          ; $5894: $7b
	xor l                                            ; $5895: $ad
	sub [hl]                                         ; $5896: $96
	push bc                                          ; $5897: $c5
	rlca                                             ; $5898: $07
	ld e, [hl]                                       ; $5899: $5e
	ld a, a                                          ; $589a: $7f
	ld b, e                                          ; $589b: $43
	ldh a, [$e0]                                     ; $589c: $f0 $e0
	ld h, c                                          ; $589e: $61
	jp $397a                                         ; $589f: $c3 $7a $39


	sub [hl]                                         ; $58a2: $96
	add c                                            ; $58a3: $81
	ld a, c                                          ; $58a4: $79
	ret                                              ; $58a5: $c9


	call $e386                                       ; $58a6: $cd $86 $e3
	rst SubAFromDE                                          ; $58a9: $df
	ei                                               ; $58aa: $fb
	ld a, l                                          ; $58ab: $7d
	ld [hl], d                                       ; $58ac: $72
	inc d                                            ; $58ad: $14
	sbc c                                            ; $58ae: $99
	ccf                                              ; $58af: $3f
	rlca                                             ; $58b0: $07
	add e                                            ; $58b1: $83
	ld a, h                                          ; $58b2: $7c
	ld a, h                                          ; $58b3: $7c
	cp c                                             ; $58b4: $b9
	call c, $dfff                                    ; $58b5: $dc $ff $df
	add e                                            ; $58b8: $83
	ld a, a                                          ; $58b9: $7f
	ld e, e                                          ; $58ba: $5b
	sub h                                            ; $58bb: $94
	rst $38                                          ; $58bc: $ff
	ldh [rP1], a                                     ; $58bd: $e0 $00
	nop                                              ; $58bf: $00
	ld a, b                                          ; $58c0: $78
	db $fc                                           ; $58c1: $fc
	rst $38                                          ; $58c2: $ff
	rst SubAFromDE                                          ; $58c3: $df
	cp a                                             ; $58c4: $bf
	ld a, a                                          ; $58c5: $7f
	ei                                               ; $58c6: $fb
	ld a, b                                          ; $58c7: $78
	or $7f                                           ; $58c8: $f6 $7f
	ldh a, [c]                                       ; $58ca: $f2
	sub e                                            ; $58cb: $93
	ret nz                                           ; $58cc: $c0

	rst $38                                          ; $58cd: $ff
	rlca                                             ; $58ce: $07
	inc bc                                           ; $58cf: $03
	nop                                              ; $58d0: $00
	nop                                              ; $58d1: $00
	ldh [$b8], a                                     ; $58d2: $e0 $b8
	db $ec                                           ; $58d4: $ec
	ld a, $ff                                        ; $58d5: $3e $ff
	ei                                               ; $58d7: $fb
	ld [hl], e                                       ; $58d8: $73
	ld hl, $ffdf                                     ; $58d9: $21 $df $ff
	sub [hl]                                         ; $58dc: $96
	db $fd                                           ; $58dd: $fd
	rst AddAOntoHL                                          ; $58de: $ef
	rst JumpTable                                          ; $58df: $c7
	db $d3                                           ; $58e0: $d3
	jp $81a3                                         ; $58e1: $c3 $a3 $81


	nop                                              ; $58e4: $00
	add h                                            ; $58e5: $84
	sub $ff                                          ; $58e6: $d6 $ff
	ld a, a                                          ; $58e8: $7f
	add l                                            ; $58e9: $85
	sbc l                                            ; $58ea: $9d
	xor a                                            ; $58eb: $af
	cp a                                             ; $58ec: $bf
	ld h, a                                          ; $58ed: $67
	add c                                            ; $58ee: $81
	rst SubAFromDE                                          ; $58ef: $df
	rst $38                                          ; $58f0: $ff
	sbc b                                            ; $58f1: $98
	di                                               ; $58f2: $f3
	or d                                             ; $58f3: $b2
	or d                                             ; $58f4: $b2
	cp d                                             ; $58f5: $ba
	cp d                                             ; $58f6: $ba
	sbc d                                            ; $58f7: $9a
	sbc a                                            ; $58f8: $9f
	ld h, e                                          ; $58f9: $63
	ld hl, sp-$68                                    ; $58fa: $f8 $98
	ld e, a                                          ; $58fc: $5f
	ld e, $1c                                        ; $58fd: $1e $1c
	inc a                                            ; $58ff: $3c
	ccf                                              ; $5900: $3f
	ccf                                              ; $5901: $3f
	cp $73                                           ; $5902: $fe $73
	ld hl, sp-$64                                    ; $5904: $f8 $9c
	cp a                                             ; $5906: $bf
	ccf                                              ; $5907: $3f
	cp $dc                                           ; $5908: $fe $dc
	add b                                            ; $590a: $80
	rst SubAFromDE                                          ; $590b: $df
	ret nz                                           ; $590c: $c0

	reti                                             ; $590d: $d9


	add b                                            ; $590e: $80
	ld a, b                                          ; $590f: $78
	db $ec                                           ; $5910: $ec
	di                                               ; $5911: $f3
	sub l                                            ; $5912: $95
	rst SubAFromDE                                          ; $5913: $df
	jr c, jr_057_5934                                ; $5914: $38 $1e

	rrca                                             ; $5916: $0f
	rlca                                             ; $5917: $07
	inc bc                                           ; $5918: $03
	ld bc, $3f00                                     ; $5919: $01 $00 $3f
	rlca                                             ; $591c: $07
	halt                                             ; $591d: $76
	rrca                                             ; $591e: $0f
	rst $38                                          ; $591f: $ff
	rst SubAFromDE                                          ; $5920: $df
	rst $38                                          ; $5921: $ff
	sbc c                                            ; $5922: $99
	jr c, @-$65                                      ; $5923: $38 $99

	set 1, a                                         ; $5925: $cb $cf
	rst AddAOntoHL                                          ; $5927: $ef
	xor $de                                          ; $5928: $ee $de
	rst $38                                          ; $592a: $ff
	sbc d                                            ; $592b: $9a
	ld a, [hl]                                       ; $592c: $7e
	inc a                                            ; $592d: $3c
	jr c, jr_057_5948                                ; $592e: $38 $18

	jr jr_057_59ac                                   ; $5930: $18 $7a

	or d                                             ; $5932: $b2
	sub a                                            ; $5933: $97

jr_057_5934:
	di                                               ; $5934: $f3
	rst FarCall                                          ; $5935: $f7
	sub [hl]                                         ; $5936: $96
	dec e                                            ; $5937: $1d
	dec bc                                           ; $5938: $0b
	pop af                                           ; $5939: $f1
	di                                               ; $593a: $f3
	di                                               ; $593b: $f3
	sbc $1f                                          ; $593c: $de $1f
	ld a, a                                          ; $593e: $7f
	xor h                                            ; $593f: $ac
	adc l                                            ; $5940: $8d

jr_057_5941:
	cp $be                                           ; $5941: $fe $be
	db $fd                                           ; $5943: $fd
	ld a, l                                          ; $5944: $7d
	ei                                               ; $5945: $fb
	ei                                               ; $5946: $fb
	di                                               ; $5947: $f3

jr_057_5948:
	rst SubAFromBC                                          ; $5948: $e7
	pop bc                                           ; $5949: $c1
	pop bc                                           ; $594a: $c1
	add d                                            ; $594b: $82
	add d                                            ; $594c: $82
	inc b                                            ; $594d: $04
	inc b                                            ; $594e: $04
	inc c                                            ; $594f: $0c
	jr jr_057_5941                                   ; $5950: $18 $ef

	rst AddAOntoHL                                          ; $5952: $ef
	sbc $df                                          ; $5953: $de $df
	sbc $bf                                          ; $5955: $de $bf
	ld a, c                                          ; $5957: $79
	push hl                                          ; $5958: $e5
	rst SubAFromDE                                          ; $5959: $df
	ccf                                              ; $595a: $3f
	db $dd                                           ; $595b: $dd
	ld a, a                                          ; $595c: $7f
	sbc [hl]                                         ; $595d: $9e
	ld a, e                                          ; $595e: $7b
	sbc $7d                                          ; $595f: $de $7d
	sbc d                                            ; $5961: $9a
	ld [hl], a                                       ; $5962: $77
	cpl                                              ; $5963: $2f
	sbc a                                            ; $5964: $9f
	add a                                            ; $5965: $87
	add a                                            ; $5966: $87
	sbc $83                                          ; $5967: $de $83
	sub h                                            ; $5969: $94
	adc a                                            ; $596a: $8f
	rst SubAFromDE                                          ; $596b: $df
	rst $38                                          ; $596c: $ff
	ldh a, [c]                                       ; $596d: $f2
	pop hl                                           ; $596e: $e1
	jp $8f87                                         ; $596f: $c3 $87 $8f


	sbc a                                            ; $5972: $9f
	ld e, $3e                                        ; $5973: $1e $3e
	ld a, d                                          ; $5975: $7a
	add hl, hl                                       ; $5976: $29
	ld a, d                                          ; $5977: $7a
	sub b                                            ; $5978: $90
	ld a, [hl]                                       ; $5979: $7e
	ld [$7f9e], a                                    ; $597a: $ea $9e $7f
	ld a, d                                          ; $597d: $7a
	ld d, [hl]                                       ; $597e: $56
	sub d                                            ; $597f: $92
	cp [hl]                                          ; $5980: $be
	jr jr_057_5993                                   ; $5981: $18 $10

jr_057_5983:
	inc hl                                           ; $5983: $23
	rst $38                                          ; $5984: $ff
	ld b, b                                          ; $5985: $40
	jr nz, @+$21                                     ; $5986: $20 $1f

	ld b, $08                                        ; $5988: $06 $08
	db $10                                           ; $598a: $10
	ld hl, $fde8                                     ; $598b: $21 $e8 $fd
	ld a, a                                          ; $598e: $7f
	ld h, c                                          ; $598f: $61
	sbc l                                            ; $5990: $9d
	jr nc, jr_057_5983                               ; $5991: $30 $f0

jr_057_5993:
	ld l, l                                          ; $5993: $6d
	or a                                             ; $5994: $b7
	ld a, l                                          ; $5995: $7d
	ld [hl], a                                       ; $5996: $77
	ld a, c                                          ; $5997: $79
	ld [hl], h                                       ; $5998: $74
	sbc [hl]                                         ; $5999: $9e
	inc bc                                           ; $599a: $03
	ld a, c                                          ; $599b: $79
	sub a                                            ; $599c: $97
	ld l, l                                          ; $599d: $6d
	ld l, d                                          ; $599e: $6a
	ld a, a                                          ; $599f: $7f
	or $db                                           ; $59a0: $f6 $db
	rst $38                                          ; $59a2: $ff
	sbc l                                            ; $59a3: $9d
	ld a, a                                          ; $59a4: $7f
	ld sp, hl                                        ; $59a5: $f9
	jp c, $8481                                      ; $59a6: $da $81 $84

	rlca                                             ; $59a9: $07
	ld a, a                                          ; $59aa: $7f
	cp a                                             ; $59ab: $bf

jr_057_59ac:
	rst SubAFromDE                                          ; $59ac: $df
	rst SubAFromDE                                          ; $59ad: $df
	cp c                                             ; $59ae: $b9
	ld [hl], a                                       ; $59af: $77
	call c, $8070                                    ; $59b0: $dc $70 $80
	ret nz                                           ; $59b3: $c0

	ldh [$e0], a                                     ; $59b4: $e0 $e0
	rst JumpTable                                          ; $59b6: $c7
	adc a                                            ; $59b7: $8f
	ccf                                              ; $59b8: $3f
	adc a                                            ; $59b9: $8f
	ei                                               ; $59ba: $fb
	rst AddAOntoHL                                          ; $59bb: $ef
	cp a                                             ; $59bc: $bf
	ld a, a                                          ; $59bd: $7f
	db $fc                                           ; $59be: $fc
	add a                                            ; $59bf: $87
	rrca                                             ; $59c0: $0f
	nop                                              ; $59c1: $00
	rlca                                             ; $59c2: $07
	rra                                              ; $59c3: $1f
	ld a, d                                          ; $59c4: $7a
	sbc a                                            ; $59c5: $9f
	ld a, a                                          ; $59c6: $7f
	sbc a                                            ; $59c7: $9f
	ld a, [hl]                                       ; $59c8: $7e
	rst JumpTable                                          ; $59c9: $c7
	adc b                                            ; $59ca: $88
	ei                                               ; $59cb: $fb
	rst SubAFromBC                                          ; $59cc: $e7
	ld e, $fe                                        ; $59cd: $1e $fe
	ld hl, sp-$40                                    ; $59cf: $f8 $c0
	nop                                              ; $59d1: $00
	db $fc                                           ; $59d2: $fc
	db $fc                                           ; $59d3: $fc
	ld hl, sp-$1f                                    ; $59d4: $f8 $e1
	ld bc, $3f07                                     ; $59d6: $01 $07 $3f
	rst $38                                          ; $59d9: $ff
	db $10                                           ; $59da: $10
	add b                                            ; $59db: $80
	jp hl                                            ; $59dc: $e9


	adc c                                            ; $59dd: $89
	ld [hl-], a                                      ; $59de: $32
	dec h                                            ; $59df: $25
	adc d                                            ; $59e0: $8a
	ld d, h                                          ; $59e1: $54
	reti                                             ; $59e2: $d9


	rst $38                                          ; $59e3: $ff
	ld a, [hl]                                       ; $59e4: $7e
	push bc                                          ; $59e5: $c5
	sbc c                                            ; $59e6: $99
	sub a                                            ; $59e7: $97
	scf                                              ; $59e8: $37
	ccf                                              ; $59e9: $3f
	rst SubAFromHL                                          ; $59ea: $d7
	ld e, a                                          ; $59eb: $5f
	sbc [hl]                                         ; $59ec: $9e
	reti                                             ; $59ed: $d9


	rst $38                                          ; $59ee: $ff
	adc [hl]                                         ; $59ef: $8e
	adc a                                            ; $59f0: $8f
	db $ec                                           ; $59f1: $ec
	cp [hl]                                          ; $59f2: $be
	sub [hl]                                         ; $59f3: $96
	rlca                                             ; $59f4: $07
	inc bc                                           ; $59f5: $03
	rst $38                                          ; $59f6: $ff
	ei                                               ; $59f7: $fb
	cp a                                             ; $59f8: $bf
	db $ec                                           ; $59f9: $ec
	cp [hl]                                          ; $59fa: $be
	or [hl]                                          ; $59fb: $b6
	rst GetHLinHL                                          ; $59fc: $cf
	cp e                                             ; $59fd: $bb
	rst $38                                          ; $59fe: $ff
	rlca                                             ; $59ff: $07
	db $fc                                           ; $5a00: $fc
	db $dd                                           ; $5a01: $dd
	cp h                                             ; $5a02: $bc
	rst SubAFromDE                                          ; $5a03: $df
	cp [hl]                                          ; $5a04: $be
	ld a, a                                          ; $5a05: $7f
	ld d, e                                          ; $5a06: $53
	sbc e                                            ; $5a07: $9b
	cp h                                             ; $5a08: $bc
	cp $bd                                           ; $5a09: $fe $bd
	cp [hl]                                          ; $5a0b: $be
	ld a, c                                          ; $5a0c: $79
	ld [hl], l                                       ; $5a0d: $75
	db $dd                                           ; $5a0e: $dd
	ld b, b                                          ; $5a0f: $40
	sbc e                                            ; $5a10: $9b
	ld h, b                                          ; $5a11: $60
	ld b, b                                          ; $5a12: $40
	jr nz, jr_057_5a35                               ; $5a13: $20 $20

	call c, $dec0                                    ; $5a15: $dc $c0 $de
	ldh [$e1], a                                     ; $5a18: $e0 $e1
	sub a                                            ; $5a1a: $97
	cp $7e                                           ; $5a1b: $fe $7e
	ld a, [hl]                                       ; $5a1d: $7e
	inc a                                            ; $5a1e: $3c
	inc a                                            ; $5a1f: $3c
	inc e                                            ; $5a20: $1c
	inc e                                            ; $5a21: $1c
	inc c                                            ; $5a22: $0c
	jp c, $8008                                      ; $5a23: $da $08 $80

	jr jr_057_5a47                                   ; $5a26: $18 $1f

	scf                                              ; $5a28: $37
	ccf                                              ; $5a29: $3f
	cpl                                              ; $5a2a: $2f
	ld a, a                                          ; $5a2b: $7f
	ld e, a                                          ; $5a2c: $5f
	ld a, a                                          ; $5a2d: $7f
	cp [hl]                                          ; $5a2e: $be
	jr jr_057_5a49                                   ; $5a2f: $18 $18

	jr nc, jr_057_5a63                               ; $5a31: $30 $30

	jr nz, jr_057_5a95                               ; $5a33: $20 $60

jr_057_5a35:
	ld b, b                                          ; $5a35: $40
	ld b, c                                          ; $5a36: $41
	rst SubAFromBC                                          ; $5a37: $e7
	rst JumpTable                                          ; $5a38: $c7
	rst GetHLinHL                                          ; $5a39: $cf
	xor [hl]                                         ; $5a3a: $ae
	sbc [hl]                                         ; $5a3b: $9e
	ld e, [hl]                                       ; $5a3c: $5e
	ld e, l                                          ; $5a3d: $5d
	db $dd                                           ; $5a3e: $dd
	jr jr_057_5a79                                   ; $5a3f: $18 $38

	jr nc, @+$73                                     ; $5a41: $30 $71

	ld h, c                                          ; $5a43: $61
	pop hl                                           ; $5a44: $e1
	rst SubAFromDE                                          ; $5a45: $df
	db $e3                                           ; $5a46: $e3

jr_057_5a47:
	sbc $7f                                          ; $5a47: $de $7f

jr_057_5a49:
	db $dd                                           ; $5a49: $dd
	rst $38                                          ; $5a4a: $ff
	ld [hl], c                                       ; $5a4b: $71
	inc c                                            ; $5a4c: $0c
	ld [hl], e                                       ; $5a4d: $73
	rst FarCall                                          ; $5a4e: $f7
	db $db                                           ; $5a4f: $db
	cp $dc                                           ; $5a50: $fe $dc
	rst $38                                          ; $5a52: $ff
	add b                                            ; $5a53: $80
	rst FarCall                                          ; $5a54: $f7
	db $e3                                           ; $5a55: $e3
	add e                                            ; $5a56: $83
	ld bc, $3c3c                                     ; $5a57: $01 $3c $3c
	ld a, b                                          ; $5a5a: $78
	ld a, b                                          ; $5a5b: $78
	ld [hl], c                                       ; $5a5c: $71
	ld sp, $3030                                     ; $5a5d: $31 $30 $30
	ldh [$e0], a                                     ; $5a60: $e0 $e0
	ret nz                                           ; $5a62: $c0

jr_057_5a63:
	ret nz                                           ; $5a63: $c0

	pop bc                                           ; $5a64: $c1
	pop hl                                           ; $5a65: $e1
	ldh [$e0], a                                     ; $5a66: $e0 $e0
	ld l, [hl]                                       ; $5a68: $6e
	ld e, h                                          ; $5a69: $5c
	ret c                                            ; $5a6a: $d8

	cp c                                             ; $5a6b: $b9
	cp a                                             ; $5a6c: $bf
	cp $fe                                           ; $5a6d: $fe $fe
	ccf                                              ; $5a6f: $3f
	ld b, [hl]                                       ; $5a70: $46
	ld c, h                                          ; $5a71: $4c
	sbc b                                            ; $5a72: $98
	adc d                                            ; $5a73: $8a
	sub c                                            ; $5a74: $91
	ld [hl-], a                                      ; $5a75: $32
	ld [hl+], a                                      ; $5a76: $22
	db $e4                                           ; $5a77: $e4
	inc h                                            ; $5a78: $24

jr_057_5a79:
	jr nz, jr_057_5ac7                               ; $5a79: $20 $4c

	adc h                                            ; $5a7b: $8c
	add hl, de                                       ; $5a7c: $19
	inc sp                                           ; $5a7d: $33
	ld [hl], a                                       ; $5a7e: $77
	rst AddAOntoHL                                          ; $5a7f: $ef
	rst $38                                          ; $5a80: $ff
	jr nz, jr_057_5ac3                               ; $5a81: $20 $40

	adc b                                            ; $5a83: $88
	ld de, $6432                                     ; $5a84: $11 $32 $64
	ret z                                            ; $5a87: $c8

	sub b                                            ; $5a88: $90
	ld [hl], c                                       ; $5a89: $71
	sbc b                                            ; $5a8a: $98
	ld [hl], h                                       ; $5a8b: $74
	or b                                             ; $5a8c: $b0
	ld a, a                                          ; $5a8d: $7f
	dec b                                            ; $5a8e: $05
	ld a, [hl]                                       ; $5a8f: $7e
	ld d, d                                          ; $5a90: $52
	ld a, h                                          ; $5a91: $7c
	xor a                                            ; $5a92: $af
	sbc h                                            ; $5a93: $9c
	ld a, a                                          ; $5a94: $7f

jr_057_5a95:
	db $e3                                           ; $5a95: $e3
	rrca                                             ; $5a96: $0f
	ld a, e                                          ; $5a97: $7b
	rst AddAOntoHL                                          ; $5a98: $ef
	sbc $fb                                          ; $5a99: $de $fb
	ld a, c                                          ; $5a9b: $79
	or h                                             ; $5a9c: $b4
	ld a, l                                          ; $5a9d: $7d
	or e                                             ; $5a9e: $b3
	sbc h                                            ; $5a9f: $9c
	dec e                                            ; $5aa0: $1d
	adc l                                            ; $5aa1: $8d
	db $ec                                           ; $5aa2: $ec
	halt                                             ; $5aa3: $76
	sbc e                                            ; $5aa4: $9b
	ld a, [hl]                                       ; $5aa5: $7e
	jp c, Jump_057_7e9d                              ; $5aa6: $da $9d $7e

	ld h, a                                          ; $5aa9: $67
	jp c, $9eff                                      ; $5aaa: $da $ff $9e

	ld sp, hl                                        ; $5aad: $f9
	cp $7e                                           ; $5aae: $fe $7e
	sbc h                                            ; $5ab0: $9c
	sbc l                                            ; $5ab1: $9d
	db $fc                                           ; $5ab2: $fc
	ldh a, [rSVBK]                                   ; $5ab3: $f0 $70
	ret nz                                           ; $5ab5: $c0

	ld a, [hl]                                       ; $5ab6: $7e
	call $bf7e                                       ; $5ab7: $cd $7e $bf
	ld a, [hl]                                       ; $5aba: $7e
	adc h                                            ; $5abb: $8c
	halt                                             ; $5abc: $76
	sub c                                            ; $5abd: $91
	ld [hl], e                                       ; $5abe: $73
	ld l, e                                          ; $5abf: $6b
	sub e                                            ; $5ac0: $93
	db $fd                                           ; $5ac1: $fd
	cpl                                              ; $5ac2: $2f

jr_057_5ac3:
	scf                                              ; $5ac3: $37
	ccf                                              ; $5ac4: $3f
	ld a, l                                          ; $5ac5: $7d
	adc e                                            ; $5ac6: $8b

jr_057_5ac7:
	cp [hl]                                          ; $5ac7: $be
	ld a, l                                          ; $5ac8: $7d
	sub $79                                          ; $5ac9: $d6 $79
	ld a, [$75cf]                                    ; $5acb: $fa $cf $75
	ld [hl], b                                       ; $5ace: $70
	call c, $92ff                                    ; $5acf: $dc $ff $92
	dec sp                                           ; $5ad2: $3b
	ld [hl], a                                       ; $5ad3: $77
	db $eb                                           ; $5ad4: $eb
	rst $38                                          ; $5ad5: $ff
	ret c                                            ; $5ad6: $d8

	rst FarCall                                          ; $5ad7: $f7
	rst FarCall                                          ; $5ad8: $f7
	cp a                                             ; $5ad9: $bf
	db $fc                                           ; $5ada: $fc
	ld hl, sp-$0c                                    ; $5adb: $f8 $f4
	ldh [$e7], a                                     ; $5add: $e0 $e7
	sbc $c8                                          ; $5adf: $de $c8
	ld a, a                                          ; $5ae1: $7f
	ld c, a                                          ; $5ae2: $4f
	sbc c                                            ; $5ae3: $99
	db $fd                                           ; $5ae4: $fd
	ei                                               ; $5ae5: $fb
	ld a, e                                          ; $5ae6: $7b
	jp nz, Jump_057_7fff                             ; $5ae7: $c2 $ff $7f

	ld a, d                                          ; $5aea: $7a
	ld d, h                                          ; $5aeb: $54
	add b                                            ; $5aec: $80
	ld b, $c4                                        ; $5aed: $06 $c4
	ccf                                              ; $5aef: $3f
	nop                                              ; $5af0: $00
	add b                                            ; $5af1: $80
	ld a, [hl]                                       ; $5af2: $7e
	cp [hl]                                          ; $5af3: $be

jr_057_5af4:
	rst $38                                          ; $5af4: $ff
	sbc $fd                                          ; $5af5: $de $fd
	db $eb                                           ; $5af7: $eb
	ld a, a                                          ; $5af8: $7f
	rst $38                                          ; $5af9: $ff
	cp $7f                                           ; $5afa: $fe $7f
	ccf                                              ; $5afc: $3f
	ccf                                              ; $5afd: $3f
	ld e, $1c                                        ; $5afe: $1e $1c
	adc b                                            ; $5b00: $88
	adc b                                            ; $5b01: $88
	jr nz, jr_057_5af4                               ; $5b02: $20 $f0

	jr nz, @-$0e                                     ; $5b04: $20 $f0

	ldh a, [$f8]                                     ; $5b06: $f0 $f8
	ldh a, [$f8]                                     ; $5b08: $f0 $f8
	ldh [$e0], a                                     ; $5b0a: $e0 $e0
	sbc [hl]                                         ; $5b0c: $9e
	ldh a, [$de]                                     ; $5b0d: $f0 $de
	db $10                                           ; $5b0f: $10
	sbc l                                            ; $5b10: $9d
	jr jr_057_5b1b                                   ; $5b11: $18 $08

	pop hl                                           ; $5b13: $e1
	db $dd                                           ; $5b14: $dd
	inc e                                            ; $5b15: $1c
	ld a, [hl]                                       ; $5b16: $7e
	ret nz                                           ; $5b17: $c0

	sbc l                                            ; $5b18: $9d
	inc a                                            ; $5b19: $3c
	dec a                                            ; $5b1a: $3d

jr_057_5b1b:
	call c, $df18                                    ; $5b1b: $dc $18 $df
	jr c, @-$72                                      ; $5b1e: $38 $8c

	add hl, sp                                       ; $5b20: $39
	cp [hl]                                          ; $5b21: $be
	cp [hl]                                          ; $5b22: $be
	db $fd                                           ; $5b23: $fd
	db $dd                                           ; $5b24: $dd
	db $ed                                           ; $5b25: $ed
	cp e                                             ; $5b26: $bb
	ei                                               ; $5b27: $fb
	ld [hl], a                                       ; $5b28: $77
	pop bc                                           ; $5b29: $c1
	pop bc                                           ; $5b2a: $c1
	jp $f3e3                                         ; $5b2b: $c3 $e3 $f3


	rst JumpTable                                          ; $5b2e: $c7
	add a                                            ; $5b2f: $87
	adc a                                            ; $5b30: $8f
	cp l                                             ; $5b31: $bd
	cp l                                             ; $5b32: $bd
	sbc $bb                                          ; $5b33: $de $bb
	rst SubAFromDE                                          ; $5b35: $df
	ld a, e                                          ; $5b36: $7b
	sbc h                                            ; $5b37: $9c
	ld [hl], a                                       ; $5b38: $77
	jp $dec3                                         ; $5b39: $c3 $c3 $de


	rst JumpTable                                          ; $5b3c: $c7
	rst SubAFromDE                                          ; $5b3d: $df
	add a                                            ; $5b3e: $87
	sbc l                                            ; $5b3f: $9d
	adc a                                            ; $5b40: $8f
	db $fd                                           ; $5b41: $fd
	ld a, e                                          ; $5b42: $7b
	ld h, [hl]                                       ; $5b43: $66
	ld a, h                                          ; $5b44: $7c
	jp $f99d                                         ; $5b45: $c3 $9d $f9


	ei                                               ; $5b48: $fb
	ld a, c                                          ; $5b49: $79
	and d                                            ; $5b4a: $a2
	sbc [hl]                                         ; $5b4b: $9e
	ld hl, sp+$62                                    ; $5b4c: $f8 $62
	cp e                                             ; $5b4e: $bb
	sbc h                                            ; $5b4f: $9c
	ld a, e                                          ; $5b50: $7b
	rst $38                                          ; $5b51: $ff
	rst $38                                          ; $5b52: $ff
	ld [hl], c                                       ; $5b53: $71
	ld [hl-], a                                      ; $5b54: $32
	sub a                                            ; $5b55: $97
	add a                                            ; $5b56: $87
	rst $38                                          ; $5b57: $ff
	rst $38                                          ; $5b58: $ff
	db $10                                           ; $5b59: $10
	adc b                                            ; $5b5a: $88
	rst JumpTable                                          ; $5b5b: $c7
	db $e3                                           ; $5b5c: $e3
	pop af                                           ; $5b5d: $f1
	sbc $ff                                          ; $5b5e: $de $ff
	ld a, a                                          ; $5b60: $7f
	ld a, [hl]                                       ; $5b61: $7e
	sbc l                                            ; $5b62: $9d
	ld a, h                                          ; $5b63: $7c
	ccf                                              ; $5b64: $3f
	halt                                             ; $5b65: $76
	db $fc                                           ; $5b66: $fc
	sbc [hl]                                         ; $5b67: $9e
	ld a, a                                          ; $5b68: $7f
	ld a, d                                          ; $5b69: $7a
	and h                                            ; $5b6a: $a4
	sbc c                                            ; $5b6b: $99
	rrca                                             ; $5b6c: $0f
	ret nz                                           ; $5b6d: $c0

	rst $38                                          ; $5b6e: $ff
	rst $38                                          ; $5b6f: $ff
	add hl, sp                                       ; $5b70: $39
	ld c, [hl]                                       ; $5b71: $4e
	ld a, b                                          ; $5b72: $78
	ld d, e                                          ; $5b73: $53
	ld a, d                                          ; $5b74: $7a
	sub c                                            ; $5b75: $91
	sbc d                                            ; $5b76: $9a
	rst AddAOntoHL                                          ; $5b77: $ef
	rlca                                             ; $5b78: $07
	ld c, $f9                                        ; $5b79: $0e $f9
	add e                                            ; $5b7b: $83
	ld a, c                                          ; $5b7c: $79
	sbc d                                            ; $5b7d: $9a
	sub d                                            ; $5b7e: $92
	ldh [rSB], a                                     ; $5b7f: $e0 $01
	rlca                                             ; $5b81: $07
	ld a, a                                          ; $5b82: $7f
	cp $f8                                           ; $5b83: $fe $f8
	pop bc                                           ; $5b85: $c1
	rrca                                             ; $5b86: $0f
	call c, $bc9c                                    ; $5b87: $dc $9c $bc
	inc a                                            ; $5b8a: $3c
	ld a, h                                          ; $5b8b: $7c
	ld a, e                                          ; $5b8c: $7b
	or a                                             ; $5b8d: $b7
	db $dd                                           ; $5b8e: $dd
	db $fc                                           ; $5b8f: $fc
	ld a, e                                          ; $5b90: $7b
	ld sp, hl                                        ; $5b91: $f9
	add b                                            ; $5b92: $80
	ldh a, [$fb]                                     ; $5b93: $f0 $fb
	dec l                                            ; $5b95: $2d
	cp $de                                           ; $5b96: $fe $de
	xor $f7                                          ; $5b98: $ee $f7
	rst $38                                          ; $5b9a: $ff
	db $fd                                           ; $5b9b: $fd
	db $fc                                           ; $5b9c: $fc
	sbc $83                                          ; $5b9d: $de $83
	pop hl                                           ; $5b9f: $e1
	pop af                                           ; $5ba0: $f1
	ld sp, hl                                        ; $5ba1: $f9
	ld sp, hl                                        ; $5ba2: $f9
	ld a, e                                          ; $5ba3: $7b
	ld e, l                                          ; $5ba4: $5d
	ld a, e                                          ; $5ba5: $7b
	rst $38                                          ; $5ba6: $ff
	cp l                                             ; $5ba7: $bd
	or a                                             ; $5ba8: $b7
	rst AddAOntoHL                                          ; $5ba9: $ef
	rst $38                                          ; $5baa: $ff
	rst $38                                          ; $5bab: $ff
	db $e3                                           ; $5bac: $e3
	rst JumpTable                                          ; $5bad: $c7
	rst GetHLinHL                                          ; $5bae: $cf
	sbc $f8                                          ; $5baf: $de $f8
	di                                               ; $5bb1: $f3
	sub l                                            ; $5bb2: $95
	rst JumpTable                                          ; $5bb3: $c7
	rrca                                             ; $5bb4: $0f
	ldh a, [$c0]                                     ; $5bb5: $f0 $c0
	pop hl                                           ; $5bb7: $e1
	add c                                            ; $5bb8: $81
	sub a                                            ; $5bb9: $97
	add e                                            ; $5bba: $83
	rrca                                             ; $5bbb: $0f
	rrca                                             ; $5bbc: $0f
	ld a, d                                          ; $5bbd: $7a
	ld h, b                                          ; $5bbe: $60
	sbc d                                            ; $5bbf: $9a
	ld b, e                                          ; $5bc0: $43
	add e                                            ; $5bc1: $83
	add a                                            ; $5bc2: $87
	rlca                                             ; $5bc3: $07
	ld b, $d9                                        ; $5bc4: $06 $d9
	rst $38                                          ; $5bc6: $ff
	ld a, l                                          ; $5bc7: $7d
	adc a                                            ; $5bc8: $8f
	sbc b                                            ; $5bc9: $98
	ei                                               ; $5bca: $fb
	rst GetHLinHL                                          ; $5bcb: $cf
	ld a, a                                          ; $5bcc: $7f
	ld e, a                                          ; $5bcd: $5f
	ld b, a                                          ; $5bce: $47
	ccf                                              ; $5bcf: $3f
	ccf                                              ; $5bd0: $3f
	ld a, c                                          ; $5bd1: $79
	ld e, a                                          ; $5bd2: $5f
	sbc l                                            ; $5bd3: $9d
	rst $38                                          ; $5bd4: $ff
	rst AddAOntoHL                                          ; $5bd5: $ef
	ld e, [hl]                                       ; $5bd6: $5e
	ld hl, $ff90                                     ; $5bd7: $21 $90 $ff
	xor $ef                                          ; $5bda: $ee $ef
	ld a, a                                          ; $5bdc: $7f
	rst FarCall                                          ; $5bdd: $f7
	rst SubAFromDE                                          ; $5bde: $df
	xor l                                            ; $5bdf: $ad
	rst $38                                          ; $5be0: $ff
	adc b                                            ; $5be1: $88
	sub c                                            ; $5be2: $91
	sub b                                            ; $5be3: $90
	sub b                                            ; $5be4: $90
	rrca                                             ; $5be5: $0f
	jr nz, jr_057_5c3a                               ; $5be6: $20 $52

	ld a, b                                          ; $5be8: $78
	sub b                                            ; $5be9: $90
	add b                                            ; $5bea: $80
	xor $bf                                          ; $5beb: $ee $bf
	cp [hl]                                          ; $5bed: $be
	call $b77f                                       ; $5bee: $cd $7f $b7
	nop                                              ; $5bf1: $00
	nop                                              ; $5bf2: $00
	ld de, wPastTitleScreen                                     ; $5bf3: $11 $41 $c1
	ld a, $80                                        ; $5bf6: $3e $80
	ld c, b                                          ; $5bf8: $48
	rst $38                                          ; $5bf9: $ff
	ld a, a                                          ; $5bfa: $7f
	rst AddAOntoHL                                          ; $5bfb: $ef
	rst $38                                          ; $5bfc: $ff
	ei                                               ; $5bfd: $fb
	rst SubAFromDE                                          ; $5bfe: $df

jr_057_5bff:
	db $fd                                           ; $5bff: $fd
	cp $88                                           ; $5c00: $fe $88
	adc b                                            ; $5c02: $88
	jr jr_057_5c1d                                   ; $5c03: $18 $18

	inc e                                            ; $5c05: $1c
	inc a                                            ; $5c06: $3c
	ld a, $3f                                        ; $5c07: $3e $3f
	db $fc                                           ; $5c09: $fc
	sbc [hl]                                         ; $5c0a: $9e
	ld hl, sp-$22                                    ; $5c0b: $f8 $de
	db $fc                                           ; $5c0d: $fc
	sbc d                                            ; $5c0e: $9a
	db $f4                                           ; $5c0f: $f4
	ret nc                                           ; $5c10: $d0

	ret nz                                           ; $5c11: $c0

	ld [$780c], sp                                   ; $5c12: $08 $0c $78
	sub d                                            ; $5c15: $92
	sbc h                                            ; $5c16: $9c
	jr c, jr_057_5c79                                ; $5c17: $38 $60

	add b                                            ; $5c19: $80
	pop hl                                           ; $5c1a: $e1
	sbc d                                            ; $5c1b: $9a
	dec a                                            ; $5c1c: $3d

jr_057_5c1d:
	ccf                                              ; $5c1d: $3f
	ld a, $7f                                        ; $5c1e: $3e $7f
	ccf                                              ; $5c20: $3f
	sbc $7d                                          ; $5c21: $de $7d
	rst SubAFromDE                                          ; $5c23: $df
	add hl, sp                                       ; $5c24: $39
	sbc l                                            ; $5c25: $9d
	dec sp                                           ; $5c26: $3b
	ld a, $dd                                        ; $5c27: $3e $dd
	ld a, [hl]                                       ; $5c29: $7e
	sbc h                                            ; $5c2a: $9c
	rst FarCall                                          ; $5c2b: $f7
	rst AddAOntoHL                                          ; $5c2c: $ef
	xor $de                                          ; $5c2d: $ee $de
	sbc $9d                                          ; $5c2f: $de $9d
	cp h                                             ; $5c31: $bc
	cp l                                             ; $5c32: $bd
	ld a, b                                          ; $5c33: $78
	xor l                                            ; $5c34: $ad
	ld [hl], h                                       ; $5c35: $74
	ld e, a                                          ; $5c36: $5f
	sbc h                                            ; $5c37: $9c
	ld a, [hl]                                       ; $5c38: $7e
	ld [hl], a                                       ; $5c39: $77

jr_057_5c3a:
	ld [hl], a                                       ; $5c3a: $77
	db $db                                           ; $5c3b: $db
	rst FarCall                                          ; $5c3c: $f7
	rst SubAFromDE                                          ; $5c3d: $df
	adc a                                            ; $5c3e: $8f
	db $db                                           ; $5c3f: $db
	rrca                                             ; $5c40: $0f
	sub a                                            ; $5c41: $97
	rst FarCall                                          ; $5c42: $f7
	pop af                                           ; $5c43: $f1
	db $f4                                           ; $5c44: $f4
	ldh a, [$f3]                                     ; $5c45: $f0 $f3
	ldh a, [c]                                       ; $5c47: $f2
	ldh a, [$f9]                                     ; $5c48: $f0 $f9
	reti                                             ; $5c4a: $d9


	rst $38                                          ; $5c4b: $ff
	sub a                                            ; $5c4c: $97
	ccf                                              ; $5c4d: $3f
	jp hl                                            ; $5c4e: $e9


	ld e, a                                          ; $5c4f: $5f
	and c                                            ; $5c50: $a1
	and a                                            ; $5c51: $a7
	ld h, c                                          ; $5c52: $61
	jr z, jr_057_5bff                                ; $5c53: $28 $aa

	ld l, c                                          ; $5c55: $69
	ld a, l                                          ; $5c56: $7d
	add b                                            ; $5c57: $80
	rst $38                                          ; $5c58: $ff
	db $db                                           ; $5c59: $db
	rst SubAFromDE                                          ; $5c5a: $df
	db $ed                                           ; $5c5b: $ed
	db $ec                                           ; $5c5c: $ec
	rst GetHLinHL                                          ; $5c5d: $cf
	ld a, a                                          ; $5c5e: $7f
	cp $ff                                           ; $5c5f: $fe $ff
	rst SubAFromBC                                          ; $5c61: $e7
	and [hl]                                         ; $5c62: $a6
	inc de                                           ; $5c63: $13
	ld a, a                                          ; $5c64: $7f
	ldh a, [$80]                                     ; $5c65: $f0 $80
	rst AddAOntoHL                                          ; $5c67: $ef
	bit 3, a                                         ; $5c68: $cb $5f
	pop af                                           ; $5c6a: $f1
	db $dd                                           ; $5c6b: $dd
	ld a, [$f7df]                                    ; $5c6c: $fa $df $f7
	ei                                               ; $5c6f: $fb
	sbc $bf                                          ; $5c70: $de $bf
	xor a                                            ; $5c72: $af
	xor e                                            ; $5c73: $ab
	push af                                          ; $5c74: $f5
	add hl, sp                                       ; $5c75: $39
	rrca                                             ; $5c76: $0f
	sub [hl]                                         ; $5c77: $96
	rlca                                             ; $5c78: $07

jr_057_5c79:
	pop hl                                           ; $5c79: $e1
	rst $38                                          ; $5c7a: $ff
	cp a                                             ; $5c7b: $bf
	and [hl]                                         ; $5c7c: $a6
	ld e, a                                          ; $5c7d: $5f
	ld a, a                                          ; $5c7e: $7f
	ld a, a                                          ; $5c7f: $7f
	ld d, a                                          ; $5c80: $57
	halt                                             ; $5c81: $76
	and [hl]                                         ; $5c82: $a6
	sbc h                                            ; $5c83: $9c
	rst $38                                          ; $5c84: $ff
	cp b                                             ; $5c85: $b8
	or b                                             ; $5c86: $b0
	ld a, d                                          ; $5c87: $7a
	rst SubAFromBC                                          ; $5c88: $e7
	ld a, h                                          ; $5c89: $7c
	ld [hl+], a                                      ; $5c8a: $22
	rst SubAFromDE                                          ; $5c8b: $df
	xor $9b                                          ; $5c8c: $ee $9b
	cp $bf                                           ; $5c8e: $fe $bf
	rst SubAFromBC                                          ; $5c90: $e7
	ldh [$7b], a                                     ; $5c91: $e0 $7b
	inc d                                            ; $5c93: $14
	sbc e                                            ; $5c94: $9b
	ld e, $07                                        ; $5c95: $1e $07
	jp $def9                                         ; $5c97: $c3 $f9 $de


	ei                                               ; $5c9a: $fb
	rst SubAFromDE                                          ; $5c9b: $df
	ld a, a                                          ; $5c9c: $7f
	db $dd                                           ; $5c9d: $dd
	ccf                                              ; $5c9e: $3f
	sub [hl]                                         ; $5c9f: $96
	ld e, $8e                                        ; $5ca0: $1e $8e
	call z, $7764                                    ; $5ca2: $cc $64 $77
	scf                                              ; $5ca5: $37
	ccf                                              ; $5ca6: $3f
	ccf                                              ; $5ca7: $3f
	ld a, [hl]                                       ; $5ca8: $7e
	sbc $fc                                          ; $5ca9: $de $fc
	rst SubAFromDE                                          ; $5cab: $df
	ld sp, hl                                        ; $5cac: $f9
	sbc e                                            ; $5cad: $9b
	ldh a, [c]                                       ; $5cae: $f2
	ld e, $3c                                        ; $5caf: $1e $3c
	ld a, h                                          ; $5cb1: $7c
	sbc $f8                                          ; $5cb2: $de $f8
	sbc c                                            ; $5cb4: $99
	ldh a, [$e0]                                     ; $5cb5: $f0 $e0
	rrca                                             ; $5cb7: $0f
	ld e, a                                          ; $5cb8: $5f
	rra                                              ; $5cb9: $1f
	cp a                                             ; $5cba: $bf
	ld [hl], l                                       ; $5cbb: $75
	ld c, h                                          ; $5cbc: $4c
	rst SubAFromDE                                          ; $5cbd: $df
	rrca                                             ; $5cbe: $0f
	sbc d                                            ; $5cbf: $9a
	inc e                                            ; $5cc0: $1c
	rra                                              ; $5cc1: $1f
	ccf                                              ; $5cc2: $3f
	dec a                                            ; $5cc3: $3d
	ld [hl], a                                       ; $5cc4: $77
	ld l, c                                          ; $5cc5: $69
	ld b, d                                          ; $5cc6: $42
	ld a, e                                          ; $5cc7: $7b
	ld a, b                                          ; $5cc8: $78
	ld l, h                                          ; $5cc9: $6c
	add sp, -$62                                     ; $5cca: $e8 $9e
	rst $38                                          ; $5ccc: $ff
	ld b, d                                          ; $5ccd: $42
	nop                                              ; $5cce: $00
	rst SubAFromDE                                          ; $5ccf: $df
	ld h, [hl]                                       ; $5cd0: $66
	sbc [hl]                                         ; $5cd1: $9e
	ld h, $de                                        ; $5cd2: $26 $de
	ld h, [hl]                                       ; $5cd4: $66
	sbc e                                            ; $5cd5: $9b
	ld h, e                                          ; $5cd6: $63
	inc sp                                           ; $5cd7: $33
	inc sp                                           ; $5cd8: $33
	ld d, l                                          ; $5cd9: $55
	ld e, a                                          ; $5cda: $5f
	or $9d                                           ; $5cdb: $f6 $9d
	ld h, $62                                        ; $5cdd: $26 $62
	ld h, a                                          ; $5cdf: $67
	or $df                                           ; $5ce0: $f6 $df
	ld [hl+], a                                      ; $5ce2: $22
	sbc [hl]                                         ; $5ce3: $9e
	inc hl                                           ; $5ce4: $23
	db $db                                           ; $5ce5: $db
	inc sp                                           ; $5ce6: $33
	ld a, e                                          ; $5ce7: $7b
	or $df                                           ; $5ce8: $f6 $df
	inc sp                                           ; $5cea: $33
	sbc [hl]                                         ; $5ceb: $9e
	ld b, h                                          ; $5cec: $44
	ld h, e                                          ; $5ced: $63
	or $9e                                           ; $5cee: $f6 $9e
	ld b, e                                          ; $5cf0: $43
	ld c, a                                          ; $5cf1: $4f
	or $9c                                           ; $5cf2: $f6 $9c
	inc sp                                           ; $5cf4: $33
	ld [hl+], a                                      ; $5cf5: $22
	ld d, l                                          ; $5cf6: $55
	db $dd                                           ; $5cf7: $dd
	inc sp                                           ; $5cf8: $33
	ld [hl], a                                       ; $5cf9: $77
	db $f4                                           ; $5cfa: $f4
	ld [hl], e                                       ; $5cfb: $73
	or $9a                                           ; $5cfc: $f6 $9a
	inc [hl]                                         ; $5cfe: $34
	ld b, e                                          ; $5cff: $43
	inc [hl]                                         ; $5d00: $34
	dec h                                            ; $5d01: $25
	ld h, [hl]                                       ; $5d02: $66
	ld l, a                                          ; $5d03: $6f
	db $ec                                           ; $5d04: $ec
	sbc h                                            ; $5d05: $9c
	ld b, h                                          ; $5d06: $44
	ld b, d                                          ; $5d07: $42
	ld [hl+], a                                      ; $5d08: $22
	ld l, a                                          ; $5d09: $6f
	or $de                                           ; $5d0a: $f6 $de
	ld [hl+], a                                      ; $5d0c: $22
	ld a, a                                          ; $5d0d: $7f
	xor d                                            ; $5d0e: $aa
	rst $38                                          ; $5d0f: $ff
	adc d                                            ; $5d10: $8a
	db $fd                                           ; $5d11: $fd
	sbc e                                            ; $5d12: $9b
	ld bc, $0f03                                     ; $5d13: $01 $03 $0f
	rra                                              ; $5d16: $1f
	reti                                             ; $5d17: $d9


	rst $38                                          ; $5d18: $ff
	ld a, a                                          ; $5d19: $7f
	or $9e                                           ; $5d1a: $f6 $9e
	ccf                                              ; $5d1c: $3f
	sbc $ff                                          ; $5d1d: $de $ff
	sbc l                                            ; $5d1f: $9d
	db $fc                                           ; $5d20: $fc
	ld hl, sp-$27                                    ; $5d21: $f8 $d9
	rst $38                                          ; $5d23: $ff
	sbc d                                            ; $5d24: $9a
	cp $f8                                           ; $5d25: $fe $f8
	ldh a, [$c0]                                     ; $5d27: $f0 $c0
	add b                                            ; $5d29: $80
	ld a, e                                          ; $5d2a: $7b
	rst SubAFromDE                                          ; $5d2b: $df
	reti                                             ; $5d2c: $d9


	rst $38                                          ; $5d2d: $ff
	sub a                                            ; $5d2e: $97
	inc bc                                           ; $5d2f: $03
	rlca                                             ; $5d30: $07
	rra                                              ; $5d31: $1f
	ld a, $f8                                        ; $5d32: $3e $f8
	pop af                                           ; $5d34: $f1
	rst JumpTable                                          ; $5d35: $c7
	adc h                                            ; $5d36: $8c
	reti                                             ; $5d37: $d9


	rst $38                                          ; $5d38: $ff
	sub a                                            ; $5d39: $97
	di                                               ; $5d3a: $f3
	rst JumpTable                                          ; $5d3b: $c7
	sbc [hl]                                         ; $5d3c: $9e
	ld a, b                                          ; $5d3d: $78
	pop hl                                           ; $5d3e: $e1
	add e                                            ; $5d3f: $83
	ld c, $3b                                        ; $5d40: $0e $3b
	ld [hl], e                                       ; $5d42: $73
	call nc, $fc84                                   ; $5d43: $d4 $84 $fc
	pop af                                           ; $5d46: $f1
	rst JumpTable                                          ; $5d47: $c7
	ldh [hDisp0_OBP1], a                                     ; $5d48: $e0 $87
	dec e                                            ; $5d4a: $1d
	ld [hl], a                                       ; $5d4b: $77
	db $fc                                           ; $5d4c: $fc
	or b                                             ; $5d4d: $b0
	ret nz                                           ; $5d4e: $c0

	inc bc                                           ; $5d4f: $03
	rst $38                                          ; $5d50: $ff
	ld hl, sp-$1d                                    ; $5d51: $f8 $e3
	adc a                                            ; $5d53: $8f
	rra                                              ; $5d54: $1f
	ld a, a                                          ; $5d55: $7f
	rst $38                                          ; $5d56: $ff
	rst $38                                          ; $5d57: $ff
	ld hl, sp-$20                                    ; $5d58: $f8 $e0
	add e                                            ; $5d5a: $83
	ld c, $18                                        ; $5d5b: $0e $18
	ld [hl], c                                       ; $5d5d: $71
	rst JumpTable                                          ; $5d5e: $c7
	sbc l                                            ; $5d5f: $9d
	ld a, e                                          ; $5d60: $7b
	push af                                          ; $5d61: $f5
	ld [hl], e                                       ; $5d62: $73
	db $dd                                           ; $5d63: $dd
	sub a                                            ; $5d64: $97
	add hl, sp                                       ; $5d65: $39
	and $9c                                          ; $5d66: $e6 $9c
	ld sp, $beef                                     ; $5d68: $31 $ef $be
	ld a, l                                          ; $5d6b: $7d
	rst FarCall                                          ; $5d6c: $f7
	ld l, e                                          ; $5d6d: $6b
	call nz, $3896                                   ; $5d6e: $c4 $96 $38
	adc a                                            ; $5d71: $8f
	inc a                                            ; $5d72: $3c
	ld [hl], b                                       ; $5d73: $70
	jp $dc6f                                         ; $5d74: $c3 $6f $dc


	ld sp, hl                                        ; $5d77: $f9
	xor $dd                                          ; $5d78: $ee $dd
	rst $38                                          ; $5d7a: $ff
	sub e                                            ; $5d7b: $93

jr_057_5d7c:
	sbc a                                            ; $5d7c: $9f
	ccf                                              ; $5d7d: $3f
	ld a, [hl]                                       ; $5d7e: $7e
	pop af                                           ; $5d7f: $f1
	rst $38                                          ; $5d80: $ff
	ld a, $f9                                        ; $5d81: $3e $f9
	add $1b                                          ; $5d83: $c6 $1b
	ld l, a                                          ; $5d85: $6f
	ei                                               ; $5d86: $fb
	or $7b                                           ; $5d87: $f6 $7b
	push de                                          ; $5d89: $d5
	adc [hl]                                         ; $5d8a: $8e
	ld sp, hl                                        ; $5d8b: $f9
	rst SubAFromBC                                          ; $5d8c: $e7
	sbc a                                            ; $5d8d: $9f
	ld a, [hl]                                       ; $5d8e: $7e
	db $ec                                           ; $5d8f: $ec
	adc $77                                          ; $5d90: $ce $77
	rst SubAFromDE                                          ; $5d92: $df
	ld [$abdd], a                                    ; $5d93: $ea $dd $ab
	ld d, l                                          ; $5d96: $55
	xor d                                            ; $5d97: $aa
	pop af                                           ; $5d98: $f1
	adc a                                            ; $5d99: $8f
	jr c, jr_057_5d7c                                ; $5d9a: $38 $e0

	db $fd                                           ; $5d9c: $fd
	sub a                                            ; $5d9d: $97
	push af                                          ; $5d9e: $f5
	cp a                                             ; $5d9f: $bf
	ld d, l                                          ; $5da0: $55
	rst AddAOntoHL                                          ; $5da1: $ef
	ld d, l                                          ; $5da2: $55
	cp a                                             ; $5da3: $bf
	ld d, l                                          ; $5da4: $55
	xor $73                                          ; $5da5: $ee $73
	di                                               ; $5da7: $f3
	cp $97                                           ; $5da8: $fe $97
	sbc b                                            ; $5daa: $98
	call z, $f366                                    ; $5dab: $cc $66 $f3
	ld e, c                                          ; $5dae: $59
	db $fc                                           ; $5daf: $fc
	ld d, [hl]                                       ; $5db0: $56
	rst $38                                          ; $5db1: $ff
	push af                                          ; $5db2: $f5
	sbc e                                            ; $5db3: $9b
	add b                                            ; $5db4: $80
	ret nz                                           ; $5db5: $c0

	ld h, b                                          ; $5db6: $60
	scf                                              ; $5db7: $37
	ld a, [$079e]                                    ; $5db8: $fa $9e $07
	ld [hl], a                                       ; $5dbb: $77
	ld hl, $029b                                     ; $5dbc: $21 $9b $02
	rrca                                             ; $5dbf: $0f
	inc a                                            ; $5dc0: $3c
	di                                               ; $5dc1: $f3
	ld l, a                                          ; $5dc2: $6f
	add hl, de                                       ; $5dc3: $19
	ld a, a                                          ; $5dc4: $7f
	inc h                                            ; $5dc5: $24
	sub [hl]                                         ; $5dc6: $96
	inc hl                                           ; $5dc7: $23
	ld b, l                                          ; $5dc8: $45
	sbc e                                            ; $5dc9: $9b
	ld h, $cc                                        ; $5dca: $26 $cc
	add hl, sp                                       ; $5dcc: $39
	ldh a, [c]                                       ; $5dcd: $f2
	ld h, a                                          ; $5dce: $67
	ccf                                              ; $5dcf: $3f
	ld [hl], a                                       ; $5dd0: $77
	ld l, a                                          ; $5dd1: $6f
	ld a, a                                          ; $5dd2: $7f
	ld c, a                                          ; $5dd3: $4f
	add b                                            ; $5dd4: $80
	ld hl, sp-$14                                    ; $5dd5: $f8 $ec
	sbc c                                            ; $5dd7: $99
	inc [hl]                                         ; $5dd8: $34
	ld l, l                                          ; $5dd9: $6d
	jp c, $eb34                                      ; $5dda: $da $34 $eb

	ld d, h                                          ; $5ddd: $54
	ldh a, [$e0]                                     ; $5dde: $f0 $e0
	jp $0c86                                         ; $5de0: $c3 $86 $0c


	jr jr_057_5e15                                   ; $5de3: $18 $30

	db $e3                                           ; $5de5: $e3
	inc b                                            ; $5de6: $04
	pop af                                           ; $5de7: $f1
	rlca                                             ; $5de8: $07
	sub l                                            ; $5de9: $95
	ld a, [bc]                                       ; $5dea: $0a
	rst $38                                          ; $5deb: $ff
	ld [hl], c                                       ; $5dec: $71
	jp hl                                            ; $5ded: $e9


	inc bc                                           ; $5dee: $03
	nop                                              ; $5def: $00
	ld hl, sp+$0e                                    ; $5df0: $f8 $0e
	rlca                                             ; $5df2: $07
	inc bc                                           ; $5df3: $03
	add b                                            ; $5df4: $80
	rst $38                                          ; $5df5: $ff
	rra                                              ; $5df6: $1f
	ld d, b                                          ; $5df7: $50
	cp b                                             ; $5df8: $b8
	ld e, c                                          ; $5df9: $59
	and [hl]                                         ; $5dfa: $a6
	cp a                                             ; $5dfb: $bf
	jr c, jr_057_5e5a                                ; $5dfc: $38 $5c

	ei                                               ; $5dfe: $fb

Jump_057_5dff:
	or b                                             ; $5dff: $b0
	ret z                                            ; $5e00: $c8

	jp hl                                            ; $5e01: $e9


	ld a, a                                          ; $5e02: $7f
	ld a, a                                          ; $5e03: $7f
	rst $38                                          ; $5e04: $ff
	db $e3                                           ; $5e05: $e3
	db $fc                                           ; $5e06: $fc
	nop                                              ; $5e07: $00
	ld h, b                                          ; $5e08: $60
	add b                                            ; $5e09: $80
	ld a, h                                          ; $5e0a: $7c
	add b                                            ; $5e0b: $80
	ld h, b                                          ; $5e0c: $60
	jr @+$16                                         ; $5e0d: $18 $14

	nop                                              ; $5e0f: $00
	ld h, b                                          ; $5e10: $60
	ld hl, sp-$04                                    ; $5e11: $f8 $fc
	add b                                            ; $5e13: $80
	sbc h                                            ; $5e14: $9c

jr_057_5e15:
	ldh [$f8], a                                     ; $5e15: $e0 $f8
	db $ec                                           ; $5e17: $ec
	ld [hl], a                                       ; $5e18: $77
	cp b                                             ; $5e19: $b8
	ld a, a                                          ; $5e1a: $7f
	cp d                                             ; $5e1b: $ba
	ld a, a                                          ; $5e1c: $7f
	jp nz, $ffd9                                     ; $5e1d: $c2 $d9 $ff

	ld a, d                                          ; $5e20: $7a
	jp nc, $009a                                     ; $5e21: $d2 $9a $00

	inc bc                                           ; $5e24: $03
	rlca                                             ; $5e25: $07
	ld c, $18                                        ; $5e26: $0e $18
	reti                                             ; $5e28: $d9


	rst $38                                          ; $5e29: $ff
	sub a                                            ; $5e2a: $97
	ld e, $3c                                        ; $5e2b: $1e $3c
	ld [hl], c                                       ; $5e2d: $71
	jp $1c8e                                         ; $5e2e: $c3 $8e $1c


	ld a, b                                          ; $5e31: $78
	di                                               ; $5e32: $f3
	jp c, $96ff                                      ; $5e33: $da $ff $96

	db $fc                                           ; $5e36: $fc
	jr c, jr_057_5e9a                                ; $5e37: $38 $61

	rst JumpTable                                          ; $5e39: $c7
	ld c, $3d                                        ; $5e3a: $0e $3d
	ld [hl], a                                       ; $5e3c: $77
	db $ec                                           ; $5e3d: $ec
	cp b                                             ; $5e3e: $b8
	ld a, d                                          ; $5e3f: $7a
	and a                                            ; $5e40: $a7
	sbc l                                            ; $5e41: $9d
	pop af                                           ; $5e42: $f1
	jp $de7a                                         ; $5e43: $c3 $7a $de


	add [hl]                                         ; $5e46: $86
	cp $d8                                           ; $5e47: $fe $d8
	ld [hl], c                                       ; $5e49: $71
	jp nz, $178d                                     ; $5e4a: $c2 $8d $17

	ld l, $dc                                        ; $5e4d: $2e $dc
	rrca                                             ; $5e4f: $0f
	ccf                                              ; $5e50: $3f
	cp $fd                                           ; $5e51: $fe $fd
	di                                               ; $5e53: $f3
	rst AddAOntoHL                                          ; $5e54: $ef
	rst SubAFromDE                                          ; $5e55: $df
	ccf                                              ; $5e56: $3f
	ld c, [hl]                                       ; $5e57: $4e
	sbc h                                            ; $5e58: $9c
	ld [hl], c                                       ; $5e59: $71

jr_057_5e5a:
	db $e3                                           ; $5e5a: $e3
	add $1d                                          ; $5e5b: $c6 $1d
	ld sp, $bf67                                     ; $5e5d: $31 $67 $bf
	ld [hl], e                                       ; $5e60: $73
	ld h, b                                          ; $5e61: $60
	rst SubAFromDE                                          ; $5e62: $df
	rst $38                                          ; $5e63: $ff
	sub b                                            ; $5e64: $90
	inc sp                                           ; $5e65: $33
	ld l, a                                          ; $5e66: $6f
	sbc $7d                                          ; $5e67: $de $7d
	or $eb                                           ; $5e69: $f6 $eb
	call c, $fcff                                    ; $5e6b: $dc $ff $fc
	di                                               ; $5e6e: $f3
	rst SubAFromBC                                          ; $5e6f: $e7
	sbc [hl]                                         ; $5e70: $9e
	add hl, sp                                       ; $5e71: $39
	rst FarCall                                          ; $5e72: $f7
	rst AddAOntoHL                                          ; $5e73: $ef
	ld l, [hl]                                       ; $5e74: $6e
	cp e                                             ; $5e75: $bb
	rst SubAFromDE                                          ; $5e76: $df
	ldh a, [$99]                                     ; $5e77: $f0 $99
	sbc b                                            ; $5e79: $98
	pop hl                                           ; $5e7a: $e1
	add a                                            ; $5e7b: $87
	inc e                                            ; $5e7c: $1c
	ld [hl], c                                       ; $5e7d: $71
	rst GetHLinHL                                          ; $5e7e: $cf
	halt                                             ; $5e7f: $76
	ld d, l                                          ; $5e80: $55
	rst SubAFromDE                                          ; $5e81: $df
	rst $38                                          ; $5e82: $ff
	sbc [hl]                                         ; $5e83: $9e
	add e                                            ; $5e84: $83
	db $fd                                           ; $5e85: $fd
	sbc h                                            ; $5e86: $9c
	rst JumpTable                                          ; $5e87: $c7
	rra                                              ; $5e88: $1f
	ld a, [hl]                                       ; $5e89: $7e
	call c, $87ff                                    ; $5e8a: $dc $ff $87
	db $fd                                           ; $5e8d: $fd

jr_057_5e8e:
	ld a, [$fefc]                                    ; $5e8e: $fa $fc $fe
	rst $38                                          ; $5e91: $ff
	ld a, a                                          ; $5e92: $7f
	rra                                              ; $5e93: $1f
	rrca                                             ; $5e94: $0f
	adc b                                            ; $5e95: $88
	db $10                                           ; $5e96: $10
	jr nz, jr_057_5ed9                               ; $5e97: $20 $40

	add b                                            ; $5e99: $80

jr_057_5e9a:
	ldh [$f0], a                                     ; $5e9a: $e0 $f0
	db $fc                                           ; $5e9c: $fc
	dec d                                            ; $5e9d: $15
	xor d                                            ; $5e9e: $aa
	ld b, l                                          ; $5e9f: $45
	xor d                                            ; $5ea0: $aa
	ld de, $c4aa                                     ; $5ea1: $11 $aa $c4
	ld [$97f9], a                                    ; $5ea4: $ea $f9 $97
	ld d, l                                          ; $5ea7: $55
	cp e                                             ; $5ea8: $bb
	ld d, l                                          ; $5ea9: $55
	xor [hl]                                         ; $5eaa: $ae
	ld d, l                                          ; $5eab: $55
	xor e                                            ; $5eac: $ab
	ld d, l                                          ; $5ead: $55
	xor e                                            ; $5eae: $ab
	ld a, [$0180]                                    ; $5eaf: $fa $80 $01
	ld c, a                                          ; $5eb2: $4f
	pop af                                           ; $5eb3: $f1
	ld c, a                                          ; $5eb4: $4f
	sub a                                            ; $5eb5: $97
	cp b                                             ; $5eb6: $b8
	add $bb                                          ; $5eb7: $c6 $bb
	ld l, h                                          ; $5eb9: $6c
	rra                                              ; $5eba: $1f
	ld a, $70                                        ; $5ebb: $3e $70
	rst AddAOntoHL                                          ; $5ebd: $ef
	rst $38                                          ; $5ebe: $ff
	ld sp, hl                                        ; $5ebf: $f9
	rst JumpTable                                          ; $5ec0: $c7
	sbc a                                            ; $5ec1: $9f
	ei                                               ; $5ec2: $fb
	cp $e3                                           ; $5ec3: $fe $e3
	rst $38                                          ; $5ec5: $ff
	dec sp                                           ; $5ec6: $3b
	adc $25                                          ; $5ec7: $ce $25
	sbc d                                            ; $5ec9: $9a
	db $fc                                           ; $5eca: $fc
	ld bc, $ff1f                                     ; $5ecb: $01 $1f $ff
	db $fc                                           ; $5ece: $fc
	pop af                                           ; $5ecf: $f1
	sub l                                            ; $5ed0: $95
	jp $cc07                                         ; $5ed1: $c3 $07 $cc


	ld [hl], e                                       ; $5ed4: $73
	cp $0f                                           ; $5ed5: $fe $0f
	ld e, b                                          ; $5ed7: $58
	or h                                             ; $5ed8: $b4

jr_057_5ed9:
	ld l, l                                          ; $5ed9: $6d
	db $d3                                           ; $5eda: $d3
	ld [hl], e                                       ; $5edb: $73
	sub l                                            ; $5edc: $95
	sub l                                            ; $5edd: $95
	ei                                               ; $5ede: $fb
	di                                               ; $5edf: $f3
	rst AddAOntoHL                                          ; $5ee0: $ef
	pop bc                                           ; $5ee1: $c1
	add [hl]                                         ; $5ee2: $86
	rra                                              ; $5ee3: $1f
	ld hl, sp-$01                                    ; $5ee4: $f8 $ff
	or e                                             ; $5ee6: $b3
	ld a, e                                          ; $5ee7: $7b
	ld a, e                                          ; $5ee8: $7b
	ld h, [hl]                                       ; $5ee9: $66
	sbc $ff                                          ; $5eea: $de $ff
	sub h                                            ; $5eec: $94
	call z, $0187                                    ; $5eed: $cc $87 $01
	adc c                                            ; $5ef0: $89
	ld [hl-], a                                      ; $5ef1: $32
	call nz, $f219                                   ; $5ef2: $c4 $19 $f2
	db $f4                                           ; $5ef5: $f4
	ld hl, sp-$10                                    ; $5ef6: $f8 $f0
	ld [hl], e                                       ; $5ef8: $73
	ld l, b                                          ; $5ef9: $68
	sub a                                            ; $5efa: $97
	inc e                                            ; $5efb: $1c
	jr jr_057_5e8e                                   ; $5efc: $18 $90

	rst JumpTable                                          ; $5efe: $c7
	inc c                                            ; $5eff: $0c
	rst $38                                          ; $5f00: $ff
	jr c, jr_057_5f1f                                ; $5f01: $38 $1c

	sbc $0e                                          ; $5f03: $de $0e
	sbc $ff                                          ; $5f05: $de $ff
	sbc l                                            ; $5f07: $9d
	rra                                              ; $5f08: $1f
	rlca                                             ; $5f09: $07
	sbc $03                                          ; $5f0a: $de $03
	add b                                            ; $5f0c: $80
	dec a                                            ; $5f0d: $3d
	ld d, $aa                                        ; $5f0e: $16 $aa
	sub b                                            ; $5f10: $90
	ret nc                                           ; $5f11: $d0

	db $10                                           ; $5f12: $10
	ld d, b                                          ; $5f13: $50
	ret nz                                           ; $5f14: $c0

	add $e3                                          ; $5f15: $c6 $e3
	ld de, $8989                                     ; $5f17: $11 $89 $89
	ret                                              ; $5f1a: $c9


	adc c                                            ; $5f1b: $89
	sbc c                                            ; $5f1c: $99
	adc d                                            ; $5f1d: $8a
	and [hl]                                         ; $5f1e: $a6

jr_057_5f1f:
	push de                                          ; $5f1f: $d5
	sbc e                                            ; $5f20: $9b
	and e                                            ; $5f21: $a3
	add d                                            ; $5f22: $82
	add e                                            ; $5f23: $83
	add e                                            ; $5f24: $83
	halt                                             ; $5f25: $76
	ld e, d                                          ; $5f26: $5a
	dec hl                                           ; $5f27: $2b
	dec h                                            ; $5f28: $25
	dec d                                            ; $5f29: $15
	dec d                                            ; $5f2a: $15
	inc d                                            ; $5f2b: $14
	sub [hl]                                         ; $5f2c: $96
	inc d                                            ; $5f2d: $14
	ret nz                                           ; $5f2e: $c0

	nop                                              ; $5f2f: $00
	ld bc, $0c07                                     ; $5f30: $01 $07 $0c
	jr jr_057_5f68                                   ; $5f33: $18 $33

	ld b, a                                          ; $5f35: $47
	reti                                             ; $5f36: $d9


	rst $38                                          ; $5f37: $ff
	sub a                                            ; $5f38: $97
	ld h, e                                          ; $5f39: $63
	rst JumpTable                                          ; $5f3a: $c7
	sbc a                                            ; $5f3b: $9f
	inc a                                            ; $5f3c: $3c
	ld a, c                                          ; $5f3d: $79
	ldh [c], a                                       ; $5f3e: $e2
	jp Jump_057_7387                                 ; $5f3f: $c3 $87 $73


	or b                                             ; $5f42: $b0
	sub c                                            ; $5f43: $91
	db $fd                                           ; $5f44: $fd
	rst $38                                          ; $5f45: $ff
	rst $38                                          ; $5f46: $ff
	add $9d                                          ; $5f47: $c6 $9d
	scf                                              ; $5f49: $37
	sbc $7d                                          ; $5f4a: $de $7d
	ldh a, [c]                                       ; $5f4c: $f2
	push hl                                          ; $5f4d: $e5
	jp z, $e3f9                                      ; $5f4e: $ca $f9 $e3

	rst GetHLinHL                                          ; $5f51: $cf
	ld a, d                                          ; $5f52: $7a
	sbc $85                                          ; $5f53: $de $85
	ld a, [$f1f5]                                    ; $5f55: $fa $f5 $f1
	jp $2d96                                         ; $5f58: $c3 $96 $2d


	ld e, d                                          ; $5f5b: $5a
	or l                                             ; $5f5c: $b5
	ld l, a                                          ; $5f5d: $6f
	rst SubAFromDE                                          ; $5f5e: $df
	cp $fc                                           ; $5f5f: $fe $fc
	jp hl                                            ; $5f61: $e9


	db $d3                                           ; $5f62: $d3
	and a                                            ; $5f63: $a7
	ld c, a                                          ; $5f64: $4f
	sbc a                                            ; $5f65: $9f
	ccf                                              ; $5f66: $3f
	or c                                             ; $5f67: $b1

jr_057_5f68:
	ld h, e                                          ; $5f68: $63
	adc [hl]                                         ; $5f69: $8e
	add hl, de                                       ; $5f6a: $19
	di                                               ; $5f6b: $f3
	adc $bc                                          ; $5f6c: $ce $bc
	ldh a, [rBCPD]                                   ; $5f6e: $f0 $69
	and b                                            ; $5f70: $a0
	sbc [hl]                                         ; $5f71: $9e
	rst $38                                          ; $5f72: $ff
	ld a, d                                          ; $5f73: $7a
	db $ec                                           ; $5f74: $ec
	sbc d                                            ; $5f75: $9a
	db $fd                                           ; $5f76: $fd
	sbc a                                            ; $5f77: $9f
	dec sp                                           ; $5f78: $3b
	ld a, a                                          ; $5f79: $7f
	db $f4                                           ; $5f7a: $f4
	ld [hl], d                                       ; $5f7b: $72
	jp nz, $ec97                                     ; $5f7c: $c2 $97 $ec

jr_057_5f7f:
	rst SubAFromBC                                          ; $5f7f: $e7
	rst AddAOntoHL                                          ; $5f80: $ef
	rst $38                                          ; $5f81: $ff
	rst SubAFromDE                                          ; $5f82: $df
	rst $38                                          ; $5f83: $ff
	cp a                                             ; $5f84: $bf
	rst $38                                          ; $5f85: $ff
	ld a, d                                          ; $5f86: $7a
	push hl                                          ; $5f87: $e5
	adc a                                            ; $5f88: $8f
	ret nz                                           ; $5f89: $c0

	ccf                                              ; $5f8a: $3f
	add b                                            ; $5f8b: $80
	ld a, a                                          ; $5f8c: $7f
	ld bc, $07ff                                     ; $5f8d: $01 $ff $07
	rst $38                                          ; $5f90: $ff
	ld d, $90                                        ; $5f91: $16 $90
	sub e                                            ; $5f93: $93
	rla                                              ; $5f94: $17
	cpl                                              ; $5f95: $2f
	ld a, a                                          ; $5f96: $7f
	db $dd                                           ; $5f97: $dd
	inc c                                            ; $5f98: $0c
	ld l, [hl]                                       ; $5f99: $6e
	ld c, d                                          ; $5f9a: $4a
	sbc l                                            ; $5f9b: $9d
	ldh [c], a                                       ; $5f9c: $e2
	di                                               ; $5f9d: $f3
	ld [hl], a                                       ; $5f9e: $77
	jr z, jr_057_5f7f                                ; $5f9f: $28 $de

	db $fd                                           ; $5fa1: $fd
	sbc l                                            ; $5fa2: $9d
	db $ec                                           ; $5fa3: $ec
	ret nz                                           ; $5fa4: $c0

	cp $de                                           ; $5fa5: $fe $de
	ld [bc], a                                       ; $5fa7: $02
	sbc h                                            ; $5fa8: $9c
	inc de                                           ; $5fa9: $13
	db $e3                                           ; $5faa: $e3
	ldh a, [$de]                                     ; $5fab: $f0 $de
	ld hl, sp-$22                                    ; $5fad: $f8 $de
	db $fd                                           ; $5faf: $fd
	ld a, [hl]                                       ; $5fb0: $7e
	cp [hl]                                          ; $5fb1: $be
	sbc $07                                          ; $5fb2: $de $07
	sbc $03                                          ; $5fb4: $de $03
	add e                                            ; $5fb6: $83
	pop af                                           ; $5fb7: $f1
	ld a, [hl-]                                      ; $5fb8: $3a
	inc e                                            ; $5fb9: $1c
	ld e, $0f                                        ; $5fba: $1e $0f
	rrca                                             ; $5fbc: $0f
	rlca                                             ; $5fbd: $07
	inc bc                                           ; $5fbe: $03
	ret nz                                           ; $5fbf: $c0

	ldh [$f0], a                                     ; $5fc0: $e0 $f0
	ldh a, [$f8]                                     ; $5fc2: $f0 $f8
	db $fc                                           ; $5fc4: $fc
	db $fc                                           ; $5fc5: $fc
	rst $38                                          ; $5fc6: $ff
	ld [de], a                                       ; $5fc7: $12
	xor h                                            ; $5fc8: $ac
	ld c, c                                          ; $5fc9: $49
	xor d                                            ; $5fca: $aa
	inc d                                            ; $5fcb: $14
	cp b                                             ; $5fcc: $b8
	db $d3                                           ; $5fcd: $d3
	or $03                                           ; $5fce: $f6 $03
	rlca                                             ; $5fd0: $07
	rrca                                             ; $5fd1: $0f
	rrca                                             ; $5fd2: $0f
	sbc $1f                                          ; $5fd3: $de $1f
	sub d                                            ; $5fd5: $92
	sbc a                                            ; $5fd6: $9f
	ld [hl], d                                       ; $5fd7: $72
	ret nc                                           ; $5fd8: $d0

	ld b, a                                          ; $5fd9: $47
	ld hl, sp+$1f                                    ; $5fda: $f8 $1f
	rst $38                                          ; $5fdc: $ff
	sub e                                            ; $5fdd: $93
	ld h, $fc                                        ; $5fde: $26 $fc
	ldh [$80], a                                     ; $5fe0: $e0 $80
	rlca                                             ; $5fe2: $07
	db $dd                                           ; $5fe3: $dd
	rst $38                                          ; $5fe4: $ff
	sub a                                            ; $5fe5: $97
	dec [hl]                                         ; $5fe6: $35
	ret                                              ; $5fe7: $c9


	ld [hl-], a                                      ; $5fe8: $32
	push hl                                          ; $5fe9: $e5
	res 2, [hl]                                      ; $5fea: $cb $96
	inc l                                            ; $5fec: $2c
	reti                                             ; $5fed: $d9


	ld a, c                                          ; $5fee: $79
	sub l                                            ; $5fef: $95
	ld a, a                                          ; $5ff0: $7f
	ld e, l                                          ; $5ff1: $5d
	adc a                                            ; $5ff2: $8f
	ld sp, hl                                        ; $5ff3: $f9

Jump_057_5ff4:
	di                                               ; $5ff4: $f3
	rst SubAFromBC                                          ; $5ff5: $e7
	add d                                            ; $5ff6: $82
	rlca                                             ; $5ff7: $07
	dec c                                            ; $5ff8: $0d
	rra                                              ; $5ff9: $1f
	dec sp                                           ; $5ffa: $3b
	ld a, a                                          ; $5ffb: $7f
	rst $38                                          ; $5ffc: $ff
	or a                                             ; $5ffd: $b7
	rst $38                                          ; $5ffe: $ff
	cp $fe                                           ; $5fff: $fe $fe
	db $fc                                           ; $6001: $fc
	db $fc                                           ; $6002: $fc
	sbc $f8                                          ; $6003: $de $f8
	add h                                            ; $6005: $84
	rst AddAOntoHL                                          ; $6006: $ef
	cp e                                             ; $6007: $bb
	sub l                                            ; $6008: $95
	sbc [hl]                                         ; $6009: $9e
	ld [$0033], a                                    ; $600a: $ea $33 $00
	nop                                              ; $600d: $00
	ldh a, [$7c]                                     ; $600e: $f0 $7c
	ld d, $3f                                        ; $6010: $16 $3f
	ccf                                              ; $6012: $3f
	jr jr_057_6015                                   ; $6013: $18 $00

jr_057_6015:
	nop                                              ; $6015: $00
	ld h, b                                          ; $6016: $60
	ldh a, [$a0]                                     ; $6017: $f0 $a0
	ldh [$c0], a                                     ; $6019: $e0 $c0
	add c                                            ; $601b: $81
	ld c, $0f                                        ; $601c: $0e $0f
	ret nc                                           ; $601e: $d0

	ld b, b                                          ; $601f: $40
	ld b, b                                          ; $6020: $40
	halt                                             ; $6021: $76
	ld [hl], c                                       ; $6022: $71
	add b                                            ; $6023: $80
	nop                                              ; $6024: $00
	inc c                                            ; $6025: $0c
	dec e                                            ; $6026: $1d
	dec sp                                           ; $6027: $3b
	ld [hl], a                                       ; $6028: $77
	rst $38                                          ; $6029: $ff
	cp $be                                           ; $602a: $fe $be
	xor [hl]                                         ; $602c: $ae
	rlca                                             ; $602d: $07
	rlca                                             ; $602e: $07
	rrca                                             ; $602f: $0f
	rra                                              ; $6030: $1f
	dec sp                                           ; $6031: $3b
	inc bc                                           ; $6032: $03
	jp $bb73                                         ; $6033: $c3 $73 $bb


	add hl, de                                       ; $6036: $19
	ld h, [hl]                                       ; $6037: $66
	dec a                                            ; $6038: $3d
	ld d, l                                          ; $6039: $55
	ld a, a                                          ; $603a: $7f
	ld [$91ba], a                                    ; $603b: $ea $ba $91
	or e                                             ; $603e: $b3
	or e                                             ; $603f: $b3
	and $ee                                          ; $6040: $e6 $ee
	call z, $dddf                                    ; $6042: $cc $df $dd
	rst SubAFromDE                                          ; $6045: $df
	and e                                            ; $6046: $a3
	adc c                                            ; $6047: $89
	sub e                                            ; $6048: $93
	jp nz, $27ab                                     ; $6049: $c2 $ab $27

	add l                                            ; $604c: $85
	push bc                                          ; $604d: $c5
	inc d                                            ; $604e: $14
	inc d                                            ; $604f: $14
	inc h                                            ; $6050: $24
	dec h                                            ; $6051: $25
	ld b, l                                          ; $6052: $45
	ret                                              ; $6053: $c9


	res 1, e                                         ; $6054: $cb $8b
	sbc a                                            ; $6056: $9f
	inc a                                            ; $6057: $3c
	ld a, b                                          ; $6058: $78
	di                                               ; $6059: $f3
	rst JumpTable                                          ; $605a: $c7
	sbc a                                            ; $605b: $9f
	ccf                                              ; $605c: $3f
	db $fc                                           ; $605d: $fc
	reti                                             ; $605e: $d9


	rst $38                                          ; $605f: $ff
	ld a, l                                          ; $6060: $7d
	ld sp, hl                                        ; $6061: $f9
	sbc c                                            ; $6062: $99
	ld hl, sp-$0e                                    ; $6063: $f8 $f2
	pop bc                                           ; $6065: $c1
	adc d                                            ; $6066: $8a
	ld bc, $7704                                     ; $6067: $01 $04 $77
	add hl, hl                                       ; $606a: $29
	add b                                            ; $606b: $80
	cp $f5                                           ; $606c: $fe $f5
	cp $fb                                           ; $606e: $fe $fb
	dec d                                            ; $6070: $15
	dec hl                                           ; $6071: $2b
	ld d, [hl]                                       ; $6072: $56
	xor l                                            ; $6073: $ad
	ld e, b                                          ; $6074: $58
	or c                                             ; $6075: $b1
	ld h, e                                          ; $6076: $63
	ld b, a                                          ; $6077: $47
	ld [$a9d4], a                                    ; $6078: $ea $d4 $a9
	ld d, e                                          ; $607b: $53
	and a                                            ; $607c: $a7
	ld c, [hl]                                       ; $607d: $4e
	sbc h                                            ; $607e: $9c
	cp e                                             ; $607f: $bb
	cp e                                             ; $6080: $bb
	ld h, h                                          ; $6081: $64
	cp b                                             ; $6082: $b8
	ld [hl], e                                       ; $6083: $73
	rst SubAFromBC                                          ; $6084: $e7
	adc $9d                                          ; $6085: $ce $9d
	inc sp                                           ; $6087: $33
	ld a, a                                          ; $6088: $7f
	rst $38                                          ; $6089: $ff
	rst GetHLinHL                                          ; $608a: $cf
	adc l                                            ; $608b: $8d
	sbc a                                            ; $608c: $9f
	ld a, $7d                                        ; $608d: $3e $7d
	ei                                               ; $608f: $fb
	rst $38                                          ; $6090: $ff
	add a                                            ; $6091: $87
	inc d                                            ; $6092: $14
	xor c                                            ; $6093: $a9
	jp nc, $c0a4                                     ; $6094: $d2 $a4 $c0

	add b                                            ; $6097: $80
	jr nz, @+$01                                     ; $6098: $20 $ff

	rst AddAOntoHL                                          ; $609a: $ef
	rst SubAFromDE                                          ; $609b: $df
	ld a, $7c                                        ; $609c: $3e $7c
	ld a, d                                          ; $609e: $7a
	xor $9d                                          ; $609f: $ee $9d
	ld hl, sp-$80                                    ; $60a1: $f8 $80
	ei                                               ; $60a3: $fb
	ld h, a                                          ; $60a4: $67
	ld hl, sp+$7a                                    ; $60a5: $f8 $7a
	ld hl, sp-$66                                    ; $60a7: $f8 $9a
	inc bc                                           ; $60a9: $03
	ld b, $0d                                        ; $60aa: $06 $0d
	dec de                                           ; $60ac: $1b
	scf                                              ; $60ad: $37
	sbc $01                                          ; $60ae: $de $01
	ld a, b                                          ; $60b0: $78
	cp a                                             ; $60b1: $bf
	ld a, a                                          ; $60b2: $7f
	ld l, e                                          ; $60b3: $6b
	sub l                                            ; $60b4: $95
	ld c, $06                                        ; $60b5: $0e $06
	add e                                            ; $60b7: $83
	pop bc                                           ; $60b8: $c1
	ldh a, [$3c]                                     ; $60b9: $f0 $3c
	ld c, $07                                        ; $60bb: $0e $07
	pop af                                           ; $60bd: $f1
	ld sp, hl                                        ; $60be: $f9
	ld a, c                                          ; $60bf: $79

Jump_057_60c0:
	sbc b                                            ; $60c0: $98
	sbc $ff                                          ; $60c1: $de $ff
	sub e                                            ; $60c3: $93
	ld l, [hl]                                       ; $60c4: $6e

jr_057_60c5:
	ld h, $26                                        ; $60c5: $26 $26
	rla                                              ; $60c7: $17
	inc bc                                           ; $60c8: $03
	dec b                                            ; $60c9: $05
	ld [bc], a                                       ; $60ca: $02
	inc bc                                           ; $60cb: $03
	sub c                                            ; $60cc: $91
	reti                                             ; $60cd: $d9


	reti                                             ; $60ce: $d9


	add sp, $77                                      ; $60cf: $e8 $77
	xor $8d                                          ; $60d1: $ee $8d
	db $fd                                           ; $60d3: $fd
	ld a, l                                          ; $60d4: $7d
	ld a, l                                          ; $60d5: $7d
	add hl, sp                                       ; $60d6: $39
	cp c                                             ; $60d7: $b9
	ld e, c                                          ; $60d8: $59
	ld e, e                                          ; $60d9: $5b
	ld l, e                                          ; $60da: $6b
	inc bc                                           ; $60db: $03
	add e                                            ; $60dc: $83
	add e                                            ; $60dd: $83
	rst JumpTable                                          ; $60de: $c7
	rst JumpTable                                          ; $60df: $c7
	rst SubAFromBC                                          ; $60e0: $e7
	rst SubAFromBC                                          ; $60e1: $e7
	rst FarCall                                          ; $60e2: $f7
	ld h, b                                          ; $60e3: $60
	ld [hl], b                                       ; $60e4: $70
	sbc $78                                          ; $60e5: $de $78
	sbc d                                            ; $60e7: $9a
	ld a, c                                          ; $60e8: $79
	ld a, a                                          ; $60e9: $7f
	ld a, a                                          ; $60ea: $7f
	sbc a                                            ; $60eb: $9f
	adc a                                            ; $60ec: $8f
	sbc $87                                          ; $60ed: $de $87
	sub l                                            ; $60ef: $95
	add [hl]                                         ; $60f0: $86
	add b                                            ; $60f1: $80
	add b                                            ; $60f2: $80
	ld a, a                                          ; $60f3: $7f
	ld hl, $1921                                     ; $60f4: $21 $21 $19
	ret c                                            ; $60f7: $d8

	cp $ee                                           ; $60f8: $fe $ee
	ld [hl], l                                       ; $60fa: $75
	scf                                              ; $60fb: $37
	sub e                                            ; $60fc: $93
	rst FarCall                                          ; $60fd: $f7
	scf                                              ; $60fe: $37
	ld de, $1011                                     ; $60ff: $11 $11 $10
	ld c, l                                          ; $6102: $4d
	sbc [hl]                                         ; $6103: $9e
	db $fd                                           ; $6104: $fd
	ld sp, hl                                        ; $6105: $f9
	ldh a, [c]                                       ; $6106: $f2
	ldh a, [c]                                       ; $6107: $f2
	ld hl, sp+$7b                                    ; $6108: $f8 $7b
	ld b, b                                          ; $610a: $40
	rst SubAFromDE                                          ; $610b: $df
	cp $df                                           ; $610c: $fe $df
	db $fd                                           ; $610e: $fd
	ld a, c                                          ; $610f: $79
	db $10                                           ; $6110: $10
	sub [hl]                                         ; $6111: $96
	rst SubAFromBC                                          ; $6112: $e7
	rst SubAFromDE                                          ; $6113: $df
	ld a, l                                          ; $6114: $7d
	jp hl                                            ; $6115: $e9


	db $db                                           ; $6116: $db
	jp nc, $cf76                                     ; $6117: $d2 $76 $cf

	rra                                              ; $611a: $1f
	ld l, l                                          ; $611b: $6d
	inc hl                                           ; $611c: $23
	sub l                                            ; $611d: $95
	cp $5e                                           ; $611e: $fe $5e
	cp $be                                           ; $6120: $fe $be
	inc a                                            ; $6122: $3c
	inc a                                            ; $6123: $3c
	ld a, h                                          ; $6124: $7c
	db $f4                                           ; $6125: $f4
	db $10                                           ; $6126: $10
	or b                                             ; $6127: $b0
	call c, $9ef0                                    ; $6128: $dc $f0 $9e
	ld hl, sp+$7b                                    ; $612b: $f8 $7b
	ld a, [hl]                                       ; $612d: $7e
	sbc d                                            ; $612e: $9a
	inc c                                            ; $612f: $0c
	ld a, [hl+]                                      ; $6130: $2a
	jr nz, jr_057_6143                               ; $6131: $20 $10

	inc c                                            ; $6133: $0c
	cp $91                                           ; $6134: $fe $91
	ld b, $04                                        ; $6136: $06 $04
	jr nc, jr_057_6162                               ; $6138: $30 $28

	jr jr_057_60c5                                   ; $613a: $18 $89

	rrca                                             ; $613c: $0f
	ld b, $04                                        ; $613d: $06 $04
	rrca                                             ; $613f: $0f
	ld [bc], a                                       ; $6140: $02
	ld [bc], a                                       ; $6141: $02
	nop                                              ; $6142: $00

jr_057_6143:
	ld b, $7b                                        ; $6143: $06 $7b
	ld e, c                                          ; $6145: $59
	rst SubAFromDE                                          ; $6146: $df

jr_057_6147:
	rlca                                             ; $6147: $07
	rst $38                                          ; $6148: $ff
	add a                                            ; $6149: $87
	rst FarCall                                          ; $614a: $f7
	ld a, e                                          ; $614b: $7b
	db $fd                                           ; $614c: $fd
	or l                                             ; $614d: $b5
	db $d3                                           ; $614e: $d3
	pop af                                           ; $614f: $f1
	ld l, [hl]                                       ; $6150: $6e
	halt                                             ; $6151: $76
	dec de                                           ; $6152: $1b
	adc l                                            ; $6153: $8d
	add a                                            ; $6154: $87
	jp Jump_057_63e1                                 ; $6155: $c3 $e1 $63


	inc sp                                           ; $6158: $33
	rrca                                             ; $6159: $0f
	reti                                             ; $615a: $d9


	jp c, $acfe                                      ; $615b: $da $fe $ac

	xor l                                            ; $615e: $ad
	xor c                                            ; $615f: $a9
	bit 1, d                                         ; $6160: $cb $4a

jr_057_6162:
	sbc $bf                                          ; $6162: $de $bf
	halt                                             ; $6164: $76
	ld a, l                                          ; $6165: $7d
	add a                                            ; $6166: $87
	db $fd                                           ; $6167: $fd
	ld b, d                                          ; $6168: $42
	jp nz, Jump_057_48a4                             ; $6169: $c2 $a4 $48

	sub b                                            ; $616c: $90
	ret nc                                           ; $616d: $d0

	and b                                            ; $616e: $a0
	ldh [$9e], a                                     ; $616f: $e0 $9e
	ld e, $1c                                        ; $6171: $1e $1c
	jr c, jr_057_61e5                                ; $6173: $38 $70

	ld [hl], b                                       ; $6175: $70
	ldh [$e0], a                                     ; $6176: $e0 $e0
	ld hl, sp-$20                                    ; $6178: $f8 $e0
	jp $0e07                                         ; $617a: $c3 $07 $0e


	inc a                                            ; $617d: $3c
	ld a, b                                          ; $617e: $78
	ld [hl], c                                       ; $617f: $71
	ld b, b                                          ; $6180: $40
	db $dd                                           ; $6181: $dd
	rst $38                                          ; $6182: $ff
	sub a                                            ; $6183: $97
	jr nz, jr_057_6147                               ; $6184: $20 $c1

	add e                                            ; $6186: $83
	rlca                                             ; $6187: $07
	rrca                                             ; $6188: $0f
	ld e, $3d                                        ; $6189: $1e $3d
	ld a, d                                          ; $618b: $7a
	ld a, c                                          ; $618c: $79
	add e                                            ; $618d: $83
	adc [hl]                                         ; $618e: $8e
	ei                                               ; $618f: $fb
	rst FarCall                                          ; $6190: $f7
	rst AddAOntoHL                                          ; $6191: $ef
	rst SubAFromDE                                          ; $6192: $df
	rst $38                                          ; $6193: $ff
	rst GetHLinHL                                          ; $6194: $cf
	rst SubAFromDE                                          ; $6195: $df
	cp a                                             ; $6196: $bf
	ld a, [hl]                                       ; $6197: $7e
	ld l, l                                          ; $6198: $6d
	reti                                             ; $6199: $d9


	inc sp                                           ; $619a: $33
	ld h, [hl]                                       ; $619b: $66
	ld [hl], a                                       ; $619c: $77
	rst AddAOntoHL                                          ; $619d: $ef
	rst SubAFromDE                                          ; $619e: $df
	cp a                                             ; $619f: $bf
	ld [hl], a                                       ; $61a0: $77

jr_057_61a1:
	rrca                                             ; $61a1: $0f
	sub [hl]                                         ; $61a2: $96
	and $ac                                          ; $61a3: $e6 $ac
	ld e, c                                          ; $61a5: $59
	or d                                             ; $61a6: $b2
	ld h, h                                          ; $61a7: $64
	ret z                                            ; $61a8: $c8

	sub b                                            ; $61a9: $90
	jr nz, @+$01                                     ; $61aa: $20 $ff

	ld a, e                                          ; $61ac: $7b
	add sp, $75                                      ; $61ad: $e8 $75
	cp [hl]                                          ; $61af: $be
	ld a, h                                          ; $61b0: $7c
	sbc e                                            ; $61b1: $9b
	ei                                               ; $61b2: $fb
	ld a, [hl]                                       ; $61b3: $7e
	cp l                                             ; $61b4: $bd
	ld sp, hl                                        ; $61b5: $f9
	ld a, [hl]                                       ; $61b6: $7e
	jp c, $d07a                                      ; $61b7: $da $7a $d0

	sbc [hl]                                         ; $61ba: $9e
	ld [hl], $6b                                     ; $61bb: $36 $6b
	or $93                                           ; $61bd: $f6 $93
	inc c                                            ; $61bf: $0c
	ld l, a                                          ; $61c0: $6f
	db $db                                           ; $61c1: $db
	or a                                             ; $61c2: $b7
	ld l, d                                          ; $61c3: $6a
	db $dd                                           ; $61c4: $dd
	xor d                                            ; $61c5: $aa
	ld [hl], a                                       ; $61c6: $77
	xor d                                            ; $61c7: $aa
	add hl, de                                       ; $61c8: $19
	jr nc, jr_057_622b                               ; $61c9: $30 $60

	ld [hl], e                                       ; $61cb: $73
	db $dd                                           ; $61cc: $dd
	ld a, [hl]                                       ; $61cd: $7e
	jp nz, $e895                                     ; $61ce: $c2 $95 $e8

	db $e4                                           ; $61d1: $e4
	ldh a, [c]                                       ; $61d2: $f2
	cp c                                             ; $61d3: $b9
	ld a, h                                          ; $61d4: $7c
	xor [hl]                                         ; $61d5: $ae
	rst $38                                          ; $61d6: $ff
	rst $38                                          ; $61d7: $ff
	ld a, a                                          ; $61d8: $7f
	ccf                                              ; $61d9: $3f
	halt                                             ; $61da: $76
	and h                                            ; $61db: $a4
	sbc b                                            ; $61dc: $98
	add c                                            ; $61dd: $81
	pop hl                                           ; $61de: $e1
	ldh a, [$78]                                     ; $61df: $f0 $78
	inc a                                            ; $61e1: $3c
	ld e, $8f                                        ; $61e2: $1e $8f
	ld h, c                                          ; $61e4: $61

jr_057_61e5:
	nop                                              ; $61e5: $00
	sub a                                            ; $61e6: $97
	dec hl                                           ; $61e7: $2b
	xor e                                            ; $61e8: $ab
	cp a                                             ; $61e9: $bf
	sub a                                            ; $61ea: $97
	rst SubAFromDE                                          ; $61eb: $df
	rst SubAFromDE                                          ; $61ec: $df
	rst GetHLinHL                                          ; $61ed: $cf
	rst AddAOntoHL                                          ; $61ee: $ef
	sbc $f7                                          ; $61ef: $de $f7
	call c, Call_057_7fff                            ; $61f1: $dc $ff $7f
	jp c, $3fdf                                      ; $61f4: $da $df $3f

	sbc d                                            ; $61f7: $9a
	rra                                              ; $61f8: $1f
	ld b, $01                                        ; $61f9: $06 $01
	ld b, $80                                        ; $61fb: $06 $80
	sbc $c0                                          ; $61fd: $de $c0
	sbc e                                            ; $61ff: $9b
	ldh [$f9], a                                     ; $6200: $e0 $f9
	rst $38                                          ; $6202: $ff
	rst $38                                          ; $6203: $ff
	sbc $ef                                          ; $6204: $de $ef
	ld a, a                                          ; $6206: $7f
	ld l, e                                          ; $6207: $6b
	sbc h                                            ; $6208: $9c
	ld e, a                                          ; $6209: $5f
	cp [hl]                                          ; $620a: $be
	nop                                              ; $620b: $00
	sbc $10                                          ; $620c: $de $10
	rst SubAFromDE                                          ; $620e: $df
	jr nz, jr_057_61a1                               ; $620f: $20 $90

	ldh [$c1], a                                     ; $6211: $e0 $c1
	rst $38                                          ; $6213: $ff
	rst JumpTable                                          ; $6214: $c7
	or l                                             ; $6215: $b5
	ld a, d                                          ; $6216: $7a
	cp $f1                                           ; $6217: $fe $f1
	pop bc                                           ; $6219: $c1
	ld bc, $ff01                                     ; $621a: $01 $01 $ff
	call $0286                                       ; $621d: $cd $86 $02
	ld a, c                                          ; $6220: $79
	adc h                                            ; $6221: $8c
	ld a, [hl]                                       ; $6222: $7e
	nop                                              ; $6223: $00
	sub b                                            ; $6224: $90
	rst $38                                          ; $6225: $ff
	ccf                                              ; $6226: $3f
	ccf                                              ; $6227: $3f
	rrca                                             ; $6228: $0f
	rra                                              ; $6229: $1f
	rlca                                             ; $622a: $07

jr_057_622b:
	rrca                                             ; $622b: $0f
	rst $38                                          ; $622c: $ff
	rst $38                                          ; $622d: $ff
	inc a                                            ; $622e: $3c
	jr nz, jr_057_6241                               ; $622f: $20 $10

	db $10                                           ; $6231: $10
	ld [$7908], sp                                   ; $6232: $08 $08 $79
	adc e                                            ; $6235: $8b
	sub l                                            ; $6236: $95
	sbc $ef                                          ; $6237: $de $ef
	rst $38                                          ; $6239: $ff
	ldh [$c0], a                                     ; $623a: $e0 $c0
	cp b                                             ; $623c: $b8
	jr c, jr_057_627b                                ; $623d: $38 $3c

	inc a                                            ; $623f: $3c
	rra                                              ; $6240: $1f

jr_057_6241:
	cp $75                                           ; $6241: $fe $75
	sbc d                                            ; $6243: $9a
	sbc h                                            ; $6244: $9c
	ld a, a                                          ; $6245: $7f
	cp a                                             ; $6246: $bf
	rrca                                             ; $6247: $0f
	ld [hl], a                                       ; $6248: $77
	push af                                          ; $6249: $f5
	sub d                                            ; $624a: $92
	nop                                              ; $624b: $00
	add b                                            ; $624c: $80
	ld a, a                                          ; $624d: $7f
	rlca                                             ; $624e: $07
	rrca                                             ; $624f: $0f
	nop                                              ; $6250: $00
	nop                                              ; $6251: $00
	inc bc                                           ; $6252: $03
	rrca                                             ; $6253: $0f
	cp c                                             ; $6254: $b9
	rst FarCall                                          ; $6255: $f7
	push af                                          ; $6256: $f5
	rst $38                                          ; $6257: $ff
	ld a, e                                          ; $6258: $7b
	ld d, d                                          ; $6259: $52
	sub b                                            ; $625a: $90
	rlca                                             ; $625b: $07
	ld a, a                                          ; $625c: $7f
	ld sp, hl                                        ; $625d: $f9
	ei                                               ; $625e: $fb
	rst $38                                          ; $625f: $ff
	inc a                                            ; $6260: $3c
	db $fc                                           ; $6261: $fc
	db $fd                                           ; $6262: $fd
	db $fd                                           ; $6263: $fd
	jp c, $329a                                      ; $6264: $da $9a $32

	ld [hl], l                                       ; $6267: $75
	rra                                              ; $6268: $1f
	ld a, a                                          ; $6269: $7f
	ld [hl], l                                       ; $626a: $75
	ld c, a                                          ; $626b: $4f
	ld a, a                                          ; $626c: $7f
	jp $758a                                         ; $626d: $c3 $8a $75


	rla                                              ; $6270: $17
	ld e, e                                          ; $6271: $5b
	ld a, [hl]                                       ; $6272: $7e
	dec b                                            ; $6273: $05
	xor h                                            ; $6274: $ac
	xor e                                            ; $6275: $ab
	add hl, sp                                       ; $6276: $39
	db $db                                           ; $6277: $db
	db $db                                           ; $6278: $db
	sub a                                            ; $6279: $97
	sub a                                            ; $627a: $97

jr_057_627b:
	cp [hl]                                          ; $627b: $be
	ld a, $3c                                        ; $627c: $3e $3c
	ccf                                              ; $627e: $3f
	and b                                            ; $627f: $a0
	ld h, b                                          ; $6280: $60
	and b                                            ; $6281: $a0
	jr nz, jr_057_62c4                               ; $6282: $20 $40

	ld a, e                                          ; $6284: $7b
	dec bc                                           ; $6285: $0b
	sbc d                                            ; $6286: $9a
	ldh [$a0], a                                     ; $6287: $e0 $a0
	jr nz, @+$62                                     ; $6289: $20 $60

	ld b, b                                          ; $628b: $40
	ld a, e                                          ; $628c: $7b
	ld l, $7f                                        ; $628d: $2e $7f
	ld a, l                                          ; $628f: $7d
	ld a, d                                          ; $6290: $7a
	ret nc                                           ; $6291: $d0

	ld a, [hl]                                       ; $6292: $7e
	ld d, h                                          ; $6293: $54
	ld a, b                                          ; $6294: $78
	sbc [hl]                                         ; $6295: $9e
	db $db                                           ; $6296: $db
	rst $38                                          ; $6297: $ff
	sub a                                            ; $6298: $97
	db $f4                                           ; $6299: $f4
	jp hl                                            ; $629a: $e9


	db $d3                                           ; $629b: $d3
	and $cc                                          ; $629c: $e6 $cc
	sbc c                                            ; $629e: $99
	inc hl                                           ; $629f: $23
	ld b, [hl]                                       ; $62a0: $46
	reti                                             ; $62a1: $d9


	rst $38                                          ; $62a2: $ff
	ld a, a                                          ; $62a3: $7f
	db $f4                                           ; $62a4: $f4
	ld a, [hl]                                       ; $62a5: $7e
	call nz, $cc9b                                   ; $62a6: $c4 $9b $cc
	sbc d                                            ; $62a9: $9a
	jr nc, jr_057_6326                               ; $62aa: $30 $7a

	ld a, d                                          ; $62ac: $7a
	ld [hl], $76                                     ; $62ad: $36 $76
	pop de                                           ; $62af: $d1
	sbc $c0                                          ; $62b0: $de $c0
	ld a, a                                          ; $62b2: $7f
	adc c                                            ; $62b3: $89
	sbc e                                            ; $62b4: $9b
	nop                                              ; $62b5: $00
	and b                                            ; $62b6: $a0
	nop                                              ; $62b7: $00
	xor b                                            ; $62b8: $a8
	ld [hl], h                                       ; $62b9: $74
	sub b                                            ; $62ba: $90
	ld [hl], $d0                                     ; $62bb: $36 $d0
	sub [hl]                                         ; $62bd: $96
	ld l, l                                          ; $62be: $6d
	jp c, $6ab7                                      ; $62bf: $da $b7 $6a

	push de                                          ; $62c2: $d5
	xor d                                            ; $62c3: $aa

jr_057_62c4:
	ld d, l                                          ; $62c4: $55
	nop                                              ; $62c5: $00
	jr @+$6c                                         ; $62c6: $18 $6a

	ret nc                                           ; $62c8: $d0

	halt                                             ; $62c9: $76
	call nz, $559c                                   ; $62ca: $c4 $9c $55
	add d                                            ; $62cd: $82
	ld d, l                                          ; $62ce: $55
	ld hl, sp-$6a                                    ; $62cf: $f8 $96
	rst SubAFromDE                                          ; $62d1: $df
	xor e                                            ; $62d2: $ab
	ld [hl], a                                       ; $62d3: $77
	xor d                                            ; $62d4: $aa
	ld e, l                                          ; $62d5: $5d
	xor d                                            ; $62d6: $aa
	ld d, h                                          ; $62d7: $54
	jr nz, jr_057_62db                               ; $62d8: $20 $01

	db $fc                                           ; $62da: $fc

jr_057_62db:
	sbc d                                            ; $62db: $9a
	inc bc                                           ; $62dc: $03
	rra                                              ; $62dd: $1f
	and e                                            ; $62de: $a3
	pop de                                           ; $62df: $d1
	cp $7b                                           ; $62e0: $fe $7b
	xor c                                            ; $62e2: $a9
	rst SubAFromDE                                          ; $62e3: $df
	ldh [rPCM12], a                                  ; $62e4: $e0 $76
	sub $df                                          ; $62e6: $d6 $df
	ld a, a                                          ; $62e8: $7f
	ld a, d                                          ; $62e9: $7a
	ldh [$7b], a                                     ; $62ea: $e0 $7b
	rst FarCall                                          ; $62ec: $f7
	ld a, a                                          ; $62ed: $7f
	ld [hl], c                                       ; $62ee: $71
	rst SubAFromDE                                          ; $62ef: $df
	ld h, b                                          ; $62f0: $60
	reti                                             ; $62f1: $d9


	rst $38                                          ; $62f2: $ff
	sbc l                                            ; $62f3: $9d
	sbc h                                            ; $62f4: $9c
	ldh a, [$7b]                                     ; $62f5: $f0 $7b
	adc a                                            ; $62f7: $8f
	sbc h                                            ; $62f8: $9c
	ldh [$78], a                                     ; $62f9: $e0 $78
	ld c, $d9                                        ; $62fb: $0e $d9
	rst $38                                          ; $62fd: $ff
	ld sp, hl                                        ; $62fe: $f9
	reti                                             ; $62ff: $d9


	rst $38                                          ; $6300: $ff
	ld a, l                                          ; $6301: $7d
	dec l                                            ; $6302: $2d
	ld [hl], b                                       ; $6303: $70
	scf                                              ; $6304: $37
	ld a, h                                          ; $6305: $7c
	cp a                                             ; $6306: $bf
	rst SubAFromDE                                          ; $6307: $df
	ld hl, sp-$21                                    ; $6308: $f8 $df
	ldh a, [$df]                                     ; $630a: $f0 $df
	ldh [hDisp1_WX], a                                     ; $630c: $e0 $96
	ret nz                                           ; $630e: $c0

	adc a                                            ; $630f: $8f
	adc l                                            ; $6310: $8d
	adc h                                            ; $6311: $8c
	adc [hl]                                         ; $6312: $8e
	adc a                                            ; $6313: $8f
	adc a                                            ; $6314: $8f
	add h                                            ; $6315: $84
	add b                                            ; $6316: $80
	reti                                             ; $6317: $d9


	adc b                                            ; $6318: $88
	sbc $c0                                          ; $6319: $de $c0
	sbc d                                            ; $631b: $9a
	ld b, c                                          ; $631c: $41
	ld h, a                                          ; $631d: $67
	ld l, a                                          ; $631e: $6f
	ccf                                              ; $631f: $3f
	ld a, $f9                                        ; $6320: $3e $f9
	ld a, h                                          ; $6322: $7c
	call z, $ba98                                    ; $6323: $cc $98 $ba

jr_057_6326:
	db $f4                                           ; $6326: $f4
	jp hl                                            ; $6327: $e9


	set 1, a                                         ; $6328: $cb $cf
	sbc $1f                                          ; $632a: $de $1f
	ld a, e                                          ; $632c: $7b
	sub d                                            ; $632d: $92
	db $dd                                           ; $632e: $dd
	ld a, a                                          ; $632f: $7f
	sub a                                            ; $6330: $97
	call c, Call_057_4c23                            ; $6331: $dc $23 $4c
	or [hl]                                          ; $6334: $b6
	db $dd                                           ; $6335: $dd
	cp a                                             ; $6336: $bf
	ld [hl], a                                       ; $6337: $77
	sbc $de                                          ; $6338: $de $de
	rst $38                                          ; $633a: $ff
	add b                                            ; $633b: $80
	ld sp, hl                                        ; $633c: $f9
	db $e3                                           ; $633d: $e3
	jp $3f8f                                         ; $633e: $c3 $8f $3f


	or b                                             ; $6341: $b0
	ld a, [hl+]                                      ; $6342: $2a
	ld h, b                                          ; $6343: $60
	call nc, $2980                                   ; $6344: $d4 $80 $29
	ld b, c                                          ; $6347: $41
	add e                                            ; $6348: $83
	ld sp, hl                                        ; $6349: $f9
	pop af                                           ; $634a: $f1
	di                                               ; $634b: $f3
	db $e3                                           ; $634c: $e3
	rst SubAFromBC                                          ; $634d: $e7
	add $8e                                          ; $634e: $c6 $8e
	inc e                                            ; $6350: $1c
	ld a, [hl]                                       ; $6351: $7e
	ld a, b                                          ; $6352: $78
	ld [hl], b                                       ; $6353: $70
	cp b                                             ; $6354: $b8
	add sp, -$18                                     ; $6355: $e8 $e8
	ld e, h                                          ; $6357: $5c
	ld c, h                                          ; $6358: $4c
	ld a, $38                                        ; $6359: $3e $38
	ld a, [hl]                                       ; $635b: $7e
	ret nc                                           ; $635c: $d0

	sbc e                                            ; $635d: $9b
	ld h, b                                          ; $635e: $60
	ld l, b                                          ; $635f: $68
	ld hl, sp-$08                                    ; $6360: $f8 $f8
	pop af                                           ; $6362: $f1
	ld a, a                                          ; $6363: $7f
	adc b                                            ; $6364: $88
	sbc c                                            ; $6365: $99
	pop af                                           ; $6366: $f1
	ldh [c], a                                       ; $6367: $e2
	push bc                                          ; $6368: $c5
	res 3, [hl]                                      ; $6369: $cb $9e
	inc a                                            ; $636b: $3c
	ld a, d                                          ; $636c: $7a
	ldh [$79], a                                     ; $636d: $e0 $79
	adc a                                            ; $636f: $8f
	sub l                                            ; $6370: $95
	rst SubAFromBC                                          ; $6371: $e7
	rst GetHLinHL                                          ; $6372: $cf
	inc c                                            ; $6373: $0c
	ld sp, $cf63                                     ; $6374: $31 $63 $cf
	sub a                                            ; $6377: $97
	ld l, $5d                                        ; $6378: $2e $5d
	cp d                                             ; $637a: $ba
	ld h, [hl]                                       ; $637b: $66
	ret nc                                           ; $637c: $d0

	sub a                                            ; $637d: $97
	db $e4                                           ; $637e: $e4
	ld [$aad1], a                                    ; $637f: $ea $d1 $aa
	ld b, h                                          ; $6382: $44
	xor d                                            ; $6383: $aa
	ld de, $61aa                                     ; $6384: $11 $aa $61
	and c                                            ; $6387: $a1
	sbc b                                            ; $6388: $98
	xor d                                            ; $6389: $aa
	ld bc, $46ab                                     ; $638a: $01 $ab $46
	xor l                                            ; $638d: $ad
	dec de                                           ; $638e: $1b
	or [hl]                                          ; $638f: $b6
	ld h, d                                          ; $6390: $62
	ret nc                                           ; $6391: $d0

	sbc b                                            ; $6392: $98
	ret c                                            ; $6393: $d8

	or l                                             ; $6394: $b5
	ld l, [hl]                                       ; $6395: $6e
	rst SubAFromDE                                          ; $6396: $df
	cp [hl]                                          ; $6397: $be
	ld a, a                                          ; $6398: $7f
	rst $38                                          ; $6399: $ff
	ld a, d                                          ; $639a: $7a
	ret nc                                           ; $639b: $d0

	sbc l                                            ; $639c: $9d
	pop bc                                           ; $639d: $c1
	add b                                            ; $639e: $80
	ld a, d                                          ; $639f: $7a
	db $eb                                           ; $63a0: $eb
	ld a, [hl]                                       ; $63a1: $7e
	sub $80                                          ; $63a2: $d6 $80
	ld d, l                                          ; $63a4: $55
	xor d                                            ; $63a5: $aa
	push de                                          ; $63a6: $d5
	xor d                                            ; $63a7: $aa
	db $fd                                           ; $63a8: $fd
	xor d                                            ; $63a9: $aa
	nop                                              ; $63aa: $00
	nop                                              ; $63ab: $00
	ld [bc], a                                       ; $63ac: $02
	ld d, l                                          ; $63ad: $55
	ld a, [hl+]                                      ; $63ae: $2a
	ld d, l                                          ; $63af: $55
	ld [bc], a                                       ; $63b0: $02
	ld d, l                                          ; $63b1: $55
	ld d, [hl]                                       ; $63b2: $56
	jr z, jr_057_640a                                ; $63b3: $28 $55

	and b                                            ; $63b5: $a0
	ld d, l                                          ; $63b6: $55
	xor b                                            ; $63b7: $a8
	ld d, l                                          ; $63b8: $55
	xor d                                            ; $63b9: $aa
	ld bc, $aa17                                     ; $63ba: $01 $17 $aa
	ld e, a                                          ; $63bd: $5f
	xor d                                            ; $63be: $aa
	ld d, a                                          ; $63bf: $57
	xor d                                            ; $63c0: $aa
	ld d, l                                          ; $63c1: $55
	ld d, l                                          ; $63c2: $55
	sbc [hl]                                         ; $63c3: $9e
	ld bc, $fe7b                                     ; $63c4: $01 $7b $fe
	sbc c                                            ; $63c7: $99
	inc bc                                           ; $63c8: $03
	ld d, a                                          ; $63c9: $57
	inc bc                                           ; $63ca: $03
	xor d                                            ; $63cb: $aa
	rst $38                                          ; $63cc: $ff
	xor e                                            ; $63cd: $ab
	ld [hl], e                                       ; $63ce: $73
	cp $df                                           ; $63cf: $fe $df
	ret nz                                           ; $63d1: $c0

	rst SubAFromDE                                          ; $63d2: $df
	add b                                            ; $63d3: $80
	sbc e                                            ; $63d4: $9b
	add c                                            ; $63d5: $81
	ld bc, $2313                                     ; $63d6: $01 $13 $23
	reti                                             ; $63d9: $d9


	rst $38                                          ; $63da: $ff
	sbc l                                            ; $63db: $9d
	ld h, b                                          ; $63dc: $60
	db $fc                                           ; $63dd: $fc
	sbc $c0                                          ; $63de: $de $c0
	sbc l                                            ; $63e0: $9d

Jump_057_63e1:
	ldh a, [$fe]                                     ; $63e1: $f0 $fe
	ld h, d                                          ; $63e3: $62
	ldh [rDMA], a                                    ; $63e4: $e0 $46
	ret nc                                           ; $63e6: $d0

	ld b, a                                          ; $63e7: $47
	ldh a, [rPCM12]                                  ; $63e8: $f0 $76
	ld sp, hl                                        ; $63ea: $f9
	ld [hl], l                                       ; $63eb: $75
	ld e, c                                          ; $63ec: $59
	ld a, e                                          ; $63ed: $7b
	cp c                                             ; $63ee: $b9
	ld [hl], a                                       ; $63ef: $77
	ld e, l                                          ; $63f0: $5d
	sbc [hl]                                         ; $63f1: $9e
	ldh a, [$d9]                                     ; $63f2: $f0 $d9
	add b                                            ; $63f4: $80
	reti                                             ; $63f5: $d9


	adc b                                            ; $63f6: $88
	sub a                                            ; $63f7: $97
	nop                                              ; $63f8: $00
	inc c                                            ; $63f9: $0c
	rlca                                             ; $63fa: $07
	inc bc                                           ; $63fb: $03
	add b                                            ; $63fc: $80
	ldh [$b8], a                                     ; $63fd: $e0 $b8

Jump_057_63ff:
	cp h                                             ; $63ff: $bc
	ei                                               ; $6400: $fb
	rst SubAFromDE                                          ; $6401: $df

jr_057_6402:
	ld b, b                                          ; $6402: $40
	sub [hl]                                         ; $6403: $96
	rst SubAFromHL                                          ; $6404: $d7
	or e                                             ; $6405: $b3
	ld [hl], b                                       ; $6406: $70
	cp b                                             ; $6407: $b8
	db $fc                                           ; $6408: $fc
	ld a, a                                          ; $6409: $7f

jr_057_640a:
	rra                                              ; $640a: $1f
	rra                                              ; $640b: $1f
	ld a, a                                          ; $640c: $7f
	ld [hl], l                                       ; $640d: $75
	ld bc, $0f80                                     ; $640e: $01 $80 $0f
	add hl, bc                                       ; $6411: $09
	ld de, $ecfb                                     ; $6412: $11 $fb $ec
	ld sp, $01cc                                     ; $6415: $31 $cc $01
	rrca                                             ; $6418: $0f
	ldh a, [$e0]                                     ; $6419: $f0 $e0
	db $fc                                           ; $641b: $fc
	ldh a, [$c0]                                     ; $641c: $f0 $c0
	inc bc                                           ; $641e: $03
	rst $38                                          ; $641f: $ff
	rst $38                                          ; $6420: $ff
	ldh a, [$e0]                                     ; $6421: $f0 $e0
	ld b, $0d                                        ; $6423: $06 $0d
	ld d, $1d                                        ; $6425: $16 $1d
	rst $38                                          ; $6427: $ff
	inc de                                           ; $6428: $13
	adc c                                            ; $6429: $89
	ld b, h                                          ; $642a: $44
	add hl, sp                                       ; $642b: $39
	ld [hl], e                                       ; $642c: $73
	rst AddAOntoHL                                          ; $642d: $ef
	rst $38                                          ; $642e: $ff
	sbc b                                            ; $642f: $98
	cp $92                                           ; $6430: $fe $92
	ret                                              ; $6432: $c9


	ld h, h                                          ; $6433: $64
	ld hl, sp+$70                                    ; $6434: $f8 $70
	ldh [$75], a                                     ; $6436: $e0 $75
	ld hl, sp-$63                                    ; $6438: $f8 $9d
	add b                                            ; $643a: $80
	ldh a, [$6c]                                     ; $643b: $f0 $6c
	sbc a                                            ; $643d: $9f
	ld h, d                                          ; $643e: $62
	ld sp, hl                                        ; $643f: $f9
	ld sp, hl                                        ; $6440: $f9
	sub h                                            ; $6441: $94
	ld a, c                                          ; $6442: $79
	db $e3                                           ; $6443: $e3
	rst JumpTable                                          ; $6444: $c7
	adc a                                            ; $6445: $8f
	rra                                              ; $6446: $1f
	ld a, $7f                                        ; $6447: $3e $7f
	cp $9f                                           ; $6449: $fe $9f
	ld a, $7c                                        ; $644b: $3e $7c
	halt                                             ; $644d: $76
	pop de                                           ; $644e: $d1
	sbc h                                            ; $644f: $9c
	add b                                            ; $6450: $80
	ld [hl], l                                       ; $6451: $75
	ld [$c279], a                                    ; $6452: $ea $79 $c2
	ld a, e                                          ; $6455: $7b
	cp $67                                           ; $6456: $fe $67
	rst SubAFromHL                                          ; $6458: $d7
	ld a, [hl]                                       ; $6459: $7e
	call nz, Call_057_519a                           ; $645a: $c4 $9a $51
	xor e                                            ; $645d: $ab
	ld d, [hl]                                       ; $645e: $56
	xor l                                            ; $645f: $ad
	ld e, e                                          ; $6460: $5b
	ld e, [hl]                                       ; $6461: $5e
	ret nc                                           ; $6462: $d0

	ld a, h                                          ; $6463: $7c
	ld [hl], b                                       ; $6464: $70
	sbc h                                            ; $6465: $9c
	ld l, a                                          ; $6466: $6f
	rst SubAFromDE                                          ; $6467: $df
	cp a                                             ; $6468: $bf
	ld [hl], d                                       ; $6469: $72
	ret nc                                           ; $646a: $d0

	ld [hl], e                                       ; $646b: $73
	xor [hl]                                         ; $646c: $ae
	ld b, a                                          ; $646d: $47
	jr z, jr_057_6402                                ; $646e: $28 $92

	db $fd                                           ; $6470: $fd
	ld [$faff], a                                    ; $6471: $ea $ff $fa
	rst $38                                          ; $6474: $ff
	cp $ff                                           ; $6475: $fe $ff
	rst $38                                          ; $6477: $ff
	ld [bc], a                                       ; $6478: $02
	dec d                                            ; $6479: $15
	nop                                              ; $647a: $00
	dec b                                            ; $647b: $05
	nop                                              ; $647c: $00
	halt                                             ; $647d: $76
	or b                                             ; $647e: $b0

jr_057_647f:
	ld a, d                                          ; $647f: $7a
	or d                                             ; $6480: $b2
	ld a, d                                          ; $6481: $7a
	or b                                             ; $6482: $b0
	sbc l                                            ; $6483: $9d
	xor e                                            ; $6484: $ab
	xor d                                            ; $6485: $aa
	ld a, d                                          ; $6486: $7a
	or d                                             ; $6487: $b2
	halt                                             ; $6488: $76
	or b                                             ; $6489: $b0
	sub e                                            ; $648a: $93
	ld d, a                                          ; $648b: $57
	add a                                            ; $648c: $87
	ld e, a                                          ; $648d: $5f
	cp a                                             ; $648e: $bf
	ld e, a                                          ; $648f: $5f
	rst $38                                          ; $6490: $ff
	cp a                                             ; $6491: $bf
	rra                                              ; $6492: $1f
	xor a                                            ; $6493: $af
	ld a, a                                          ; $6494: $7f
	xor a                                            ; $6495: $af
	ld e, a                                          ; $6496: $5f
	ld a, e                                          ; $6497: $7b
	cp c                                             ; $6498: $b9
	sub [hl]                                         ; $6499: $96
	rst $38                                          ; $649a: $ff
	ld h, d                                          ; $649b: $62
	add $c6                                          ; $649c: $c6 $c6
	add a                                            ; $649e: $87
	rrca                                             ; $649f: $0f
	inc c                                            ; $64a0: $0c
	ld e, $27                                        ; $64a1: $1e $27
	jp c, $97ff                                      ; $64a3: $da $ff $97

	rst FarCall                                          ; $64a6: $f7
	nop                                              ; $64a7: $00
	nop                                              ; $64a8: $00
	rlca                                             ; $64a9: $07
	db $fc                                           ; $64aa: $fc
	adc a                                            ; $64ab: $8f
	cp $01                                           ; $64ac: $fe $01
	ld a, e                                          ; $64ae: $7b
	cp [hl]                                          ; $64af: $be
	ld a, e                                          ; $64b0: $7b
	ld [hl-], a                                      ; $64b1: $32
	ld a, h                                          ; $64b2: $7c
	ld l, d                                          ; $64b3: $6a
	ld a, e                                          ; $64b4: $7b
	xor b                                            ; $64b5: $a8
	ld a, [hl]                                       ; $64b6: $7e
	or d                                             ; $64b7: $b2
	sbc e                                            ; $64b8: $9b
	ret nz                                           ; $64b9: $c0

	jr nc, jr_057_647f                               ; $64ba: $30 $c3

	ld e, $de                                        ; $64bc: $1e $de
	rst $38                                          ; $64be: $ff
	ld a, b                                          ; $64bf: $78
	ld h, c                                          ; $64c0: $61
	sbc l                                            ; $64c1: $9d
	db $fc                                           ; $64c2: $fc
	pop hl                                           ; $64c3: $e1
	ld b, [hl]                                       ; $64c4: $46
	ret nz                                           ; $64c5: $c0

	ld a, h                                          ; $64c6: $7c
	ld d, l                                          ; $64c7: $55
	sbc [hl]                                         ; $64c8: $9e
	inc bc                                           ; $64c9: $03
	call c, $9d01                                    ; $64ca: $dc $01 $9d
	ld hl, sp-$04                                    ; $64cd: $f8 $fc
	db $db                                           ; $64cf: $db
	rst $38                                          ; $64d0: $ff
	rst SubAFromDE                                          ; $64d1: $df
	adc b                                            ; $64d2: $88
	sbc b                                            ; $64d3: $98
	add hl, bc                                       ; $64d4: $09
	dec bc                                           ; $64d5: $0b
	ld c, $0e                                        ; $64d6: $0e $0e
	inc c                                            ; $64d8: $0c
	dec e                                            ; $64d9: $1d
	adc b                                            ; $64da: $88
	sbc $08                                          ; $64db: $de $08
	rst SubAFromDE                                          ; $64dd: $df
	add hl, bc                                       ; $64de: $09
	ld a, a                                          ; $64df: $7f
	push af                                          ; $64e0: $f5
	sbc b                                            ; $64e1: $98
	or b                                             ; $64e2: $b0
	and b                                            ; $64e3: $a0
	ld b, b                                          ; $64e4: $40
	ld b, b                                          ; $64e5: $40
	ld b, d                                          ; $64e6: $42
	db $e4                                           ; $64e7: $e4
	ld hl, sp+$7b                                    ; $64e8: $f8 $7b
	ld a, [$587a]                                    ; $64ea: $fa $7a $58
	sbc c                                            ; $64ed: $99
	ld [bc], a                                       ; $64ee: $02
	inc b                                            ; $64ef: $04
	ld e, b                                          ; $64f0: $58
	inc de                                           ; $64f1: $13
	daa                                              ; $64f2: $27
	ld b, a                                          ; $64f3: $47
	ld a, b                                          ; $64f4: $78
	sub c                                            ; $64f5: $91
	ld a, a                                          ; $64f6: $7f
	add a                                            ; $64f7: $87
	adc [hl]                                         ; $64f8: $8e
	inc de                                           ; $64f9: $13
	dec h                                            ; $64fa: $25
	ld b, l                                          ; $64fb: $45
	adc c                                            ; $64fc: $89
	ld de, $4121                                     ; $64fd: $11 $21 $41
	add c                                            ; $6500: $81
	ld a, $1f                                        ; $6501: $3e $1f
	rra                                              ; $6503: $1f
	dec e                                            ; $6504: $1d
	dec de                                           ; $6505: $1b
	rla                                              ; $6506: $17
	rra                                              ; $6507: $1f
	dec e                                            ; $6508: $1d
	rst $38                                          ; $6509: $ff
	sbc $f1                                          ; $650a: $de $f1
	sbc c                                            ; $650c: $99
	ldh a, [c]                                       ; $650d: $f2
	push af                                          ; $650e: $f5
	ld sp, hl                                        ; $650f: $f9
	pop af                                           ; $6510: $f1
	ld d, h                                          ; $6511: $54
	ld a, [de]                                       ; $6512: $1a
	ld [hl], l                                       ; $6513: $75
	ld c, l                                          ; $6514: $4d
	rst SubAFromDE                                          ; $6515: $df
	ret nz                                           ; $6516: $c0

	sbc [hl]                                         ; $6517: $9e
	jr nz, @+$7c                                     ; $6518: $20 $7a

	call nc, $2077                                   ; $651a: $d4 $77 $20
	rst SubAFromDE                                          ; $651d: $df
	add b                                            ; $651e: $80

jr_057_651f:
	db $db                                           ; $651f: $db
	ld b, b                                          ; $6520: $40
	ld h, a                                          ; $6521: $67
	ld hl, sp-$05                                    ; $6522: $f8 $fb
	sbc [hl]                                         ; $6524: $9e
	ld [de], a                                       ; $6525: $12
	ld hl, sp-$64                                    ; $6526: $f8 $9c
	push af                                          ; $6528: $f5
	ld [$72f5], a                                    ; $6529: $ea $f5 $72
	adc $f9                                          ; $652c: $ce $f9
	ld a, d                                          ; $652e: $7a
	call nz, $d002                                   ; $652f: $c4 $02 $d0
	rst SubAFromDE                                          ; $6532: $df
	rst $38                                          ; $6533: $ff
	ld a, [hl]                                       ; $6534: $7e
	ld d, d                                          ; $6535: $52
	ld l, h                                          ; $6536: $6c
	add c                                            ; $6537: $81
	ld a, a                                          ; $6538: $7f
	ld [hl], l                                       ; $6539: $75
	rst SubAFromDE                                          ; $653a: $df
	rst $38                                          ; $653b: $ff
	sub e                                            ; $653c: $93
	db $fd                                           ; $653d: $fd
	ldh a, [c]                                       ; $653e: $f2
	jp nz, $0302                                     ; $653f: $c2 $02 $03

	ld [bc], a                                       ; $6542: $02
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	rrca                                             ; $6545: $0f
	dec a                                            ; $6546: $3d
	rst $38                                          ; $6547: $ff
	db $fd                                           ; $6548: $fd
	ld a, e                                          ; $6549: $7b
	cp $91                                           ; $654a: $fe $91
	rst $38                                          ; $654c: $ff
	jr c, jr_057_651f                                ; $654d: $38 $d0

	ret c                                            ; $654f: $d8

	db $10                                           ; $6550: $10
	ccf                                              ; $6551: $3f
	ld e, $00                                        ; $6552: $1e $00
	rst $38                                          ; $6554: $ff
	rst FarCall                                          ; $6555: $f7
	ccf                                              ; $6556: $3f
	scf                                              ; $6557: $37
	rst $38                                          ; $6558: $ff
	rst FarCall                                          ; $6559: $f7
	ld a, c                                          ; $655a: $79
	add hl, sp                                       ; $655b: $39
	rst SubAFromDE                                          ; $655c: $df
	inc c                                            ; $655d: $0c
	sbc d                                            ; $655e: $9a
	ld [$e01f], sp                                   ; $655f: $08 $1f $e0
	nop                                              ; $6562: $00
	inc bc                                           ; $6563: $03
	ld a, c                                          ; $6564: $79
	jr nz, jr_057_65dd                               ; $6565: $20 $76

	db $eb                                           ; $6567: $eb
	adc h                                            ; $6568: $8c
	xor [hl]                                         ; $6569: $ae
	ld d, a                                          ; $656a: $57
	xor e                                            ; $656b: $ab
	ld d, [hl]                                       ; $656c: $56
	xor h                                            ; $656d: $ac
	db $fd                                           ; $656e: $fd
	ld d, [hl]                                       ; $656f: $56
	ld c, e                                          ; $6570: $4b
	rrca                                             ; $6571: $0f
	rlca                                             ; $6572: $07
	inc bc                                           ; $6573: $03
	inc bc                                           ; $6574: $03
	ld b, $dc                                        ; $6575: $06 $dc
	call nc, Call_057_4bd6                           ; $6577: $d4 $d6 $4b
	sub l                                            ; $657a: $95
	dec hl                                           ; $657b: $2b
	ld a, e                                          ; $657c: $7b
	adc l                                            ; $657d: $8d
	sbc d                                            ; $657e: $9a
	xor b                                            ; $657f: $a8
	ld d, b                                          ; $6580: $50
	db $e3                                           ; $6581: $e3
	pop bc                                           ; $6582: $c1
	add c                                            ; $6583: $81
	ld l, h                                          ; $6584: $6c
	ldh a, [$98]                                     ; $6585: $f0 $98
	di                                               ; $6587: $f3
	rst GetHLinHL                                          ; $6588: $cf
	sbc b                                            ; $6589: $98
	rst JumpTable                                          ; $658a: $c7
	ld a, l                                          ; $658b: $7d
	rra                                              ; $658c: $1f
	rla                                              ; $658d: $17
	ld a, e                                          ; $658e: $7b

jr_057_658f:
	sbc l                                            ; $658f: $9d

jr_057_6590:
	adc d                                            ; $6590: $8a
	rst SubAFromBC                                          ; $6591: $e7
	ld a, a                                          ; $6592: $7f
	ld a, $38                                        ; $6593: $3e $38
	jr jr_057_658f                                   ; $6595: $18 $f8

	ldh [$c3], a                                     ; $6597: $e0 $c3
	adc [hl]                                         ; $6599: $8e
	ld a, h                                          ; $659a: $7c
	db $fc                                           ; $659b: $fc
	call c, $0778                                    ; $659c: $dc $78 $07
	rra                                              ; $659f: $1f
	inc a                                            ; $65a0: $3c
	pop af                                           ; $65a1: $f1
	add e                                            ; $65a2: $83
	inc bc                                           ; $65a3: $03
	inc hl                                           ; $65a4: $23
	rst JumpTable                                          ; $65a5: $c7
	ld b, [hl]                                       ; $65a6: $46
	ret nz                                           ; $65a7: $c0

	sbc $01                                          ; $65a8: $de $01
	ld a, a                                          ; $65aa: $7f
	add e                                            ; $65ab: $83

jr_057_65ac:
	rst SubAFromDE                                          ; $65ac: $df
	ld [bc], a                                       ; $65ad: $02
	ld a, c                                          ; $65ae: $79
	call nz, $ffde                                   ; $65af: $c4 $de $ff
	rst SubAFromDE                                          ; $65b2: $df
	cp $7e                                           ; $65b3: $fe $7e
	or b                                             ; $65b5: $b0
	sub e                                            ; $65b6: $93
	rra                                              ; $65b7: $1f
	inc e                                            ; $65b8: $1c
	nop                                              ; $65b9: $00
	ld bc, $700e                                     ; $65ba: $01 $0e $70
	add b                                            ; $65bd: $80
	rrca                                             ; $65be: $0f
	ld c, $08                                        ; $65bf: $0e $08
	nop                                              ; $65c1: $00
	inc bc                                           ; $65c2: $03
	ld a, e                                          ; $65c3: $7b
	ld h, d                                          ; $65c4: $62
	sub e                                            ; $65c5: $93
	pop hl                                           ; $65c6: $e1
	inc bc                                           ; $65c7: $03
	rlca                                             ; $65c8: $07
	ccf                                              ; $65c9: $3f
	pop bc                                           ; $65ca: $c1
	nop                                              ; $65cb: $00
	nop                                              ; $65cc: $00
	jr nc, jr_057_6590                               ; $65cd: $30 $c1

	ld [bc], a                                       ; $65cf: $02
	inc c                                            ; $65d0: $0c
	jr c, jr_057_65ac                                ; $65d1: $38 $d9

	rst $38                                          ; $65d3: $ff
	sbc e                                            ; $65d4: $9b
	db $fd                                           ; $65d5: $fd
	ld a, [hl]                                       ; $65d6: $7e
	ccf                                              ; $65d7: $3f
	dec de                                           ; $65d8: $1b
	db $dd                                           ; $65d9: $dd
	ld bc, $c398                                     ; $65da: $01 $98 $c3

jr_057_65dd:
	db $e3                                           ; $65dd: $e3
	ldh [c], a                                       ; $65de: $e2
	and $21                                          ; $65df: $e6 $21
	and c                                            ; $65e1: $a1
	and c                                            ; $65e2: $a1
	db $dd                                           ; $65e3: $dd
	ret nz                                           ; $65e4: $c0

	sbc e                                            ; $65e5: $9b
	ld b, b                                          ; $65e6: $40
	ld sp, hl                                        ; $65e7: $f9
	ld h, c                                          ; $65e8: $61
	ld h, c                                          ; $65e9: $61
	db $dd                                           ; $65ea: $dd
	ld b, b                                          ; $65eb: $40
	sbc e                                            ; $65ec: $9b
	ret nz                                           ; $65ed: $c0

	ldh [$e0], a                                     ; $65ee: $e0 $e0
	ld h, b                                          ; $65f0: $60
	sbc $f0                                          ; $65f1: $de $f0
	ld a, l                                          ; $65f3: $7d
	or a                                             ; $65f4: $b7
	halt                                             ; $65f5: $76
	add $dd                                          ; $65f6: $c6 $dd
	add b                                            ; $65f8: $80
	sub a                                            ; $65f9: $97
	ld c, b                                          ; $65fa: $48
	ld b, b                                          ; $65fb: $40
	ld b, d                                          ; $65fc: $42
	ld d, b                                          ; $65fd: $50
	ld b, b                                          ; $65fe: $40

Call_057_65ff:
	ld c, c                                          ; $65ff: $49
	add b                                            ; $6600: $80
	sub $66                                          ; $6601: $d6 $66
	cp d                                             ; $6603: $ba
	sub a                                            ; $6604: $97
	and h                                            ; $6605: $a4
	ld [bc], a                                       ; $6606: $02
	ld c, c                                          ; $6607: $49
	ld [bc], a                                       ; $6608: $02
	ld d, l                                          ; $6609: $55
	dec hl                                           ; $660a: $2b
	ld e, [hl]                                       ; $660b: $5e
	xor e                                            ; $660c: $ab
	ld [bc], a                                       ; $660d: $02
	ret nc                                           ; $660e: $d0

	ld e, [hl]                                       ; $660f: $5e
	ret nc                                           ; $6610: $d0

	ld a, b                                          ; $6611: $78
	scf                                              ; $6612: $37
	ld a, l                                          ; $6613: $7d
	ld h, l                                          ; $6614: $65
	ld [hl], a                                       ; $6615: $77
	ldh [c], a                                       ; $6616: $e2
	sub e                                            ; $6617: $93
	rlca                                             ; $6618: $07
	rrca                                             ; $6619: $0f
	rrca                                             ; $661a: $0f
	rra                                              ; $661b: $1f
	ldh [$80], a                                     ; $661c: $e0 $80
	nop                                              ; $661e: $00
	ld bc, $1807                                     ; $661f: $01 $07 $18
	jr nc, jr_057_6664                               ; $6622: $30 $40

	ld [hl], h                                       ; $6624: $74
	set 3, l                                         ; $6625: $cb $dd
	rst $38                                          ; $6627: $ff
	sbc e                                            ; $6628: $9b
	inc bc                                           ; $6629: $03
	ld e, $70                                        ; $662a: $1e $70
	jp nz, $9879                                     ; $662c: $c2 $79 $98

	sbc [hl]                                         ; $662f: $9e
	ld b, $7b                                        ; $6630: $06 $7b
	ld l, d                                          ; $6632: $6a
	ld [hl], l                                       ; $6633: $75
	adc c                                            ; $6634: $89
	adc [hl]                                         ; $6635: $8e
	ld sp, hl                                        ; $6636: $f9
	ldh a, [$f8]                                     ; $6637: $f0 $f8
	ld d, [hl]                                       ; $6639: $56
	ld d, h                                          ; $663a: $54
	ld h, a                                          ; $663b: $67
	ld a, [hl-]                                      ; $663c: $3a
	ld a, l                                          ; $663d: $7d
	rst FarCall                                          ; $663e: $f7
	rst $38                                          ; $663f: $ff
	ei                                               ; $6640: $fb
	jp hl                                            ; $6641: $e9


	push hl                                          ; $6642: $e5
	call nz, $02fe                                   ; $6643: $c4 $fe $02
	adc a                                            ; $6646: $8f
	ld a, d                                          ; $6647: $7a
	sbc e                                            ; $6648: $9b
	ld a, l                                          ; $6649: $7d
	ret                                              ; $664a: $c9


	ld a, h                                          ; $664b: $7c
	and c                                            ; $664c: $a1
	sbc [hl]                                         ; $664d: $9e
	cp a                                             ; $664e: $bf
	ld a, d                                          ; $664f: $7a
	adc h                                            ; $6650: $8c
	ld a, e                                          ; $6651: $7b
	ld l, h                                          ; $6652: $6c
	ld a, h                                          ; $6653: $7c
	cp a                                             ; $6654: $bf
	adc [hl]                                         ; $6655: $8e
	ld b, d                                          ; $6656: $42
	ld l, l                                          ; $6657: $6d
	and c                                            ; $6658: $a1
	sub d                                            ; $6659: $92
	or e                                             ; $665a: $b3
	xor l                                            ; $665b: $ad
	jp hl                                            ; $665c: $e9


	ld [$d3d6], a                                    ; $665d: $ea $d6 $d3
	ld e, e                                          ; $6660: $5b
	ld l, c                                          ; $6661: $69
	ld l, b                                          ; $6662: $68
	ld h, b                                          ; $6663: $60

jr_057_6664:
	inc h                                            ; $6664: $24
	inc h                                            ; $6665: $24
	and b                                            ; $6666: $a0
	ld a, e                                          ; $6667: $7b
	ld l, h                                          ; $6668: $6c
	ld a, [hl]                                       ; $6669: $7e
	dec h                                            ; $666a: $25
	sbc [hl]                                         ; $666b: $9e
	and b                                            ; $666c: $a0
	halt                                             ; $666d: $76
	ld [hl], b                                       ; $666e: $70
	rst SubAFromDE                                          ; $666f: $df
	add b                                            ; $6670: $80
	sub e                                            ; $6671: $93
	ret nz                                           ; $6672: $c0

	ld h, b                                          ; $6673: $60
	jr nc, jr_057_668f                               ; $6674: $30 $19

	rlca                                             ; $6676: $07
	ld b, $07                                        ; $6677: $06 $07
	dec c                                            ; $6679: $0d
	jr jr_057_66ae                                   ; $667a: $18 $32

	ld h, b                                          ; $667c: $60
	rrca                                             ; $667d: $0f
	ld a, d                                          ; $667e: $7a
	sbc a                                            ; $667f: $9f
	adc d                                            ; $6680: $8a
	dec b                                            ; $6681: $05
	ld [$2012], sp                                   ; $6682: $08 $12 $20
	ld hl, sp+$70                                    ; $6685: $f8 $70
	ldh a, [$30]                                     ; $6687: $f0 $30
	and c                                            ; $6689: $a1
	di                                               ; $668a: $f3
	ld c, [hl]                                       ; $668b: $4e
	daa                                              ; $668c: $27
	add a                                            ; $668d: $87
	adc a                                            ; $668e: $8f

jr_057_668f:
	rrca                                             ; $668f: $0f
	rst GetHLinHL                                          ; $6690: $cf
	rst SubAFromDE                                          ; $6691: $df
	rst $38                                          ; $6692: $ff
	ld c, a                                          ; $6693: $4f
	scf                                              ; $6694: $37
	ld b, $75                                        ; $6695: $06 $75
	jp nz, $f89b                                     ; $6697: $c2 $9b $f8

	rrca                                             ; $669a: $0f
	db $fc                                           ; $669b: $fc
	ld sp, hl                                        ; $669c: $f9

Jump_057_669d:
	ld [hl], h                                       ; $669d: $74
	db $d3                                           ; $669e: $d3
	sbc [hl]                                         ; $669f: $9e
	rlca                                             ; $66a0: $07
	ld a, c                                          ; $66a1: $79
	ld h, b                                          ; $66a2: $60
	ld a, a                                          ; $66a3: $7f
	res 3, c                                         ; $66a4: $cb $99
	db $e3                                           ; $66a6: $e3
	inc e                                            ; $66a7: $1c
	ldh a, [hDisp0_OBP1]                                     ; $66a8: $f0 $87
	ld a, a                                          ; $66aa: $7f
	rst $38                                          ; $66ab: $ff
	ld a, b                                          ; $66ac: $78
	ld [hl], b                                       ; $66ad: $70

jr_057_66ae:
	rst SubAFromDE                                          ; $66ae: $df
	rst $38                                          ; $66af: $ff
	sbc l                                            ; $66b0: $9d
	ld hl, sp-$80                                    ; $66b1: $f8 $80
	halt                                             ; $66b3: $76
	call nz, Call_057_707f                           ; $66b4: $c4 $7f $70
	sbc l                                            ; $66b7: $9d
	rst FarCall                                          ; $66b8: $f7
	rst AddAOntoHL                                          ; $66b9: $ef
	db $db                                           ; $66ba: $db
	rst $38                                          ; $66bb: $ff
	ld a, a                                          ; $66bc: $7f
	db $d3                                           ; $66bd: $d3
	sbc b                                            ; $66be: $98
	ret nz                                           ; $66bf: $c0

	ld b, $18                                        ; $66c0: $06 $18
	ld hl, $f07e                                     ; $66c2: $21 $7e $f0
	add c                                            ; $66c5: $81
	ld a, e                                          ; $66c6: $7b
	sub $72                                          ; $66c7: $d6 $72
	sbc a                                            ; $66c9: $9f
	sub c                                            ; $66ca: $91
	ld hl, sp+$1d                                    ; $66cb: $f8 $1d
	dec de                                           ; $66cd: $1b
	ld l, a                                          ; $66ce: $6f
	cp a                                             ; $66cf: $bf
	rst $38                                          ; $66d0: $ff
	db $fd                                           ; $66d1: $fd
	ld sp, hl                                        ; $66d2: $f9
	pop af                                           ; $66d3: $f1
	and $fc                                          ; $66d4: $e6 $fc
	ldh a, [$c1]                                     ; $66d6: $f0 $c1
	rlca                                             ; $66d8: $07
	ld a, e                                          ; $66d9: $7b
	or h                                             ; $66da: $b4
	rst SubAFromDE                                          ; $66db: $df
	add c                                            ; $66dc: $81
	adc b                                            ; $66dd: $88
	add e                                            ; $66de: $83
	rlca                                             ; $66df: $07
	ld c, $1c                                        ; $66e0: $0e $1c
	inc a                                            ; $66e2: $3c
	ld a, b                                          ; $66e3: $78
	add c                                            ; $66e4: $81
	add c                                            ; $66e5: $81
	add d                                            ; $66e6: $82
	inc b                                            ; $66e7: $04
	ld [$2010], sp                                   ; $66e8: $08 $10 $20
	ld b, b                                          ; $66eb: $40
	add b                                            ; $66ec: $80
	ld bc, $0201                                     ; $66ed: $01 $01 $02
	inc bc                                           ; $66f0: $03
	ld b, $05                                        ; $66f1: $06 $05
	ld a, [bc]                                       ; $66f3: $0a
	add c                                            ; $66f4: $81
	ld a, e                                          ; $66f5: $7b
	ld hl, sp-$67                                    ; $66f6: $f8 $99
	ld [bc], a                                       ; $66f8: $02
	ld b, $04                                        ; $66f9: $06 $04
	ld [$2a81], sp                                   ; $66fb: $08 $81 $2a
	halt                                             ; $66fe: $76
	sbc $9d                                          ; $66ff: $de $9d
	halt                                             ; $6701: $76
	xor a                                            ; $6702: $af
	ld h, h                                          ; $6703: $64
	ld [hl], b                                       ; $6704: $70
	sbc e                                            ; $6705: $9b
	ld e, [hl]                                       ; $6706: $5e
	or a                                             ; $6707: $b7
	ld e, a                                          ; $6708: $5f
	push af                                          ; $6709: $f5
	ld a, e                                          ; $670a: $7b
	inc sp                                           ; $670b: $33
	ld h, b                                          ; $670c: $60
	sub b                                            ; $670d: $90
	dec [hl]                                         ; $670e: $35
	and b                                            ; $670f: $a0
	ld a, d                                          ; $6710: $7a
	rst GetHLinHL                                          ; $6711: $cf
	ld [hl], a                                       ; $6712: $77
	jr nc, @+$78                                     ; $6713: $30 $76

	rst GetHLinHL                                          ; $6715: $cf
	ld a, [hl]                                       ; $6716: $7e
	ret nc                                           ; $6717: $d0

	sbc e                                            ; $6718: $9b
	pop bc                                           ; $6719: $c1
	add d                                            ; $671a: $82
	inc b                                            ; $671b: $04
	inc c                                            ; $671c: $0c
	ld a, e                                          ; $671d: $7b
	db $e3                                           ; $671e: $e3
	ld a, c                                          ; $671f: $79
	dec c                                            ; $6720: $0d
	call c, Call_057_77ff                            ; $6721: $dc $ff $77
	call c, $9f7f                                    ; $6724: $dc $7f $9f
	rst SubAFromDE                                          ; $6727: $df
	ld bc, $3872                                     ; $6728: $01 $72 $38
	add b                                            ; $672b: $80
	db $fc                                           ; $672c: $fc
	cp $fe                                           ; $672d: $fe $fe
	ld b, $23                                        ; $672f: $06 $23
	ld sp, $5c19                                     ; $6731: $31 $19 $5c
	ld l, $b6                                        ; $6734: $2e $b6
	or a                                             ; $6736: $b7
	ld sp, hl                                        ; $6737: $f9
	call c, $e7ce                                    ; $6738: $dc $ce $e7
	db $e3                                           ; $673b: $e3
	pop af                                           ; $673c: $f1
	ld a, c                                          ; $673d: $79
	ld a, b                                          ; $673e: $78
	dec sp                                           ; $673f: $3b
	jp c, $f788                                      ; $6740: $da $88 $f7

	rst SubAFromDE                                          ; $6743: $df
	rst SubAFromBC                                          ; $6744: $e7
	ld a, e                                          ; $6745: $7b
	dec a                                            ; $6746: $3d
	adc h                                            ; $6747: $8c
	ld l, h                                          ; $6748: $6c
	ld e, h                                          ; $6749: $5c
	cpl                                              ; $674a: $2f
	sub e                                            ; $674b: $93
	or b                                             ; $674c: $b0
	ret nc                                           ; $674d: $d0

	db $ec                                           ; $674e: $ec
	db $f4                                           ; $674f: $f4
	ld a, a                                          ; $6750: $7f
	cp a                                             ; $6751: $bf
	ccf                                              ; $6752: $3f
	cpl                                              ; $6753: $2f
	or a                                             ; $6754: $b7
	adc e                                            ; $6755: $8b
	cp e                                             ; $6756: $bb
	ld sp, hl                                        ; $6757: $f9
	ld a, d                                          ; $6758: $7a
	db $e3                                           ; $6759: $e3
	ld a, [hl]                                       ; $675a: $7e
	ld h, $94                                        ; $675b: $26 $94
	ld [hl], h                                       ; $675d: $74
	ld a, b                                          ; $675e: $78
	ld b, h                                          ; $675f: $44
	db $ec                                           ; $6760: $ec
	call z, $e6d5                                    ; $6761: $cc $d5 $e6
	or $fb                                           ; $6764: $f6 $fb
	db $e3                                           ; $6766: $e3
	ei                                               ; $6767: $fb
	sbc $22                                          ; $6768: $de $22
	rst SubAFromDE                                          ; $676a: $df
	ld de, $108c                                     ; $676b: $11 $8c $10
	jr jr_057_6778                                   ; $676e: $18 $08

	ret c                                            ; $6770: $d8

	reti                                             ; $6771: $d9


	ld l, a                                          ; $6772: $6f
	ld h, d                                          ; $6773: $62
	cp c                                             ; $6774: $b9
	ld e, l                                          ; $6775: $5d
	dec l                                            ; $6776: $2d
	add l                                            ; $6777: $85

jr_057_6778:
	jr c, @+$3e                                      ; $6778: $38 $3c

	rra                                              ; $677a: $1f
	ld e, $07                                        ; $677b: $1e $07
	add e                                            ; $677d: $83
	jp Jump_057_7b6b                                 ; $677e: $c3 $6b $7b


	ld a, e                                          ; $6781: $7b
	ld a, a                                          ; $6782: $7f
	cp $9b                                           ; $6783: $fe $9b
	add c                                            ; $6785: $81
	ld d, d                                          ; $6786: $52
	inc h                                            ; $6787: $24
	ld b, b                                          ; $6788: $40
	ld [hl], e                                       ; $6789: $73
	ld hl, sp-$67                                    ; $678a: $f8 $99
	db $d3                                           ; $678c: $d3
	ld h, [hl]                                       ; $678d: $66
	dec de                                           ; $678e: $1b
	ld e, l                                          ; $678f: $5d
	ld h, $42                                        ; $6790: $26 $42
	ld [hl], a                                       ; $6792: $77
	ld e, $92                                        ; $6793: $1e $92
	inc de                                           ; $6795: $13
	ld e, c                                          ; $6796: $59
	inc [hl]                                         ; $6797: $34
	ld h, d                                          ; $6798: $62

Jump_057_6799:
	sub $ad                                          ; $6799: $d6 $ad
	ld e, d                                          ; $679b: $5a
	or h                                             ; $679c: $b4
	ret nz                                           ; $679d: $c0

	ldh a, [$9c]                                     ; $679e: $f0 $9c
	add a                                            ; $67a0: $87
	add e                                            ; $67a1: $83
	ld a, e                                          ; $67a2: $7b
	ld l, b                                          ; $67a3: $68
	sbc e                                            ; $67a4: $9b
	rst $38                                          ; $67a5: $ff
	ccf                                              ; $67a6: $3f
	adc a                                            ; $67a7: $8f
	add e                                            ; $67a8: $83
	ld a, b                                          ; $67a9: $78
	ld [hl], b                                       ; $67aa: $70
	sbc d                                            ; $67ab: $9a
	ld [$1806], sp                                   ; $67ac: $08 $06 $18
	ld h, e                                          ; $67af: $63
	adc a                                            ; $67b0: $8f
	jp c, Jump_057_7fff                              ; $67b1: $da $ff $7f

	ld c, d                                          ; $67b4: $4a
	cp $9d                                           ; $67b5: $fe $9d
	ld a, $fe                                        ; $67b7: $3e $fe
	db $db                                           ; $67b9: $db
	db $fc                                           ; $67ba: $fc
	sbc l                                            ; $67bb: $9d
	rst FarCall                                          ; $67bc: $f7
	rst JumpTable                                          ; $67bd: $c7
	jp c, $7f07                                      ; $67be: $da $07 $7f

	push de                                          ; $67c1: $d5
	sub l                                            ; $67c2: $95
	rra                                              ; $67c3: $1f
	jr c, @+$05                                      ; $67c4: $38 $03

	ccf                                              ; $67c6: $3f
	inc bc                                           ; $67c7: $03
	ld hl, sp-$0f                                    ; $67c8: $f8 $f1
	db $e4                                           ; $67ca: $e4
	ldh [$c7], a                                     ; $67cb: $e0 $c7
	sbc $ff                                          ; $67cd: $de $ff
	sbc e                                            ; $67cf: $9b
	pop bc                                           ; $67d0: $c1
	add e                                            ; $67d1: $83
	add a                                            ; $67d2: $87
	sbc a                                            ; $67d3: $9f
	ld a, d                                          ; $67d4: $7a
	cpl                                              ; $67d5: $2f
	ld a, d                                          ; $67d6: $7a
	dec l                                            ; $67d7: $2d
	sbc h                                            ; $67d8: $9c
	ld a, [hl]                                       ; $67d9: $7e
	ld a, d                                          ; $67da: $7a
	pop af                                           ; $67db: $f1
	ld a, e                                          ; $67dc: $7b
	sub e                                            ; $67dd: $93
	ld a, a                                          ; $67de: $7f
	ld d, $df                                        ; $67df: $16 $df
	ldh [$de], a                                     ; $67e1: $e0 $de
	ret nz                                           ; $67e3: $c0

	ld a, c                                          ; $67e4: $79
	jp hl                                            ; $67e5: $e9


	halt                                             ; $67e6: $76
	ld a, $90                                        ; $67e7: $3e $90
	ld b, b                                          ; $67e9: $40
	jr nz, jr_057_67f9                               ; $67ea: $20 $0d

	ld a, [de]                                       ; $67ec: $1a
	rla                                              ; $67ed: $17
	ld a, [hl+]                                      ; $67ee: $2a
	dec a                                            ; $67ef: $3d
	ld l, d                                          ; $67f0: $6a
	ld [hl], a                                       ; $67f1: $77
	xor e                                            ; $67f2: $ab
	ld [$1010], sp                                   ; $67f3: $08 $10 $10
	jr nz, jr_057_6818                               ; $67f6: $20 $20

	ld a, c                                          ; $67f8: $79

jr_057_67f9:
	adc a                                            ; $67f9: $8f
	sbc b                                            ; $67fa: $98
	push de                                          ; $67fb: $d5
	cp a                                             ; $67fc: $bf
	ld e, a                                          ; $67fd: $5f
	rst $38                                          ; $67fe: $ff
	rst SubAFromDE                                          ; $67ff: $df
	rst $38                                          ; $6800: $ff
	ld a, a                                          ; $6801: $7f
	ld h, [hl]                                       ; $6802: $66
	ret nc                                           ; $6803: $d0

	ld a, e                                          ; $6804: $7b
	ld [$e276], sp                                   ; $6805: $08 $76 $e2
	ld [hl], l                                       ; $6808: $75
	cp d                                             ; $6809: $ba
	halt                                             ; $680a: $76
	ldh [c], a                                       ; $680b: $e2
	ld a, a                                          ; $680c: $7f
	add sp, $56                                      ; $680d: $e8 $56
	nop                                              ; $680f: $00
	jp c, $de33                                      ; $6810: $da $33 $de

	ld [hl+], a                                      ; $6813: $22
	sbc $33                                          ; $6814: $de $33
	sbc c                                            ; $6816: $99
	scf                                              ; $6817: $37

jr_057_6818:
	ld [hl], a                                       ; $6818: $77
	inc sp                                           ; $6819: $33
	ld [hl+], a                                      ; $681a: $22
	inc h                                            ; $681b: $24
	ld b, h                                          ; $681c: $44
	ld a, e                                          ; $681d: $7b
	or $99                                           ; $681e: $f6 $99
	inc [hl]                                         ; $6820: $34
	ld b, l                                          ; $6821: $45
	ld d, l                                          ; $6822: $55
	ld [hl], d                                       ; $6823: $72
	ld [hl+], a                                      ; $6824: $22
	ld b, h                                          ; $6825: $44
	ld [hl], e                                       ; $6826: $73
	or $9c                                           ; $6827: $f6 $9c
	dec [hl]                                         ; $6829: $35
	ld d, l                                          ; $682a: $55
	ld d, l                                          ; $682b: $55
	ld l, a                                          ; $682c: $6f
	or $98                                           ; $682d: $f6 $98
	inc sp                                           ; $682f: $33
	ld [hl], $55                                     ; $6830: $36 $55
	ld d, l                                          ; $6832: $55
	ld d, h                                          ; $6833: $54
	ld b, h                                          ; $6834: $44
	ld b, d                                          ; $6835: $42
	ld [hl], a                                       ; $6836: $77
	or $9d                                           ; $6837: $f6 $9d
	inc sp                                           ; $6839: $33
	ld h, l                                          ; $683a: $65
	ld a, e                                          ; $683b: $7b
	or $7f                                           ; $683c: $f6 $7f
	sub $dd                                          ; $683e: $d6 $dd
	inc sp                                           ; $6840: $33
	ld [hl], a                                       ; $6841: $77
	db $ec                                           ; $6842: $ec
	sbc l                                            ; $6843: $9d
	ld [hl+], a                                      ; $6844: $22
	inc hl                                           ; $6845: $23
	ld l, e                                          ; $6846: $6b
	or $9d                                           ; $6847: $f6 $9d
	ld b, l                                          ; $6849: $45
	ld h, h                                          ; $684a: $64
	ld a, e                                          ; $684b: $7b
	jp c, Jump_057_669d                              ; $684c: $da $9d $66

	ld h, l                                          ; $684f: $65
	db $dd                                           ; $6850: $dd
	ld d, l                                          ; $6851: $55
	sbc e                                            ; $6852: $9b
	ld d, h                                          ; $6853: $54
	inc sp                                           ; $6854: $33
	inc sp                                           ; $6855: $33
	ld h, [hl]                                       ; $6856: $66
	db $db                                           ; $6857: $db
	ld d, l                                          ; $6858: $55
	sbc h                                            ; $6859: $9c
	ld b, e                                          ; $685a: $43
	inc sp                                           ; $685b: $33
	ld [hl], $77                                     ; $685c: $36 $77
	xor $9d                                          ; $685e: $ee $9d
	ld d, a                                          ; $6860: $57
	halt                                             ; $6861: $76
	ld a, e                                          ; $6862: $7b
	or $a9                                           ; $6863: $f6 $a9
	adc c                                            ; $6865: $89
	ldh [$da], a                                     ; $6866: $e0 $da
	sbc [hl]                                         ; $6868: $9e
	inc bc                                           ; $6869: $03
	rst FarCall                                          ; $686a: $f7
	sbc c                                            ; $686b: $99
	ld bc, $0d02                                     ; $686c: $01 $02 $0d
	dec sp                                           ; $686f: $3b
	rst AddAOntoHL                                          ; $6870: $ef
	or h                                             ; $6871: $b4
	ld sp, hl                                        ; $6872: $f9
	sbc c                                            ; $6873: $99
	dec d                                            ; $6874: $15
	xor e                                            ; $6875: $ab
	ld d, h                                          ; $6876: $54
	and b                                            ; $6877: $a0
	ld b, b                                          ; $6878: $40
	add b                                            ; $6879: $80
	rst FarCall                                          ; $687a: $f7
	sbc [hl]                                         ; $687b: $9e
	ldh a, [$e0]                                     ; $687c: $f0 $e0
	or c                                             ; $687e: $b1
	sbc b                                            ; $687f: $98
	ld bc, $0703                                     ; $6880: $01 $03 $07
	inc c                                            ; $6883: $0c
	ld a, [de]                                       ; $6884: $1a
	ld h, c                                          ; $6885: $61
	dec e                                            ; $6886: $1d
	ld [hl], a                                       ; $6887: $77
	adc b                                            ; $6888: $88
	add b                                            ; $6889: $80
	ld b, $0c                                        ; $688a: $06 $0c
	ld a, h                                          ; $688c: $7c
	inc e                                            ; $688d: $1c
	ldh [$ce], a                                     ; $688e: $e0 $ce
	adc a                                            ; $6890: $8f
	inc sp                                           ; $6891: $33
	inc b                                            ; $6892: $04
	rr l                                             ; $6893: $cb $1d
	ld d, $7f                                        ; $6895: $16 $7f
	add c                                            ; $6897: $81
	ccf                                              ; $6898: $3f
	ld h, b                                          ; $6899: $60
	inc bc                                           ; $689a: $03
	rlca                                             ; $689b: $07
	add [hl]                                         ; $689c: $86
	adc l                                            ; $689d: $8d
	push hl                                          ; $689e: $e5
	rla                                              ; $689f: $17
	adc [hl]                                         ; $68a0: $8e
	ld l, b                                          ; $68a1: $68
	ccf                                              ; $68a2: $3f
	sbc b                                            ; $68a3: $98
	ld e, [hl]                                       ; $68a4: $5e
	pop af                                           ; $68a5: $f1
	rst AddAOntoHL                                          ; $68a6: $ef
	rst $38                                          ; $68a7: $ff
	rst $38                                          ; $68a8: $ff
	sbc [hl]                                         ; $68a9: $9e
	cp $7b                                           ; $68aa: $fe $7b
	cp $96                                           ; $68ac: $fe $96
	rst $38                                          ; $68ae: $ff
	inc e                                            ; $68af: $1c
	jp $1860                                         ; $68b0: $c3 $60 $18


	adc h                                            ; $68b3: $8c
	ld b, [hl]                                       ; $68b4: $46
	ld [hl+], a                                      ; $68b5: $22
	inc sp                                           ; $68b6: $33
	sbc $ff                                          ; $68b7: $de $ff
	add b                                            ; $68b9: $80
	ccf                                              ; $68ba: $3f
	rst SubAFromDE                                          ; $68bb: $df
	rst AddAOntoHL                                          ; $68bc: $ef
	ld [hl], a                                       ; $68bd: $77
	or a                                             ; $68be: $b7
	dec e                                            ; $68bf: $1d
	ld l, a                                          ; $68c0: $6f
	rst JumpTable                                          ; $68c1: $c7
	or e                                             ; $68c2: $b3
	ld e, [hl]                                       ; $68c3: $5e
	xor c                                            ; $68c4: $a9
	dec d                                            ; $68c5: $15
	ld c, [hl]                                       ; $68c6: $4e
	or $9b                                           ; $68c7: $f6 $9b
	db $ed                                           ; $68c9: $ed
	ld h, [hl]                                       ; $68ca: $66
	inc sp                                           ; $68cb: $33
	dec de                                           ; $68cc: $1b
	adc l                                            ; $68cd: $8d
	add a                                            ; $68ce: $87
	or h                                             ; $68cf: $b4
	db $db                                           ; $68d0: $db
	and $d5                                          ; $68d1: $e6 $d5
	xor $ad                                          ; $68d3: $ee $ad
	ld a, [hl]                                       ; $68d5: $7e
	jp c, Jump_057_60c0                              ; $68d6: $da $c0 $60

	sub c                                            ; $68d9: $91
	or b                                             ; $68da: $b0
	ld hl, sp+$78                                    ; $68db: $f8 $78
	ld a, b                                          ; $68dd: $78
	cp b                                             ; $68de: $b8
	cp h                                             ; $68df: $bc
	inc bc                                           ; $68e0: $03
	ld b, b                                          ; $68e1: $40
	add b                                            ; $68e2: $80
	ld d, b                                          ; $68e3: $50
	and h                                            ; $68e4: $a4
	ld [hl], b                                       ; $68e5: $70
	xor b                                            ; $68e6: $a8
	sbc l                                            ; $68e7: $9d
	ei                                               ; $68e8: $fb
	sub l                                            ; $68e9: $95
	ld b, b                                          ; $68ea: $40
	ld h, b                                          ; $68eb: $60
	push af                                          ; $68ec: $f5
	ld [$3a74], a                                    ; $68ed: $ea $74 $3a
	inc c                                            ; $68f0: $0c
	inc bc                                           ; $68f1: $03
	rlca                                             ; $68f2: $07
	ld bc, $7ff5                                     ; $68f3: $01 $f5 $7f
	ld hl, $809d                                     ; $68f6: $21 $9d $80
	ret nz                                           ; $68f9: $c0

	ld sp, hl                                        ; $68fa: $f9
	sub l                                            ; $68fb: $95
	adc b                                            ; $68fc: $88
	ld [de], a                                       ; $68fd: $12
	ld h, [hl]                                       ; $68fe: $66
	ld b, $1d                                        ; $68ff: $06 $1d
	ld a, [bc]                                       ; $6901: $0a
	dec b                                            ; $6902: $05
	ld [bc], a                                       ; $6903: $02
	ld [hl], b                                       ; $6904: $70
	jr nz, jr_057_6982                               ; $6905: $20 $7b

	ld l, a                                          ; $6907: $6f
	ld a, a                                          ; $6908: $7f
	ld sp, hl                                        ; $6909: $f9
	ld d, e                                          ; $690a: $53
	ret c                                            ; $690b: $d8

	ld e, [hl]                                       ; $690c: $5e
	jp nc, $079d                                     ; $690d: $d2 $9d $07

	ld c, $f9                                        ; $6910: $0e $f9
	sub a                                            ; $6912: $97
	rlca                                             ; $6913: $07
	ld e, $3c                                        ; $6914: $1e $3c
	ld [hl], e                                       ; $6916: $73
	rst SubAFromBC                                          ; $6917: $e7
	adc [hl]                                         ; $6918: $8e
	inc a                                            ; $6919: $3c
	ld a, b                                          ; $691a: $78
	ld sp, hl                                        ; $691b: $f9
	sbc h                                            ; $691c: $9c
	ret c                                            ; $691d: $d8

	ld [hl], b                                       ; $691e: $70
	ldh [$5a], a                                     ; $691f: $e0 $5a
	jp nc, $a8e0                                     ; $6921: $d2 $e0 $a8

	ld h, e                                          ; $6924: $63
	sbc h                                            ; $6925: $9c
	sub h                                            ; $6926: $94
	rrca                                             ; $6927: $0f
	dec d                                            ; $6928: $15
	dec b                                            ; $6929: $05
	ld d, [hl]                                       ; $692a: $56
	ld a, [hl+]                                      ; $692b: $2a
	sub [hl]                                         ; $692c: $96
	ld a, [hl+]                                      ; $692d: $2a
	ld d, [hl]                                       ; $692e: $56
	inc b                                            ; $692f: $04
	ld b, $06                                        ; $6930: $06 $06
	call c, $9603                                    ; $6932: $dc $03 $96
	ccf                                              ; $6935: $3f
	xor l                                            ; $6936: $ad
	xor [hl]                                         ; $6937: $ae
	xor $ee                                          ; $6938: $ee $ee
	cp c                                             ; $693a: $b9
	or a                                             ; $693b: $b7
	sub d                                            ; $693c: $92
	adc c                                            ; $693d: $89
	db $dd                                           ; $693e: $dd
	sbc e                                            ; $693f: $9b
	sbc b                                            ; $6940: $98
	rst SubAFromDE                                          ; $6941: $df
	sbc $ff                                          ; $6942: $de $ff
	inc a                                            ; $6944: $3c
	ld a, d                                          ; $6945: $7a
	pop af                                           ; $6946: $f1
	pop hl                                           ; $6947: $e1
	sbc $c0                                          ; $6948: $de $c0
	sbc d                                            ; $694a: $9a
	ld b, b                                          ; $694b: $40
	rst $38                                          ; $694c: $ff
	rst SubAFromHL                                          ; $694d: $d7
	add e                                            ; $694e: $83
	add c                                            ; $694f: $81
	sbc $80                                          ; $6950: $de $80
	sub l                                            ; $6952: $95
	ret nz                                           ; $6953: $c0

	sub c                                            ; $6954: $91
	sub c                                            ; $6955: $91
	ld e, c                                          ; $6956: $59
	ld c, b                                          ; $6957: $48
	xor h                                            ; $6958: $ac
	ld a, [$1fff]                                    ; $6959: $fa $ff $1f
	cp a                                             ; $695c: $bf
	db $dd                                           ; $695d: $dd
	rst $38                                          ; $695e: $ff
	add b                                            ; $695f: $80
	rst SubAFromDE                                          ; $6960: $df
	ld c, l                                          ; $6961: $4d
	ld h, [hl]                                       ; $6962: $66
	ld l, d                                          ; $6963: $6a
	dec h                                            ; $6964: $25
	sub l                                            ; $6965: $95
	sbc e                                            ; $6966: $9b
	jp z, Jump_057_53e6                              ; $6967: $ca $e6 $53

	jp hl                                            ; $696a: $e9


	add a                                            ; $696b: $87
	jp $e1e3                                         ; $696c: $c3 $e3 $e1


	pop af                                           ; $696f: $f1
	ld sp, hl                                        ; $6970: $f9
	db $fc                                           ; $6971: $fc
	cp $be                                           ; $6972: $fe $be
	ld l, l                                          ; $6974: $6d
	ld a, a                                          ; $6975: $7f
	db $dd                                           ; $6976: $dd
	cp $b7                                           ; $6977: $fe $b7
	ld a, l                                          ; $6979: $7d
	ld a, [hl]                                       ; $697a: $7e
	call c, $cede                                    ; $697b: $dc $de $ce
	rst AddAOntoHL                                          ; $697e: $ef
	add e                                            ; $697f: $83
	db $ed                                           ; $6980: $ed
	db $ec                                           ; $6981: $ec

jr_057_6982:
	and $e7                                          ; $6982: $e6 $e7
	ld b, l                                          ; $6984: $45
	ld d, d                                          ; $6985: $52
	or c                                             ; $6986: $b1
	jp z, Jump_057_5ff4                              ; $6987: $ca $f4 $5f

	xor e                                            ; $698a: $ab
	push de                                          ; $698b: $d5
	jr c, jr_057_699a                                ; $698c: $38 $0c

	ld b, $e1                                        ; $698e: $06 $e1
	ld hl, sp-$14                                    ; $6990: $f8 $ec
	halt                                             ; $6992: $76
	dec sp                                           ; $6993: $3b
	ld bc, $4080                                     ; $6994: $01 $80 $40
	add b                                            ; $6997: $80
	add b                                            ; $6998: $80
	ld b, b                                          ; $6999: $40

jr_057_699a:
	and e                                            ; $699a: $a3
	ld b, b                                          ; $699b: $40
	ld sp, hl                                        ; $699c: $f9
	sub a                                            ; $699d: $97
	or $3c                                           ; $699e: $f6 $3c
	ld a, b                                          ; $69a0: $78
	ret nc                                           ; $69a1: $d0

	xor b                                            ; $69a2: $a8
	call nc, $14ee                                   ; $69a3: $d4 $ee $14
	ld h, d                                          ; $69a6: $62
	ld sp, $059d                                     ; $69a7: $31 $9d $05
	inc bc                                           ; $69aa: $03
	ld [hl], d                                       ; $69ab: $72
	call z, $029e                                    ; $69ac: $cc $9e $02
	ld d, d                                          ; $69af: $52
	inc e                                            ; $69b0: $1c
	ld e, [hl]                                       ; $69b1: $5e
	ret nc                                           ; $69b2: $d0

	sub a                                            ; $69b3: $97
	inc e                                            ; $69b4: $1c
	add hl, sp                                       ; $69b5: $39
	inc sp                                           ; $69b6: $33
	ld h, [hl]                                       ; $69b7: $66
	call z, Call_057_7098                            ; $69b8: $cc $98 $70
	ldh [$f9], a                                     ; $69bb: $e0 $f9
	sbc l                                            ; $69bd: $9d
	ldh [$c0], a                                     ; $69be: $e0 $c0
	ld [bc], a                                       ; $69c0: $02
	pop de                                           ; $69c1: $d1
	ldh [$dd], a                                     ; $69c2: $e0 $dd
	sbc [hl]                                         ; $69c4: $9e
	rlca                                             ; $69c5: $07
	di                                               ; $69c6: $f3
	sbc l                                            ; $69c7: $9d
	pop bc                                           ; $69c8: $c1
	rst AddAOntoHL                                          ; $69c9: $ef
	ld h, d                                          ; $69ca: $62
	ld d, l                                          ; $69cb: $55
	sbc b                                            ; $69cc: $98
	ld b, $04                                        ; $69cd: $06 $04
	ld a, [bc]                                       ; $69cf: $0a
	inc e                                            ; $69d0: $1c
	ld a, b                                          ; $69d1: $78
	ret nc                                           ; $69d2: $d0

	ld l, b                                          ; $69d3: $68
	ei                                               ; $69d4: $fb
	sbc [hl]                                         ; $69d5: $9e
	jr nz, jr_057_6a53                               ; $69d6: $20 $7b

	sub e                                            ; $69d8: $93
	ld a, d                                          ; $69d9: $7a
	inc l                                            ; $69da: $2c
	sbc h                                            ; $69db: $9c
	inc bc                                           ; $69dc: $03
	ld h, a                                          ; $69dd: $67
	or [hl]                                          ; $69de: $b6
	ld h, l                                          ; $69df: $65
	add e                                            ; $69e0: $83
	add b                                            ; $69e1: $80
	xor d                                            ; $69e2: $aa
	ld a, a                                          ; $69e3: $7f
	sub $79                                          ; $69e4: $d6 $79
	ld [$57b6], a                                    ; $69e6: $ea $b6 $57
	adc h                                            ; $69e9: $8c
	inc bc                                           ; $69ea: $03
	inc bc                                           ; $69eb: $03
	rrca                                             ; $69ec: $0f
	rra                                              ; $69ed: $1f
	ld [hl], l                                       ; $69ee: $75
	ret                                              ; $69ef: $c9


	add e                                            ; $69f0: $83
	ld b, $9f                                        ; $69f1: $06 $9f
	ccf                                              ; $69f3: $3f
	ld a, [hl]                                       ; $69f4: $7e
	ld sp, hl                                        ; $69f5: $f9
	ld l, [hl]                                       ; $69f6: $6e
	db $fd                                           ; $69f7: $fd
	dec c                                            ; $69f8: $0d
	rla                                              ; $69f9: $17
	rst $38                                          ; $69fa: $ff
	ldh [$e1], a                                     ; $69fb: $e0 $e1
	rst SubAFromBC                                          ; $69fd: $e7
	rst $38                                          ; $69fe: $ff
	ld sp, hl                                        ; $69ff: $f9
	add [hl]                                         ; $6a00: $86
	add b                                            ; $6a01: $80
	rrca                                             ; $6a02: $0f
	ret nz                                           ; $6a03: $c0

	ldh [rAUD4GO], a                                 ; $6a04: $e0 $23
	pop bc                                           ; $6a06: $c1
	ld [hl], e                                       ; $6a07: $73
	add b                                            ; $6a08: $80
	rst SubAFromDE                                          ; $6a09: $df
	and b                                            ; $6a0a: $a0
	add b                                            ; $6a0b: $80
	ld bc, $e0c0                                     ; $6a0c: $01 $c0 $e0
	ld b, b                                          ; $6a0f: $40
	ret nz                                           ; $6a10: $c0

	ccf                                              ; $6a11: $3f
	ret nz                                           ; $6a12: $c0

	rst $38                                          ; $6a13: $ff
	rra                                              ; $6a14: $1f
	db $fc                                           ; $6a15: $fc

jr_057_6a16:
	db $db                                           ; $6a16: $db
	cp $00                                           ; $6a17: $fe $00
	rrca                                             ; $6a19: $0f
	ld b, $e2                                        ; $6a1a: $06 $e2
	rst $38                                          ; $6a1c: $ff
	inc bc                                           ; $6a1d: $03
	inc a                                            ; $6a1e: $3c
	ld a, a                                          ; $6a1f: $7f
	nop                                              ; $6a20: $00
	ld a, a                                          ; $6a21: $7f
	ei                                               ; $6a22: $fb
	add h                                            ; $6a23: $84
	db $f4                                           ; $6a24: $f4
	ld a, [$f415]                                    ; $6a25: $fa $15 $f4
	ld e, d                                          ; $6a28: $5a

jr_057_6a29:
	ld e, e                                          ; $6a29: $5b
	ld a, [$7ffa]                                    ; $6a2a: $fa $fa $7f
	cp a                                             ; $6a2d: $bf
	rst $38                                          ; $6a2e: $ff
	cpl                                              ; $6a2f: $2f
	rst GetHLinHL                                          ; $6a30: $cf
	ccf                                              ; $6a31: $3f
	rst AddAOntoHL                                          ; $6a32: $ef
	ld c, a                                          ; $6a33: $4f
	ld l, a                                          ; $6a34: $6f
	ld l, $bd                                        ; $6a35: $2e $bd
	db $d3                                           ; $6a37: $d3
	ld d, d                                          ; $6a38: $52
	ld sp, $c898                                     ; $6a39: $31 $98 $c8
	push af                                          ; $6a3c: $f5
	push af                                          ; $6a3d: $f5
	or $79                                           ; $6a3e: $f6 $79
	ld d, d                                          ; $6a40: $52
	rst SubAFromDE                                          ; $6a41: $df
	rst $38                                          ; $6a42: $ff
	add a                                            ; $6a43: $87
	ld l, a                                          ; $6a44: $6f
	xor d                                            ; $6a45: $aa
	and $46                                          ; $6a46: $e6 $46
	and [hl]                                         ; $6a48: $a6
	ld [hl], h                                       ; $6a49: $74
	db $fd                                           ; $6a4a: $fd
	ld c, c                                          ; $6a4b: $49
	sbc c                                            ; $6a4c: $99
	db $dd                                           ; $6a4d: $dd
	db $dd                                           ; $6a4e: $dd
	db $fd                                           ; $6a4f: $fd
	ld a, l                                          ; $6a50: $7d
	cp a                                             ; $6a51: $bf
	sbc a                                            ; $6a52: $9f

jr_057_6a53:
	rst $38                                          ; $6a53: $ff
	jr nz, jr_057_6a16                               ; $6a54: $20 $c0

	ldh [$d0], a                                     ; $6a56: $e0 $d0
	ldh [$c0], a                                     ; $6a58: $e0 $c0
	ld hl, $dac0                                     ; $6a5a: $21 $c0 $da
	add b                                            ; $6a5d: $80
	sub [hl]                                         ; $6a5e: $96
	nop                                              ; $6a5f: $00
	ld a, [bc]                                       ; $6a60: $0a
	inc e                                            ; $6a61: $1c
	ld a, [bc]                                       ; $6a62: $0a
	dec e                                            ; $6a63: $1d
	ld a, d                                          ; $6a64: $7a
	db $fd                                           ; $6a65: $fd
	ld e, $0d                                        ; $6a66: $1e $0d
	ld sp, hl                                        ; $6a68: $f9
	sub a                                            ; $6a69: $97
	jr nz, jr_057_6a80                               ; $6a6a: $20 $14

	and c                                            ; $6a6c: $a1
	ld d, [hl]                                       ; $6a6d: $56
	xor l                                            ; $6a6e: $ad
	ld d, [hl]                                       ; $6a6f: $56
	cp e                                             ; $6a70: $bb
	ld [hl], h                                       ; $6a71: $74
	db $fc                                           ; $6a72: $fc
	sub a                                            ; $6a73: $97
	ld [$0a04], sp                                   ; $6a74: $08 $04 $0a
	add hl, sp                                       ; $6a77: $39
	di                                               ; $6a78: $f3
	add $0c                                          ; $6a79: $c6 $0c
	jr c, jr_057_6ad6                                ; $6a7b: $38 $59

	xor h                                            ; $6a7d: $ac
	ld a, [hl+]                                      ; $6a7e: $2a
	pop de                                           ; $6a7f: $d1

jr_057_6a80:
	sbc [hl]                                         ; $6a80: $9e
	ccf                                              ; $6a81: $3f
	ld c, e                                          ; $6a82: $4b
	ld hl, sp+$66                                    ; $6a83: $f8 $66
	and b                                            ; $6a85: $a0
	ld h, a                                          ; $6a86: $67
	ld hl, sp+$5e                                    ; $6a87: $f8 $5e
	ld [hl], c                                       ; $6a89: $71
	ld a, a                                          ; $6a8a: $7f
	xor l                                            ; $6a8b: $ad
	sbc d                                            ; $6a8c: $9a
	dec d                                            ; $6a8d: $15
	ld a, [hl+]                                      ; $6a8e: $2a
	add [hl]                                         ; $6a8f: $86
	add hl, de                                       ; $6a90: $19
	ld b, d                                          ; $6a91: $42
	ld l, a                                          ; $6a92: $6f
	ld bc, $99ff                                     ; $6a93: $01 $ff $99
	inc c                                            ; $6a96: $0c
	jr jr_057_6a29                                   ; $6a97: $18 $90

	ld [hl], b                                       ; $6a99: $70
	ld d, b                                          ; $6a9a: $50
	and b                                            ; $6a9b: $a0
	ld [hl], e                                       ; $6a9c: $73
	add [hl]                                         ; $6a9d: $86
	sbc l                                            ; $6a9e: $9d
	nop                                              ; $6a9f: $00
	and b                                            ; $6aa0: $a0
	ld a, d                                          ; $6aa1: $7a
	ld a, [hl+]                                      ; $6aa2: $2a
	sub h                                            ; $6aa3: $94
	ld d, l                                          ; $6aa4: $55
	xor d                                            ; $6aa5: $aa
	ld d, l                                          ; $6aa6: $55
	inc l                                            ; $6aa7: $2c
	ld d, b                                          ; $6aa8: $50
	jr nz, jr_057_6aab                               ; $6aa9: $20 $00

jr_057_6aab:
	nop                                              ; $6aab: $00
	ld a, [bc]                                       ; $6aac: $0a
	inc d                                            ; $6aad: $14
	ld [$97fc], sp                                   ; $6aae: $08 $fc $97
	pop de                                           ; $6ab1: $d1
	and d                                            ; $6ab2: $a2
	ld de, $0100                                     ; $6ab3: $11 $00 $01
	ld bc, $0b04                                     ; $6ab6: $01 $04 $0b
	ld sp, hl                                        ; $6ab9: $f9
	add b                                            ; $6aba: $80
	ld e, e                                          ; $6abb: $5b
	xor l                                            ; $6abc: $ad
	ld e, l                                          ; $6abd: $5d
	db $fd                                           ; $6abe: $fd
	rst FarCall                                          ; $6abf: $f7
	ld e, h                                          ; $6ac0: $5c
	cp b                                             ; $6ac1: $b8
	ldh a, [rTMA]                                    ; $6ac2: $f0 $06
	ld b, $07                                        ; $6ac4: $06 $07
	rlca                                             ; $6ac6: $07
	rrca                                             ; $6ac7: $0f
	jr c, @+$72                                      ; $6ac8: $38 $70

	db $e4                                           ; $6aca: $e4
	ld e, b                                          ; $6acb: $58
	pop af                                           ; $6acc: $f1
	ld a, [$3367]                                    ; $6acd: $fa $67 $33
	sbc c                                            ; $6ad0: $99
	ld d, a                                          ; $6ad1: $57
	rst $38                                          ; $6ad2: $ff
	inc c                                            ; $6ad3: $0c
	sbc b                                            ; $6ad4: $98
	dec a                                            ; $6ad5: $3d

jr_057_6ad6:
	db $e3                                           ; $6ad6: $e3
	ld de, $4c89                                     ; $6ad7: $11 $89 $4c
	add b                                            ; $6ada: $80
	ld b, h                                          ; $6adb: $44
	ld a, l                                          ; $6adc: $7d
	rst $38                                          ; $6add: $ff
	cp $8f                                           ; $6ade: $fe $8f
	rrca                                             ; $6ae0: $0f
	cp a                                             ; $6ae1: $bf
	sbc [hl]                                         ; $6ae2: $9e
	cp a                                             ; $6ae3: $bf
	cp $fc                                           ; $6ae4: $fe $fc
	rst $38                                          ; $6ae6: $ff
	rst GetHLinHL                                          ; $6ae7: $cf
	sbc l                                            ; $6ae8: $9d
	inc e                                            ; $6ae9: $1c
	cp [hl]                                          ; $6aea: $be
	cp a                                             ; $6aeb: $bf
	db $e3                                           ; $6aec: $e3
	sbc l                                            ; $6aed: $9d
	or [hl]                                          ; $6aee: $b6
	di                                               ; $6aef: $f3
	pop hl                                           ; $6af0: $e1
	sub d                                            ; $6af1: $92
	ld e, $08                                        ; $6af2: $1e $08
	inc e                                            ; $6af4: $1c
	ld a, [hl]                                       ; $6af5: $7e
	ei                                               ; $6af6: $fb
	jp hl                                            ; $6af7: $e9


	ret nz                                           ; $6af8: $c0

	ld d, $90                                        ; $6af9: $16 $90
	ld c, $04                                        ; $6afb: $0e $04
	sbc e                                            ; $6afd: $9b
	daa                                              ; $6afe: $27
	ld a, a                                          ; $6aff: $7f
	rst $38                                          ; $6b00: $ff
	rst $38                                          ; $6b01: $ff
	dec e                                            ; $6b02: $1d
	ld c, $1f                                        ; $6b03: $0e $1f
	ld h, a                                          ; $6b05: $67
	rst $38                                          ; $6b06: $ff
	cp $f8                                           ; $6b07: $fe $f8
	ldh [c], a                                       ; $6b09: $e2
	sbc $03                                          ; $6b0a: $de $03
	rst SubAFromDE                                          ; $6b0c: $df
	ld a, [$f289]                                    ; $6b0d: $fa $89 $f2
	db $f4                                           ; $6b10: $f4
	push hl                                          ; $6b11: $e5
	rl [hl]                                          ; $6b12: $cb $16
	db $ec                                           ; $6b14: $ec
	adc a                                            ; $6b15: $8f
	rrca                                             ; $6b16: $0f
	rra                                              ; $6b17: $1f
	rra                                              ; $6b18: $1f
	ld a, $fc                                        ; $6b19: $3e $fc
	ld hl, sp-$10                                    ; $6b1b: $f8 $f0
	call nz, $f6e4                                   ; $6b1d: $c4 $e4 $f6
	db $fd                                           ; $6b20: $fd
	ld a, [hl]                                       ; $6b21: $7e
	sub h                                            ; $6b22: $94
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	sbc $ff                                          ; $6b25: $de $ff
	sbc l                                            ; $6b27: $9d
	ld a, d                                          ; $6b28: $7a
	or b                                             ; $6b29: $b0
	cp $97                                           ; $6b2a: $fe $97
	ld l, c                                          ; $6b2c: $69
	ld a, [hl-]                                      ; $6b2d: $3a
	sbc [hl]                                         ; $6b2e: $9e
	ld a, a                                          ; $6b2f: $7f
	ld hl, $0102                                     ; $6b30: $21 $02 $01
	ld [bc], a                                       ; $6b33: $02
	sbc $ff                                          ; $6b34: $de $ff
	sbc l                                            ; $6b36: $9d
	xor [hl]                                         ; $6b37: $ae
	ld c, d                                          ; $6b38: $4a
	cp $97                                           ; $6b39: $fe $97
	and b                                            ; $6b3b: $a0
	ret nc                                           ; $6b3c: $d0

	ld h, b                                          ; $6b3d: $60
	ld d, b                                          ; $6b3e: $50
	ret nz                                           ; $6b3f: $c0

	or b                                             ; $6b40: $b0
	ldh a, [c]                                       ; $6b41: $f2
	ld [hl], d                                       ; $6b42: $72
	ld a, b                                          ; $6b43: $78
	db $fd                                           ; $6b44: $fd
	sub a                                            ; $6b45: $97
	and b                                            ; $6b46: $a0
	jr nz, jr_057_6b49                               ; $6b47: $20 $00

jr_057_6b49:
	ld [$0f08], sp                                   ; $6b49: $08 $08 $0f
	inc bc                                           ; $6b4c: $03
	ld bc, $9075                                     ; $6b4d: $01 $75 $90
	ld h, b                                          ; $6b50: $60
	ld b, b                                          ; $6b51: $40
	sub d                                            ; $6b52: $92
	xor c                                            ; $6b53: $a9
	ld d, h                                          ; $6b54: $54
	cp d                                             ; $6b55: $ba
	push de                                          ; $6b56: $d5
	xor d                                            ; $6b57: $aa
	sbc l                                            ; $6b58: $9d
	adc [hl]                                         ; $6b59: $8e
	dec d                                            ; $6b5a: $15
	ld d, $0b                                        ; $6b5b: $16 $0b
	dec b                                            ; $6b5d: $05
	ld [$3004], sp                                   ; $6b5e: $08 $04 $30
	ld b, h                                          ; $6b61: $44
	sbc c                                            ; $6b62: $99
	dec b                                            ; $6b63: $05
	ld a, [bc]                                       ; $6b64: $0a
	inc d                                            ; $6b65: $14
	jr z, jr_057_6bb8                                ; $6b66: $28 $50

	or b                                             ; $6b68: $b0
	ld a, b                                          ; $6b69: $78
	inc a                                            ; $6b6a: $3c

Jump_057_6b6b:
	ld a, a                                          ; $6b6b: $7f
	adc [hl]                                         ; $6b6c: $8e
	sbc d                                            ; $6b6d: $9a
	ccf                                              ; $6b6e: $3f
	ld a, a                                          ; $6b6f: $7f
	rst $38                                          ; $6b70: $ff
	sbc $70                                          ; $6b71: $de $70
	ld l, [hl]                                       ; $6b73: $6e
	xor a                                            ; $6b74: $af
	reti                                             ; $6b75: $d9


	rst $38                                          ; $6b76: $ff
	sbc h                                            ; $6b77: $9c
	jr jr_057_6b80                                   ; $6b78: $18 $06

	inc bc                                           ; $6b7a: $03
	db $fc                                           ; $6b7b: $fc
	sbc [hl]                                         ; $6b7c: $9e
	ld hl, sp+$72                                    ; $6b7d: $f8 $72
	ld b, d                                          ; $6b7f: $42

jr_057_6b80:
	rst SubAFromDE                                          ; $6b80: $df
	rst $38                                          ; $6b81: $ff
	ld [hl], h                                       ; $6b82: $74
	sub h                                            ; $6b83: $94
	sbc e                                            ; $6b84: $9b
	ld b, b                                          ; $6b85: $40
	jr nz, jr_057_6bb8                               ; $6b86: $20 $30

	jr jr_057_6c01                                   ; $6b88: $18 $77

	ld hl, sp+$7e                                    ; $6b8a: $f8 $7e
	ld b, l                                          ; $6b8c: $45
	sbc l                                            ; $6b8d: $9d
	ldh a, [$f8]                                     ; $6b8e: $f0 $f8
	ld [hl], b                                       ; $6b90: $70
	add [hl]                                         ; $6b91: $86
	ld a, a                                          ; $6b92: $7f
	ld [hl], c                                       ; $6b93: $71
	ld l, a                                          ; $6b94: $6f
	and l                                            ; $6b95: $a5
	ld a, l                                          ; $6b96: $7d
	pop bc                                           ; $6b97: $c1
	ld [hl], l                                       ; $6b98: $75
	adc b                                            ; $6b99: $88
	sbc d                                            ; $6b9a: $9a
	ccf                                              ; $6b9b: $3f

Call_057_6b9c:
	rst SubAFromBC                                          ; $6b9c: $e7
	adc h                                            ; $6b9d: $8c
	jr jr_057_6bd0                                   ; $6b9e: $18 $30

	cp $9e                                           ; $6ba0: $fe $9e
	rra                                              ; $6ba2: $1f
	ld a, e                                          ; $6ba3: $7b
	ld h, $77                                        ; $6ba4: $26 $77
	ret nc                                           ; $6ba6: $d0

	sbc l                                            ; $6ba7: $9d
	ld hl, sp+$0e                                    ; $6ba8: $f8 $0e
	ld [hl], b                                       ; $6baa: $70
	cp $9d                                           ; $6bab: $fe $9d
	nop                                              ; $6bad: $00
	ldh a, [$dd]                                     ; $6bae: $f0 $dd
	rst $38                                          ; $6bb0: $ff
	add b                                            ; $6bb1: $80
	dec d                                            ; $6bb2: $15
	dec hl                                           ; $6bb3: $2b
	rla                                              ; $6bb4: $17
	cpl                                              ; $6bb5: $2f
	ld e, a                                          ; $6bb6: $5f
	cp a                                             ; $6bb7: $bf

jr_057_6bb8:
	ld [hl], b                                       ; $6bb8: $70
	db $10                                           ; $6bb9: $10
	ld bc, $0301                                     ; $6bba: $01 $01 $03
	inc bc                                           ; $6bbd: $03
	rlca                                             ; $6bbe: $07
	rst SubAFromDE                                          ; $6bbf: $df
	rst $38                                          ; $6bc0: $ff
	rst $38                                          ; $6bc1: $ff
	dec h                                            ; $6bc2: $25
	ld b, a                                          ; $6bc3: $47
	ld b, [hl]                                       ; $6bc4: $46
	ld l, a                                          ; $6bc5: $6f
	and e                                            ; $6bc6: $a3
	db $f4                                           ; $6bc7: $f4
	ld d, b                                          ; $6bc8: $50
	ld a, [$ccc6]                                    ; $6bc9: $fa $c6 $cc
	push de                                          ; $6bcc: $d5
	rst SubAFromHL                                          ; $6bcd: $d7
	add sp, -$18                                     ; $6bce: $e8 $e8

jr_057_6bd0:
	db $f4                                           ; $6bd0: $f4
	add b                                            ; $6bd1: $80
	db $f4                                           ; $6bd2: $f4
	rst SubAFromDE                                          ; $6bd3: $df
	ld e, [hl]                                       ; $6bd4: $5e
	push de                                          ; $6bd5: $d5
	cpl                                              ; $6bd6: $2f
	rst SubAFromHL                                          ; $6bd7: $d7
	rst AddAOntoHL                                          ; $6bd8: $ef
	ld h, a                                          ; $6bd9: $67
	ld [hl], a                                       ; $6bda: $77
	ld h, h                                          ; $6bdb: $64
	push hl                                          ; $6bdc: $e5
	rst AddAOntoHL                                          ; $6bdd: $ef
	cp $38                                           ; $6bde: $fe $38
	db $10                                           ; $6be0: $10
	jr jr_057_6beb                                   ; $6be1: $18 $08

	jp hl                                            ; $6be3: $e9


	db $fd                                           ; $6be4: $fd
	cp $bf                                           ; $6be5: $fe $bf
	rst SubAFromBC                                          ; $6be7: $e7
	db $e3                                           ; $6be8: $e3
	db $e3                                           ; $6be9: $e3
	ld [hl], c                                       ; $6bea: $71

jr_057_6beb:
	cp a                                             ; $6beb: $bf
	or a                                             ; $6bec: $b7
	dec sp                                           ; $6bed: $3b
	ld a, l                                          ; $6bee: $7d
	ld a, l                                          ; $6bef: $7d
	ld a, [hl]                                       ; $6bf0: $7e
	adc b                                            ; $6bf1: $88
	ld a, [hl]                                       ; $6bf2: $7e
	rst $38                                          ; $6bf3: $ff
	add b                                            ; $6bf4: $80
	db $ec                                           ; $6bf5: $ec
	rst AddAOntoHL                                          ; $6bf6: $ef
	ei                                               ; $6bf7: $fb
	ld [hl], a                                       ; $6bf8: $77
	xor $5c                                          ; $6bf9: $ee $5c
	ld a, b                                          ; $6bfb: $78
	add b                                            ; $6bfc: $80
	ret nz                                           ; $6bfd: $c0

	rst FarCall                                          ; $6bfe: $f7
	cp $fd                                           ; $6bff: $fe $fd

jr_057_6c01:
	ei                                               ; $6c01: $fb
	rst FarCall                                          ; $6c02: $f7
	rst AddAOntoHL                                          ; $6c03: $ef
	dec a                                            ; $6c04: $3d
	rst $38                                          ; $6c05: $ff
	ld a, h                                          ; $6c06: $7c
	ld hl, sp-$78                                    ; $6c07: $f8 $88
	ld a, e                                          ; $6c09: $7b
	add [hl]                                         ; $6c0a: $86
	sbc h                                            ; $6c0b: $9c
	ld e, $61                                        ; $6c0c: $1e $61
	sbc a                                            ; $6c0e: $9f
	ld [hl], a                                       ; $6c0f: $77
	sub c                                            ; $6c10: $91
	adc [hl]                                         ; $6c11: $8e
	rst $38                                          ; $6c12: $ff
	ret c                                            ; $6c13: $d8

	or h                                             ; $6c14: $b4
	ld l, b                                          ; $6c15: $68
	sub l                                            ; $6c16: $95
	and b                                            ; $6c17: $a0
	ld e, d                                          ; $6c18: $5a
	xor e                                            ; $6c19: $ab
	or $60                                           ; $6c1a: $f6 $60
	ret nz                                           ; $6c1c: $c0

	sub b                                            ; $6c1d: $90
	ld h, b                                          ; $6c1e: $60
	ret nc                                           ; $6c1f: $d0

	ldh [$dc], a                                     ; $6c20: $e0 $dc
	db $fc                                           ; $6c22: $fc
	db $fd                                           ; $6c23: $fd
	sbc e                                            ; $6c24: $9b
	ld hl, $daa5                                     ; $6c25: $21 $a5 $da
	ld d, e                                          ; $6c28: $53
	ld l, [hl]                                       ; $6c29: $6e
	ld a, [bc]                                       ; $6c2a: $0a
	sbc l                                            ; $6c2b: $9d
	dec b                                            ; $6c2c: $05
	cpl                                              ; $6c2d: $2f
	ld a, e                                          ; $6c2e: $7b
	ld [hl], l                                       ; $6c2f: $75
	sbc d                                            ; $6c30: $9a
	ld e, c                                          ; $6c31: $59
	ld a, d                                          ; $6c32: $7a
	ld d, l                                          ; $6c33: $55
	ld [$fcfe], a                                    ; $6c34: $ea $fe $fc
	ld a, a                                          ; $6c37: $7f
	cp e                                             ; $6c38: $bb
	sub d                                            ; $6c39: $92
	ld hl, sp-$25                                    ; $6c3a: $f8 $db
	rrca                                             ; $6c3c: $0f
	sbc c                                            ; $6c3d: $99
	inc c                                            ; $6c3e: $0c
	inc [hl]                                         ; $6c3f: $34
	xor e                                            ; $6c40: $ab
	adc $50                                          ; $6c41: $ce $50
	inc b                                            ; $6c43: $04
	nop                                              ; $6c44: $00
	ld [bc], a                                       ; $6c45: $02
	inc bc                                           ; $6c46: $03
	ld a, c                                          ; $6c47: $79
	db $eb                                           ; $6c48: $eb
	sub [hl]                                         ; $6c49: $96
	rlca                                             ; $6c4a: $07
	add h                                            ; $6c4b: $84
	add [hl]                                         ; $6c4c: $86
	ld [bc], a                                       ; $6c4d: $02
	ld b, $0e                                        ; $6c4e: $06 $0e
	ld e, $1a                                        ; $6c50: $1e $1a
	dec [hl]                                         ; $6c52: $35
	ld sp, hl                                        ; $6c53: $f9
	sub a                                            ; $6c54: $97
	ld a, [bc]                                       ; $6c55: $0a
	ld b, l                                          ; $6c56: $45
	ld a, [hl+]                                      ; $6c57: $2a
	dec [hl]                                         ; $6c58: $35
	ld a, [de]                                       ; $6c59: $1a
	dec e                                            ; $6c5a: $1d
	ld c, $0f                                        ; $6c5b: $0e $0f
	ld h, b                                          ; $6c5d: $60
	ld b, l                                          ; $6c5e: $45
	ld a, a                                          ; $6c5f: $7f
	inc d                                            ; $6c60: $14
	ld a, a                                          ; $6c61: $7f
	inc de                                           ; $6c62: $13
	sbc h                                            ; $6c63: $9c
	dec b                                            ; $6c64: $05
	add hl, bc                                       ; $6c65: $09
	inc de                                           ; $6c66: $13
	ld [hl], e                                       ; $6c67: $73
	ld b, b                                          ; $6c68: $40
	ld a, d                                          ; $6c69: $7a
	call $20df                                       ; $6c6a: $cd $df $20
	rst SubAFromDE                                          ; $6c6d: $df
	ld b, b                                          ; $6c6e: $40
	ld a, c                                          ; $6c6f: $79
	ld c, c                                          ; $6c70: $49
	ld h, d                                          ; $6c71: $62
	ret nc                                           ; $6c72: $d0

	ld sp, hl                                        ; $6c73: $f9
	ld c, a                                          ; $6c74: $4f
	ldh a, [$df]                                     ; $6c75: $f0 $df
	ld b, b                                          ; $6c77: $40
	reti                                             ; $6c78: $d9


	rst $38                                          ; $6c79: $ff
	ld a, l                                          ; $6c7a: $7d
	ld hl, $0d98                                     ; $6c7b: $21 $98 $0d
	inc c                                            ; $6c7e: $0c

Call_057_6c7f:
	inc b                                            ; $6c7f: $04
	ld b, $02                                        ; $6c80: $06 $02
	ld [bc], a                                       ; $6c82: $02
	db $fc                                           ; $6c83: $fc
	ld l, d                                          ; $6c84: $6a
	or b                                             ; $6c85: $b0
	sub a                                            ; $6c86: $97
	ld [$2010], sp                                   ; $6c87: $08 $10 $20
	ret nz                                           ; $6c8a: $c0

	ld b, b                                          ; $6c8b: $40
	pop bc                                           ; $6c8c: $c1
	add c                                            ; $6c8d: $81
	add c                                            ; $6c8e: $81
	ld a, d                                          ; $6c8f: $7a
	add e                                            ; $6c90: $83
	call c, Call_057_7fff                            ; $6c91: $dc $ff $7f
	or c                                             ; $6c94: $b1
	ld [hl], h                                       ; $6c95: $74
	push af                                          ; $6c96: $f5
	ld d, e                                          ; $6c97: $53
	ret nz                                           ; $6c98: $c0

	sbc d                                            ; $6c99: $9a
	ld b, d                                          ; $6c9a: $42
	ld h, d                                          ; $6c9b: $62
	ld [hl+], a                                      ; $6c9c: $22
	ld [hl-], a                                      ; $6c9d: $32
	inc sp                                           ; $6c9e: $33
	reti                                             ; $6c9f: $d9


	rst $38                                          ; $6ca0: $ff
	sbc b                                            ; $6ca1: $98
	add hl, bc                                       ; $6ca2: $09
	rlca                                             ; $6ca3: $07
	inc b                                            ; $6ca4: $04
	ld [bc], a                                       ; $6ca5: $02
	ld [de], a                                       ; $6ca6: $12
	ld de, $76f1                                     ; $6ca7: $11 $f1 $76
	or h                                             ; $6caa: $b4
	ld [hl], a                                       ; $6cab: $77
	cp [hl]                                          ; $6cac: $be
	add b                                            ; $6cad: $80
	ccf                                              ; $6cae: $3f
	ret c                                            ; $6caf: $d8

	adc b                                            ; $6cb0: $88
	or l                                             ; $6cb1: $b5
	ld l, [hl]                                       ; $6cb2: $6e
	ld bc, $8f05                                     ; $6cb3: $01 $05 $8f
	sbc a                                            ; $6cb6: $9f
	jp z, $daaa                                      ; $6cb7: $ca $aa $da

	ld [hl], l                                       ; $6cba: $75
	dec bc                                           ; $6cbb: $0b
	ld [bc], a                                       ; $6cbc: $02
	nop                                              ; $6cbd: $00
	add b                                            ; $6cbe: $80
	ld [hl], $35                                     ; $6cbf: $36 $35
	ld [hl-], a                                      ; $6cc1: $32
	ld [hl], h                                       ; $6cc2: $74
	ld a, b                                          ; $6cc3: $78
	sub b                                            ; $6cc4: $90
	ldh [$f8], a                                     ; $6cc5: $e0 $f8
	add hl, bc                                       ; $6cc7: $09
	dec bc                                           ; $6cc8: $0b
	rrca                                             ; $6cc9: $0f
	rrca                                             ; $6cca: $0f
	rst SubAFromDE                                          ; $6ccb: $df
	rst $38                                          ; $6ccc: $ff
	ld a, [hl]                                       ; $6ccd: $7e
	cpl                                              ; $6cce: $2f
	sbc h                                            ; $6ccf: $9c
	and c                                            ; $6cd0: $a1
	rst GetHLinHL                                          ; $6cd1: $cf
	jr c, jr_057_6d4f                                ; $6cd2: $38 $7b

	ld b, h                                          ; $6cd4: $44
	ld l, a                                          ; $6cd5: $6f

jr_057_6cd6:
	and h                                            ; $6cd6: $a4
	sbc $ff                                          ; $6cd7: $de $ff
	ld a, h                                          ; $6cd9: $7c
	ld d, b                                          ; $6cda: $50
	ld a, h                                          ; $6cdb: $7c
	ld c, a                                          ; $6cdc: $4f
	ld a, a                                          ; $6cdd: $7f
	ld c, b                                          ; $6cde: $48
	ld a, l                                          ; $6cdf: $7d
	ld [hl], e                                       ; $6ce0: $73
	sub a                                            ; $6ce1: $97
	ldh a, [$df]                                     ; $6ce2: $f0 $df
	ldh [rIE], a                                     ; $6ce4: $e0 $ff
	cp $fd                                           ; $6ce6: $fe $fd
	di                                               ; $6ce8: $f3
	rrca                                             ; $6ce9: $0f
	sbc $ff                                          ; $6cea: $de $ff
	sbc c                                            ; $6cec: $99
	jp $1182                                         ; $6ced: $c3 $82 $11


	dec de                                           ; $6cf0: $1b
	ld e, $1c                                        ; $6cf1: $1e $1c
	ld a, e                                          ; $6cf3: $7b
	push de                                          ; $6cf4: $d5
	call c, $9aff                                    ; $6cf5: $dc $ff $9a
	jp nz, $2090                                     ; $6cf8: $c2 $90 $20

	ret nz                                           ; $6cfb: $c0

	add c                                            ; $6cfc: $81
	ld a, e                                          ; $6cfd: $7b
	dec e                                            ; $6cfe: $1d
	ld a, l                                          ; $6cff: $7d
	ld d, c                                          ; $6d00: $51
	ld l, d                                          ; $6d01: $6a
	nop                                              ; $6d02: $00
	ld a, a                                          ; $6d03: $7f
	ld l, a                                          ; $6d04: $6f
	ld a, e                                          ; $6d05: $7b
	ld [hl], d                                       ; $6d06: $72
	sbc h                                            ; $6d07: $9c
	ld bc, $bf07                                     ; $6d08: $01 $07 $bf
	reti                                             ; $6d0b: $d9


	rst $38                                          ; $6d0c: $ff
	sub [hl]                                         ; $6d0d: $96
	ld a, a                                          ; $6d0e: $7f
	ld a, e                                          ; $6d0f: $7b
	ld a, c                                          ; $6d10: $79
	ld a, c                                          ; $6d11: $79
	ld sp, hl                                        ; $6d12: $f9
	ld sp, hl                                        ; $6d13: $f9
	ei                                               ; $6d14: $fb
	sbc h                                            ; $6d15: $9c
	sbc $db                                          ; $6d16: $de $db
	rst GetHLinHL                                          ; $6d18: $cf
	ld a, c                                          ; $6d19: $79
	ld e, l                                          ; $6d1a: $5d
	adc d                                            ; $6d1b: $8a
	ldh [rOBP0], a                                   ; $6d1c: $e0 $48
	nop                                              ; $6d1e: $00
	ld e, b                                          ; $6d1f: $58
	jr nc, jr_057_6d22                               ; $6d20: $30 $00

jr_057_6d22:
	ld b, $0c                                        ; $6d22: $06 $0c
	jr jr_057_6cd6                                   ; $6d24: $18 $b0

	ldh a, [$a0]                                     ; $6d26: $f0 $a0
	ret nz                                           ; $6d28: $c0

	ld l, e                                          ; $6d29: $6b
	push de                                          ; $6d2a: $d5
	ld l, d                                          ; $6d2b: $6a
	dec [hl]                                         ; $6d2c: $35
	ld a, [de]                                       ; $6d2d: $1a
	dec d                                            ; $6d2e: $15
	ld a, [hl+]                                      ; $6d2f: $2a
	dec d                                            ; $6d30: $15
	ld sp, hl                                        ; $6d31: $f9
	sub a                                            ; $6d32: $97
	rrca                                             ; $6d33: $0f
	adc e                                            ; $6d34: $8b
	sub l                                            ; $6d35: $95
	adc d                                            ; $6d36: $8a
	sub l                                            ; $6d37: $95
	cp $bd                                           ; $6d38: $fe $bd
	ld c, $f9                                        ; $6d3a: $0e $f9
	sub h                                            ; $6d3c: $94
	ld [de], a                                       ; $6d3d: $12
	ld [hl+], a                                      ; $6d3e: $22
	inc h                                            ; $6d3f: $24
	ld h, h                                          ; $6d40: $64
	ld c, h                                          ; $6d41: $4c
	ld c, b                                          ; $6d42: $48
	ld a, d                                          ; $6d43: $7a
	cp $1f                                           ; $6d44: $fe $1f
	ccf                                              ; $6d46: $3f
	ccf                                              ; $6d47: $3f
	db $dd                                           ; $6d48: $dd
	ld a, a                                          ; $6d49: $7f
	ld [hl], $d0                                     ; $6d4a: $36 $d0
	ld a, d                                          ; $6d4c: $7a
	and l                                            ; $6d4d: $a5
	rst SubAFromDE                                          ; $6d4e: $df

jr_057_6d4f:
	ld bc, $ffd9                                     ; $6d4f: $01 $d9 $ff
	sub a                                            ; $6d52: $97
	ret c                                            ; $6d53: $d8

	ret z                                            ; $6d54: $c8

	ret z                                            ; $6d55: $c8

	xor h                                            ; $6d56: $ac
	db $e4                                           ; $6d57: $e4
	db $e4                                           ; $6d58: $e4
	db $ec                                           ; $6d59: $ec
	ld l, h                                          ; $6d5a: $6c
	reti                                             ; $6d5b: $d9


	rst $38                                          ; $6d5c: $ff
	ld a, e                                          ; $6d5d: $7b
	push hl                                          ; $6d5e: $e5
	sbc $01                                          ; $6d5f: $de $01
	ld a, [hl]                                       ; $6d61: $7e
	ld d, l                                          ; $6d62: $55
	reti                                             ; $6d63: $d9


	rst $38                                          ; $6d64: $ff
	sbc e                                            ; $6d65: $9b
	add c                                            ; $6d66: $81
	add d                                            ; $6d67: $82
	add d                                            ; $6d68: $82
	ld [bc], a                                       ; $6d69: $02
	sbc $04                                          ; $6d6a: $de $04
	sbc [hl]                                         ; $6d6c: $9e
	inc c                                            ; $6d6d: $0c
	ld h, $80                                        ; $6d6e: $26 $80
	sbc e                                            ; $6d70: $9b
	rla                                              ; $6d71: $17
	rra                                              ; $6d72: $1f
	rra                                              ; $6d73: $1f
	ld c, $dd                                        ; $6d74: $0e $dd
	rrca                                             ; $6d76: $0f
	ld a, a                                          ; $6d77: $7f
	inc de                                           ; $6d78: $13
	ld a, l                                          ; $6d79: $7d
	jp nc, $fbdd                                     ; $6d7a: $d2 $dd $fb

	ld a, [hl]                                       ; $6d7d: $7e
	adc b                                            ; $6d7e: $88
	sub a                                            ; $6d7f: $97
	cp [hl]                                          ; $6d80: $be
	xor $ce                                          ; $6d81: $ee $ce
	add a                                            ; $6d83: $87
	rst FarCall                                          ; $6d84: $f7
	rst JumpTable                                          ; $6d85: $c7
	rst GetHLinHL                                          ; $6d86: $cf
	di                                               ; $6d87: $f3
	sbc $fb                                          ; $6d88: $de $fb
	sbc $fd                                          ; $6d8a: $de $fd
	sub e                                            ; $6d8c: $93
	rst $38                                          ; $6d8d: $ff
	ld a, [hl]                                       ; $6d8e: $7e
	ld a, l                                          ; $6d8f: $7d
	ld e, d                                          ; $6d90: $5a
	inc l                                            ; $6d91: $2c
	inc sp                                           ; $6d92: $33
	rra                                              ; $6d93: $1f
	rra                                              ; $6d94: $1f
	add b                                            ; $6d95: $80
	pop bc                                           ; $6d96: $c1
	jp $dde7                                         ; $6d97: $c3 $e7 $dd


	rst $38                                          ; $6d9a: $ff
	sub [hl]                                         ; $6d9b: $96
	ld a, l                                          ; $6d9c: $7d
	sbc e                                            ; $6d9d: $9b
	rlca                                             ; $6d9e: $07
	ld c, $0e                                        ; $6d9f: $0e $0e

jr_057_6da1:
	rra                                              ; $6da1: $1f

jr_057_6da2:
	rst $38                                          ; $6da2: $ff
	rst $38                                          ; $6da3: $ff
	rst SubAFromBC                                          ; $6da4: $e7
	ld a, c                                          ; $6da5: $79
	and d                                            ; $6da6: $a2
	ld a, l                                          ; $6da7: $7d
	and c                                            ; $6da8: $a1
	rst SubAFromDE                                          ; $6da9: $df
	rst FarCall                                          ; $6daa: $f7
	ld a, l                                          ; $6dab: $7d
	adc a                                            ; $6dac: $8f
	sbc c                                            ; $6dad: $99
	nop                                              ; $6dae: $00
	inc c                                            ; $6daf: $0c
	jr c, jr_057_6da2                                ; $6db0: $38 $f0

	ld hl, sp-$04                                    ; $6db2: $f8 $fc
	ld h, [hl]                                       ; $6db4: $66
	cp [hl]                                          ; $6db5: $be
	ld [hl], a                                       ; $6db6: $77
	ld h, c                                          ; $6db7: $61
	ld a, c                                          ; $6db8: $79
	cp h                                             ; $6db9: $bc
	ld a, [hl]                                       ; $6dba: $7e
	jp nz, $ffda                                     ; $6dbb: $c2 $da $ff

	sbc h                                            ; $6dbe: $9c
	jr c, jr_057_6da1                                ; $6dbf: $38 $e0

	ret nz                                           ; $6dc1: $c0

	sbc $c2                                          ; $6dc2: $de $c2
	rst SubAFromDE                                          ; $6dc4: $df
	jp $ffd9                                         ; $6dc5: $c3 $d9 $ff


	sbc h                                            ; $6dc8: $9c
	ld [$3018], sp                                   ; $6dc9: $08 $18 $30
	ld a, d                                          ; $6dcc: $7a
	adc $9e                                          ; $6dcd: $ce $9e
	add b                                            ; $6dcf: $80
	ld a, e                                          ; $6dd0: $7b
	cp [hl]                                          ; $6dd1: $be
	db $db                                           ; $6dd2: $db
	rst $38                                          ; $6dd3: $ff
	sbc b                                            ; $6dd4: $98
	rra                                              ; $6dd5: $1f
	ld sp, $8000                                     ; $6dd6: $31 $00 $80
	ld h, e                                          ; $6dd9: $63
	rra                                              ; $6dda: $1f
	db $fd                                           ; $6ddb: $fd
	ld l, d                                          ; $6ddc: $6a
	ld [de], a                                       ; $6ddd: $12
	sbc [hl]                                         ; $6dde: $9e
	cp $6f                                           ; $6ddf: $fe $6f
	jr z, @-$66                                      ; $6de1: $28 $98

	rrc [hl]                                         ; $6de3: $cb $0e
	rst $38                                          ; $6de5: $ff
	rst GetHLinHL                                          ; $6de6: $cf
	rst GetHLinHL                                          ; $6de7: $cf
	rst SubAFromBC                                          ; $6de8: $e7
	rst SubAFromBC                                          ; $6de9: $e7
	ld a, e                                          ; $6dea: $7b
	ld hl, sp-$6d                                    ; $6deb: $f8 $93
	ldh a, [c]                                       ; $6ded: $f2
	ld h, b                                          ; $6dee: $60
	ld [hl], b                                       ; $6def: $70
	sub b                                            ; $6df0: $90
	jr nz, @-$2e                                     ; $6df1: $20 $d0

	and b                                            ; $6df3: $a0
	ret nz                                           ; $6df4: $c0

	ldh a, [$80]                                     ; $6df5: $f0 $80
	add b                                            ; $6df7: $80
	ld h, b                                          ; $6df8: $60
	halt                                             ; $6df9: $76
	rlca                                             ; $6dfa: $07
	sub [hl]                                         ; $6dfb: $96
	add b                                            ; $6dfc: $80
	dec hl                                           ; $6dfd: $2b
	inc d                                            ; $6dfe: $14
	ld a, [hl+]                                      ; $6dff: $2a
	ld d, $2a                                        ; $6e00: $16 $2a
	ld e, $0c                                        ; $6e02: $1e $0c
	inc e                                            ; $6e04: $1c
	ld sp, hl                                        ; $6e05: $f9
	ld a, l                                          ; $6e06: $7d
	sbc l                                            ; $6e07: $9d
	sbc c                                            ; $6e08: $99
	rrca                                             ; $6e09: $0f
	dec b                                            ; $6e0a: $05
	rla                                              ; $6e0b: $17
	dec b                                            ; $6e0c: $05
	ld e, e                                          ; $6e0d: $5b
	ld d, l                                          ; $6e0e: $55
	ld [hl], l                                       ; $6e0f: $75
	ld [hl], l                                       ; $6e10: $75
	ld a, a                                          ; $6e11: $7f
	cp $93                                           ; $6e12: $fe $93
	inc b                                            ; $6e14: $04
	ld a, [bc]                                       ; $6e15: $0a
	pop bc                                           ; $6e16: $c1
	sbc e                                            ; $6e17: $9b
	dec c                                            ; $6e18: $0d
	rrca                                             ; $6e19: $0f
	rra                                              ; $6e1a: $1f
	rra                                              ; $6e1b: $1f
	sbc a                                            ; $6e1c: $9f
	rst AddAOntoHL                                          ; $6e1d: $ef
	inc bc                                           ; $6e1e: $03
	ld a, h                                          ; $6e1f: $7c
	ld [hl], b                                       ; $6e20: $70
	ld l, b                                          ; $6e21: $68
	ld a, a                                          ; $6e22: $7f
	ret z                                            ; $6e23: $c8

	adc b                                            ; $6e24: $88
	ldh [$78], a                                     ; $6e25: $e0 $78
	db $dd                                           ; $6e27: $dd
	db $db                                           ; $6e28: $db
	rst SubAFromBC                                          ; $6e29: $e7
	rst $38                                          ; $6e2a: $ff
	di                                               ; $6e2b: $f3
	rst $38                                          ; $6e2c: $ff
	ld a, a                                          ; $6e2d: $7f
	sbc a                                            ; $6e2e: $9f
	ld l, a                                          ; $6e2f: $6f
	scf                                              ; $6e30: $37
	dec de                                           ; $6e31: $1b
	dec bc                                           ; $6e32: $0b
	dec c                                            ; $6e33: $0d
	nop                                              ; $6e34: $00
	nop                                              ; $6e35: $00
	pop bc                                           ; $6e36: $c1
	jp $c7c3                                         ; $6e37: $c3 $c3 $c7


	adc a                                            ; $6e3a: $8f
	sbc a                                            ; $6e3b: $9f
	reti                                             ; $6e3c: $d9


	rst $38                                          ; $6e3d: $ff
	sbc h                                            ; $6e3e: $9c
	ld l, h                                          ; $6e3f: $6c
	ld a, b                                          ; $6e40: $78
	ld hl, sp-$22                                    ; $6e41: $f8 $de
	ldh a, [$9e]                                     ; $6e43: $f0 $9e
	add b                                            ; $6e45: $80
	ld [hl], b                                       ; $6e46: $70
	add h                                            ; $6e47: $84
	db $dd                                           ; $6e48: $dd
	rst $38                                          ; $6e49: $ff
	sbc $02                                          ; $6e4a: $de $02
	rst SubAFromDE                                          ; $6e4c: $df
	ld b, $9c                                        ; $6e4d: $06 $9c
	rra                                              ; $6e4f: $1f
	jr nc, @+$39                                     ; $6e50: $30 $37

	db $db                                           ; $6e52: $db
	rst $38                                          ; $6e53: $ff
	ld a, a                                          ; $6e54: $7f

jr_057_6e55:
	add hl, sp                                       ; $6e55: $39
	sbc b                                            ; $6e56: $98
	inc c                                            ; $6e57: $0c
	ld [$1808], sp                                   ; $6e58: $08 $08 $18
	jr jr_057_6e55                                   ; $6e5b: $18 $f8

	ccf                                              ; $6e5d: $3f
	ld a, b                                          ; $6e5e: $78
	halt                                             ; $6e5f: $76
	ld [hl], e                                       ; $6e60: $73
	ld d, d                                          ; $6e61: $52
	sbc [hl]                                         ; $6e62: $9e
	ldh [$fa], a                                     ; $6e63: $e0 $fa
	sbc [hl]                                         ; $6e65: $9e
	db $e3                                           ; $6e66: $e3
	reti                                             ; $6e67: $d9


	rst $38                                          ; $6e68: $ff
	ld a, e                                          ; $6e69: $7b
	sub e                                            ; $6e6a: $93
	sbc d                                            ; $6e6b: $9a
	dec a                                            ; $6e6c: $3d
	dec sp                                           ; $6e6d: $3b
	ld a, d                                          ; $6e6e: $7a
	or $f6                                           ; $6e6f: $f6 $f6
	halt                                             ; $6e71: $76
	db $f4                                           ; $6e72: $f4
	rst SubAFromDE                                          ; $6e73: $df
	rst AddAOntoHL                                          ; $6e74: $ef
	rst SubAFromDE                                          ; $6e75: $df
	rst SubAFromDE                                          ; $6e76: $df
	rst SubAFromDE                                          ; $6e77: $df
	inc bc                                           ; $6e78: $03
	ld [hl], e                                       ; $6e79: $73
	nop                                              ; $6e7a: $00
	sbc l                                            ; $6e7b: $9d
	nop                                              ; $6e7c: $00
	cp $6b                                           ; $6e7d: $fe $6b
	ld l, $97                                        ; $6e7f: $2e $97
	sbc a                                            ; $6e81: $9f
	adc a                                            ; $6e82: $8f
	adc $c4                                          ; $6e83: $ce $c4
	call nz, $e4e4                                   ; $6e85: $c4 $e4 $e4
	and $79                                          ; $6e88: $e6 $79
	rst SubAFromBC                                          ; $6e8a: $e7
	rst SubAFromDE                                          ; $6e8b: $df
	ld a, a                                          ; $6e8c: $7f
	sbc $bf                                          ; $6e8d: $de $bf
	ld a, [hl]                                       ; $6e8f: $7e
	rst JumpTable                                          ; $6e90: $c7
	adc a                                            ; $6e91: $8f
	jr jr_057_6e99                                   ; $6e92: $18 $05

	sub b                                            ; $6e94: $90
	ld de, $1261                                     ; $6e95: $11 $61 $12
	rst $38                                          ; $6e98: $ff

jr_057_6e99:
	ld hl, sp-$01                                    ; $6e99: $f8 $ff
	cp $0e                                           ; $6e9b: $fe $0e
	ld c, $9e                                        ; $6e9d: $0e $9e
	db $e4                                           ; $6e9f: $e4
	rst $38                                          ; $6ea0: $ff
	add e                                            ; $6ea1: $83
	ld [hl], h                                       ; $6ea2: $74
	adc b                                            ; $6ea3: $88
	sbc e                                            ; $6ea4: $9b
	sub l                                            ; $6ea5: $95
	jp z, Jump_057_7cff                              ; $6ea6: $ca $ff $7c

	ld [hl], e                                       ; $6ea9: $73
	and l                                            ; $6eaa: $a5
	sub [hl]                                         ; $6eab: $96
	add b                                            ; $6eac: $80
	ld hl, sp+$7c                                    ; $6ead: $f8 $7c
	ccf                                              ; $6eaf: $3f
	rlca                                             ; $6eb0: $07
	add e                                            ; $6eb1: $83
	dec d                                            ; $6eb2: $15
	ld b, h                                          ; $6eb3: $44
	db $ec                                           ; $6eb4: $ec
	ld a, e                                          ; $6eb5: $7b
	sub h                                            ; $6eb6: $94
	sbc l                                            ; $6eb7: $9d
	rrca                                             ; $6eb8: $0f
	rlca                                             ; $6eb9: $07
	sbc $03                                          ; $6eba: $de $03
	rst SubAFromDE                                          ; $6ebc: $df
	ld h, a                                          ; $6ebd: $67
	sbc [hl]                                         ; $6ebe: $9e
	scf                                              ; $6ebf: $37
	ld a, d                                          ; $6ec0: $7a
	sbc e                                            ; $6ec1: $9b
	ld a, a                                          ; $6ec2: $7f
	jp $e16e                                         ; $6ec3: $c3 $6e $e1


	ld a, [hl]                                       ; $6ec6: $7e
	adc e                                            ; $6ec7: $8b
	sbc e                                            ; $6ec8: $9b
	db $fc                                           ; $6ec9: $fc
	db $e3                                           ; $6eca: $e3
	rst SubAFromDE                                          ; $6ecb: $df
	cp a                                             ; $6ecc: $bf
	ld [hl], a                                       ; $6ecd: $77
	di                                               ; $6ece: $f3
	ld a, a                                          ; $6ecf: $7f
	ld hl, sp-$63                                    ; $6ed0: $f8 $9d
	call c, Call_057_7ab0                            ; $6ed2: $dc $b0 $7a
	xor $83                                          ; $6ed5: $ee $83
	add e                                            ; $6ed7: $83
	rst $38                                          ; $6ed8: $ff
	ld a, [hl]                                       ; $6ed9: $7e
	rst $38                                          ; $6eda: $ff
	rst FarCall                                          ; $6edb: $f7
	rst SubAFromDE                                          ; $6edc: $df
	xor a                                            ; $6edd: $af
	rst SubAFromDE                                          ; $6ede: $df
	cp a                                             ; $6edf: $bf
	rst $38                                          ; $6ee0: $ff
	add c                                            ; $6ee1: $81
	nop                                              ; $6ee2: $00
	ld [$7030], sp                                   ; $6ee3: $08 $30 $70
	ldh [$c0], a                                     ; $6ee6: $e0 $c0
	cp a                                             ; $6ee8: $bf
	sbc $b0                                          ; $6ee9: $de $b0
	rst AddAOntoHL                                          ; $6eeb: $ef
	or $f9                                           ; $6eec: $f6 $f9
	ld sp, hl                                        ; $6eee: $f9
	ld hl, sp-$3f                                    ; $6eef: $f8 $c1
	pop hl                                           ; $6ef1: $e1
	ld a, a                                          ; $6ef2: $7f

Jump_057_6ef3:
	ld a, e                                          ; $6ef3: $7b
	cp a                                             ; $6ef4: $bf
	rst SubAFromDE                                          ; $6ef5: $df
	rlca                                             ; $6ef6: $07
	sub a                                            ; $6ef7: $97
	add sp, -$2c                                     ; $6ef8: $e8 $d4
	add sp, -$40                                     ; $6efa: $e8 $c0
	jr z, jr_057_6f4e                                ; $6efc: $28 $50

	xor b                                            ; $6efe: $a8

Jump_057_6eff:
	pop af                                           ; $6eff: $f1
	sbc $c0                                          ; $6f00: $de $c0
	sbc $80                                          ; $6f02: $de $80
	ld a, a                                          ; $6f04: $7f
	db $fc                                           ; $6f05: $fc
	sub a                                            ; $6f06: $97
	ld a, h                                          ; $6f07: $7c
	inc a                                            ; $6f08: $3c
	inc c                                            ; $6f09: $0c
	inc d                                            ; $6f0a: $14
	jr z, @+$16                                      ; $6f0b: $28 $14

jr_057_6f0d:
	jr z, jr_057_6f5f                                ; $6f0d: $28 $50

	ld sp, hl                                        ; $6f0f: $f9

Call_057_6f10:
	sub a                                            ; $6f10: $97
	ld l, d                                          ; $6f11: $6a
	ld d, l                                          ; $6f12: $55
	ld l, d                                          ; $6f13: $6a
	ld sp, $041a                                     ; $6f14: $31 $1a $04
	ld [bc], a                                       ; $6f17: $02
	ld bc, $6d79                                     ; $6f18: $01 $79 $6d
	sbc b                                            ; $6f1b: $98
	ld c, $05                                        ; $6f1c: $0e $05
	inc bc                                           ; $6f1e: $03
	ld bc, $2f00                                     ; $6f1f: $01 $00 $2f
	ccf                                              ; $6f22: $3f
	ld [hl], a                                       ; $6f23: $77
	ld b, d                                          ; $6f24: $42
	ld a, e                                          ; $6f25: $7b
	add d                                            ; $6f26: $82
	sbc [hl]                                         ; $6f27: $9e
	ret nz                                           ; $6f28: $c0

	ld [hl], e                                       ; $6f29: $73
	ccf                                              ; $6f2a: $3f
	sub e                                            ; $6f2b: $93
	nop                                              ; $6f2c: $00
	ld [hl], a                                       ; $6f2d: $77
	ld a, a                                          ; $6f2e: $7f
	db $fd                                           ; $6f2f: $fd
	ld bc, $1d03                                     ; $6f30: $01 $03 $1d
	rst AddAOntoHL                                          ; $6f33: $ef
	rst $38                                          ; $6f34: $ff
	adc l                                            ; $6f35: $8d
	rst $38                                          ; $6f36: $ff
	inc bc                                           ; $6f37: $03
	sbc $ff                                          ; $6f38: $de $ff
	add l                                            ; $6f3a: $85
	pop af                                           ; $6f3b: $f1
	ld bc, $7f3b                                     ; $6f3c: $01 $3b $7f
	ei                                               ; $6f3f: $fb
	xor $fc                                          ; $6f40: $ee $fc
	adc l                                            ; $6f42: $8d
	sbc b                                            ; $6f43: $98
	or d                                             ; $6f44: $b2
	rst $38                                          ; $6f45: $ff
	db $fd                                           ; $6f46: $fd
	db $fd                                           ; $6f47: $fd
	ldh a, [c]                                       ; $6f48: $f2
	inc b                                            ; $6f49: $04
	inc b                                            ; $6f4a: $04
	ld [$8010], sp                                   ; $6f4b: $08 $10 $80

jr_057_6f4e:
	ret nz                                           ; $6f4e: $c0

	ld b, b                                          ; $6f4f: $40
	ld h, b                                          ; $6f50: $60
	jr nz, jr_057_6fc3                               ; $6f51: $20 $70

	db $10                                           ; $6f53: $10
	ld e, b                                          ; $6f54: $58
	ld a, e                                          ; $6f55: $7b
	ld hl, $3fdf                                     ; $6f56: $21 $df $3f
	rst SubAFromDE                                          ; $6f59: $df
	rra                                              ; $6f5a: $1f
	sbc [hl]                                         ; $6f5b: $9e
	rrca                                             ; $6f5c: $0f
	sbc $30                                          ; $6f5d: $de $30

jr_057_6f5f:
	sbc d                                            ; $6f5f: $9a
	jr nz, jr_057_6f92                               ; $6f60: $20 $30

	ld l, h                                          ; $6f62: $6c
	ldh [c], a                                       ; $6f63: $e2
	pop af                                           ; $6f64: $f1
	sbc $e0                                          ; $6f65: $de $e0
	rst SubAFromDE                                          ; $6f67: $df
	ldh a, [$9b]                                     ; $6f68: $f0 $9b
	add sp, -$79                                     ; $6f6a: $e8 $87
	add b                                            ; $6f6c: $80
	ld a, $71                                        ; $6f6d: $3e $71
	jr c, jr_057_6f0d                                ; $6f6f: $38 $9c

	cp $7f                                           ; $6f71: $fe $7f
	rra                                              ; $6f73: $1f
	ld [hl], a                                       ; $6f74: $77
	xor c                                            ; $6f75: $a9
	ld a, l                                          ; $6f76: $7d
	db $e4                                           ; $6f77: $e4
	add h                                            ; $6f78: $84
	rst $38                                          ; $6f79: $ff
	rst SubAFromDE                                          ; $6f7a: $df
	cp a                                             ; $6f7b: $bf
	rst SubAFromDE                                          ; $6f7c: $df
	rst $38                                          ; $6f7d: $ff
	rst FarCall                                          ; $6f7e: $f7
	rst SubAFromBC                                          ; $6f7f: $e7
	push de                                          ; $6f80: $d5
	ei                                               ; $6f81: $fb
	ccf                                              ; $6f82: $3f
	rst SubAFromDE                                          ; $6f83: $df
	ld l, a                                          ; $6f84: $6f
	cpl                                              ; $6f85: $2f
	ld l, $3e                                        ; $6f86: $2e $3e
	db $fd                                           ; $6f88: $fd
	rlca                                             ; $6f89: $07
	db $ec                                           ; $6f8a: $ec
	db $ec                                           ; $6f8b: $ec
	call c, $b8d8                                    ; $6f8c: $dc $d8 $b8
	cp b                                             ; $6f8f: $b8
	ld hl, sp+$68                                    ; $6f90: $f8 $68

jr_057_6f92:
	cp a                                             ; $6f92: $bf
	cp a                                             ; $6f93: $bf
	ld a, c                                          ; $6f94: $79
	inc de                                           ; $6f95: $13
	sbc h                                            ; $6f96: $9c
	rst AddAOntoHL                                          ; $6f97: $ef
	rst GetHLinHL                                          ; $6f98: $cf
	sbc a                                            ; $6f99: $9f
	ld b, l                                          ; $6f9a: $45
	ld h, b                                          ; $6f9b: $60
	sbc h                                            ; $6f9c: $9c
	ldh [c], a                                       ; $6f9d: $e2
	db $e3                                           ; $6f9e: $e3
	db $e3                                           ; $6f9f: $e3
	db $dd                                           ; $6fa0: $dd
	ldh [c], a                                       ; $6fa1: $e2
	sbc [hl]                                         ; $6fa2: $9e
	pop hl                                           ; $6fa3: $e1
	reti                                             ; $6fa4: $d9


	cp a                                             ; $6fa5: $bf
	rst $38                                          ; $6fa6: $ff

Jump_057_6fa7:
	sbc b                                            ; $6fa7: $98
	db $10                                           ; $6fa8: $10
	sub b                                            ; $6fa9: $90
	sub b                                            ; $6faa: $90
	sbc b                                            ; $6fab: $98
	ld e, b                                          ; $6fac: $58
	ld a, b                                          ; $6fad: $78
	db $fd                                           ; $6fae: $fd
	jp c, $9bff                                      ; $6faf: $da $ff $9b

	scf                                              ; $6fb2: $37
	ld a, [bc]                                       ; $6fb3: $0a
	inc bc                                           ; $6fb4: $03
	nop                                              ; $6fb5: $00
	ld [hl], a                                       ; $6fb6: $77
	and l                                            ; $6fb7: $a5
	ld a, l                                          ; $6fb8: $7d
	sbc $6c                                          ; $6fb9: $de $6c
	ld l, [hl]                                       ; $6fbb: $6e
	sbc [hl]                                         ; $6fbc: $9e
	ret z                                            ; $6fbd: $c8

	ld a, d                                          ; $6fbe: $7a
	cp c                                             ; $6fbf: $b9
	sbc c                                            ; $6fc0: $99
	pop hl                                           ; $6fc1: $e1
	add hl, sp                                       ; $6fc2: $39

jr_057_6fc3:
	rlca                                             ; $6fc3: $07
	inc bc                                           ; $6fc4: $03
	rlca                                             ; $6fc5: $07
	rra                                              ; $6fc6: $1f
	ld l, [hl]                                       ; $6fc7: $6e
	call Call_057_6c7f                               ; $6fc8: $cd $7f $6c
	sbc [hl]                                         ; $6fcb: $9e
	rrca                                             ; $6fcc: $0f
	ld a, d                                          ; $6fcd: $7a
	ld l, l                                          ; $6fce: $6d
	sbc l                                            ; $6fcf: $9d
	add b                                            ; $6fd0: $80
	add c                                            ; $6fd1: $81
	reti                                             ; $6fd2: $d9


	rst $38                                          ; $6fd3: $ff
	ld a, l                                          ; $6fd4: $7d
	ret nc                                           ; $6fd5: $d0

	sbc c                                            ; $6fd6: $99
	rra                                              ; $6fd7: $1f
	dec e                                            ; $6fd8: $1d
	rra                                              ; $6fd9: $1f
	sbc a                                            ; $6fda: $9f
	sub [hl]                                         ; $6fdb: $96
	db $dd                                           ; $6fdc: $dd
	halt                                             ; $6fdd: $76
	or e                                             ; $6fde: $b3
	ld a, h                                          ; $6fdf: $7c
	ld h, h                                          ; $6fe0: $64
	sub [hl]                                         ; $6fe1: $96
	ld sp, hl                                        ; $6fe2: $f9
	di                                               ; $6fe3: $f3
	ld a, a                                          ; $6fe4: $7f
	rst $38                                          ; $6fe5: $ff
	cp $f0                                           ; $6fe6: $fe $f0
	ret nz                                           ; $6fe8: $c0

	ld a, [hl]                                       ; $6fe9: $7e
	rst $38                                          ; $6fea: $ff
	ld a, c                                          ; $6feb: $79
	add hl, sp                                       ; $6fec: $39
	sbc l                                            ; $6fed: $9d
	ld bc, $750f                                     ; $6fee: $01 $0f $75
	inc a                                            ; $6ff1: $3c
	ld a, a                                          ; $6ff2: $7f
	di                                               ; $6ff3: $f3
	ld [hl], e                                       ; $6ff4: $73
	add d                                            ; $6ff5: $82
	sbc [hl]                                         ; $6ff6: $9e
	sub a                                            ; $6ff7: $97
	ld [hl], e                                       ; $6ff8: $73
	di                                               ; $6ff9: $f3
	rst SubAFromDE                                          ; $6ffa: $df
	rst $38                                          ; $6ffb: $ff
	sub e                                            ; $6ffc: $93
	rst AddAOntoHL                                          ; $6ffd: $ef
	xor d                                            ; $6ffe: $aa
	push de                                          ; $6fff: $d5
	xor d                                            ; $7000: $aa
	ldh [$80], a                                     ; $7001: $e0 $80
	ldh [$e0], a                                     ; $7003: $e0 $e0
	ret nz                                           ; $7005: $c0

	ret nz                                           ; $7006: $c0

	and b                                            ; $7007: $a0
	ret nz                                           ; $7008: $c0

	ld a, d                                          ; $7009: $7a
	jp nz, $80df                                     ; $700a: $c2 $df $80

	sub a                                            ; $700d: $97
	and b                                            ; $700e: $a0
	ld b, b                                          ; $700f: $40
	xor b                                            ; $7010: $a8
	ld d, h                                          ; $7011: $54
	ld a, [hl+]                                      ; $7012: $2a
	inc d                                            ; $7013: $14
	ld l, $bc                                        ; $7014: $2e $bc
	ld sp, hl                                        ; $7016: $f9
	ld a, b                                          ; $7017: $78
	sub h                                            ; $7018: $94
	rst SubAFromDE                                          ; $7019: $df
	rlca                                             ; $701a: $07
	sbc h                                            ; $701b: $9c
	dec d                                            ; $701c: $15
	ld l, c                                          ; $701d: $69
	sub $67                                          ; $701e: $d6 $67

jr_057_7020:
	pop af                                           ; $7020: $f1
	ld h, b                                          ; $7021: $60
	sbc b                                            ; $7022: $98
	sbc h                                            ; $7023: $9c
	ld bc, $0202                                     ; $7024: $01 $02 $02
	ld [hl], c                                       ; $7027: $71
	ld a, [hl]                                       ; $7028: $7e
	ld a, [hl]                                       ; $7029: $7e
	ld e, [hl]                                       ; $702a: $5e
	ld a, a                                          ; $702b: $7f
	db $10                                           ; $702c: $10
	ld [hl], b                                       ; $702d: $70
	ld h, a                                          ; $702e: $67
	ld a, h                                          ; $702f: $7c
	ld a, c                                          ; $7030: $79
	adc [hl]                                         ; $7031: $8e
	rst $38                                          ; $7032: $ff
	add hl, bc                                       ; $7033: $09
	ld de, $a012                                     ; $7034: $11 $12 $a0
	push hl                                          ; $7037: $e5
	db $eb                                           ; $7038: $eb

jr_057_7039:
	ld d, a                                          ; $7039: $57
	xor d                                            ; $703a: $aa
	ld d, a                                          ; $703b: $57
	xor [hl]                                         ; $703c: $ae
	ld e, a                                          ; $703d: $5f
	jr nc, jr_057_7020                               ; $703e: $30 $e0

	ld b, b                                          ; $7040: $40
	ret nz                                           ; $7041: $c0

	add b                                            ; $7042: $80
	cp $97                                           ; $7043: $fe $97
	xor b                                            ; $7045: $a8
	ld e, h                                          ; $7046: $5c
	xor h                                            ; $7047: $ac
	ld d, [hl]                                       ; $7048: $56
	xor e                                            ; $7049: $ab
	ld d, l                                          ; $704a: $55
	xor l                                            ; $704b: $ad
	ld e, b                                          ; $704c: $58
	ld a, d                                          ; $704d: $7a
	ld d, h                                          ; $704e: $54
	ld [hl], l                                       ; $704f: $75
	push bc                                          ; $7050: $c5
	adc [hl]                                         ; $7051: $8e
	nop                                              ; $7052: $00
	db $fc                                           ; $7053: $fc
	cp $fe                                           ; $7054: $fe $fe
	sbc $d6                                          ; $7056: $de $d6
	pop bc                                           ; $7058: $c1
	add c                                            ; $7059: $81
	pop bc                                           ; $705a: $c1
	add b                                            ; $705b: $80
	pop bc                                           ; $705c: $c1
	pop hl                                           ; $705d: $e1
	ld sp, hl                                        ; $705e: $f9
	rst GetHLinHL                                          ; $705f: $cf
	jp $80c0                                         ; $7060: $c3 $c0 $80


	ld [hl], h                                       ; $7063: $74
	ld c, a                                          ; $7064: $4f
	sbc l                                            ; $7065: $9d
	rlca                                             ; $7066: $07
	ei                                               ; $7067: $fb
	ld a, e                                          ; $7068: $7b
	or b                                             ; $7069: $b0
	db $dd                                           ; $706a: $dd
	rst $38                                          ; $706b: $ff
	sbc h                                            ; $706c: $9c
	db $fc                                           ; $706d: $fc
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	ld a, e                                          ; $7070: $7b
	daa                                              ; $7071: $27
	sbc d                                            ; $7072: $9a
	rst SubAFromBC                                          ; $7073: $e7
	ld l, a                                          ; $7074: $6f
	cp [hl]                                          ; $7075: $be
	ldh a, [c]                                       ; $7076: $f2
	jp nz, Jump_057_427b                             ; $7077: $c2 $7b $42

	sbc c                                            ; $707a: $99
	db $fc                                           ; $707b: $fc

Call_057_707c:
	sbc a                                            ; $707c: $9f
	ld [hl], e                                       ; $707d: $73
	ld c, a                                          ; $707e: $4f

Call_057_707f:
	ld a, a                                          ; $707f: $7f
	ldh a, [$78]                                     ; $7080: $f0 $78
	db $e3                                           ; $7082: $e3
	halt                                             ; $7083: $76
	dec h                                            ; $7084: $25
	sbc l                                            ; $7085: $9d
	rra                                              ; $7086: $1f
	ccf                                              ; $7087: $3f
	ld l, a                                          ; $7088: $6f
	db $10                                           ; $7089: $10
	ld b, [hl]                                       ; $708a: $46
	ret nz                                           ; $708b: $c0

	sbc h                                            ; $708c: $9c
	pop af                                           ; $708d: $f1
	ld [hl], c                                       ; $708e: $71
	ld [hl], c                                       ; $708f: $71
	call c, $9e31                                    ; $7090: $dc $31 $9e
	sbc a                                            ; $7093: $9f
	ld l, c                                          ; $7094: $69
	ld a, $97                                        ; $7095: $3e $97
	inc a                                            ; $7097: $3c

Call_057_7098:
	ccf                                              ; $7098: $3f
	ccf                                              ; $7099: $3f
	inc a                                            ; $709a: $3c
	jr c, jr_057_7039                                ; $709b: $38 $9c

	sub h                                            ; $709d: $94
	sub [hl]                                         ; $709e: $96
	ld l, e                                          ; $709f: $6b
	ld l, d                                          ; $70a0: $6a
	ld a, a                                          ; $70a1: $7f
	ret nc                                           ; $70a2: $d0

	sbc c                                            ; $70a3: $99
	ldh [$fe], a                                     ; $70a4: $e0 $fe
	ld [hl], a                                       ; $70a6: $77
	rrca                                             ; $70a7: $0f
	ld c, $1f                                        ; $70a8: $0e $1f
	ld [hl], h                                       ; $70aa: $74
	ld [hl], b                                       ; $70ab: $70
	sbc d                                            ; $70ac: $9a
	ei                                               ; $70ad: $fb
	db $fc                                           ; $70ae: $fc
	db $fd                                           ; $70af: $fd
	db $fd                                           ; $70b0: $fd
	ei                                               ; $70b1: $fb
	halt                                             ; $70b2: $76
	or h                                             ; $70b3: $b4
	ld a, c                                          ; $70b4: $79
	ret c                                            ; $70b5: $d8

	ld a, h                                          ; $70b6: $7c
	adc $da                                          ; $70b7: $ce $da
	rst $38                                          ; $70b9: $ff
	sub a                                            ; $70ba: $97
	add c                                            ; $70bb: $81
	jp $2e42                                         ; $70bc: $c3 $42 $2e


	jr c, jr_057_70f1                                ; $70bf: $38 $30

	or b                                             ; $70c1: $b0
	add b                                            ; $70c2: $80
	halt                                             ; $70c3: $76
	pop de                                           ; $70c4: $d1
	ld a, [hl]                                       ; $70c5: $7e
	ret nc                                           ; $70c6: $d0

	ld a, [hl]                                       ; $70c7: $7e
	db $e3                                           ; $70c8: $e3
	sbc e                                            ; $70c9: $9b
	ld l, e                                          ; $70ca: $6b
	ld [hl], a                                       ; $70cb: $77
	ld l, a                                          ; $70cc: $6f
	ld l, l                                          ; $70cd: $6d
	ld a, c                                          ; $70ce: $79
	and [hl]                                         ; $70cf: $a6
	add [hl]                                         ; $70d0: $86
	dec b                                            ; $70d1: $05
	rst FarCall                                          ; $70d2: $f7
	rst AddAOntoHL                                          ; $70d3: $ef
	ld e, a                                          ; $70d4: $5f
	ld e, [hl]                                       ; $70d5: $5e
	ld a, b                                          ; $70d6: $78
	jr nc, jr_057_70f1                               ; $70d7: $30 $18

	rrca                                             ; $70d9: $0f
	ld hl, sp-$01                                    ; $70da: $f8 $ff
	ld a, [hl]                                       ; $70dc: $7e
	pop af                                           ; $70dd: $f1
	jp $9f8f                                         ; $70de: $c3 $8f $9f


	ldh a, [rIE]                                     ; $70e1: $f0 $ff
	ldh [hLCDCIntHandlerIdx], a                                     ; $70e3: $e0 $81
	rrca                                             ; $70e5: $0f
	ld a, $7c                                        ; $70e6: $3e $7c
	ld a, a                                          ; $70e8: $7f
	ldh [$da], a                                     ; $70e9: $e0 $da
	rst $38                                          ; $70eb: $ff
	sbc [hl]                                         ; $70ec: $9e
	ld a, a                                          ; $70ed: $7f
	ld [hl], a                                       ; $70ee: $77
	cp d                                             ; $70ef: $ba
	ld a, e                                          ; $70f0: $7b

jr_057_70f1:
	db $fc                                           ; $70f1: $fc
	sbc d                                            ; $70f2: $9a
	ld h, b                                          ; $70f3: $60
	pop hl                                           ; $70f4: $e1
	ldh a, [$f8]                                     ; $70f5: $f0 $f8
	ld hl, sp+$7b                                    ; $70f7: $f8 $7b
	inc l                                            ; $70f9: $2c
	adc [hl]                                         ; $70fa: $8e
	cp $80                                           ; $70fb: $fe $80
	ld b, b                                          ; $70fd: $40
	jr nz, @+$12                                     ; $70fe: $20 $10

	ld [$0408], sp                                   ; $7100: $08 $08 $04
	inc b                                            ; $7103: $04
	ld d, h                                          ; $7104: $54
	xor c                                            ; $7105: $a9
	ld e, h                                          ; $7106: $5c
	xor e                                            ; $7107: $ab
	sub $2b                                          ; $7108: $d6 $2b
	ld d, $2a                                        ; $710a: $16 $2a
	ld a, d                                          ; $710c: $7a
	push de                                          ; $710d: $d5
	ld [hl], e                                       ; $710e: $73
	cp $8f                                           ; $710f: $fe $8f
	and d                                            ; $7111: $a2
	ld d, h                                          ; $7112: $54
	ld [$dc59], a                                    ; $7113: $ea $59 $dc
	inc e                                            ; $7116: $1c
	ld e, $0f                                        ; $7117: $1e $0f
	dec b                                            ; $7119: $05
	add e                                            ; $711a: $83
	inc bc                                           ; $711b: $03
	adc c                                            ; $711c: $89
	dec a                                            ; $711d: $3d
	sbc h                                            ; $711e: $9c
	ld c, $0e                                        ; $711f: $0e $0e
	ld h, d                                          ; $7121: $62
	ret nz                                           ; $7122: $c0

	ld l, d                                          ; $7123: $6a
	and d                                            ; $7124: $a2
	ld a, l                                          ; $7125: $7d
	ld c, $8b                                        ; $7126: $0e $8b
	ei                                               ; $7128: $fb
	db $fd                                           ; $7129: $fd
	ei                                               ; $712a: $fb
	rst FarCall                                          ; $712b: $f7
	rst $38                                          ; $712c: $ff
	rst SubAFromDE                                          ; $712d: $df
	inc h                                            ; $712e: $24
	inc h                                            ; $712f: $24
	ld c, b                                          ; $7130: $48
	ld d, b                                          ; $7131: $50
	sub b                                            ; $7132: $90
	and b                                            ; $7133: $a0
	jr nz, jr_057_7176                               ; $7134: $20 $40

	xor e                                            ; $7136: $ab
	ld d, a                                          ; $7137: $57
	cp a                                             ; $7138: $bf
	ld [hl], h                                       ; $7139: $74
	or b                                             ; $713a: $b0
	ldh [$72], a                                     ; $713b: $e0 $72
	ld e, e                                          ; $713d: $5b
	db $fc                                           ; $713e: $fc
	sub a                                            ; $713f: $97
	and b                                            ; $7140: $a0
	ld b, c                                          ; $7141: $41
	add d                                            ; $7142: $82
	rlca                                             ; $7143: $07
	dec bc                                           ; $7144: $0b
	rla                                              ; $7145: $17
	ld a, [hl+]                                      ; $7146: $2a
	ld d, h                                          ; $7147: $54
	ld h, [hl]                                       ; $7148: $66
	ld [hl], h                                       ; $7149: $74
	sbc [hl]                                         ; $714a: $9e
	add c                                            ; $714b: $81
	sbc $83                                          ; $714c: $de $83
	sbc e                                            ; $714e: $9b
	rlca                                             ; $714f: $07
	add a                                            ; $7150: $87
	rrca                                             ; $7151: $0f
	ld sp, hl                                        ; $7152: $f9
	call c, $9c80                                    ; $7153: $dc $80 $9c
	nop                                              ; $7156: $00
	ldh a, [rTMA]                                    ; $7157: $f0 $06
	ld c, a                                          ; $7159: $4f
	or b                                             ; $715a: $b0
	rst $38                                          ; $715b: $ff
	sbc [hl]                                         ; $715c: $9e
	rst JumpTable                                          ; $715d: $c7
	ld a, d                                          ; $715e: $7a
	rlca                                             ; $715f: $07
	sub e                                            ; $7160: $93
	and $fe                                          ; $7161: $e6 $fe
	ld a, [$7dcd]                                    ; $7163: $fa $cd $7d
	ld a, c                                          ; $7166: $79
	add hl, bc                                       ; $7167: $09
	dec bc                                           ; $7168: $0b
	dec de                                           ; $7169: $1b
	inc de                                           ; $716a: $13
	rla                                              ; $716b: $17
	ld [hl], $fc                                     ; $716c: $36 $fc
	sbc l                                            ; $716e: $9d
	ld b, [hl]                                       ; $716f: $46
	add b                                            ; $7170: $80
	ld l, [hl]                                       ; $7171: $6e
	ret nc                                           ; $7172: $d0

	ld a, h                                          ; $7173: $7c
	cp h                                             ; $7174: $bc
	ei                                               ; $7175: $fb

jr_057_7176:
	ld a, l                                          ; $7176: $7d
	or e                                             ; $7177: $b3
	sbc [hl]                                         ; $7178: $9e
	inc e                                            ; $7179: $1c
	ld l, l                                          ; $717a: $6d
	jp $c47d                                         ; $717b: $c3 $7d $c4


	rst SubAFromDE                                          ; $717e: $df
	add hl, sp                                       ; $717f: $39
	sub h                                            ; $7180: $94
	dec a                                            ; $7181: $3d
	ld a, $3f                                        ; $7182: $3e $3f
	dec sp                                           ; $7184: $3b
	dec a                                            ; $7185: $3d
	inc a                                            ; $7186: $3c
	rst AddAOntoHL                                          ; $7187: $ef
	rst AddAOntoHL                                          ; $7188: $ef
	rst FarCall                                          ; $7189: $f7
	ei                                               ; $718a: $fb
	db $fd                                           ; $718b: $fd
	ld a, b                                          ; $718c: $78
	db $ed                                           ; $718d: $ed
	sub a                                            ; $718e: $97
	sbc d                                            ; $718f: $9a
	adc e                                            ; $7190: $8b
	ret                                              ; $7191: $c9


	call $cccd                                       ; $7192: $cd $cd $cc
	db $ec                                           ; $7195: $ec
	xor $6b                                          ; $7196: $ee $6b
	add hl, de                                       ; $7198: $19
	sub d                                            ; $7199: $92
	rst $38                                          ; $719a: $ff
	ld a, $fe                                        ; $719b: $3e $fe
	db $fd                                           ; $719d: $fd
	ld sp, hl                                        ; $719e: $f9
	cp a                                             ; $719f: $bf
	jp $1473                                         ; $71a0: $c3 $73 $14


	ei                                               ; $71a3: $fb
	rst FarCall                                          ; $71a4: $f7
	scf                                              ; $71a5: $37
	rst GetHLinHL                                          ; $71a6: $cf
	halt                                             ; $71a7: $76
	ld e, [hl]                                       ; $71a8: $5e
	rst SubAFromDE                                          ; $71a9: $df
	cp $df                                           ; $71aa: $fe $df
	ld hl, sp-$6a                                    ; $71ac: $f8 $96
	ldh [hDisp0_LCDC], a                                     ; $71ae: $e0 $82
	rlca                                             ; $71b0: $07
	ld c, $fc                                        ; $71b1: $0e $fc
	ld hl, sp-$10                                    ; $71b3: $f8 $f0
	ldh a, [$e0]                                     ; $71b5: $f0 $e0
	ld [hl], d                                       ; $71b7: $72
	ld e, $99                                        ; $71b8: $1e $99
	ld bc, $1508                                     ; $71ba: $01 $08 $15
	xor d                                            ; $71bd: $aa
	ld d, l                                          ; $71be: $55
	xor $fb                                          ; $71bf: $ee $fb
	ld a, h                                          ; $71c1: $7c
	sbc b                                            ; $71c2: $98
	add [hl]                                         ; $71c3: $86
	rlca                                             ; $71c4: $07
	ld b, $0c                                        ; $71c5: $06 $0c
	cp c                                             ; $71c7: $b9
	ld hl, $42a3                                     ; $71c8: $21 $a3 $42
	ld e, h                                          ; $71cb: $5c
	ld c, $0c                                        ; $71cc: $0e $0c
	jr jr_057_71e0                                   ; $71ce: $18 $10

	ld sp, $e663                                     ; $71d0: $31 $63 $e6
	db $e4                                           ; $71d3: $e4
	ld e, $7e                                        ; $71d4: $1e $7e
	and $c7                                          ; $71d6: $e6 $c7
	ld c, $18                                        ; $71d8: $0e $18
	add hl, sp                                       ; $71da: $39
	ld d, e                                          ; $71db: $53
	inc a                                            ; $71dc: $3c
	ld a, b                                          ; $71dd: $78
	add h                                            ; $71de: $84
	sbc d                                            ; $71df: $9a

jr_057_71e0:
	add b                                            ; $71e0: $80
	inc c                                            ; $71e1: $0c
	jr jr_057_7214                                   ; $71e2: $18 $30

	rra                                              ; $71e4: $1f
	ld [hl], c                                       ; $71e5: $71
	adc b                                            ; $71e6: $88
	adc h                                            ; $71e7: $8c
	sbc a                                            ; $71e8: $9f
	sbc [hl]                                         ; $71e9: $9e
	db $10                                           ; $71ea: $10
	ld [$2284], sp                                   ; $71eb: $08 $84 $22
	ld [de], a                                       ; $71ee: $12
	ld a, [bc]                                       ; $71ef: $0a
	ld a, [bc]                                       ; $71f0: $0a
	adc d                                            ; $71f1: $8a
	db $fc                                           ; $71f2: $fc
	ld hl, sp-$20                                    ; $71f3: $f8 $e0
	ret nz                                           ; $71f5: $c0

	pop bc                                           ; $71f6: $c1
	add d                                            ; $71f7: $82
	dec b                                            ; $71f8: $05
	rrca                                             ; $71f9: $0f
	inc b                                            ; $71fa: $04
	ld a, [$1497]                                    ; $71fb: $fa $97 $14
	inc l                                            ; $71fe: $2c
	ld e, b                                          ; $71ff: $58
	cp b                                             ; $7200: $b8
	ld d, b                                          ; $7201: $50
	or b                                             ; $7202: $b0
	ldh a, [$f8]                                     ; $7203: $f0 $f8
	ld sp, hl                                        ; $7205: $f9
	ld [hl], c                                       ; $7206: $71
	ret                                              ; $7207: $c9


	ld l, a                                          ; $7208: $6f
	ld hl, sp+$79                                    ; $7209: $f8 $79
	jp nz, Jump_057_4dff                             ; $720b: $c2 $ff $4d

	nop                                              ; $720e: $00
	db $db                                           ; $720f: $db
	ld [hl+], a                                      ; $7210: $22
	sbc [hl]                                         ; $7211: $9e
	inc sp                                           ; $7212: $33
	ret c                                            ; $7213: $d8

jr_057_7214:
	ld [hl+], a                                      ; $7214: $22
	ld h, e                                          ; $7215: $63
	or $9c                                           ; $7216: $f6 $9c
	inc hl                                           ; $7218: $23
	inc sp                                           ; $7219: $33
	ld [hl-], a                                      ; $721a: $32
	ld h, e                                          ; $721b: $63
	or $df                                           ; $721c: $f6 $df
	inc sp                                           ; $721e: $33
	sbc [hl]                                         ; $721f: $9e
	ld [hl+], a                                      ; $7220: $22
	db $db                                           ; $7221: $db
	ld b, h                                          ; $7222: $44
	sbc [hl]                                         ; $7223: $9e
	ld d, l                                          ; $7224: $55
	ld l, a                                          ; $7225: $6f
	or $99                                           ; $7226: $f6 $99
	ld b, l                                          ; $7228: $45
	ld d, h                                          ; $7229: $54
	ld b, l                                          ; $722a: $45
	ld d, l                                          ; $722b: $55
	ld d, l                                          ; $722c: $55
	ld h, e                                          ; $722d: $63
	ld l, a                                          ; $722e: $6f
	or $99                                           ; $722f: $f6 $99
	ld d, l                                          ; $7231: $55
	ld h, [hl]                                       ; $7232: $66
	ld d, l                                          ; $7233: $55
	ld [hl], d                                       ; $7234: $72
	ld [hl+], a                                      ; $7235: $22
	inc h                                            ; $7236: $24
	ld a, e                                          ; $7237: $7b
	or $91                                           ; $7238: $f6 $91
	ld d, l                                          ; $723a: $55
	ld b, h                                          ; $723b: $44
	ld h, l                                          ; $723c: $65
	halt                                             ; $723d: $76
	ld h, d                                          ; $723e: $62
	ld [hl+], a                                      ; $723f: $22
	ld [hl+], a                                      ; $7240: $22
	ld b, h                                          ; $7241: $44
	ld b, d                                          ; $7242: $42
	dec h                                            ; $7243: $25
	ld d, l                                          ; $7244: $55
	ld b, h                                          ; $7245: $44
	ld b, h                                          ; $7246: $44
	ld h, [hl]                                       ; $7247: $66
	ld a, e                                          ; $7248: $7b
	or $9c                                           ; $7249: $f6 $9c
	inc h                                            ; $724b: $24
	ld [hl+], a                                      ; $724c: $22
	inc h                                            ; $724d: $24
	ld a, e                                          ; $724e: $7b
	db $eb                                           ; $724f: $eb
	rst SubAFromDE                                          ; $7250: $df
	ld h, [hl]                                       ; $7251: $66
	db $dd                                           ; $7252: $dd
	ld [hl+], a                                      ; $7253: $22
	ld a, e                                          ; $7254: $7b
	or $df                                           ; $7255: $f6 $df
	ld [hl+], a                                      ; $7257: $22
	ld a, a                                          ; $7258: $7f
	or $39                                           ; $7259: $f6 $39
	adc d                                            ; $725b: $8a
	sub a                                            ; $725c: $97
	inc bc                                           ; $725d: $03
	dec bc                                           ; $725e: $0b
	rlca                                             ; $725f: $07
	rlca                                             ; $7260: $07

Call_057_7261:
	dec bc                                           ; $7261: $0b
	rlca                                             ; $7262: $07
	rrca                                             ; $7263: $0f
	rla                                              ; $7264: $17
	ld sp, hl                                        ; $7265: $f9
	sub a                                            ; $7266: $97
	db $f4                                           ; $7267: $f4
	db $fc                                           ; $7268: $fc
	ld hl, sp-$2e                                    ; $7269: $f8 $d2
	add sp, -$0c                                     ; $726b: $e8 $f4
	ld d, b                                          ; $726d: $50
	add sp, -$07                                     ; $726e: $e8 $f9
	sub a                                            ; $7270: $97
	ld [de], a                                       ; $7271: $12
	adc e                                            ; $7272: $8b
	ld b, $11                                        ; $7273: $06 $11
	inc b                                            ; $7275: $04
	ld hl, $558a                                     ; $7276: $21 $8a $55
	ld sp, hl                                        ; $7279: $f9
	sub a                                            ; $727a: $97
	rst AddAOntoHL                                          ; $727b: $ef
	ld e, [hl]                                       ; $727c: $5e
	or a                                             ; $727d: $b7
	ld e, a                                          ; $727e: $5f
	cp a                                             ; $727f: $bf
	inc d                                            ; $7280: $14
	cp a                                             ; $7281: $bf
	ld a, [hl]                                       ; $7282: $7e
	ld sp, hl                                        ; $7283: $f9
	sub a                                            ; $7284: $97
	db $e4                                           ; $7285: $e4
	jp c, $dbf4                                      ; $7286: $da $f4 $db

	ldh a, [c]                                       ; $7289: $f2
	call z, $edba                                    ; $728a: $cc $ba $ed
	ld sp, hl                                        ; $728d: $f9
	sub a                                            ; $728e: $97
	dec c                                            ; $728f: $0d
	ld c, d                                          ; $7290: $4a
	rra                                              ; $7291: $1f
	dec e                                            ; $7292: $1d
	ld a, $5a                                        ; $7293: $3e $5a
	rst $38                                          ; $7295: $ff
	ld d, h                                          ; $7296: $54
	ld sp, hl                                        ; $7297: $f9
	sub a                                            ; $7298: $97
	dec b                                            ; $7299: $05
	ld a, [bc]                                       ; $729a: $0a
	inc bc                                           ; $729b: $03
	dec b                                            ; $729c: $05
	add d                                            ; $729d: $82
	add c                                            ; $729e: $81
	nop                                              ; $729f: $00
	ld bc, $97f9                                     ; $72a0: $01 $f9 $97
	ld [hl], b                                       ; $72a3: $70
	pop hl                                           ; $72a4: $e1
	ldh a, [c]                                       ; $72a5: $f2
	ld h, c                                          ; $72a6: $61
	and d                                            ; $72a7: $a2
	ld b, l                                          ; $72a8: $45
	dec bc                                           ; $72a9: $0b
	ld d, $f9                                        ; $72aa: $16 $f9
	sub a                                            ; $72ac: $97
	ld d, h                                          ; $72ad: $54
	xor d                                            ; $72ae: $aa
	ld d, b                                          ; $72af: $50
	pop hl                                           ; $72b0: $e1
	ret nc                                           ; $72b1: $d0

	ldh [$c0], a                                     ; $72b2: $e0 $c0
	add b                                            ; $72b4: $80
	ld sp, hl                                        ; $72b5: $f9
	sub a                                            ; $72b6: $97
	adc d                                            ; $72b7: $8a
	dec h                                            ; $72b8: $25
	ld b, d                                          ; $72b9: $42
	dec hl                                           ; $72ba: $2b
	inc b                                            ; $72bb: $04
	xor d                                            ; $72bc: $aa
	ld e, l                                          ; $72bd: $5d
	ld c, d                                          ; $72be: $4a
	ld h, e                                          ; $72bf: $63
	ldh [$99], a                                     ; $72c0: $e0 $99
	jr z, @-$2e                                      ; $72c2: $28 $d0

	jr nz, jr_057_7306                               ; $72c4: $20 $40

	add b                                            ; $72c6: $80
	nop                                              ; $72c7: $00
	ld h, e                                          ; $72c8: $63
	ldh [rIE], a                                     ; $72c9: $e0 $ff
	ld a, a                                          ; $72cb: $7f
	or l                                             ; $72cc: $b5
	sbc e                                            ; $72cd: $9b
	ld [bc], a                                       ; $72ce: $02
	ld bc, $0402                                     ; $72cf: $01 $02 $04
	ld sp, hl                                        ; $72d2: $f9
	sbc c                                            ; $72d3: $99
	ld c, c                                          ; $72d4: $49
	sub d                                            ; $72d5: $92
	ld b, l                                          ; $72d6: $45
	sub d                                            ; $72d7: $92
	ld b, l                                          ; $72d8: $45
	db $10                                           ; $72d9: $10
	ld a, e                                          ; $72da: $7b
	sbc $fa                                          ; $72db: $de $fa
	sub a                                            ; $72dd: $97
	ld e, d                                          ; $72de: $5a
	cp l                                             ; $72df: $bd
	ld e, d                                          ; $72e0: $5a
	or h                                             ; $72e1: $b4
	ld a, d                                          ; $72e2: $7a
	xor l                                            ; $72e3: $ad
	ld a, d                                          ; $72e4: $7a
	db $fd                                           ; $72e5: $fd
	ld sp, hl                                        ; $72e6: $f9
	sub a                                            ; $72e7: $97
	xor e                                            ; $72e8: $ab
	ld d, l                                          ; $72e9: $55
	xor b                                            ; $72ea: $a8
	ld d, [hl]                                       ; $72eb: $56
	xor l                                            ; $72ec: $ad
	ld d, h                                          ; $72ed: $54
	xor d                                            ; $72ee: $aa
	ld b, l                                          ; $72ef: $45
	ld sp, hl                                        ; $72f0: $f9
	sbc b                                            ; $72f1: $98
	sub b                                            ; $72f2: $90
	ld b, h                                          ; $72f3: $44
	and b                                            ; $72f4: $a0
	ld c, b                                          ; $72f5: $48

jr_057_72f6:
	stop                                             ; $72f6: $10 $00
	ld b, b                                          ; $72f8: $40
	or $9e                                           ; $72f9: $f6 $9e
	ld [bc], a                                       ; $72fb: $02
	ld [hl], a                                       ; $72fc: $77
	xor h                                            ; $72fd: $ac
	sbc [hl]                                         ; $72fe: $9e
	add hl, bc                                       ; $72ff: $09
	ld sp, hl                                        ; $7300: $f9
	sub a                                            ; $7301: $97
	add l                                            ; $7302: $85
	dec d                                            ; $7303: $15
	ld c, d                                          ; $7304: $4a
	cp e                                             ; $7305: $bb

jr_057_7306:
	ld a, [hl]                                       ; $7306: $7e
	rst $38                                          ; $7307: $ff
	db $fd                                           ; $7308: $fd
	ld a, d                                          ; $7309: $7a
	ld h, e                                          ; $730a: $63
	and b                                            ; $730b: $a0
	sbc b                                            ; $730c: $98
	or a                                             ; $730d: $b7
	xor d                                            ; $730e: $aa
	ld d, d                                          ; $730f: $52
	and l                                            ; $7310: $a5
	ldh a, [rHDMA4]                                  ; $7311: $f0 $54
	and c                                            ; $7313: $a1
	ld sp, hl                                        ; $7314: $f9
	sub a                                            ; $7315: $97
	ld e, a                                          ; $7316: $5f
	cp h                                             ; $7317: $bc
	ld e, a                                          ; $7318: $5f
	or e                                             ; $7319: $b3
	ld a, l                                          ; $731a: $7d
	ld [hl], a                                       ; $731b: $77
	ld a, $3b                                        ; $731c: $3e $3b
	ld sp, hl                                        ; $731e: $f9
	sbc b                                            ; $731f: $98
	cpl                                              ; $7320: $2f
	ld e, [hl]                                       ; $7321: $5e
	dec [hl]                                         ; $7322: $35
	ld a, [de]                                       ; $7323: $1a
	xor h                                            ; $7324: $ac
	inc [hl]                                         ; $7325: $34
	or b                                             ; $7326: $b0
	ld h, e                                          ; $7327: $63
	xor a                                            ; $7328: $af
	sub a                                            ; $7329: $97
	add b                                            ; $732a: $80
	add c                                            ; $732b: $81
	inc b                                            ; $732c: $04
	inc bc                                           ; $732d: $03
	rlca                                             ; $732e: $07
	jr jr_057_7352                                   ; $732f: $18 $21

	jp nc, $8dfd                                     ; $7331: $d2 $fd $8d

	rlca                                             ; $7334: $07
	rra                                              ; $7335: $1f
	ccf                                              ; $7336: $3f
	ld a, a                                          ; $7337: $7f
	and a                                            ; $7338: $a7
	ld e, [hl]                                       ; $7339: $5e
	or b                                             ; $733a: $b0
	ld h, b                                          ; $733b: $60
	call nz, $0f98                                   ; $733c: $c4 $98 $0f
	ld [hl], b                                       ; $733f: $70
	ld bc, $1f0f                                     ; $7340: $01 $0f $1f
	ccf                                              ; $7343: $3f
	ld hl, sp-$19                                    ; $7344: $f8 $e7
	sbc $ff                                          ; $7346: $de $ff
	sbc b                                            ; $7348: $98
	nop                                              ; $7349: $00
	pop af                                           ; $734a: $f1
	halt                                             ; $734b: $76
	ld l, b                                          ; $734c: $68
	sbc e                                            ; $734d: $9b
	ld h, l                                          ; $734e: $65
	ld l, d                                          ; $734f: $6a
	ld a, e                                          ; $7350: $7b
	rst FarCall                                          ; $7351: $f7

jr_057_7352:
	add d                                            ; $7352: $82
	ld hl, sp+$1f                                    ; $7353: $f8 $1f
	inc b                                            ; $7355: $04
	add d                                            ; $7356: $82
	pop af                                           ; $7357: $f1
	db $db                                           ; $7358: $db
	rst SubAFromBC                                          ; $7359: $e7
	ld a, l                                          ; $735a: $7d
	ld d, e                                          ; $735b: $53
	sub a                                            ; $735c: $97
	sub d                                            ; $735d: $92
	ld h, h                                          ; $735e: $64
	sub c                                            ; $735f: $91
	ld bc, $ffc3                                     ; $7360: $01 $c3 $ff
	ld a, $0f                                        ; $7363: $3e $0f
	pop hl                                           ; $7365: $e1
	ld a, b                                          ; $7366: $78
	ld a, $be                                        ; $7367: $3e $be
	ld a, a                                          ; $7369: $7f
	cp a                                             ; $736a: $bf
	ld a, [hl]                                       ; $736b: $7e
	cp $ff                                           ; $736c: $fe $ff
	cp [hl]                                          ; $736e: $be
	ld e, a                                          ; $736f: $5f
	db $fc                                           ; $7370: $fc
	sub h                                            ; $7371: $94
	ret nz                                           ; $7372: $c0

	ld h, b                                          ; $7373: $60
	jr c, jr_057_72f6                                ; $7374: $38 $80

	ld bc, $c000                                     ; $7376: $01 $00 $c0
	add c                                            ; $7379: $81
	ld b, d                                          ; $737a: $42
	ld sp, hl                                        ; $737b: $f9
	rst $38                                          ; $737c: $ff
	ld sp, hl                                        ; $737d: $f9
	sbc b                                            ; $737e: $98
	ld l, a                                          ; $737f: $6f
	dec d                                            ; $7380: $15
	ld e, a                                          ; $7381: $5f
	xor a                                            ; $7382: $af
	ld l, [hl]                                       ; $7383: $6e
	rst SubAFromDE                                          ; $7384: $df
	ld a, a                                          ; $7385: $7f
	ld h, a                                          ; $7386: $67

Jump_057_7387:
	ldh a, [$9e]                                     ; $7387: $f0 $9e
	rra                                              ; $7389: $1f
	halt                                             ; $738a: $76
	and l                                            ; $738b: $a5
	sbc l                                            ; $738c: $9d
	ld bc, $7bf8                                     ; $738d: $01 $f8 $7b

Jump_057_7390:
	or d                                             ; $7390: $b2
	ld l, e                                          ; $7391: $6b
	add c                                            ; $7392: $81
	sbc b                                            ; $7393: $98
	ld [hl], $3b                                     ; $7394: $36 $3b
	ld d, [hl]                                       ; $7396: $56
	xor e                                            ; $7397: $ab
	dec [hl]                                         ; $7398: $35
	ld e, e                                          ; $7399: $5b
	cp a                                             ; $739a: $bf
	ld h, e                                          ; $739b: $63
	ret nc                                           ; $739c: $d0

	sbc b                                            ; $739d: $98
	add b                                            ; $739e: $80
	ld b, b                                          ; $739f: $40
	ldh [$60], a                                     ; $73a0: $e0 $60
	ret nz                                           ; $73a2: $c0

	add c                                            ; $73a3: $81
	add b                                            ; $73a4: $80
	ld [hl], a                                       ; $73a5: $77
	dec de                                           ; $73a6: $1b
	db $fc                                           ; $73a7: $fc
	sub a                                            ; $73a8: $97
	add hl, bc                                       ; $73a9: $09
	ld [hl+], a                                      ; $73aa: $22
	add hl, bc                                       ; $73ab: $09
	ld [hl+], a                                      ; $73ac: $22
	inc b                                            ; $73ad: $04
	xor e                                            ; $73ae: $ab
	sub l                                            ; $73af: $95
	ld a, [hl+]                                      ; $73b0: $2a
	ld hl, sp+$7e                                    ; $73b1: $f8 $7e
	add $7a                                          ; $73b3: $c6 $7a
	jp Jump_057_409d                                 ; $73b5: $c3 $9d $40


	and b                                            ; $73b8: $a0
	ld sp, hl                                        ; $73b9: $f9
	sub a                                            ; $73ba: $97
	ld e, [hl]                                       ; $73bb: $5e
	rst SubAFromDE                                          ; $73bc: $df
	ld a, a                                          ; $73bd: $7f
	dec de                                           ; $73be: $1b
	cp a                                             ; $73bf: $bf
	rra                                              ; $73c0: $1f
	xor l                                            ; $73c1: $ad
	ld c, a                                          ; $73c2: $4f
	ld sp, hl                                        ; $73c3: $f9
	sub a                                            ; $73c4: $97
	adc b                                            ; $73c5: $88
	ld d, d                                          ; $73c6: $52
	xor b                                            ; $73c7: $a8
	ldh a, [$e8]                                     ; $73c8: $f0 $e8
	ldh a, [$f0]                                     ; $73ca: $f0 $f0
	ldh [$e9], a                                     ; $73cc: $e0 $e9
	sub a                                            ; $73ce: $97
	ld [bc], a                                       ; $73cf: $02
	inc d                                            ; $73d0: $14
	add hl, bc                                       ; $73d1: $09
	inc hl                                           ; $73d2: $23
	ld d, l                                          ; $73d3: $55
	inc bc                                           ; $73d4: $03
	dec l                                            ; $73d5: $2d
	inc bc                                           ; $73d6: $03
	ld sp, hl                                        ; $73d7: $f9
	sub a                                            ; $73d8: $97
	db $fd                                           ; $73d9: $fd
	cp $ed                                           ; $73da: $fe $ed
	ldh a, [c]                                       ; $73dc: $f2
	db $ed                                           ; $73dd: $ed
	rst FarCall                                          ; $73de: $f7
	sbc $f9                                          ; $73df: $de $f9
	ld sp, hl                                        ; $73e1: $f9
	sbc c                                            ; $73e2: $99
	ld d, b                                          ; $73e3: $50
	and b                                            ; $73e4: $a0
	ld d, b                                          ; $73e5: $50
	add c                                            ; $73e6: $81
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	ld a, e                                          ; $73e9: $7b
	db $fd                                           ; $73ea: $fd
	ld a, [$7e97]                                    ; $73eb: $fa $97 $7e
	adc $3f                                          ; $73ee: $ce $3f
	ld a, a                                          ; $73f0: $7f
	cp a                                             ; $73f1: $bf
	rst SubAFromDE                                          ; $73f2: $df
	ld l, [hl]                                       ; $73f3: $6e
	cp a                                             ; $73f4: $bf
	ld sp, hl                                        ; $73f5: $f9
	sub a                                            ; $73f6: $97
	pop bc                                           ; $73f7: $c1
	rlca                                             ; $73f8: $07
	rrca                                             ; $73f9: $0f
	ld a, $7e                                        ; $73fa: $3e $7e
	db $fd                                           ; $73fc: $fd
	cp $fc                                           ; $73fd: $fe $fc
	ld a, d                                          ; $73ff: $7a
	ld a, h                                          ; $7400: $7c
	rst SubAFromDE                                          ; $7401: $df
	inc bc                                           ; $7402: $03
	rst SubAFromDE                                          ; $7403: $df
	rlca                                             ; $7404: $07
	add b                                            ; $7405: $80
	rrca                                             ; $7406: $0f
	xor a                                            ; $7407: $af
	rst SubAFromBC                                          ; $7408: $e7
	adc l                                            ; $7409: $8d
	ld l, d                                          ; $740a: $6a
	rst SubAFromDE                                          ; $740b: $df
	or h                                             ; $740c: $b4
	pop hl                                           ; $740d: $e1
	add sp, -$21                                     ; $740e: $e8 $df
	sbc a                                            ; $7410: $9f
	cp $fc                                           ; $7411: $fe $fc
	ccf                                              ; $7413: $3f
	ret c                                            ; $7414: $d8

	rst $38                                          ; $7415: $ff
	ld [hl], b                                       ; $7416: $70
	ld hl, sp+$0d                                    ; $7417: $f8 $0d
	ldh [c], a                                       ; $7419: $e2
	add hl, de                                       ; $741a: $19
	db $e4                                           ; $741b: $e4
	ld l, b                                          ; $741c: $68
	call nc, $f0bb                                   ; $741d: $d4 $bb $f0
	adc [hl]                                         ; $7420: $8e
	inc bc                                           ; $7421: $03
	ld bc, $32c0                                     ; $7422: $01 $c0 $32
	add b                                            ; $7425: $80
	sbc c                                            ; $7426: $99
	ld l, h                                          ; $7427: $6c
	ld [hl], l                                       ; $7428: $75
	sbc [hl]                                         ; $7429: $9e
	dec hl                                           ; $742a: $2b
	push de                                          ; $742b: $d5
	ld [$7b73], a                                    ; $742c: $ea $73 $7b
	or l                                             ; $742f: $b5
	jr jr_057_743e                                   ; $7430: $18 $0c

	add $23                                          ; $7432: $c6 $23
	sub c                                            ; $7434: $91
	ld c, h                                          ; $7435: $4c
	ld h, $db                                        ; $7436: $26 $db
	ld e, b                                          ; $7438: $58
	xor h                                            ; $7439: $ac
	rla                                              ; $743a: $17
	res 4, [hl]                                      ; $743b: $cb $a6
	or c                                             ; $743d: $b1

jr_057_743e:
	ld e, d                                          ; $743e: $5a
	add hl, hl                                       ; $743f: $29
	adc a                                            ; $7440: $8f
	ld b, a                                          ; $7441: $47
	ld h, e                                          ; $7442: $63
	ld sp, $8fd9                                     ; $7443: $31 $d9 $8f
	xor $f7                                          ; $7446: $ee $f7
	rst $38                                          ; $7448: $ff
	ld a, a                                          ; $7449: $7f
	cpl                                              ; $744a: $2f
	ld a, [bc]                                       ; $744b: $0a
	add h                                            ; $744c: $84
	ld h, e                                          ; $744d: $63
	add hl, sp                                       ; $744e: $39
	rrca                                             ; $744f: $0f
	add b                                            ; $7450: $80
	sbc a                                            ; $7451: $9f
	rst SubAFromDE                                          ; $7452: $df
	db $fc                                           ; $7453: $fc
	rst $38                                          ; $7454: $ff
	cp $dd                                           ; $7455: $fe $dd
	rst $38                                          ; $7457: $ff
	add b                                            ; $7458: $80
	rst SubAFromDE                                          ; $7459: $df
	ld [hl], a                                       ; $745a: $77
	dec bc                                           ; $745b: $0b
	push hl                                          ; $745c: $e5
	sbc a                                            ; $745d: $9f
	jp hl                                            ; $745e: $e9


	and a                                            ; $745f: $a7
	rst $38                                          ; $7460: $ff
	ldh [$38], a                                     ; $7461: $e0 $38
	db $fc                                           ; $7463: $fc
	ld e, $ff                                        ; $7464: $1e $ff
	ldh a, [$d9]                                     ; $7466: $f0 $d9
	ld sp, hl                                        ; $7468: $f9
	sub $d9                                          ; $7469: $d6 $d9
	cp d                                             ; $746b: $ba
	and l                                            ; $746c: $a5
	ld a, [$e977]                                    ; $746d: $fa $77 $e9
	cp $38                                           ; $7470: $fe $38
	inc [hl]                                         ; $7472: $34
	ld [hl], h                                       ; $7473: $74
	ld a, b                                          ; $7474: $78
	db $e4                                           ; $7475: $e4
	add sp, -$0a                                     ; $7476: $e8 $f6
	sub h                                            ; $7478: $94
	ldh [$7f], a                                     ; $7479: $e0 $7f
	ld a, a                                          ; $747b: $7f
	cp a                                             ; $747c: $bf
	ld a, a                                          ; $747d: $7f
	ei                                               ; $747e: $fb
	db $fd                                           ; $747f: $fd
	rst $38                                          ; $7480: $ff
	ld a, a                                          ; $7481: $7f
	rra                                              ; $7482: $1f
	rrca                                             ; $7483: $0f
	ld l, [hl]                                       ; $7484: $6e
	ldh [$7f], a                                     ; $7485: $e0 $7f
	ret                                              ; $7487: $c9


	sbc b                                            ; $7488: $98
	push af                                          ; $7489: $f5
	ld a, d                                          ; $748a: $7a
	db $fd                                           ; $748b: $fd
	cp $ff                                           ; $748c: $fe $ff
	or $ff                                           ; $748e: $f6 $ff
	ld l, a                                          ; $7490: $6f
	dec l                                            ; $7491: $2d
	adc d                                            ; $7492: $8a
	or d                                             ; $7493: $b2
	call nz, $fa88                                   ; $7494: $c4 $88 $fa
	cp h                                             ; $7497: $bc
	ld e, a                                          ; $7498: $5f
	adc a                                            ; $7499: $8f
	sbc a                                            ; $749a: $9f
	dec c                                            ; $749b: $0d
	dec sp                                           ; $749c: $3b
	rst FarCall                                          ; $749d: $f7
	ld a, l                                          ; $749e: $7d
	rrca                                             ; $749f: $0f
	rlca                                             ; $74a0: $07
	ld b, $0c                                        ; $74a1: $06 $0c
	add hl, de                                       ; $74a3: $19
	db $10                                           ; $74a4: $10
	add h                                            ; $74a5: $84
	xor h                                            ; $74a6: $ac
	ld bc, $a77b                                     ; $74a7: $01 $7b $a7
	sbc c                                            ; $74aa: $99
	and h                                            ; $74ab: $a4
	ld [$537b], a                                    ; $74ac: $ea $7b $53
	cp $ff                                           ; $74af: $fe $ff
	ld a, c                                          ; $74b1: $79
	add hl, hl                                       ; $74b2: $29
	adc e                                            ; $74b3: $8b
	inc d                                            ; $74b4: $14
	add h                                            ; $74b5: $84
	ld bc, $7f04                                     ; $74b6: $01 $04 $7f
	rst $38                                          ; $74b9: $ff
	rst $38                                          ; $74ba: $ff
	ld b, b                                          ; $74bb: $40
	and c                                            ; $74bc: $a1
	ld l, e                                          ; $74bd: $6b
	cp $fb                                           ; $74be: $fe $fb
	rst $38                                          ; $74c0: $ff
	ldh [rP1], a                                     ; $74c1: $e0 $00
	jr jr_057_74ca                                   ; $74c3: $18 $05

	sub b                                            ; $74c5: $90
	dec bc                                           ; $74c6: $0b
	cpl                                              ; $74c7: $2f
	sbc $ff                                          ; $74c8: $de $ff

jr_057_74ca:
	adc b                                            ; $74ca: $88
	and l                                            ; $74cb: $a5
	ld e, d                                          ; $74cc: $5a
	ld l, a                                          ; $74cd: $6f
	rst FarCall                                          ; $74ce: $f7
	call c, $0fff                                    ; $74cf: $dc $ff $0f
	rlca                                             ; $74d2: $07
	cp b                                             ; $74d3: $b8
	inc l                                            ; $74d4: $2c
	ldh a, [c]                                       ; $74d5: $f2
	cp $e7                                           ; $74d6: $fe $e7
	ldh a, [$fa]                                     ; $74d8: $f0 $fa
	db $fc                                           ; $74da: $fc
	ld b, b                                          ; $74db: $40
	jp nc, $0ffd                                     ; $74dc: $d2 $fd $0f

	ld bc, $8000                                     ; $74df: $01 $00 $80
	ld [hl], l                                       ; $74e2: $75
	ld e, b                                          ; $74e3: $58
	sub b                                            ; $74e4: $90
	ld b, h                                          ; $74e5: $44
	ret nz                                           ; $74e6: $c0

	ld hl, sp+$1e                                    ; $74e7: $f8 $1e
	and a                                            ; $74e9: $a7
	nop                                              ; $74ea: $00
	add b                                            ; $74eb: $80
	ld h, b                                          ; $74ec: $60
	sub b                                            ; $74ed: $90
	ld [$073d], a                                    ; $74ee: $ea $3d $07
	ld bc, $0611                                     ; $74f1: $01 $11 $06
	ld a, d                                          ; $74f4: $7a
	ld a, l                                          ; $74f5: $7d
	add a                                            ; $74f6: $87
	ld c, b                                          ; $74f7: $48
	add a                                            ; $74f8: $87
	rst $38                                          ; $74f9: $ff
	ld b, h                                          ; $74fa: $44
	add hl, hl                                       ; $74fb: $29
	rla                                              ; $74fc: $17
	dec l                                            ; $74fd: $2d
	ld d, d                                          ; $74fe: $52
	and l                                            ; $74ff: $a5
	ld e, a                                          ; $7500: $5f
	ld hl, sp-$16                                    ; $7501: $f8 $ea
	inc h                                            ; $7503: $24
	ld b, d                                          ; $7504: $42
	xor c                                            ; $7505: $a9
	nop                                              ; $7506: $00
	rra                                              ; $7507: $1f
	rst $38                                          ; $7508: $ff
	rst $38                                          ; $7509: $ff
	inc d                                            ; $750a: $14
	ld c, e                                          ; $750b: $4b
	cp l                                             ; $750c: $bd
	ld d, [hl]                                       ; $750d: $56
	rst FarCall                                          ; $750e: $f7
	ld a, e                                          ; $750f: $7b
	or b                                             ; $7510: $b0
	ld [hl], h                                       ; $7511: $74
	db $fd                                           ; $7512: $fd
	sbc h                                            ; $7513: $9c
	pop af                                           ; $7514: $f1
	sbc $a7                                          ; $7515: $de $a7
	ld a, c                                          ; $7517: $79
	or b                                             ; $7518: $b0
	sbc h                                            ; $7519: $9c
	add d                                            ; $751a: $82
	xor b                                            ; $751b: $a8
	cp $7b                                           ; $751c: $fe $7b
	cp [hl]                                          ; $751e: $be
	add a                                            ; $751f: $87
	inc [hl]                                         ; $7520: $34
	dec de                                           ; $7521: $1b
	ld [bc], a                                       ; $7522: $02
	add hl, bc                                       ; $7523: $09
	ld b, h                                          ; $7524: $44
	cp e                                             ; $7525: $bb
	ldh [rIE], a                                     ; $7526: $e0 $ff
	ld c, e                                          ; $7528: $4b
	inc h                                            ; $7529: $24
	ld e, l                                          ; $752a: $5d
	ld h, $bb                                        ; $752b: $26 $bb
	ld b, h                                          ; $752d: $44
	rst $38                                          ; $752e: $ff
	rra                                              ; $752f: $1f
	ld hl, sp-$01                                    ; $7530: $f8 $ff
	db $ec                                           ; $7532: $ec
	add sp, -$38                                     ; $7533: $e8 $c8
	ret z                                            ; $7535: $c8

	adc b                                            ; $7536: $88
	inc e                                            ; $7537: $1c
	ld a, c                                          ; $7538: $79
	and c                                            ; $7539: $a1
	ld a, [hl]                                       ; $753a: $7e
	and a                                            ; $753b: $a7
	ld a, e                                          ; $753c: $7b
	ld a, b                                          ; $753d: $78
	add b                                            ; $753e: $80
	jp hl                                            ; $753f: $e9


	ret nc                                           ; $7540: $d0

	db $e4                                           ; $7541: $e4
	rst $38                                          ; $7542: $ff
	ld sp, hl                                        ; $7543: $f9
	or e                                             ; $7544: $b3
	db $ed                                           ; $7545: $ed
	ld [hl], a                                       ; $7546: $77
	ld h, [hl]                                       ; $7547: $66
	rst AddAOntoHL                                          ; $7548: $ef
	rst SubAFromDE                                          ; $7549: $df
	ld e, a                                          ; $754a: $5f
	ld [hl], b                                       ; $754b: $70
	ld h, b                                          ; $754c: $60
	ld h, e                                          ; $754d: $63
	rst AddAOntoHL                                          ; $754e: $ef
	dec a                                            ; $754f: $3d
	ld d, [hl]                                       ; $7550: $56
	dec de                                           ; $7551: $1b
	add l                                            ; $7552: $85
	jp nz, Jump_057_7ef0                             ; $7553: $c2 $f0 $7e

	sbc a                                            ; $7556: $9f
	ld e, $8f                                        ; $7557: $1e $8f
	rst SubAFromBC                                          ; $7559: $e7
	ei                                               ; $755a: $fb
	db $fd                                           ; $755b: $fd
	ld a, a                                          ; $755c: $7f
	cp a                                             ; $755d: $bf
	sub e                                            ; $755e: $93
	di                                               ; $755f: $f3
	ret c                                            ; $7560: $d8

	ld l, h                                          ; $7561: $6c
	scf                                              ; $7562: $37
	ret z                                            ; $7563: $c8

	ld [hl], a                                       ; $7564: $77
	rra                                              ; $7565: $1f
	rrca                                             ; $7566: $0f
	rst SubAFromBC                                          ; $7567: $e7
	ld l, a                                          ; $7568: $6f
	or a                                             ; $7569: $b7
	db $db                                           ; $756a: $db
	sbc $ff                                          ; $756b: $de $ff
	sub l                                            ; $756d: $95
	ld hl, sp-$04                                    ; $756e: $f8 $fc
	sub h                                            ; $7570: $94
	ld c, d                                          ; $7571: $4a
	dec h                                            ; $7572: $25
	call c, $e33b                                    ; $7573: $dc $3b $e3
	push bc                                          ; $7576: $c5
	ret                                              ; $7577: $c9


	db $dd                                           ; $7578: $dd
	rst $38                                          ; $7579: $ff
	sub e                                            ; $757a: $93
	di                                               ; $757b: $f3
	push hl                                          ; $757c: $e5
	ld c, c                                          ; $757d: $49
	dec e                                            ; $757e: $1d
	ld a, a                                          ; $757f: $7f
	dec c                                            ; $7580: $0d
	di                                               ; $7581: $f3
	inc c                                            ; $7582: $0c
	di                                               ; $7583: $f3
	adc h                                            ; $7584: $8c
	ldh a, [hDisp0_SCY]                                     ; $7585: $f0 $83
	ld l, [hl]                                       ; $7587: $6e
	jp $ffdf                                         ; $7588: $c3 $df $ff


	add b                                            ; $758b: $80
	sub b                                            ; $758c: $90
	ld c, a                                          ; $758d: $4f
	jr c, @-$1f                                      ; $758e: $38 $df

	cpl                                              ; $7590: $2f
	ld a, h                                          ; $7591: $7c
	cp b                                             ; $7592: $b8
	ld a, b                                          ; $7593: $78
	ld h, b                                          ; $7594: $60
	cp a                                             ; $7595: $bf
	rst $38                                          ; $7596: $ff
	rst $38                                          ; $7597: $ff
	ldh a, [$c0]                                     ; $7598: $f0 $c0
	ret nz                                           ; $759a: $c0

	add b                                            ; $759b: $80
	or c                                             ; $759c: $b1
	db $db                                           ; $759d: $db
	ld a, l                                          ; $759e: $7d
	cp $ed                                           ; $759f: $fe $ed
	add hl, hl                                       ; $75a1: $29
	jr jr_057_75a4                                   ; $75a2: $18 $00

jr_057_75a4:
	ld a, [hl]                                       ; $75a4: $7e
	db $fc                                           ; $75a5: $fc
	cp $ff                                           ; $75a6: $fe $ff
	dec de                                           ; $75a8: $1b
	jr @+$32                                         ; $75a9: $18 $30

	add [hl]                                         ; $75ab: $86
	nop                                              ; $75ac: $00
	cp [hl]                                          ; $75ad: $be
	ld d, d                                          ; $75ae: $52
	ld h, l                                          ; $75af: $65
	dec l                                            ; $75b0: $2d
	adc l                                            ; $75b1: $8d
	ld [hl], a                                       ; $75b2: $77
	cpl                                              ; $75b3: $2f
	dec c                                            ; $75b4: $0d
	ld b, b                                          ; $75b5: $40
	xor b                                            ; $75b6: $a8
	sbc b                                            ; $75b7: $98
	ret nc                                           ; $75b8: $d0

	ldh a, [c]                                       ; $75b9: $f2
	ld hl, sp+$1e                                    ; $75ba: $f8 $1e
	inc bc                                           ; $75bc: $03
	or $f7                                           ; $75bd: $f6 $f7
	xor $7f                                          ; $75bf: $ee $7f
	sbc $f7                                          ; $75c1: $de $f7
	rst $38                                          ; $75c3: $ff
	cp a                                             ; $75c4: $bf
	ld a, d                                          ; $75c5: $7a
	and $9d                                          ; $75c6: $e6 $9d
	nop                                              ; $75c8: $00
	jr nz, jr_057_7644                               ; $75c9: $20 $79

	ld a, $80                                        ; $75cb: $3e $80
	dec hl                                           ; $75cd: $2b
	ld a, [hl]                                       ; $75ce: $7e
	ld [hl], $56                                     ; $75cf: $36 $56
	inc de                                           ; $75d1: $13
	ld h, a                                          ; $75d2: $67
	or c                                             ; $75d3: $b1
	ld e, b                                          ; $75d4: $58
	inc e                                            ; $75d5: $1c
	jr @+$1a                                         ; $75d6: $18 $18

	jr c, jr_057_7616                                ; $75d8: $38 $3c

	jr @+$10                                         ; $75da: $18 $0e

	rlca                                             ; $75dc: $07
	cp a                                             ; $75dd: $bf
	or a                                             ; $75de: $b7
	ld l, b                                          ; $75df: $68
	ld d, l                                          ; $75e0: $55
	jp hl                                            ; $75e1: $e9


	add l                                            ; $75e2: $85
	xor e                                            ; $75e3: $ab
	ld l, a                                          ; $75e4: $6f
	nop                                              ; $75e5: $00
	ld [$2a17], sp                                   ; $75e6: $08 $17 $2a
	ld d, $38                                        ; $75e9: $16 $38
	inc d                                            ; $75eb: $14
	sub d                                            ; $75ec: $92
	db $10                                           ; $75ed: $10
	rst $38                                          ; $75ee: $ff
	cp $f5                                           ; $75ef: $fe $f5
	rst SubAFromBC                                          ; $75f1: $e7
	res 2, [hl]                                      ; $75f2: $cb $96
	ld [hl+], a                                      ; $75f4: $22
	ld l, $00                                        ; $75f5: $2e $00
	ld bc, $0102                                     ; $75f7: $01 $02 $01
	sbc $07                                          ; $75fa: $de $07
	sub c                                            ; $75fc: $91
	inc bc                                           ; $75fd: $03
	ld l, a                                          ; $75fe: $6f

Jump_057_75ff:
	or a                                             ; $75ff: $b7
	rst SubAFromDE                                          ; $7600: $df
	cp l                                             ; $7601: $bd
	ld [hl], a                                       ; $7602: $77
	ld a, [$ebf7]                                    ; $7603: $fa $f7 $eb
	sbc a                                            ; $7606: $9f
	ld a, b                                          ; $7607: $78
	ldh [$c0], a                                     ; $7608: $e0 $c0
	add b                                            ; $760a: $80
	sbc $01                                          ; $760b: $de $01
	sub h                                            ; $760d: $94
	ld l, e                                          ; $760e: $6b
	push de                                          ; $760f: $d5
	jp z, Jump_057_7fbf                              ; $7610: $ca $bf $7f

	add e                                            ; $7613: $83
	jr z, jr_057_7668                                ; $7614: $28 $52

jr_057_7616:
	sub h                                            ; $7616: $94
	ld a, [hl+]                                      ; $7617: $2a
	dec [hl]                                         ; $7618: $35
	ld a, e                                          ; $7619: $7b
	ld [hl+], a                                      ; $761a: $22
	add l                                            ; $761b: $85
	rst SubAFromHL                                          ; $761c: $d7
	xor l                                            ; $761d: $ad
	jp nc, $967d                                     ; $761e: $d2 $7d $96

	add hl, hl                                       ; $7621: $29
	rst $38                                          ; $7622: $ff
	sbc $3f                                          ; $7623: $de $3f
	cp $00                                           ; $7625: $fe $00
	add b                                            ; $7627: $80
	ld l, b                                          ; $7628: $68
	sub $ff                                          ; $7629: $d6 $ff
	pop hl                                           ; $762b: $e1
	ret nz                                           ; $762c: $c0

	ld bc, $5dbe                                     ; $762d: $01 $be $5d
	cp [hl]                                          ; $7630: $be
	ld hl, sp-$31                                    ; $7631: $f8 $cf
	di                                               ; $7633: $f3
	rst $38                                          ; $7634: $ff
	rst $38                                          ; $7635: $ff
	ld [hl], a                                       ; $7636: $77
	pop bc                                           ; $7637: $c1
	sub b                                            ; $7638: $90
	rst $38                                          ; $7639: $ff
	db $fc                                           ; $763a: $fc
	nop                                              ; $763b: $00
	rst $38                                          ; $763c: $ff
	xor a                                            ; $763d: $af
	ld e, d                                          ; $763e: $5a
	add h                                            ; $763f: $84
	nop                                              ; $7640: $00
	rst $38                                          ; $7641: $ff
	rst $38                                          ; $7642: $ff
	or c                                             ; $7643: $b1

jr_057_7644:
	rst $38                                          ; $7644: $ff
	ld d, b                                          ; $7645: $50
	and l                                            ; $7646: $a5
	ld a, e                                          ; $7647: $7b
	ld [hl], h                                       ; $7648: $74
	db $eb                                           ; $7649: $eb
	add [hl]                                         ; $764a: $86
	rst $38                                          ; $764b: $ff
	db $f4                                           ; $764c: $f4
	jp c, $3eb7                                      ; $764d: $da $b7 $3e

	rst $38                                          ; $7650: $ff
	ld sp, hl                                        ; $7651: $f9
	ld l, d                                          ; $7652: $6a
	reti                                             ; $7653: $d9


	nop                                              ; $7654: $00
	jr nz, jr_057_769f                               ; $7655: $20 $48

	rst $38                                          ; $7657: $ff
	rst $38                                          ; $7658: $ff
	rlca                                             ; $7659: $07
	nop                                              ; $765a: $00
	ldh [$8b], a                                     ; $765b: $e0 $8b
	dec h                                            ; $765d: $25
	ld e, d                                          ; $765e: $5a
	ldh [rIE], a                                     ; $765f: $e0 $ff
	ldh a, [$f9]                                     ; $7661: $f0 $f9
	ccf                                              ; $7663: $3f
	ld [hl], h                                       ; $7664: $74
	call nz, $ef7b                                   ; $7665: $c4 $7b $ef

jr_057_7668:
	sub l                                            ; $7668: $95
	rst $38                                          ; $7669: $ff
	inc a                                            ; $766a: $3c
	ld a, d                                          ; $766b: $7a
	ld a, d                                          ; $766c: $7a
	cp e                                             ; $766d: $bb
	rst $38                                          ; $766e: $ff
	rst $38                                          ; $766f: $ff
	ld a, a                                          ; $7670: $7f
	cp $ef                                           ; $7671: $fe $ef
	sbc $cf                                          ; $7673: $de $cf
	adc a                                            ; $7675: $8f
	add a                                            ; $7676: $87
	add c                                            ; $7677: $81
	add c                                            ; $7678: $81
	ld bc, $daf8                                     ; $7679: $01 $f8 $da
	and l                                            ; $767c: $a5
	ld c, [hl]                                       ; $767d: $4e
	db $eb                                           ; $767e: $eb
	reti                                             ; $767f: $d9


	ld l, h                                          ; $7680: $6c
	or $bf                                           ; $7681: $f6 $bf
	cp a                                             ; $7683: $bf
	rst SubAFromDE                                          ; $7684: $df
	rst $38                                          ; $7685: $ff
	ld a, e                                          ; $7686: $7b
	db $fc                                           ; $7687: $fc
	add b                                            ; $7688: $80
	rst AddAOntoHL                                          ; $7689: $ef
	ld l, a                                          ; $768a: $6f
	ccf                                              ; $768b: $3f
	rst $38                                          ; $768c: $ff
	sbc $fd                                          ; $768d: $de $fd
	cp $f6                                           ; $768f: $fe $f6
	ld l, a                                          ; $7691: $6f
	ld hl, sp-$01                                    ; $7692: $f8 $ff
	ldh a, [$39]                                     ; $7694: $f0 $39
	dec bc                                           ; $7696: $0b
	adc e                                            ; $7697: $8b
	ret                                              ; $7698: $c9


	ldh a, [rIE]                                     ; $7699: $f0 $ff
	cp h                                             ; $769b: $bc
	ld a, c                                          ; $769c: $79
	rst AddAOntoHL                                          ; $769d: $ef
	cp a                                             ; $769e: $bf

jr_057_769f:
	rst SubAFromBC                                          ; $769f: $e7
	call z, $1fe2                                    ; $76a0: $cc $e2 $1f
	ld [hl], b                                       ; $76a3: $70
	pop bc                                           ; $76a4: $c1
	sbc a                                            ; $76a5: $9f
	ld a, [hl]                                       ; $76a6: $7e
	halt                                             ; $76a7: $76
	add b                                            ; $76a8: $80
	ld c, [hl]                                       ; $76a9: $4e
	inc b                                            ; $76aa: $04
	dec e                                            ; $76ab: $1d
	add hl, de                                       ; $76ac: $19
	sub d                                            ; $76ad: $92
	rlca                                             ; $76ae: $07
	ld a, [bc]                                       ; $76af: $0a
	ld b, $0b                                        ; $76b0: $06 $0b
	inc b                                            ; $76b2: $04
	sbc c                                            ; $76b3: $99
	rrca                                             ; $76b4: $0f
	dec bc                                           ; $76b5: $0b
	rla                                              ; $76b6: $17
	rla                                              ; $76b7: $17
	ld [$0707], sp                                   ; $76b8: $08 $07 $07
	rst $38                                          ; $76bb: $ff
	ldh [rIE], a                                     ; $76bc: $e0 $ff
	rst SubAFromDE                                          ; $76be: $df
	ccf                                              ; $76bf: $3f
	rst $38                                          ; $76c0: $ff
	rst $38                                          ; $76c1: $ff
	cp [hl]                                          ; $76c2: $be
	rst $38                                          ; $76c3: $ff
	cp a                                             ; $76c4: $bf
	rst $38                                          ; $76c5: $ff
	ld h, b                                          ; $76c6: $60
	ld h, b                                          ; $76c7: $60
	rst SubAFromDE                                          ; $76c8: $df
	and b                                            ; $76c9: $a0
	sbc h                                            ; $76ca: $9c
	ldh [$fc], a                                     ; $76cb: $e0 $fc
	cp $7b                                           ; $76cd: $fe $7b
	sbc c                                            ; $76cf: $99
	sub [hl]                                         ; $76d0: $96
	ei                                               ; $76d1: $fb
	add h                                            ; $76d2: $84
	ld bc, $e080                                     ; $76d3: $01 $80 $e0
	ldh a, [rAUD1SWEEP]                              ; $76d6: $f0 $10
	ld [$750c], sp                                   ; $76d8: $08 $0c $75
	xor h                                            ; $76db: $ac
	sbc d                                            ; $76dc: $9a
	add b                                            ; $76dd: $80
	ret nz                                           ; $76de: $c0

	ldh a, [$fc]                                     ; $76df: $f0 $fc
	rst $38                                          ; $76e1: $ff
	ld [hl], a                                       ; $76e2: $77
	add b                                            ; $76e3: $80
	db $fd                                           ; $76e4: $fd
	sbc [hl]                                         ; $76e5: $9e
	ret nz                                           ; $76e6: $c0

	ld l, e                                          ; $76e7: $6b
	rst FarCall                                          ; $76e8: $f7
	sbc [hl]                                         ; $76e9: $9e
	ret nz                                           ; $76ea: $c0

	ld sp, hl                                        ; $76eb: $f9
	sbc h                                            ; $76ec: $9c
	ld h, [hl]                                       ; $76ed: $66
	ei                                               ; $76ee: $fb
	ld c, $71                                        ; $76ef: $0e $71
	add a                                            ; $76f1: $87
	sbc h                                            ; $76f2: $9c
	ld sp, hl                                        ; $76f3: $f9
	inc e                                            ; $76f4: $1c
	rlca                                             ; $76f5: $07
	halt                                             ; $76f6: $76
	cp l                                             ; $76f7: $bd
	sub c                                            ; $76f8: $91
	nop                                              ; $76f9: $00
	xor e                                            ; $76fa: $ab
	call nc, $ddeb                                   ; $76fb: $d4 $eb $dd
	cp a                                             ; $76fe: $bf

Call_057_76ff:
Jump_057_76ff:
	ld d, $03                                        ; $76ff: $16 $03
	nop                                              ; $7701: $00
	rlca                                             ; $7702: $07
	inc bc                                           ; $7703: $03
	nop                                              ; $7704: $00
	ldh [$78], a                                     ; $7705: $e0 $78
	ld a, d                                          ; $7707: $7a
	nop                                              ; $7708: $00
	add b                                            ; $7709: $80
	ld [hl], e                                       ; $770a: $73
	pop hl                                           ; $770b: $e1
	ld d, d                                          ; $770c: $52
	or l                                             ; $770d: $b5
	xor b                                            ; $770e: $a8
	jp nz, $fbad                                     ; $770f: $c2 $ad $fb

	adc h                                            ; $7712: $8c
	sbc [hl]                                         ; $7713: $9e
	db $ed                                           ; $7714: $ed
	ld l, d                                          ; $7715: $6a
	halt                                             ; $7716: $76
	inc a                                            ; $7717: $3c
	ret nc                                           ; $7718: $d0

	ld a, h                                          ; $7719: $7c
	di                                               ; $771a: $f3
	ld b, c                                          ; $771b: $41
	adc e                                            ; $771c: $8b
	dec h                                            ; $771d: $25
	sub e                                            ; $771e: $93
	ld b, c                                          ; $771f: $41
	xor e                                            ; $7720: $ab
	rlca                                             ; $7721: $07
	rrca                                             ; $7722: $0f
	sbc a                                            ; $7723: $9f
	dec d                                            ; $7724: $15
	dec de                                           ; $7725: $1b
	dec l                                            ; $7726: $2d
	cp [hl]                                          ; $7727: $be
	ld d, h                                          ; $7728: $54
	sub e                                            ; $7729: $93
	ld hl, sp-$4a                                    ; $772a: $f8 $b6
	ld l, d                                          ; $772c: $6a
	db $f4                                           ; $772d: $f4
	ld l, e                                          ; $772e: $6b
	push de                                          ; $772f: $d5
	xor e                                            ; $7730: $ab
	rst SubAFromHL                                          ; $7731: $d7
	and a                                            ; $7732: $a7
	ld b, c                                          ; $7733: $41
	add c                                            ; $7734: $81
	add c                                            ; $7735: $81
	ld [hl], l                                       ; $7736: $75
	sub h                                            ; $7737: $94
	sbc [hl]                                         ; $7738: $9e
	rrca                                             ; $7739: $0f
	db $dd                                           ; $773a: $dd
	rst $38                                          ; $773b: $ff
	ld a, h                                          ; $773c: $7c
	or [hl]                                          ; $773d: $b6
	rst SubAFromDE                                          ; $773e: $df
	cp $fe                                           ; $773f: $fe $fe
	ld a, h                                          ; $7741: $7c
	and c                                            ; $7742: $a1
	sbc d                                            ; $7743: $9a
	rra                                              ; $7744: $1f
	ld h, e                                          ; $7745: $63
	add e                                            ; $7746: $83
	rst $38                                          ; $7747: $ff
	ld hl, sp+$6f                                    ; $7748: $f8 $6f
	sub l                                            ; $774a: $95
	sbc [hl]                                         ; $774b: $9e
	rlca                                             ; $774c: $07
	ld a, e                                          ; $774d: $7b
	ld e, e                                          ; $774e: $5b
	db $dd                                           ; $774f: $dd
	rst $38                                          ; $7750: $ff
	ld sp, hl                                        ; $7751: $f9
	reti                                             ; $7752: $d9


	rst $38                                          ; $7753: $ff
	ld a, e                                          ; $7754: $7b
	add d                                            ; $7755: $82
	ld a, a                                          ; $7756: $7f
	sbc e                                            ; $7757: $9b
	sbc e                                            ; $7758: $9b
	ld [bc], a                                       ; $7759: $02
	nop                                              ; $775a: $00
	ld [$7bfc], sp                                   ; $775b: $08 $fc $7b
	ret                                              ; $775e: $c9


	ld a, a                                          ; $775f: $7f
	ret z                                            ; $7760: $c8

	adc b                                            ; $7761: $88
	db $fc                                           ; $7762: $fc
	ldh a, [$7f]                                     ; $7763: $f0 $7f
	rlca                                             ; $7765: $07
	pop bc                                           ; $7766: $c1
	ld h, b                                          ; $7767: $60
	or b                                             ; $7768: $b0
	ld d, b                                          ; $7769: $50
	jr z, jr_057_7788                                ; $776a: $28 $1c

	ccf                                              ; $776c: $3f
	inc bc                                           ; $776d: $03
	add b                                            ; $776e: $80

Jump_057_776f:
	ret nz                                           ; $776f: $c0

	ld h, b                                          ; $7770: $60
	jr nc, jr_057_778b                               ; $7771: $30 $18

	ld [$81ff], sp                                   ; $7773: $08 $ff $81
	ld [hl], b                                       ; $7776: $70
	cpl                                              ; $7777: $2f
	ld [bc], a                                       ; $7778: $02
	ld l, a                                          ; $7779: $6f
	ret nc                                           ; $777a: $d0

	sbc [hl]                                         ; $777b: $9e
	rra                                              ; $777c: $1f
	ld [hl], a                                       ; $777d: $77
	ld e, a                                          ; $777e: $5f
	add d                                            ; $777f: $82

jr_057_7780:
	rst $38                                          ; $7780: $ff
	ld a, $0f                                        ; $7781: $3e $0f
	ccf                                              ; $7783: $3f
	rst SubAFromDE                                          ; $7784: $df
	ld b, a                                          ; $7785: $47
	rlca                                             ; $7786: $07
	ld a, [bc]                                       ; $7787: $0a

jr_057_7788:
	nop                                              ; $7788: $00
	pop bc                                           ; $7789: $c1
	rst $38                                          ; $778a: $ff

jr_057_778b:
	ld hl, sp-$20                                    ; $778b: $f8 $e0
	add b                                            ; $778d: $80
	inc bc                                           ; $778e: $03
	rlca                                             ; $778f: $07
	cp e                                             ; $7790: $bb
	rst SubAFromDE                                          ; $7791: $df
	ld a, a                                          ; $7792: $7f
	ei                                               ; $7793: $fb
	push af                                          ; $7794: $f5
	ei                                               ; $7795: $fb
	push af                                          ; $7796: $f5
	ld l, b                                          ; $7797: $68
	rst $38                                          ; $7798: $ff
	db $e3                                           ; $7799: $e3
	add e                                            ; $779a: $83
	rlca                                             ; $779b: $07
	rrca                                             ; $779c: $0f
	ld a, e                                          ; $779d: $7b
	dec b                                            ; $779e: $05
	sub a                                            ; $779f: $97
	ld a, a                                          ; $77a0: $7f
	sbc a                                            ; $77a1: $9f
	sbc [hl]                                         ; $77a2: $9e
	sub [hl]                                         ; $77a3: $96
	ld [hl], $26                                     ; $77a4: $36 $26
	ld h, a                                          ; $77a6: $67
	xor $7b                                          ; $77a7: $ee $7b
	ld a, l                                          ; $77a9: $7d
	sbc $fe                                          ; $77aa: $de $fe
	db $db                                           ; $77ac: $db
	rst $38                                          ; $77ad: $ff
	sbc e                                            ; $77ae: $9b
	ld a, a                                          ; $77af: $7f
	ccf                                              ; $77b0: $3f
	rst SubAFromBC                                          ; $77b1: $e7
	rra                                              ; $77b2: $1f
	ei                                               ; $77b3: $fb
	rst SubAFromDE                                          ; $77b4: $df
	ld hl, sp+$7f                                    ; $77b5: $f8 $7f
	ld l, d                                          ; $77b7: $6a
	rst SubAFromDE                                          ; $77b8: $df
	add e                                            ; $77b9: $83
	rst SubAFromDE                                          ; $77ba: $df
	rst JumpTable                                          ; $77bb: $c7
	adc l                                            ; $77bc: $8d
	rst GetHLinHL                                          ; $77bd: $cf
	rst SubAFromDE                                          ; $77be: $df
	inc bc                                           ; $77bf: $03
	ld [bc], a                                       ; $77c0: $02

Jump_057_77c1:
	ld [bc], a                                       ; $77c1: $02
	ld b, $07                                        ; $77c2: $06 $07
	ld c, $0c                                        ; $77c4: $0e $0c
	jr jr_057_7780                                   ; $77c6: $18 $b8

	or b                                             ; $77c8: $b0
	and b                                            ; $77c9: $a0
	ldh [$a0], a                                     ; $77ca: $e0 $a0
	ldh a, [$f0]                                     ; $77cc: $f0 $f0
	ret nz                                           ; $77ce: $c0

	db $dd                                           ; $77cf: $dd
	ldh [$7f], a                                     ; $77d0: $e0 $7f
	sub b                                            ; $77d2: $90
	sbc [hl]                                         ; $77d3: $9e
	db $10                                           ; $77d4: $10
	ldh a, [$9d]                                     ; $77d5: $f0 $9d
	ld b, a                                          ; $77d7: $47
	jr nz, jr_057_784c                               ; $77d8: $20 $72

	jp hl                                            ; $77da: $e9


	sbc l                                            ; $77db: $9d
	nop                                              ; $77dc: $00
	jr c, @+$6d                                      ; $77dd: $38 $6b

	cp [hl]                                          ; $77df: $be
	ld a, l                                          ; $77e0: $7d
	dec h                                            ; $77e1: $25
	ld a, a                                          ; $77e2: $7f
	ld a, b                                          ; $77e3: $78
	db $fc                                           ; $77e4: $fc
	ld [hl], a                                       ; $77e5: $77
	ld [de], a                                       ; $77e6: $12
	ld l, [hl]                                       ; $77e7: $6e
	or l                                             ; $77e8: $b5
	sbc [hl]                                         ; $77e9: $9e
	ld hl, sp+$66                                    ; $77ea: $f8 $66
	and e                                            ; $77ec: $a3
	ld hl, sp+$6c                                    ; $77ed: $f8 $6c
	dec [hl]                                         ; $77ef: $35
	db $fc                                           ; $77f0: $fc
	sbc [hl]                                         ; $77f1: $9e
	rla                                              ; $77f2: $17
	cp $7f                                           ; $77f3: $fe $7f
	dec b                                            ; $77f5: $05
	ld a, l                                          ; $77f6: $7d
	rst SubAFromHL                                          ; $77f7: $d7
	sbc [hl]                                         ; $77f8: $9e
	rrca                                             ; $77f9: $0f
	ld l, e                                          ; $77fa: $6b
	rst SubAFromBC                                          ; $77fb: $e7
	halt                                             ; $77fc: $76
	rst $38                                          ; $77fd: $ff
	sbc e                                            ; $77fe: $9b

Call_057_77ff:
	inc bc                                           ; $77ff: $03
	rst $38                                          ; $7800: $ff
	rra                                              ; $7801: $1f
	rrca                                             ; $7802: $0f
	ld l, [hl]                                       ; $7803: $6e
	rst FarCall                                          ; $7804: $f7
	ld a, h                                          ; $7805: $7c
	sub b                                            ; $7806: $90
	sbc l                                            ; $7807: $9d
	ei                                               ; $7808: $fb
	rrca                                             ; $7809: $0f
	ld a, d                                          ; $780a: $7a
	rst SubAFromBC                                          ; $780b: $e7
	sbc e                                            ; $780c: $9b
	cp $f8                                           ; $780d: $fe $f8
	ldh a, [$fc]                                     ; $780f: $f0 $fc
	ld a, [$057e]                                    ; $7811: $fa $7e $05
	sbc c                                            ; $7814: $99
	and $c6                                          ; $7815: $e6 $c6
	add h                                            ; $7817: $84
	inc b                                            ; $7818: $04
	inc c                                            ; $7819: $0c
	inc c                                            ; $781a: $0c
	db $dd                                           ; $781b: $dd
	inc bc                                           ; $781c: $03
	db $dd                                           ; $781d: $dd
	rlca                                             ; $781e: $07
	ld b, [hl]                                       ; $781f: $46
	ret nc                                           ; $7820: $d0

	db $fd                                           ; $7821: $fd
	ld a, b                                          ; $7822: $78
	dec a                                            ; $7823: $3d
	ld [hl], e                                       ; $7824: $73
	ldh a, [$7d]                                     ; $7825: $f0 $7d
	call c, $ffdf                                    ; $7827: $dc $df $ff
	sub h                                            ; $782a: $94
	jr nc, jr_057_786d                               ; $782b: $30 $40

	dec d                                            ; $782d: $15
	ld [bc], a                                       ; $782e: $02
	dec bc                                           ; $782f: $0b
	pop bc                                           ; $7830: $c1
	ld [$c001], sp                                   ; $7831: $08 $01 $c0
	add b                                            ; $7834: $80
	ldh [c], a                                       ; $7835: $e2
	ld a, c                                          ; $7836: $79
	sub c                                            ; $7837: $91
	adc l                                            ; $7838: $8d
	ldh a, [$fe]                                     ; $7839: $f0 $fe
	inc h                                            ; $783b: $24
	ld e, h                                          ; $783c: $5c
	adc d                                            ; $783d: $8a
	adc d                                            ; $783e: $8a
	dec hl                                           ; $783f: $2b
	db $e3                                           ; $7840: $e3
	ld [hl], e                                       ; $7841: $73
	inc sp                                           ; $7842: $33
	inc c                                            ; $7843: $0c
	inc h                                            ; $7844: $24
	halt                                             ; $7845: $76
	halt                                             ; $7846: $76
	or $fe                                           ; $7847: $f6 $fe
	ld a, $1e                                        ; $7849: $3e $1e
	ei                                               ; $784b: $fb

jr_057_784c:
	rst SubAFromDE                                          ; $784c: $df
	add b                                            ; $784d: $80
	ld h, e                                          ; $784e: $63
	ld [hl], b                                       ; $784f: $70
	ld a, [hl]                                       ; $7850: $7e
	call c, $de96                                    ; $7851: $dc $96 $de
	inc e                                            ; $7854: $1c
	inc e                                            ; $7855: $1c
	inc c                                            ; $7856: $0c
	ld c, $0f                                        ; $7857: $0e $0f
	add hl, sp                                       ; $7859: $39
	ld h, c                                          ; $785a: $61
	add e                                            ; $785b: $83
	db $dd                                           ; $785c: $dd
	rlca                                             ; $785d: $07
	add a                                            ; $785e: $87
	db $fd                                           ; $785f: $fd
	and a                                            ; $7860: $a7
	ld [hl], $84                                     ; $7861: $36 $84
	ld hl, $7241                                     ; $7863: $21 $41 $72
	xor d                                            ; $7866: $aa
	db $d3                                           ; $7867: $d3
	db $d3                                           ; $7868: $d3
	add a                                            ; $7869: $87
	rlca                                             ; $786a: $07
	rlca                                             ; $786b: $07
	daa                                              ; $786c: $27

jr_057_786d:
	daa                                              ; $786d: $27
	ld [hl], a                                       ; $786e: $77
	adc $5a                                          ; $786f: $ce $5a
	sub a                                            ; $7871: $97
	and a                                            ; $7872: $a7
	daa                                              ; $7873: $27
	ld a, [hl+]                                      ; $7874: $2a
	ld d, e                                          ; $7875: $53
	rst SubAFromHL                                          ; $7876: $d7
	db $db                                           ; $7877: $db
	rst $38                                          ; $7878: $ff
	ld a, [hl]                                       ; $7879: $7e
	ld l, [hl]                                       ; $787a: $6e
	sbc h                                            ; $787b: $9c
	dec b                                            ; $787c: $05
	dec sp                                           ; $787d: $3b
	ld b, l                                          ; $787e: $45
	sbc $87                                          ; $787f: $de $87
	ld a, [hl]                                       ; $7881: $7e
	sub $9c                                          ; $7882: $d6 $9c
	cp $c7                                           ; $7884: $fe $c7
	add e                                            ; $7886: $83
	ld [hl], e                                       ; $7887: $73
	ld l, [hl]                                       ; $7888: $6e
	sub [hl]                                         ; $7889: $96
	rst AddAOntoHL                                          ; $788a: $ef
	ld e, a                                          ; $788b: $5f
	cp $fc                                           ; $788c: $fe $fc
	ld a, b                                          ; $788e: $78
	ldh a, [$e0]                                     ; $788f: $f0 $e0
	ret nz                                           ; $7891: $c0

	jr nc, jr_057_790c                               ; $7892: $30 $78

	pop de                                           ; $7894: $d1
	ld h, e                                          ; $7895: $63
	xor e                                            ; $7896: $ab
	ldh [$b5], a                                     ; $7897: $e0 $b5
	ldh [$c2], a                                     ; $7899: $e0 $c2
	adc a                                            ; $789b: $8f
	ld [$1018], sp                                   ; $789c: $08 $18 $10
	jr nc, jr_057_78c1                               ; $789f: $30 $20

	ld b, e                                          ; $78a1: $43
	add $8c                                          ; $78a2: $c6 $8c
	rrca                                             ; $78a4: $0f
	rrca                                             ; $78a5: $0f
	rra                                              ; $78a6: $1f
	rra                                              ; $78a7: $1f
	ccf                                              ; $78a8: $3f
	ld a, a                                          ; $78a9: $7f
	ld a, h                                          ; $78aa: $7c
	ld hl, sp+$79                                    ; $78ab: $f8 $79
	add [hl]                                         ; $78ad: $86
	sbc l                                            ; $78ae: $9d
	inc a                                            ; $78af: $3c
	ldh [$6e], a                                     ; $78b0: $e0 $6e
	ret nc                                           ; $78b2: $d0

	ld [hl], c                                       ; $78b3: $71
	halt                                             ; $78b4: $76
	ld a, [hl]                                       ; $78b5: $7e
	add h                                            ; $78b6: $84
	ld l, a                                          ; $78b7: $6f
	ld c, d                                          ; $78b8: $4a
	ld a, d                                          ; $78b9: $7a
	ld l, l                                          ; $78ba: $6d
	ld l, a                                          ; $78bb: $6f
	ld hl, sp+$6a                                    ; $78bc: $f8 $6a
	ld d, h                                          ; $78be: $54
	ld h, l                                          ; $78bf: $65
	ld h, a                                          ; $78c0: $67

jr_057_78c1:
	sbc e                                            ; $78c1: $9b
	adc d                                            ; $78c2: $8a
	ld a, [hl]                                       ; $78c3: $7e
	scf                                              ; $78c4: $37
	ld b, $71                                        ; $78c5: $06 $71
	sbc b                                            ; $78c7: $98
	sbc [hl]                                         ; $78c8: $9e
	rst $38                                          ; $78c9: $ff
	ld a, c                                          ; $78ca: $79
	inc bc                                           ; $78cb: $03
	ld [hl], b                                       ; $78cc: $70
	jp nz, $309a                                     ; $78cd: $c2 $9a $30

	add sp, -$25                                     ; $78d0: $e8 $db
	halt                                             ; $78d2: $76
	dec a                                            ; $78d3: $3d
	ld a, d                                          ; $78d4: $7a
	inc c                                            ; $78d5: $0c
	ld a, h                                          ; $78d6: $7c
	cp c                                             ; $78d7: $b9
	sbc d                                            ; $78d8: $9a
	inc a                                            ; $78d9: $3c
	rrca                                             ; $78da: $0f
	inc bc                                           ; $78db: $03
	nop                                              ; $78dc: $00
	ld c, $de                                        ; $78dd: $0e $de
	rrca                                             ; $78df: $0f
	sbc d                                            ; $78e0: $9a
	ld e, $1c                                        ; $78e1: $1e $1c
	jr c, jr_057_7915                                ; $78e3: $38 $30

	inc bc                                           ; $78e5: $03
	ld l, l                                          ; $78e6: $6d
	jp hl                                            ; $78e7: $e9


	sub c                                            ; $78e8: $91
	nop                                              ; $78e9: $00
	ld l, $17                                        ; $78ea: $2e $17
	ret                                              ; $78ec: $c9


	ld a, a                                          ; $78ed: $7f
	ccf                                              ; $78ee: $3f
	dec a                                            ; $78ef: $3d
	ld l, a                                          ; $78f0: $6f
	set 6, e                                         ; $78f1: $cb $f3
	ei                                               ; $78f3: $fb
	rst $38                                          ; $78f4: $ff
	ccf                                              ; $78f5: $3f
	ld bc, $df7a                                     ; $78f6: $01 $7a $df
	sub e                                            ; $78f9: $93
	xor d                                            ; $78fa: $aa
	ld l, [hl]                                       ; $78fb: $6e
	ld e, h                                          ; $78fc: $5c
	db $fc                                           ; $78fd: $fc
	ld e, b                                          ; $78fe: $58
	ld hl, sp-$10                                    ; $78ff: $f8 $f0
	pop af                                           ; $7901: $f1
	db $fc                                           ; $7902: $fc
	ld hl, sp-$10                                    ; $7903: $f8 $f0
	ldh [$7a], a                                     ; $7905: $e0 $7a
	db $dd                                           ; $7907: $dd
	ld a, [hl]                                       ; $7908: $7e
	ld [$fb7c], sp                                   ; $7909: $08 $7c $fb

jr_057_790c:
	sub d                                            ; $790c: $92
	rra                                              ; $790d: $1f
	ld a, $78                                        ; $790e: $3e $78
	ldh [$c0], a                                     ; $7910: $e0 $c0
	ld b, $0e                                        ; $7912: $06 $0e
	inc c                                            ; $7914: $0c

jr_057_7915:
	ld [$2010], sp                                   ; $7915: $08 $10 $20
	ld b, b                                          ; $7918: $40
	add b                                            ; $7919: $80
	ld [hl-], a                                      ; $791a: $32
	jp z, $019c                                      ; $791b: $ca $9c $01

	rlca                                             ; $791e: $07
	dec bc                                           ; $791f: $0b
	ld a, [$107a]                                    ; $7920: $fa $7a $10
	sbc l                                            ; $7923: $9d
	jr nc, jr_057_79a2                               ; $7924: $30 $7c

	ld a, c                                          ; $7926: $79
	ld c, c                                          ; $7927: $49
	sbc [hl]                                         ; $7928: $9e
	cp a                                             ; $7929: $bf
	ld h, l                                          ; $792a: $65
	and e                                            ; $792b: $a3
	ld l, e                                          ; $792c: $6b
	ld sp, hl                                        ; $792d: $f9
	sbc [hl]                                         ; $792e: $9e
	ldh a, [$e0]                                     ; $792f: $f0 $e0
	jp nc, $c861                                     ; $7931: $d2 $61 $c8

	ld l, a                                          ; $7934: $6f
	ldh a, [c]                                       ; $7935: $f2
	sbc [hl]                                         ; $7936: $9e
	ld a, a                                          ; $7937: $7f
	ld h, b                                          ; $7938: $60
	adc b                                            ; $7939: $88
	ld l, l                                          ; $793a: $6d
	pop af                                           ; $793b: $f1
	ld h, c                                          ; $793c: $61
	sub c                                            ; $793d: $91
	ld a, a                                          ; $793e: $7f
	add l                                            ; $793f: $85
	ld a, h                                          ; $7940: $7c
	rst FarCall                                          ; $7941: $f7
	sbc b                                            ; $7942: $98
	inc b                                            ; $7943: $04
	dec c                                            ; $7944: $0d
	dec bc                                           ; $7945: $0b
	ld a, [de]                                       ; $7946: $1a
	ld d, $01                                        ; $7947: $16 $01
	ld bc, $237a                                     ; $7949: $01 $7a $23
	rst SubAFromDE                                          ; $794c: $df
	ld c, $9b                                        ; $794d: $0e $9b
	inc e                                            ; $794f: $1c
	jr jr_057_7982                                   ; $7950: $18 $30

	ld h, b                                          ; $7952: $60
	ld a, e                                          ; $7953: $7b
	ld c, d                                          ; $7954: $4a
	ld a, c                                          ; $7955: $79
	jr jr_057_79cf                                   ; $7956: $18 $77

	ld b, e                                          ; $7958: $43
	ldh [$ae], a                                     ; $7959: $e0 $ae
	ld l, a                                          ; $795b: $6f
	and d                                            ; $795c: $a2
	sbc l                                            ; $795d: $9d
	ld [hl], c                                       ; $795e: $71
	ei                                               ; $795f: $fb
	ld h, a                                          ; $7960: $67
	add c                                            ; $7961: $81
	sub l                                            ; $7962: $95
	adc [hl]                                         ; $7963: $8e
	dec e                                            ; $7964: $1d
	dec sp                                           ; $7965: $3b
	ld [hl], a                                       ; $7966: $77
	rst AddAOntoHL                                          ; $7967: $ef
	rst SubAFromDE                                          ; $7968: $df
	ld hl, sp-$5d                                    ; $7969: $f8 $a3
	rlca                                             ; $796b: $07
	ld c, $7a                                        ; $796c: $0e $7a
	xor e                                            ; $796e: $ab
	ld a, a                                          ; $796f: $7f
	db $e3                                           ; $7970: $e3
	sub e                                            ; $7971: $93
	pop bc                                           ; $7972: $c1
	db $e3                                           ; $7973: $e3
	and $ec                                          ; $7974: $e6 $ec
	ret c                                            ; $7976: $d8

	or b                                             ; $7977: $b0
	ld h, b                                          ; $7978: $60
	ret nz                                           ; $7979: $c0

	nop                                              ; $797a: $00
	ld bc, $0402                                     ; $797b: $01 $02 $04
	ld a, d                                          ; $797e: $7a
	ret nc                                           ; $797f: $d0

	inc sp                                           ; $7980: $33
	ld a, h                                          ; $7981: $7c

jr_057_7982:
	ld a, e                                          ; $7982: $7b
	ld d, [hl]                                       ; $7983: $56
	sbc l                                            ; $7984: $9d
	dec e                                            ; $7985: $1d
	ld a, [hl-]                                      ; $7986: $3a
	ld l, a                                          ; $7987: $6f
	rst FarCall                                          ; $7988: $f7
	sub h                                            ; $7989: $94
	ld b, $1c                                        ; $798a: $06 $1c
	rra                                              ; $798c: $1f
	ccf                                              ; $798d: $3f

jr_057_798e:
	rst $38                                          ; $798e: $ff
	ld a, a                                          ; $798f: $7f
	add a                                            ; $7990: $87
	ld b, [hl]                                       ; $7991: $46
	add [hl]                                         ; $7992: $86
	sub a                                            ; $7993: $97
	rrca                                             ; $7994: $0f
	ld a, e                                          ; $7995: $7b
	rst FarCall                                          ; $7996: $f7
	ld a, [hl]                                       ; $7997: $7e
	jp z, Jump_057_7f9d                              ; $7998: $ca $9d $7f

	ld l, [hl]                                       ; $799b: $6e
	sbc $ff                                          ; $799c: $de $ff
	sub b                                            ; $799e: $90
	cp [hl]                                          ; $799f: $be
	rst SubAFromDE                                          ; $79a0: $df
	rst GetHLinHL                                          ; $79a1: $cf

jr_057_79a2:
	db $e3                                           ; $79a2: $e3
	ldh [$f8], a                                     ; $79a3: $e0 $f8
	add b                                            ; $79a5: $80
	ret nz                                           ; $79a6: $c0

	ldh [$f0], a                                     ; $79a7: $e0 $f0
	db $fc                                           ; $79a9: $fc
	ld [hl], e                                       ; $79aa: $73

jr_057_79ab:
	jr c, jr_057_79ab                                ; $79ab: $38 $fe

	add e                                            ; $79ad: $83
	cp $9c                                           ; $79ae: $fe $9c
	rst JumpTable                                          ; $79b0: $c7
	cp l                                             ; $79b1: $bd
	ld a, [hl]                                       ; $79b2: $7e
	ei                                               ; $79b3: $fb
	sub [hl]                                         ; $79b4: $96
	jp $007e                                         ; $79b5: $c3 $7e $00


jr_057_79b8:
	ldh [$7f], a                                     ; $79b8: $e0 $7f
	ld a, a                                          ; $79ba: $7f
	rst $38                                          ; $79bb: $ff
	ei                                               ; $79bc: $fb
	rst SubAFromBC                                          ; $79bd: $e7
	ld [hl], b                                       ; $79be: $70
	inc a                                            ; $79bf: $3c
	sbc d                                            ; $79c0: $9a
	inc bc                                           ; $79c1: $03
	rra                                              ; $79c2: $1f
	cp $7e                                           ; $79c3: $fe $7e
	ld bc, $c97b                                     ; $79c5: $01 $7b $c9
	sbc e                                            ; $79c8: $9b
	rst GetHLinHL                                          ; $79c9: $cf
	ld h, a                                          ; $79ca: $67
	and $d6                                          ; $79cb: $e6 $d6
	ld [hl], d                                       ; $79cd: $72
	dec c                                            ; $79ce: $0d

jr_057_79cf:
	sbc [hl]                                         ; $79cf: $9e
	sbc a                                            ; $79d0: $9f
	ld a, b                                          ; $79d1: $78
	ld l, b                                          ; $79d2: $68
	ld a, l                                          ; $79d3: $7d
	rst SubAFromBC                                          ; $79d4: $e7
	sbc d                                            ; $79d5: $9a
	rst $38                                          ; $79d6: $ff
	db $db                                           ; $79d7: $db
	ccf                                              ; $79d8: $3f
	inc de                                           ; $79d9: $13
	cp h                                             ; $79da: $bc
	ld [hl], l                                       ; $79db: $75
	sub $9b                                          ; $79dc: $d6 $9b
	db $e4                                           ; $79de: $e4
	ret nz                                           ; $79df: $c0

	db $ec                                           ; $79e0: $ec
	ld b, c                                          ; $79e1: $41
	ld a, b                                          ; $79e2: $78
	sbc e                                            ; $79e3: $9b
	adc b                                            ; $79e4: $88
	sub b                                            ; $79e5: $90
	inc bc                                           ; $79e6: $03
	ld d, l                                          ; $79e7: $55
	sub h                                            ; $79e8: $94
	ld [$0700], a                                    ; $79e9: $ea $00 $07
	rst $38                                          ; $79ec: $ff
	rst AddAOntoHL                                          ; $79ed: $ef
	db $fc                                           ; $79ee: $fc
	xor b                                            ; $79ef: $a8
	ld l, b                                          ; $79f0: $68
	inc d                                            ; $79f1: $14
	rst $38                                          ; $79f2: $ff
	rra                                              ; $79f3: $1f
	cp $ff                                           ; $79f4: $fe $ff
	rlca                                             ; $79f6: $07
	jr z, jr_057_798e                                ; $79f7: $28 $95

	call $e000                                       ; $79f9: $cd $00 $e0
	sbc $ff                                          ; $79fc: $de $ff
	adc l                                            ; $79fe: $8d
	rst SubAFromHL                                          ; $79ff: $d7
	ld l, d                                          ; $7a00: $6a
	ld [hl-], a                                      ; $7a01: $32
	inc a                                            ; $7a02: $3c
	db $fc                                           ; $7a03: $fc
	ld hl, sp-$08                                    ; $7a04: $f8 $f8
	db $fc                                           ; $7a06: $fc
	ld a, a                                          ; $7a07: $7f
	call $1c23                                       ; $7a08: $cd $23 $1c
	jr c, @+$3a                                      ; $7a0b: $38 $38

	ldh a, [$f0]                                     ; $7a0d: $f0 $f0

jr_057_7a0f:
	ld hl, sp+$3e                                    ; $7a0f: $f8 $3e
	ld [hl], e                                       ; $7a11: $73
	xor b                                            ; $7a12: $a8
	sbc l                                            ; $7a13: $9d
	ld bc, $5a0f                                     ; $7a14: $01 $0f $5a
	ld b, b                                          ; $7a17: $40
	sbc h                                            ; $7a18: $9c
	ld c, $3d                                        ; $7a19: $0e $3d
	ld a, [hl]                                       ; $7a1b: $7e
	ld l, h                                          ; $7a1c: $6c
	ld c, b                                          ; $7a1d: $48
	sbc [hl]                                         ; $7a1e: $9e
	ld [bc], a                                       ; $7a1f: $02
	ld l, c                                          ; $7a20: $69
	adc $7e                                          ; $7a21: $ce $7e
	add d                                            ; $7a23: $82
	sbc e                                            ; $7a24: $9b
	ld b, b                                          ; $7a25: $40
	jr nz, jr_057_79b8                               ; $7a26: $20 $90

	ret z                                            ; $7a28: $c8

	ld l, l                                          ; $7a29: $6d
	and h                                            ; $7a2a: $a4
	sbc l                                            ; $7a2b: $9d
	ld h, b                                          ; $7a2c: $60
	jr nc, jr_057_7a0f                               ; $7a2d: $30 $e0

	pop de                                           ; $7a2f: $d1
	db $dd                                           ; $7a30: $dd
	rst $38                                          ; $7a31: $ff
	sbc b                                            ; $7a32: $98
	ld e, $0c                                        ; $7a33: $1e $0c
	ld l, [hl]                                       ; $7a35: $6e
	rst SubAFromDE                                          ; $7a36: $df
	inc bc                                           ; $7a37: $03
	rlca                                             ; $7a38: $07
	adc a                                            ; $7a39: $8f
	sbc $fe                                          ; $7a3a: $de $fe
	sbc e                                            ; $7a3c: $9b
	sbc h                                            ; $7a3d: $9c
	inc c                                            ; $7a3e: $0c
	jp z, Jump_057_7390                              ; $7a3f: $ca $90 $73

	cp l                                             ; $7a42: $bd
	sbc h                                            ; $7a43: $9c
	ld bc, $0886                                     ; $7a44: $01 $86 $08
	or $9c                                           ; $7a47: $f6 $9c
	inc bc                                           ; $7a49: $03
	inc de                                           ; $7a4a: $13
	adc a                                            ; $7a4b: $8f
	ei                                               ; $7a4c: $fb
	sbc l                                            ; $7a4d: $9d
	inc c                                            ; $7a4e: $0c
	ld [hl], b                                       ; $7a4f: $70
	ld a, c                                          ; $7a50: $79
	and h                                            ; $7a51: $a4
	sbc d                                            ; $7a52: $9a
	dec e                                            ; $7a53: $1d
	ld a, [hl]                                       ; $7a54: $7e
	rst $38                                          ; $7a55: $ff
	or $f9                                           ; $7a56: $f6 $f9
	ld [hl], a                                       ; $7a58: $77
	ld [$0780], a                                    ; $7a59: $ea $80 $07
	inc c                                            ; $7a5c: $0c
	jr jr_057_7abf                                   ; $7a5d: $18 $60

	ld [hl], l                                       ; $7a5f: $75
	db $dd                                           ; $7a60: $dd
	cp d                                             ; $7a61: $ba
	ld h, h                                          ; $7a62: $64
	adc d                                            ; $7a63: $8a
	ld [hl], l                                       ; $7a64: $75
	dec hl                                           ; $7a65: $2b
	ld b, a                                          ; $7a66: $47
	jr c, jr_057_7ac9                                ; $7a67: $38 $60

	pop bc                                           ; $7a69: $c1
	add e                                            ; $7a6a: $83
	dec b                                            ; $7a6b: $05
	ld a, [bc]                                       ; $7a6c: $0a
	inc d                                            ; $7a6d: $14
	jr c, jr_057_7aa5                                ; $7a6e: $38 $35

	dec l                                            ; $7a70: $2d
	ld l, l                                          ; $7a71: $6d
	rst GetHLinHL                                          ; $7a72: $cf
	jp c, $b0dc                                      ; $7a73: $da $dc $b0

	cp c                                             ; $7a76: $b9
	adc $de                                          ; $7a77: $ce $de
	sbc [hl]                                         ; $7a79: $9e
	adc l                                            ; $7a7a: $8d
	inc a                                            ; $7a7b: $3c
	dec a                                            ; $7a7c: $3d
	dec sp                                           ; $7a7d: $3b
	dec sp                                           ; $7a7e: $3b
	halt                                             ; $7a7f: $76
	ldh a, [$f8]                                     ; $7a80: $f0 $f8
	db $fc                                           ; $7a82: $fc
	rst $38                                          ; $7a83: $ff
	cp $fd                                           ; $7a84: $fe $fd
	db $fd                                           ; $7a86: $fd
	ei                                               ; $7a87: $fb
	inc e                                            ; $7a88: $1c
	ld e, $1f                                        ; $7a89: $1e $1f
	dec de                                           ; $7a8b: $1b
	inc de                                           ; $7a8c: $13
	ld a, c                                          ; $7a8d: $79
	xor $7f                                          ; $7a8e: $ee $7f
	jp z, $ed7a                                      ; $7a90: $ca $7a $ed

	ld a, [hl]                                       ; $7a93: $7e
	sbc l                                            ; $7a94: $9d
	ld a, h                                          ; $7a95: $7c
	reti                                             ; $7a96: $d9


	ld a, a                                          ; $7a97: $7f
	ld sp, hl                                        ; $7a98: $f9
	sbc l                                            ; $7a99: $9d
	di                                               ; $7a9a: $f3
	add c                                            ; $7a9b: $81
	cp $7f                                           ; $7a9c: $fe $7f
	and $98                                          ; $7a9e: $e6 $98
	ld a, e                                          ; $7aa0: $7b
	or a                                             ; $7aa1: $b7
	sub $83                                          ; $7aa2: $d6 $83
	ld b, [hl]                                       ; $7aa4: $46

jr_057_7aa5:
	inc c                                            ; $7aa5: $0c
	xor $de                                          ; $7aa6: $ee $de
	adc h                                            ; $7aa8: $8c
	add b                                            ; $7aa9: $80
	xor h                                            ; $7aaa: $ac
	db $fc                                           ; $7aab: $fc
	cp b                                             ; $7aac: $b8
	ldh a, [$a4]                                     ; $7aad: $f0 $a4
	adc [hl]                                         ; $7aaf: $8e

Call_057_7ab0:
	ld a, [bc]                                       ; $7ab0: $0a
	xor h                                            ; $7ab1: $ac
	or l                                             ; $7ab2: $b5
	db $10                                           ; $7ab3: $10
	ld [hl-], a                                      ; $7ab4: $32
	or e                                             ; $7ab5: $b3
	rra                                              ; $7ab6: $1f
	dec e                                            ; $7ab7: $1d
	dec e                                            ; $7ab8: $1d
	ld a, [de]                                       ; $7ab9: $1a
	ld a, [de]                                       ; $7aba: $1a
	ccf                                              ; $7abb: $3f
	ld [hl], l                                       ; $7abc: $75
	ld l, h                                          ; $7abd: $6c
	dec h                                            ; $7abe: $25

jr_057_7abf:
	adc e                                            ; $7abf: $8b
	jp hl                                            ; $7ac0: $e9


	inc d                                            ; $7ac1: $14
	ld [hl], h                                       ; $7ac2: $74
	ld [$37c3], sp                                   ; $7ac3: $08 $c3 $37
	ret c                                            ; $7ac6: $d8

	ld [hl], b                                       ; $7ac7: $70
	db $10                                           ; $7ac8: $10

jr_057_7ac9:
	add b                                            ; $7ac9: $80
	pop hl                                           ; $7aca: $e1
	add c                                            ; $7acb: $81
	di                                               ; $7acc: $f3
	jr nc, @-$3e                                     ; $7acd: $30 $c0

	ld [hl-], a                                      ; $7acf: $32
	ld b, a                                          ; $7ad0: $47
	ld d, [hl]                                       ; $7ad1: $56
	adc a                                            ; $7ad2: $8f
	or b                                             ; $7ad3: $b0
	inc bc                                           ; $7ad4: $03
	ld d, $98                                        ; $7ad5: $16 $98
	call z, $a8b8                                    ; $7ad7: $cc $b8 $a8
	ld [hl], b                                       ; $7ada: $70
	ld c, [hl]                                       ; $7adb: $4e
	db $fc                                           ; $7adc: $fc
	xor c                                            ; $7add: $a9
	ld h, a                                          ; $7ade: $67
	sbc b                                            ; $7adf: $98
	ld h, d                                          ; $7ae0: $62
	ld l, $24                                        ; $7ae1: $2e $24
	cp [hl]                                          ; $7ae3: $be
	add $91                                          ; $7ae4: $c6 $91
	xor a                                            ; $7ae6: $af
	ld h, a                                          ; $7ae7: $67
	dec e                                            ; $7ae8: $1d
	add b                                            ; $7ae9: $80
	ld de, $011b                                     ; $7aea: $11 $1b $01
	add hl, de                                       ; $7aed: $19
	inc c                                            ; $7aee: $0c
	nop                                              ; $7aef: $00

Jump_057_7af0:
	ld d, b                                          ; $7af0: $50
	jp hl                                            ; $7af1: $e9


	push bc                                          ; $7af2: $c5
	ld [hl], d                                       ; $7af3: $72
	ldh a, [$3e]                                     ; $7af4: $f0 $3e
	ld a, [bc]                                       ; $7af6: $0a
	ret                                              ; $7af7: $c9


	rrca                                             ; $7af8: $0f
	ld b, $02                                        ; $7af9: $06 $02
	add c                                            ; $7afb: $81
	ld bc, $e0c1                                     ; $7afc: $01 $c1 $e0
	jr nc, jr_057_7b7c                               ; $7aff: $30 $7b

	rra                                              ; $7b01: $1f
	rst GetHLinHL                                          ; $7b02: $cf
	db $e3                                           ; $7b03: $e3
	pop af                                           ; $7b04: $f1
	ld [hl], l                                       ; $7b05: $75
	ld h, d                                          ; $7b06: $62
	ld e, e                                          ; $7b07: $5b
	db $fc                                           ; $7b08: $fc
	ld a, h                                          ; $7b09: $7c
	or c                                             ; $7b0a: $b1
	ld a, [hl]                                       ; $7b0b: $7e
	ld [hl], e                                       ; $7b0c: $73
	add b                                            ; $7b0d: $80
	adc e                                            ; $7b0e: $8b
	add l                                            ; $7b0f: $85
	add h                                            ; $7b10: $84
	rst $38                                          ; $7b11: $ff
	rst GetHLinHL                                          ; $7b12: $cf
	cp $b7                                           ; $7b13: $fe $b7
	sbc $8a                                          ; $7b15: $de $8a
	db $ed                                           ; $7b17: $ed
	di                                               ; $7b18: $f3
	nop                                              ; $7b19: $00
	ldh a, [rIE]                                     ; $7b1a: $f0 $ff
	rst GetHLinHL                                          ; $7b1c: $cf
	and c                                            ; $7b1d: $a1
	pop af                                           ; $7b1e: $f1
	sub b                                            ; $7b1f: $90
	adc b                                            ; $7b20: $88
	and $f9                                          ; $7b21: $e6 $f9
	rst $38                                          ; $7b23: $ff
	rst AddAOntoHL                                          ; $7b24: $ef
	ld a, l                                          ; $7b25: $7d
	rra                                              ; $7b26: $1f
	ld [hl], d                                       ; $7b27: $72
	ld c, c                                          ; $7b28: $49
	jr jr_057_7b31                                   ; $7b29: $18 $06

	nop                                              ; $7b2b: $00
	ldh a, [$7e]                                     ; $7b2c: $f0 $7e
	halt                                             ; $7b2e: $76
	sub l                                            ; $7b2f: $95
	adc l                                            ; $7b30: $8d

jr_057_7b31:
	add [hl]                                         ; $7b31: $86
	nop                                              ; $7b32: $00
	add b                                            ; $7b33: $80
	ldh [$fc], a                                     ; $7b34: $e0 $fc
	rst $38                                          ; $7b36: $ff
	cp a                                             ; $7b37: $bf
	ld a, e                                          ; $7b38: $7b
	rst SubAFromBC                                          ; $7b39: $e7
	ld l, [hl]                                       ; $7b3a: $6e
	sub d                                            ; $7b3b: $92
	sbc [hl]                                         ; $7b3c: $9e
	db $fc                                           ; $7b3d: $fc
	ld [hl], d                                       ; $7b3e: $72
	add b                                            ; $7b3f: $80
	ld a, a                                          ; $7b40: $7f
	push de                                          ; $7b41: $d5
	sbc [hl]                                         ; $7b42: $9e
	rst $38                                          ; $7b43: $ff
	halt                                             ; $7b44: $76
	ld a, [bc]                                       ; $7b45: $0a
	ld h, b                                          ; $7b46: $60
	add hl, hl                                       ; $7b47: $29
	ld a, [hl]                                       ; $7b48: $7e
	ld b, l                                          ; $7b49: $45
	halt                                             ; $7b4a: $76
	add b                                            ; $7b4b: $80
	ld l, a                                          ; $7b4c: $6f
	ldh a, [hDisp1_BGP]                                     ; $7b4d: $f0 $92
	db $dd                                           ; $7b4f: $dd
	rst SubAFromDE                                          ; $7b50: $df
	xor e                                            ; $7b51: $ab
	db $d3                                           ; $7b52: $d3
	cp e                                             ; $7b53: $bb
	ld d, e                                          ; $7b54: $53
	or [hl]                                          ; $7b55: $b6
	ld d, $0e                                        ; $7b56: $16 $0e
	ld b, $06                                        ; $7b58: $06 $06
	rrca                                             ; $7b5a: $0f
	rlca                                             ; $7b5b: $07
	sbc $0f                                          ; $7b5c: $de $0f
	sbc l                                            ; $7b5e: $9d
	sub b                                            ; $7b5f: $90
	adc a                                            ; $7b60: $8f
	sbc $ff                                          ; $7b61: $de $ff
	sbc d                                            ; $7b63: $9a
	dec hl                                           ; $7b64: $2b
	nop                                              ; $7b65: $00
	sbc d                                            ; $7b66: $9a
	rrca                                             ; $7b67: $0f
	ld [hl], b                                       ; $7b68: $70
	ld a, e                                          ; $7b69: $7b
	db $e3                                           ; $7b6a: $e3

Jump_057_7b6b:
	add b                                            ; $7b6b: $80
	call nc, Call_057_65ff                           ; $7b6c: $d4 $ff $65
	ld a, [hl]                                       ; $7b6f: $7e
	rst $38                                          ; $7b70: $ff
	cp $73                                           ; $7b71: $fe $73
	rst AddAOntoHL                                          ; $7b73: $ef
	jr z, @+$47                                      ; $7b74: $28 $45

	xor [hl]                                         ; $7b76: $ae
	add c                                            ; $7b77: $81
	inc bc                                           ; $7b78: $03
	inc c                                            ; $7b79: $0c
	ld hl, sp-$80                                    ; $7b7a: $f8 $80

jr_057_7b7c:
	ld d, a                                          ; $7b7c: $57
	cp d                                             ; $7b7d: $ba
	ld b, b                                          ; $7b7e: $40
	sbc c                                            ; $7b7f: $99
	cp h                                             ; $7b80: $bc
	add sp, -$13                                     ; $7b81: $e8 $ed
	inc hl                                           ; $7b83: $23
	ld e, e                                          ; $7b84: $5b
	rst FarCall                                          ; $7b85: $f7
	push bc                                          ; $7b86: $c5
	ret nz                                           ; $7b87: $c0

	inc bc                                           ; $7b88: $03
	rlca                                             ; $7b89: $07
	ld [de], a                                       ; $7b8a: $12
	sub b                                            ; $7b8b: $90
	call c, $00a0                                    ; $7b8c: $dc $a0 $00
	nop                                              ; $7b8f: $00
	ld e, $4f                                        ; $7b90: $1e $4f
	or e                                             ; $7b92: $b3
	sub $c5                                          ; $7b93: $d6 $c5
	sbc e                                            ; $7b95: $9b
	halt                                             ; $7b96: $76
	ld l, l                                          ; $7b97: $6d
	ldh [$b0], a                                     ; $7b98: $e0 $b0
	ld b, b                                          ; $7b9a: $40
	ld a, c                                          ; $7b9b: $79
	ld a, b                                          ; $7b9c: $78
	add b                                            ; $7b9d: $80
	rrca                                             ; $7b9e: $0f
	ld e, $31                                        ; $7b9f: $1e $31
	ld b, e                                          ; $7ba1: $43
	inc de                                           ; $7ba2: $13
	ld a, $77                                        ; $7ba3: $3e $77
	or [hl]                                          ; $7ba5: $b6
	ld l, b                                          ; $7ba6: $68
	reti                                             ; $7ba7: $d9


	ld h, [hl]                                       ; $7ba8: $66
	db $fc                                           ; $7ba9: $fc
	add sp, -$40                                     ; $7baa: $e8 $c0
	add b                                            ; $7bac: $80
	ld c, c                                          ; $7bad: $49
	sub e                                            ; $7bae: $93
	daa                                              ; $7baf: $27
	push af                                          ; $7bb0: $f5
	rst FarCall                                          ; $7bb1: $f7
	db $ed                                           ; $7bb2: $ed
	rst SubAFromDE                                          ; $7bb3: $df
	db $db                                           ; $7bb4: $db
	xor a                                            ; $7bb5: $af
	cp a                                             ; $7bb6: $bf
	ld a, l                                          ; $7bb7: $7d
	inc e                                            ; $7bb8: $1c
	inc e                                            ; $7bb9: $1c
	jr c, @+$72                                      ; $7bba: $38 $70

	ld [hl], b                                       ; $7bbc: $70
	rst SubAFromDE                                          ; $7bbd: $df

jr_057_7bbe:
	ldh [$80], a                                     ; $7bbe: $e0 $80
	ret nz                                           ; $7bc0: $c0

	ld [$a1d6], a                                    ; $7bc1: $ea $d6 $a1
	cp c                                             ; $7bc4: $b9
	or [hl]                                          ; $7bc5: $b6
	ld a, [$dfe0]                                    ; $7bc6: $fa $e0 $df
	dec d                                            ; $7bc9: $15
	add hl, hl                                       ; $7bca: $29
	ld e, [hl]                                       ; $7bcb: $5e
	ld b, [hl]                                       ; $7bcc: $46
	add hl, bc                                       ; $7bcd: $09
	dec b                                            ; $7bce: $05
	rra                                              ; $7bcf: $1f
	nop                                              ; $7bd0: $00
	cp b                                             ; $7bd1: $b8
	inc bc                                           ; $7bd2: $03
	ld b, l                                          ; $7bd3: $45
	ld l, b                                          ; $7bd4: $68
	ld e, b                                          ; $7bd5: $58
	or c                                             ; $7bd6: $b1
	dec l                                            ; $7bd7: $2d
	ld h, d                                          ; $7bd8: $62
	ld b, b                                          ; $7bd9: $40
	ldh a, [$a0]                                     ; $7bda: $f0 $a0
	add c                                            ; $7bdc: $81
	add c                                            ; $7bdd: $81
	ld b, e                                          ; $7bde: $43
	add d                                            ; $7bdf: $82
	jp $7f83                                         ; $7be0: $c3 $83 $7f


	ld b, h                                          ; $7be3: $44
	ldh [c], a                                       ; $7be4: $e2
	cp e                                             ; $7be5: $bb
	ldh a, [hDisp1_OBP1]                                     ; $7be6: $f0 $94
	nop                                              ; $7be8: $00
	and e                                            ; $7be9: $a3
	ldh [$fb], a                                     ; $7bea: $e0 $fb
	push de                                          ; $7bec: $d5
	call nz, $ab8e                                   ; $7bed: $c4 $8e $ab
	rst $38                                          ; $7bf0: $ff
	ld d, h                                          ; $7bf1: $54
	add [hl]                                         ; $7bf2: $86
	ld a, $93                                        ; $7bf3: $3e $93
	ld b, b                                          ; $7bf5: $40
	db $e4                                           ; $7bf6: $e4
	push af                                          ; $7bf7: $f5
	rst $38                                          ; $7bf8: $ff
	ld a, e                                          ; $7bf9: $7b
	ld h, c                                          ; $7bfa: $61
	pop bc                                           ; $7bfb: $c1
	ld h, b                                          ; $7bfc: $60

Call_057_7bfd:
	ld [hl], c                                       ; $7bfd: $71
	inc b                                            ; $7bfe: $04
	add b                                            ; $7bff: $80
	db $fd                                           ; $7c00: $fd
	ld de, $9d46                                     ; $7c01: $11 $46 $9d
	adc $30                                          ; $7c04: $ce $30
	nop                                              ; $7c06: $00
	sub [hl]                                         ; $7c07: $96
	ld [bc], a                                       ; $7c08: $02
	xor $b9                                          ; $7c09: $ee $b9
	ld h, d                                          ; $7c0b: $62
	ld sp, $ffce                                     ; $7c0c: $31 $ce $ff
	add hl, hl                                       ; $7c0f: $29
	rlca                                             ; $7c10: $07
	dec hl                                           ; $7c11: $2b
	inc de                                           ; $7c12: $13
	pop hl                                           ; $7c13: $e1
	jp $3d5b                                         ; $7c14: $c3 $5b $3d


	cp l                                             ; $7c17: $bd
	adc b                                            ; $7c18: $88
	call nz, $02c4                                   ; $7c19: $c4 $c4 $02
	jr nz, jr_057_7bbe                               ; $7c1c: $20 $a0

	ret nz                                           ; $7c1e: $c0

	sub e                                            ; $7c1f: $93
	ld b, b                                          ; $7c20: $40
	cp b                                             ; $7c21: $b8
	rst AddAOntoHL                                          ; $7c22: $ef
	or $76                                           ; $7c23: $f6 $76
	cp l                                             ; $7c25: $bd
	rst FarCall                                          ; $7c26: $f7
	db $fd                                           ; $7c27: $fd
	ld hl, sp+$00                                    ; $7c28: $f8 $00
	db $10                                           ; $7c2a: $10
	ld [$fe79], sp                                   ; $7c2b: $08 $79 $fe
	sub l                                            ; $7c2e: $95
	ld [bc], a                                       ; $7c2f: $02
	nop                                              ; $7c30: $00
	ccf                                              ; $7c31: $3f
	db $fc                                           ; $7c32: $fc
	ldh a, [$fb]                                     ; $7c33: $f0 $fb
	jp c, $80b1                                      ; $7c35: $da $b1 $80

	jp c, Jump_057_507b                              ; $7c38: $da $7b $50

	rst SubAFromDE                                          ; $7c3b: $df
	inc b                                            ; $7c3c: $04
	add b                                            ; $7c3d: $80
	ld a, [bc]                                       ; $7c3e: $0a
	ld a, a                                          ; $7c3f: $7f
	dec h                                            ; $7c40: $25
	db $dd                                           ; $7c41: $dd
	adc h                                            ; $7c42: $8c
	sbc e                                            ; $7c43: $9b
	ld d, h                                          ; $7c44: $54
	sbc d                                            ; $7c45: $9a
	jp $f787                                         ; $7c46: $c3 $87 $f7


	and b                                            ; $7c49: $a0
	pop af                                           ; $7c4a: $f1
	ldh [$80], a                                     ; $7c4b: $e0 $80
	ldh [$b0], a                                     ; $7c4d: $e0 $b0
	ldh a, [$80]                                     ; $7c4f: $f0 $80
	adc $91                                          ; $7c51: $ce $91
	cp h                                             ; $7c53: $bc
	dec bc                                           ; $7c54: $0b
	ld b, h                                          ; $7c55: $44
	ld e, l                                          ; $7c56: $5d
	cp h                                             ; $7c57: $bc
	cp e                                             ; $7c58: $bb
	ld bc, $034e                                     ; $7c59: $01 $4e $03
	inc b                                            ; $7c5c: $04
	sub d                                            ; $7c5d: $92
	inc bc                                           ; $7c5e: $03
	ld [bc], a                                       ; $7c5f: $02
	inc bc                                           ; $7c60: $03
	nop                                              ; $7c61: $00
	rst $38                                          ; $7c62: $ff
	ld a, [hl]                                       ; $7c63: $7e
	db $fd                                           ; $7c64: $fd
	cp $ef                                           ; $7c65: $fe $ef
	ld a, d                                          ; $7c67: $7a
	ld l, l                                          ; $7c68: $6d
	pop af                                           ; $7c69: $f1
	nop                                              ; $7c6a: $00
	ld a, e                                          ; $7c6b: $7b
	sub d                                            ; $7c6c: $92
	add b                                            ; $7c6d: $80
	db $10                                           ; $7c6e: $10
	add b                                            ; $7c6f: $80
	sub b                                            ; $7c70: $90
	nop                                              ; $7c71: $00
	ld a, a                                          ; $7c72: $7f
	rst SubAFromBC                                          ; $7c73: $e7
	ld e, e                                          ; $7c74: $5b
	cp a                                             ; $7c75: $bf
	dec a                                            ; $7c76: $3d
	ld h, a                                          ; $7c77: $67
	sbc $df                                          ; $7c78: $de $df
	rst $38                                          ; $7c7a: $ff
	rra                                              ; $7c7b: $1f
	rlca                                             ; $7c7c: $07
	inc bc                                           ; $7c7d: $03
	inc bc                                           ; $7c7e: $03
	ld bc, $0001                                     ; $7c7f: $01 $01 $00
	ld hl, sp-$27                                    ; $7c82: $f8 $d9
	sbc e                                            ; $7c84: $9b
	ld l, d                                          ; $7c85: $6a
	dec hl                                           ; $7c86: $2b
	adc l                                            ; $7c87: $8d
	call nz, $ff97                                   ; $7c88: $c4 $97 $ff
	cp $fc                                           ; $7c8b: $fe $fc

jr_057_7c8d:
	sbc d                                            ; $7c8d: $9a
	sbc l                                            ; $7c8e: $9d
	call c, $bffe                                    ; $7c8f: $dc $fe $bf
	db $ec                                           ; $7c92: $ec
	ld b, d                                          ; $7c93: $42
	nop                                              ; $7c94: $00
	sub $77                                          ; $7c95: $d6 $77
	sbc [hl]                                         ; $7c97: $9e
	ld [hl], d                                       ; $7c98: $72
	ld h, e                                          ; $7c99: $63
	rst FarCall                                          ; $7c9a: $f7
	sbc h                                            ; $7c9b: $9c
	ld [hl+], a                                      ; $7c9c: $22
	inc h                                            ; $7c9d: $24
	ld b, e                                          ; $7c9e: $43
	db $db                                           ; $7c9f: $db
	ld h, [hl]                                       ; $7ca0: $66
	sbc e                                            ; $7ca1: $9b
	ld [hl], d                                       ; $7ca2: $72
	ld b, h                                          ; $7ca3: $44
	ld b, h                                          ; $7ca4: $44
	ld b, e                                          ; $7ca5: $43
	db $db                                           ; $7ca6: $db
	inc sp                                           ; $7ca7: $33
	sbc e                                            ; $7ca8: $9b
	ld [hl+], a                                      ; $7ca9: $22
	ld b, h                                          ; $7caa: $44
	ld b, h                                          ; $7cab: $44
	inc sp                                           ; $7cac: $33
	ld a, e                                          ; $7cad: $7b
	push af                                          ; $7cae: $f5
	rst SubAFromDE                                          ; $7caf: $df
	ld d, l                                          ; $7cb0: $55
	sbc [hl]                                         ; $7cb1: $9e
	ld d, e                                          ; $7cb2: $53
	ld a, e                                          ; $7cb3: $7b
	or $77                                           ; $7cb4: $f6 $77
	db $ec                                           ; $7cb6: $ec
	ld [hl], e                                       ; $7cb7: $73
	or $9e                                           ; $7cb8: $f6 $9e
	ld b, e                                          ; $7cba: $43
	sbc $22                                          ; $7cbb: $de $22
	sbc h                                            ; $7cbd: $9c
	dec h                                            ; $7cbe: $25
	ld d, l                                          ; $7cbf: $55
	ld d, e                                          ; $7cc0: $53
	ld a, e                                          ; $7cc1: $7b
	ldh [c], a                                       ; $7cc2: $e2
	db $dd                                           ; $7cc3: $dd
	inc sp                                           ; $7cc4: $33
	sbc h                                            ; $7cc5: $9c
	dec [hl]                                         ; $7cc6: $35
	ld d, l                                          ; $7cc7: $55

jr_057_7cc8:
	ld d, d                                          ; $7cc8: $52
	db $dd                                           ; $7cc9: $dd
	inc sp                                           ; $7cca: $33
	rst SubAFromDE                                          ; $7ccb: $df
	ld d, e                                          ; $7ccc: $53
	reti                                             ; $7ccd: $d9


	inc sp                                           ; $7cce: $33
	sbc [hl]                                         ; $7ccf: $9e
	ld d, l                                          ; $7cd0: $55
	ret c                                            ; $7cd1: $d8

	inc sp                                           ; $7cd2: $33
	ld l, e                                          ; $7cd3: $6b
	db $ed                                           ; $7cd4: $ed
	db $ed                                           ; $7cd5: $ed
	adc d                                            ; $7cd6: $8a
	sub a                                            ; $7cd7: $97
	nop                                              ; $7cd8: $00
	db $10                                           ; $7cd9: $10
	inc e                                            ; $7cda: $1c
	ld d, $17                                        ; $7cdb: $16 $17
	dec d                                            ; $7cdd: $15
	inc d                                            ; $7cde: $14
	ld d, $de                                        ; $7cdf: $16 $de
	ldh [$dc], a                                     ; $7ce1: $e0 $dc
	add sp, -$62                                     ; $7ce3: $e8 $9e
	inc bc                                           ; $7ce5: $03
	db $dd                                           ; $7ce6: $dd
	inc de                                           ; $7ce7: $13
	sbc e                                            ; $7ce8: $9b
	sub e                                            ; $7ce9: $93
	ld d, e                                          ; $7cea: $53
	ld d, e                                          ; $7ceb: $53
	jr jr_057_7cc8                                   ; $7cec: $18 $da

	ld [$dae0], sp                                   ; $7cee: $08 $e0 $da
	sbc [hl]                                         ; $7cf1: $9e
	ld bc, $f85f                                     ; $7cf2: $01 $5f $f8
	sbc c                                            ; $7cf5: $99
	inc bc                                           ; $7cf6: $03
	dec c                                            ; $7cf7: $0d
	db $10                                           ; $7cf8: $10
	inc l                                            ; $7cf9: $2c
	ld l, d                                          ; $7cfa: $6a
	sub b                                            ; $7cfb: $90
	ld a, e                                          ; $7cfc: $7b
	ld hl, sp-$80                                    ; $7cfd: $f8 $80

Jump_057_7cff:
	inc c                                            ; $7cff: $0c
	db $10                                           ; $7d00: $10
	jr nz, jr_057_7d54                               ; $7d01: $20 $51

	rst AddAOntoHL                                          ; $7d03: $ef
	nop                                              ; $7d04: $00
	rst $38                                          ; $7d05: $ff
	db $e3                                           ; $7d06: $e3
	add b                                            ; $7d07: $80
	jr nz, jr_057_7c8d                               ; $7d08: $20 $83

	dec c                                            ; $7d0a: $0d
	ld [hl], $00                                     ; $7d0b: $36 $00
	rst $38                                          ; $7d0d: $ff
	inc e                                            ; $7d0e: $1c
	ld a, a                                          ; $7d0f: $7f
	rra                                              ; $7d10: $1f
	ld a, h                                          ; $7d11: $7c
	di                                               ; $7d12: $f3
	rst GetHLinHL                                          ; $7d13: $cf
	ld a, h                                          ; $7d14: $7c
	jp $9cf0                                         ; $7d15: $c3 $f0 $9c


	ld h, d                                          ; $7d18: $62

jr_057_7d19:
	db $fd                                           ; $7d19: $fd
	add e                                            ; $7d1a: $83
	ld a, h                                          ; $7d1b: $7c
	ld a, h                                          ; $7d1c: $7c
	rst $38                                          ; $7d1d: $ff
	add a                                            ; $7d1e: $87
	ccf                                              ; $7d1f: $3f
	rrca                                             ; $7d20: $0f
	add a                                            ; $7d21: $87
	inc bc                                           ; $7d22: $03
	rst $38                                          ; $7d23: $ff
	rst $38                                          ; $7d24: $ff
	ld [$c808], sp                                   ; $7d25: $08 $08 $c8
	inc l                                            ; $7d28: $2c
	inc d                                            ; $7d29: $14
	ld c, $89                                        ; $7d2a: $0e $89
	ld e, l                                          ; $7d2c: $5d
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	ret nz                                           ; $7d2f: $c0

	ldh [$f0], a                                     ; $7d30: $e0 $f0
	cp $ff                                           ; $7d32: $fe $ff
	rst $38                                          ; $7d34: $ff
	ld a, [hl+]                                      ; $7d35: $2a
	ld h, $6f                                        ; $7d36: $26 $6f
	cp $f9                                           ; $7d38: $fe $f9
	reti                                             ; $7d3a: $d9


	rst $38                                          ; $7d3b: $ff
	ld sp, hl                                        ; $7d3c: $f9
	reti                                             ; $7d3d: $d9


	jr jr_057_7d19                                   ; $7d3e: $18 $d9

	and e                                            ; $7d40: $a3
	add h                                            ; $7d41: $84
	rst SubAFromDE                                          ; $7d42: $df
	xor [hl]                                         ; $7d43: $ae
	ld a, l                                          ; $7d44: $7d
	scf                                              ; $7d45: $37
	ld e, d                                          ; $7d46: $5a
	ld a, [hl]                                       ; $7d47: $7e
	ld l, h                                          ; $7d48: $6c
	db $ec                                           ; $7d49: $ec
	ld sp, $2673                                     ; $7d4a: $31 $73 $26
	ld l, h                                          ; $7d4d: $6c
	ld l, l                                          ; $7d4e: $6d
	ld c, c                                          ; $7d4f: $49
	ld e, e                                          ; $7d50: $5b
	ld e, e                                          ; $7d51: $5b
	ld h, b                                          ; $7d52: $60
	ret nz                                           ; $7d53: $c0

jr_057_7d54:
	add b                                            ; $7d54: $80
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	ld [$0211], sp                                   ; $7d57: $08 $11 $02
	sbc a                                            ; $7d5a: $9f
	ccf                                              ; $7d5b: $3f
	ld a, a                                          ; $7d5c: $7f
	call c, $97ff                                    ; $7d5d: $dc $ff $97
	ret nz                                           ; $7d60: $c0

	ld sp, $060a                                     ; $7d61: $31 $0a $06

jr_057_7d64:
	rra                                              ; $7d64: $1f
	add d                                            ; $7d65: $82
	ccf                                              ; $7d66: $3f
	ld b, e                                          ; $7d67: $43
	reti                                             ; $7d68: $d9


	rst $38                                          ; $7d69: $ff
	add b                                            ; $7d6a: $80
	db $f4                                           ; $7d6b: $f4
	ld l, a                                          ; $7d6c: $6f
	dec [hl]                                         ; $7d6d: $35
	ld [$0e15], a                                    ; $7d6e: $ea $15 $0e
	db $e3                                           ; $7d71: $e3
	dec e                                            ; $7d72: $1d
	adc a                                            ; $7d73: $8f
	sub e                                            ; $7d74: $93
	set 6, l                                         ; $7d75: $cb $f5
	ld a, [rIE]                                    ; $7d77: $fa $ff $ff
	rra                                              ; $7d7a: $1f
	rra                                              ; $7d7b: $1f
	ld b, $fb                                        ; $7d7c: $06 $fb
	add b                                            ; $7d7e: $80
	ld b, c                                          ; $7d7f: $41
	ld l, $f1                                        ; $7d80: $2e $f1
	add hl, sp                                       ; $7d82: $39
	ldh [rIE], a                                     ; $7d83: $e0 $ff
	db $fc                                           ; $7d85: $fc
	rst $38                                          ; $7d86: $ff
	cp $f1                                           ; $7d87: $fe $f1
	cp $8e                                           ; $7d89: $fe $8e
	jr nc, jr_057_7dad                               ; $7d8b: $30 $20

	ret nc                                           ; $7d8d: $d0

	or b                                             ; $7d8e: $b0
	ld [hl], b                                       ; $7d8f: $70
	cp b                                             ; $7d90: $b8
	jr c, jr_057_7dfb                                ; $7d91: $38 $68

	ret z                                            ; $7d93: $c8

	ldh [$30], a                                     ; $7d94: $e0 $30
	ld d, b                                          ; $7d96: $50
	sub b                                            ; $7d97: $90
	ld c, b                                          ; $7d98: $48
	sbc b                                            ; $7d99: $98
	jr z, jr_057_7d64                                ; $7d9a: $28 $c8

	pop af                                           ; $7d9c: $f1
	reti                                             ; $7d9d: $d9


	inc c                                            ; $7d9e: $0c
	reti                                             ; $7d9f: $d9


	ld [hl+], a                                      ; $7da0: $22
	ld a, [hl]                                       ; $7da1: $7e
	add $dd                                          ; $7da2: $c6 $dd
	ld d, $9c                                        ; $7da4: $16 $9c
	ld d, [hl]                                       ; $7da6: $56
	ld d, $eb                                        ; $7da7: $16 $eb
	call c, $9ce9                                    ; $7da9: $dc $e9 $9c
	xor c                                            ; $7dac: $a9

jr_057_7dad:
	jp hl                                            ; $7dad: $e9


	inc de                                           ; $7dae: $13
	jp c, $d993                                      ; $7daf: $da $93 $d9

	ld [$d006], sp                                   ; $7db2: $08 $06 $d0
	add [hl]                                         ; $7db5: $86
	ld e, $01                                        ; $7db6: $1e $01
	rlca                                             ; $7db8: $07
	ld a, [bc]                                       ; $7db9: $0a
	dec d                                            ; $7dba: $15
	ld [hl+], a                                      ; $7dbb: $22
	call nz, $1f19                                   ; $7dbc: $c4 $19 $1f
	ld bc, $0d06                                     ; $7dbf: $01 $06 $0d
	dec de                                           ; $7dc2: $1b
	ccf                                              ; $7dc3: $3f
	rst $38                                          ; $7dc4: $ff
	rst $38                                          ; $7dc5: $ff
	ld a, b                                          ; $7dc6: $78
	and b                                            ; $7dc7: $a0
	ld b, b                                          ; $7dc8: $40
	add b                                            ; $7dc9: $80
	ld bc, $8402                                     ; $7dca: $01 $02 $84
	inc c                                            ; $7dcd: $0c
	sbc a                                            ; $7dce: $9f
	ld l, a                                          ; $7dcf: $6f
	ld b, c                                          ; $7dd0: $41
	sub l                                            ; $7dd1: $95
	rst $38                                          ; $7dd2: $ff
	ld e, c                                          ; $7dd3: $59
	and d                                            ; $7dd4: $a2
	ld b, h                                          ; $7dd5: $44
	adc c                                            ; $7dd6: $89
	ld [de], a                                       ; $7dd7: $12
	inc h                                            ; $7dd8: $24
	ld c, b                                          ; $7dd9: $48
	sub c                                            ; $7dda: $91
	cp a                                             ; $7ddb: $bf
	ld l, e                                          ; $7ddc: $6b
	ldh a, [$97]                                     ; $7ddd: $f0 $97
	or b                                             ; $7ddf: $b0
	ld b, e                                          ; $7de0: $43
	add h                                            ; $7de1: $84
	add hl, bc                                       ; $7de2: $09
	ld [hl-], a                                      ; $7de3: $32
	ld b, h                                          ; $7de4: $44
	adc b                                            ; $7de5: $88
	ld sp, $ffda                                     ; $7de6: $31 $da $ff
	add b                                            ; $7de9: $80
	cp $6f                                           ; $7dea: $fe $6f
	ld d, a                                          ; $7dec: $57
	xor l                                            ; $7ded: $ad
	ld d, [hl]                                       ; $7dee: $56
	ld l, c                                          ; $7def: $69
	sub $bd                                          ; $7df0: $d6 $bd
	ld l, d                                          ; $7df2: $6a
	di                                               ; $7df3: $f3
	db $e3                                           ; $7df4: $e3
	add $8c                                          ; $7df5: $c6 $8c
	sbc h                                            ; $7df7: $9c
	add hl, sp                                       ; $7df8: $39
	ld [hl], e                                       ; $7df9: $73
	rst FarCall                                          ; $7dfa: $f7

jr_057_7dfb:
	ld [$aa26], a                                    ; $7dfb: $ea $26 $aa
	cp $f6                                           ; $7dfe: $fe $f6
	xor [hl]                                         ; $7e00: $ae
	ld h, l                                          ; $7e01: $65
	rst SubAFromBC                                          ; $7e02: $e7
	ret nz                                           ; $7e03: $c0

	ldh [$e0], a                                     ; $7e04: $e0 $e0
	ld hl, sp-$44                                    ; $7e06: $f8 $bc
	or [hl]                                          ; $7e08: $b6
	sub [hl]                                         ; $7e09: $96
	or a                                             ; $7e0a: $b7
	dec [hl]                                         ; $7e0b: $35
	rst $38                                          ; $7e0c: $ff
	push de                                          ; $7e0d: $d5
	xor d                                            ; $7e0e: $aa
	push de                                          ; $7e0f: $d5
	xor d                                            ; $7e10: $aa
	ret nz                                           ; $7e11: $c0

	xor d                                            ; $7e12: $aa
	ld a, d                                          ; $7e13: $7a
	db $eb                                           ; $7e14: $eb
	ei                                               ; $7e15: $fb
	rst SubAFromDE                                          ; $7e16: $df
	add hl, de                                       ; $7e17: $19
	sbc $18                                          ; $7e18: $de $18
	sbc $11                                          ; $7e1a: $de $11
	call c, $dea2                                    ; $7e1c: $dc $a2 $de
	xor d                                            ; $7e1f: $aa
	adc h                                            ; $7e20: $8c
	db $ec                                           ; $7e21: $ec
	add sp, -$14                                     ; $7e22: $e8 $ec
	ret c                                            ; $7e24: $d8

	or h                                             ; $7e25: $b4
	xor h                                            ; $7e26: $ac
	sub d                                            ; $7e27: $92
	dec c                                            ; $7e28: $0d
	ld e, e                                          ; $7e29: $5b
	ld e, a                                          ; $7e2a: $5f
	ld e, e                                          ; $7e2b: $5b
	ld l, a                                          ; $7e2c: $6f
	ld l, a                                          ; $7e2d: $6f
	ld [hl], a                                       ; $7e2e: $77
	ld a, a                                          ; $7e2f: $7f
	ei                                               ; $7e30: $fb
	inc h                                            ; $7e31: $24
	dec b                                            ; $7e32: $05
	ld b, c                                          ; $7e33: $41
	sbc $4a                                          ; $7e34: $de $4a
	sbc l                                            ; $7e36: $9d
	ld a, [hl+]                                      ; $7e37: $2a
	dec h                                            ; $7e38: $25
	reti                                             ; $7e39: $d9


	rst $38                                          ; $7e3a: $ff
	add b                                            ; $7e3b: $80
	adc a                                            ; $7e3c: $8f
	ccf                                              ; $7e3d: $3f
	ld l, [hl]                                       ; $7e3e: $6e
	rra                                              ; $7e3f: $1f
	ld a, $ef                                        ; $7e40: $3e $ef
	sbc [hl]                                         ; $7e42: $9e
	rst $38                                          ; $7e43: $ff
	pop af                                           ; $7e44: $f1
	ret nz                                           ; $7e45: $c0

	sub b                                            ; $7e46: $90
	ldh [$c0], a                                     ; $7e47: $e0 $c0
	db $10                                           ; $7e49: $10
	ld h, c                                          ; $7e4a: $61
	ld bc, $4587                                     ; $7e4b: $01 $87 $45
	xor d                                            ; $7e4e: $aa
	ld d, a                                          ; $7e4f: $57
	and [hl]                                         ; $7e50: $a6
	ld c, a                                          ; $7e51: $4f
	cp [hl]                                          ; $7e52: $be
	ld [hl], h                                       ; $7e53: $74
	inc bc                                           ; $7e54: $03
	ld c, $1c                                        ; $7e55: $0e $1c

jr_057_7e57:
	add hl, sp                                       ; $7e57: $39
	ld a, a                                          ; $7e58: $7f
	rst $38                                          ; $7e59: $ff
	db $fc                                           ; $7e5a: $fc
	add [hl]                                         ; $7e5b: $86
	ld hl, sp-$41                                    ; $7e5c: $f8 $bf
	jr jr_057_7e6f                                   ; $7e5e: $18 $0f

	ld sp, hl                                        ; $7e60: $f9
	or $7c                                           ; $7e61: $f6 $7c
	call z, $9f10                                    ; $7e63: $cc $10 $9f
	ld [rIF], sp                                   ; $7e66: $08 $0f $ff
	ld c, a                                          ; $7e69: $4f
	ei                                               ; $7e6a: $fb
	pop af                                           ; $7e6b: $f1
	ld h, c                                          ; $7e6c: $61
	jr jr_057_7e57                                   ; $7e6d: $18 $e8

jr_057_7e6f:
	add sp, -$08                                     ; $7e6f: $e8 $f8
	ret c                                            ; $7e71: $d8

	ret c                                            ; $7e72: $d8

	add sp, -$18                                     ; $7e73: $e8 $e8
	ld a, e                                          ; $7e75: $7b
	ld hl, sp-$65                                    ; $7e76: $f8 $9b
	sbc b                                            ; $7e78: $98
	add sp, -$18                                     ; $7e79: $e8 $e8
	ret z                                            ; $7e7b: $c8

	ld [bc], a                                       ; $7e7c: $02
	ret nz                                           ; $7e7d: $c0

	ld a, [hl]                                       ; $7e7e: $7e
	push bc                                          ; $7e7f: $c5
	rst SubAFromDE                                          ; $7e80: $df
	ld d, [hl]                                       ; $7e81: $56
	sbc d                                            ; $7e82: $9a
	ld d, h                                          ; $7e83: $54
	ld d, b                                          ; $7e84: $50
	rlca                                             ; $7e85: $07
	ld bc, $dee9                                     ; $7e86: $01 $e9 $de
	xor c                                            ; $7e89: $a9
	sbc e                                            ; $7e8a: $9b
	xor e                                            ; $7e8b: $ab
	xor a                                            ; $7e8c: $af
	ld hl, sp-$02                                    ; $7e8d: $f8 $fe
	sbc $93                                          ; $7e8f: $de $93
	rst SubAFromDE                                          ; $7e91: $df
	inc de                                           ; $7e92: $13
	sbc h                                            ; $7e93: $9c
	ld d, e                                          ; $7e94: $53
	ld e, e                                          ; $7e95: $5b
	add e                                            ; $7e96: $83
	sbc $08                                          ; $7e97: $de $08
	sbc $88                                          ; $7e99: $de $88
	ld h, e                                          ; $7e9b: $63
	ld c, c                                          ; $7e9c: $49

Jump_057_7e9d:
	ld hl, sp-$7b                                    ; $7e9d: $f8 $85
	ld [bc], a                                       ; $7e9f: $02
	inc b                                            ; $7ea0: $04
	add hl, bc                                       ; $7ea1: $09
	ld [de], a                                       ; $7ea2: $12
	dec d                                            ; $7ea3: $15
	add hl, hl                                       ; $7ea4: $29
	ld a, [hl+]                                      ; $7ea5: $2a
	ld [hl-], a                                      ; $7ea6: $32
	inc bc                                           ; $7ea7: $03
	rlca                                             ; $7ea8: $07
	rrca                                             ; $7ea9: $0f
	ld e, $1d                                        ; $7eaa: $1e $1d
	add hl, sp                                       ; $7eac: $39
	dec sp                                           ; $7ead: $3b
	inc sp                                           ; $7eae: $33
	ld [hl-], a                                      ; $7eaf: $32
	db $e4                                           ; $7eb0: $e4
	ld c, c                                          ; $7eb1: $49

jr_057_7eb2:
	sub d                                            ; $7eb2: $92
	inc h                                            ; $7eb3: $24
	ld b, l                                          ; $7eb4: $45
	ld c, c                                          ; $7eb5: $49
	adc d                                            ; $7eb6: $8a
	rst $38                                          ; $7eb7: $ff
	rst $38                                          ; $7eb8: $ff
	ld l, [hl]                                       ; $7eb9: $6e
	rst SubAFromDE                                          ; $7eba: $df
	sub a                                            ; $7ebb: $97
	ld e, c                                          ; $7ebc: $59
	or d                                             ; $7ebd: $b2
	ld [hl+], a                                      ; $7ebe: $22
	ld b, h                                          ; $7ebf: $44
	add h                                            ; $7ec0: $84
	adc b                                            ; $7ec1: $88
	ld de, $d911                                     ; $7ec2: $11 $11 $d9
	rst $38                                          ; $7ec5: $ff
	ld a, [hl]                                       ; $7ec6: $7e
	call nz, $2599                                   ; $7ec7: $c4 $99 $25
	ld c, d                                          ; $7eca: $4a
	ld d, h                                          ; $7ecb: $54
	sbc b                                            ; $7ecc: $98
	inc sp                                           ; $7ecd: $33
	ld a, h                                          ; $7ece: $7c
	reti                                             ; $7ecf: $d9


	rst $38                                          ; $7ed0: $ff
	sub a                                            ; $7ed1: $97
	ld b, b                                          ; $7ed2: $40
	add c                                            ; $7ed3: $81
	rlca                                             ; $7ed4: $07
	add hl, bc                                       ; $7ed5: $09
	ld [hl-], a                                      ; $7ed6: $32
	call nz, $9348                                   ; $7ed7: $c4 $48 $93
	reti                                             ; $7eda: $d9


	rst $38                                          ; $7edb: $ff
	sub e                                            ; $7edc: $93
	push de                                          ; $7edd: $d5
	add l                                            ; $7ede: $85
	dec bc                                           ; $7edf: $0b
	ld [de], a                                       ; $7ee0: $12
	jr nz, jr_057_7f24                               ; $7ee1: $20 $41

	add [hl]                                         ; $7ee3: $86
	inc e                                            ; $7ee4: $1c
	xor $fe                                          ; $7ee5: $ee $fe
	db $fc                                           ; $7ee7: $fc
	db $fd                                           ; $7ee8: $fd
	db $dd                                           ; $7ee9: $dd
	rst $38                                          ; $7eea: $ff
	sub h                                            ; $7eeb: $94
	and l                                            ; $7eec: $a5
	ld c, l                                          ; $7eed: $4d
	ld c, a                                          ; $7eee: $4f
	add a                                            ; $7eef: $87

Jump_057_7ef0:
	adc l                                            ; $7ef0: $8d
	dec c                                            ; $7ef1: $0d
	dec d                                            ; $7ef2: $15
	dec d                                            ; $7ef3: $15
	ld [hl], l                                       ; $7ef4: $75
	push af                                          ; $7ef5: $f5
	push af                                          ; $7ef6: $f5
	ld [hl], e                                       ; $7ef7: $73
	ldh a, [$dd]                                     ; $7ef8: $f0 $dd
	add b                                            ; $7efa: $80
	sbc h                                            ; $7efb: $9c
	adc d                                            ; $7efc: $8a
	ld a, [bc]                                       ; $7efd: $0a
	dec d                                            ; $7efe: $15

Jump_057_7eff:
	db $fc                                           ; $7eff: $fc
	adc a                                            ; $7f00: $8f
	ld h, b                                          ; $7f01: $60
	push af                                          ; $7f02: $f5
	ld [$11ff], a                                    ; $7f03: $ea $ff $11
	ld de, $5410                                     ; $7f06: $11 $10 $54
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	ld a, a                                          ; $7f0b: $7f
	ld a, [hl+]                                      ; $7f0c: $2a
	xor d                                            ; $7f0d: $aa
	xor d                                            ; $7f0e: $aa
	xor e                                            ; $7f0f: $ab
	xor e                                            ; $7f10: $ab
	ld a, e                                          ; $7f11: $7b
	db $e3                                           ; $7f12: $e3
	add [hl]                                         ; $7f13: $86
	push de                                          ; $7f14: $d5
	jr z, jr_057_7f2b                                ; $7f15: $28 $14

	ld [hl+], a                                      ; $7f17: $22
	ld d, c                                          ; $7f18: $51
	jr nz, jr_057_7eb2                               ; $7f19: $20 $97

	cp a                                             ; $7f1b: $bf
	cp b                                             ; $7f1c: $b8
	rst GetHLinHL                                          ; $7f1d: $cf
	rst SubAFromBC                                          ; $7f1e: $e7
	jp $8081                                         ; $7f1f: $c3 $81 $80


	ld b, b                                          ; $7f22: $40
	ld b, b                                          ; $7f23: $40

jr_057_7f24:
	ld b, a                                          ; $7f24: $47
	sub l                                            ; $7f25: $95
	ld c, d                                          ; $7f26: $4a
	dec [hl]                                         ; $7f27: $35
	rra                                              ; $7f28: $1f
	set 7, a                                         ; $7f29: $cb $ff

jr_057_7f2b:
	cp $fc                                           ; $7f2b: $fe $fc
	call c, $83ff                                    ; $7f2d: $dc $ff $83
	ld a, a                                          ; $7f30: $7f
	ld e, [hl]                                       ; $7f31: $5e
	call c, $f37b                                    ; $7f32: $dc $7b $f3
	inc sp                                           ; $7f35: $33
	rst $38                                          ; $7f36: $ff
	cp $89                                           ; $7f37: $fe $89
	inc bc                                           ; $7f39: $03
	rlca                                             ; $7f3a: $07
	add a                                            ; $7f3b: $87
	rst GetHLinHL                                          ; $7f3c: $cf
	rst $38                                          ; $7f3d: $ff
	rst $38                                          ; $7f3e: $ff
	ld sp, hl                                        ; $7f3f: $f9
	adc [hl]                                         ; $7f40: $8e
	inc b                                            ; $7f41: $04
	inc b                                            ; $7f42: $04
	ret c                                            ; $7f43: $d8

	or b                                             ; $7f44: $b0
	ld h, b                                          ; $7f45: $60
	ret nz                                           ; $7f46: $c0

	nop                                              ; $7f47: $00
	ld b, d                                          ; $7f48: $42
	xor c                                            ; $7f49: $a9
	rst JumpTable                                          ; $7f4a: $c7
	ldh [$79], a                                     ; $7f4b: $e0 $79
	ld e, b                                          ; $7f4d: $58
	add b                                            ; $7f4e: $80
	add b                                            ; $7f4f: $80
	add c                                            ; $7f50: $81
	ld b, [hl]                                       ; $7f51: $46
	jr c, jr_057_7fac                                ; $7f52: $38 $58

	inc a                                            ; $7f54: $3c
	jr c, jr_057_7faf                                ; $7f55: $38 $58

	or h                                             ; $7f57: $b4
	ld l, b                                          ; $7f58: $68
	ldh [$f0], a                                     ; $7f59: $e0 $f0
	jr nz, jr_057_7f5d                               ; $7f5b: $20 $00

jr_057_7f5d:
	inc b                                            ; $7f5d: $04
	inc h                                            ; $7f5e: $24
	ld c, b                                          ; $7f5f: $48
	sub b                                            ; $7f60: $90
	stop                                             ; $7f61: $10 $00
	ld c, b                                          ; $7f63: $48
	ld e, b                                          ; $7f64: $58
	ld a, b                                          ; $7f65: $78
	ld l, b                                          ; $7f66: $68
	jr z, jr_057_7f91                                ; $7f67: $28 $28

	jr nc, jr_057_7f9b                               ; $7f69: $30 $30

	ld e, b                                          ; $7f6b: $58
	ld e, b                                          ; $7f6c: $58
	ld a, b                                          ; $7f6d: $78
	sbc d                                            ; $7f6e: $9a
	ld a, b                                          ; $7f6f: $78
	jr c, jr_057_7faa                                ; $7f70: $38 $38

	jr nc, jr_057_7fa4                               ; $7f72: $30 $30

	ld b, $c0                                        ; $7f74: $06 $c0
	ld a, h                                          ; $7f76: $7c
	sbc c                                            ; $7f77: $99
	sbc [hl]                                         ; $7f78: $9e
	ei                                               ; $7f79: $fb
	sbc $0b                                          ; $7f7a: $de $0b
	rst SubAFromDE                                          ; $7f7c: $df
	ld a, [bc]                                       ; $7f7d: $0a
	rst SubAFromDE                                          ; $7f7e: $df
	db $fc                                           ; $7f7f: $fc
	sbc [hl]                                         ; $7f80: $9e
	inc b                                            ; $7f81: $04
	sbc $f4                                          ; $7f82: $de $f4
	rst SubAFromDE                                          ; $7f84: $df
	push af                                          ; $7f85: $f5
	sub a                                            ; $7f86: $97
	nop                                              ; $7f87: $00
	ldh [$fe], a                                     ; $7f88: $e0 $fe
	add b                                            ; $7f8a: $80
	and b                                            ; $7f8b: $a0
	and b                                            ; $7f8c: $a0
	ld hl, $fea1                                     ; $7f8d: $21 $a1 $fe
	sbc d                                            ; $7f90: $9a

jr_057_7f91:
	ld a, a                                          ; $7f91: $7f
	ld b, a                                          ; $7f92: $47
	ld b, [hl]                                       ; $7f93: $46
	add $46                                          ; $7f94: $c6 $46
	cp $7a                                           ; $7f96: $fe $7a
	cp e                                             ; $7f98: $bb
	sbc l                                            ; $7f99: $9d
	and b                                            ; $7f9a: $a0

jr_057_7f9b:
	add [hl]                                         ; $7f9b: $86
	db $fd                                           ; $7f9c: $fd

Jump_057_7f9d:
	ld a, e                                          ; $7f9d: $7b
	ld h, b                                          ; $7f9e: $60
	add [hl]                                         ; $7f9f: $86
	ld a, b                                          ; $7fa0: $78
	inc h                                            ; $7fa1: $24
	ld b, l                                          ; $7fa2: $45
	ld b, l                                          ; $7fa3: $45

jr_057_7fa4:
	ld c, e                                          ; $7fa4: $4b
	dec bc                                           ; $7fa5: $0b
	dec c                                            ; $7fa6: $0d
	add hl, bc                                       ; $7fa7: $09
	ld a, [bc]                                       ; $7fa8: $0a
	daa                                              ; $7fa9: $27

jr_057_7faa:
	ld b, a                                          ; $7faa: $47
	ld b, a                                          ; $7fab: $47

jr_057_7fac:
	ld c, a                                          ; $7fac: $4f
	rrca                                             ; $7fad: $0f
	dec c                                            ; $7fae: $0d

jr_057_7faf:
	add hl, bc                                       ; $7faf: $09
	dec bc                                           ; $7fb0: $0b
	sub d                                            ; $7fb1: $92
	ld [de], a                                       ; $7fb2: $12
	inc d                                            ; $7fb3: $14
	inc h                                            ; $7fb4: $24
	inc h                                            ; $7fb5: $24
	jr z, @+$4a                                      ; $7fb6: $28 $48

	ld c, b                                          ; $7fb8: $48
	reti                                             ; $7fb9: $d9


	rst $38                                          ; $7fba: $ff
	sub a                                            ; $7fbb: $97
	ld [hl+], a                                      ; $7fbc: $22
	inc h                                            ; $7fbd: $24
	inc h                                            ; $7fbe: $24

Jump_057_7fbf:
	ld b, h                                          ; $7fbf: $44
	ld c, c                                          ; $7fc0: $49
	adc c                                            ; $7fc1: $89
	sub d                                            ; $7fc2: $92
	and d                                            ; $7fc3: $a2
	reti                                             ; $7fc4: $d9


	rst $38                                          ; $7fc5: $ff
	sub a                                            ; $7fc6: $97
	ld c, b                                          ; $7fc7: $48
	ld c, c                                          ; $7fc8: $49
	sub c                                            ; $7fc9: $91
	sub c                                            ; $7fca: $91
	ld [de], a                                       ; $7fcb: $12
	ld h, $2c                                        ; $7fcc: $26 $2c
	ld l, c                                          ; $7fce: $69
	call c, $80ff                                    ; $7fcf: $dc $ff $80
	ei                                               ; $7fd2: $fb
	rst FarCall                                          ; $7fd3: $f7
	or $a6                                           ; $7fd4: $f6 $a6
	ld a, a                                          ; $7fd6: $7f
	rst SubAFromDE                                          ; $7fd7: $df
	rra                                              ; $7fd8: $1f
	ccf                                              ; $7fd9: $3f
	dec a                                            ; $7fda: $3d
	rst $38                                          ; $7fdb: $ff
	rst AddAOntoHL                                          ; $7fdc: $ef
	rst $38                                          ; $7fdd: $ff
	ei                                               ; $7fde: $fb
	db $f4                                           ; $7fdf: $f4
	di                                               ; $7fe0: $f3
	db $ec                                           ; $7fe1: $ec
	db $e3                                           ; $7fe2: $e3
	ld b, a                                          ; $7fe3: $47
	sbc l                                            ; $7fe4: $9d
	ld a, b                                          ; $7fe5: $78
	ldh a, [$e3]                                     ; $7fe6: $f0 $e3
	db $fd                                           ; $7fe8: $fd
	jp z, Jump_057_7ff5                              ; $7fe9: $ca $f5 $7f

	sub c                                            ; $7fec: $91
	rst AddAOntoHL                                          ; $7fed: $ef
	sbc a                                            ; $7fee: $9f
	rst $38                                          ; $7fef: $ff
	ccf                                              ; $7ff0: $3f
	adc d                                            ; $7ff1: $8a
	rst $38                                          ; $7ff2: $ff
	rst SubAFromDE                                          ; $7ff3: $df
	ld c, a                                          ; $7ff4: $4f

Jump_057_7ff5:
	pop de                                           ; $7ff5: $d1
	scf                                              ; $7ff6: $37
	rst SubAFromHL                                          ; $7ff7: $d7
	ld e, [hl]                                       ; $7ff8: $5e
	ld a, h                                          ; $7ff9: $7c
	db $fc                                           ; $7ffa: $fc
	add sp, -$20                                     ; $7ffb: $e8 $e0
	ret nz                                           ; $7ffd: $c0

	db $fd                                           ; $7ffe: $fd

Call_057_7fff:
Jump_057_7fff:
	db $fd                                           ; $7fff: $fd
