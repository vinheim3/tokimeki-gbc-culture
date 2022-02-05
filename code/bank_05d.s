; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05d", ROMX[$4000], BANK[$5d]

	cp $9f                                           ; $4000: $fe $9f
	sbc a                                            ; $4002: $9f
	ld a, b                                          ; $4003: $78
	ldh a, [c]                                       ; $4004: $f2
	sbc h                                            ; $4005: $9c
	sbc a                                            ; $4006: $9f
	adc c                                            ; $4007: $89
	call z, $80fc                                    ; $4008: $cc $fc $80
	ld h, b                                          ; $400b: $60
	halt                                             ; $400c: $76
	inc sp                                           ; $400d: $33
	ldh a, [$f0]                                     ; $400e: $f0 $f0
	nop                                              ; $4010: $00
	nop                                              ; $4011: $00
	add e                                            ; $4012: $83
	ret nz                                           ; $4013: $c0

	jp $0f8f                                         ; $4014: $c3 $8f $0f


	rrca                                             ; $4017: $0f

jr_05d_4018:
	rst $38                                          ; $4018: $ff
	rst $38                                          ; $4019: $ff
	ld a, h                                          ; $401a: $7c
	ccf                                              ; $401b: $3f
	inc a                                            ; $401c: $3c
	ld [hl], b                                       ; $401d: $70
	db $fd                                           ; $401e: $fd
	ld a, [hl]                                       ; $401f: $7e
	ld e, $bf                                        ; $4020: $1e $bf
	ccf                                              ; $4022: $3f
	rst $38                                          ; $4023: $ff
	cp l                                             ; $4024: $bd
	ld [$8102], a                                    ; $4025: $ea $02 $81
	pop hl                                           ; $4028: $e1
	ld b, b                                          ; $4029: $40
	ld a, c                                          ; $402a: $79
	ld h, e                                          ; $402b: $63
	add b                                            ; $402c: $80
	inc d                                            ; $402d: $14
	ld e, a                                          ; $402e: $5f
	rra                                              ; $402f: $1f
	rra                                              ; $4030: $1f
	cp [hl]                                          ; $4031: $be
	cp $fe                                           ; $4032: $fe $fe
	ld hl, sp+$04                                    ; $4034: $f8 $04
	jr nz, jr_05d_4018                               ; $4036: $20 $e0

	ldh [rSTAT], a                                   ; $4038: $e0 $41
	ld bc, $0701                                     ; $403a: $01 $01 $07
	di                                               ; $403d: $f3
	cp a                                             ; $403e: $bf
	sbc a                                            ; $403f: $9f
	ld d, a                                          ; $4040: $57
	rlca                                             ; $4041: $07
	rra                                              ; $4042: $1f
	rrca                                             ; $4043: $0f
	rra                                              ; $4044: $1f
	cpl                                              ; $4045: $2f
	nop                                              ; $4046: $00
	db $20, $a8                                      ; $4047: $20 $a8
	ld hl, sp-$20                                    ; $4049: $f8 $e0
	ldh a, [$7d]                                     ; $404b: $f0 $7d
	ld a, [hl]                                       ; $404d: $7e
	sub a                                            ; $404e: $97
	ei                                               ; $404f: $fb
	ld a, a                                          ; $4050: $7f
	ei                                               ; $4051: $fb
	rst $38                                          ; $4052: $ff
	rst $38                                          ; $4053: $ff
	cp a                                             ; $4054: $bf
	adc [hl]                                         ; $4055: $8e
	ld b, d                                          ; $4056: $42
	ld l, h                                          ; $4057: $6c
	ld b, e                                          ; $4058: $43
	adc l                                            ; $4059: $8d
	ld sp, $00bd                                     ; $405a: $31 $bd $00
	ld e, b                                          ; $405d: $58
	db $ec                                           ; $405e: $ec
	rst $38                                          ; $405f: $ff
	sbc a                                            ; $4060: $9f
	sbc a                                            ; $4061: $9f
	and a                                            ; $4062: $a7
	db $e3                                           ; $4063: $e3
	rst $38                                          ; $4064: $ff
	and a                                            ; $4065: $a7
	inc de                                           ; $4066: $13
	nop                                              ; $4067: $00
	ld h, b                                          ; $4068: $60
	ld h, b                                          ; $4069: $60
	ld e, b                                          ; $406a: $58
	inc e                                            ; $406b: $1c
	ld [hl], a                                       ; $406c: $77
	ld [$147b], a                                    ; $406d: $ea $7b $14
	sbc [hl]                                         ; $4070: $9e
	ld hl, sp-$22                                    ; $4071: $f8 $de
	rst $38                                          ; $4073: $ff
	ld a, h                                          ; $4074: $7c
	ld h, b                                          ; $4075: $60
	halt                                             ; $4076: $76
	rrca                                             ; $4077: $0f
	ld c, d                                          ; $4078: $4a
	ret nc                                           ; $4079: $d0

	ld a, a                                          ; $407a: $7f
	ld e, e                                          ; $407b: $5b
	ld l, h                                          ; $407c: $6c
	ld l, $9d                                        ; $407d: $2e $9d
	ld hl, sp-$10                                    ; $407f: $f8 $f0
	ld l, h                                          ; $4081: $6c
	ld l, $7f                                        ; $4082: $2e $7f
	xor [hl]                                         ; $4084: $ae
	sub c                                            ; $4085: $91
	db $fc                                           ; $4086: $fc
	ld a, a                                          ; $4087: $7f
	nop                                              ; $4088: $00

Call_05d_4089:
	ld bc, $0102                                     ; $4089: $01 $02 $01
	rra                                              ; $408c: $1f
	ccf                                              ; $408d: $3f

Call_05d_408e:
	inc bc                                           ; $408e: $03
	add b                                            ; $408f: $80
	rst $38                                          ; $4090: $ff
	cp $fd                                           ; $4091: $fe $fd
	cp $79                                           ; $4093: $fe $79
	add hl, bc                                       ; $4095: $09
	sbc e                                            ; $4096: $9b
	add $77                                          ; $4097: $c6 $77
	db $fd                                           ; $4099: $fd
	rst $38                                          ; $409a: $ff
	ld a, e                                          ; $409b: $7b
	cp $89                                           ; $409c: $fe $89
	db $fc                                           ; $409e: $fc
	add hl, sp                                       ; $409f: $39
	adc b                                            ; $40a0: $88
	ld [bc], a                                       ; $40a1: $02
	nop                                              ; $40a2: $00
	ld [bc], a                                       ; $40a3: $02
	inc sp                                           ; $40a4: $33
	jr nz, jr_05d_40e7                               ; $40a5: $20 $40

	nop                                              ; $40a7: $00
	inc b                                            ; $40a8: $04
	ret z                                            ; $40a9: $c8

	add b                                            ; $40aa: $80
	ld hl, $dfcc                                     ; $40ab: $21 $cc $df
	cp a                                             ; $40ae: $bf
	rst $38                                          ; $40af: $ff
	ei                                               ; $40b0: $fb
	scf                                              ; $40b1: $37
	ld a, a                                          ; $40b2: $7f
	rst SubAFromDE                                          ; $40b3: $df
	db $dd                                           ; $40b4: $dd
	inc b                                            ; $40b5: $04
	sbc e                                            ; $40b6: $9b
	inc c                                            ; $40b7: $0c
	inc [hl]                                         ; $40b8: $34
	ld e, h                                          ; $40b9: $5c
	cp [hl]                                          ; $40ba: $be
	db $db                                           ; $40bb: $db
	rst $38                                          ; $40bc: $ff
	sub l                                            ; $40bd: $95
	rst SubAFromBC                                          ; $40be: $e7
	jp $a1a9                                         ; $40bf: $c3 $a9 $a1


	and c                                            ; $40c2: $a1
	xor c                                            ; $40c3: $a9

Call_05d_40c4:
	and l                                            ; $40c4: $a5
	push bc                                          ; $40c5: $c5
	jp $ddcb                                         ; $40c6: $c3 $cb $dd


	ld b, c                                          ; $40c9: $41
	sbc e                                            ; $40ca: $9b
	ld c, c                                          ; $40cb: $49
	add hl, hl                                       ; $40cc: $29
	dec l                                            ; $40cd: $2d
	dec h                                            ; $40ce: $25
	call c, $9c27                                    ; $40cf: $dc $27 $9c
	inc hl                                           ; $40d2: $23
	inc de                                           ; $40d3: $13
	inc de                                           ; $40d4: $13
	call c, $defc                                    ; $40d5: $dc $fc $de
	cp $7f                                           ; $40d8: $fe $7f
	db $dd                                           ; $40da: $dd
	sub h                                            ; $40db: $94
	add a                                            ; $40dc: $87
	rlca                                             ; $40dd: $07
	ld b, $06                                        ; $40de: $06 $06
	add [hl]                                         ; $40e0: $86
	add d                                            ; $40e1: $82
	inc c                                            ; $40e2: $0c
	rlca                                             ; $40e3: $07
	inc bc                                           ; $40e4: $03
	inc bc                                           ; $40e5: $03
	rlca                                             ; $40e6: $07

jr_05d_40e7:
	ld [hl], a                                       ; $40e7: $77
	db $fc                                           ; $40e8: $fc
	sub a                                            ; $40e9: $97
	sbc [hl]                                         ; $40ea: $9e
	pop af                                           ; $40eb: $f1
	ld h, b                                          ; $40ec: $60
	ld [hl], b                                       ; $40ed: $70
	ld e, b                                          ; $40ee: $58
	ld b, h                                          ; $40ef: $44
	ld b, d                                          ; $40f0: $42
	ld bc, $007b                                     ; $40f1: $01 $7b $00
	ld [hl], a                                       ; $40f4: $77
	ld a, [hl]                                       ; $40f5: $7e
	adc l                                            ; $40f6: $8d
	and b                                            ; $40f7: $a0
	ld d, b                                          ; $40f8: $50
	ld [hl], b                                       ; $40f9: $70
	or b                                             ; $40fa: $b0
	ld a, b                                          ; $40fb: $78
	jr c, jr_05d_4136                                ; $40fc: $38 $38

	sbc h                                            ; $40fe: $9c
	rst $38                                          ; $40ff: $ff
	cp a                                             ; $4100: $bf
	sbc a                                            ; $4101: $9f
	rst SubAFromDE                                          ; $4102: $df
	rst GetHLinHL                                          ; $4103: $cf

jr_05d_4104:
	ld c, a                                          ; $4104: $4f
	cpl                                              ; $4105: $2f
	scf                                              ; $4106: $37
	ld bc, $6f00                                     ; $4107: $01 $00 $6f
	ld h, b                                          ; $410a: $60
	ld a, a                                          ; $410b: $7f
	db $e4                                           ; $410c: $e4
	ld l, a                                          ; $410d: $6f
	ld h, b                                          ; $410e: $60
	rst SubAFromDE                                          ; $410f: $df
	cp $7f                                           ; $4110: $fe $7f
	db $10                                           ; $4112: $10
	add b                                            ; $4113: $80
	rra                                              ; $4114: $1f
	rlca                                             ; $4115: $07
	ld [bc], a                                       ; $4116: $02
	rlca                                             ; $4117: $07
	ld bc, $0401                                     ; $4118: $01 $01 $04
	nop                                              ; $411b: $00
	ldh [$f8], a                                     ; $411c: $e0 $f8
	db $fd                                           ; $411e: $fd
	ld hl, sp+$06                                    ; $411f: $f8 $06
	rlca                                             ; $4121: $07
	dec sp                                           ; $4122: $3b
	rst $38                                          ; $4123: $ff
	rst AddAOntoHL                                          ; $4124: $ef
	cp $76                                           ; $4125: $fe $76
	ld [hl], b                                       ; $4127: $70
	ld sp, hl                                        ; $4128: $f9
	ld hl, sp-$3c                                    ; $4129: $f8 $c4
	nop                                              ; $412b: $00
	db $10                                           ; $412c: $10
	ld bc, $8f89                                     ; $412d: $01 $89 $8f
	ld [hl], b                                       ; $4130: $70
	dec a                                            ; $4131: $3d
	sbc h                                            ; $4132: $9c
	ld a, a                                          ; $4133: $7f
	rst GetHLinHL                                          ; $4134: $cf
	add b                                            ; $4135: $80

jr_05d_4136:
	ret c                                            ; $4136: $d8

	cp $9e                                           ; $4137: $fe $9e
	adc h                                            ; $4139: $8c
	jp nz, $fe63                                     ; $413a: $c2 $63 $fe

	rst $38                                          ; $413d: $ff
	daa                                              ; $413e: $27
	ld bc, $8861                                     ; $413f: $01 $61 $88
	nop                                              ; $4142: $00
	ld [hl], b                                       ; $4143: $70
	pop de                                           ; $4144: $d1
	ld sp, hl                                        ; $4145: $f9
	ld a, e                                          ; $4146: $7b
	ld c, a                                          ; $4147: $4f
	ld a, d                                          ; $4148: $7a
	ld [hl], a                                       ; $4149: $77
	rst $38                                          ; $414a: $ff
	adc a                                            ; $414b: $8f
	ld l, $06                                        ; $414c: $2e $06
	add h                                            ; $414e: $84
	or b                                             ; $414f: $b0
	add l                                            ; $4150: $85
	ld a, [hl]                                       ; $4151: $7e
	jr c, jr_05d_4104                                ; $4152: $38 $b0

	ld [hl], e                                       ; $4154: $73
	ld a, a                                          ; $4155: $7f
	rst GetHLinHL                                          ; $4156: $cf
	sub c                                            ; $4157: $91
	nop                                              ; $4158: $00
	ld b, a                                          ; $4159: $47
	add c                                            ; $415a: $81
	rst JumpTable                                          ; $415b: $c7
	ld c, a                                          ; $415c: $4f
	inc c                                            ; $415d: $0c
	nop                                              ; $415e: $00
	db $10                                           ; $415f: $10
	rst $38                                          ; $4160: $ff
	cp b                                             ; $4161: $b8
	ld de, $5309                                     ; $4162: $11 $09 $53
	rst AddAOntoHL                                          ; $4165: $ef
	sbc $ff                                          ; $4166: $de $ff
	sbc e                                            ; $4168: $9b
	call z, $e6ee                                    ; $4169: $cc $ee $e6
	xor h                                            ; $416c: $ac
	halt                                             ; $416d: $76
	dec sp                                           ; $416e: $3b
	sbc b                                            ; $416f: $98
	inc sp                                           ; $4170: $33
	rst AddAOntoHL                                          ; $4171: $ef
	ei                                               ; $4172: $fb
	ld a, a                                          ; $4173: $7f
	ld a, a                                          ; $4174: $7f
	cpl                                              ; $4175: $2f
	dec e                                            ; $4176: $1d
	ld a, c                                          ; $4177: $79
	ld [hl], d                                       ; $4178: $72
	sbc b                                            ; $4179: $98
	inc b                                            ; $417a: $04
	add b                                            ; $417b: $80
	add b                                            ; $417c: $80
	ret nc                                           ; $417d: $d0

	ldh [c], a                                       ; $417e: $e2
	rst $38                                          ; $417f: $ff
	rst AddAOntoHL                                          ; $4180: $ef

Jump_05d_4181:
	ld a, e                                          ; $4181: $7b
	ld c, h                                          ; $4182: $4c
	ld a, l                                          ; $4183: $7d
	pop bc                                           ; $4184: $c1
	sbc h                                            ; $4185: $9c
	cp $be                                           ; $4186: $fe $be
	rst SubAFromHL                                          ; $4188: $d7
	ld a, d                                          ; $4189: $7a
	dec a                                            ; $418a: $3d
	ld a, l                                          ; $418b: $7d
	pop bc                                           ; $418c: $c1
	sbc l                                            ; $418d: $9d
	ld bc, $7a41                                     ; $418e: $01 $41 $7a
	dec e                                            ; $4191: $1d
	ld a, e                                          ; $4192: $7b
	ld c, c                                          ; $4193: $49
	ld a, [hl]                                       ; $4194: $7e
	db $e3                                           ; $4195: $e3
	ld a, d                                          ; $4196: $7a
	adc e                                            ; $4197: $8b
	ld a, l                                          ; $4198: $7d
	pop bc                                           ; $4199: $c1
	ld a, [hl]                                       ; $419a: $7e
	ld a, a                                          ; $419b: $7f
	sbc l                                            ; $419c: $9d
	ret nz                                           ; $419d: $c0

	inc b                                            ; $419e: $04
	ld a, b                                          ; $419f: $78
	ld [hl], c                                       ; $41a0: $71
	ld a, [hl]                                       ; $41a1: $7e
	push bc                                          ; $41a2: $c5
	sbc $f0                                          ; $41a3: $de $f0
	ld a, b                                          ; $41a5: $78
	ld [hl], c                                       ; $41a6: $71
	ld a, [hl]                                       ; $41a7: $7e
	or l                                             ; $41a8: $b5
	sbc $0f                                          ; $41a9: $de $0f
	ld b, [hl]                                       ; $41ab: $46
	and b                                            ; $41ac: $a0
	sbc e                                            ; $41ad: $9b
	sbc b                                            ; $41ae: $98
	jr jr_05d_41e5                                   ; $41af: $18 $34

	ld a, a                                          ; $41b1: $7f
	ld [hl], a                                       ; $41b2: $77
	db $eb                                           ; $41b3: $eb
	sbc e                                            ; $41b4: $9b
	ld h, a                                          ; $41b5: $67
	rst SubAFromBC                                          ; $41b6: $e7
	res 0, b                                         ; $41b7: $cb $80
	ld a, e                                          ; $41b9: $7b
	db $db                                           ; $41ba: $db
	sbc c                                            ; $41bb: $99
	rst $38                                          ; $41bc: $ff
	ld b, $18                                        ; $41bd: $06 $18
	cpl                                              ; $41bf: $2f
	ld a, a                                          ; $41c0: $7f
	ld a, a                                          ; $41c1: $7f
	db $dd                                           ; $41c2: $dd
	rst $38                                          ; $41c3: $ff
	ld a, l                                          ; $41c4: $7d
	cp b                                             ; $41c5: $b8
	sub e                                            ; $41c6: $93
	rst $38                                          ; $41c7: $ff
	ldh [c], a                                       ; $41c8: $e2
	pop bc                                           ; $41c9: $c1
	add b                                            ; $41ca: $80
	add b                                            ; $41cb: $80
	ld a, [hl]                                       ; $41cc: $7e
	ld e, $c6                                        ; $41cd: $1e $c6
	ldh a, [c]                                       ; $41cf: $f2
	ld a, [$effe]                                    ; $41d0: $fa $fe $ef
	ld a, c                                          ; $41d3: $79
	ld h, e                                          ; $41d4: $63
	rst SubAFromDE                                          ; $41d5: $df
	inc bc                                           ; $41d6: $03
	add e                                            ; $41d7: $83
	jp $9933                                         ; $41d8: $c3 $33 $99


	ld c, l                                          ; $41db: $4d
	reti                                             ; $41dc: $d9


	jp hl                                            ; $41dd: $e9


	ld sp, hl                                        ; $41de: $f9
	db $fc                                           ; $41df: $fc
	ld [hl], h                                       ; $41e0: $74
	ld l, h                                          ; $41e1: $6c
	inc l                                            ; $41e2: $2c
	inc l                                            ; $41e3: $2c
	daa                                              ; $41e4: $27

jr_05d_41e5:
	rla                                              ; $41e5: $17
	rla                                              ; $41e6: $17
	inc de                                           ; $41e7: $13
	sbc e                                            ; $41e8: $9b
	sbc e                                            ; $41e9: $9b
	db $db                                           ; $41ea: $db
	db $db                                           ; $41eb: $db
	dec bc                                           ; $41ec: $0b
	add hl, bc                                       ; $41ed: $09
	add hl, bc                                       ; $41ee: $09
	adc l                                            ; $41ef: $8d
	add h                                            ; $41f0: $84
	add h                                            ; $41f1: $84
	add d                                            ; $41f2: $82
	ld b, d                                          ; $41f3: $42
	ld l, a                                          ; $41f4: $6f
	ld [bc], a                                       ; $41f5: $02
	rst SubAFromDE                                          ; $41f6: $df
	rst $38                                          ; $41f7: $ff
	sub a                                            ; $41f8: $97
	add d                                            ; $41f9: $82
	jp nz, $fee2                                     ; $41fa: $c2 $e2 $fe

	ldh [c], a                                       ; $41fd: $e2
	add c                                            ; $41fe: $81
	ld b, c                                          ; $41ff: $41
	ld b, c                                          ; $4200: $41
	sbc $03                                          ; $4201: $de $03
	adc a                                            ; $4203: $8f
	rra                                              ; $4204: $1f
	rst $38                                          ; $4205: $ff
	pop af                                           ; $4206: $f1
	pop bc                                           ; $4207: $c1
	rst GetHLinHL                                          ; $4208: $cf
	push de                                          ; $4209: $d5
	ld [$9681], a                                    ; $420a: $ea $81 $96
	sub b                                            ; $420d: $90
	ld e, e                                          ; $420e: $5b
	ld c, c                                          ; $420f: $49
	inc a                                            ; $4210: $3c
	ld l, e                                          ; $4211: $6b
	dec h                                            ; $4212: $25
	inc h                                            ; $4213: $24
	ld a, c                                          ; $4214: $79
	ld l, a                                          ; $4215: $6f
	adc l                                            ; $4216: $8d
	sub d                                            ; $4217: $92
	bit 2, h                                         ; $4218: $cb $54
	cp h                                             ; $421a: $bc
	ld d, h                                          ; $421b: $54
	ld a, [$7eaa]                                    ; $421c: $fa $aa $7e
	ld e, l                                          ; $421f: $5d
	sbc l                                            ; $4220: $9d
	sbc a                                            ; $4221: $9f
	rst GetHLinHL                                          ; $4222: $cf
	rst AddAOntoHL                                          ; $4223: $ef
	ld h, a                                          ; $4224: $67
	ld [hl], a                                       ; $4225: $77
	inc sp                                           ; $4226: $33
	dec sp                                           ; $4227: $3b
	ccf                                              ; $4228: $3f
	db $fd                                           ; $4229: $fd
	ld a, l                                          ; $422a: $7d
	ret                                              ; $422b: $c9


	rst SubAFromDE                                          ; $422c: $df
	dec bc                                           ; $422d: $0b
	db $db                                           ; $422e: $db
	rst $38                                          ; $422f: $ff
	rst SubAFromDE                                          ; $4230: $df
	ld sp, hl                                        ; $4231: $f9
	cp $7c                                           ; $4232: $fe $7c
	add sp, -$62                                     ; $4234: $e8 $9e
	sbc $db                                          ; $4236: $de $db
	rst $38                                          ; $4238: $ff
	add b                                            ; $4239: $80
	rra                                              ; $423a: $1f
	ld c, e                                          ; $423b: $4b
	sra d                                            ; $423c: $cb $2a
	add b                                            ; $423e: $80
	ldh a, [$e0]                                     ; $423f: $f0 $e0
	ld hl, sp+$1f                                    ; $4241: $f8 $1f
	rra                                              ; $4243: $1f
	inc bc                                           ; $4244: $03
	add b                                            ; $4245: $80
	ld a, a                                          ; $4246: $7f
	rrca                                             ; $4247: $0f
	rra                                              ; $4248: $1f
	rlca                                             ; $4249: $07
	ldh [$e0], a                                     ; $424a: $e0 $e0
	db $fc                                           ; $424c: $fc
	rst $38                                          ; $424d: $ff
	nop                                              ; $424e: $00
	inc b                                            ; $424f: $04
	inc b                                            ; $4250: $04
	ei                                               ; $4251: $fb
	rst $38                                          ; $4252: $ff
	ei                                               ; $4253: $fb
	add b                                            ; $4254: $80
	nop                                              ; $4255: $00
	rst $38                                          ; $4256: $ff
	ei                                               ; $4257: $fb
	ei                                               ; $4258: $fb
	ld a, a                                          ; $4259: $7f
	inc h                                            ; $425a: $24
	sbc l                                            ; $425b: $9d
	inc b                                            ; $425c: $04
	ld a, a                                          ; $425d: $7f
	ld a, b                                          ; $425e: $78
	and b                                            ; $425f: $a0
	sbc c                                            ; $4260: $99
	add b                                            ; $4261: $80
	ret nz                                           ; $4262: $c0

	pop bc                                           ; $4263: $c1
	jp $c4c3                                         ; $4264: $c3 $c3 $c4


	ld a, b                                          ; $4267: $78
	inc a                                            ; $4268: $3c
	add b                                            ; $4269: $80
	ccf                                              ; $426a: $3f
	ld a, $3c                                        ; $426b: $3e $3c
	inc a                                            ; $426d: $3c
	dec sp                                           ; $426e: $3b
	rra                                              ; $426f: $1f
	ld bc, $2820                                     ; $4270: $01 $20 $28
	sbc b                                            ; $4273: $98
	rst SubAFromDE                                          ; $4274: $df
	cp a                                             ; $4275: $bf
	ld l, b                                          ; $4276: $68
	ldh [$fe], a                                     ; $4277: $e0 $fe
	rst SubAFromDE                                          ; $4279: $df
	rst SubAFromHL                                          ; $427a: $d7
	ld h, a                                          ; $427b: $67
	jr nz, jr_05d_42be                               ; $427c: $20 $40

	sub a                                            ; $427e: $97
	ret nz                                           ; $427f: $c0

	pop de                                           ; $4280: $d1
	cp a                                             ; $4281: $bf
	sbc a                                            ; $4282: $9f
	ld e, a                                          ; $4283: $5f
	db $f4                                           ; $4284: $f4
	ld a, [bc]                                       ; $4285: $0a
	inc bc                                           ; $4286: $03
	ccf                                              ; $4287: $3f
	ld l, $99                                        ; $4288: $2e $99
	ld b, b                                          ; $428a: $40
	ld h, b                                          ; $428b: $60
	and b                                            ; $428c: $a0
	dec bc                                           ; $428d: $0b
	push af                                          ; $428e: $f5
	db $fc                                           ; $428f: $fc
	ld [hl], a                                       ; $4290: $77
	sub d                                            ; $4291: $92
	sbc e                                            ; $4292: $9b
	ld b, a                                          ; $4293: $47
	ld a, a                                          ; $4294: $7f
	ccf                                              ; $4295: $3f
	dec e                                            ; $4296: $1d
	ld a, d                                          ; $4297: $7a
	ld d, [hl]                                       ; $4298: $56
	sub b                                            ; $4299: $90
	ld hl, sp-$48                                    ; $429a: $f8 $b8
	add b                                            ; $429c: $80
	ret nz                                           ; $429d: $c0

	ldh [c], a                                       ; $429e: $e2
	and e                                            ; $429f: $a3
	add c                                            ; $42a0: $81
	add e                                            ; $42a1: $83
	ld b, d                                          ; $42a2: $42
	ld b, d                                          ; $42a3: $42
	ld [bc], a                                       ; $42a4: $02
	ld b, d                                          ; $42a5: $42
	ld h, e                                          ; $42a6: $63
	ld e, h                                          ; $42a7: $5c
	ld a, [hl]                                       ; $42a8: $7e
	ld a, d                                          ; $42a9: $7a
	xor a                                            ; $42aa: $af
	sbc $80                                          ; $42ab: $de $80
	sbc h                                            ; $42ad: $9c
	db $f4                                           ; $42ae: $f4
	pop hl                                           ; $42af: $e1
	adc c                                            ; $42b0: $89
	db $fc                                           ; $42b1: $fc
	sbc h                                            ; $42b2: $9c
	dec bc                                           ; $42b3: $0b
	ld e, $76                                        ; $42b4: $1e $76
	db $fc                                           ; $42b6: $fc
	sbc l                                            ; $42b7: $9d
	ld a, c                                          ; $42b8: $79
	cp a                                             ; $42b9: $bf
	ld l, l                                          ; $42ba: $6d
	ld l, l                                          ; $42bb: $6d
	sbc h                                            ; $42bc: $9c
	add [hl]                                         ; $42bd: $86

jr_05d_42be:
	ld b, b                                          ; $42be: $40
	ld hl, sp-$05                                    ; $42bf: $f8 $fb
	ld a, l                                          ; $42c1: $7d
	ld d, e                                          ; $42c2: $53
	ld l, [hl]                                       ; $42c3: $6e
	ret nz                                           ; $42c4: $c0

	ld a, l                                          ; $42c5: $7d

Call_05d_42c6:
	ld d, e                                          ; $42c6: $53
	db $fc                                           ; $42c7: $fc
	sbc $01                                          ; $42c8: $de $01
	sbc d                                            ; $42ca: $9a
	inc bc                                           ; $42cb: $03
	dec l                                            ; $42cc: $2d
	ld e, c                                          ; $42cd: $59
	add hl, hl                                       ; $42ce: $29
	ld e, c                                          ; $42cf: $59
	sbc $ff                                          ; $42d0: $de $ff
	ld a, b                                          ; $42d2: $78
	xor [hl]                                         ; $42d3: $ae
	rst SubAFromDE                                          ; $42d4: $df
	rlca                                             ; $42d5: $07
	ld [hl], d                                       ; $42d6: $72
	call nz, $ffde                                   ; $42d7: $c4 $de $ff
	ld a, a                                          ; $42da: $7f
	ld e, [hl]                                       ; $42db: $5e
	ei                                               ; $42dc: $fb
	add a                                            ; $42dd: $87
	cp e                                             ; $42de: $bb
	db $fd                                           ; $42df: $fd
	sbc $f6                                          ; $42e0: $de $f6
	rst $38                                          ; $42e2: $ff
	rst FarCall                                          ; $42e3: $f7
	db $fd                                           ; $42e4: $fd
	ei                                               ; $42e5: $fb
	ld h, a                                          ; $42e6: $67
	inc hl                                           ; $42e7: $23
	ld sp, $0819                                     ; $42e8: $31 $19 $08
	inc c                                            ; $42eb: $0c
	ld b, $06                                        ; $42ec: $06 $06
	inc b                                            ; $42ee: $04
	inc b                                            ; $42ef: $04
	add d                                            ; $42f0: $82
	add d                                            ; $42f1: $82
	ld b, c                                          ; $42f2: $41
	pop bc                                           ; $42f3: $c1
	and b                                            ; $42f4: $a0
	ldh [$dc], a                                     ; $42f5: $e0 $dc
	rst $38                                          ; $42f7: $ff
	rst SubAFromDE                                          ; $42f8: $df
	ld a, a                                          ; $42f9: $7f
	sbc c                                            ; $42fa: $99

jr_05d_42fb:
	ccf                                              ; $42fb: $3f
	ld e, a                                          ; $42fc: $5f
	jr nc, jr_05d_431f                               ; $42fd: $30 $20

	ld h, b                                          ; $42ff: $60
	rst $38                                          ; $4300: $ff
	sbc $80                                          ; $4301: $de $80
	ld a, l                                          ; $4303: $7d
	daa                                              ; $4304: $27
	ld a, [hl]                                       ; $4305: $7e
	ld d, e                                          ; $4306: $53
	ld l, l                                          ; $4307: $6d
	rrca                                             ; $4308: $0f
	rst $38                                          ; $4309: $ff
	sbc [hl]                                         ; $430a: $9e
	db $fc                                           ; $430b: $fc
	ld a, e                                          ; $430c: $7b
	db $fc                                           ; $430d: $fc
	ld a, a                                          ; $430e: $7f
	or d                                             ; $430f: $b2
	ld a, c                                          ; $4310: $79
	inc c                                            ; $4311: $0c
	sbc $ff                                          ; $4312: $de $ff
	add b                                            ; $4314: $80
	jr c, jr_05d_42fb                                ; $4315: $38 $e4

	ld a, $07                                        ; $4317: $3e $07
	ld bc, $79c0                                     ; $4319: $01 $c0 $79
	ld c, $cf                                        ; $431c: $0e $cf
	rst $38                                          ; $431e: $ff

jr_05d_431f:
	rra                                              ; $431f: $1f
	inc bc                                           ; $4320: $03
	nop                                              ; $4321: $00
	add b                                            ; $4322: $80
	ldh a, [$fc]                                     ; $4323: $f0 $fc
	dec [hl]                                         ; $4325: $35
	ld [hl], a                                       ; $4326: $77
	inc sp                                           ; $4327: $33
	inc sp                                           ; $4328: $33
	di                                               ; $4329: $f3
	inc sp                                           ; $432a: $33
	inc sp                                           ; $432b: $33
	db $db                                           ; $432c: $db
	sbc a                                            ; $432d: $9f
	sbc a                                            ; $432e: $9f
	rst SubAFromDE                                          ; $432f: $df
	rst SubAFromDE                                          ; $4330: $df
	rst $38                                          ; $4331: $ff
	ld a, a                                          ; $4332: $7f
	rra                                              ; $4333: $1f
	add d                                            ; $4334: $82
	rrca                                             ; $4335: $0f
	rla                                              ; $4336: $17
	rla                                              ; $4337: $17
	ld e, $98                                        ; $4338: $1e $98
	sub e                                            ; $433a: $93
	xor [hl]                                         ; $433b: $ae
	reti                                             ; $433c: $d9


	cp a                                             ; $433d: $bf
	ldh a, [c]                                       ; $433e: $f2
	di                                               ; $433f: $f3
	ld d, $98                                        ; $4340: $16 $98
	sub e                                            ; $4342: $93
	xor h                                            ; $4343: $ac
	ret nc                                           ; $4344: $d0

	and e                                            ; $4345: $a3
	rst $38                                          ; $4346: $ff
	ld hl, sp+$1f                                    ; $4347: $f8 $1f
	ldh a, [hDisp0_OBP1]                                     ; $4349: $f0 $87
	db $fc                                           ; $434b: $fc
	ldh [rP1], a                                     ; $434c: $e0 $00
	cpl                                              ; $434e: $2f
	add sp, $1f                                      ; $434f: $e8 $1f
	ldh [$7a], a                                     ; $4351: $e0 $7a
	ld a, [hl]                                       ; $4353: $7e
	adc l                                            ; $4354: $8d
	rst $38                                          ; $4355: $ff
	add h                                            ; $4356: $84
	add [hl]                                         ; $4357: $86
	jp $e5c5                                         ; $4358: $c3 $c5 $e5


	ld h, l                                          ; $435b: $65
	ld b, l                                          ; $435c: $45
	add c                                            ; $435d: $81
	ld hl, sp-$08                                    ; $435e: $f8 $f8
	call nz, $e242                                   ; $4360: $c4 $42 $e2
	ldh [c], a                                       ; $4363: $e2
	jp nz, $2082                                     ; $4364: $c2 $82 $20

	ld a, c                                          ; $4367: $79
	push bc                                          ; $4368: $c5
	db $fd                                           ; $4369: $fd
	rst SubAFromDE                                          ; $436a: $df
	rra                                              ; $436b: $1f
	db $db                                           ; $436c: $db
	rrca                                             ; $436d: $0f
	adc h                                            ; $436e: $8c
	ld h, h                                          ; $436f: $64
	ld h, c                                          ; $4370: $61
	ld h, e                                          ; $4371: $63
	ld b, e                                          ; $4372: $43
	ld c, a                                          ; $4373: $4f
	ld c, [hl]                                       ; $4374: $4e
	ld b, [hl]                                       ; $4375: $46
	ld e, [hl]                                       ; $4376: $5e
	sbc e                                            ; $4377: $9b
	sbc [hl]                                         ; $4378: $9e
	sbc h                                            ; $4379: $9c
	cp h                                             ; $437a: $bc
	or b                                             ; $437b: $b0
	or c                                             ; $437c: $b1
	cp c                                             ; $437d: $b9
	and c                                            ; $437e: $a1
	ldh [$c0], a                                     ; $437f: $e0 $c0
	add b                                            ; $4381: $80
	ld [hl], e                                       ; $4382: $73
	ld b, l                                          ; $4383: $45
	ld a, l                                          ; $4384: $7d
	cp l                                             ; $4385: $bd
	ld l, l                                          ; $4386: $6d
	ld sp, hl                                        ; $4387: $f9
	ld a, [$209e]                                    ; $4388: $fa $9e $20
	jp c, $93ff                                      ; $438b: $da $ff $93

	rst SubAFromDE                                          ; $438e: $df
	ld [bc], a                                       ; $438f: $02
	nop                                              ; $4390: $00
	ld bc, rIE                                     ; $4391: $01 $ff $ff
	push af                                          ; $4394: $f5
	xor d                                            ; $4395: $aa
	ld d, l                                          ; $4396: $55
	db $fd                                           ; $4397: $fd
	rst $38                                          ; $4398: $ff
	cp $fc                                           ; $4399: $fe $fc
	sub h                                            ; $439b: $94
	ld h, e                                          ; $439c: $63
	ld b, d                                          ; $439d: $42
	ld b, d                                          ; $439e: $42
	ld b, e                                          ; $439f: $43
	ld h, c                                          ; $43a0: $61
	ld h, c                                          ; $43a1: $61
	and c                                            ; $43a2: $a1
	ld hl, $8180                                     ; $43a3: $21 $80 $81
	add c                                            ; $43a6: $81
	sbc $80                                          ; $43a7: $de $80
	rst SubAFromDE                                          ; $43a9: $df

Call_05d_43aa:
	ld b, b                                          ; $43aa: $40
	ld l, e                                          ; $43ab: $6b
	rst GetHLinHL                                          ; $43ac: $cf
	ld a, d                                          ; $43ad: $7a
	ld e, a                                          ; $43ae: $5f
	ld l, a                                          ; $43af: $6f
	or $7f                                           ; $43b0: $f6 $7f
	ld a, [$517c]                                    ; $43b2: $fa $7c $51
	ld l, a                                          ; $43b5: $6f
	rst FarCall                                          ; $43b6: $f7
	ld l, [hl]                                       ; $43b7: $6e
	xor $7f                                          ; $43b8: $ee $7f
	ldh a, [$7e]                                     ; $43ba: $f0 $7e
	cp b                                             ; $43bc: $b8
	ld a, h                                          ; $43bd: $7c
	ld b, d                                          ; $43be: $42
	ld a, a                                          ; $43bf: $7f
	cp $7f                                           ; $43c0: $fe $7f
	rst FarCall                                          ; $43c2: $f7
	ld l, [hl]                                       ; $43c3: $6e
	xor b                                            ; $43c4: $a8
	sub a                                            ; $43c5: $97
	pop af                                           ; $43c6: $f1

Jump_05d_43c7:
	ld bc, $7901                                     ; $43c7: $01 $01 $79
	or c                                             ; $43ca: $b1
	ld d, c                                          ; $43cb: $51
	or c                                             ; $43cc: $b1
	ld d, d                                          ; $43cd: $52
	ld a, b                                          ; $43ce: $78
	and c                                            ; $43cf: $a1
	ld [hl], c                                       ; $43d0: $71
	ld h, b                                          ; $43d1: $60
	sbc $7f                                          ; $43d2: $de $7f
	rst SubAFromDE                                          ; $43d4: $df
	ccf                                              ; $43d5: $3f
	ld a, e                                          ; $43d6: $7b
	ld h, e                                          ; $43d7: $63
	sbc $80                                          ; $43d8: $de $80
	rst SubAFromDE                                          ; $43da: $df
	ret nz                                           ; $43db: $c0

	rst SubAFromDE                                          ; $43dc: $df
	ldh [hDisp0_SCX], a                                     ; $43dd: $e0 $84
	ldh a, [$fe]                                     ; $43df: $f0 $fe
	ld a, l                                          ; $43e1: $7d
	ld a, a                                          ; $43e2: $7f
	cp [hl]                                          ; $43e3: $be
	sbc a                                            ; $43e4: $9f
	rst GetHLinHL                                          ; $43e5: $cf
	add $e0                                          ; $43e6: $c6 $e0
	inc bc                                           ; $43e8: $03
	add e                                            ; $43e9: $83
	add c                                            ; $43ea: $81
	ld b, c                                          ; $43eb: $41
	ld h, b                                          ; $43ec: $60
	jr nc, jr_05d_4428                               ; $43ed: $30 $39

	rra                                              ; $43ef: $1f
	ldh a, [$d9]                                     ; $43f0: $f0 $d9
	ld [hl], l                                       ; $43f2: $75

jr_05d_43f3:
	di                                               ; $43f3: $f3
	xor c                                            ; $43f4: $a9
	ld l, d                                          ; $43f5: $6a
	ld c, d                                          ; $43f6: $4a
	ld a, [hl+]                                      ; $43f7: $2a
	ccf                                              ; $43f8: $3f
	ccf                                              ; $43f9: $3f
	ld [hl], d                                       ; $43fa: $72
	cp $62                                           ; $43fb: $fe $62
	sbc b                                            ; $43fd: $98
	reti                                             ; $43fe: $d9


	rst $38                                          ; $43ff: $ff
	ld b, l                                          ; $4400: $45
	jr nz, jr_05d_4481                               ; $4401: $20 $7e

	bit 1, a                                         ; $4403: $cb $4f
	ldh a, [$9b]                                     ; $4405: $f0 $9b
	cpl                                              ; $4407: $2f
	rst $38                                          ; $4408: $ff
	ld hl, $de1f                                     ; $4409: $21 $1f $de
	db $10                                           ; $440c: $10
	sbc h                                            ; $440d: $9c
	jr nz, jr_05d_4417                               ; $440e: $20 $07

	jp $ffdb                                         ; $4410: $c3 $db $ff


	ld a, h                                          ; $4413: $7c
	jp c, $9f7d                                      ; $4414: $da $7d $9f

jr_05d_4417:
	sub a                                            ; $4417: $97
	ldh [rLCDC], a                                   ; $4418: $e0 $40
	ld b, b                                          ; $441a: $40
	add b                                            ; $441b: $80
	rst JumpTable                                          ; $441c: $c7
	adc a                                            ; $441d: $8f
	sbc a                                            ; $441e: $9f
	ccf                                              ; $441f: $3f
	ld [hl], e                                       ; $4420: $73
	ret nz                                           ; $4421: $c0

	rst SubAFromDE                                          ; $4422: $df
	ld bc, $02df                                     ; $4423: $01 $df $02
	rst SubAFromDE                                          ; $4426: $df
	inc b                                            ; $4427: $04

jr_05d_4428:
	sbc [hl]                                         ; $4428: $9e
	ld [$3570], sp                                   ; $4429: $08 $70 $35
	rst SubAFromDE                                          ; $442c: $df
	db $fc                                           ; $442d: $fc
	ld a, h                                          ; $442e: $7c
	ld a, $df                                        ; $442f: $3e $df

jr_05d_4431:
	ld bc, $0c9e                                     ; $4431: $01 $9e $0c
	sbc $04                                          ; $4434: $de $04
	sbc e                                            ; $4436: $9b
	nop                                              ; $4437: $00
	add d                                            ; $4438: $82
	cp $fe                                           ; $4439: $fe $fe
	call c, $9b03                                    ; $443b: $dc $03 $9b
	dec b                                            ; $443e: $05
	ld [bc], a                                       ; $443f: $02
	adc b                                            ; $4440: $88
	adc b                                            ; $4441: $88
	db $dd                                           ; $4442: $dd
	add b                                            ; $4443: $80
	sbc l                                            ; $4444: $9d
	ld a, [bc]                                       ; $4445: $0a
	ld [$a86b], sp                                   ; $4446: $08 $6b $a8
	sbc h                                            ; $4449: $9c
	ld a, [hl]                                       ; $444a: $7e
	ld e, h                                          ; $444b: $5c
	ld b, h                                          ; $444c: $44
	db $dd                                           ; $444d: $dd
	ld e, h                                          ; $444e: $5c
	ld a, d                                          ; $444f: $7a
	db $dd                                           ; $4450: $dd
	sbc [hl]                                         ; $4451: $9e
	jr c, jr_05d_4431                                ; $4452: $38 $dd

	jr nz, jr_05d_43f3                               ; $4454: $20 $9d

	ld b, [hl]                                       ; $4456: $46
	cp c                                             ; $4457: $b9
	ei                                               ; $4458: $fb
	ld l, e                                          ; $4459: $6b
	ld sp, hl                                        ; $445a: $f9
	sbc e                                            ; $445b: $9b
	nop                                              ; $445c: $00
	ret nc                                           ; $445d: $d0

	dec c                                            ; $445e: $0d
	ld [bc], a                                       ; $445f: $02
	db $fc                                           ; $4460: $fc
	sbc [hl]                                         ; $4461: $9e
	rrca                                             ; $4462: $0f
	ld l, a                                          ; $4463: $6f
	ld sp, hl                                        ; $4464: $f9
	sbc h                                            ; $4465: $9c
	nop                                              ; $4466: $00
	xor b                                            ; $4467: $a8
	ld d, b                                          ; $4468: $50
	di                                               ; $4469: $f3
	reti                                             ; $446a: $d9


	ld hl, $40d9                                     ; $446b: $21 $d9 $40
	ld a, e                                          ; $446e: $7b
	ld a, a                                          ; $446f: $7f
	ld l, d                                          ; $4470: $6a
	ret nz                                           ; $4471: $c0

	ld l, [hl]                                       ; $4472: $6e
	and b                                            ; $4473: $a0
	ld a, a                                          ; $4474: $7f
	ldh a, [rOCPD]                                   ; $4475: $f0 $6b
	dec l                                            ; $4477: $2d
	ld h, e                                          ; $4478: $63
	ld sp, hl                                        ; $4479: $f9
	ld a, [hl]                                       ; $447a: $7e
	inc h                                            ; $447b: $24
	sbc e                                            ; $447c: $9b
	ld [bc], a                                       ; $447d: $02
	dec b                                            ; $447e: $05
	ld [bc], a                                       ; $447f: $02
	dec b                                            ; $4480: $05

jr_05d_4481:
	ld a, c                                          ; $4481: $79
	ld a, a                                          ; $4482: $7f
	db $fc                                           ; $4483: $fc
	sub [hl]                                         ; $4484: $96
	ld a, [$0102]                                    ; $4485: $fa $02 $01
	ld a, l                                          ; $4488: $7d
	cp c                                             ; $4489: $b9
	ld d, h                                          ; $448a: $54
	cp b                                             ; $448b: $b8
	ld [hl], h                                       ; $448c: $74
	rlca                                             ; $448d: $07
	ld a, e                                          ; $448e: $7b
	dec d                                            ; $448f: $15
	ld a, h                                          ; $4490: $7c
	cp c                                             ; $4491: $b9
	ld a, a                                          ; $4492: $7f
	cp $90                                           ; $4493: $fe $90
	rrca                                             ; $4495: $0f
	add a                                            ; $4496: $87
	rst SubAFromBC                                          ; $4497: $e7
	rst FarCall                                          ; $4498: $f7
	ld a, a                                          ; $4499: $7f
	rst $38                                          ; $449a: $ff
	cp [hl]                                          ; $449b: $be
	sbc a                                            ; $449c: $9f
	ldh a, [$78]                                     ; $449d: $f0 $78
	jr jr_05d_44a9                                   ; $449f: $18 $08

	add b                                            ; $44a1: $80
	add b                                            ; $44a2: $80
	pop bc                                           ; $44a3: $c1
	ld a, d                                          ; $44a4: $7a
	cp [hl]                                          ; $44a5: $be
	sbc c                                            ; $44a6: $99
	ldh a, [$fa]                                     ; $44a7: $f0 $fa

jr_05d_44a9:
	ld a, [$7dfd]                                    ; $44a9: $fa $fd $7d
	jr jr_05d_4528                                   ; $44ac: $18 $7a

	ld de, $07df                                     ; $44ae: $11 $df $07
	ld a, [hl]                                       ; $44b1: $7e
	cp e                                             ; $44b2: $bb
	sbc c                                            ; $44b3: $99
	rst SubAFromBC                                          ; $44b4: $e7
	ld h, $24                                        ; $44b5: $26 $24
	ld b, h                                          ; $44b7: $44
	ld b, h                                          ; $44b8: $44
	call nz, $c8de                                   ; $44b9: $c4 $de $c8

jr_05d_44bc:
	ld h, $d0                                        ; $44bc: $26 $d0
	ei                                               ; $44be: $fb
	ld a, l                                          ; $44bf: $7d
	dec [hl]                                         ; $44c0: $35
	jp c, Jump_05d_7fff                              ; $44c1: $da $ff $7f

	ld a, e                                          ; $44c4: $7b
	adc [hl]                                         ; $44c5: $8e
	ld b, $0e                                        ; $44c6: $06 $0e
	ld a, [de]                                       ; $44c8: $1a
	inc [hl]                                         ; $44c9: $34
	db $ec                                           ; $44ca: $ec
	adc b                                            ; $44cb: $88
	jr @+$01                                         ; $44cc: $18 $ff

	rst $38                                          ; $44ce: $ff
	ei                                               ; $44cf: $fb
	di                                               ; $44d0: $f3
	rst SubAFromBC                                          ; $44d1: $e7
	rst JumpTable                                          ; $44d2: $c7
	rrca                                             ; $44d3: $0f
	rra                                              ; $44d4: $1f
	jr nz, jr_05d_44f7                               ; $44d5: $20 $20

	sbc $41                                          ; $44d7: $de $41
	rst SubAFromDE                                          ; $44d9: $df
	add e                                            ; $44da: $83
	sbc [hl]                                         ; $44db: $9e
	add a                                            ; $44dc: $87
	ld l, e                                          ; $44dd: $6b
	pop hl                                           ; $44de: $e1
	sbc [hl]                                         ; $44df: $9e
	db $fc                                           ; $44e0: $fc
	ld [hl], l                                       ; $44e1: $75
	jp nc, $e0de                                     ; $44e2: $d2 $de $e0

	ld l, l                                          ; $44e5: $6d
	ld b, h                                          ; $44e6: $44
	rst SubAFromDE                                          ; $44e7: $df
	ccf                                              ; $44e8: $3f
	ld a, h                                          ; $44e9: $7c
	ld e, c                                          ; $44ea: $59
	ld a, d                                          ; $44eb: $7a
	and h                                            ; $44ec: $a4
	ld a, h                                          ; $44ed: $7c
	adc c                                            ; $44ee: $89
	ld a, [hl]                                       ; $44ef: $7e
	or b                                             ; $44f0: $b0
	ld a, c                                          ; $44f1: $79
	ld b, h                                          ; $44f2: $44
	ld a, e                                          ; $44f3: $7b
	ld [$b37d], a                                    ; $44f4: $ea $7d $b3

jr_05d_44f7:
	ld a, b                                          ; $44f7: $78
	adc a                                            ; $44f8: $8f
	sbc [hl]                                         ; $44f9: $9e
	ld b, $de                                        ; $44fa: $06 $de
	ld [bc], a                                       ; $44fc: $02
	sbc [hl]                                         ; $44fd: $9e
	nop                                              ; $44fe: $00
	ld a, e                                          ; $44ff: $7b
	xor a                                            ; $4500: $af
	call c, $df01                                    ; $4501: $dc $01 $df
	add b                                            ; $4504: $80
	sbc c                                            ; $4505: $99
	push bc                                          ; $4506: $c5
	rst JumpTable                                          ; $4507: $c7
	jp nz, $c4c0                                     ; $4508: $c2 $c0 $c4

	jp nz, $83fd                                     ; $450b: $c2 $fd $83

	dec b                                            ; $450e: $05
	rlca                                             ; $450f: $07
	inc bc                                           ; $4510: $03
	dec b                                            ; $4511: $05
	ld e, h                                          ; $4512: $5c
	ld e, [hl]                                       ; $4513: $5e
	add l                                            ; $4514: $85
	add d                                            ; $4515: $82
	ld bc, $0100                                     ; $4516: $01 $00 $01
	xor d                                            ; $4519: $aa
	jr nz, jr_05d_453c                               ; $451a: $20 $20

	ld a, d                                          ; $451c: $7a
	ld a, l                                          ; $451d: $7d
	cp $ff                                           ; $451e: $fe $ff
	cp $55                                           ; $4520: $fe $55
	nop                                              ; $4522: $00
	nop                                              ; $4523: $00
	jr z, jr_05d_44bc                                ; $4524: $28 $96

	ld e, l                                          ; $4526: $5d
	xor d                                            ; $4527: $aa

jr_05d_4528:
	ld e, l                                          ; $4528: $5d
	xor d                                            ; $4529: $aa
	cp $9b                                           ; $452a: $fe $9b
	ld b, b                                          ; $452c: $40
	and b                                            ; $452d: $a0
	ld d, b                                          ; $452e: $50
	and b                                            ; $452f: $a0
	ld [hl], d                                       ; $4530: $72
	db $f4                                           ; $4531: $f4
	ld a, a                                          ; $4532: $7f
	rst FarCall                                          ; $4533: $f7

jr_05d_4534:
	ld a, a                                          ; $4534: $7f
	or b                                             ; $4535: $b0
	ld sp, hl                                        ; $4536: $f9
	sub a                                            ; $4537: $97
	ld [$ae15], sp                                   ; $4538: $08 $15 $ae
	ld e, l                                          ; $453b: $5d

jr_05d_453c:
	rst $38                                          ; $453c: $ff
	ld [hl], l                                       ; $453d: $75
	xor d                                            ; $453e: $aa
	inc b                                            ; $453f: $04
	db $fc                                           ; $4540: $fc
	sub a                                            ; $4541: $97
	adc d                                            ; $4542: $8a
	ld d, l                                          ; $4543: $55
	ei                                               ; $4544: $fb
	ld hl, $a1a1                                     ; $4545: $21 $a1 $a1
	ld hl, $6ea1                                     ; $4548: $21 $a1 $6e
	ret nz                                           ; $454b: $c0

	sbc l                                            ; $454c: $9d
	ret nz                                           ; $454d: $c0

	ld b, b                                          ; $454e: $40
	sbc $c0                                          ; $454f: $de $c0
	ld a, a                                          ; $4551: $7f
	ccf                                              ; $4552: $3f
	ld [hl], c                                       ; $4553: $71
	xor b                                            ; $4554: $a8
	ld a, d                                          ; $4555: $7a
	ret nz                                           ; $4556: $c0

	ld l, h                                          ; $4557: $6c
	ld d, b                                          ; $4558: $50
	ld a, $c0                                        ; $4559: $3e $c0
	rst $38                                          ; $455b: $ff
	sbc e                                            ; $455c: $9b
	dec d                                            ; $455d: $15
	ld a, [hl+]                                      ; $455e: $2a
	ld d, l                                          ; $455f: $55
	xor d                                            ; $4560: $aa
	ld h, l                                          ; $4561: $65
	ld h, b                                          ; $4562: $60
	sbc [hl]                                         ; $4563: $9e
	add sp, $78                                      ; $4564: $e8 $78
	sbc c                                            ; $4566: $99
	sbc d                                            ; $4567: $9a
	ld [hl], h                                       ; $4568: $74
	add sp, -$0c                                     ; $4569: $e8 $f4
	add sp, $17                                      ; $456b: $e8 $17
	ld a, c                                          ; $456d: $79
	add b                                            ; $456e: $80
	adc l                                            ; $456f: $8d
	dec bc                                           ; $4570: $0b
	rla                                              ; $4571: $17
	dec bc                                           ; $4572: $0b
	rla                                              ; $4573: $17
	adc a                                            ; $4574: $8f
	add a                                            ; $4575: $87
	add e                                            ; $4576: $83
	or e                                             ; $4577: $b3
	cp c                                             ; $4578: $b9
	cp l                                             ; $4579: $bd
	cp a                                             ; $457a: $bf
	cp a                                             ; $457b: $bf
	ldh a, [$f8]                                     ; $457c: $f0 $f8
	db $fc                                           ; $457e: $fc
	call z, $c2c6                                    ; $457f: $cc $c6 $c2
	ld a, e                                          ; $4582: $7b
	ccf                                              ; $4583: $3f
	ld a, l                                          ; $4584: $7d
	ld a, e                                          ; $4585: $7b
	ld a, a                                          ; $4586: $7f
	push af                                          ; $4587: $f5
	ld [hl], h                                       ; $4588: $74
	ld d, l                                          ; $4589: $55
	ld a, l                                          ; $458a: $7d
	ld l, e                                          ; $458b: $6b
	ld a, [hl]                                       ; $458c: $7e
	cp a                                             ; $458d: $bf
	sbc e                                            ; $458e: $9b
	rrca                                             ; $458f: $0f
	jr nc, jr_05d_45f2                               ; $4590: $30 $60

	ld c, b                                          ; $4592: $48
	sbc $50                                          ; $4593: $de $50
	ret c                                            ; $4595: $d8

	rst $38                                          ; $4596: $ff
	ld a, [$997e]                                    ; $4597: $fa $7e $99
	ld a, [hl]                                       ; $459a: $7e
	db $e3                                           ; $459b: $e3
	ld l, h                                          ; $459c: $6c
	jr nc, jr_05d_4534                               ; $459d: $30 $95

	ld a, $20                                        ; $459f: $3e $20
	ld b, $04                                        ; $45a1: $06 $04
	inc c                                            ; $45a3: $0c
	ld [$d818], sp                                   ; $45a4: $08 $18 $d8
	ldh a, [$e0]                                     ; $45a7: $f0 $e0
	ld a, c                                          ; $45a9: $79
	push bc                                          ; $45aa: $c5
	ld a, l                                          ; $45ab: $7d
	and [hl]                                         ; $45ac: $a6
	ld a, a                                          ; $45ad: $7f
	ld sp, hl                                        ; $45ae: $f9
	sbc h                                            ; $45af: $9c
	add b                                            ; $45b0: $80
	ccf                                              ; $45b1: $3f
	rra                                              ; $45b2: $1f
	db $dd                                           ; $45b3: $dd
	rlca                                             ; $45b4: $07
	ld a, [hl]                                       ; $45b5: $7e
	ret z                                            ; $45b6: $c8

	sbc [hl]                                         ; $45b7: $9e
	rrca                                             ; $45b8: $0f
	halt                                             ; $45b9: $76
	xor d                                            ; $45ba: $aa
	ld l, d                                          ; $45bb: $6a
	sbc b                                            ; $45bc: $98
	sbc $fe                                          ; $45bd: $de $fe
	ld a, a                                          ; $45bf: $7f
	ldh [c], a                                       ; $45c0: $e2
	sbc b                                            ; $45c1: $98
	ld bc, $1906                                     ; $45c2: $01 $06 $19
	db $e3                                           ; $45c5: $e3
	rrca                                             ; $45c6: $0f
	di                                               ; $45c7: $f3
	rlca                                             ; $45c8: $07
	ld a, b                                          ; $45c9: $78
	ret z                                            ; $45ca: $c8

	ld d, c                                          ; $45cb: $51
	sub b                                            ; $45cc: $90
	halt                                             ; $45cd: $76
	jr nz, jr_05d_4643                               ; $45ce: $20 $73

	xor h                                            ; $45d0: $ac
	ld l, d                                          ; $45d1: $6a
	jr nz, jr_05d_464d                               ; $45d2: $20 $79

	ld a, [$c072]                                    ; $45d4: $fa $72 $c0
	ld a, b                                          ; $45d7: $78
	adc d                                            ; $45d8: $8a
	call c, $9701                                    ; $45d9: $dc $01 $97
	push bc                                          ; $45dc: $c5
	add d                                            ; $45dd: $82
	add l                                            ; $45de: $85
	add b                                            ; $45df: $80
	add b                                            ; $45e0: $80
	add d                                            ; $45e1: $82
	add l                                            ; $45e2: $85
	add [hl]                                         ; $45e3: $86
	ld sp, hl                                        ; $45e4: $f9
	ld a, a                                          ; $45e5: $7f
	ld [hl], $9d                                     ; $45e6: $36 $9d
	ld d, b                                          ; $45e8: $50
	jr nz, @+$7c                                     ; $45e9: $20 $7a

	or [hl]                                          ; $45eb: $b6
	rst SubAFromDE                                          ; $45ec: $df
	xor d                                            ; $45ed: $aa
	ld a, [$509e]                                    ; $45ee: $fa $9e $50
	ld a, d                                          ; $45f1: $7a

jr_05d_45f2:
	sub $9b                                          ; $45f2: $d6 $9b
	dec b                                            ; $45f4: $05
	ld a, [bc]                                       ; $45f5: $0a
	ld d, a                                          ; $45f6: $57
	cp a                                             ; $45f7: $bf
	db $f4                                           ; $45f8: $f4
	sbc h                                            ; $45f9: $9c
	and b                                            ; $45fa: $a0
	push de                                          ; $45fb: $d5
	ld a, [$41f9]                                    ; $45fc: $fa $f9 $41
	nop                                              ; $45ff: $00
	db $dd                                           ; $4600: $dd
	ld d, l                                          ; $4601: $55
	sbc $33                                          ; $4602: $de $33
	jp c, $de55                                      ; $4604: $da $55 $de

	inc sp                                           ; $4607: $33
	sbc [hl]                                         ; $4608: $9e
	dec [hl]                                         ; $4609: $35
	db $db                                           ; $460a: $db
	ld d, l                                          ; $460b: $55
	sbc h                                            ; $460c: $9c
	ld [hl-], a                                      ; $460d: $32
	ld [hl+], a                                      ; $460e: $22
	inc hl                                           ; $460f: $23
	ld h, e                                          ; $4610: $63
	or $9e                                           ; $4611: $f6 $9e
	ld [hl+], a                                      ; $4613: $22
	jp c, Jump_05d_7f55                              ; $4614: $da $55 $7f

	or $9e                                           ; $4617: $f6 $9e
	dec h                                            ; $4619: $25
	db $db                                           ; $461a: $db
	ld d, l                                          ; $461b: $55
	sbc h                                            ; $461c: $9c
	ld d, h                                          ; $461d: $54
	ld [hl-], a                                      ; $461e: $32
	ld [hl+], a                                      ; $461f: $22
	ld l, e                                          ; $4620: $6b
	db $e3                                           ; $4621: $e3
	sbc e                                            ; $4622: $9b
	ld b, h                                          ; $4623: $44
	ld [hl-], a                                      ; $4624: $32
	inc hl                                           ; $4625: $23
	ld [hl-], a                                      ; $4626: $32
	ld l, a                                          ; $4627: $6f
	db $eb                                           ; $4628: $eb
	sbc h                                            ; $4629: $9c
	ld [hl], a                                       ; $462a: $77
	ld b, h                                          ; $462b: $44
	ld d, l                                          ; $462c: $55
	ld l, e                                          ; $462d: $6b
	or $9d                                           ; $462e: $f6 $9d
	ld b, a                                          ; $4630: $47
	ld [hl], l                                       ; $4631: $75
	reti                                             ; $4632: $d9


	ld d, l                                          ; $4633: $55
	sbc l                                            ; $4634: $9d
	ld [hl], a                                       ; $4635: $77
	ld [hl], l                                       ; $4636: $75
	ld h, a                                          ; $4637: $67
	call nz, Call_05d_779c                           ; $4638: $c4 $9c $77
	ld [hl], h                                       ; $463b: $74
	ld h, $77                                        ; $463c: $26 $77
	or $82                                           ; $463e: $f6 $82
	adc e                                            ; $4640: $8b
	db $db                                           ; $4641: $db
	rst $38                                          ; $4642: $ff

jr_05d_4643:
	rst SubAFromDE                                          ; $4643: $df
	cp $fb                                           ; $4644: $fe $fb
	rst SubAFromDE                                          ; $4646: $df
	ld bc, $ffdb                                     ; $4647: $01 $db $ff
	sbc l                                            ; $464a: $9d
	rlca                                             ; $464b: $07
	rst $38                                          ; $464c: $ff

jr_05d_464d:
	ei                                               ; $464d: $fb
	sbc l                                            ; $464e: $9d
	ld hl, sp+$00                                    ; $464f: $f8 $00
	reti                                             ; $4651: $d9


	rst $38                                          ; $4652: $ff
	ld sp, hl                                        ; $4653: $f9
	db $dd                                           ; $4654: $dd
	ld a, $df                                        ; $4655: $3e $df
	inc a                                            ; $4657: $3c
	sbc l                                            ; $4658: $9d
	inc [hl]                                         ; $4659: $34
	inc h                                            ; $465a: $24
	reti                                             ; $465b: $d9


	pop bc                                           ; $465c: $c1
	sbc h                                            ; $465d: $9c
	xor $ed                                          ; $465e: $ee $ed
	db $ed                                           ; $4660: $ed
	sbc $ea                                          ; $4661: $de $ea
	sbc l                                            ; $4663: $9d
	cp $af                                           ; $4664: $fe $af
	sbc $10                                          ; $4666: $de $10
	sbc $11                                          ; $4668: $de $11
	ld a, a                                          ; $466a: $7f
	cp a                                             ; $466b: $bf
	adc a                                            ; $466c: $8f
	ret nz                                           ; $466d: $c0

	add b                                            ; $466e: $80
	nop                                              ; $466f: $00
	nop                                              ; $4670: $00
	rlca                                             ; $4671: $07
	ld a, $d3                                        ; $4672: $3e $d3
	ld c, $20                                        ; $4674: $0e $20
	ld b, b                                          ; $4676: $40
	add b                                            ; $4677: $80
	add b                                            ; $4678: $80
	rlca                                             ; $4679: $07
	add hl, sp                                       ; $467a: $39
	call z, Call_05d_7bb1                            ; $467b: $cc $b1 $7b
	ldh a, [c]                                       ; $467e: $f2
	sbc d                                            ; $467f: $9a
	ld a, [bc]                                       ; $4680: $0a
	sub h                                            ; $4681: $94
	halt                                             ; $4682: $76
	sbc e                                            ; $4683: $9b
	push af                                          ; $4684: $f5
	ld a, e                                          ; $4685: $7b
	ld hl, sp-$65                                    ; $4686: $f8 $9b
	ld c, $9c                                        ; $4688: $0e $9c
	cp $7f                                           ; $468a: $fe $7f
	ld l, e                                          ; $468c: $6b
	sbc b                                            ; $468d: $98
	sbc l                                            ; $468e: $9d
	rst $38                                          ; $468f: $ff
	ld a, a                                          ; $4690: $7f
	ei                                               ; $4691: $fb
	sbc d                                            ; $4692: $9a
	add b                                            ; $4693: $80
	ld hl, sp+$0f                                    ; $4694: $f8 $0f
	rlca                                             ; $4696: $07
	inc bc                                           ; $4697: $03
	sbc $01                                          ; $4698: $de $01
	ld e, a                                          ; $469a: $5f
	and b                                            ; $469b: $a0
	reti                                             ; $469c: $d9


	cp a                                             ; $469d: $bf
	rst SubAFromDE                                          ; $469e: $df
	ld b, b                                          ; $469f: $40
	ei                                               ; $46a0: $fb
	adc a                                            ; $46a1: $8f
	sub [hl]                                         ; $46a2: $96
	xor l                                            ; $46a3: $ad
	sub a                                            ; $46a4: $97
	xor d                                            ; $46a5: $aa
	sbc d                                            ; $46a6: $9a
	and [hl]                                         ; $46a7: $a6
	sub a                                            ; $46a8: $97
	or [hl]                                          ; $46a9: $b6
	ld l, b                                          ; $46aa: $68
	ld d, b                                          ; $46ab: $50
	ld l, b                                          ; $46ac: $68
	ld d, c                                          ; $46ad: $51
	ld h, c                                          ; $46ae: $61
	ld d, c                                          ; $46af: $51
	ld h, b                                          ; $46b0: $60
	ld b, c                                          ; $46b1: $41
	ld [hl], a                                       ; $46b2: $77
	and b                                            ; $46b3: $a0
	ld a, e                                          ; $46b4: $7b
	ret nz                                           ; $46b5: $c0

	sbc [hl]                                         ; $46b6: $9e
	ld e, $77                                        ; $46b7: $1e $77
	and b                                            ; $46b9: $a0
	cp $9e                                           ; $46ba: $fe $9e
	ldh [rOCPD], a                                   ; $46bc: $e0 $6b
	or b                                             ; $46be: $b0
	sbc [hl]                                         ; $46bf: $9e
	ret nc                                           ; $46c0: $d0

	ld a, [$0f9e]                                    ; $46c1: $fa $9e $0f
	ld l, e                                          ; $46c4: $6b
	ldh a, [$9e]                                     ; $46c5: $f0 $9e
	ld [hl], a                                       ; $46c7: $77
	ld a, [$809e]                                    ; $46c8: $fa $9e $80
	ld a, e                                          ; $46cb: $7b
	and b                                            ; $46cc: $a0
	ld a, e                                          ; $46cd: $7b
	sbc a                                            ; $46ce: $9f
	ld e, a                                          ; $46cf: $5f
	and b                                            ; $46d0: $a0
	reti                                             ; $46d1: $d9


	ld sp, hl                                        ; $46d2: $f9
	reti                                             ; $46d3: $d9


	inc b                                            ; $46d4: $04
	reti                                             ; $46d5: $d9


	db $fd                                           ; $46d6: $fd
	reti                                             ; $46d7: $d9


	ld [bc], a                                       ; $46d8: $02
	sub c                                            ; $46d9: $91
	db $fc                                           ; $46da: $fc
	ld hl, sp-$10                                    ; $46db: $f8 $f0
	ldh a, [$e0]                                     ; $46dd: $f0 $e0
	ldh [rIE], a                                     ; $46df: $e0 $ff
	rst $38                                          ; $46e1: $ff
	ld [bc], a                                       ; $46e2: $02
	inc b                                            ; $46e3: $04
	ld [$1008], sp                                   ; $46e4: $08 $08 $10
	db $10                                           ; $46e7: $10
	ld sp, hl                                        ; $46e8: $f9
	sbc l                                            ; $46e9: $9d
	rst $38                                          ; $46ea: $ff
	jp c, $9efa                                      ; $46eb: $da $fa $9e

	ld bc, $f06b                                     ; $46ee: $01 $6b $f0
	sbc [hl]                                         ; $46f1: $9e
	rlca                                             ; $46f2: $07
	ld a, [$f89e]                                    ; $46f3: $fa $9e $f8
	sbc $fe                                          ; $46f6: $de $fe
	sbc [hl]                                         ; $46f8: $9e
	db $fc                                           ; $46f9: $fc
	ld [hl], a                                       ; $46fa: $77
	cp $de                                           ; $46fb: $fe $de
	ld bc, $987f                                     ; $46fd: $01 $7f $98
	ld a, e                                          ; $4700: $7b
	cp $87                                           ; $4701: $fe $87
	adc a                                            ; $4703: $8f
	add b                                            ; $4704: $80
	add b                                            ; $4705: $80
	and b                                            ; $4706: $a0
	sub c                                            ; $4707: $91
	sbc e                                            ; $4708: $9b
	adc d                                            ; $4709: $8a
	add h                                            ; $470a: $84
	nop                                              ; $470b: $00
	nop                                              ; $470c: $00
	inc b                                            ; $470d: $04
	ld c, $04                                        ; $470e: $0e $04
	nop                                              ; $4710: $00
	db $10                                           ; $4711: $10
	jr c, @+$01                                      ; $4712: $38 $ff

	ld a, a                                          ; $4714: $7f
	ld a, a                                          ; $4715: $7f
	ld a, c                                          ; $4716: $79
	ld [hl], c                                       ; $4717: $71
	ld h, c                                          ; $4718: $61
	ld b, e                                          ; $4719: $43
	ld d, l                                          ; $471a: $55
	ld sp, hl                                        ; $471b: $f9
	sbc e                                            ; $471c: $9b
	inc h                                            ; $471d: $24
	ld h, $26                                        ; $471e: $26 $26
	ld l, $7a                                        ; $4720: $2e $7a
	pop bc                                           ; $4722: $c1
	ld h, d                                          ; $4723: $62
	ret nz                                           ; $4724: $c0

	add b                                            ; $4725: $80
	ld d, a                                          ; $4726: $57
	xor [hl]                                         ; $4727: $ae
	ld e, b                                          ; $4728: $58
	or l                                             ; $4729: $b5
	ld l, d                                          ; $472a: $6a
	cp d                                             ; $472b: $ba
	ld d, [hl]                                       ; $472c: $56
	ld d, [hl]                                       ; $472d: $56
	ld [bc], a                                       ; $472e: $02
	inc b                                            ; $472f: $04
	dec c                                            ; $4730: $0d
	ld a, [de]                                       ; $4731: $1a
	inc [hl]                                         ; $4732: $34
	inc h                                            ; $4733: $24
	ld l, c                                          ; $4734: $69
	ld l, c                                          ; $4735: $69
	dec hl                                           ; $4736: $2b
	dec d                                            ; $4737: $15
	ld l, $5d                                        ; $4738: $2e $5d
	or e                                             ; $473a: $b3
	ld l, h                                          ; $473b: $6c
	add l                                            ; $473c: $85
	ret c                                            ; $473d: $d8

	ld b, a                                          ; $473e: $47
	adc [hl]                                         ; $473f: $8e
	add hl, de                                       ; $4740: $19
	inc sp                                           ; $4741: $33
	ld h, [hl]                                       ; $4742: $66
	add $cc                                          ; $4743: $c6 $cc
	add b                                            ; $4745: $80
	adc l                                            ; $4746: $8d
	ld l, [hl]                                       ; $4747: $6e
	or c                                             ; $4748: $b1
	or $d9                                           ; $4749: $f6 $d9
	and [hl]                                         ; $474b: $a6
	ld d, l                                          ; $474c: $55
	xor d                                            ; $474d: $aa
	sub h                                            ; $474e: $94
	sbc a                                            ; $474f: $9f
	ld a, a                                          ; $4750: $7f
	rst GetHLinHL                                          ; $4751: $cf
	ccf                                              ; $4752: $3f
	ld a, c                                          ; $4753: $79
	db $e3                                           ; $4754: $e3
	add $cc                                          ; $4755: $c6 $cc
	or [hl]                                          ; $4757: $b6
	ld c, a                                          ; $4758: $4f
	sbc h                                            ; $4759: $9c
	di                                               ; $475a: $f3
	db $f4                                           ; $475b: $f4
	dec de                                           ; $475c: $1b
	ld h, h                                          ; $475d: $64
	ld d, d                                          ; $475e: $52
	adc $bf                                          ; $475f: $ce $bf
	di                                               ; $4761: $f3
	db $ec                                           ; $4762: $ec
	ei                                               ; $4763: $fb
	rst $38                                          ; $4764: $ff
	sbc l                                            ; $4765: $9d
	ccf                                              ; $4766: $3f
	rst SubAFromBC                                          ; $4767: $e7
	ld a, e                                          ; $4768: $7b
	dec e                                            ; $4769: $1d
	sbc d                                            ; $476a: $9a
	ret nz                                           ; $476b: $c0

	ldh a, [$7c]                                     ; $476c: $f0 $7c
	ld a, [de]                                       ; $476e: $1a
	scf                                              ; $476f: $37
	ld a, e                                          ; $4770: $7b
	ld hl, sp-$66                                    ; $4771: $f8 $9a
	ld b, b                                          ; $4773: $40
	ldh a, [$8c]                                     ; $4774: $f0 $8c
	ldh [c], a                                       ; $4776: $e2
	ei                                               ; $4777: $fb
	db $db                                           ; $4778: $db
	or c                                             ; $4779: $b1
	rst SubAFromDE                                          ; $477a: $df
	cp e                                             ; $477b: $bb
	db $fc                                           ; $477c: $fc
	ld a, a                                          ; $477d: $7f
	ld a, [hl]                                       ; $477e: $7e
	sbc l                                            ; $477f: $9d
	inc b                                            ; $4780: $04
	or l                                             ; $4781: $b5
	jp c, $d9b4                                      ; $4782: $da $b4 $d9

	ld b, d                                          ; $4785: $42
	pop af                                           ; $4786: $f1
	ld [hl], a                                       ; $4787: $77
	ld c, b                                          ; $4788: $48
	rst SubAFromDE                                          ; $4789: $df
	inc bc                                           ; $478a: $03
	sbc l                                            ; $478b: $9d
	inc c                                            ; $478c: $0c
	ld de, $02de                                     ; $478d: $11 $de $02
	rst $38                                          ; $4790: $ff
	add b                                            ; $4791: $80
	inc bc                                           ; $4792: $03
	rrca                                             ; $4793: $0f
	ld e, $00                                        ; $4794: $1e $00
	dec b                                            ; $4796: $05
	rlca                                             ; $4797: $07
	ld d, $ed                                        ; $4798: $16 $ed
	dec hl                                           ; $479a: $2b
	dec h                                            ; $479b: $25
	db $e3                                           ; $479c: $e3
	nop                                              ; $479d: $00
	dec b                                            ; $479e: $05
	ld c, $1d                                        ; $479f: $0e $1d
	ei                                               ; $47a1: $fb
	cp $ff                                           ; $47a2: $fe $ff
	ld e, $7f                                        ; $47a4: $1e $7f
	cp c                                             ; $47a6: $b9
	cp a                                             ; $47a7: $bf
	rst SubAFromDE                                          ; $47a8: $df
	add sp, $77                                      ; $47a9: $e8 $77
	rst $38                                          ; $47ab: $ff
	sbc c                                            ; $47ac: $99
	ld a, [hl]                                       ; $47ad: $7e
	rst JumpTable                                          ; $47ae: $c7
	ld a, b                                          ; $47af: $78
	ldh [$8b], a                                     ; $47b0: $e0 $8b
	rra                                              ; $47b2: $1f
	ld hl, sp-$80                                    ; $47b3: $f8 $80
	ld a, [hl]                                       ; $47b5: $7e
	ld sp, hl                                        ; $47b6: $f9
	ld sp, hl                                        ; $47b7: $f9
	call Call_05d_7efb                               ; $47b8: $cd $fb $7e
	sbc a                                            ; $47bb: $9f
	rst FarCall                                          ; $47bc: $f7
	ld sp, hl                                        ; $47bd: $f9
	inc b                                            ; $47be: $04
	db $f4                                           ; $47bf: $f4
	inc a                                            ; $47c0: $3c
	rlca                                             ; $47c1: $07
	add c                                            ; $47c2: $81
	ld h, b                                          ; $47c3: $60
	ld [$dd06], sp                                   ; $47c4: $08 $06 $dd
	adc l                                            ; $47c7: $8d
	sbc e                                            ; $47c8: $9b
	db $fd                                           ; $47c9: $fd
	ld a, l                                          ; $47ca: $7d
	cp l                                             ; $47cb: $bd
	db $dd                                           ; $47cc: $dd
	db $dd                                           ; $47cd: $dd
	ld [bc], a                                       ; $47ce: $02
	sbc e                                            ; $47cf: $9b
	add d                                            ; $47d0: $82
	jp nz, $3262                                     ; $47d1: $c2 $62 $32

	reti                                             ; $47d4: $d9


	ldh [$d9], a                                     ; $47d5: $e0 $d9
	db $10                                           ; $47d7: $10
	pop af                                           ; $47d8: $f1
	sbc $20                                          ; $47d9: $de $20
	call c, $de60                                    ; $47db: $dc $60 $de
	ld b, b                                          ; $47de: $40
	db $fc                                           ; $47df: $fc
	sbc $fc                                          ; $47e0: $de $fc
	ld a, [hl]                                       ; $47e2: $7e
	jp $fd7b                                         ; $47e3: $c3 $7b $fd


	sbc $03                                          ; $47e6: $de $03
	ld a, e                                          ; $47e8: $7b
	ld [hl], a                                       ; $47e9: $77
	ld a, a                                          ; $47ea: $7f
	db $fd                                           ; $47eb: $fd
	ld a, [hl]                                       ; $47ec: $7e
	jp nz, $b097                                     ; $47ed: $c2 $97 $b0

	cp c                                             ; $47f0: $b9
	sbc e                                            ; $47f1: $9b
	ld c, $06                                        ; $47f2: $0e $06
	inc [hl]                                         ; $47f4: $34
	ld [de], a                                       ; $47f5: $12
	rlca                                             ; $47f6: $07
	ld a, e                                          ; $47f7: $7b
	ld [hl], b                                       ; $47f8: $70
	sbc $80                                          ; $47f9: $de $80
	sbc l                                            ; $47fb: $9d
	ld l, d                                          ; $47fc: $6a
	ld d, h                                          ; $47fd: $54
	ld [hl], a                                       ; $47fe: $77
	push de                                          ; $47ff: $d5
	ld h, l                                          ; $4800: $65
	ldh a, [c]                                       ; $4801: $f2
	ld a, d                                          ; $4802: $7a
	ret nz                                           ; $4803: $c0

	rst SubAFromDE                                          ; $4804: $df
	inc h                                            ; $4805: $24
	sbc $25                                          ; $4806: $de $25
	sbc l                                            ; $4808: $9d
	and [hl]                                         ; $4809: $a6
	daa                                              ; $480a: $27
	db $db                                           ; $480b: $db
	pop bc                                           ; $480c: $c1

jr_05d_480d:
	add b                                            ; $480d: $80
	ld b, e                                          ; $480e: $43
	ld b, d                                          ; $480f: $42
	or l                                             ; $4810: $b5
	xor c                                            ; $4811: $a9
	add sp, $43                                      ; $4812: $e8 $43
	ld [hl], e                                       ; $4814: $73
	push hl                                          ; $4815: $e5
	add $c8                                          ; $4816: $c6 $c8
	set 2, a                                         ; $4818: $cb $d7
	sub a                                            ; $481a: $97
	cp [hl]                                          ; $481b: $be
	xor [hl]                                         ; $481c: $ae
	ld a, $7d                                        ; $481d: $3e $7d
	ld a, a                                          ; $481f: $7f
	ld l, e                                          ; $4820: $6b
	push de                                          ; $4821: $d5
	sbc d                                            ; $4822: $9a
	sbc d                                            ; $4823: $9a
	dec [hl]                                         ; $4824: $35
	dec h                                            ; $4825: $25
	ld l, d                                          ; $4826: $6a
	ret z                                            ; $4827: $c8

	sbc c                                            ; $4828: $99
	dec sp                                           ; $4829: $3b
	ld [hl], a                                       ; $482a: $77
	ld [hl], a                                       ; $482b: $77
	xor $80                                          ; $482c: $ee $80
	cp $fd                                           ; $482e: $fe $fd
	rst $38                                          ; $4830: $ff
	dec c                                            ; $4831: $0d
	jr z, jr_05d_4846                                ; $4832: $28 $12

	ld e, c                                          ; $4834: $59
	and l                                            ; $4835: $a5
	ld a, [hl+]                                      ; $4836: $2a
	ld c, e                                          ; $4837: $4b
	push de                                          ; $4838: $d5
	sbc b                                            ; $4839: $98
	sbc c                                            ; $483a: $99
	add hl, sp                                       ; $483b: $39
	inc sp                                           ; $483c: $33
	ld [hl], e                                       ; $483d: $73
	rst FarCall                                          ; $483e: $f7
	or $ee                                           ; $483f: $f6 $ee
	ld b, d                                          ; $4841: $42
	xor l                                            ; $4842: $ad
	call c, $a65e                                    ; $4843: $dc $5e $a6

jr_05d_4846:
	add e                                            ; $4846: $83
	ld c, e                                          ; $4847: $4b

Call_05d_4848:
	dec hl                                           ; $4848: $2b
	pop hl                                           ; $4849: $e1
	jp $8183                                         ; $484a: $c3 $83 $81


	adc e                                            ; $484d: $8b
	add hl, de                                       ; $484e: $19
	inc a                                            ; $484f: $3c
	inc [hl]                                         ; $4850: $34
	ld [hl], h                                       ; $4851: $74
	add sp, $65                                      ; $4852: $e8 $65
	or h                                             ; $4854: $b4
	ld d, b                                          ; $4855: $50
	and l                                            ; $4856: $a5
	xor l                                            ; $4857: $ad
	jp c, $cdfa                                      ; $4858: $da $fa $cd

	add h                                            ; $485b: $84
	call nz, $70e4                                   ; $485c: $c4 $e4 $70
	ld [hl], b                                       ; $485f: $70
	dec [hl]                                         ; $4860: $35
	dec d                                            ; $4861: $15
	sbc $bf                                          ; $4862: $de $bf
	ld a, d                                          ; $4864: $7a
	ld c, l                                          ; $4865: $4d
	rst SubAFromDE                                          ; $4866: $df
	ld a, a                                          ; $4867: $7f
	sbc $80                                          ; $4868: $de $80
	sbc $40                                          ; $486a: $de $40
	rst SubAFromDE                                          ; $486c: $df
	jr nz, jr_05d_480d                               ; $486d: $20 $9e

	or a                                             ; $486f: $b7
	sbc $b4                                          ; $4870: $de $b4
	sbc d                                            ; $4872: $9a
	and h                                            ; $4873: $a4
	sub h                                            ; $4874: $94
	and h                                            ; $4875: $a4
	sub h                                            ; $4876: $94
	ld b, b                                          ; $4877: $40
	jp c, $9e42                                      ; $4878: $da $42 $9e

	db $eb                                           ; $487b: $eb
	ld a, d                                          ; $487c: $7a
	call $039b                                       ; $487d: $cd $9b $03
	ld b, $05                                        ; $4880: $06 $05
	dec bc                                           ; $4882: $0b
	halt                                             ; $4883: $76
	push bc                                          ; $4884: $c5

jr_05d_4885:
	add b                                            ; $4885: $80
	ld [bc], a                                       ; $4886: $02
	dec b                                            ; $4887: $05
	rlca                                             ; $4888: $07
	ld c, $fb                                        ; $4889: $0e $fb
	halt                                             ; $488b: $76
	db $ed                                           ; $488c: $ed
	sbc e                                            ; $488d: $9b
	ld [hl], a                                       ; $488e: $77
	xor $cc                                          ; $488f: $ee $cc
	sbc d                                            ; $4891: $9a
	inc h                                            ; $4892: $24
	ld c, c                                          ; $4893: $49
	sub d                                            ; $4894: $92
	ld h, h                                          ; $4895: $64
	ret z                                            ; $4896: $c8

	sub c                                            ; $4897: $91
	inc sp                                           ; $4898: $33
	ld h, l                                          ; $4899: $65
	sbc a                                            ; $489a: $9f
	ld a, a                                          ; $489b: $7f
	ei                                               ; $489c: $fb
	cp [hl]                                          ; $489d: $be
	ld l, h                                          ; $489e: $6c
	ld a, l                                          ; $489f: $7d
	db $dd                                           ; $48a0: $dd
	rst FarCall                                          ; $48a1: $f7
	ld h, h                                          ; $48a2: $64
	add b                                            ; $48a3: $80
	inc b                                            ; $48a4: $04
	add b                                            ; $48a5: $80
	ld c, c                                          ; $48a6: $49
	sbc e                                            ; $48a7: $9b
	sub d                                            ; $48a8: $92
	ld [hl-], a                                      ; $48a9: $32
	ld [hl+], a                                      ; $48aa: $22
	ld l, a                                          ; $48ab: $6f
	rst JumpTable                                          ; $48ac: $c7
	pop af                                           ; $48ad: $f1
	ld a, [hl]                                       ; $48ae: $7e
	dec a                                            ; $48af: $3d
	ld l, [hl]                                       ; $48b0: $6e
	ld d, l                                          ; $48b1: $55

jr_05d_48b2:
	or b                                             ; $48b2: $b0
	ldh a, [$38]                                     ; $48b3: $f0 $38
	ld c, $c7                                        ; $48b5: $0e $c7
	db $e3                                           ; $48b7: $e3
	or c                                             ; $48b8: $b1
	cp b                                             ; $48b9: $b8
	ld e, h                                          ; $48ba: $5c
	db $fc                                           ; $48bb: $fc
	cp $eb                                           ; $48bc: $fe $eb
	or l                                             ; $48be: $b5
	ld e, l                                          ; $48bf: $5d
	xor d                                            ; $48c0: $aa
	ld h, [hl]                                       ; $48c1: $66
	ret nc                                           ; $48c2: $d0

	jp $8831                                         ; $48c3: $c3 $31 $88


	inc e                                            ; $48c6: $1c
	ld c, $86                                        ; $48c7: $0e $86
	rst JumpTable                                          ; $48c9: $c7
	jp $ed63                                         ; $48ca: $c3 $63 $ed


	ld l, l                                          ; $48cd: $6d
	or l                                             ; $48ce: $b5
	ld d, l                                          ; $48cf: $55
	ld e, e                                          ; $48d0: $5b
	dec hl                                           ; $48d1: $2b
	ld l, c                                          ; $48d2: $69
	xor c                                            ; $48d3: $a9
	ld a, [de]                                       ; $48d4: $1a
	sbc d                                            ; $48d5: $9a
	adc $ee                                          ; $48d6: $ce $ee
	ld h, [hl]                                       ; $48d8: $66
	halt                                             ; $48d9: $76
	scf                                              ; $48da: $37
	scf                                              ; $48db: $37
	rst $38                                          ; $48dc: $ff
	jp c, Jump_05d_7de0                              ; $48dd: $da $e0 $7d

	push bc                                          ; $48e0: $c5
	db $db                                           ; $48e1: $db
	db $10                                           ; $48e2: $10
	sbc [hl]                                         ; $48e3: $9e
	or l                                             ; $48e4: $b5
	db $fc                                           ; $48e5: $fc
	sbc [hl]                                         ; $48e6: $9e
	ld [bc], a                                       ; $48e7: $02
	ld [hl], c                                       ; $48e8: $71
	jr z, jr_05d_4885                                ; $48e9: $28 $9a

jr_05d_48eb:
	rrca                                             ; $48eb: $0f
	rra                                              ; $48ec: $1f
	dec e                                            ; $48ed: $1d
	jr nc, jr_05d_48eb                               ; $48ee: $30 $fb

	sbc $60                                          ; $48f0: $de $60
	sbc e                                            ; $48f2: $9b
	ldh [$60], a                                     ; $48f3: $e0 $60
	ld h, b                                          ; $48f5: $60
	jr nz, jr_05d_4965                               ; $48f6: $20 $6d

	ld [hl+], a                                      ; $48f8: $22
	ld a, [hl]                                       ; $48f9: $7e
	inc b                                            ; $48fa: $04
	ld [hl], d                                       ; $48fb: $72
	pop bc                                           ; $48fc: $c1
	sbc h                                            ; $48fd: $9c
	db $fd                                           ; $48fe: $fd

Call_05d_48ff:
	cp $ff                                           ; $48ff: $fe $ff
	ld [hl], d                                       ; $4901: $72
	pop bc                                           ; $4902: $c1
	ld a, a                                          ; $4903: $7f
	db $fc                                           ; $4904: $fc
	sub [hl]                                         ; $4905: $96
	nop                                              ; $4906: $00
	add hl, de                                       ; $4907: $19
	ld a, [bc]                                       ; $4908: $0a
	nop                                              ; $4909: $00
	nop                                              ; $490a: $00
	ld a, a                                          ; $490b: $7f
	ld d, h                                          ; $490c: $54
	ld bc, $dcfc                                     ; $490d: $01 $fc $dc
	add b                                            ; $4910: $80
	ld a, h                                          ; $4911: $7c
	jr z, jr_05d_48b2                                ; $4912: $28 $9e

	nop                                              ; $4914: $00
	db $dd                                           ; $4915: $dd
	ld b, b                                          ; $4916: $40
	sbc [hl]                                         ; $4917: $9e
	ret nz                                           ; $4918: $c0

	ld sp, hl                                        ; $4919: $f9
	ld a, e                                          ; $491a: $7b
	rst FarCall                                          ; $491b: $f7
	add a                                            ; $491c: $87
	dec h                                            ; $491d: $25
	ld a, [hl+]                                      ; $491e: $2a
	inc [hl]                                         ; $491f: $34
	add hl, hl                                       ; $4920: $29
	ld hl, $8442                                     ; $4921: $21 $42 $84
	adc l                                            ; $4924: $8d
	ld b, [hl]                                       ; $4925: $46
	ld c, l                                          ; $4926: $4d
	ld e, e                                          ; $4927: $5b
	ld [hl], a                                       ; $4928: $77
	ld a, a                                          ; $4929: $7f
	ld a, a                                          ; $492a: $7f
	rst $38                                          ; $492b: $ff
	rst $38                                          ; $492c: $ff
	ld c, b                                          ; $492d: $48
	sub c                                            ; $492e: $91
	sub c                                            ; $492f: $91
	inc hl                                           ; $4930: $23
	ld b, d                                          ; $4931: $42
	ld b, [hl]                                       ; $4932: $46
	add l                                            ; $4933: $85
	add hl, bc                                       ; $4934: $09
	reti                                             ; $4935: $d9


	rst $38                                          ; $4936: $ff
	sub a                                            ; $4937: $97
	pop de                                           ; $4938: $d1
	db $d3                                           ; $4939: $d3
	ld h, l                                          ; $493a: $65
	ld e, d                                          ; $493b: $5a
	db $f4                                           ; $493c: $f4
	sbc a                                            ; $493d: $9f
	inc de                                           ; $493e: $13
	inc hl                                           ; $493f: $23
	db $db                                           ; $4940: $db
	rst $38                                          ; $4941: $ff
	ld a, a                                          ; $4942: $7f
	xor b                                            ; $4943: $a8
	add d                                            ; $4944: $82
	sub l                                            ; $4945: $95
	dec hl                                           ; $4946: $2b
	dec de                                           ; $4947: $1b
	scf                                              ; $4948: $37
	rst SubAFromBC                                          ; $4949: $e7
	rst SubAFromDE                                          ; $494a: $df
	db $fd                                           ; $494b: $fd
	cp $ee                                           ; $494c: $fe $ee
	call c, $fafd                                    ; $494e: $dc $fd $fa
	db $fc                                           ; $4951: $fc
	ld a, b                                          ; $4952: $78
	cp $07                                           ; $4953: $fe $07
	jp z, $d6da                                      ; $4955: $ca $da $d6

	call nc, $9494                                   ; $4958: $d4 $94 $94
	or l                                             ; $495b: $b5
	or l                                             ; $495c: $b5
	ld [hl], l                                       ; $495d: $75
	push hl                                          ; $495e: $e5
	ld l, c                                          ; $495f: $69
	ld l, e                                          ; $4960: $6b
	ei                                               ; $4961: $fb
	ld [hl], a                                       ; $4962: $77
	sbc $dd                                          ; $4963: $de $dd

jr_05d_4965:
	cp h                                             ; $4965: $bc
	sub h                                            ; $4966: $94
	cp [hl]                                          ; $4967: $be
	halt                                             ; $4968: $76
	halt                                             ; $4969: $76
	dec d                                            ; $496a: $15
	ld d, a                                          ; $496b: $57
	ld d, a                                          ; $496c: $57
	rst SubAFromHL                                          ; $496d: $d7
	db $d3                                           ; $496e: $d3
	db $d3                                           ; $496f: $d3
	sbc e                                            ; $4970: $9b
	cp e                                             ; $4971: $bb
	call c, $deff                                    ; $4972: $dc $ff $de
	cp a                                             ; $4975: $bf
	rst SubAFromDE                                          ; $4976: $df
	jr nz, @-$20                                     ; $4977: $20 $de

	ld b, b                                          ; $4979: $40
	sbc $80                                          ; $497a: $de $80

Jump_05d_497c:
	ld a, [hl]                                       ; $497c: $7e
	add $9e                                          ; $497d: $c6 $9e
	and a                                            ; $497f: $a7
	ld a, d                                          ; $4980: $7a
	jp nz, $fe7f                                     ; $4981: $c2 $7f $fe

	rst SubAFromDE                                          ; $4984: $df
	ld b, d                                          ; $4985: $42
	ld l, [hl]                                       ; $4986: $6e
	cp [hl]                                          ; $4987: $be
	sbc c                                            ; $4988: $99
	dec bc                                           ; $4989: $0b
	rla                                              ; $498a: $17
	or a                                             ; $498b: $b7
	rra                                              ; $498c: $1f

jr_05d_498d:
	rrca                                             ; $498d: $0f
	rrca                                             ; $498e: $0f
	sbc $0e                                          ; $498f: $de $0e
	sbc e                                            ; $4991: $9b
	inc e                                            ; $4992: $1c
	dec e                                            ; $4993: $1d
	add hl, de                                       ; $4994: $19
	add hl, bc                                       ; $4995: $09
	sbc $0a                                          ; $4996: $de $0a
	sub h                                            ; $4998: $94
	sbc d                                            ; $4999: $9a
	or [hl]                                          ; $499a: $b6
	ld sp, $4068                                     ; $499b: $31 $68 $40
	inc bc                                           ; $499e: $03
	sbc e                                            ; $499f: $9b
	sbc $e5                                          ; $49a0: $de $e5
	ret                                              ; $49a2: $c9


	jp z, $92dd                                      ; $49a3: $ca $dd $92

	add b                                            ; $49a6: $80
	sub e                                            ; $49a7: $93
	or d                                             ; $49a8: $b2
	ld h, e                                          ; $49a9: $63
	ld h, [hl]                                       ; $49aa: $66
	ld h, [hl]                                       ; $49ab: $66
	ld d, a                                          ; $49ac: $57
	scf                                              ; $49ad: $37
	xor a                                            ; $49ae: $af
	or a                                             ; $49af: $b7
	ld h, [hl]                                       ; $49b0: $66
	ld b, [hl]                                       ; $49b1: $46
	ld b, a                                          ; $49b2: $47
	ld b, a                                          ; $49b3: $47
	ld h, l                                          ; $49b4: $65
	ld h, l                                          ; $49b5: $65
	ld [hl], l                                       ; $49b6: $75
	ld a, h                                          ; $49b7: $7c
	jp z, $6edd                                      ; $49b8: $ca $dd $6e

	ld b, a                                          ; $49bb: $47
	or l                                             ; $49bc: $b5
	db $ec                                           ; $49bd: $ec
	ld a, d                                          ; $49be: $7a
	rst FarCall                                          ; $49bf: $f7
	ld e, h                                          ; $49c0: $5c
	ld c, [hl]                                       ; $49c1: $4e
	ld c, a                                          ; $49c2: $4f
	ld l, a                                          ; $49c3: $6f
	ld h, a                                          ; $49c4: $67
	scf                                              ; $49c5: $37
	adc b                                            ; $49c6: $88
	or a                                             ; $49c7: $b7
	cp e                                             ; $49c8: $bb
	inc sp                                           ; $49c9: $33
	ld l, c                                          ; $49ca: $69
	sbc b                                            ; $49cb: $98
	ld l, l                                          ; $49cc: $6d
	xor l                                            ; $49cd: $ad
	rst SubAFromHL                                          ; $49ce: $d7
	ld d, a                                          ; $49cf: $57
	xor a                                            ; $49d0: $af
	ld h, c                                          ; $49d1: $61
	ld sp, $9831                                     ; $49d2: $31 $31 $98
	ret c                                            ; $49d5: $d8

	db $ec                                           ; $49d6: $ec
	db $ec                                           ; $49d7: $ec
	cp $11                                           ; $49d8: $fe $11
	ld [hl], c                                       ; $49da: $71
	jr nc, jr_05d_498d                               ; $49db: $30 $b0

	or b                                             ; $49dd: $b0
	sbc $a8                                          ; $49de: $de $a8
	ld a, d                                          ; $49e0: $7a
	ld c, c                                          ; $49e1: $49
	call c, $dfff                                    ; $49e2: $dc $ff $df
	ldh [$9e], a                                     ; $49e5: $e0 $9e
	cp $69                                           ; $49e7: $fe $69
	add b                                            ; $49e9: $80
	sbc [hl]                                         ; $49ea: $9e
	add b                                            ; $49eb: $80
	call c, $8690                                    ; $49ec: $dc $90 $86
	inc e                                            ; $49ef: $1c
	rrca                                             ; $49f0: $0f
	ld b, [hl]                                       ; $49f1: $46
	ld [$1015], sp                                   ; $49f2: $08 $15 $10
	rra                                              ; $49f5: $1f
	rra                                              ; $49f6: $1f
	ld [hl+], a                                      ; $49f7: $22
	jr nc, jr_05d_4a33                               ; $49f8: $30 $39

	scf                                              ; $49fa: $37
	ld l, d                                          ; $49fb: $6a
	rst AddAOntoHL                                          ; $49fc: $ef
	ldh [$e0], a                                     ; $49fd: $e0 $e0
	and b                                            ; $49ff: $a0
	jr nz, jr_05d_4a25                               ; $4a00: $20 $23

	jr nc, jr_05d_4a4c                               ; $4a02: $30 $48

	ld b, h                                          ; $4a04: $44
	call nz, Call_05d_40c4                           ; $4a05: $c4 $c4 $40
	sbc $c0                                          ; $4a08: $de $c0
	sbc e                                            ; $4a0a: $9b
	or b                                             ; $4a0b: $b0
	cp b                                             ; $4a0c: $b8
	jr c, jr_05d_4a47                                ; $4a0d: $38 $38

	db $db                                           ; $4a0f: $db
	rst $38                                          ; $4a10: $ff
	ld a, l                                          ; $4a11: $7d
	ret c                                            ; $4a12: $d8

	ld sp, hl                                        ; $4a13: $f9
	rst SubAFromDE                                          ; $4a14: $df

Jump_05d_4a15:
	rst $38                                          ; $4a15: $ff
	sbc c                                            ; $4a16: $99
	push de                                          ; $4a17: $d5
	rst $38                                          ; $4a18: $ff
	ld d, l                                          ; $4a19: $55
	cp $55                                           ; $4a1a: $fe $55
	cp $f9                                           ; $4a1c: $fe $f9
	sub a                                            ; $4a1e: $97
	ld d, l                                          ; $4a1f: $55
	add c                                            ; $4a20: $81
	ld d, c                                          ; $4a21: $51
	add d                                            ; $4a22: $82
	ld d, d                                          ; $4a23: $52
	add d                                            ; $4a24: $82

jr_05d_4a25:
	ld d, a                                          ; $4a25: $57
	add e                                            ; $4a26: $83
	ld l, h                                          ; $4a27: $6c
	ret c                                            ; $4a28: $d8

	rst SubAFromDE                                          ; $4a29: $df
	inc bc                                           ; $4a2a: $03
	sub a                                            ; $4a2b: $97
	add hl, de                                       ; $4a2c: $19
	ld [hl-], a                                      ; $4a2d: $32
	ld [hl-], a                                      ; $4a2e: $32
	ld h, h                                          ; $4a2f: $64
	and h                                            ; $4a30: $a4
	xor b                                            ; $4a31: $a8
	ld c, b                                          ; $4a32: $48

jr_05d_4a33:
	ld c, b                                          ; $4a33: $48
	ld l, a                                          ; $4a34: $6f
	add hl, de                                       ; $4a35: $19
	rst SubAFromDE                                          ; $4a36: $df
	ld a, a                                          ; $4a37: $7f
	sub a                                            ; $4a38: $97
	ld [de], a                                       ; $4a39: $12
	ld h, $26                                        ; $4a3a: $26 $26
	ld c, l                                          ; $4a3c: $4d
	ld d, l                                          ; $4a3d: $55
	sub l                                            ; $4a3e: $95
	and l                                            ; $4a3f: $a5
	and l                                            ; $4a40: $a5
	halt                                             ; $4a41: $76
	push af                                          ; $4a42: $f5
	db $dd                                           ; $4a43: $dd
	cp $df                                           ; $4a44: $fe $df
	daa                                              ; $4a46: $27

jr_05d_4a47:
	rst SubAFromDE                                          ; $4a47: $df
	ld b, a                                          ; $4a48: $47
	rst SubAFromDE                                          ; $4a49: $df
	ld e, a                                          ; $4a4a: $5f
	sbc l                                            ; $4a4b: $9d

jr_05d_4a4c:
	sbc $5f                                          ; $4a4c: $de $5f
	db $dd                                           ; $4a4e: $dd
	db $fc                                           ; $4a4f: $fc
	sub e                                            ; $4a50: $93
	db $eb                                           ; $4a51: $eb
	add sp, $68                                      ; $4a52: $e8 $68
	ld l, b                                          ; $4a54: $68
	rst JumpTable                                          ; $4a55: $c7
	di                                               ; $4a56: $f3
	adc c                                            ; $4a57: $89
	ldh a, [$f8]                                     ; $4a58: $f0 $f8
	add b                                            ; $4a5a: $80
	nop                                              ; $4a5b: $00
	ld bc, $7ffe                                     ; $4a5c: $01 $fe $7f
	ld hl, sp-$02                                    ; $4a5f: $f8 $fe
	add b                                            ; $4a61: $80
	ei                                               ; $4a62: $fb
	db $fd                                           ; $4a63: $fd

jr_05d_4a64:
	ld a, [de]                                       ; $4a64: $1a
	dec bc                                           ; $4a65: $0b
	ld bc, $cf07                                     ; $4a66: $01 $07 $cf
	jp $07df                                         ; $4a69: $c3 $df $07


	rlca                                             ; $4a6c: $07
	nop                                              ; $4a6d: $00
	nop                                              ; $4a6e: $00
	ld b, $0f                                        ; $4a6f: $06 $0f
	nop                                              ; $4a71: $00
	ld [hl], a                                       ; $4a72: $77
	ei                                               ; $4a73: $fb
	ld a, e                                          ; $4a74: $7b
	ld [hl], l                                       ; $4a75: $75
	ldh a, [c]                                       ; $4a76: $f2
	di                                               ; $4a77: $f3
	db $d3                                           ; $4a78: $d3
	db $d3                                           ; $4a79: $d3
	reti                                             ; $4a7a: $d9


	sbc l                                            ; $4a7b: $9d
	db $dd                                           ; $4a7c: $dd
	sbc [hl]                                         ; $4a7d: $9e
	ccf                                              ; $4a7e: $3f
	ccf                                              ; $4a7f: $3f
	ld a, l                                          ; $4a80: $7d
	sbc [hl]                                         ; $4a81: $9e
	db $fd                                           ; $4a82: $fd
	ld a, e                                          ; $4a83: $7b
	jr c, jr_05d_4a64                                ; $4a84: $38 $de

	cp a                                             ; $4a86: $bf
	sbc l                                            ; $4a87: $9d
	ld a, a                                          ; $4a88: $7f
	ccf                                              ; $4a89: $3f
	ld a, c                                          ; $4a8a: $79
	add c                                            ; $4a8b: $81
	ld [hl], l                                       ; $4a8c: $75
	ld a, l                                          ; $4a8d: $7d
	sbc [hl]                                         ; $4a8e: $9e
	nop                                              ; $4a8f: $00
	halt                                             ; $4a90: $76
	call nz, $be76                                   ; $4a91: $c4 $76 $be
	db $dd                                           ; $4a94: $dd
	ld b, d                                          ; $4a95: $42
	halt                                             ; $4a96: $76
	cp [hl]                                          ; $4a97: $be
	sbc [hl]                                         ; $4a98: $9e
	ld a, [bc]                                       ; $4a99: $0a
	sbc $05                                          ; $4a9a: $de $05
	sbc d                                            ; $4a9c: $9a
	cp $02                                           ; $4a9d: $fe $02
	ld bc, $0e00                                     ; $4a9f: $01 $00 $0e
	sbc $06                                          ; $4aa2: $de $06
	halt                                             ; $4aa4: $76
	db $10                                           ; $4aa5: $10
	sub e                                            ; $4aa6: $93
	cp $bf                                           ; $4aa7: $fe $bf
	or l                                             ; $4aa9: $b5
	ld [hl], l                                       ; $4aaa: $75
	ld c, c                                          ; $4aab: $49
	ld c, b                                          ; $4aac: $48
	inc h                                            ; $4aad: $24
	or [hl]                                          ; $4aae: $b6
	sub e                                            ; $4aaf: $93
	db $d3                                           ; $4ab0: $d3
	db $db                                           ; $4ab1: $db
	db $db                                           ; $4ab2: $db
	ret c                                            ; $4ab3: $d8

	rst $38                                          ; $4ab4: $ff
	ld a, l                                          ; $4ab5: $7d
	db $ed                                           ; $4ab6: $ed
	sub [hl]                                         ; $4ab7: $96
	db $ec                                           ; $4ab8: $ec
	ld a, [hl+]                                      ; $4ab9: $2a
	ld h, $a1                                        ; $4aba: $26 $a1
	ld [hl], b                                       ; $4abc: $70
	ret nz                                           ; $4abd: $c0

	or b                                             ; $4abe: $b0
	ld hl, sp+$6c                                    ; $4abf: $f8 $6c
	sbc $ff                                          ; $4ac1: $de $ff
	sub d                                            ; $4ac3: $92
	ei                                               ; $4ac4: $fb
	di                                               ; $4ac5: $f3
	ld l, a                                          ; $4ac6: $6f
	dec c                                            ; $4ac7: $0d
	rlca                                             ; $4ac8: $07
	cp e                                             ; $4ac9: $bb
	ld l, [hl]                                       ; $4aca: $6e
	ld e, a                                          ; $4acb: $5f
	dec sp                                           ; $4acc: $3b
	inc sp                                           ; $4acd: $33
	rrca                                             ; $4ace: $0f
	dec b                                            ; $4acf: $05
	ld [bc], a                                       ; $4ad0: $02
	call c, $92ff                                    ; $4ad1: $dc $ff $92
	ld h, e                                          ; $4ad4: $63
	ld b, a                                          ; $4ad5: $47
	rrca                                             ; $4ad6: $0f
	db $db                                           ; $4ad7: $db
	ld a, [bc]                                       ; $4ad8: $0a
	jp nz, Jump_05d_4181                             ; $4ad9: $c2 $81 $41

	ld b, c                                          ; $4adc: $41
	inc bc                                           ; $4add: $03
	ld bc, $e9c8                                     ; $4ade: $01 $c8 $e9
	sbc $79                                          ; $4ae1: $de $79
	sbc d                                            ; $4ae3: $9a
	ld a, d                                          ; $4ae4: $7a
	ld a, [$7fd2]                                    ; $4ae5: $fa $d2 $7f
	rst $38                                          ; $4ae8: $ff
	db $dd                                           ; $4ae9: $dd
	rst SubAFromDE                                          ; $4aea: $df
	ld a, a                                          ; $4aeb: $7f
	add a                                            ; $4aec: $87
	db $dd                                           ; $4aed: $dd
	ldh [$8e], a                                     ; $4aee: $e0 $8e
	cp $61                                           ; $4af0: $fe $61
	ldh [$60], a                                     ; $4af2: $e0 $60
	sub c                                            ; $4af4: $91
	sub c                                            ; $4af5: $91
	ld de, $0111                                     ; $4af6: $11 $11 $01
	sub d                                            ; $4af9: $92
	inc de                                           ; $4afa: $13
	sub c                                            ; $4afb: $91
	db $10                                           ; $4afc: $10
	db $10                                           ; $4afd: $10
	rla                                              ; $4afe: $17
	rla                                              ; $4aff: $17
	add b                                            ; $4b00: $80
	ld a, c                                          ; $4b01: $79
	rst JumpTable                                          ; $4b02: $c7
	sbc l                                            ; $4b03: $9d
	rst AddAOntoHL                                          ; $4b04: $ef
	and $79                                          ; $4b05: $e6 $79
	ld l, h                                          ; $4b07: $6c
	adc c                                            ; $4b08: $89
	rst $38                                          ; $4b09: $ff
	ccf                                              ; $4b0a: $3f
	rst $38                                          ; $4b0b: $ff
	ld b, d                                          ; $4b0c: $42
	ld [bc], a                                       ; $4b0d: $02
	ld b, d                                          ; $4b0e: $42
	ld b, b                                          ; $4b0f: $40
	ld [$1804], sp                                   ; $4b10: $08 $04 $18
	ld [bc], a                                       ; $4b13: $02
	cp h                                             ; $4b14: $bc
	ld a, h                                          ; $4b15: $7c
	inc a                                            ; $4b16: $3c
	ld a, $16                                        ; $4b17: $3e $16
	ld a, [$fce6]                                    ; $4b19: $fa $e6 $fc
	db $fd                                           ; $4b1c: $fd
	rst $38                                          ; $4b1d: $ff
	push af                                          ; $4b1e: $f5
	ld a, d                                          ; $4b1f: $7a
	jp nz, $c05e                                     ; $4b20: $c2 $5e $c0

	sbc l                                            ; $4b23: $9d
	ld d, l                                          ; $4b24: $55
	ld a, [$fe7b]                                    ; $4b25: $fa $7b $fe
	sbc h                                            ; $4b28: $9c
	ld [$ea55], a                                    ; $4b29: $ea $55 $ea
	ld sp, hl                                        ; $4b2c: $f9
	sbc e                                            ; $4b2d: $9b
	ld d, a                                          ; $4b2e: $57
	ld bc, $0054                                     ; $4b2f: $01 $54 $00
	ld a, e                                          ; $4b32: $7b
	cp $9e                                           ; $4b33: $fe $9e
	add b                                            ; $4b35: $80
	ld a, e                                          ; $4b36: $7b
	ld d, l                                          ; $4b37: $55
	db $fc                                           ; $4b38: $fc
	rst SubAFromDE                                          ; $4b39: $df
	ld e, c                                          ; $4b3a: $59
	sbc c                                            ; $4b3b: $99
	reti                                             ; $4b3c: $d9


	ld e, c                                          ; $4b3d: $59
	ld d, l                                          ; $4b3e: $55
	ld d, l                                          ; $4b3f: $55
	dec [hl]                                         ; $4b40: $35
	inc de                                           ; $4b41: $13
	ld a, c                                          ; $4b42: $79
	add h                                            ; $4b43: $84
	sub c                                            ; $4b44: $91
	ld a, a                                          ; $4b45: $7f
	ld [hl], a                                       ; $4b46: $77
	ld [hl], a                                       ; $4b47: $77
	scf                                              ; $4b48: $37
	inc de                                           ; $4b49: $13
	dec l                                            ; $4b4a: $2d
	ld a, [hl+]                                      ; $4b4b: $2a
	ld c, d                                          ; $4b4c: $4a
	ld d, [hl]                                       ; $4b4d: $56
	ld d, l                                          ; $4b4e: $55
	ld d, l                                          ; $4b4f: $55
	push de                                          ; $4b50: $d5
	push de                                          ; $4b51: $d5
	cp $da                                           ; $4b52: $fe $da
	rst $38                                          ; $4b54: $ff
	rst SubAFromDE                                          ; $4b55: $df
	ld c, a                                          ; $4b56: $4f
	sbc h                                            ; $4b57: $9c
	rst GetHLinHL                                          ; $4b58: $cf
	ld l, a                                          ; $4b59: $6f
	ld a, a                                          ; $4b5a: $7f
	sbc $6f                                          ; $4b5b: $de $6f
	sbc $68                                          ; $4b5d: $de $68
	rst SubAFromDE                                          ; $4b5f: $df
	xor b                                            ; $4b60: $a8
	sub l                                            ; $4b61: $95
	cp b                                             ; $4b62: $b8
	cp h                                             ; $4b63: $bc
	cp [hl]                                          ; $4b64: $be
	ld bc, $8080                                     ; $4b65: $01 $80 $80
	add a                                            ; $4b68: $87
	add a                                            ; $4b69: $87
	add h                                            ; $4b6a: $84
	add e                                            ; $4b6b: $83
	ld [hl], l                                       ; $4b6c: $75
	dec a                                            ; $4b6d: $3d
	sbc $07                                          ; $4b6e: $de $07
	add b                                            ; $4b70: $80
	inc bc                                           ; $4b71: $03
	nop                                              ; $4b72: $00
	pop bc                                           ; $4b73: $c1
	pop af                                           ; $4b74: $f1
	inc hl                                           ; $4b75: $23
	jp $87c5                                         ; $4b76: $c3 $c5 $87


	dec c                                            ; $4b79: $0d
	add hl, de                                       ; $4b7a: $19
	jr nz, jr_05d_4bad                               ; $4b7b: $20 $30

	ld hl, $c381                                     ; $4b7d: $21 $81 $c3
	add e                                            ; $4b80: $83
	rlca                                             ; $4b81: $07
	rrca                                             ; $4b82: $0f
	ret                                              ; $4b83: $c9


	call Call_05d_5e4f                               ; $4b84: $cd $4f $5e
	ld a, [hl]                                       ; $4b87: $7e
	ld l, d                                          ; $4b88: $6a
	ld [hl], h                                       ; $4b89: $74
	ld d, h                                          ; $4b8a: $54
	db $fd                                           ; $4b8b: $fd
	ld sp, hl                                        ; $4b8c: $f9
	ld sp, hl                                        ; $4b8d: $f9
	ld [$9cca], a                                    ; $4b8e: $ea $ca $9c
	sbc $dc                                          ; $4b91: $de $dc
	db $fc                                           ; $4b93: $fc
	db $dd                                           ; $4b94: $dd
	ccf                                              ; $4b95: $3f
	sbc [hl]                                         ; $4b96: $9e
	rra                                              ; $4b97: $1f
	ld a, e                                          ; $4b98: $7b
	cp $f9                                           ; $4b99: $fe $f9
	halt                                             ; $4b9b: $76
	ret nz                                           ; $4b9c: $c0

	sbc e                                            ; $4b9d: $9b
	xor a                                            ; $4b9e: $af
	cp h                                             ; $4b9f: $bc
	sub a                                            ; $4ba0: $97
	xor a                                            ; $4ba1: $af
	ld [hl], d                                       ; $4ba2: $72
	ret nz                                           ; $4ba3: $c0

	sbc h                                            ; $4ba4: $9c
	ld b, e                                          ; $4ba5: $43
	ld l, b                                          ; $4ba6: $68
	ld d, b                                          ; $4ba7: $50
	db $fd                                           ; $4ba8: $fd
	sbc h                                            ; $4ba9: $9c
	rst AddAOntoHL                                          ; $4baa: $ef
	nop                                              ; $4bab: $00
	rst $38                                          ; $4bac: $ff

jr_05d_4bad:
	ld l, h                                          ; $4bad: $6c
	db $ed                                           ; $4bae: $ed
	ld a, e                                          ; $4baf: $7b
	ld c, d                                          ; $4bb0: $4a
	add b                                            ; $4bb1: $80
	ld a, e                                          ; $4bb2: $7b
	dec l                                            ; $4bb3: $2d
	rlca                                             ; $4bb4: $07
	ld bc, $0f3a                                     ; $4bb5: $01 $3a $0f
	ld [$7f35], a                                    ; $4bb8: $ea $35 $7f
	cpl                                              ; $4bbb: $2f
	rlca                                             ; $4bbc: $07
	ld bc, $f000                                     ; $4bbd: $01 $00 $f0
	nop                                              ; $4bc0: $00
	nop                                              ; $4bc1: $00
	db $fc                                           ; $4bc2: $fc
	db $f4                                           ; $4bc3: $f4
	ld hl, sp-$3f                                    ; $4bc4: $f8 $c1
	ret nz                                           ; $4bc6: $c0

	ld h, b                                          ; $4bc7: $60
	and b                                            ; $4bc8: $a0
	ld d, b                                          ; $4bc9: $50
	db $fc                                           ; $4bca: $fc
	inc [hl]                                         ; $4bcb: $34
	sbc b                                            ; $4bcc: $98
	pop bc                                           ; $4bcd: $c1
	ld b, b                                          ; $4bce: $40
	jr nz, jr_05d_4bf1                               ; $4bcf: $20 $20

	sub [hl]                                         ; $4bd1: $96
	stop                                             ; $4bd2: $10 $00
	add b                                            ; $4bd4: $80
	ldh [$60], a                                     ; $4bd5: $e0 $60
	call nc, $d87c                                   ; $4bd7: $d4 $7c $d8
	ld a, h                                          ; $4bda: $7c
	ld [hl], h                                       ; $4bdb: $74
	sub d                                            ; $4bdc: $92
	sbc c                                            ; $4bdd: $99
	adc h                                            ; $4bde: $8c
	inc a                                            ; $4bdf: $3c
	ld c, h                                          ; $4be0: $4c
	jr c, jr_05d_4bf2                                ; $4be1: $38 $0f

	rrca                                             ; $4be3: $0f
	db $db                                           ; $4be4: $db
	rra                                              ; $4be5: $1f
	ld l, h                                          ; $4be6: $6c
	ld l, c                                          ; $4be7: $69
	sbc c                                            ; $4be8: $99
	ld [bc], a                                       ; $4be9: $02
	inc b                                            ; $4bea: $04
	jp nc, $d4d4                                     ; $4beb: $d2 $d4 $d4

	and h                                            ; $4bee: $a4
	sbc $a8                                          ; $4bef: $de $a8

jr_05d_4bf1:
	sbc [hl]                                         ; $4bf1: $9e

jr_05d_4bf2:
	cp b                                             ; $4bf2: $b8
	reti                                             ; $4bf3: $d9


	rst $38                                          ; $4bf4: $ff
	sbc [hl]                                         ; $4bf5: $9e
	pop hl                                           ; $4bf6: $e1
	ld a, b                                          ; $4bf7: $78
	ld h, d                                          ; $4bf8: $62
	ld a, l                                          ; $4bf9: $7d
	ld a, e                                          ; $4bfa: $7b
	adc d                                            ; $4bfb: $8a
	dec d                                            ; $4bfc: $15
	ld a, [bc]                                       ; $4bfd: $0a
	db $10                                           ; $4bfe: $10

jr_05d_4bff:
	sub b                                            ; $4bff: $90
	db $10                                           ; $4c00: $10
	sub b                                            ; $4c01: $90
	nop                                              ; $4c02: $00
	rra                                              ; $4c03: $1f
	ld [$00f5], a                                    ; $4c04: $ea $f5 $00
	sbc a                                            ; $4c07: $9f
	ld e, a                                          ; $4c08: $5f
	rra                                              ; $4c09: $1f
	sbc a                                            ; $4c0a: $9f
	rra                                              ; $4c0b: $1f
	rra                                              ; $4c0c: $1f
	adc a                                            ; $4c0d: $8f
	rst $38                                          ; $4c0e: $ff
	ld h, b                                          ; $4c0f: $60
	jr nz, jr_05d_4c8a                               ; $4c10: $20 $78

	ld b, a                                          ; $4c12: $47
	sub e                                            ; $4c13: $93
	ldh [rSVBK], a                                   ; $4c14: $e0 $70
	nop                                              ; $4c16: $00
	db $e4                                           ; $4c17: $e4
	add sp, -$18                                     ; $4c18: $e8 $e8
	rst AddAOntoHL                                          ; $4c1a: $ef
	ldh [$ef], a                                     ; $4c1b: $e0 $ef
	rst GetHLinHL                                          ; $4c1d: $cf
	db $fc                                           ; $4c1e: $fc
	jr jr_05d_4bff                                   ; $4c1f: $18 $de

	db $10                                           ; $4c21: $10
	sbc e                                            ; $4c22: $9b
	rra                                              ; $4c23: $1f
	db $10                                           ; $4c24: $10
	jr nc, @-$09                                     ; $4c25: $30 $f5

	db $db                                           ; $4c27: $db
	rst $38                                          ; $4c28: $ff
	sbc [hl]                                         ; $4c29: $9e
	ld a, a                                          ; $4c2a: $7f

jr_05d_4c2b:
	ei                                               ; $4c2b: $fb
	sub [hl]                                         ; $4c2c: $96
	add c                                            ; $4c2d: $81
	add e                                            ; $4c2e: $83
	ld d, l                                          ; $4c2f: $55
	ld a, [$ffd5]                                    ; $4c30: $fa $d5 $ff
	push bc                                          ; $4c33: $c5
	rrca                                             ; $4c34: $0f
	ld a, l                                          ; $4c35: $7d
	ld [hl], d                                       ; $4c36: $72
	or b                                             ; $4c37: $b0
	sbc c                                            ; $4c38: $99
	jr c, jr_05d_4c2b                                ; $4c39: $38 $f0

	ldh [$e0], a                                     ; $4c3b: $e0 $e0
	ld d, b                                          ; $4c3d: $50
	add b                                            ; $4c3e: $80
	ld a, e                                          ; $4c3f: $7b
	cp $9d                                           ; $4c40: $fe $9d
	ldh a, [$50]                                     ; $4c42: $f0 $50
	ld a, e                                          ; $4c44: $7b
	ld h, [hl]                                       ; $4c45: $66
	ei                                               ; $4c46: $fb
	rst SubAFromDE                                          ; $4c47: $df
	ld bc, $fa73                                     ; $4c48: $01 $73 $fa
	sbc [hl]                                         ; $4c4b: $9e
	ld b, $6b                                        ; $4c4c: $06 $6b
	ld hl, sp-$70                                    ; $4c4e: $f8 $90
	rlca                                             ; $4c50: $07
	ld a, a                                          ; $4c51: $7f
	ccf                                              ; $4c52: $3f
	ld l, $18                                        ; $4c53: $2e $18
	jr nz, jr_05d_4c97                               ; $4c55: $20 $40

	nop                                              ; $4c57: $00
	ld bc, $3f7f                                     ; $4c58: $01 $7f $3f
	cpl                                              ; $4c5b: $2f
	rra                                              ; $4c5c: $1f
	ccf                                              ; $4c5d: $3f
	ld a, a                                          ; $4c5e: $7f
	ld a, b                                          ; $4c5f: $78
	ld c, a                                          ; $4c60: $4f
	ld a, a                                          ; $4c61: $7f
	or l                                             ; $4c62: $b5
	sbc $7f                                          ; $4c63: $de $7f
	rst SubAFromDE                                          ; $4c65: $df
	ld c, a                                          ; $4c66: $4f
	adc h                                            ; $4c67: $8c
	and a                                            ; $4c68: $a7
	rst SubAFromHL                                          ; $4c69: $d7
	push de                                          ; $4c6a: $d5
	call nc, $eaf4                                   ; $4c6b: $d4 $f4 $ea
	jp z, $c6c5                                      ; $4c6e: $ca $c5 $c6

	ldh [$f9], a                                     ; $4c71: $e0 $f9
	cp $95                                           ; $4c73: $fe $95
	sbc d                                            ; $4c75: $9a
	dec e                                            ; $4c76: $1d
	rra                                              ; $4c77: $1f
	add b                                            ; $4c78: $80
	ret nz                                           ; $4c79: $c0

	pop af                                           ; $4c7a: $f1
	sbc $1f                                          ; $4c7b: $de $1f
	rst SubAFromDE                                          ; $4c7d: $df
	rla                                              ; $4c7e: $17
	adc h                                            ; $4c7f: $8c
	ld a, [hl-]                                      ; $4c80: $3a
	ldh a, [c]                                       ; $4c81: $f2
	jp nc, stodo_PreservedHLrelatedToScriptStack+1                                     ; $4c82: $d2 $95 $bd

	sub [hl]                                         ; $4c85: $96
	or h                                             ; $4c86: $b4
	xor [hl]                                         ; $4c87: $ae
	rra                                              ; $4c88: $1f
	ld a, a                                          ; $4c89: $7f

jr_05d_4c8a:
	rst $38                                          ; $4c8a: $ff
	rst $38                                          ; $4c8b: $ff
	rst SubAFromHL                                          ; $4c8c: $d7
	sub $d4                                          ; $4c8d: $d6 $d4
	or $54                                           ; $4c8f: $f6 $54
	xor b                                            ; $4c91: $a8
	xor b                                            ; $4c92: $a8
	ld a, b                                          ; $4c93: $78
	ld e, b                                          ; $4c94: $58
	ld a, l                                          ; $4c95: $7d
	inc h                                            ; $4c96: $24

jr_05d_4c97:
	sub h                                            ; $4c97: $94
	db $fc                                           ; $4c98: $fc
	add sp, -$18                                     ; $4c99: $e8 $e8
	ret nz                                           ; $4c9b: $c0

	ret nz                                           ; $4c9c: $c0

	add b                                            ; $4c9d: $80
	ld bc, $1f02                                     ; $4c9e: $01 $02 $1f
	cp a                                             ; $4ca1: $bf
	ld e, a                                          ; $4ca2: $5f
	ld a, e                                          ; $4ca3: $7b
	cp $7e                                           ; $4ca4: $fe $7e
	rla                                              ; $4ca6: $17

jr_05d_4ca7:
	ei                                               ; $4ca7: $fb
	sub d                                            ; $4ca8: $92
	ret nz                                           ; $4ca9: $c0

	jr nz, @-$6e                                     ; $4caa: $20 $90

	xor a                                            ; $4cac: $af
	sbc a                                            ; $4cad: $9f
	ret nz                                           ; $4cae: $c0

	add b                                            ; $4caf: $80
	add b                                            ; $4cb0: $80
	nop                                              ; $4cb1: $00
	ld b, b                                          ; $4cb2: $40
	ld l, a                                          ; $4cb3: $6f
	ld d, b                                          ; $4cb4: $50
	ld h, b                                          ; $4cb5: $60
	db $fd                                           ; $4cb6: $fd
	sbc d                                            ; $4cb7: $9a
	ld a, b                                          ; $4cb8: $78
	ld bc, $c0c3                                     ; $4cb9: $01 $c3 $c0
	ld h, b                                          ; $4cbc: $60
	ld [hl], a                                       ; $4cbd: $77
	ld h, e                                          ; $4cbe: $63
	ld a, d                                          ; $4cbf: $7a
	cp a                                             ; $4cc0: $bf
	ld [hl], d                                       ; $4cc1: $72
	db $fc                                           ; $4cc2: $fc
	sub [hl]                                         ; $4cc3: $96
	add b                                            ; $4cc4: $80
	or l                                             ; $4cc5: $b5
	ld a, [hl+]                                      ; $4cc6: $2a
	ld h, b                                          ; $4cc7: $60
	ret nz                                           ; $4cc8: $c0

	ld bc, $0202                                     ; $4cc9: $01 $02 $02
	ld a, $7b                                        ; $4ccc: $3e $7b
	push af                                          ; $4cce: $f5
	ld a, a                                          ; $4ccf: $7f
	ld a, d                                          ; $4cd0: $7a
	rst SubAFromDE                                          ; $4cd1: $df
	ld [bc], a                                       ; $4cd2: $02
	sub e                                            ; $4cd3: $93
	xor b                                            ; $4cd4: $a8
	ld e, h                                          ; $4cd5: $5c
	cp a                                             ; $4cd6: $bf
	ld h, a                                          ; $4cd7: $67
	add e                                            ; $4cd8: $83
	rrca                                             ; $4cd9: $0f
	inc bc                                           ; $4cda: $03
	rst JumpTable                                          ; $4cdb: $c7
	ld [$1e0c], sp                                   ; $4cdc: $08 $0c $1e
	ld h, c                                          ; $4cdf: $61
	ld [hl], a                                       ; $4ce0: $77
	rst AddAOntoHL                                          ; $4ce1: $ef
	sub [hl]                                         ; $4ce2: $96
	jr c, jr_05d_4ce5                                ; $4ce3: $38 $00

jr_05d_4ce5:
	jr jr_05d_4ca7                                   ; $4ce5: $18 $c0

	di                                               ; $4ce7: $f3
	rst $38                                          ; $4ce8: $ff
	adc [hl]                                         ; $4ce9: $8e
	nop                                              ; $4cea: $00
	db $10                                           ; $4ceb: $10
	ld a, e                                          ; $4cec: $7b
	ldh [$80], a                                     ; $4ced: $e0 $80
	ld h, e                                          ; $4cef: $63
	call c, $0000                                   ; $4cf0: $dc $00 $00
	ld a, $3e                                        ; $4cf3: $3e $3e
	ld a, [hl]                                       ; $4cf5: $7e
	db $fd                                           ; $4cf6: $fd
	ld hl, sp-$64                                    ; $4cf7: $f8 $9c
	ld c, $07                                        ; $4cf9: $0e $07
	inc c                                            ; $4cfb: $0c
	jr jr_05d_4d36                                   ; $4cfc: $18 $38

	pop af                                           ; $4cfe: $f1
	ldh [rAUD2LOW], a                                ; $4cff: $e0 $18
	inc b                                            ; $4d01: $04
	inc bc                                           ; $4d02: $03
	rst $38                                          ; $4d03: $ff
	rst SubAFromDE                                          ; $4d04: $df
	add a                                            ; $4d05: $87
	dec c                                            ; $4d06: $0d
	dec de                                           ; $4d07: $1b
	daa                                              ; $4d08: $27
	ld e, a                                          ; $4d09: $5f
	cp a                                             ; $4d0a: $bf
	rst FarCall                                          ; $4d0b: $f7
	ret c                                            ; $4d0c: $d8

	add [hl]                                         ; $4d0d: $86
	sbc d                                            ; $4d0e: $9a
	ld c, $1c                                        ; $4d0f: $0e $1c
	jr c, @+$62                                      ; $4d11: $38 $60

	ret nz                                           ; $4d13: $c0

	ld a, d                                          ; $4d14: $7a
	sub b                                            ; $4d15: $90
	ld a, h                                          ; $4d16: $7c
	ret c                                            ; $4d17: $d8

	ld [hl], c                                       ; $4d18: $71
	di                                               ; $4d19: $f3
	sbc h                                            ; $4d1a: $9c
	ld a, a                                          ; $4d1b: $7f
	rra                                              ; $4d1c: $1f
	rrca                                             ; $4d1d: $0f
	ld a, d                                          ; $4d1e: $7a
	ld l, l                                          ; $4d1f: $6d
	ld a, [$c09e]                                    ; $4d20: $fa $9e $c0
	reti                                             ; $4d23: $d9


	rst $38                                          ; $4d24: $ff
	db $dd                                           ; $4d25: $dd
	rrca                                             ; $4d26: $0f
	sbc e                                            ; $4d27: $9b
	dec c                                            ; $4d28: $0d
	rrca                                             ; $4d29: $0f
	dec d                                            ; $4d2a: $15
	cpl                                              ; $4d2b: $2f
	db $dd                                           ; $4d2c: $dd
	ldh a, [hDisp0_OBP1]                                     ; $4d2d: $f0 $87
	ldh a, [c]                                       ; $4d2f: $f2
	ldh a, [$ea]                                     ; $4d30: $f0 $ea
	ret nc                                           ; $4d32: $d0

	cp a                                             ; $4d33: $bf
	rst $38                                          ; $4d34: $ff
	rst SubAFromDE                                          ; $4d35: $df

jr_05d_4d36:
	rst $38                                          ; $4d36: $ff
	rst AddAOntoHL                                          ; $4d37: $ef
	rst AddAOntoHL                                          ; $4d38: $ef
	rst FarCall                                          ; $4d39: $f7
	rst FarCall                                          ; $4d3a: $f7
	jp $e7c7                                         ; $4d3b: $c3 $c7 $e7


	rst SubAFromBC                                          ; $4d3e: $e7
	rst FarCall                                          ; $4d3f: $f7
	or $fe                                           ; $4d40: $f6 $fe
	ld a, l                                          ; $4d42: $7d
	cp $fa                                           ; $4d43: $fe $fa
	push af                                          ; $4d45: $f5
	ld a, [$7574]                                    ; $4d46: $fa $74 $75
	sbc h                                            ; $4d49: $9c
	pop bc                                           ; $4d4a: $c1
	add a                                            ; $4d4b: $87
	sbc a                                            ; $4d4c: $9f
	ld a, d                                          ; $4d4d: $7a
	pop af                                           ; $4d4e: $f1
	sbc b                                            ; $4d4f: $98
	ld sp, hl                                        ; $4d50: $f9
	pop bc                                           ; $4d51: $c1
	nop                                              ; $4d52: $00
	nop                                              ; $4d53: $00
	inc bc                                           ; $4d54: $03
	rlca                                             ; $4d55: $07
	rrca                                             ; $4d56: $0f
	ld a, d                                          ; $4d57: $7a
	and $7b                                          ; $4d58: $e6 $7b
	xor l                                            ; $4d5a: $ad
	sbc l                                            ; $4d5b: $9d
	db $fc                                           ; $4d5c: $fc
	rst $38                                          ; $4d5d: $ff
	ld a, d                                          ; $4d5e: $7a
	or b                                             ; $4d5f: $b0
	sub l                                            ; $4d60: $95
	ld e, $ff                                        ; $4d61: $1e $ff
	adc a                                            ; $4d63: $8f
	db $e3                                           ; $4d64: $e3
	ld sp, hl                                        ; $4d65: $f9
	db $fc                                           ; $4d66: $fc
	xor $f7                                          ; $4d67: $ee $f7
	add hl, de                                       ; $4d69: $19
	ldh [$7b], a                                     ; $4d6a: $e0 $7b
	ld l, a                                          ; $4d6c: $6f
	sub c                                            ; $4d6d: $91
	ld [hl], b                                       ; $4d6e: $70
	jr jr_05d_4d7d                                   ; $4d6f: $18 $0c

	ld bc, $e081                                     ; $4d71: $01 $81 $e0
	ld hl, sp-$04                                    ; $4d74: $f8 $fc
	rst $38                                          ; $4d76: $ff
	ld a, a                                          ; $4d77: $7f
	ccf                                              ; $4d78: $3f
	cp $7e                                           ; $4d79: $fe $7e
	rra                                              ; $4d7b: $1f
	ld a, c                                          ; $4d7c: $79

jr_05d_4d7d:
	and d                                            ; $4d7d: $a2
	rst $38                                          ; $4d7e: $ff
	sbc d                                            ; $4d7f: $9a
	and e                                            ; $4d80: $a3
	pop af                                           ; $4d81: $f1
	ld hl, sp-$04                                    ; $4d82: $f8 $fc
	ld a, [hl]                                       ; $4d84: $7e
	ld a, d                                          ; $4d85: $7a
	db $e4                                           ; $4d86: $e4
	adc h                                            ; $4d87: $8c
	ld h, e                                          ; $4d88: $63
	ld de, $0408                                     ; $4d89: $11 $08 $04
	add d                                            ; $4d8c: $82
	add c                                            ; $4d8d: $81
	nop                                              ; $4d8e: $00
	nop                                              ; $4d8f: $00
	dec d                                            ; $4d90: $15
	ld a, [de]                                       ; $4d91: $1a
	ld [bc], a                                       ; $4d92: $02
	ld bc, $ff01                                     ; $4d93: $01 $01 $ff
	rst $38                                          ; $4d96: $ff
	and b                                            ; $4d97: $a0
	rla                                              ; $4d98: $17
	dec de                                           ; $4d99: $1b
	inc bc                                           ; $4d9a: $03
	ld a, e                                          ; $4d9b: $7b
	ld hl, sp-$6f                                    ; $4d9c: $f8 $91
	ld b, b                                          ; $4d9e: $40
	ld h, b                                          ; $4d9f: $60
	ei                                               ; $4da0: $fb
	ld sp, hl                                        ; $4da1: $f9
	ld sp, hl                                        ; $4da2: $f9
	ld sp, $0020                                     ; $4da3: $31 $20 $00
	add b                                            ; $4da6: $80
	add b                                            ; $4da7: $80
	xor a                                            ; $4da8: $af
	rst AddAOntoHL                                          ; $4da9: $ef
	rst AddAOntoHL                                          ; $4daa: $ef
	rst $38                                          ; $4dab: $ff
	db $dd                                           ; $4dac: $dd
	db $fd                                           ; $4dad: $fd
	add b                                            ; $4dae: $80
	inc b                                            ; $4daf: $04
	adc c                                            ; $4db0: $89
	di                                               ; $4db1: $f3
	or [hl]                                          ; $4db2: $b6
	or l                                             ; $4db3: $b5
	sbc l                                            ; $4db4: $9d
	rst SubAFromDE                                          ; $4db5: $df
	rst GetHLinHL                                          ; $4db6: $cf
	inc b                                            ; $4db7: $04
	adc b                                            ; $4db8: $88
	pop af                                           ; $4db9: $f1
	ldh a, [c]                                       ; $4dba: $f2
	db $f4                                           ; $4dbb: $f4
	push af                                          ; $4dbc: $f5
	push af                                          ; $4dbd: $f5
	db $fd                                           ; $4dbe: $fd
	sbc a                                            ; $4dbf: $9f
	jp z, $f725                                      ; $4dc0: $ca $25 $f7

	db $d3                                           ; $4dc3: $d3
	or e                                             ; $4dc4: $b3
	jp hl                                            ; $4dc5: $e9


	ld sp, hl                                        ; $4dc6: $f9
	ld d, $89                                        ; $4dc7: $16 $89
	rlca                                             ; $4dc9: $07
	ld b, a                                          ; $4dca: $47
	sub e                                            ; $4dcb: $93
	inc hl                                           ; $4dcc: $23
	ld b, c                                          ; $4dcd: $41
	adc [hl]                                         ; $4dce: $8e
	ret                                              ; $4dcf: $c9


	ret nc                                           ; $4dd0: $d0

	ldh a, [$eb]                                     ; $4dd1: $f0 $eb
	db $ed                                           ; $4dd3: $ed
	rst FarCall                                          ; $4dd4: $f7
	ld e, a                                          ; $4dd5: $5f
	db $ed                                           ; $4dd6: $ed
	ld h, a                                          ; $4dd7: $67
	rst AddAOntoHL                                          ; $4dd8: $ef
	add a                                            ; $4dd9: $87
	ret nc                                           ; $4dda: $d0

	ldh a, [c]                                       ; $4ddb: $f2
	ld a, $bd                                        ; $4ddc: $3e $bd
	ld hl, sp-$03                                    ; $4dde: $f8 $fd
	ld a, c                                          ; $4de0: $79
	adc e                                            ; $4de1: $8b
	ld a, e                                          ; $4de2: $7b
	and d                                            ; $4de3: $a2
	sbc l                                            ; $4de4: $9d
	rst $38                                          ; $4de5: $ff
	rst JumpTable                                          ; $4de6: $c7
	ld [hl], a                                       ; $4de7: $77
	rra                                              ; $4de8: $1f
	ld [hl], a                                       ; $4de9: $77
	rst FarCall                                          ; $4dea: $f7
	sbc d                                            ; $4deb: $9a
	ld b, $0f                                        ; $4dec: $06 $0f
	rst $38                                          ; $4dee: $ff
	ei                                               ; $4def: $fb
	db $fc                                           ; $4df0: $fc
	ld a, e                                          ; $4df1: $7b
	ld h, e                                          ; $4df2: $63
	sbc l                                            ; $4df3: $9d
	cp $f9                                           ; $4df4: $fe $f9
	db $dd                                           ; $4df6: $dd
	ld hl, sp-$80                                    ; $4df7: $f8 $80
	db $fc                                           ; $4df9: $fc
	ei                                               ; $4dfa: $fb
	ld a, h                                          ; $4dfb: $7c
	adc c                                            ; $4dfc: $89
	ei                                               ; $4dfd: $fb
	adc e                                            ; $4dfe: $8b
	rst SubAFromBC                                          ; $4dff: $e7
	inc bc                                           ; $4e00: $03
	ei                                               ; $4e01: $fb
	ld [bc], a                                       ; $4e02: $02
	ld [hl], h                                       ; $4e03: $74
	adc c                                            ; $4e04: $89
	ld a, e                                          ; $4e05: $7b
	ld a, e                                          ; $4e06: $7b
	rra                                              ; $4e07: $1f
	ld b, $07                                        ; $4e08: $06 $07
	rst $38                                          ; $4e0a: $ff
	ldh a, [$f8]                                     ; $4e0b: $f0 $f8
	db $fc                                           ; $4e0d: $fc
	cp $fb                                           ; $4e0e: $fe $fb
	cp c                                             ; $4e10: $b9
	jr c, @-$3f                                      ; $4e11: $38 $bf

	ldh [$b0], a                                     ; $4e13: $e0 $b0
	ld e, b                                          ; $4e15: $58
	ld d, h                                          ; $4e16: $54
	ld h, d                                          ; $4e17: $62
	sbc h                                            ; $4e18: $9c
	pop hl                                           ; $4e19: $e1
	ldh [$f0], a                                     ; $4e1a: $e0 $f0
	ld [hl], h                                       ; $4e1c: $74
	cp b                                             ; $4e1d: $b8
	ld a, [hl]                                       ; $4e1e: $7e
	db $dd                                           ; $4e1f: $dd
	sbc l                                            ; $4e20: $9d
	ld hl, sp-$10                                    ; $4e21: $f8 $f0
	ld [hl], d                                       ; $4e23: $72
	and $7f                                          ; $4e24: $e6 $7f
	rst FarCall                                          ; $4e26: $f7
	sbc e                                            ; $4e27: $9b
	ldh [$7f], a                                     ; $4e28: $e0 $7f
	adc a                                            ; $4e2a: $8f
	add a                                            ; $4e2b: $87
	sbc $47                                          ; $4e2c: $de $47
	sbc d                                            ; $4e2e: $9a
	ld b, [hl]                                       ; $4e2f: $46
	ld h, h                                          ; $4e30: $64
	add b                                            ; $4e31: $80
	ldh a, [$f8]                                     ; $4e32: $f0 $f8
	call c, $7f78                                    ; $4e34: $dc $78 $7f
	ld a, [de]                                       ; $4e37: $1a
	sbc d                                            ; $4e38: $9a
	ldh a, [$e3]                                     ; $4e39: $f0 $e3
	adc a                                            ; $4e3b: $8f
	ld a, $79                                        ; $4e3c: $3e $79
	ld [hl], c                                       ; $4e3e: $71
	ret nc                                           ; $4e3f: $d0

	ld a, l                                          ; $4e40: $7d
	ldh [c], a                                       ; $4e41: $e2
	sbc c                                            ; $4e42: $99
	ld c, $1f                                        ; $4e43: $0e $1f
	or b                                             ; $4e45: $b0
	ld [$fdfc], sp                                   ; $4e46: $08 $fc $fd
	halt                                             ; $4e49: $76
	or c                                             ; $4e4a: $b1
	sbc d                                            ; $4e4b: $9a
	ccf                                              ; $4e4c: $3f
	ld c, $04                                        ; $4e4d: $0e $04
	ld a, a                                          ; $4e4f: $7f
	adc [hl]                                         ; $4e50: $8e
	ld [hl], h                                       ; $4e51: $74
	cp a                                             ; $4e52: $bf
	sbc b                                            ; $4e53: $98
	add b                                            ; $4e54: $80
	ld b, b                                          ; $4e55: $40
	jr nz, jr_05d_4eb0                               ; $4e56: $20 $58

	jr nc, jr_05d_4e91                               ; $4e58: $30 $37

	db $fd                                           ; $4e5a: $fd
	ld a, b                                          ; $4e5b: $78
	sub [hl]                                         ; $4e5c: $96
	ld a, h                                          ; $4e5d: $7c
	inc sp                                           ; $4e5e: $33
	sbc e                                            ; $4e5f: $9b
	inc sp                                           ; $4e60: $33
	or a                                             ; $4e61: $b7
	rst $38                                          ; $4e62: $ff
	rst FarCall                                          ; $4e63: $f7
	sbc $ff                                          ; $4e64: $de $ff
	ld a, h                                          ; $4e66: $7c
	call nz, $fbdf                                   ; $4e67: $c4 $df $fb
	ld a, [hl]                                       ; $4e6a: $7e
	cp $9b                                           ; $4e6b: $fe $9b
	cp a                                             ; $4e6d: $bf
	cp [hl]                                          ; $4e6e: $be
	rst SubAFromDE                                          ; $4e6f: $df
	rst SubAFromDE                                          ; $4e70: $df
	ld a, d                                          ; $4e71: $7a
	db $db                                           ; $4e72: $db
	ld a, a                                          ; $4e73: $7f
	sub b                                            ; $4e74: $90
	sbc [hl]                                         ; $4e75: $9e
	ld a, [$707b]                                    ; $4e76: $fa $7b $70
	sbc e                                            ; $4e79: $9b
	ld hl, sp-$7d                                    ; $4e7a: $f8 $83
	add a                                            ; $4e7c: $87
	ld [hl], e                                       ; $4e7d: $73
	ld a, e                                          ; $4e7e: $7b
	call c, $ff8d                                    ; $4e7f: $dc $8d $ff
	add a                                            ; $4e82: $87
	rst SubAFromDE                                          ; $4e83: $df
	rst $38                                          ; $4e84: $ff
	ei                                               ; $4e85: $fb
	cp e                                             ; $4e86: $bb
	ei                                               ; $4e87: $fb
	di                                               ; $4e88: $f3
	rst FarCall                                          ; $4e89: $f7
	rst SubAFromBC                                          ; $4e8a: $e7
	ldh [$c0], a                                     ; $4e8b: $e0 $c0
	call nz, $84c4                                   ; $4e8d: $c4 $c4 $84
	adc h                                            ; $4e90: $8c

jr_05d_4e91:
	adc h                                            ; $4e91: $8c
	sbc h                                            ; $4e92: $9c
	sbc $ff                                          ; $4e93: $de $ff
	sbc $fe                                          ; $4e95: $de $fe
	ld a, e                                          ; $4e97: $7b
	ld c, b                                          ; $4e98: $48
	ld a, d                                          ; $4e99: $7a
	pop af                                           ; $4e9a: $f1
	ld [hl], l                                       ; $4e9b: $75
	ld a, h                                          ; $4e9c: $7c
	sub a                                            ; $4e9d: $97
	sbc a                                            ; $4e9e: $9f
	rst GetHLinHL                                          ; $4e9f: $cf
	rst SubAFromBC                                          ; $4ea0: $e7
	di                                               ; $4ea1: $f3
	cp c                                             ; $4ea2: $b9
	ld e, h                                          ; $4ea3: $5c
	ld c, [hl]                                       ; $4ea4: $4e
	daa                                              ; $4ea5: $27
	ld a, e                                          ; $4ea6: $7b
	ld [hl], e                                       ; $4ea7: $73
	sbc [hl]                                         ; $4ea8: $9e
	ret nz                                           ; $4ea9: $c0

	ld a, d                                          ; $4eaa: $7a
	ld b, [hl]                                       ; $4eab: $46
	ld a, [hl]                                       ; $4eac: $7e
	or l                                             ; $4ead: $b5
	ld [hl], a                                       ; $4eae: $77
	rst SubAFromDE                                          ; $4eaf: $df

jr_05d_4eb0:
	sbc l                                            ; $4eb0: $9d
	ldh a, [rBGP]                                    ; $4eb1: $f0 $47
	ld l, h                                          ; $4eb3: $6c
	ldh [$7b], a                                     ; $4eb4: $e0 $7b
	ld a, l                                          ; $4eb6: $7d
	add l                                            ; $4eb7: $85
	ret nc                                           ; $4eb8: $d0

	adc a                                            ; $4eb9: $8f
	add a                                            ; $4eba: $87
	jp $c13f                                         ; $4ebb: $c3 $3f $c1


	rst $38                                          ; $4ebe: $ff
	db $fc                                           ; $4ebf: $fc
	jr nc, jr_05d_4f3a                               ; $4ec0: $30 $78

	ld a, h                                          ; $4ec2: $7c
	ld a, $03                                        ; $4ec3: $3e $03
	ccf                                              ; $4ec5: $3f
	ccf                                              ; $4ec6: $3f
	db $e4                                           ; $4ec7: $e4
	adc [hl]                                         ; $4ec8: $8e
	sbc [hl]                                         ; $4ec9: $9e
	cp [hl]                                          ; $4eca: $be
	add e                                            ; $4ecb: $83
	cp h                                             ; $4ecc: $bc
	rst $38                                          ; $4ecd: $ff
	di                                               ; $4ece: $f3
	ld h, h                                          ; $4ecf: $64
	ldh a, [$e0]                                     ; $4ed0: $f0 $e0
	ld a, c                                          ; $4ed2: $79
	sub c                                            ; $4ed3: $91
	sub c                                            ; $4ed4: $91
	cp h                                             ; $4ed5: $bc
	di                                               ; $4ed6: $f3
	ld h, a                                          ; $4ed7: $67
	rst GetHLinHL                                          ; $4ed8: $cf
	push bc                                          ; $4ed9: $c5
	push bc                                          ; $4eda: $c5
	ld h, l                                          ; $4edb: $65
	ld h, l                                          ; $4edc: $65
	push hl                                          ; $4edd: $e5
	push hl                                          ; $4ede: $e5
	cp l                                             ; $4edf: $bd
	ld a, a                                          ; $4ee0: $7f
	ld a, l                                          ; $4ee1: $7d
	ld a, l                                          ; $4ee2: $7d
	sbc $3d                                          ; $4ee3: $de $3d
	sub h                                            ; $4ee5: $94
	db $fd                                           ; $4ee6: $fd
	ld a, l                                          ; $4ee7: $7d
	ld hl, sp-$08                                    ; $4ee8: $f8 $f8
	db $fd                                           ; $4eea: $fd
	rst $38                                          ; $4eeb: $ff
	adc $40                                          ; $4eec: $ce $40
	ld b, b                                          ; $4eee: $40
	ld hl, $79b0                                     ; $4eef: $21 $b0 $79
	ld c, a                                          ; $4ef2: $4f
	ld a, [hl]                                       ; $4ef3: $7e
	dec h                                            ; $4ef4: $25
	adc l                                            ; $4ef5: $8d
	ldh [rIE], a                                     ; $4ef6: $e0 $ff
	cp a                                             ; $4ef8: $bf
	reti                                             ; $4ef9: $d9


	rst $38                                          ; $4efa: $ff
	cp a                                             ; $4efb: $bf
	or b                                             ; $4efc: $b0
	ld a, b                                          ; $4efd: $78
	ld hl, sp-$08                                    ; $4efe: $f8 $f8
	rst $38                                          ; $4f00: $ff
	rst $38                                          ; $4f01: $ff
	cp a                                             ; $4f02: $bf
	ccf                                              ; $4f03: $3f
	jr nc, jr_05d_4f35                               ; $4f04: $30 $2f

	ld c, a                                          ; $4f06: $4f
	adc a                                            ; $4f07: $8f
	ld [hl], l                                       ; $4f08: $75
	rst FarCall                                          ; $4f09: $f7
	ld [hl], h                                       ; $4f0a: $74
	ld c, b                                          ; $4f0b: $48
	rst SubAFromDE                                          ; $4f0c: $df
	ret nz                                           ; $4f0d: $c0

	ld a, e                                          ; $4f0e: $7b
	ld hl, sp+$7f                                    ; $4f0f: $f8 $7f
	rst FarCall                                          ; $4f11: $f7
	sbc l                                            ; $4f12: $9d
	rst $38                                          ; $4f13: $ff
	rra                                              ; $4f14: $1f
	sbc $ff                                          ; $4f15: $de $ff
	ld a, [hl]                                       ; $4f17: $7e
	ld hl, $3fdf                                     ; $4f18: $21 $df $3f
	ld a, h                                          ; $4f1b: $7c
	call nc, $f0df                                   ; $4f1c: $d4 $df $f0
	sbc [hl]                                         ; $4f1f: $9e
	db $10                                           ; $4f20: $10
	sbc $e0                                          ; $4f21: $de $e0
	sbc [hl]                                         ; $4f23: $9e
	db $fc                                           ; $4f24: $fc
	ld a, e                                          ; $4f25: $7b
	ld e, b                                          ; $4f26: $58
	adc l                                            ; $4f27: $8d
	call $9d8e                                       ; $4f28: $cd $8e $9d
	sbc e                                            ; $4f2b: $9b
	rst $38                                          ; $4f2c: $ff
	ccf                                              ; $4f2d: $3f
	dec sp                                           ; $4f2e: $3b
	dec sp                                           ; $4f2f: $3b
	inc sp                                           ; $4f30: $33
	ld [hl], d                                       ; $4f31: $72
	ld h, l                                          ; $4f32: $65
	ld l, d                                          ; $4f33: $6a
	ld e, a                                          ; $4f34: $5f

jr_05d_4f35:
	ld d, a                                          ; $4f35: $57
	ld d, e                                          ; $4f36: $53
	ccf                                              ; $4f37: $3f
	cp l                                             ; $4f38: $bd
	db $fd                                           ; $4f39: $fd

jr_05d_4f3a:
	ld a, e                                          ; $4f3a: $7b
	add hl, de                                       ; $4f3b: $19
	add b                                            ; $4f3c: $80
	ld sp, hl                                        ; $4f3d: $f9
	ldh a, [c]                                       ; $4f3e: $f2
	db $f4                                           ; $4f3f: $f4
	db $f4                                           ; $4f40: $f4
	xor c                                            ; $4f41: $a9
	add hl, sp                                       ; $4f42: $39
	dec a                                            ; $4f43: $3d
	ldh [rIE], a                                     ; $4f44: $e0 $ff
	sbc $e1                                          ; $4f46: $de $e1
	cp $be                                           ; $4f48: $fe $be
	rst SubAFromDE                                          ; $4f4a: $df
	ldh [$a0], a                                     ; $4f4b: $e0 $a0
	ld e, a                                          ; $4f4d: $5f
	ld b, c                                          ; $4f4e: $41
	ld b, b                                          ; $4f4f: $40
	pop bc                                           ; $4f50: $c1
	ld h, c                                          ; $4f51: $61
	ccf                                              ; $4f52: $3f
	rra                                              ; $4f53: $1f
	ld e, c                                          ; $4f54: $59
	or e                                             ; $4f55: $b3
	halt                                             ; $4f56: $76
	db $dd                                           ; $4f57: $dd
	ld a, [de]                                       ; $4f58: $1a
	ld a, [hl-]                                      ; $4f59: $3a
	xor $8c                                          ; $4f5a: $ee $8c
	sbc e                                            ; $4f5c: $9b
	ld [hl], b                                       ; $4f5d: $70
	ret nc                                           ; $4f5e: $d0

	sub c                                            ; $4f5f: $91
	inc sp                                           ; $4f60: $33
	halt                                             ; $4f61: $76
	db $f4                                           ; $4f62: $f4
	adc a                                            ; $4f63: $8f
	push af                                          ; $4f64: $f5
	ld l, c                                          ; $4f65: $69
	and e                                            ; $4f66: $a3
	ld b, e                                          ; $4f67: $43
	and a                                            ; $4f68: $a7
	ld b, a                                          ; $4f69: $47
	adc a                                            ; $4f6a: $8f
	sbc a                                            ; $4f6b: $9f
	ld a, [hl-]                                      ; $4f6c: $3a
	or $dc                                           ; $4f6d: $f6 $dc
	cp h                                             ; $4f6f: $bc
	ld a, b                                          ; $4f70: $78
	ld hl, sp-$10                                    ; $4f71: $f8 $f0
	ldh [$dd], a                                     ; $4f73: $e0 $dd
	rst $38                                          ; $4f75: $ff
	sbc e                                            ; $4f76: $9b
	db $fd                                           ; $4f77: $fd
	pop af                                           ; $4f78: $f1
	ldh [$e0], a                                     ; $4f79: $e0 $e0
	ld [hl], a                                       ; $4f7b: $77
	ld de, $039a                                     ; $4f7c: $11 $9a $03
	rrca                                             ; $4f7f: $0f
	rra                                              ; $4f80: $1f
	rra                                              ; $4f81: $1f
	rst SubAFromDE                                          ; $4f82: $df
	ld a, d                                          ; $4f83: $7a
	ld [$8c77], a                                    ; $4f84: $ea $77 $8c
	sbc [hl]                                         ; $4f87: $9e
	ret c                                            ; $4f88: $d8

	ld [hl], e                                       ; $4f89: $73
	ld a, b                                          ; $4f8a: $78
	reti                                             ; $4f8b: $d9


	rst $38                                          ; $4f8c: $ff
	sbc h                                            ; $4f8d: $9c
	db $fc                                           ; $4f8e: $fc
	di                                               ; $4f8f: $f3
	ld a, a                                          ; $4f90: $7f
	ld a, c                                          ; $4f91: $79
	sub d                                            ; $4f92: $92
	sbc e                                            ; $4f93: $9b
	ld e, $1f                                        ; $4f94: $1e $1f
	db $fc                                           ; $4f96: $fc
	or c                                             ; $4f97: $b1
	ld [hl], a                                       ; $4f98: $77
	ld d, [hl]                                       ; $4f99: $56
	add h                                            ; $4f9a: $84
	di                                               ; $4f9b: $f3
	sbc [hl]                                         ; $4f9c: $9e
	db $f4                                           ; $4f9d: $f4
	and d                                            ; $4f9e: $a2
	rlca                                             ; $4f9f: $07
	add a                                            ; $4fa0: $87
	pop bc                                           ; $4fa1: $c1
	ld l, $71                                        ; $4fa2: $2e $71
	adc a                                            ; $4fa4: $8f
	ld a, b                                          ; $4fa5: $78
	pop bc                                           ; $4fa6: $c1
	res 1, a                                         ; $4fa7: $cb $8f
	rst GetHLinHL                                          ; $4fa9: $cf
	ld c, a                                          ; $4faa: $4f
	rst SubAFromHL                                          ; $4fab: $d7
	ld e, a                                          ; $4fac: $5f
	ccf                                              ; $4fad: $3f
	rst $38                                          ; $4fae: $ff
	cp h                                             ; $4faf: $bc
	ld hl, sp-$08                                    ; $4fb0: $f8 $f8
	ld a, b                                          ; $4fb2: $78
	ld hl, sp+$70                                    ; $4fb3: $f8 $70
	jr nc, jr_05d_502a                               ; $4fb5: $30 $73

	or b                                             ; $4fb7: $b0
	ld a, e                                          ; $4fb8: $7b
	xor [hl]                                         ; $4fb9: $ae
	sbc [hl]                                         ; $4fba: $9e
	cp $fb                                           ; $4fbb: $fe $fb
	ld a, l                                          ; $4fbd: $7d
	and h                                            ; $4fbe: $a4
	add b                                            ; $4fbf: $80
	inc hl                                           ; $4fc0: $23
	sub c                                            ; $4fc1: $91
	sub b                                            ; $4fc2: $90
	ret nc                                           ; $4fc3: $d0

	ret z                                            ; $4fc4: $c8

	add sp, -$18                                     ; $4fc5: $e8 $e8
	ld [hl], h                                       ; $4fc7: $74
	cp $7f                                           ; $4fc8: $fe $7f
	ld a, a                                          ; $4fca: $7f
	ccf                                              ; $4fcb: $3f
	ccf                                              ; $4fcc: $3f
	rra                                              ; $4fcd: $1f
	rra                                              ; $4fce: $1f
	adc a                                            ; $4fcf: $8f
	cp a                                             ; $4fd0: $bf
	ld hl, sp-$1d                                    ; $4fd1: $f8 $e3
	ld b, [hl]                                       ; $4fd3: $46
	ld c, $7e                                        ; $4fd4: $0e $7e
	ld a, $1f                                        ; $4fd6: $3e $1f
	rlca                                             ; $4fd8: $07
	rra                                              ; $4fd9: $1f
	cp l                                             ; $4fda: $bd
	ld a, [$82f2]                                    ; $4fdb: $fa $f2 $82
	jp nz, $e380                                     ; $4fde: $c2 $80 $e3

	rst $38                                          ; $4fe1: $ff
	ldh [rP1], a                                     ; $4fe2: $e0 $00
	inc bc                                           ; $4fe4: $03
	add h                                            ; $4fe5: $84
	ld a, b                                          ; $4fe6: $78
	ld bc, $1f00                                     ; $4fe7: $01 $00 $1f
	ldh [rTAC], a                                    ; $4fea: $e0 $07
	ld a, a                                          ; $4fec: $7f
	db $fc                                           ; $4fed: $fc
	ld a, b                                          ; $4fee: $78
	ld bc, $b903                                     ; $4fef: $01 $03 $b9
	ld a, a                                          ; $4ff2: $7f
	and h                                            ; $4ff3: $a4
	daa                                              ; $4ff4: $27
	ld h, h                                          ; $4ff5: $64
	and h                                            ; $4ff6: $a4
	ld a, h                                          ; $4ff7: $7c
	or d                                             ; $4ff8: $b2
	rst $38                                          ; $4ff9: $ff
	rst $38                                          ; $4ffa: $ff
	and h                                            ; $4ffb: $a4
	cpl                                              ; $4ffc: $2f
	ld [hl], l                                       ; $4ffd: $75
	xor $80                                          ; $4ffe: $ee $80
	db $fd                                           ; $5000: $fd
	cp [hl]                                          ; $5001: $be
	db $fd                                           ; $5002: $fd
	dec e                                            ; $5003: $1d
	dec c                                            ; $5004: $0d
	dec c                                            ; $5005: $0d
	sub l                                            ; $5006: $95
	dec l                                            ; $5007: $2d

jr_05d_5008:
	dec l                                            ; $5008: $2d
	jr nz, jr_05d_5008                               ; $5009: $20 $fd

	dec d                                            ; $500b: $15
	dec c                                            ; $500c: $0d
	dec b                                            ; $500d: $05
	add l                                            ; $500e: $85
	add l                                            ; $500f: $85
	ld b, l                                          ; $5010: $45
	add b                                            ; $5011: $80
	sbc a                                            ; $5012: $9f
	call $069e                                       ; $5013: $cd $9e $06
	cp b                                             ; $5016: $b8
	ld a, [hl]                                       ; $5017: $7e
	ld [$7f06], sp                                   ; $5018: $08 $06 $7f
	inc sp                                           ; $501b: $33
	ld h, c                                          ; $501c: $61
	ld bc, $7d41                                     ; $501d: $01 $41 $7d
	db $eb                                           ; $5020: $eb
	sbc [hl]                                         ; $5021: $9e
	nop                                              ; $5022: $00
	db $db                                           ; $5023: $db
	ld hl, sp-$21                                    ; $5024: $f8 $df
	ldh a, [$97]                                     ; $5026: $f0 $97
	adc a                                            ; $5028: $8f
	rrca                                             ; $5029: $0f

jr_05d_502a:
	rrca                                             ; $502a: $0f
	ld [$0c0c], sp                                   ; $502b: $08 $0c $0c
	ld e, $1e                                        ; $502e: $1e $1e
	db $fd                                           ; $5030: $fd
	sbc e                                            ; $5031: $9b
	sub b                                            ; $5032: $90
	db $dd                                           ; $5033: $dd
	ld c, b                                          ; $5034: $48
	dec l                                            ; $5035: $2d
	sbc $ff                                          ; $5036: $de $ff
	call c, $dc07                                    ; $5038: $dc $07 $dc
	ccf                                              ; $503b: $3f
	sbc h                                            ; $503c: $9c
	ld a, a                                          ; $503d: $7f
	inc a                                            ; $503e: $3c
	ld a, e                                          ; $503f: $7b
	reti                                             ; $5040: $d9


	ldh [$9d], a                                     ; $5041: $e0 $9d
	or l                                             ; $5043: $b5
	db $eb                                           ; $5044: $eb
	sbc $ef                                          ; $5045: $de $ef
	sbc d                                            ; $5047: $9a
	inc d                                            ; $5048: $14
	rst FarCall                                          ; $5049: $f7
	rst FarCall                                          ; $504a: $f7
	ld d, [hl]                                       ; $504b: $56
	inc l                                            ; $504c: $2c
	sbc $28                                          ; $504d: $de $28
	sbc $14                                          ; $504f: $de $14

Jump_05d_5051:
	sbc [hl]                                         ; $5051: $9e
	rst $38                                          ; $5052: $ff
	db $dd                                           ; $5053: $dd
	rst SubAFromBC                                          ; $5054: $e7
	sbc e                                            ; $5055: $9b
	ld h, a                                          ; $5056: $67
	add a                                            ; $5057: $87
	rst SubAFromBC                                          ; $5058: $e7
	scf                                              ; $5059: $37
	sbc $36                                          ; $505a: $de $36
	rst SubAFromDE                                          ; $505c: $df
	inc [hl]                                         ; $505d: $34
	add l                                            ; $505e: $85
	inc c                                            ; $505f: $0c
	inc l                                            ; $5060: $2c
	and $c6                                          ; $5061: $e6 $c6
	adc $cc                                          ; $5063: $ce $cc
	call c, $fcdc                                    ; $5065: $dc $dc $fc
	db $fc                                           ; $5068: $fc
	add hl, de                                       ; $5069: $19
	add hl, sp                                       ; $506a: $39
	ld sp, $2333                                     ; $506b: $31 $33 $23
	inc hl                                           ; $506e: $23
	inc bc                                           ; $506f: $03
	inc bc                                           ; $5070: $03
	dec c                                            ; $5071: $0d
	dec c                                            ; $5072: $0d
	ld a, [bc]                                       ; $5073: $0a
	ld a, [de]                                       ; $5074: $1a
	ld e, $1d                                        ; $5075: $1e $1d
	sbc l                                            ; $5077: $9d
	adc b                                            ; $5078: $88
	call c, Call_05d_7cff                            ; $5079: $dc $ff $7c
	cp e                                             ; $507c: $bb
	halt                                             ; $507d: $76
	ld sp, hl                                        ; $507e: $f9
	ld a, l                                          ; $507f: $7d
	cp l                                             ; $5080: $bd
	sbc d                                            ; $5081: $9a
	pop hl                                           ; $5082: $e1
	add e                                            ; $5083: $83
	rrca                                             ; $5084: $0f
	ret nz                                           ; $5085: $c0

	add b                                            ; $5086: $80
	ld a, b                                          ; $5087: $78
	add a                                            ; $5088: $87
	sbc l                                            ; $5089: $9d
	ld e, $7c                                        ; $508a: $1e $7c
	halt                                             ; $508c: $76
	add hl, de                                       ; $508d: $19
	sbc d                                            ; $508e: $9a
	ret nz                                           ; $508f: $c0

	pop bc                                           ; $5090: $c1
	add c                                            ; $5091: $81

Jump_05d_5092:
	add e                                            ; $5092: $83
	add e                                            ; $5093: $83
	halt                                             ; $5094: $76
	ld e, h                                          ; $5095: $5c
	ld a, a                                          ; $5096: $7f
	db $e4                                           ; $5097: $e4
	rst SubAFromDE                                          ; $5098: $df
	ld a, a                                          ; $5099: $7f
	sbc h                                            ; $509a: $9c
	rst SubAFromBC                                          ; $509b: $e7
	pop hl                                           ; $509c: $e1
	ld hl, sp+$7b                                    ; $509d: $f8 $7b
	dec d                                            ; $509f: $15
	rst SubAFromDE                                          ; $50a0: $df
	ld a, a                                          ; $50a1: $7f
	sub e                                            ; $50a2: $93
	rst JumpTable                                          ; $50a3: $c7
	pop bc                                           ; $50a4: $c1
	ret nz                                           ; $50a5: $c0

	ldh a, [$fc]                                     ; $50a6: $f0 $fc

Call_05d_50a8:
	xor $d6                                          ; $50a8: $ee $d6
	ld [$979e], a                                    ; $50aa: $ea $9e $97
	sub e                                            ; $50ad: $93
	sbc e                                            ; $50ae: $9b
	db $dd                                           ; $50af: $dd
	adc a                                            ; $50b0: $8f
	sbc [hl]                                         ; $50b1: $9e
	rst FarCall                                          ; $50b2: $f7
	sbc $f2                                          ; $50b3: $de $f2
	sbc [hl]                                         ; $50b5: $9e
	ld a, [$f9de]                                    ; $50b6: $fa $de $f9
	sbc l                                            ; $50b9: $9d
	sbc e                                            ; $50ba: $9b
	ld l, h                                          ; $50bb: $6c
	ld a, b                                          ; $50bc: $78
	ld e, e                                          ; $50bd: $5b
	ld a, l                                          ; $50be: $7d
	or a                                             ; $50bf: $b7
	sbc l                                            ; $50c0: $9d
	ldh a, [rTAC]                                    ; $50c1: $f0 $07
	ld [hl], e                                       ; $50c3: $73
	rst GetHLinHL                                          ; $50c4: $cf
	rst SubAFromDE                                          ; $50c5: $df
	rra                                              ; $50c6: $1f
	ld a, e                                          ; $50c7: $7b
	db $fc                                           ; $50c8: $fc
	rst SubAFromDE                                          ; $50c9: $df
	rrca                                             ; $50ca: $0f
	sbc $07                                          ; $50cb: $de $07
	rst SubAFromDE                                          ; $50cd: $df
	ldh [$9a], a                                     ; $50ce: $e0 $9a
	pop af                                           ; $50d0: $f1
	ld sp, hl                                        ; $50d1: $f9
	ld a, [$fcfe]                                    ; $50d2: $fa $fe $fc
	ld [hl], h                                       ; $50d5: $74
	push de                                          ; $50d6: $d5
	call c, Call_05d_71ff                            ; $50d7: $dc $ff $71
	nop                                              ; $50da: $00
	cp $9c                                           ; $50db: $fe $9c
	inc [hl]                                         ; $50dd: $34
	ld a, [de]                                       ; $50de: $1a
	add c                                            ; $50df: $81
	ld [hl], l                                       ; $50e0: $75
	adc b                                            ; $50e1: $88
	sbc e                                            ; $50e2: $9b
	ld hl, sp-$31                                    ; $50e3: $f8 $cf
	rst SubAFromBC                                          ; $50e5: $e7
	ld a, a                                          ; $50e6: $7f
	ld a, e                                          ; $50e7: $7b
	sub $de                                          ; $50e8: $d6 $de
	rlca                                             ; $50ea: $07
	rst SubAFromDE                                          ; $50eb: $df
	ld [bc], a                                       ; $50ec: $02
	sub [hl]                                         ; $50ed: $96
	sbc c                                            ; $50ee: $99
	adc a                                            ; $50ef: $8f
	ld b, a                                          ; $50f0: $47
	ld b, e                                          ; $50f1: $43
	ld b, c                                          ; $50f2: $41
	ld sp, hl                                        ; $50f3: $f9
	cp $fe                                           ; $50f4: $fe $fe
	rst SubAFromBC                                          ; $50f6: $e7
	ld [hl], h                                       ; $50f7: $74
	call nz, $8efe                                   ; $50f8: $c4 $fe $8e
	add c                                            ; $50fb: $81
	ldh [c], a                                       ; $50fc: $e2
	db $fc                                           ; $50fd: $fc
	ldh [$e0], a                                     ; $50fe: $e0 $e0
	ld bc, $050a                                     ; $5100: $01 $0a $05
	adc e                                            ; $5103: $8b
	rst SubAFromBC                                          ; $5104: $e7
	ld a, $27                                        ; $5105: $3e $27
	ld [hl+], a                                      ; $5107: $22
	ld d, c                                          ; $5108: $51
	ld e, c                                          ; $5109: $59
	cp c                                             ; $510a: $b9
	add hl, sp                                       ; $510b: $39
	db $dd                                           ; $510c: $dd
	ld a, b                                          ; $510d: $78
	add l                                            ; $510e: $85
	ld [hl], a                                       ; $510f: $77
	db $db                                           ; $5110: $db
	ei                                               ; $5111: $fb
	xor c                                            ; $5112: $a9
	ld l, c                                          ; $5113: $69
	ret                                              ; $5114: $c9


	ld c, b                                          ; $5115: $48
	ret z                                            ; $5116: $c8

	xor a                                            ; $5117: $af
	ld l, l                                          ; $5118: $6d
	ld l, b                                          ; $5119: $68
	ld l, b                                          ; $511a: $68
	jr z, jr_05d_5147                                ; $511b: $28 $2a

	ld a, [hl+]                                      ; $511d: $2a
	inc [hl]                                         ; $511e: $34
	add b                                            ; $511f: $80
	ld h, l                                          ; $5120: $65
	ld b, l                                          ; $5121: $45
	ld b, l                                          ; $5122: $45
	ld hl, $2525                                     ; $5123: $21 $25 $25
	inc hl                                           ; $5126: $23
	ld a, [$dc92]                                    ; $5127: $fa $92 $dc
	ld [bc], a                                       ; $512a: $02
	sub [hl]                                         ; $512b: $96
	dec b                                            ; $512c: $05
	nop                                              ; $512d: $00
	nop                                              ; $512e: $00
	ldh a, [$d0]                                     ; $512f: $f0 $d0
	ld [hl], b                                       ; $5131: $70
	ldh a, [$b4]                                     ; $5132: $f0 $b4
	add sp, -$22                                     ; $5134: $e8 $de
	ldh a, [$7f]                                     ; $5136: $f0 $7f
	jp nz, $ff98                                     ; $5138: $c2 $98 $ff

	ret nz                                           ; $513b: $c0

	ret nz                                           ; $513c: $c0

	ccf                                              ; $513d: $3f
	ccf                                              ; $513e: $3f
	ld e, a                                          ; $513f: $5f
	ld e, a                                          ; $5140: $5f
	ld [hl], a                                       ; $5141: $77
	ccf                                              ; $5142: $3f
	sbc d                                            ; $5143: $9a
	ld a, [hl-]                                      ; $5144: $3a
	sbc l                                            ; $5145: $9d
	ld a, [de]                                       ; $5146: $1a

jr_05d_5147:
	ld c, a                                          ; $5147: $4f
	ld a, [$aa7b]                                    ; $5148: $fa $7b $aa
	rst SubAFromDE                                          ; $514b: $df
	rlca                                             ; $514c: $07
	rst SubAFromDE                                          ; $514d: $df
	add a                                            ; $514e: $87
	ld a, h                                          ; $514f: $7c
	ld h, d                                          ; $5150: $62
	rst SubAFromDE                                          ; $5151: $df
	rst $38                                          ; $5152: $ff
	sbc d                                            ; $5153: $9a
	cp b                                             ; $5154: $b8
	ld a, e                                          ; $5155: $7b
	cp d                                             ; $5156: $ba
	ld a, [$de3a]                                    ; $5157: $fa $3a $de
	ld a, [de]                                       ; $515a: $1a
	rst SubAFromDE                                          ; $515b: $df
	ldh [$de], a                                     ; $515c: $e0 $de
	pop hl                                           ; $515e: $e1
	sbc $f1                                          ; $515f: $de $f1
	sbc h                                            ; $5161: $9c
	rst FarCall                                          ; $5162: $f7
	nop                                              ; $5163: $00
	rst FarCall                                          ; $5164: $f7
	db $fc                                           ; $5165: $fc
	sub h                                            ; $5166: $94
	inc d                                            ; $5167: $14
	nop                                              ; $5168: $00
	inc d                                            ; $5169: $14
	ld a, [$7bfb]                                    ; $516a: $fa $fb $7b
	db $db                                           ; $516d: $db
	ei                                               ; $516e: $fb
	add a                                            ; $516f: $87
	ld h, a                                          ; $5170: $67
	and a                                            ; $5171: $a7
	call c, $7e2f                                    ; $5172: $dc $2f $7e
	add $92                                          ; $5175: $c6 $92
	ld l, h                                          ; $5177: $6c
	add sp, -$38                                     ; $5178: $e8 $c8
	ret z                                            ; $517a: $c8

	ld c, b                                          ; $517b: $48
	ret z                                            ; $517c: $c8

	ld hl, sp-$08                                    ; $517d: $f8 $f8
	ld sp, hl                                        ; $517f: $f9
	ld sp, hl                                        ; $5180: $f9
	di                                               ; $5181: $f3
	rst FarCall                                          ; $5182: $f7
	rst FarCall                                          ; $5183: $f7
	ld a, d                                          ; $5184: $7a
	add e                                            ; $5185: $83
	rst SubAFromDE                                          ; $5186: $df
	ld b, $91                                        ; $5187: $06 $91
	inc c                                            ; $5189: $0c
	ld [$0008], sp                                   ; $518a: $08 $08 $00
	adc b                                            ; $518d: $88
	adc b                                            ; $518e: $88
	inc c                                            ; $518f: $0c
	ld c, $09                                        ; $5190: $0e $09
	ld a, [bc]                                       ; $5192: $0a
	add hl, bc                                       ; $5193: $09
	add hl, bc                                       ; $5194: $09
	ld a, a                                          ; $5195: $7f
	ld a, a                                          ; $5196: $7f
	ld [hl], c                                       ; $5197: $71
	jp hl                                            ; $5198: $e9


	sub c                                            ; $5199: $91
	cp $1f                                           ; $519a: $fe $1f
	ld a, $7c                                        ; $519c: $3e $7c
	ld hl, sp+$70                                    ; $519e: $f8 $70
	add b                                            ; $51a0: $80
	ret nz                                           ; $51a1: $c0

	ld b, b                                          ; $51a2: $40
	ldh [$c1], a                                     ; $51a3: $e0 $c1
	add e                                            ; $51a5: $83
	rlca                                             ; $51a6: $07
	adc a                                            ; $51a7: $8f
	sbc $ff                                          ; $51a8: $de $ff
	ld [hl], a                                       ; $51aa: $77
	jp c, $1c9b                                      ; $51ab: $da $9b $1c

	rra                                              ; $51ae: $1f
	jr c, @+$7b                                      ; $51af: $38 $79

	rst SubAFromHL                                          ; $51b1: $d7
	rst $38                                          ; $51b2: $ff
	ld a, [hl]                                       ; $51b3: $7e
	cp $7b                                           ; $51b4: $fe $7b
	cp $9c                                           ; $51b6: $fe $9c
	db $fd                                           ; $51b8: $fd
	call nc, Call_05d_7bec                           ; $51b9: $d4 $ec $7b
	cp $9c                                           ; $51bc: $fe $9c
	add sp, -$28                                     ; $51be: $e8 $d8
	add sp, $5a                                      ; $51c0: $e8 $5a
	nop                                              ; $51c2: $00
	rst SubAFromDE                                          ; $51c3: $df
	ld [hl+], a                                      ; $51c4: $22
	sbc l                                            ; $51c5: $9d
	dec h                                            ; $51c6: $25
	ld d, d                                          ; $51c7: $52
	db $db                                           ; $51c8: $db
	ld [hl+], a                                      ; $51c9: $22
	sbc e                                            ; $51ca: $9b
	dec h                                            ; $51cb: $25
	ld [hl+], a                                      ; $51cc: $22
	ld d, l                                          ; $51cd: $55
	ld d, l                                          ; $51ce: $55
	ld a, e                                          ; $51cf: $7b
	push af                                          ; $51d0: $f5
	sbc [hl]                                         ; $51d1: $9e
	ld b, h                                          ; $51d2: $44
	ld h, a                                          ; $51d3: $67
	or $df                                           ; $51d4: $f6 $df
	ld b, h                                          ; $51d6: $44
	sbc e                                            ; $51d7: $9b
	ld b, d                                          ; $51d8: $42
	ld [hl+], a                                      ; $51d9: $22
	inc h                                            ; $51da: $24
	dec h                                            ; $51db: $25
	ld h, a                                          ; $51dc: $67
	or $7f                                           ; $51dd: $f6 $7f
	db $eb                                           ; $51df: $eb
	ld [hl], a                                       ; $51e0: $77
	or $9d                                           ; $51e1: $f6 $9d
	ld b, l                                          ; $51e3: $45
	ld d, l                                          ; $51e4: $55
	ld h, a                                          ; $51e5: $67
	or $7f                                           ; $51e6: $f6 $7f
	ei                                               ; $51e8: $fb
	sbc d                                            ; $51e9: $9a
	ld [hl-], a                                      ; $51ea: $32
	ld [hl+], a                                      ; $51eb: $22
	ld [hl+], a                                      ; $51ec: $22
	daa                                              ; $51ed: $27
	halt                                             ; $51ee: $76
	ld [hl], e                                       ; $51ef: $73
	or $92                                           ; $51f0: $f6 $92
	ld [hl], e                                       ; $51f2: $73
	ld [hl-], a                                      ; $51f3: $32
	ld [hl+], a                                      ; $51f4: $22
	scf                                              ; $51f5: $37
	ld [hl], a                                       ; $51f6: $77
	halt                                             ; $51f7: $76
	ld h, l                                          ; $51f8: $65
	ld b, d                                          ; $51f9: $42
	scf                                              ; $51fa: $37
	ld h, l                                          ; $51fb: $65
	ld [hl], a                                       ; $51fc: $77
	inc sp                                           ; $51fd: $33
	ld [hl+], a                                      ; $51fe: $22
	sbc $77                                          ; $51ff: $de $77
	sbc c                                            ; $5201: $99
	halt                                             ; $5202: $76
	ld [hl-], a                                      ; $5203: $32
	scf                                              ; $5204: $37
	ld [hl], a                                       ; $5205: $77
	ld [hl], a                                       ; $5206: $77
	ld [hl], d                                       ; $5207: $72
	ld a, e                                          ; $5208: $7b
	or $9b                                           ; $5209: $f6 $9b
	inc sp                                           ; $520b: $33
	scf                                              ; $520c: $37
	ld [hl-], a                                      ; $520d: $32
	scf                                              ; $520e: $37
	ld a, e                                          ; $520f: $7b
	and $98                                          ; $5210: $e6 $98
	ld b, h                                          ; $5212: $44
	scf                                              ; $5213: $37
	ld [hl], a                                       ; $5214: $77
	inc sp                                           ; $5215: $33
	ld [hl], a                                       ; $5216: $77
	ld [hl-], a                                      ; $5217: $32
	inc sp                                           ; $5218: $33
	ld a, e                                          ; $5219: $7b
	or $bd                                           ; $521a: $f6 $bd
	adc e                                            ; $521c: $8b
	db $dd                                           ; $521d: $dd
	rst $38                                          ; $521e: $ff
	sbc e                                            ; $521f: $9b
	rst GetHLinHL                                          ; $5220: $cf
	sbc a                                            ; $5221: $9f
	ccf                                              ; $5222: $3f
	ld a, a                                          ; $5223: $7f
	ld sp, hl                                        ; $5224: $f9
	sub a                                            ; $5225: $97
	rst $38                                          ; $5226: $ff
	cp $ff                                           ; $5227: $fe $ff
	ld a, [$eaff]                                    ; $5229: $fa $ff $ea
	rst $38                                          ; $522c: $ff
	xor d                                            ; $522d: $aa
	ld sp, hl                                        ; $522e: $f9
	sub a                                            ; $522f: $97
	push de                                          ; $5230: $d5
	and b                                            ; $5231: $a0
	push de                                          ; $5232: $d5
	and b                                            ; $5233: $a0
	ld d, l                                          ; $5234: $55
	and b                                            ; $5235: $a0
	ld d, h                                          ; $5236: $54
	add c                                            ; $5237: $81
	ld a, [$0196]                                    ; $5238: $fa $96 $01
	ld b, b                                          ; $523b: $40
	nop                                              ; $523c: $00
	ld bc, $0e07                                     ; $523d: $01 $07 $0e
	dec de                                           ; $5240: $1b
	ld a, a                                          ; $5241: $7f
	cp $7b                                           ; $5242: $fe $7b
	push af                                          ; $5244: $f5
	add b                                            ; $5245: $80
	ld b, $09                                        ; $5246: $06 $09
	rla                                              ; $5248: $17
	ld l, h                                          ; $5249: $6c
	sub c                                            ; $524a: $91
	dec c                                            ; $524b: $0d
	dec de                                           ; $524c: $1b
	or $f5                                           ; $524d: $f6 $f5
	dec de                                           ; $524f: $1b
	jp $0bf2                                         ; $5250: $c3 $f2 $0b


	dec bc                                           ; $5253: $0b
	ld d, $fd                                        ; $5254: $16 $fd
	rrca                                             ; $5256: $0f
	xor $fe                                          ; $5257: $ee $fe
	dec a                                            ; $5259: $3d
	cp $fc                                           ; $525a: $fe $fc
	ld bc, $f03e                                     ; $525c: $01 $3e $f0
	add d                                            ; $525f: $82
	ld h, a                                          ; $5260: $67
	jp nz, $8088                                     ; $5261: $c2 $88 $80

	cp $80                                           ; $5264: $fe $80
	pop bc                                           ; $5266: $c1
	nop                                              ; $5267: $00
	ld a, h                                          ; $5268: $7c
	add e                                            ; $5269: $83
	ld bc, $177c                                     ; $526a: $01 $7c $17
	adc e                                            ; $526d: $8b
	dec h                                            ; $526e: $25
	jp nz, Jump_05d_4a15                             ; $526f: $c2 $15 $4a

	push de                                          ; $5272: $d5
	xor e                                            ; $5273: $ab
	ld [$c204], sp                                   ; $5274: $08 $04 $c2
	ld sp, $8408                                     ; $5277: $31 $08 $84
	ldh [c], a                                       ; $527a: $e2
	ld [hl], c                                       ; $527b: $71
	ld [hl], a                                       ; $527c: $77
	cp e                                             ; $527d: $bb
	reti                                             ; $527e: $d9


	db $f4                                           ; $527f: $f4
	ld l, d                                          ; $5280: $6a
	inc [hl]                                         ; $5281: $34
	jr c, @-$20                                      ; $5282: $38 $de

	adc b                                            ; $5284: $88
	add b                                            ; $5285: $80
	ld b, h                                          ; $5286: $44
	ld [hl+], a                                      ; $5287: $22
	add hl, de                                       ; $5288: $19
	adc h                                            ; $5289: $8c
	add $63                                          ; $528a: $c6 $63
	ld sp, $6040                                     ; $528c: $31 $40 $60
	and b                                            ; $528f: $a0
	sub c                                            ; $5290: $91
	ld c, c                                          ; $5291: $49
	dec h                                            ; $5292: $25
	ld a, [de]                                       ; $5293: $1a
	ld l, a                                          ; $5294: $6f
	ld b, b                                          ; $5295: $40
	jr nz, @+$22                                     ; $5296: $20 $20

	ld de, $4589                                     ; $5298: $11 $89 $45
	ld [hl+], a                                      ; $529b: $22
	sub c                                            ; $529c: $91
	ld b, b                                          ; $529d: $40
	add b                                            ; $529e: $80
	add b                                            ; $529f: $80
	ld bc, $0e18                                     ; $52a0: $01 $18 $0e
	rrca                                             ; $52a3: $0f
	rrca                                             ; $52a4: $0f
	ld a, e                                          ; $52a5: $7b
	ld hl, sp-$01                                    ; $52a6: $f8 $ff
	sbc h                                            ; $52a8: $9c
	ld [bc], a                                       ; $52a9: $02
	inc bc                                           ; $52aa: $03
	ld [bc], a                                       ; $52ab: $02
	cp $82                                           ; $52ac: $fe $82
	inc b                                            ; $52ae: $04
	ld b, b                                          ; $52af: $40
	add hl, bc                                       ; $52b0: $09
	rst $38                                          ; $52b1: $ff
	rst $38                                          ; $52b2: $ff
	ld bc, $0c00                                     ; $52b3: $01 $00 $0c
	jp $0738                                         ; $52b6: $c3 $38 $07


	add c                                            ; $52b9: $81
	ccf                                              ; $52ba: $3f
	rlca                                             ; $52bb: $07
	sbc a                                            ; $52bc: $9f
	daa                                              ; $52bd: $27
	ei                                               ; $52be: $fb
	rst $38                                          ; $52bf: $ff
	rst AddAOntoHL                                          ; $52c0: $ef
	cp a                                             ; $52c1: $bf
	rst $38                                          ; $52c2: $ff
	add d                                            ; $52c3: $82
	ld h, c                                          ; $52c4: $61
	add hl, de                                       ; $52c5: $19
	add h                                            ; $52c6: $84
	ld [hl], d                                       ; $52c7: $72
	cp $c6                                           ; $52c8: $fe $c6
	inc bc                                           ; $52ca: $03
	cp $9a                                           ; $52cb: $fe $9a
	add b                                            ; $52cd: $80
	add c                                            ; $52ce: $81
	add [hl]                                         ; $52cf: $86
	adc c                                            ; $52d0: $89
	ld d, a                                          ; $52d1: $57
	ld l, a                                          ; $52d2: $6f
	ld hl, sp-$6b                                    ; $52d3: $f8 $95
	adc b                                            ; $52d5: $88
	ld d, b                                          ; $52d6: $50
	inc c                                            ; $52d7: $0c
	nop                                              ; $52d8: $00
	inc bc                                           ; $52d9: $03
	nop                                              ; $52da: $00
	ld hl, sp+$1e                                    ; $52db: $f8 $1e
	rst $38                                          ; $52dd: $ff
	rst $38                                          ; $52de: $ff
	db $fd                                           ; $52df: $fd
	sbc e                                            ; $52e0: $9b
	ld hl, sp+$06                                    ; $52e1: $f8 $06
	ld bc, $fd78                                     ; $52e3: $01 $78 $fd
	sbc e                                            ; $52e6: $9b
	ret nz                                           ; $52e7: $c0

	nop                                              ; $52e8: $00
	or b                                             ; $52e9: $b0
	ret nz                                           ; $52ea: $c0

	ei                                               ; $52eb: $fb
	sbc l                                            ; $52ec: $9d
	add b                                            ; $52ed: $80
	ld b, b                                          ; $52ee: $40
	pop af                                           ; $52ef: $f1
	sbc b                                            ; $52f0: $98
	ld e, h                                          ; $52f1: $5c
	ld l, $17                                        ; $52f2: $2e $17
	dec bc                                           ; $52f4: $0b
	dec b                                            ; $52f5: $05
	ld [bc], a                                       ; $52f6: $02
	ld bc, $7ff8                                     ; $52f7: $01 $f8 $7f
	sbc $99                                          ; $52fa: $de $99
	jr nz, @-$6e                                     ; $52fc: $20 $90

	ret z                                            ; $52fe: $c8

	db $e4                                           ; $52ff: $e4
	ld [hl], d                                       ; $5300: $72
	cp c                                             ; $5301: $b9
	ldh a, [c]                                       ; $5302: $f2
	ld e, a                                          ; $5303: $5f
	rst SubAFromDE                                          ; $5304: $df
	ld [hl], e                                       ; $5305: $73
	ldh a, [c]                                       ; $5306: $f2
	sbc l                                            ; $5307: $9d
	jr z, @-$7b                                      ; $5308: $28 $83

	ld e, d                                          ; $530a: $5a
	ret nc                                           ; $530b: $d0

jr_05d_530c:
	ld [hl], d                                       ; $530c: $72
	adc $f9                                          ; $530d: $ce $f9
	sbc h                                            ; $530f: $9c
	db $fd                                           ; $5310: $fd
	xor d                                            ; $5311: $aa
	push af                                          ; $5312: $f5
	ld a, e                                          ; $5313: $7b
	cp $9e                                           ; $5314: $fe $9e
	push de                                          ; $5316: $d5
	ld h, d                                          ; $5317: $62
	ret nz                                           ; $5318: $c0

	sbc b                                            ; $5319: $98
	ld d, h                                          ; $531a: $54
	nop                                              ; $531b: $00
	ld d, b                                          ; $531c: $50
	nop                                              ; $531d: $00
	ld d, b                                          ; $531e: $50
	ld bc, $6f51                                     ; $531f: $01 $51 $6f
	ret nz                                           ; $5322: $c0

	sbc $01                                          ; $5323: $de $01
	add b                                            ; $5325: $80
	ld a, c                                          ; $5326: $79
	ld [hl], a                                       ; $5327: $77
	ld l, a                                          ; $5328: $6f
	db $db                                           ; $5329: $db
	or $ad                                           ; $532a: $f6 $ad
	ld l, e                                          ; $532c: $6b
	ld c, d                                          ; $532d: $4a
	ld h, a                                          ; $532e: $67
	ld l, [hl]                                       ; $532f: $6e
	ld e, b                                          ; $5330: $58
	or b                                             ; $5331: $b0
	and c                                            ; $5332: $a1
	ld h, e                                          ; $5333: $63
	ld b, [hl]                                       ; $5334: $46
	ld b, [hl]                                       ; $5335: $46
	pop af                                           ; $5336: $f1
	ld a, [$7cf9]                                    ; $5337: $fa $f9 $7c
	or $ae                                           ; $533a: $f6 $ae
	ld d, [hl]                                       ; $533c: $56
	xor a                                            ; $533d: $af
	rst $38                                          ; $533e: $ff
	rrca                                             ; $533f: $0f
	ld b, $e3                                        ; $5340: $06 $e3
	adc l                                            ; $5342: $8d
	add hl, de                                       ; $5343: $19
	inc sp                                           ; $5344: $33
	add l                                            ; $5345: $85
	ld h, h                                          ; $5346: $64
	ld a, [hl]                                       ; $5347: $7e
	rst SubAFromBC                                          ; $5348: $e7
	ld bc, $be7c                                     ; $5349: $01 $7c $be
	ld h, a                                          ; $534c: $67
	ld e, e                                          ; $534d: $5b
	and l                                            ; $534e: $a5
	add a                                            ; $534f: $87
	ld bc, $fef8                                     ; $5350: $01 $f8 $fe
	jp $bd99                                         ; $5353: $c3 $99 $bd


	ld a, [hl]                                       ; $5356: $7e
	scf                                              ; $5357: $37
	ld e, e                                          ; $5358: $5b
	xor l                                            ; $5359: $ad
	sbc $67                                          ; $535a: $de $67
	inc sp                                           ; $535c: $33
	jr c, @-$60                                      ; $535d: $38 $9e

	jr jr_05d_53db                                   ; $535f: $18 $7a

	db $d3                                           ; $5361: $d3
	add b                                            ; $5362: $80
	add hl, sp                                       ; $5363: $39
	sbc h                                            ; $5364: $9c
	rst GetHLinHL                                          ; $5365: $cf
	rst SubAFromBC                                          ; $5366: $e7
	db $eb                                           ; $5367: $eb
	db $dd                                           ; $5368: $dd
	xor $f7                                          ; $5369: $ee $f7
	ld a, l                                          ; $536b: $7d
	sbc e                                            ; $536c: $9b
	rst SubAFromBC                                          ; $536d: $e7
	jr jr_05d_530c                                   ; $536e: $18 $9c

	ld h, [hl]                                       ; $5370: $66
	inc sp                                           ; $5371: $33
	add hl, de                                       ; $5372: $19
	adc [hl]                                         ; $5373: $8e
	rst SubAFromBC                                          ; $5374: $e7
	ld a, a                                          ; $5375: $7f
	rst $38                                          ; $5376: $ff
	or a                                             ; $5377: $b7
	db $db                                           ; $5378: $db
	db $e4                                           ; $5379: $e4
	ld sp, $3bcc                                     ; $537a: $31 $cc $3b
	call nz, $c843                                   ; $537d: $c4 $43 $c8
	ld h, h                                          ; $5380: $64
	dec sp                                           ; $5381: $3b
	sbc [hl]                                         ; $5382: $9e
	rst SubAFromDE                                          ; $5383: $df
	db $dd                                           ; $5384: $dd
	rst $38                                          ; $5385: $ff
	add a                                            ; $5386: $87
	adc [hl]                                         ; $5387: $8e
	db $e4                                           ; $5388: $e4
	db $fc                                           ; $5389: $fc
	cp l                                             ; $538a: $bd
	ld l, a                                          ; $538b: $6f
	ld a, e                                          ; $538c: $7b
	sbc $37                                          ; $538d: $de $37
	add d                                            ; $538f: $82
	ld h, h                                          ; $5390: $64
	inc d                                            ; $5391: $14
	call $9cf3                                       ; $5392: $cd $f3 $9c
	rst SubAFromBC                                          ; $5395: $e7
	ei                                               ; $5396: $fb
	inc bc                                           ; $5397: $03
	inc bc                                           ; $5398: $03
	ldh [$e0], a                                     ; $5399: $e0 $e0
	pop bc                                           ; $539b: $c1
	ret nz                                           ; $539c: $c0

	jr nc, @-$72                                     ; $539d: $30 $8c

	ld a, d                                          ; $539f: $7a
	ld a, [$8080]                                    ; $53a0: $fa $80 $80
	ld [bc], a                                       ; $53a3: $02
	jp $fcf1                                         ; $53a4: $c3 $f1 $fc


	adc a                                            ; $53a7: $8f
	ccf                                              ; $53a8: $3f
	ld [hl], a                                       ; $53a9: $77
	ld h, [hl]                                       ; $53aa: $66
	dec b                                            ; $53ab: $05
	adc a                                            ; $53ac: $8f
	set 3, d                                         ; $53ad: $cb $da
	ld [bc], a                                       ; $53af: $02

jr_05d_53b0:
	add hl, sp                                       ; $53b0: $39
	ld h, c                                          ; $53b1: $61
	ld b, d                                          ; $53b2: $42
	inc b                                            ; $53b3: $04
	dec b                                            ; $53b4: $05
	ld [$7f8a], sp                                   ; $53b5: $08 $8a $7f
	rst $38                                          ; $53b8: $ff
	ld a, a                                          ; $53b9: $7f
	rst $38                                          ; $53ba: $ff
	rst $38                                          ; $53bb: $ff
	ld a, a                                          ; $53bc: $7f
	ld [hl], a                                       ; $53bd: $77
	sub $71                                          ; $53be: $d6 $71
	ldh [c], a                                       ; $53c0: $e2
	sbc c                                            ; $53c1: $99
	db $10                                           ; $53c2: $10
	ld b, b                                          ; $53c3: $40
	add h                                            ; $53c4: $84
	inc b                                            ; $53c5: $04
	ld [bc], a                                       ; $53c6: $02
	ld [bc], a                                       ; $53c7: $02
	call c, $9bff                                    ; $53c8: $dc $ff $9b
	rst SubAFromDE                                          ; $53cb: $df
	rst SubAFromBC                                          ; $53cc: $e7
	ld sp, hl                                        ; $53cd: $f9
	add a                                            ; $53ce: $87
	ld a, e                                          ; $53cf: $7b
	dec c                                            ; $53d0: $0d
	adc e                                            ; $53d1: $8b
	add h                                            ; $53d2: $84
	ld b, d                                          ; $53d3: $42
	ld hl, $ec18                                     ; $53d4: $21 $18 $ec
	ldh a, [$fb]                                     ; $53d7: $f0 $fb
	db $fc                                           ; $53d9: $fc
	db $fc                                           ; $53da: $fc

jr_05d_53db:
	cp $fe                                           ; $53db: $fe $fe
	rst $38                                          ; $53dd: $ff
	jr nz, jr_05d_53b0                               ; $53de: $20 $d0

	jr z, @-$2a                                      ; $53e0: $28 $d4

	inc h                                            ; $53e2: $24
	ld [de], a                                       ; $53e3: $12
	adc d                                            ; $53e4: $8a
	ld h, l                                          ; $53e5: $65
	db $ec                                           ; $53e6: $ec
	sbc l                                            ; $53e7: $9d
	ld bc, $6a0c                                     ; $53e8: $01 $0c $6a
	and b                                            ; $53eb: $a0
	ld l, [hl]                                       ; $53ec: $6e
	or b                                             ; $53ed: $b0
	sbc e                                            ; $53ee: $9b
	scf                                              ; $53ef: $37
	adc e                                            ; $53f0: $8b
	rrca                                             ; $53f1: $0f
	ld a, d                                          ; $53f2: $7a
	ld sp, hl                                        ; $53f3: $f9
	sbc b                                            ; $53f4: $98
	adc [hl]                                         ; $53f5: $8e
	ld [hl], b                                       ; $53f6: $70
	ld b, l                                          ; $53f7: $45
	xor $f5                                          ; $53f8: $ee $f5
	db $eb                                           ; $53fa: $eb
	ld e, l                                          ; $53fb: $5d
	ld h, d                                          ; $53fc: $62
	ldh [$98], a                                     ; $53fd: $e0 $98
	rra                                              ; $53ff: $1f
	ld a, [$aed5]                                    ; $5400: $fa $d5 $ae
	ld [hl], l                                       ; $5403: $75
	xor d                                            ; $5404: $aa
	ld d, l                                          ; $5405: $55
	ld h, d                                          ; $5406: $62
	ldh [$7d], a                                     ; $5407: $e0 $7d
	sub [hl]                                         ; $5409: $96
	adc d                                            ; $540a: $8a
	ldh a, [$80]                                     ; $540b: $f0 $80
	add l                                            ; $540d: $85
	ld a, [bc]                                       ; $540e: $0a
	dec d                                            ; $540f: $15
	ld a, [hl+]                                      ; $5410: $2a
	nop                                              ; $5411: $00
	nop                                              ; $5412: $00
	rrca                                             ; $5413: $0f
	ccf                                              ; $5414: $3f
	ld a, b                                          ; $5415: $78
	ldh a, [$e0]                                     ; $5416: $f0 $e0
	ret nz                                           ; $5418: $c0

	ld d, l                                          ; $5419: $55
	xor d                                            ; $541a: $aa
	dec d                                            ; $541b: $15
	xor d                                            ; $541c: $aa
	ld d, l                                          ; $541d: $55
	xor b                                            ; $541e: $a8
	ld d, l                                          ; $541f: $55
	ld a, d                                          ; $5420: $7a
	inc bc                                           ; $5421: $03
	sbc [hl]                                         ; $5422: $9e
	ldh [$fd], a                                     ; $5423: $e0 $fd
	sub [hl]                                         ; $5425: $96
	ccf                                              ; $5426: $3f
	ld d, c                                          ; $5427: $51
	ld bc, $0051                                     ; $5428: $01 $51 $00
	ld b, b                                          ; $542b: $40
	nop                                              ; $542c: $00
	ld b, b                                          ; $542d: $40
	db $10                                           ; $542e: $10
	sbc $01                                          ; $542f: $de $01
	ld [hl], d                                       ; $5431: $72
	ld h, c                                          ; $5432: $61
	add b                                            ; $5433: $80
	ld b, [hl]                                       ; $5434: $46
	db $e4                                           ; $5435: $e4
	inc h                                            ; $5436: $24
	and $fa                                          ; $5437: $e6 $fa
	sub e                                            ; $5439: $93
	ld a, l                                          ; $543a: $7d
	ld c, l                                          ; $543b: $4d
	ld c, h                                          ; $543c: $4c
	ld c, h                                          ; $543d: $4c
	db $ec                                           ; $543e: $ec
	xor h                                            ; $543f: $ac
	and [hl]                                         ; $5440: $a6

jr_05d_5441:
	or $53                                           ; $5441: $f6 $53
	ld a, e                                          ; $5443: $7b
	xor [hl]                                         ; $5444: $ae
	ld e, h                                          ; $5445: $5c
	ld c, l                                          ; $5446: $4d
	ld l, l                                          ; $5447: $6d
	xor a                                            ; $5448: $af
	ld [hl], $5b                                     ; $5449: $36 $5b
	xor l                                            ; $544b: $ad
	ld l, c                                          ; $544c: $69
	set 3, e                                         ; $544d: $cb $db
	db $db                                           ; $544f: $db
	ld a, c                                          ; $5450: $79
	ld l, l                                          ; $5451: $6d
	ld [hl], $80                                     ; $5452: $36 $80
	dec de                                           ; $5454: $1b
	ld a, [hl]                                       ; $5455: $7e
	or [hl]                                          ; $5456: $b6
	ld h, a                                          ; $5457: $67
	jp $e1c3                                         ; $5458: $c3 $c3 $e1


	ld h, c                                          ; $545b: $61
	jr nc, jr_05d_5441                               ; $545c: $30 $e3

	db $e3                                           ; $545e: $e3
	add c                                            ; $545f: $81
	ld bc, $8000                                     ; $5460: $01 $00 $80
	ret nz                                           ; $5463: $c0

	ldh [$c1], a                                     ; $5464: $e0 $c1
	ld a, b                                          ; $5466: $78
	ld a, a                                          ; $5467: $7f
	ld c, [hl]                                       ; $5468: $4e
	call $d7db                                       ; $5469: $cd $db $d7
	rst GetHLinHL                                          ; $546c: $cf
	rst $38                                          ; $546d: $ff
	rst $38                                          ; $546e: $ff
	rst JumpTable                                          ; $546f: $c7
	rst JumpTable                                          ; $5470: $c7
	adc $cc                                          ; $5471: $ce $cc
	sbc h                                            ; $5473: $9c
	ld c, b                                          ; $5474: $48
	ld b, b                                          ; $5475: $40
	cp $79                                           ; $5476: $fe $79
	call nz, $ffdf                                   ; $5478: $c4 $df $ff
	sbc e                                            ; $547b: $9b
	sub a                                            ; $547c: $97
	ld l, $ff                                        ; $547d: $2e $ff
	pop af                                           ; $547f: $f1
	ld a, e                                          ; $5480: $7b
	ld c, l                                          ; $5481: $4d
	sbc c                                            ; $5482: $99
	ld [bc], a                                       ; $5483: $02
	ld b, $0e                                        ; $5484: $06 $0e
	ccf                                              ; $5486: $3f
	inc a                                            ; $5487: $3c
	sbc a                                            ; $5488: $9f
	ld a, d                                          ; $5489: $7a
	ret z                                            ; $548a: $c8

	add b                                            ; $548b: $80
	ld a, a                                          ; $548c: $7f
	ld a, e                                          ; $548d: $7b
	rst $38                                          ; $548e: $ff
	ldh a, [rIE]                                     ; $548f: $f0 $ff
	ld a, c                                          ; $5491: $79

jr_05d_5492:
	ld a, [hl-]                                      ; $5492: $3a
	ld a, [de]                                       ; $5493: $1a
	rrca                                             ; $5494: $0f
	add hl, bc                                       ; $5495: $09
	jp hl                                            ; $5496: $e9


	ld [hl], h                                       ; $5497: $74
	cp d                                             ; $5498: $ba
	sbc $cf                                          ; $5499: $de $cf
	rst AddAOntoHL                                          ; $549b: $ef
	rst JumpTable                                          ; $549c: $c7
	rst JumpTable                                          ; $549d: $c7
	rst GetHLinHL                                          ; $549e: $cf
	daa                                              ; $549f: $27
	inc de                                           ; $54a0: $13
	adc e                                            ; $54a1: $8b
	ld b, c                                          ; $54a2: $41
	pop bc                                           ; $54a3: $c1
	pop bc                                           ; $54a4: $c1
	add c                                            ; $54a5: $81
	ld a, a                                          ; $54a6: $7f
	cp h                                             ; $54a7: $bc
	or a                                             ; $54a8: $b7
	ld e, [hl]                                       ; $54a9: $5e
	ld e, c                                          ; $54aa: $59
	sbc c                                            ; $54ab: $99
	inc l                                            ; $54ac: $2c
	dec sp                                           ; $54ad: $3b
	ld a, h                                          ; $54ae: $7c
	rst $38                                          ; $54af: $ff
	db $e3                                           ; $54b0: $e3
	ld hl, sp-$22                                    ; $54b1: $f8 $de
	rst $38                                          ; $54b3: $ff
	add b                                            ; $54b4: $80
	rst AddAOntoHL                                          ; $54b5: $ef
	xor a                                            ; $54b6: $af
	sub [hl]                                         ; $54b7: $96
	halt                                             ; $54b8: $76
	db $db                                           ; $54b9: $db
	rst JumpTable                                          ; $54ba: $c7
	pop de                                           ; $54bb: $d1
	db $fc                                           ; $54bc: $fc
	ld a, $cb                                        ; $54bd: $3e $cb
	sub d                                            ; $54bf: $92
	ldh a, [c]                                       ; $54c0: $f2
	ld a, $0f                                        ; $54c1: $3e $0f
	db $e3                                           ; $54c3: $e3
	jr nc, jr_05d_5492                               ; $54c4: $30 $cc

	ldh a, [c]                                       ; $54c6: $f2
	db $db                                           ; $54c7: $db
	ei                                               ; $54c8: $fb
	db $ed                                           ; $54c9: $ed
	or $db                                           ; $54ca: $f6 $db
	db $ed                                           ; $54cc: $ed
	ld a, a                                          ; $54cd: $7f
	ccf                                              ; $54ce: $3f
	ld bc, $4448                                     ; $54cf: $01 $48 $44
	ld [hl+], a                                      ; $54d2: $22
	sub c                                            ; $54d3: $91
	sbc c                                            ; $54d4: $99
	call z, $3163                                    ; $54d5: $cc $63 $31
	ccf                                              ; $54d8: $3f
	sbc a                                            ; $54d9: $9f
	rst AddAOntoHL                                          ; $54da: $ef
	sbc $fe                                          ; $54db: $de $fe
	add h                                            ; $54dd: $84
	db $fc                                           ; $54de: $fc
	add h                                            ; $54df: $84
	rrca                                             ; $54e0: $0f
	add h                                            ; $54e1: $84
	ld h, e                                          ; $54e2: $63
	ld e, $82                                        ; $54e3: $1e $82
	ld l, l                                          ; $54e5: $6d
	ld hl, sp-$78                                    ; $54e6: $f8 $88
	db $dd                                           ; $54e8: $dd
	sbc [hl]                                         ; $54e9: $9e
	ld [hl-], a                                      ; $54ea: $32
	db $e3                                           ; $54eb: $e3
	rst GetHLinHL                                          ; $54ec: $cf
	rla                                              ; $54ed: $17
	ld [hl+], a                                      ; $54ee: $22
	inc bc                                           ; $54ef: $03
	db $fc                                           ; $54f0: $fc
	add h                                            ; $54f1: $84
	halt                                             ; $54f2: $76
	ld h, [hl]                                       ; $54f3: $66
	ld b, c                                          ; $54f4: $41
	ld bc, $00c1                                     ; $54f5: $01 $c1 $00
	rst $38                                          ; $54f8: $ff
	sbc $80                                          ; $54f9: $de $80
	ld a, e                                          ; $54fb: $7b
	add hl, sp                                       ; $54fc: $39
	sbc [hl]                                         ; $54fd: $9e
	add b                                            ; $54fe: $80
	reti                                             ; $54ff: $d9


	rst $38                                          ; $5500: $ff
	ld a, a                                          ; $5501: $7f
	call c, $2b99                                    ; $5502: $dc $99 $2b
	ld e, $1d                                        ; $5505: $1e $1d
	ld a, [bc]                                       ; $5507: $0a
	dec b                                            ; $5508: $05
	rlca                                             ; $5509: $07
	ld a, e                                          ; $550a: $7b
	ld d, l                                          ; $550b: $55
	rst SubAFromDE                                          ; $550c: $df
	ldh a, [$99]                                     ; $550d: $f0 $99
	ld hl, sp-$04                                    ; $550f: $f8 $fc
	rst $38                                          ; $5511: $ff
	rst SubAFromHL                                          ; $5512: $d7
	ld a, [hl-]                                      ; $5513: $3a
	push de                                          ; $5514: $d5
	ld a, d                                          ; $5515: $7a
	ldh [c], a                                       ; $5516: $e2
	sbc [hl]                                         ; $5517: $9e
	ld d, l                                          ; $5518: $55
	ld a, b                                          ; $5519: $78
	and b                                            ; $551a: $a0
	db $fc                                           ; $551b: $fc
	sbc [hl]                                         ; $551c: $9e
	db $fc                                           ; $551d: $fc
	ld a, e                                          ; $551e: $7b
	db $f4                                           ; $551f: $f4
	ld [hl], e                                       ; $5520: $73
	cp $f9                                           ; $5521: $fe $f9
	ld a, a                                          ; $5523: $7f
	or $9b                                           ; $5524: $f6 $9b
	ld d, a                                          ; $5526: $57
	xor d                                            ; $5527: $aa
	ld e, a                                          ; $5528: $5f
	xor d                                            ; $5529: $aa
	ld e, h                                          ; $552a: $5c
	ld h, b                                          ; $552b: $60
	sbc d                                            ; $552c: $9a
	dec d                                            ; $552d: $15
	jr z, jr_05d_5580                                ; $552e: $28 $50

	and b                                            ; $5530: $a0
	ld b, b                                          ; $5531: $40
	ld a, e                                          ; $5532: $7b
	xor [hl]                                         ; $5533: $ae
	sbc c                                            ; $5534: $99
	ret nz                                           ; $5535: $c0

	add e                                            ; $5536: $83
	rrca                                             ; $5537: $0f
	rra                                              ; $5538: $1f
	ccf                                              ; $5539: $3f
	ld a, a                                          ; $553a: $7f
	ld a, b                                          ; $553b: $78
	add c                                            ; $553c: $81
	ld a, d                                          ; $553d: $7a
	ld [hl], d                                       ; $553e: $72
	sub a                                            ; $553f: $97
	ld [bc], a                                       ; $5540: $02
	inc b                                            ; $5541: $04
	ld [$fe0c], sp                                   ; $5542: $08 $0c $fe
	ld hl, sp-$20                                    ; $5545: $f8 $e0
	ret nz                                           ; $5547: $c0

	ld a, e                                          ; $5548: $7b
	jp hl                                            ; $5549: $e9


	sub [hl]                                         ; $554a: $96
	nop                                              ; $554b: $00
	jr z, jr_05d_5592                                ; $554c: $28 $44

jr_05d_554e:
	add d                                            ; $554e: $82
	inc bc                                           ; $554f: $03
	ld de, $5400                                     ; $5550: $11 $00 $54
	jr c, jr_05d_554e                                ; $5553: $38 $f9

	sub e                                            ; $5555: $93
	ld h, $17                                        ; $5556: $26 $17
	dec bc                                           ; $5558: $0b
	dec bc                                           ; $5559: $0b
	dec b                                            ; $555a: $05
	add l                                            ; $555b: $85
	ld b, h                                          ; $555c: $44
	ld [hl+], a                                      ; $555d: $22
	dec a                                            ; $555e: $3d
	inc e                                            ; $555f: $1c
	ld c, $0e                                        ; $5560: $0e $0e
	sbc $07                                          ; $5562: $de $07
	add b                                            ; $5564: $80
	inc bc                                           ; $5565: $03
	or $72                                           ; $5566: $f6 $72
	cp d                                             ; $5568: $ba
	reti                                             ; $5569: $d9


	ld l, c                                          ; $556a: $69
	or l                                             ; $556b: $b5
	db $dd                                           ; $556c: $dd
	ld a, [$cf8d]                                    ; $556d: $fa $8d $cf

jr_05d_5570:
	ld h, a                                          ; $5570: $67
	or a                                             ; $5571: $b7
	rst SubAFromDE                                          ; $5572: $df
	ld l, a                                          ; $5573: $6f
	or a                                             ; $5574: $b7
	sub a                                            ; $5575: $97
	sbc b                                            ; $5576: $98
	ld a, h                                          ; $5577: $7c
	ld e, [hl]                                       ; $5578: $5e
	ld e, [hl]                                       ; $5579: $5e
	ld e, l                                          ; $557a: $5d
	ld e, a                                          ; $557b: $5f
	ld a, a                                          ; $557c: $7f
	rst AddAOntoHL                                          ; $557d: $ef
	ldh a, [$fc]                                     ; $557e: $f0 $fc

jr_05d_5580:
	ldh [$e7], a                                     ; $5580: $e0 $e7
	xor $f8                                          ; $5582: $ee $f8
	rst SubAFromDE                                          ; $5584: $df
	ldh a, [$9d]                                     ; $5585: $f0 $9d
	add [hl]                                         ; $5587: $86
	ld [bc], a                                       ; $5588: $02
	ld a, d                                          ; $5589: $7a
	cp d                                             ; $558a: $ba
	ld a, [hl]                                       ; $558b: $7e
	push de                                          ; $558c: $d5
	sbc [hl]                                         ; $558d: $9e
	ld c, h                                          ; $558e: $4c
	ld h, h                                          ; $558f: $64
	rst JumpTable                                          ; $5590: $c7
	sbc h                                            ; $5591: $9c

jr_05d_5592:
	ld e, [hl]                                       ; $5592: $5e
	inc a                                            ; $5593: $3c
	ld l, b                                          ; $5594: $68
	db $fc                                           ; $5595: $fc
	sbc h                                            ; $5596: $9c
	inc e                                            ; $5597: $1c
	jr c, jr_05d_560a                                ; $5598: $38 $70

	db $fc                                           ; $559a: $fc
	sub e                                            ; $559b: $93

Jump_05d_559c:
	ld a, l                                          ; $559c: $7d
	ld a, a                                          ; $559d: $7f
	dec a                                            ; $559e: $3d
	ccf                                              ; $559f: $3f
	dec e                                            ; $55a0: $1d
	rra                                              ; $55a1: $1f
	rrca                                             ; $55a2: $0f
	dec c                                            ; $55a3: $0d
	dec bc                                           ; $55a4: $0b
	rlca                                             ; $55a5: $07
	rlca                                             ; $55a6: $07
	dec b                                            ; $55a7: $05
	sbc $07                                          ; $55a8: $de $07
	sub h                                            ; $55aa: $94
	dec bc                                           ; $55ab: $0b
	adc a                                            ; $55ac: $8f
	sbc a                                            ; $55ad: $9f
	sbc [hl]                                         ; $55ae: $9e
	ld a, $3f                                        ; $55af: $3e $3f
	dec a                                            ; $55b1: $3d
	dec a                                            ; $55b2: $3d
	dec e                                            ; $55b3: $1d
	add c                                            ; $55b4: $81
	add c                                            ; $55b5: $81
	sbc $03                                          ; $55b6: $de $03
	sbc $07                                          ; $55b8: $de $07
	sbc d                                            ; $55ba: $9a
	ld l, d                                          ; $55bb: $6a
	add hl, hl                                       ; $55bc: $29
	sub b                                            ; $55bd: $90
	ld c, c                                          ; $55be: $49
	ld c, b                                          ; $55bf: $48
	sbc $24                                          ; $55c0: $de $24
	halt                                             ; $55c2: $76
	adc d                                            ; $55c3: $8a
	db $dd                                           ; $55c4: $dd
	rst $38                                          ; $55c5: $ff
	sub h                                            ; $55c6: $94
	dec h                                            ; $55c7: $25
	sub d                                            ; $55c8: $92
	ld c, c                                          ; $55c9: $49
	jr z, jr_05d_5570                                ; $55ca: $28 $a4

	sub h                                            ; $55cc: $94
	ld d, d                                          ; $55cd: $52
	ld c, d                                          ; $55ce: $4a
	ld sp, hl                                        ; $55cf: $f9
	db $fc                                           ; $55d0: $fc
	cp $dc                                           ; $55d1: $fe $dc
	rst $38                                          ; $55d3: $ff
	add h                                            ; $55d4: $84
	ld e, a                                          ; $55d5: $5f
	xor [hl]                                         ; $55d6: $ae
	halt                                             ; $55d7: $76
	db $dd                                           ; $55d8: $dd
	ld l, e                                          ; $55d9: $6b
	ld l, $15                                        ; $55da: $2e $15
	dec d                                            ; $55dc: $15
	sbc a                                            ; $55dd: $9f
	jp z, Jump_05d_664e                              ; $55de: $ca $4e $66

	or a                                             ; $55e1: $b7
	ldh a, [c]                                       ; $55e2: $f2
	ei                                               ; $55e3: $fb
	ei                                               ; $55e4: $fb
	ld h, d                                          ; $55e5: $62
	jp $108b                                         ; $55e6: $c3 $8b $10


	ld hl, $f0c0                                     ; $55e9: $21 $c0 $f0
	inc a                                            ; $55ec: $3c
	halt                                             ; $55ed: $76
	push hl                                          ; $55ee: $e5
	ret nz                                           ; $55ef: $c0

	ld a, c                                          ; $55f0: $79
	ld c, [hl]                                       ; $55f1: $4e
	ld a, a                                          ; $55f2: $7f
	rst FarCall                                          ; $55f3: $f7
	add a                                            ; $55f4: $87
	inc bc                                           ; $55f5: $03
	or e                                             ; $55f6: $b3
	ld [hl], d                                       ; $55f7: $72
	di                                               ; $55f8: $f3
	di                                               ; $55f9: $f3
	rst FarCall                                          ; $55fa: $f7
	rrca                                             ; $55fb: $0f
	ld e, $00                                        ; $55fc: $1e $00
	nop                                              ; $55fe: $00
	ld [hl], c                                       ; $55ff: $71
	or c                                             ; $5600: $b1
	pop af                                           ; $5601: $f1
	ld h, d                                          ; $5602: $62
	ld b, $08                                        ; $5603: $06 $08
	add b                                            ; $5605: $80
	ldh [$d9], a                                     ; $5606: $e0 $d9
	ld b, [hl]                                       ; $5608: $46
	ld b, b                                          ; $5609: $40

jr_05d_560a:
	ld b, h                                          ; $560a: $44
	ld b, h                                          ; $560b: $44
	adc b                                            ; $560c: $88
	sbc $ff                                          ; $560d: $de $ff
	db $dd                                           ; $560f: $dd
	ld a, a                                          ; $5610: $7f
	sbc h                                            ; $5611: $9c
	rst $38                                          ; $5612: $ff
	ld c, $30                                        ; $5613: $0e $30
	ld l, l                                          ; $5615: $6d
	add l                                            ; $5616: $85
	reti                                             ; $5617: $d9


	rst $38                                          ; $5618: $ff
	sbc [hl]                                         ; $5619: $9e
	inc de                                           ; $561a: $13
	sbc $10                                          ; $561b: $de $10
	cp $9e                                           ; $561d: $fe $9e
	ldh [$d9], a                                     ; $561f: $e0 $d9
	rst $38                                          ; $5621: $ff
	ld a, [hl]                                       ; $5622: $7e
	ret nc                                           ; $5623: $d0

	sbc c                                            ; $5624: $99
	ld a, a                                          ; $5625: $7f
	ld a, [hl+]                                      ; $5626: $2a
	rra                                              ; $5627: $1f
	ld a, [bc]                                       ; $5628: $0a
	rrca                                             ; $5629: $0f
	rlca                                             ; $562a: $07
	ld [hl], l                                       ; $562b: $75
	db $f4                                           ; $562c: $f4
	ld a, [hl]                                       ; $562d: $7e
	and b                                            ; $562e: $a0
	ld a, d                                          ; $562f: $7a
	sbc a                                            ; $5630: $9f
	ld a, d                                          ; $5631: $7a
	call nz, $fe7b                                   ; $5632: $c4 $7b $fe
	ld h, c                                          ; $5635: $61
	ld [hl], b                                       ; $5636: $70
	ld sp, hl                                        ; $5637: $f9
	rst SubAFromDE                                          ; $5638: $df
	ld hl, sp-$68                                    ; $5639: $f8 $98
	pop af                                           ; $563b: $f1
	rst SubAFromBC                                          ; $563c: $e7
	rst AddAOntoHL                                          ; $563d: $ef
	rst SubAFromDE                                          ; $563e: $df
	cp a                                             ; $563f: $bf
	db $fc                                           ; $5640: $fc
	ld b, $f9                                        ; $5641: $06 $f9
	ld a, b                                          ; $5643: $78
	jp hl                                            ; $5644: $e9


	ld a, h                                          ; $5645: $7c
	ld h, $7e                                        ; $5646: $26 $7e
	cp [hl]                                          ; $5648: $be
	sbc b                                            ; $5649: $98
	ld c, [hl]                                       ; $564a: $4e
	rrca                                             ; $564b: $0f
	rlca                                             ; $564c: $07
	ld [bc], a                                       ; $564d: $02
	nop                                              ; $564e: $00
	ld h, c                                          ; $564f: $61
	inc sp                                           ; $5650: $33
	ld a, e                                          ; $5651: $7b
	add b                                            ; $5652: $80
	sbc h                                            ; $5653: $9c
	ldh [$fc], a                                     ; $5654: $e0 $fc
	ldh a, [$fe]                                     ; $5656: $f0 $fe
	sbc e                                            ; $5658: $9b
	ld [de], a                                       ; $5659: $12
	dec de                                           ; $565a: $1b
	ld [hl-], a                                      ; $565b: $32
	ld h, b                                          ; $565c: $60
	halt                                             ; $565d: $76
	and a                                            ; $565e: $a7
	rst SubAFromDE                                          ; $565f: $df
	inc bc                                           ; $5660: $03
	ld a, a                                          ; $5661: $7f
	jp hl                                            ; $5662: $e9


	db $fd                                           ; $5663: $fd
	add e                                            ; $5664: $83
	ld [$1539], a                                    ; $5665: $ea $39 $15
	dec de                                           ; $5668: $1b
	add hl, bc                                       ; $5669: $09
	ld a, [bc]                                       ; $566a: $0a
	ld b, $04                                        ; $566b: $06 $04
	rst SubAFromDE                                          ; $566d: $df
	cpl                                              ; $566e: $2f
	rra                                              ; $566f: $1f
	rla                                              ; $5670: $17
	rrca                                             ; $5671: $0f
	ld c, $06                                        ; $5672: $0e $06
	inc b                                            ; $5674: $04
	rst $38                                          ; $5675: $ff
	rst SubAFromDE                                          ; $5676: $df
	ld a, [hl]                                       ; $5677: $7e
	ld c, [hl]                                       ; $5678: $4e
	cpl                                              ; $5679: $2f
	and l                                            ; $567a: $a5
	sub h                                            ; $567b: $94
	ld d, d                                          ; $567c: $52
	ldh [$e0], a                                     ; $567d: $e0 $e0
	ldh a, [$fd]                                     ; $567f: $f0 $fd
	ld [hl], a                                       ; $5681: $77
	ld e, h                                          ; $5682: $5c
	sub e                                            ; $5683: $93
	sbc [hl]                                         ; $5684: $9e
	scf                                              ; $5685: $37
	ld [hl], a                                       ; $5686: $77
	db $e3                                           ; $5687: $e3
	ret nz                                           ; $5688: $c0

	ldh [$f8], a                                     ; $5689: $e0 $f8
	ld a, [hl]                                       ; $568b: $7e
	ld [hl-], a                                      ; $568c: $32
	ld [hl], c                                       ; $568d: $71
	pop af                                           ; $568e: $f1
	ldh [$7b], a                                     ; $568f: $e0 $7b
	ld a, h                                          ; $5691: $7c
	ld a, e                                          ; $5692: $7b
	cp l                                             ; $5693: $bd
	sbc h                                            ; $5694: $9c
	sbc b                                            ; $5695: $98
	ld a, b                                          ; $5696: $78
	ld a, [de]                                       ; $5697: $1a
	ld [hl], a                                       ; $5698: $77
	sbc e                                            ; $5699: $9b
	sbc e                                            ; $569a: $9b
	adc b                                            ; $569b: $88
	sbc b                                            ; $569c: $98
	jr z, jr_05d_56b7                                ; $569d: $28 $18

	ld [hl], h                                       ; $569f: $74
	ldh a, [$9e]                                     ; $56a0: $f0 $9e
	inc e                                            ; $56a2: $1c
	sbc $3c                                          ; $56a3: $de $3c
	add b                                            ; $56a5: $80
	ld a, h                                          ; $56a6: $7c
	ld [hl], h                                       ; $56a7: $74
	db $f4                                           ; $56a8: $f4
	dec bc                                           ; $56a9: $0b
	rrca                                             ; $56aa: $0f
	rra                                              ; $56ab: $1f
	rla                                              ; $56ac: $17
	scf                                              ; $56ad: $37
	daa                                              ; $56ae: $27
	ld h, a                                          ; $56af: $67
	ld b, a                                          ; $56b0: $47
	rlca                                             ; $56b1: $07
	adc a                                            ; $56b2: $8f
	cp h                                             ; $56b3: $bc
	ld hl, sp-$1d                                    ; $56b4: $f8 $e3
	rst GetHLinHL                                          ; $56b6: $cf

jr_05d_56b7:
	sbc a                                            ; $56b7: $9f
	cp e                                             ; $56b8: $bb
	rlca                                             ; $56b9: $07
	adc c                                            ; $56ba: $89
	or b                                             ; $56bb: $b0
	ret nz                                           ; $56bc: $c0

	add b                                            ; $56bd: $80
	add c                                            ; $56be: $81
	add [hl]                                         ; $56bf: $86
	adc [hl]                                         ; $56c0: $8e
	inc h                                            ; $56c1: $24
	ld c, b                                          ; $56c2: $48
	adc b                                            ; $56c3: $88
	sub b                                            ; $56c4: $90
	reti                                             ; $56c5: $d9


	rst $38                                          ; $56c6: $ff
	sub e                                            ; $56c7: $93
	ld a, a                                          ; $56c8: $7f
	ret nz                                           ; $56c9: $c0

	jr nz, jr_05d_56dc                               ; $56ca: $20 $10

	ld c, c                                          ; $56cc: $49
	ld c, c                                          ; $56cd: $49
	ld b, l                                          ; $56ce: $45
	adc a                                            ; $56cf: $8f
	rst $38                                          ; $56d0: $ff
	cp $fc                                           ; $56d1: $fe $fc
	ld sp, hl                                        ; $56d3: $f9
	db $dd                                           ; $56d4: $dd
	rst $38                                          ; $56d5: $ff
	ld [hl], a                                       ; $56d6: $77
	ld [hl], b                                       ; $56d7: $70
	sbc c                                            ; $56d8: $99
	ld de, $1101                                     ; $56d9: $11 $01 $11

jr_05d_56dc:
	db $fd                                           ; $56dc: $fd
	adc a                                            ; $56dd: $8f
	ccf                                              ; $56de: $3f
	db $db                                           ; $56df: $db
	rst $38                                          ; $56e0: $ff
	sbc d                                            ; $56e1: $9a
	inc bc                                           ; $56e2: $03
	nop                                              ; $56e3: $00
	rra                                              ; $56e4: $1f
	ld h, b                                          ; $56e5: $60
	rrca                                             ; $56e6: $0f
	sbc $03                                          ; $56e7: $de $03
	sbc e                                            ; $56e9: $9b
	cp a                                             ; $56ea: $bf
	ld a, a                                          ; $56eb: $7f
	cp [hl]                                          ; $56ec: $be
	ld e, a                                          ; $56ed: $5f
	call c, Call_05d_7fff                            ; $56ee: $dc $ff $7f
	adc b                                            ; $56f1: $88
	sub e                                            ; $56f2: $93
	rst $38                                          ; $56f3: $ff
	db $fc                                           ; $56f4: $fc
	ld sp, hl                                        ; $56f5: $f9
	rlca                                             ; $56f6: $07
	ld hl, sp-$80                                    ; $56f7: $f8 $80
	pop af                                           ; $56f9: $f1
	ld a, [hl]                                       ; $56fa: $7e
	adc h                                            ; $56fb: $8c
	ldh a, [rSB]                                     ; $56fc: $f0 $01
	rlca                                             ; $56fe: $07
	ld a, e                                          ; $56ff: $7b
	cp a                                             ; $5700: $bf
	ld a, a                                          ; $5701: $7f
	inc sp                                           ; $5702: $33
	sub d                                            ; $5703: $92
	adc b                                            ; $5704: $88
	nop                                              ; $5705: $00
	add c                                            ; $5706: $81
	ld b, [hl]                                       ; $5707: $46
	ld e, c                                          ; $5708: $59
	ldh [c], a                                       ; $5709: $e2
	ld c, l                                          ; $570a: $4d
	sub e                                            ; $570b: $93
	sbc a                                            ; $570c: $9f
	sbc a                                            ; $570d: $9f
	rst $38                                          ; $570e: $ff
	cp $f9                                           ; $570f: $fe $f9
	ld a, e                                          ; $5711: $7b
	sub a                                            ; $5712: $97
	sbc e                                            ; $5713: $9b
	rlca                                             ; $5714: $07
	ld a, [bc]                                       ; $5715: $0a
	sub h                                            ; $5716: $94
	ld l, b                                          ; $5717: $68
	ld a, e                                          ; $5718: $7b
	sub [hl]                                         ; $5719: $96
	ld a, d                                          ; $571a: $7a
	ret nz                                           ; $571b: $c0

	sbc h                                            ; $571c: $9c
	cp $7d                                           ; $571d: $fe $7d
	or e                                             ; $571f: $b3
	ld a, d                                          ; $5720: $7a
	rst $38                                          ; $5721: $ff
	sbc d                                            ; $5722: $9a
	db $10                                           ; $5723: $10
	add hl, bc                                       ; $5724: $09
	inc b                                            ; $5725: $04
	inc bc                                           ; $5726: $03
	ld [bc], a                                       ; $5727: $02
	ld a, b                                          ; $5728: $78
	sub h                                            ; $5729: $94
	ld a, [hl]                                       ; $572a: $7e
	ld h, a                                          ; $572b: $67
	sub l                                            ; $572c: $95
	rst AddAOntoHL                                          ; $572d: $ef
	rst FarCall                                          ; $572e: $f7
	ei                                               ; $572f: $fb
	ei                                               ; $5730: $fb
	db $fd                                           ; $5731: $fd
	cp $07                                           ; $5732: $fe $07
	rst FarCall                                          ; $5734: $f7
	dec bc                                           ; $5735: $0b
	inc bc                                           ; $5736: $03
	ld [hl], h                                       ; $5737: $74
	adc b                                            ; $5738: $88
	rst SubAFromDE                                          ; $5739: $df
	db $fc                                           ; $573a: $fc
	ld l, [hl]                                       ; $573b: $6e
	ld d, b                                          ; $573c: $50
	ld a, [hl]                                       ; $573d: $7e
	add $9d                                          ; $573e: $c6 $9d
	rst $38                                          ; $5740: $ff
	ei                                               ; $5741: $fb
	halt                                             ; $5742: $76
	add l                                            ; $5743: $85
	ld [hl], b                                       ; $5744: $70
	ld [hl], e                                       ; $5745: $73
	ld [hl], l                                       ; $5746: $75
	and $fc                                          ; $5747: $e6 $fc
	rst SubAFromDE                                          ; $5749: $df
	ld bc, $9179                                     ; $574a: $01 $79 $91
	ld [hl], e                                       ; $574d: $73
	ld hl, sp-$02                                    ; $574e: $f8 $fe
	sbc d                                            ; $5750: $9a
	rlca                                             ; $5751: $07
	ld a, h                                          ; $5752: $7c
	add e                                            ; $5753: $83
	nop                                              ; $5754: $00
	add hl, de                                       ; $5755: $19
	ld [hl], a                                       ; $5756: $77
	ld hl, sp+$7a                                    ; $5757: $f8 $7a
	cp l                                             ; $5759: $bd
	sub h                                            ; $575a: $94
	cp $0c                                           ; $575b: $fe $0c
	inc e                                            ; $575d: $1c
	db $e3                                           ; $575e: $e3
	nop                                              ; $575f: $00
	inc c                                            ; $5760: $0c
	db $e3                                           ; $5761: $e3
	nop                                              ; $5762: $00
	add b                                            ; $5763: $80
	nop                                              ; $5764: $00
	inc e                                            ; $5765: $1c
	ld l, a                                          ; $5766: $6f
	dec a                                            ; $5767: $3d
	cp $9a                                           ; $5768: $fe $9a
	ret nz                                           ; $576a: $c0

	jr nc, @+$0a                                     ; $576b: $30 $08

	add h                                            ; $576d: $84
	ld h, d                                          ; $576e: $62
	ld [hl], a                                       ; $576f: $77
	ld hl, sp+$79                                    ; $5770: $f8 $79
	db $10                                           ; $5772: $10
	sbc l                                            ; $5773: $9d
	cp $04                                           ; $5774: $fe $04
	ld a, [$f867]                                    ; $5776: $fa $67 $f8
	add b                                            ; $5779: $80
	ld a, d                                          ; $577a: $7a
	ld l, d                                          ; $577b: $6a
	ld l, [hl]                                       ; $577c: $6e
	ld l, l                                          ; $577d: $6d
	or e                                             ; $577e: $b3
	or e                                             ; $577f: $b3
	ret nc                                           ; $5780: $d0

	push de                                          ; $5781: $d5

jr_05d_5782:
	ld d, a                                          ; $5782: $57
	ld d, a                                          ; $5783: $57
	ld d, e                                          ; $5784: $53
	ld d, e                                          ; $5785: $53
	ret                                              ; $5786: $c9


	ret                                              ; $5787: $c9


	adc c                                            ; $5788: $89
	adc b                                            ; $5789: $88
	ld e, a                                          ; $578a: $5f
	dec hl                                           ; $578b: $2b
	dec h                                            ; $578c: $25
	ld l, d                                          ; $578d: $6a
	ld e, [hl]                                       ; $578e: $5e
	ld d, [hl]                                       ; $578f: $56
	push af                                          ; $5790: $f5
	db $ed                                           ; $5791: $ed
	db $fc                                           ; $5792: $fc
	rst $38                                          ; $5793: $ff
	rst $38                                          ; $5794: $ff
	or a                                             ; $5795: $b7
	or e                                             ; $5796: $b3
	cp e                                             ; $5797: $bb
	sbc e                                            ; $5798: $9b
	sub l                                            ; $5799: $95
	sbc e                                            ; $579a: $9b
	rst $38                                          ; $579b: $ff
	rst $38                                          ; $579c: $ff
	ld c, b                                          ; $579d: $48
	and h                                            ; $579e: $a4
	and h                                            ; $579f: $a4
	sub d                                            ; $57a0: $92
	ld d, d                                          ; $57a1: $52
	ld d, c                                          ; $57a2: $51
	inc bc                                           ; $57a3: $03
	jp c, $8fff                                      ; $57a4: $da $ff $8f

	db $f4                                           ; $57a7: $f4
	or $72                                           ; $57a8: $f6 $72
	ld a, [hl-]                                      ; $57aa: $3a
	dec sp                                           ; $57ab: $3b
	ld e, c                                          ; $57ac: $59
	ld e, l                                          ; $57ad: $5d
	db $dd                                           ; $57ae: $dd
	rst JumpTable                                          ; $57af: $c7
	add e                                            ; $57b0: $83
	jp $f1e3                                         ; $57b1: $c3 $e3 $f1


	pop af                                           ; $57b4: $f1
	ld hl, sp-$07                                    ; $57b5: $f8 $f9
	ld [hl], l                                       ; $57b7: $75
	ld [$3f98], a                                    ; $57b8: $ea $98 $3f
	rra                                              ; $57bb: $1f
	adc a                                            ; $57bc: $8f
	ld h, c                                          ; $57bd: $61
	or c                                             ; $57be: $b1
	pop de                                           ; $57bf: $d1
	ret nz                                           ; $57c0: $c0

	ld a, d                                          ; $57c1: $7a
	rrca                                             ; $57c2: $0f
	ld l, e                                          ; $57c3: $6b
	ld c, h                                          ; $57c4: $4c
	sbc $ff                                          ; $57c5: $de $ff
	sbc h                                            ; $57c7: $9c
	ld [$8106], sp                                   ; $57c8: $08 $06 $81
	db $fd                                           ; $57cb: $fd
	adc c                                            ; $57cc: $89
	ret nz                                           ; $57cd: $c0

	di                                               ; $57ce: $f3
	rst SubAFromBC                                          ; $57cf: $e7
	xor $ec                                          ; $57d0: $ee $ec
	ld c, l                                          ; $57d2: $4d
	ld e, l                                          ; $57d3: $5d

jr_05d_57d4:
	jp c, $00bd                                      ; $57d4: $da $bd $00

	ld bc, $8703                                     ; $57d7: $01 $03 $87
	add $c7                                          ; $57da: $c6 $c7
	ld c, a                                          ; $57dc: $4f
	ld l, [hl]                                       ; $57dd: $6e
	cp a                                             ; $57de: $bf
	ld a, a                                          ; $57df: $7f
	db $fc                                           ; $57e0: $fc
	db $e3                                           ; $57e1: $e3
	sbc a                                            ; $57e2: $9f
	ld a, e                                          ; $57e3: $7b
	ld d, a                                          ; $57e4: $57
	ld a, [hl]                                       ; $57e5: $7e
	db $fd                                           ; $57e6: $fd
	sbc h                                            ; $57e7: $9c
	inc bc                                           ; $57e8: $03
	inc e                                            ; $57e9: $1c
	ld h, b                                          ; $57ea: $60
	ld a, d                                          ; $57eb: $7a
	jr z, jr_05d_5782                                ; $57ec: $28 $94

	xor a                                            ; $57ee: $af
	rst SubAFromHL                                          ; $57ef: $d7
	ld c, d                                          ; $57f0: $4a
	xor d                                            ; $57f1: $aa
	sub l                                            ; $57f2: $95
	adc l                                            ; $57f3: $8d
	push bc                                          ; $57f4: $c5
	jp nz, $3f7f                                     ; $57f5: $c2 $7f $3f

	cp a                                             ; $57f8: $bf
	ld [hl], a                                       ; $57f9: $77
	or [hl]                                          ; $57fa: $b6
	sub h                                            ; $57fb: $94
	ccf                                              ; $57fc: $3f
	rst SubAFromBC                                          ; $57fd: $e7
	di                                               ; $57fe: $f3
	ld sp, hl                                        ; $57ff: $f9
	inc a                                            ; $5800: $3c
	ld e, $0f                                        ; $5801: $1e $0f
	rrca                                             ; $5803: $0f
	rla                                              ; $5804: $17
	jp Jump_05d_77e1                                 ; $5805: $c3 $e1 $77


	ld d, d                                          ; $5808: $52
	rst SubAFromDE                                          ; $5809: $df
	rst $38                                          ; $580a: $ff
	add b                                            ; $580b: $80
	ld l, h                                          ; $580c: $6c
	ld e, b                                          ; $580d: $58
	and b                                            ; $580e: $a0
	pop bc                                           ; $580f: $c1
	jp $a262                                         ; $5810: $c3 $62 $a2


	sub $7f                                          ; $5813: $d6 $7f
	ld a, l                                          ; $5815: $7d
	ei                                               ; $5816: $fb
	rst FarCall                                          ; $5817: $f7
	ld a, [hl]                                       ; $5818: $7e
	ld a, $3e                                        ; $5819: $3e $3e
	inc e                                            ; $581b: $1c
	nop                                              ; $581c: $00
	ld b, $0d                                        ; $581d: $06 $0d
	dec de                                           ; $581f: $1b
	or l                                             ; $5820: $b5
	and a                                            ; $5821: $a7
	ld [$7fce], a                                    ; $5822: $ea $ce $7f
	rst $38                                          ; $5825: $ff
	ld sp, hl                                        ; $5826: $f9
	di                                               ; $5827: $f3
	rst SubAFromBC                                          ; $5828: $e7
	and $ce                                          ; $5829: $e6 $ce
	add h                                            ; $582b: $84
	call z, $0c00                                    ; $582c: $cc $00 $0c
	jp nc, $73e1                                     ; $582f: $d2 $e1 $73

	ld a, a                                          ; $5832: $7f
	call c, $fffa                                    ; $5833: $dc $fa $ff
	rst $38                                          ; $5836: $ff
	rst FarCall                                          ; $5837: $f7
	inc sp                                           ; $5838: $33
	dec sp                                           ; $5839: $3b
	ld e, a                                          ; $583a: $5f
	ld e, [hl]                                       ; $583b: $5e
	xor a                                            ; $583c: $af
	ld b, b                                          ; $583d: $40
	jr nz, jr_05d_5860                               ; $583e: $20 $20

	ld b, b                                          ; $5840: $40
	and b                                            ; $5841: $a0
	jr nz, jr_05d_57d4                               ; $5842: $20 $90

	ret nc                                           ; $5844: $d0

	ld a, a                                          ; $5845: $7f
	cp a                                             ; $5846: $bf
	ld [hl], l                                       ; $5847: $75
	xor a                                            ; $5848: $af
	rst SubAFromDE                                          ; $5849: $df
	rst $38                                          ; $584a: $ff
	rst SubAFromDE                                          ; $584b: $df
	ccf                                              ; $584c: $3f
	ld a, h                                          ; $584d: $7c
	db $d3                                           ; $584e: $d3
	ld a, [hl]                                       ; $584f: $7e
	ld a, d                                          ; $5850: $7a
	ld a, h                                          ; $5851: $7c
	adc b                                            ; $5852: $88
	ld a, c                                          ; $5853: $79
	ldh [$79], a                                     ; $5854: $e0 $79
	ld [hl], d                                       ; $5856: $72
	ld a, a                                          ; $5857: $7f
	xor [hl]                                         ; $5858: $ae
	ld a, c                                          ; $5859: $79
	cp d                                             ; $585a: $ba
	sbc d                                            ; $585b: $9a
	rlca                                             ; $585c: $07
	ld [$1211], sp                                   ; $585d: $08 $11 $12

jr_05d_5860:
	inc d                                            ; $5860: $14
	ld [hl], a                                       ; $5861: $77
	jr nc, jr_05d_58e2                               ; $5862: $30 $7e

	add c                                            ; $5864: $81
	add b                                            ; $5865: $80
	sbc a                                            ; $5866: $9f
	rra                                              ; $5867: $1f
	daa                                              ; $5868: $27
	ld c, a                                          ; $5869: $4f
	ld d, e                                          ; $586a: $53
	ld c, b                                          ; $586b: $48
	sub h                                            ; $586c: $94
	db $db                                           ; $586d: $db
	ld l, $37                                        ; $586e: $2e $37
	rst $38                                          ; $5870: $ff
	ldh a, [$ec]                                     ; $5871: $f0 $ec
	rst $38                                          ; $5873: $ff
	rst AddAOntoHL                                          ; $5874: $ef
	rst SubAFromBC                                          ; $5875: $e7
	pop af                                           ; $5876: $f1
	ld hl, sp+$6e                                    ; $5877: $f8 $6e
	db $dd                                           ; $5879: $dd
	or e                                             ; $587a: $b3
	db $ec                                           ; $587b: $ec
	dec sp                                           ; $587c: $3b
	nop                                              ; $587d: $00
	rst $38                                          ; $587e: $ff
	ccf                                              ; $587f: $3f
	sbc a                                            ; $5880: $9f
	db $e3                                           ; $5881: $e3
	ld a, h                                          ; $5882: $7c
	rra                                              ; $5883: $1f
	rst JumpTable                                          ; $5884: $c7
	ld a, d                                          ; $5885: $7a
	dec c                                            ; $5886: $0d
	sub a                                            ; $5887: $97
	rrca                                             ; $5888: $0f
	pop bc                                           ; $5889: $c1
	cp h                                             ; $588a: $bc
	ldh a, [c]                                       ; $588b: $f2
	rst $38                                          ; $588c: $ff
	ld a, e                                          ; $588d: $7b
	db $fd                                           ; $588e: $fd
	db $d3                                           ; $588f: $d3
	halt                                             ; $5890: $76
	inc sp                                           ; $5891: $33
	rst SubAFromDE                                          ; $5892: $df
	rst $38                                          ; $5893: $ff

jr_05d_5894:
	sbc l                                            ; $5894: $9d
	db $e3                                           ; $5895: $e3
	pop hl                                           ; $5896: $e1
	ld a, e                                          ; $5897: $7b
	dec l                                            ; $5898: $2d
	sbc d                                            ; $5899: $9a
	ld [hl], b                                       ; $589a: $70
	ld a, b                                          ; $589b: $78
	call c, $e7ee                                    ; $589c: $dc $ee $e7
	ld a, d                                          ; $589f: $7a
	ld [hl], d                                       ; $58a0: $72
	sbc $c0                                          ; $58a1: $de $c0
	add b                                            ; $58a3: $80
	ldh [$a0], a                                     ; $58a4: $e0 $a0
	pop bc                                           ; $58a6: $c1
	pop bc                                           ; $58a7: $c1
	ret z                                            ; $58a8: $c8

	adc b                                            ; $58a9: $88
	xor d                                            ; $58aa: $aa
	ld b, d                                          ; $58ab: $42
	ld b, d                                          ; $58ac: $42
	ld d, c                                          ; $58ad: $51
	adc h                                            ; $58ae: $8c
	adc h                                            ; $58af: $8c
	add h                                            ; $58b0: $84
	call nz, Call_05d_64c4                           ; $58b1: $c4 $c4 $64
	ld h, h                                          ; $58b4: $64
	ld h, [hl]                                       ; $58b5: $66
	adc l                                            ; $58b6: $8d
	ld e, e                                          ; $58b7: $5b
	db $eb                                           ; $58b8: $eb
	call z, $c5c8                                    ; $58b9: $cc $c8 $c5
	rst SubAFromDE                                          ; $58bc: $df
	cp l                                             ; $58bd: $bd
	db $db                                           ; $58be: $db
	ret                                              ; $58bf: $c9


	ld c, c                                          ; $58c0: $49
	ld l, c                                          ; $58c1: $69
	ld l, l                                          ; $58c2: $6d
	sub h                                            ; $58c3: $94
	ld l, h                                          ; $58c4: $6c
	ld h, h                                          ; $58c5: $64
	ld h, [hl]                                       ; $58c6: $66
	ld c, b                                          ; $58c7: $48
	jr z, jr_05d_58ee                                ; $58c8: $28 $24

	and d                                            ; $58ca: $a2
	sub c                                            ; $58cb: $91
	sub c                                            ; $58cc: $91
	sub e                                            ; $58cd: $93
	sub e                                            ; $58ce: $93
	db $db                                           ; $58cf: $db
	rst $38                                          ; $58d0: $ff
	rst SubAFromDE                                          ; $58d1: $df
	cp $df                                           ; $58d2: $fe $df
	push af                                          ; $58d4: $f5
	adc c                                            ; $58d5: $89
	pop af                                           ; $58d6: $f1
	ldh a, [$f0]                                     ; $58d7: $f0 $f0
	ld sp, hl                                        ; $58d9: $f9
	ei                                               ; $58da: $fb
	cp $95                                           ; $58db: $fe $95
	sub l                                            ; $58dd: $95
	sub c                                            ; $58de: $91
	sub b                                            ; $58df: $90
	db $10                                           ; $58e0: $10
	add hl, bc                                       ; $58e1: $09

jr_05d_58e2:
	ld a, [bc]                                       ; $58e2: $0a
	inc c                                            ; $58e3: $0c
	rra                                              ; $58e4: $1f
	nop                                              ; $58e5: $00
	rrca                                             ; $58e6: $0f
	add a                                            ; $58e7: $87
	ld b, a                                          ; $58e8: $47
	db $e3                                           ; $58e9: $e3
	pop hl                                           ; $58ea: $e1
	db $10                                           ; $58eb: $10
	ld a, e                                          ; $58ec: $7b
	sub l                                            ; $58ed: $95

jr_05d_58ee:
	sub a                                            ; $58ee: $97
	ld hl, sp+$78                                    ; $58ef: $f8 $78
	db $fc                                           ; $58f1: $fc
	ld a, $1f                                        ; $58f2: $3e $1f
	rst $38                                          ; $58f4: $ff
	rst FarCall                                          ; $58f5: $f7
	rst $38                                          ; $58f6: $ff
	ld [hl], l                                       ; $58f7: $75
	jr c, jr_05d_5894                                ; $58f8: $38 $9a

	rst $38                                          ; $58fa: $ff
	ld hl, sp+$0c                                    ; $58fb: $f8 $0c
	ld [bc], a                                       ; $58fd: $02
	inc bc                                           ; $58fe: $03
	halt                                             ; $58ff: $76
	inc hl                                           ; $5900: $23
	adc h                                            ; $5901: $8c
	ld sp, hl                                        ; $5902: $f9
	db $db                                           ; $5903: $db
	ldh a, [$f3]                                     ; $5904: $f0 $f3
	rst AddAOntoHL                                          ; $5906: $ef
	rst FarCall                                          ; $5907: $f7
	ldh a, [c]                                       ; $5908: $f2
	ldh a, [c]                                       ; $5909: $f2
	ld l, $3c                                        ; $590a: $2e $3c
	rra                                              ; $590c: $1f
	inc e                                            ; $590d: $1c
	jr @+$0e                                         ; $590e: $18 $0c

	rrca                                             ; $5910: $0f
	rrca                                             ; $5911: $0f
	rst $38                                          ; $5912: $ff
	rlca                                             ; $5913: $07
	dec sp                                           ; $5914: $3b
	ld a, e                                          ; $5915: $7b
	ldh [$9a], a                                     ; $5916: $e0 $9a
	ld a, a                                          ; $5918: $7f
	rra                                              ; $5919: $1f
	nop                                              ; $591a: $00
	ld hl, sp-$3c                                    ; $591b: $f8 $c4
	ld a, e                                          ; $591d: $7b
	dec [hl]                                         ; $591e: $35
	ld a, h                                          ; $591f: $7c
	ld h, d                                          ; $5920: $62
	rst SubAFromDE                                          ; $5921: $df
	ldh [c], a                                       ; $5922: $e2
	db $dd                                           ; $5923: $dd
	pop hl                                           ; $5924: $e1
	rst SubAFromDE                                          ; $5925: $df
	pop bc                                           ; $5926: $c1
	db $db                                           ; $5927: $db
	rra                                              ; $5928: $1f
	rst SubAFromDE                                          ; $5929: $df
	ccf                                              ; $592a: $3f
	sbc l                                            ; $592b: $9d
	dec hl                                           ; $592c: $2b
	ld d, c                                          ; $592d: $51
	ld [hl], b                                       ; $592e: $70
	pop de                                           ; $592f: $d1
	sbc d                                            ; $5930: $9a
	ret nz                                           ; $5931: $c0

	rst $38                                          ; $5932: $ff
	ei                                               ; $5933: $fb
	rst FarCall                                          ; $5934: $f7
	rst AddAOntoHL                                          ; $5935: $ef
	db $dd                                           ; $5936: $dd
	rst $38                                          ; $5937: $ff
	adc l                                            ; $5938: $8d
	call nc, $eeec                                   ; $5939: $d4 $ec $ee
	or $76                                           ; $593c: $f6 $76
	ld a, e                                          ; $593e: $7b
	add hl, sp                                       ; $593f: $39
	ld a, l                                          ; $5940: $7d
	sbc h                                            ; $5941: $9c
	adc h                                            ; $5942: $8c
	call z, $e6e4                                    ; $5943: $cc $e4 $e6
	ldh a, [c]                                       ; $5946: $f2
	pop af                                           ; $5947: $f1
	ld sp, hl                                        ; $5948: $f9
	call $fe89                                       ; $5949: $cd $89 $fe
	sbc e                                            ; $594c: $9b
	ld b, $1f                                        ; $594d: $06 $1f
	rst $38                                          ; $594f: $ff
	adc b                                            ; $5950: $88
	ld [hl], a                                       ; $5951: $77
	and e                                            ; $5952: $a3
	ld a, c                                          ; $5953: $79
	cp a                                             ; $5954: $bf
	adc h                                            ; $5955: $8c
	xor c                                            ; $5956: $a9
	ld d, c                                          ; $5957: $51
	ld d, b                                          ; $5958: $50
	jr nz, jr_05d_597c                               ; $5959: $20 $21

	ld b, d                                          ; $595b: $42
	add h                                            ; $595c: $84
	ld [$5faf], sp                                   ; $595d: $08 $af $5f
	ld e, a                                          ; $5960: $5f
	cpl                                              ; $5961: $2f
	cpl                                              ; $5962: $2f
	ld c, a                                          ; $5963: $4f
	sbc a                                            ; $5964: $9f
	rst $38                                          ; $5965: $ff
	cp l                                             ; $5966: $bd
	ld [hl-], a                                      ; $5967: $32
	pop bc                                           ; $5968: $c1
	ld a, e                                          ; $5969: $7b
	pop bc                                           ; $596a: $c1
	rst $38                                          ; $596b: $ff
	rst SubAFromDE                                          ; $596c: $df
	cp a                                             ; $596d: $bf
	db $db                                           ; $596e: $db
	rst $38                                          ; $596f: $ff
	sbc b                                            ; $5970: $98
	pop bc                                           ; $5971: $c1
	jr nz, jr_05d_5974                               ; $5972: $20 $00

jr_05d_5974:
	add c                                            ; $5974: $81
	ld bc, $0c02                                     ; $5975: $01 $02 $0c
	ld l, l                                          ; $5978: $6d
	or d                                             ; $5979: $b2
	sbc $ff                                          ; $597a: $de $ff

jr_05d_597c:
	sub a                                            ; $597c: $97
	inc d                                            ; $597d: $14
	ld [de], a                                       ; $597e: $12
	ld [de], a                                       ; $597f: $12
	ld a, [bc]                                       ; $5980: $0a
	add hl, bc                                       ; $5981: $09
	add hl, bc                                       ; $5982: $09
	dec b                                            ; $5983: $05
	inc b                                            ; $5984: $04
	sbc $1f                                          ; $5985: $de $1f
	sbc $0f                                          ; $5987: $de $0f
	rst SubAFromDE                                          ; $5989: $df

jr_05d_598a:
	rlca                                             ; $598a: $07
	sub e                                            ; $598b: $93
	cp [hl]                                          ; $598c: $be
	xor a                                            ; $598d: $af
	cp c                                             ; $598e: $b9
	sbc h                                            ; $598f: $9c
	ld e, [hl]                                       ; $5990: $5e
	ld c, [hl]                                       ; $5991: $4e
	ld c, a                                          ; $5992: $4f
	and [hl]                                         ; $5993: $a6
	rst $38                                          ; $5994: $ff
	pop af                                           ; $5995: $f1
	ldh [$f0], a                                     ; $5996: $e0 $f0
	ld a, d                                          ; $5998: $7a
	sbc [hl]                                         ; $5999: $9e
	sub h                                            ; $599a: $94
	db $fd                                           ; $599b: $fd
	jp hl                                            ; $599c: $e9


	rst $38                                          ; $599d: $ff
	db $fc                                           ; $599e: $fc
	nop                                              ; $599f: $00
	nop                                              ; $59a0: $00
	ld a, b                                          ; $59a1: $78
	ld a, h                                          ; $59a2: $7c
	ldh a, [rAUD2HIGH]                               ; $59a3: $f0 $19
	cp $fe                                           ; $59a5: $fe $fe
	sub a                                            ; $59a7: $97
	jr nc, jr_05d_598a                               ; $59a8: $30 $e0

	ret nz                                           ; $59aa: $c0

	and c                                            ; $59ab: $a1
	db $ec                                           ; $59ac: $ec
	sbc $18                                          ; $59ad: $de $18
	db $10                                           ; $59af: $10
	ld a, e                                          ; $59b0: $7b
	ld [hl], b                                       ; $59b1: $70
	sbc h                                            ; $59b2: $9c
	pop bc                                           ; $59b3: $c1
	add h                                            ; $59b4: $84
	ld c, $73                                        ; $59b5: $0e $73
	ld hl, sp-$75                                    ; $59b7: $f8 $8b
	db $e3                                           ; $59b9: $e3
	or c                                             ; $59ba: $b1
	ld a, [$687c]                                    ; $59bb: $fa $7c $68
	jr nc, jr_05d_59f0                               ; $59be: $30 $30

	db $10                                           ; $59c0: $10
	and b                                            ; $59c1: $a0
	and b                                            ; $59c2: $a0
	ld h, b                                          ; $59c3: $60
	ld h, b                                          ; $59c4: $60
	jr nz, jr_05d_59e7                               ; $59c5: $20 $20

	db $10                                           ; $59c7: $10
	db $10                                           ; $59c8: $10
	and l                                            ; $59c9: $a5
	inc l                                            ; $59ca: $2c
	rla                                              ; $59cb: $17
	inc de                                           ; $59cc: $13
	ld a, b                                          ; $59cd: $78
	db $fd                                           ; $59ce: $fd
	adc e                                            ; $59cf: $8b
	inc bc                                           ; $59d0: $03
	ld [hl-], a                                      ; $59d1: $32
	inc sp                                           ; $59d2: $33
	add hl, de                                       ; $59d3: $19
	dec e                                            ; $59d4: $1d
	ld c, $07                                        ; $59d5: $0e $07
	inc bc                                           ; $59d7: $03
	inc bc                                           ; $59d8: $03
	db $ed                                           ; $59d9: $ed
	db $ed                                           ; $59da: $ed
	ldh [c], a                                       ; $59db: $e2
	ld d, d                                          ; $59dc: $52
	sub c                                            ; $59dd: $91
	adc c                                            ; $59de: $89
	ld b, h                                          ; $59df: $44
	cp $36                                           ; $59e0: $fe $36
	ld [hl], $3f                                     ; $59e2: $36 $3f
	ld [hl], e                                       ; $59e4: $73
	ld a, [hl]                                       ; $59e5: $7e
	sub l                                            ; $59e6: $95

jr_05d_59e7:
	sub a                                            ; $59e7: $97
	ld d, a                                          ; $59e8: $57
	ld c, a                                          ; $59e9: $4f
	ld c, a                                          ; $59ea: $4f
	cpl                                              ; $59eb: $2f
	cpl                                              ; $59ec: $2f
	sbc e                                            ; $59ed: $9b
	ld c, h                                          ; $59ee: $4c
	db $fd                                           ; $59ef: $fd

jr_05d_59f0:
	db $fc                                           ; $59f0: $fc
	sbc $f8                                          ; $59f1: $de $f8
	ld a, c                                          ; $59f3: $79
	ld l, e                                          ; $59f4: $6b
	sbc l                                            ; $59f5: $9d
	db $fc                                           ; $59f6: $fc
	cp l                                             ; $59f7: $bd
	sbc $df                                          ; $59f8: $de $df
	adc h                                            ; $59fa: $8c
	sbc a                                            ; $59fb: $9f
	ccf                                              ; $59fc: $3f
	ld a, a                                          ; $59fd: $7f
	call nz, Call_05d_72e4                           ; $59fe: $c4 $e4 $72
	ld [hl], d                                       ; $5a01: $72
	ld [hl], c                                       ; $5a02: $71
	pop af                                           ; $5a03: $f1
	ldh [$c0], a                                     ; $5a04: $e0 $c0
	ldh a, [$f0]                                     ; $5a06: $f0 $f0
	add sp, -$07                                     ; $5a08: $e8 $f9
	ld sp, hl                                        ; $5a0a: $f9
	ld [hl], h                                       ; $5a0b: $74
	and h                                            ; $5a0c: $a4
	add h                                            ; $5a0d: $84
	sbc $1f                                          ; $5a0e: $de $1f
	rst SubAFromDE                                          ; $5a10: $df
	ld c, $9d                                        ; $5a11: $0e $9d
	adc a                                            ; $5a13: $8f
	rst SubAFromDE                                          ; $5a14: $df
	ld a, d                                          ; $5a15: $7a
	push hl                                          ; $5a16: $e5
	rst SubAFromDE                                          ; $5a17: $df
	ccf                                              ; $5a18: $3f
	sbc e                                            ; $5a19: $9b
	cp a                                             ; $5a1a: $bf
	sbc a                                            ; $5a1b: $9f
	sbc a                                            ; $5a1c: $9f
	rst SubAFromDE                                          ; $5a1d: $df
	halt                                             ; $5a1e: $76
	ld h, c                                          ; $5a1f: $61
	sbc [hl]                                         ; $5a20: $9e
	ld b, b                                          ; $5a21: $40
	ld a, e                                          ; $5a22: $7b
	sbc l                                            ; $5a23: $9d
	sbc $f9                                          ; $5a24: $de $f9
	db $dd                                           ; $5a26: $dd
	db $fd                                           ; $5a27: $fd
	sbc [hl]                                         ; $5a28: $9e
	db $fc                                           ; $5a29: $fc
	sbc $07                                          ; $5a2a: $de $07
	call c, $8403                                    ; $5a2c: $dc $03 $84
	rrca                                             ; $5a2f: $0f
	ld a, a                                          ; $5a30: $7f
	ccf                                              ; $5a31: $3f
	ld e, a                                          ; $5a32: $5f
	xor a                                            ; $5a33: $af
	rst SubAFromDE                                          ; $5a34: $df
	ld l, [hl]                                       ; $5a35: $6e
	xor [hl]                                         ; $5a36: $ae
	ldh a, [$80]                                     ; $5a37: $f0 $80
	ret nz                                           ; $5a39: $c0

	and b                                            ; $5a3a: $a0
	ret nc                                           ; $5a3b: $d0

	ld h, b                                          ; $5a3c: $60
	or c                                             ; $5a3d: $b1
	pop de                                           ; $5a3e: $d1
	pop bc                                           ; $5a3f: $c1
	jp $8585                                         ; $5a40: $c3 $85 $85


	ld [$1008], sp                                   ; $5a43: $08 $08 $10
	jr nz, jr_05d_5a87                               ; $5a46: $20 $3f

	ccf                                              ; $5a48: $3f
	ld a, a                                          ; $5a49: $7f
	ld [hl], c                                       ; $5a4a: $71
	rst GetHLinHL                                          ; $5a4b: $cf
	ld a, [hl]                                       ; $5a4c: $7e
	di                                               ; $5a4d: $f3
	sbc c                                            ; $5a4e: $99
	sub b                                            ; $5a4f: $90
	ld c, b                                          ; $5a50: $48
	add h                                            ; $5a51: $84
	jp $53e9                                         ; $5a52: $c3 $e9 $53


	reti                                             ; $5a55: $d9


	rst $38                                          ; $5a56: $ff
	sub h                                            ; $5a57: $94
	cp [hl]                                          ; $5a58: $be
	ld e, $bf                                        ; $5a59: $1e $bf
	ld a, a                                          ; $5a5b: $7f
	sbc a                                            ; $5a5c: $9f
	rla                                              ; $5a5d: $17
	inc de                                           ; $5a5e: $13
	di                                               ; $5a5f: $f3
	cp b                                             ; $5a60: $b8
	inc e                                            ; $5a61: $1c
	cp [hl]                                          ; $5a62: $be
	ld [hl], c                                       ; $5a63: $71
	inc hl                                           ; $5a64: $23
	sub h                                            ; $5a65: $94
	cp $fc                                           ; $5a66: $fe $fc
	ld h, l                                          ; $5a68: $65
	cp [hl]                                          ; $5a69: $be
	and a                                            ; $5a6a: $a7
	db $d3                                           ; $5a6b: $d3
	jp nc, $ffea                                     ; $5a6c: $d2 $ea $ff

	rst $38                                          ; $5a6f: $ff
	ld h, a                                          ; $5a70: $67
	ld a, c                                          ; $5a71: $79
	and l                                            ; $5a72: $a5
	sbc e                                            ; $5a73: $9b
	sbc [hl]                                         ; $5a74: $9e
	adc [hl]                                         ; $5a75: $8e
	jr nc, @+$42                                     ; $5a76: $30 $40

	ld a, d                                          ; $5a78: $7a
	pop de                                           ; $5a79: $d1
	ld a, a                                          ; $5a7a: $7f
	or h                                             ; $5a7b: $b4
	sbc [hl]                                         ; $5a7c: $9e
	ld b, b                                          ; $5a7d: $40
	jp c, Jump_05d_78ff                              ; $5a7e: $da $ff $78

	sub b                                            ; $5a81: $90
	sbc c                                            ; $5a82: $99
	ld bc, $0806                                     ; $5a83: $01 $06 $08
	db $10                                           ; $5a86: $10

jr_05d_5a87:
	ld h, b                                          ; $5a87: $60
	add b                                            ; $5a88: $80
	reti                                             ; $5a89: $d9


	rst $38                                          ; $5a8a: $ff
	sbc h                                            ; $5a8b: $9c
	ld a, [hl+]                                      ; $5a8c: $2a
	ld d, c                                          ; $5a8d: $51
	and b                                            ; $5a8e: $a0
	ld [hl], b                                       ; $5a8f: $70
	ld c, h                                          ; $5a90: $4c
	reti                                             ; $5a91: $d9


	rst $38                                          ; $5a92: $ff
	sbc $02                                          ; $5a93: $de $02
	ld a, d                                          ; $5a95: $7a
	add [hl]                                         ; $5a96: $86
	add h                                            ; $5a97: $84
	ld [bc], a                                       ; $5a98: $02
	ld hl, $0303                                     ; $5a99: $21 $03 $03
	jp $f8f1                                         ; $5a9c: $c3 $f1 $f8


	db $fc                                           ; $5a9f: $fc
	ld a, l                                          ; $5aa0: $7d
	ld e, $a7                                        ; $5aa1: $1e $a7
	add a                                            ; $5aa3: $87
	ld d, e                                          ; $5aa4: $53
	jp hl                                            ; $5aa5: $e9


	ld h, c                                          ; $5aa6: $61
	rra                                              ; $5aa7: $1f

jr_05d_5aa8:
	add hl, bc                                       ; $5aa8: $09
	jr nc, jr_05d_5aa8                               ; $5aa9: $30 $fd

	rst $38                                          ; $5aab: $ff
	cp $ff                                           ; $5aac: $fe $ff
	ld a, a                                          ; $5aae: $7f
	ld e, $81                                        ; $5aaf: $1e $81
	ret nz                                           ; $5ab1: $c0

	xor $7b                                          ; $5ab2: $ee $7b
	jr jr_05d_5b2f                                   ; $5ab4: $18 $79

	ld [$7f80], sp                                   ; $5ab6: $08 $80 $7f
	add [hl]                                         ; $5ab9: $86
	inc c                                            ; $5aba: $0c
	jr jr_05d_5ac5                                   ; $5abb: $18 $08

	ret nz                                           ; $5abd: $c0

	jr nz, @-$06                                     ; $5abe: $20 $f8

	ld a, [hl]                                       ; $5ac0: $7e
	ret nc                                           ; $5ac1: $d0

	ldh a, [c]                                       ; $5ac2: $f2
	rst SubAFromBC                                          ; $5ac3: $e7
	rrca                                             ; $5ac4: $0f

jr_05d_5ac5:
	rra                                              ; $5ac5: $1f
	rrca                                             ; $5ac6: $0f
	add b                                            ; $5ac7: $80
	pop af                                           ; $5ac8: $f1
	ld b, b                                          ; $5ac9: $40
	ld [hl], $0b                                     ; $5aca: $36 $0b
	rla                                              ; $5acc: $17
	rra                                              ; $5acd: $1f
	ld c, $00                                        ; $5ace: $0e $00
	nop                                              ; $5ad0: $00
	db $10                                           ; $5ad1: $10
	jr jr_05d_5ae8                                   ; $5ad2: $18 $14

	ld [de], a                                       ; $5ad4: $12
	ld hl, $9d21                                     ; $5ad5: $21 $21 $9d
	ld h, c                                          ; $5ad8: $61
	jp nz, $f87b                                     ; $5ad9: $c2 $7b $f8

	sub a                                            ; $5adc: $97
	ld d, $2f                                        ; $5add: $16 $2f
	cpl                                              ; $5adf: $2f
	ld a, a                                          ; $5ae0: $7f
	rst SubAFromDE                                          ; $5ae1: $df
	inc b                                            ; $5ae2: $04
	jr jr_05d_5b05                                   ; $5ae3: $18 $20

	ld [hl], a                                       ; $5ae5: $77
	ld a, [hl]                                       ; $5ae6: $7e
	ld a, l                                          ; $5ae7: $7d

jr_05d_5ae8:
	dec hl                                           ; $5ae8: $2b
	ld a, [hl]                                       ; $5ae9: $7e
	inc b                                            ; $5aea: $04
	ld [hl], e                                       ; $5aeb: $73
	ld b, b                                          ; $5aec: $40
	ld l, [hl]                                       ; $5aed: $6e
	add hl, hl                                       ; $5aee: $29
	ld e, a                                          ; $5aef: $5f
	sub b                                            ; $5af0: $90
	ld a, l                                          ; $5af1: $7d
	or a                                             ; $5af2: $b7
	adc b                                            ; $5af3: $88
	ei                                               ; $5af4: $fb
	reti                                             ; $5af5: $d9


	db $fd                                           ; $5af6: $fd
	db $ed                                           ; $5af7: $ed
	ld l, [hl]                                       ; $5af8: $6e
	halt                                             ; $5af9: $76
	rst $38                                          ; $5afa: $ff
	rst FarCall                                          ; $5afb: $f7
	ldh a, [$b0]                                     ; $5afc: $f0 $b0
	sbc b                                            ; $5afe: $98
	sbc b                                            ; $5aff: $98
	ret c                                            ; $5b00: $d8

	call z, Call_05d_7fff                            ; $5b01: $cc $ff $7f
	rst $38                                          ; $5b04: $ff

jr_05d_5b05:
	db $fc                                           ; $5b05: $fc
	pop af                                           ; $5b06: $f1
	rst SubAFromBC                                          ; $5b07: $e7
	rst GetHLinHL                                          ; $5b08: $cf
	sbc h                                            ; $5b09: $9c
	add b                                            ; $5b0a: $80
	ld [hl], d                                       ; $5b0b: $72
	ld a, [de]                                       ; $5b0c: $1a
	sub e                                            ; $5b0d: $93
	inc bc                                           ; $5b0e: $03
	rlca                                             ; $5b0f: $07
	ld b, d                                          ; $5b10: $42
	ld [hl+], a                                      ; $5b11: $22
	ld [hl], d                                       ; $5b12: $72
	ld c, d                                          ; $5b13: $4a
	rst $38                                          ; $5b14: $ff
	jp $0c04                                         ; $5b15: $c3 $04 $0c


	rst $38                                          ; $5b18: $ff
	rst $38                                          ; $5b19: $ff
	ld a, c                                          ; $5b1a: $79
	jp $e39b                                         ; $5b1b: $c3 $9b $e3


	db $f4                                           ; $5b1e: $f4
	inc c                                            ; $5b1f: $0c
	ld e, a                                          ; $5b20: $5f
	ld [hl], h                                       ; $5b21: $74
	ld a, d                                          ; $5b22: $7a
	sbc e                                            ; $5b23: $9b
	dec a                                            ; $5b24: $3d
	sbc [hl]                                         ; $5b25: $9e
	ld c, [hl]                                       ; $5b26: $4e
	and b                                            ; $5b27: $a0
	sbc $80                                          ; $5b28: $de $80
	sbc e                                            ; $5b2a: $9b
	ret nz                                           ; $5b2b: $c0

	jp nz, Jump_05d_71e1                             ; $5b2c: $c2 $e1 $71

jr_05d_5b2f:
	ld a, b                                          ; $5b2f: $78
	call $fede                                       ; $5b30: $cd $de $fe
	sbc e                                            ; $5b33: $9b
	ld a, h                                          ; $5b34: $7c
	inc a                                            ; $5b35: $3c
	inc bc                                           ; $5b36: $03
	inc bc                                           ; $5b37: $03
	db $dd                                           ; $5b38: $dd
	ld bc, $8392                                     ; $5b39: $01 $92 $83
	jp $b8ac                                         ; $5b3c: $c3 $ac $b8


	sbc b                                            ; $5b3f: $98
	sub c                                            ; $5b40: $91
	add d                                            ; $5b41: $82
	add h                                            ; $5b42: $84
	add h                                            ; $5b43: $84
	ld [$c7d3], sp                                   ; $5b44: $08 $d3 $c7
	rst SubAFromBC                                          ; $5b47: $e7
	ld [hl], c                                       ; $5b48: $71
	and b                                            ; $5b49: $a0
	add a                                            ; $5b4a: $87
	ld b, d                                          ; $5b4b: $42
	add a                                            ; $5b4c: $87
	adc a                                            ; $5b4d: $8f
	dec de                                           ; $5b4e: $1b
	dec de                                           ; $5b4f: $1b
	add hl, de                                       ; $5b50: $19
	dec e                                            ; $5b51: $1d
	inc c                                            ; $5b52: $0c
	db $fd                                           ; $5b53: $fd
	ld hl, sp-$10                                    ; $5b54: $f8 $f0
	db $e4                                           ; $5b56: $e4
	db $e4                                           ; $5b57: $e4
	and $e2                                          ; $5b58: $e6 $e2
	di                                               ; $5b5a: $f3
	ld l, [hl]                                       ; $5b5b: $6e
	ld [hl], l                                       ; $5b5c: $75
	ld l, [hl]                                       ; $5b5d: $6e
	ld e, l                                          ; $5b5e: $5d
	adc d                                            ; $5b5f: $8a
	rst JumpTable                                          ; $5b60: $c7
	add hl, de                                       ; $5b61: $19
	ldh a, [$72]                                     ; $5b62: $f0 $72
	di                                               ; $5b64: $f3
	sbc b                                            ; $5b65: $98
	ccf                                              ; $5b66: $3f
	rst $38                                          ; $5b67: $ff
	rrca                                             ; $5b68: $0f
	pop hl                                           ; $5b69: $e1
	ld h, c                                          ; $5b6a: $61
	ldh [rLCDC], a                                   ; $5b6b: $e0 $40
	ld [hl], h                                       ; $5b6d: $74
	rst SubAFromHL                                          ; $5b6e: $d7
	reti                                             ; $5b6f: $d9


	rst $38                                          ; $5b70: $ff
	sub h                                            ; $5b71: $94
	ld a, [$fbf7]                                    ; $5b72: $fa $f7 $fb
	ei                                               ; $5b75: $fb
	ld a, l                                          ; $5b76: $7d
	ld a, a                                          ; $5b77: $7f
	ld a, $3f                                        ; $5b78: $3e $3f
	adc $e6                                          ; $5b7a: $ce $e6
	ldh [c], a                                       ; $5b7c: $e2

Jump_05d_5b7d:
	ld a, c                                          ; $5b7d: $79
	ld [hl], d                                       ; $5b7e: $72
	rst SubAFromDE                                          ; $5b7f: $df

jr_05d_5b80:
	db $fc                                           ; $5b80: $fc
	sub a                                            ; $5b81: $97
	pop hl                                           ; $5b82: $e1
	or $da                                           ; $5b83: $f6 $da
	add d                                            ; $5b85: $82
	ld bc, $8000                                     ; $5b86: $01 $00 $80
	ld b, b                                          ; $5b89: $40
	ld a, d                                          ; $5b8a: $7a
	add b                                            ; $5b8b: $80
	ld l, d                                          ; $5b8c: $6a
	ret nz                                           ; $5b8d: $c0

	ld a, h                                          ; $5b8e: $7c
	ld b, c                                          ; $5b8f: $41
	ld a, l                                          ; $5b90: $7d
	ccf                                              ; $5b91: $3f
	sbc [hl]                                         ; $5b92: $9e
	ld h, b                                          ; $5b93: $60
	ld a, b                                          ; $5b94: $78
	ldh a, [$db]                                     ; $5b95: $f0 $db
	rst $38                                          ; $5b97: $ff
	ld sp, hl                                        ; $5b98: $f9
	reti                                             ; $5b99: $d9


	rst $38                                          ; $5b9a: $ff
	sbc h                                            ; $5b9b: $9c
	ld de, $0408                                     ; $5b9c: $11 $08 $04
	ld [hl], d                                       ; $5b9f: $72
	cp [hl]                                          ; $5ba0: $be
	sub [hl]                                         ; $5ba1: $96
	ld l, [hl]                                       ; $5ba2: $6e
	rst FarCall                                          ; $5ba3: $f7
	ei                                               ; $5ba4: $fb
	db $fd                                           ; $5ba5: $fd
	db $fd                                           ; $5ba6: $fd
	cp $ff                                           ; $5ba7: $fe $ff
	ldh a, [rP1]                                     ; $5ba9: $f0 $00
	sbc $80                                          ; $5bab: $de $80
	rst SubAFromDE                                          ; $5bad: $df
	ld b, b                                          ; $5bae: $40
	ld a, a                                          ; $5baf: $7f
	inc sp                                           ; $5bb0: $33
	sbc c                                            ; $5bb1: $99
	ldh a, [$78]                                     ; $5bb2: $f0 $78
	ld a, a                                          ; $5bb4: $7f
	ld a, a                                          ; $5bb5: $7f
	cp a                                             ; $5bb6: $bf
	cp a                                             ; $5bb7: $bf
	ld a, e                                          ; $5bb8: $7b
	ld l, $98                                        ; $5bb9: $2e $98
	ld [bc], a                                       ; $5bbb: $02

jr_05d_5bbc:
	inc b                                            ; $5bbc: $04
	ld [rRAMG], sp                                   ; $5bbd: $08 $00 $00
	jr nz, jr_05d_5c02                               ; $5bc0: $20 $40

	ld a, e                                          ; $5bc2: $7b
	db $dd                                           ; $5bc3: $dd
	ld a, c                                          ; $5bc4: $79
	db $e4                                           ; $5bc5: $e4
	ld a, e                                          ; $5bc6: $7b
	ret z                                            ; $5bc7: $c8

	ld a, d                                          ; $5bc8: $7a
	ld h, h                                          ; $5bc9: $64
	ld a, [hl]                                       ; $5bca: $7e
	inc hl                                           ; $5bcb: $23
	ld a, a                                          ; $5bcc: $7f
	ldh a, [$7f]                                     ; $5bcd: $f0 $7f
	ld hl, sp+$75                                    ; $5bcf: $f8 $75
	and $7f                                          ; $5bd1: $e6 $7f
	sbc e                                            ; $5bd3: $9b
	sub h                                            ; $5bd4: $94
	jp nz, $1424                                     ; $5bd5: $c2 $24 $14

	jr jr_05d_5c3e                                   ; $5bd8: $18 $64

	ld [bc], a                                       ; $5bda: $02
	ld bc, $e702                                     ; $5bdb: $01 $02 $e7
	ld h, a                                          ; $5bde: $67
	rst $38                                          ; $5bdf: $ff
	ld [hl], h                                       ; $5be0: $74
	sub a                                            ; $5be1: $97
	sub [hl]                                         ; $5be2: $96
	cp $01                                           ; $5be3: $fe $01
	ld [bc], a                                       ; $5be5: $02
	rrca                                             ; $5be6: $0f
	jr nc, jr_05d_5c35                               ; $5be7: $30 $4c

	sbc b                                            ; $5be9: $98
	jr nc, jr_05d_5c4c                               ; $5bea: $30 $60

	ld a, d                                          ; $5bec: $7a
	add c                                            ; $5bed: $81
	sub d                                            ; $5bee: $92
	ldh a, [$c5]                                     ; $5bef: $f0 $c5
	adc b                                            ; $5bf1: $88
	ld [de], a                                       ; $5bf2: $12
	daa                                              ; $5bf3: $27
	add b                                            ; $5bf4: $80
	ld b, b                                          ; $5bf5: $40
	jr nc, jr_05d_5b80                               ; $5bf6: $30 $88

	ld b, [hl]                                       ; $5bf8: $46
	ld hl, $0810                                     ; $5bf9: $21 $10 $08
	ld a, e                                          ; $5bfc: $7b
	jp nc, $8f87                                     ; $5bfd: $d2 $87 $8f

	rst JumpTable                                          ; $5c00: $c7
	and c                                            ; $5c01: $a1

jr_05d_5c02:
	db $10                                           ; $5c02: $10
	ld [$3e7e], sp                                   ; $5c03: $08 $7e $3e
	ccf                                              ; $5c06: $3f
	rra                                              ; $5c07: $1f
	rrca                                             ; $5c08: $0f
	adc a                                            ; $5c09: $8f
	ld b, a                                          ; $5c0a: $47
	inc hl                                           ; $5c0b: $23
	call nz, $e2e2                                   ; $5c0c: $c4 $e2 $e2
	rst $38                                          ; $5c0f: $ff
	ld sp, hl                                        ; $5c10: $f9
	ld hl, sp+$7c                                    ; $5c11: $f8 $7c
	ld a, $38                                        ; $5c13: $3e $38
	ld [hl], b                                       ; $5c15: $70
	and $71                                          ; $5c16: $e6 $71
	ld sp, hl                                        ; $5c18: $f9
	ld a, [hl]                                       ; $5c19: $7e
	ld l, e                                          ; $5c1a: $6b
	add b                                            ; $5c1b: $80
	add hl, sp                                       ; $5c1c: $39
	jr nz, jr_05d_5c5f                               ; $5c1d: $20 $40

	pop bc                                           ; $5c1f: $c1
	ld b, c                                          ; $5c20: $41
	ld [hl+], a                                      ; $5c21: $22
	add hl, de                                       ; $5c22: $19
	inc l                                            ; $5c23: $2c
	ld e, d                                          ; $5c24: $5a
	cp e                                             ; $5c25: $bb
	or a                                             ; $5c26: $b7
	ld [hl], a                                       ; $5c27: $77
	ld h, [hl]                                       ; $5c28: $66
	ld h, [hl]                                       ; $5c29: $66
	ld sp, hl                                        ; $5c2a: $f9
	db $ec                                           ; $5c2b: $ec
	jp z, $9089                                      ; $5c2c: $ca $89 $90

	db $10                                           ; $5c2f: $10
	jr nz, jr_05d_5c52                               ; $5c30: $20 $20

	daa                                              ; $5c32: $27
	sbc e                                            ; $5c33: $9b
	ld d, [hl]                                       ; $5c34: $56

jr_05d_5c35:
	ld sp, $aedc                                     ; $5c35: $31 $dc $ae
	sub a                                            ; $5c38: $97
	sub e                                            ; $5c39: $93
	jr c, jr_05d_5bbc                                ; $5c3a: $38 $80

	sbc h                                            ; $5c3c: $9c
	ld d, a                                          ; $5c3d: $57

jr_05d_5c3e:
	ld sp, $befc                                     ; $5c3e: $31 $fc $be
	sbc a                                            ; $5c41: $9f
	sbc a                                            ; $5c42: $9f
	inc a                                            ; $5c43: $3c
	sbc b                                            ; $5c44: $98
	ret nz                                           ; $5c45: $c0

	nop                                              ; $5c46: $00
	jp $853e                                         ; $5c47: $c3 $3e $85


	ld hl, sp-$3d                                    ; $5c4a: $f8 $c3

jr_05d_5c4c:
	ld h, a                                          ; $5c4c: $67
	ccf                                              ; $5c4d: $3f
	rst $38                                          ; $5c4e: $ff
	rst $38                                          ; $5c4f: $ff
	ccf                                              ; $5c50: $3f
	add l                                            ; $5c51: $85

jr_05d_5c52:
	ld hl, sp+$10                                    ; $5c52: $f8 $10
	inc hl                                           ; $5c54: $23
	ld b, a                                          ; $5c55: $47
	adc a                                            ; $5c56: $8f
	rlca                                             ; $5c57: $07
	inc bc                                           ; $5c58: $03
	add c                                            ; $5c59: $81
	ld [hl], b                                       ; $5c5a: $70
	ld a, [hl]                                       ; $5c5b: $7e
	ld a, d                                          ; $5c5c: $7a
	ld a, [hl]                                       ; $5c5d: $7e
	rst GetHLinHL                                          ; $5c5e: $cf

jr_05d_5c5f:
	ld a, d                                          ; $5c5f: $7a
	rla                                              ; $5c60: $17
	sbc e                                            ; $5c61: $9b
	ld a, a                                          ; $5c62: $7f
	adc h                                            ; $5c63: $8c
	adc d                                            ; $5c64: $8a
	add $7a                                          ; $5c65: $c6 $7a
	cp b                                             ; $5c67: $b8
	adc h                                            ; $5c68: $8c
	dec a                                            ; $5c69: $3d
	ld a, a                                          ; $5c6a: $7f
	ld [hl], e                                       ; $5c6b: $73
	ld [hl], l                                       ; $5c6c: $75
	add hl, sp                                       ; $5c6d: $39
	db $10                                           ; $5c6e: $10
	db $10                                           ; $5c6f: $10
	ld hl, $c3e3                                     ; $5c70: $21 $e3 $c3
	rst AddAOntoHL                                          ; $5c73: $ef
	ld d, c                                          ; $5c74: $51
	daa                                              ; $5c75: $27
	ld c, [hl]                                       ; $5c76: $4e
	sub e                                            ; $5c77: $93
	ld h, $67                                        ; $5c78: $26 $67
	sub e                                            ; $5c7a: $93
	rra                                              ; $5c7b: $1f
	ld [hl], l                                       ; $5c7c: $75
	ld [bc], a                                       ; $5c7d: $02
	ld a, a                                          ; $5c7e: $7f
	adc a                                            ; $5c7f: $8f
	sub a                                            ; $5c80: $97
	db $fc                                           ; $5c81: $fc
	push de                                          ; $5c82: $d5
	ld [$dff5], a                                    ; $5c83: $ea $f5 $df
	rst $38                                          ; $5c86: $ff
	xor h                                            ; $5c87: $ac
	sbc $72                                          ; $5c88: $de $72
	sub h                                            ; $5c8a: $94
	sub d                                            ; $5c8b: $92
	ccf                                              ; $5c8c: $3f
	rst SubAFromDE                                          ; $5c8d: $df
	ld h, a                                          ; $5c8e: $67
	ld sp, $af7f                                     ; $5c8f: $31 $7f $af
	rst JumpTable                                          ; $5c92: $c7
	add a                                            ; $5c93: $87
	add e                                            ; $5c94: $83
	ld b, e                                          ; $5c95: $43
	ld h, c                                          ; $5c96: $61
	or b                                             ; $5c97: $b0
	cp $71                                           ; $5c98: $fe $71
	ld [hl], d                                       ; $5c9a: $72
	rst SubAFromDE                                          ; $5c9b: $df
	rst $38                                          ; $5c9c: $ff
	ld a, [hl]                                       ; $5c9d: $7e
	jp nc, $397d                                     ; $5c9e: $d2 $7d $39

	rst SubAFromDE                                          ; $5ca1: $df
	add sp, -$63                                     ; $5ca2: $e8 $9d
	db $f4                                           ; $5ca4: $f4
	db $fc                                           ; $5ca5: $fc
	ld a, e                                          ; $5ca6: $7b
	inc hl                                           ; $5ca7: $23
	sub [hl]                                         ; $5ca8: $96
	rra                                              ; $5ca9: $1f
	adc a                                            ; $5caa: $8f
	rst GetHLinHL                                          ; $5cab: $cf
	rst SubAFromBC                                          ; $5cac: $e7
	rst FarCall                                          ; $5cad: $f7
	ld [$0404], sp                                   ; $5cae: $08 $04 $04
	ld [bc], a                                       ; $5cb1: $02
	sbc $01                                          ; $5cb2: $de $01
	ld h, d                                          ; $5cb4: $62
	ret nc                                           ; $5cb5: $d0

	db $fd                                           ; $5cb6: $fd

Jump_05d_5cb7:
	ld a, a                                          ; $5cb7: $7f
	inc l                                            ; $5cb8: $2c
	sbc l                                            ; $5cb9: $9d
	inc hl                                           ; $5cba: $23
	sbc h                                            ; $5cbb: $9c
	ld b, [hl]                                       ; $5cbc: $46
	or b                                             ; $5cbd: $b0
	ld a, [hl]                                       ; $5cbe: $7e
	sbc h                                            ; $5cbf: $9c
	ld a, c                                          ; $5cc0: $79
	ld d, [hl]                                       ; $5cc1: $56
	ld a, [hl]                                       ; $5cc2: $7e
	ld bc, $0f9e                                     ; $5cc3: $01 $9e $0f
	ld hl, sp-$64                                    ; $5cc6: $f8 $9c
	rlca                                             ; $5cc8: $07
	ccf                                              ; $5cc9: $3f
	ld a, [hl]                                       ; $5cca: $7e
	ld a, e                                          ; $5ccb: $7b
	ld l, l                                          ; $5ccc: $6d
	adc h                                            ; $5ccd: $8c
	ldh [rSCX], a                                    ; $5cce: $e0 $43
	rrca                                             ; $5cd0: $0f
	ld b, $01                                        ; $5cd1: $06 $01
	ld bc, $0202                                     ; $5cd3: $01 $02 $02
	inc b                                            ; $5cd6: $04
	nop                                              ; $5cd7: $00
	ldh [$f8], a                                     ; $5cd8: $e0 $f8
	ld bc, $0301                                     ; $5cda: $01 $01 $03
	inc bc                                           ; $5cdd: $03
	rlca                                             ; $5cde: $07
	ld c, h                                          ; $5cdf: $4c
	add e                                            ; $5ce0: $83
	ld [hl], c                                       ; $5ce1: $71
	rst SubAFromHL                                          ; $5ce2: $d7
	sbc [hl]                                         ; $5ce3: $9e
	nop                                              ; $5ce4: $00
	ld [hl], d                                       ; $5ce5: $72
	ld h, d                                          ; $5ce6: $62
	sbc $ff                                          ; $5ce7: $de $ff
	adc a                                            ; $5ce9: $8f
	inc b                                            ; $5cea: $04
	adc c                                            ; $5ceb: $89
	dec bc                                           ; $5cec: $0b
	ld d, $14                                        ; $5ced: $16 $14

jr_05d_5cef:
	db $10                                           ; $5cef: $10
	ld [$fc04], sp                                   ; $5cf0: $08 $04 $fc
	ld hl, sp-$07                                    ; $5cf3: $f8 $f9

jr_05d_5cf5:
	ldh a, [c]                                       ; $5cf5: $f2
	db $f4                                           ; $5cf6: $f4
	pop af                                           ; $5cf7: $f1
	ld hl, sp-$02                                    ; $5cf8: $f8 $fe
	ld [hl], a                                       ; $5cfa: $77
	cp b                                             ; $5cfb: $b8
	db $fd                                           ; $5cfc: $fd
	sbc d                                            ; $5cfd: $9a
	ld b, d                                          ; $5cfe: $42
	add b                                            ; $5cff: $80
	ld [$881c], sp                                   ; $5d00: $08 $1c $88
	ld a, e                                          ; $5d03: $7b
	di                                               ; $5d04: $f3
	sbc l                                            ; $5d05: $9d
	inc c                                            ; $5d06: $0c
	ld b, $de                                        ; $5d07: $06 $de
	rlca                                             ; $5d09: $07
	rst SubAFromDE                                          ; $5d0a: $df
	rrca                                             ; $5d0b: $0f
	adc c                                            ; $5d0c: $89
	add hl, de                                       ; $5d0d: $19
	ld [$0604], sp                                   ; $5d0e: $08 $04 $06
	rlca                                             ; $5d11: $07
	inc b                                            ; $5d12: $04
	inc c                                            ; $5d13: $0c
	ld a, [bc]                                       ; $5d14: $0a
	ld de, $0911                                     ; $5d15: $11 $11 $09
	add hl, bc                                       ; $5d18: $09
	db $e4                                           ; $5d19: $e4
	add h                                            ; $5d1a: $84
	ld [bc], a                                       ; $5d1b: $02
	ld bc, $1f81                                     ; $5d1c: $01 $81 $1f
	rrca                                             ; $5d1f: $0f
	rrca                                             ; $5d20: $0f
	add a                                            ; $5d21: $87
	rlca                                             ; $5d22: $07
	ld a, c                                          ; $5d23: $79
	cp h                                             ; $5d24: $bc
	ld a, [hl]                                       ; $5d25: $7e
	add $88                                          ; $5d26: $c6 $88
	xor $e3                                          ; $5d28: $ee $e3
	db $f4                                           ; $5d2a: $f4
	or $fa                                           ; $5d2b: $f6 $fa
	db $fd                                           ; $5d2d: $fd
	inc hl                                           ; $5d2e: $23
	ldh a, [c]                                       ; $5d2f: $f2
	ld a, $bf                                        ; $5d30: $3e $bf
	sbc e                                            ; $5d32: $9b
	sbc c                                            ; $5d33: $99
	call Call_05d_6426                               ; $5d34: $cd $26 $64
	call nz, $0006                                   ; $5d37: $c4 $06 $00
	ldh [$31], a                                     ; $5d3a: $e0 $31
	dec de                                           ; $5d3c: $1b
	ld c, $20                                        ; $5d3d: $0e $20
	ld a, b                                          ; $5d3f: $78
	jp c, $da7d                                      ; $5d40: $da $7d $da

	add h                                            ; $5d43: $84
	pop af                                           ; $5d44: $f1
	rst $38                                          ; $5d45: $ff
	adc c                                            ; $5d46: $89
	call nz, $e1e2                                   ; $5d47: $c4 $e2 $e1
	ldh a, [$f0]                                     ; $5d4a: $f0 $f0
	ld hl, sp-$08                                    ; $5d4c: $f8 $f8
	adc a                                            ; $5d4e: $8f
	rst JumpTable                                          ; $5d4f: $c7
	jp $a0a1                                         ; $5d50: $c3 $a1 $a0


	sub b                                            ; $5d53: $90
	sub b                                            ; $5d54: $90
	adc b                                            ; $5d55: $88
	ld hl, sp-$02                                    ; $5d56: $f8 $fe
	ld [hl], e                                       ; $5d58: $73
	jr c, jr_05d_5cef                                ; $5d59: $38 $94

	ld c, d                                          ; $5d5b: $4a
	daa                                              ; $5d5c: $27
	db $10                                           ; $5d5d: $10
	ld b, b                                          ; $5d5e: $40
	ld a, e                                          ; $5d5f: $7b
	add hl, de                                       ; $5d60: $19
	sub c                                            ; $5d61: $91
	db $f4                                           ; $5d62: $f4
	ld a, d                                          ; $5d63: $7a
	ccf                                              ; $5d64: $3f
	rra                                              ; $5d65: $1f
	ld [$9009], sp                                   ; $5d66: $08 $09 $90
	ld d, b                                          ; $5d69: $50
	db $10                                           ; $5d6a: $10
	jr jr_05d_5cf5                                   ; $5d6b: $18 $88

	ret                                              ; $5d6d: $c9


	rrca                                             ; $5d6e: $0f
	rrca                                             ; $5d6f: $0f
	sbc $1f                                          ; $5d70: $de $1f
	rst SubAFromDE                                          ; $5d72: $df
	rrca                                             ; $5d73: $0f
	sub e                                            ; $5d74: $93
	adc a                                            ; $5d75: $8f
	ei                                               ; $5d76: $fb
	ld a, [$e5f6]                                    ; $5d77: $fa $f6 $e5
	ret z                                            ; $5d7a: $c8

	or b                                             ; $5d7b: $b0
	ld b, d                                          ; $5d7c: $42
	add e                                            ; $5d7d: $83
	add a                                            ; $5d7e: $87
	rlca                                             ; $5d7f: $07
	rrca                                             ; $5d80: $0f
	ld a, b                                          ; $5d81: $78
	cp $90                                           ; $5d82: $fe $90
	db $fd                                           ; $5d84: $fd
	db $fc                                           ; $5d85: $fc
	add hl, de                                       ; $5d86: $19
	inc a                                            ; $5d87: $3c
	ld a, $3f                                        ; $5d88: $3e $3f
	sbc a                                            ; $5d8a: $9f
	ld c, a                                          ; $5d8b: $4f
	ld b, a                                          ; $5d8c: $47
	daa                                              ; $5d8d: $27
	xor $c7                                          ; $5d8e: $ee $c7
	jp $e0c1                                         ; $5d90: $c3 $c1 $e0


	ld a, e                                          ; $5d93: $7b
	cp b                                             ; $5d94: $b8
	add b                                            ; $5d95: $80
	rst FarCall                                          ; $5d96: $f7
	db $fd                                           ; $5d97: $fd
	ld a, d                                          ; $5d98: $7a
	dec a                                            ; $5d99: $3d
	sbc [hl]                                         ; $5d9a: $9e
	rst GetHLinHL                                          ; $5d9b: $cf
	rst SubAFromBC                                          ; $5d9c: $e7
	di                                               ; $5d9d: $f3
	jr @+$10                                         ; $5d9e: $18 $0e

	add a                                            ; $5da0: $87
	jp Jump_05d_70e1                                 ; $5da1: $c3 $e1 $70


	jr c, jr_05d_5dc2                                ; $5da4: $38 $1c

	ld a, b                                          ; $5da6: $78
	db $fc                                           ; $5da7: $fc
	ld l, a                                          ; $5da8: $6f
	ccf                                              ; $5da9: $3f
	sbc l                                            ; $5daa: $9d
	rst JumpTable                                          ; $5dab: $c7
	pop hl                                           ; $5dac: $e1
	ld hl, sp-$01                                    ; $5dad: $f8 $ff
	ccf                                              ; $5daf: $3f
	sbc a                                            ; $5db0: $9f
	rst JumpTable                                          ; $5db1: $c7
	db $e3                                           ; $5db2: $e3
	ld a, b                                          ; $5db3: $78
	ld a, $9d                                        ; $5db4: $3e $9d
	rra                                              ; $5db6: $1f
	cp $7a                                           ; $5db7: $fe $7a
	rst JumpTable                                          ; $5db9: $c7
	sbc b                                            ; $5dba: $98
	sbc a                                            ; $5dbb: $9f
	ld a, a                                          ; $5dbc: $7f
	rra                                              ; $5dbd: $1f
	dec b                                            ; $5dbe: $05
	db $eb                                           ; $5dbf: $eb
	db $fd                                           ; $5dc0: $fd
	ei                                               ; $5dc1: $fb

jr_05d_5dc2:
	ld a, c                                          ; $5dc2: $79
	or c                                             ; $5dc3: $b1
	halt                                             ; $5dc4: $76
	ldh [$7f], a                                     ; $5dc5: $e0 $7f
	ld d, h                                          ; $5dc7: $54
	sbc e                                            ; $5dc8: $9b
	add d                                            ; $5dc9: $82
	call nz, $c0f8                                   ; $5dca: $c4 $f8 $c0
	reti                                             ; $5dcd: $d9


	rst $38                                          ; $5dce: $ff
	sbc l                                            ; $5dcf: $9d
	ret nz                                           ; $5dd0: $c0

	and b                                            ; $5dd1: $a0
	ld a, e                                          ; $5dd2: $7b
	inc de                                           ; $5dd3: $13
	ld a, c                                          ; $5dd4: $79
	adc [hl]                                         ; $5dd5: $8e
	reti                                             ; $5dd6: $d9


	rst $38                                          ; $5dd7: $ff
	ld c, b                                          ; $5dd8: $48
	nop                                              ; $5dd9: $00
	sbc d                                            ; $5dda: $9a
	inc sp                                           ; $5ddb: $33
	inc [hl]                                         ; $5ddc: $34
	ld b, h                                          ; $5ddd: $44
	ld b, h                                          ; $5dde: $44
	ld b, e                                          ; $5ddf: $43
	db $db                                           ; $5de0: $db
	inc sp                                           ; $5de1: $33
	ld a, e                                          ; $5de2: $7b
	or $9d                                           ; $5de3: $f6 $9d
	ld b, h                                          ; $5de5: $44
	ld d, e                                          ; $5de6: $53
	ld l, a                                          ; $5de7: $6f
	or $9b                                           ; $5de8: $f6 $9b
	ld b, l                                          ; $5dea: $45
	ld d, l                                          ; $5deb: $55
	ld d, l                                          ; $5dec: $55
	ld b, h                                          ; $5ded: $44
	ld e, a                                          ; $5dee: $5f
	or $6f                                           ; $5def: $f6 $6f
	ldh [$7f], a                                     ; $5df1: $e0 $7f
	or $9c                                           ; $5df3: $f6 $9c
	ld d, [hl]                                       ; $5df5: $56
	ld [hl], a                                       ; $5df6: $77
	ld [hl], e                                       ; $5df7: $73
	ld l, e                                          ; $5df8: $6b
	db $eb                                           ; $5df9: $eb
	sbc h                                            ; $5dfa: $9c
	ld d, a                                          ; $5dfb: $57
	halt                                             ; $5dfc: $76
	ld h, [hl]                                       ; $5dfd: $66
	ld l, a                                          ; $5dfe: $6f
	or $9e                                           ; $5dff: $f6 $9e
	ld b, a                                          ; $5e01: $47
	sbc $66                                          ; $5e02: $de $66
	ld l, e                                          ; $5e04: $6b
	or $7f                                           ; $5e05: $f6 $7f
	db $ed                                           ; $5e07: $ed
	ld l, a                                          ; $5e08: $6f
	or $9d                                           ; $5e09: $f6 $9d
	inc sp                                           ; $5e0b: $33
	ld [hl], $de                                     ; $5e0c: $36 $de
	ld h, [hl]                                       ; $5e0e: $66
	sbc [hl]                                         ; $5e0f: $9e
	ld h, e                                          ; $5e10: $63
	call c, $9d33                                    ; $5e11: $dc $33 $9d
	scf                                              ; $5e14: $37
	ld h, d                                          ; $5e15: $62
	ld l, e                                          ; $5e16: $6b
	pop hl                                           ; $5e17: $e1
	sbc d                                            ; $5e18: $9a
	scf                                              ; $5e19: $37
	ld d, l                                          ; $5e1a: $55
	ld h, d                                          ; $5e1b: $62
	ld [hl+], a                                      ; $5e1c: $22
	ld h, $7b                                        ; $5e1d: $26 $7b
	db $eb                                           ; $5e1f: $eb
	add hl, sp                                       ; $5e20: $39
	adc c                                            ; $5e21: $89
	sbc l                                            ; $5e22: $9d
	ld d, l                                          ; $5e23: $55
	xor d                                            ; $5e24: $aa
	ld [hl], a                                       ; $5e25: $77
	cp $9d                                           ; $5e26: $fe $9d
	rst $38                                          ; $5e28: $ff
	xor d                                            ; $5e29: $aa
	ld [hl], e                                       ; $5e2a: $73
	ld sp, hl                                        ; $5e2b: $f9
	sbc h                                            ; $5e2c: $9c
	ld d, l                                          ; $5e2d: $55
	nop                                              ; $5e2e: $00
	ld d, l                                          ; $5e2f: $55
	inc bc                                           ; $5e30: $03
	ldh a, [$7b]                                     ; $5e31: $f0 $7b
	ld sp, hl                                        ; $5e33: $f9
	sbc [hl]                                         ; $5e34: $9e
	ld d, a                                          ; $5e35: $57
	ld l, e                                          ; $5e36: $6b
	ldh a, [$9e]                                     ; $5e37: $f0 $9e
	xor b                                            ; $5e39: $a8
	ld l, e                                          ; $5e3a: $6b
	ldh a, [$7f]                                     ; $5e3b: $f0 $7f
	ldh a, [c]                                       ; $5e3d: $f2
	ld l, a                                          ; $5e3e: $6f
	ldh a, [$7f]                                     ; $5e3f: $f0 $7f
	ldh a, [c]                                       ; $5e41: $f2
	ld h, e                                          ; $5e42: $63
	ldh a, [$9e]                                     ; $5e43: $f0 $9e
	xor e                                            ; $5e45: $ab
	ld l, e                                          ; $5e46: $6b
	ldh a, [$9b]                                     ; $5e47: $f0 $9b
	ld d, h                                          ; $5e49: $54
	ld d, l                                          ; $5e4a: $55
	xor d                                            ; $5e4b: $aa
	ld a, a                                          ; $5e4c: $7f
	ld a, e                                          ; $5e4d: $7b
	ldh a, [c]                                       ; $5e4e: $f2

Call_05d_5e4f:
	rst SubAFromDE                                          ; $5e4f: $df
	rst $38                                          ; $5e50: $ff
	ld a, a                                          ; $5e51: $7f
	ldh a, [c]                                       ; $5e52: $f2
	sbc [hl]                                         ; $5e53: $9e
	add b                                            ; $5e54: $80
	ld a, e                                          ; $5e55: $7b
	ldh a, [c]                                       ; $5e56: $f2
	rst $38                                          ; $5e57: $ff
	ld [hl], e                                       ; $5e58: $73
	ldh [c], a                                       ; $5e59: $e2
	sbc $ff                                          ; $5e5a: $de $ff
	ld [hl], e                                       ; $5e5c: $73
	ldh [c], a                                       ; $5e5d: $e2
	cp $7b                                           ; $5e5e: $fe $7b
	ldh a, [$dc]                                     ; $5e60: $f0 $dc
	rst $38                                          ; $5e62: $ff
	ld a, e                                          ; $5e63: $7b
	ldh a, [$fc]                                     ; $5e64: $f0 $fc
	sbc [hl]                                         ; $5e66: $9e
	ld e, a                                          ; $5e67: $5f
	jp c, $9eff                                      ; $5e68: $da $ff $9e

	and b                                            ; $5e6b: $a0
	ld a, [$ffd9]                                    ; $5e6c: $fa $d9 $ff
	ld sp, hl                                        ; $5e6f: $f9
	db $db                                           ; $5e70: $db
	rst $38                                          ; $5e71: $ff
	sbc [hl]                                         ; $5e72: $9e
	cp $4f                                           ; $5e73: $fe $4f
	ldh a, [$9c]                                     ; $5e75: $f0 $9c
	cp $ac                                           ; $5e77: $fe $ac
	ld e, b                                          ; $5e79: $58
	db $fd                                           ; $5e7a: $fd
	sbc e                                            ; $5e7b: $9b
	ld bc, $0402                                     ; $5e7c: $01 $02 $04
	ld [$ffdd], sp                                   ; $5e7f: $08 $dd $ff
	sbc e                                            ; $5e82: $9b
	ret nz                                           ; $5e83: $c0

	rrca                                             ; $5e84: $0f
	ld a, a                                          ; $5e85: $7f
	rra                                              ; $5e86: $1f
	cp $8a                                           ; $5e87: $fe $8a
	ccf                                              ; $5e89: $3f
	ret nz                                           ; $5e8a: $c0

	rrca                                             ; $5e8b: $0f
	ld [hl], b                                       ; $5e8c: $70
	ld de, rIE                                     ; $5e8d: $11 $ff $ff
	ld sp, hl                                        ; $5e90: $f9
	di                                               ; $5e91: $f3
	rra                                              ; $5e92: $1f
	rst $38                                          ; $5e93: $ff
	sbc a                                            ; $5e94: $9f
	ccf                                              ; $5e95: $3f
	ld bc, $0907                                     ; $5e96: $01 $07 $09
	ldh a, [c]                                       ; $5e99: $f2
	inc e                                            ; $5e9a: $1c
	ld hl, sp-$50                                    ; $5e9b: $f8 $b0
	ld h, b                                          ; $5e9d: $60
	reti                                             ; $5e9e: $d9


	rst $38                                          ; $5e9f: $ff
	sbc [hl]                                         ; $5ea0: $9e
	add b                                            ; $5ea1: $80
	scf                                              ; $5ea2: $37
	and b                                            ; $5ea3: $a0
	sbc [hl]                                         ; $5ea4: $9e
	rlca                                             ; $5ea5: $07
	ld b, a                                          ; $5ea6: $47
	sub b                                            ; $5ea7: $90
	sbc l                                            ; $5ea8: $9d
	call nz, $2f64                                   ; $5ea9: $c4 $64 $2f
	add b                                            ; $5eac: $80
	ld e, a                                          ; $5ead: $5f
	ldh a, [hDisp1_SCX]                                     ; $5eae: $f0 $91
	ccf                                              ; $5eb0: $3f
	rra                                              ; $5eb1: $1f
	inc de                                           ; $5eb2: $13
	inc bc                                           ; $5eb3: $03
	ld bc, $5029                                     ; $5eb4: $01 $29 $50
	and b                                            ; $5eb7: $a0
	ret nz                                           ; $5eb8: $c0

	ldh [$ec], a                                     ; $5eb9: $e0 $ec
	db $fc                                           ; $5ebb: $fc
	cp $fe                                           ; $5ebc: $fe $fe
	ld [hl], a                                       ; $5ebe: $77
	scf                                              ; $5ebf: $37
	ld l, e                                          ; $5ec0: $6b
	ldh [rOCPD], a                                   ; $5ec1: $e0 $6b
	jr nc, jr_05d_5ec8                               ; $5ec3: $30 $03

	ldh a, [$9e]                                     ; $5ec5: $f0 $9e
	xor a                                            ; $5ec7: $af

jr_05d_5ec8:
	ld l, e                                          ; $5ec8: $6b
	ldh a, [$9e]                                     ; $5ec9: $f0 $9e
	ld d, b                                          ; $5ecb: $50
	daa                                              ; $5ecc: $27
	db $10                                           ; $5ecd: $10
	ld [hl], a                                       ; $5ece: $77
	xor e                                            ; $5ecf: $ab
	ld d, a                                          ; $5ed0: $57
	ldh a, [$9b]                                     ; $5ed1: $f0 $9b
	xor d                                            ; $5ed3: $aa
	ld d, b                                          ; $5ed4: $50
	xor d                                            ; $5ed5: $aa
	push af                                          ; $5ed6: $f5
	ld e, e                                          ; $5ed7: $5b
	ldh a, [$9c]                                     ; $5ed8: $f0 $9c
	push de                                          ; $5eda: $d5
	add b                                            ; $5edb: $80
	nop                                              ; $5edc: $00
	halt                                             ; $5edd: $76
	adc l                                            ; $5ede: $8d
	ld sp, hl                                        ; $5edf: $f9
	sbc [hl]                                         ; $5ee0: $9e
	xor d                                            ; $5ee1: $aa
	cp $9b                                           ; $5ee2: $fe $9b
	and b                                            ; $5ee4: $a0
	ld d, l                                          ; $5ee5: $55
	xor d                                            ; $5ee6: $aa
	push de                                          ; $5ee7: $d5
	ld h, e                                          ; $5ee8: $63
	ldh a, [$9e]                                     ; $5ee9: $f0 $9e
	ld bc, $9dfe                                     ; $5eeb: $01 $fe $9d
	ld d, h                                          ; $5eee: $54
	xor b                                            ; $5eef: $a8
	ld l, e                                          ; $5ef0: $6b
	and d                                            ; $5ef1: $a2
	rst $38                                          ; $5ef2: $ff
	sbc [hl]                                         ; $5ef3: $9e
	ld [$7c7a], a                                    ; $5ef4: $ea $7a $7c
	ld a, d                                          ; $5ef7: $7a
	sub $9e                                          ; $5ef8: $d6 $9e
	rrca                                             ; $5efa: $0f
	ei                                               ; $5efb: $fb
	ld a, a                                          ; $5efc: $7f
	ld hl, sp-$6e                                    ; $5efd: $f8 $92
	db $10                                           ; $5eff: $10
	jr nz, jr_05d_5f62                               ; $5f00: $20 $60

	ld h, e                                          ; $5f02: $63
	jp $8081                                         ; $5f03: $c3 $81 $80


	ld c, $10                                        ; $5f06: $0e $10
	jr nz, jr_05d_5f4a                               ; $5f08: $20 $40

	ld b, b                                          ; $5f0a: $40
	add c                                            ; $5f0b: $81
	ld a, d                                          ; $5f0c: $7a
	db $eb                                           ; $5f0d: $eb
	add [hl]                                         ; $5f0e: $86
	adc d                                            ; $5f0f: $8a
	db $e4                                           ; $5f10: $e4
	ld [hl], e                                       ; $5f11: $73
	ld a, [hl-]                                      ; $5f12: $3a
	sbc d                                            ; $5f13: $9a
	call z, $70e8                                    ; $5f14: $cc $e8 $70
	ld a, [bc]                                       ; $5f17: $0a
	dec b                                            ; $5f18: $05
	inc hl                                           ; $5f19: $23
	ld [de], a                                       ; $5f1a: $12
	ld [de], a                                       ; $5f1b: $12
	adc h                                            ; $5f1c: $8c
	ld c, b                                          ; $5f1d: $48
	jr nc, jr_05d_5f9f                               ; $5f1e: $30 $7f

	rst $38                                          ; $5f20: $ff
	xor a                                            ; $5f21: $af
	dec d                                            ; $5f22: $15
	ld [bc], a                                       ; $5f23: $02
	rlca                                             ; $5f24: $07
	jr jr_05d_5f8a                                   ; $5f25: $18 $63

	ret nz                                           ; $5f27: $c0

	halt                                             ; $5f28: $76
	rst GetHLinHL                                          ; $5f29: $cf
	sbc h                                            ; $5f2a: $9c
	rlca                                             ; $5f2b: $07
	rra                                              ; $5f2c: $1f
	ccf                                              ; $5f2d: $3f
	sbc $ff                                          ; $5f2e: $de $ff
	sbc e                                            ; $5f30: $9b
	db $e3                                           ; $5f31: $e3
	ld hl, sp+$04                                    ; $5f32: $f8 $04
	cp $7b                                           ; $5f34: $fe $7b
	xor d                                            ; $5f36: $aa
	sbc h                                            ; $5f37: $9c
	db $fc                                           ; $5f38: $fc
	ccf                                              ; $5f39: $3f
	ld hl, sp+$73                                    ; $5f3a: $f8 $73
	ld h, l                                          ; $5f3c: $65
	add [hl]                                         ; $5f3d: $86
	cp $f8                                           ; $5f3e: $fe $f8
	ld a, l                                          ; $5f40: $7d
	inc de                                           ; $5f41: $13
	inc c                                            ; $5f42: $0c
	add hl, bc                                       ; $5f43: $09
	nop                                              ; $5f44: $00
	ld bc, $8f07                                     ; $5f45: $01 $07 $8f
	rst $38                                          ; $5f48: $ff
	ccf                                              ; $5f49: $3f

jr_05d_5f4a:
	sbc a                                            ; $5f4a: $9f
	rst SubAFromDE                                          ; $5f4b: $df
	db $db                                           ; $5f4c: $db
	db $eb                                           ; $5f4d: $eb
	ld c, e                                          ; $5f4e: $4b
	sub e                                            ; $5f4f: $93
	ld [hl-], a                                      ; $5f50: $32
	db $d3                                           ; $5f51: $d3
	and d                                            ; $5f52: $a2
	ld h, h                                          ; $5f53: $64
	ld a, d                                          ; $5f54: $7a
	ld a, [$defa]                                    ; $5f55: $fa $fa $de
	di                                               ; $5f58: $f3
	sbc l                                            ; $5f59: $9d
	db $e3                                           ; $5f5a: $e3
	rst SubAFromBC                                          ; $5f5b: $e7
	db $dd                                           ; $5f5c: $dd
	rst $38                                          ; $5f5d: $ff
	sbc e                                            ; $5f5e: $9b
	ld a, a                                          ; $5f5f: $7f
	cp a                                             ; $5f60: $bf
	rra                                              ; $5f61: $1f

jr_05d_5f62:
	ld l, a                                          ; $5f62: $6f
	cp $9a                                           ; $5f63: $fe $9a
	add b                                            ; $5f65: $80
	ldh [$f0], a                                     ; $5f66: $e0 $f0
	ldh a, [$f8]                                     ; $5f68: $f0 $f8
	ld b, a                                          ; $5f6a: $47
	jr nz, @-$67                                     ; $5f6b: $20 $97

	pop de                                           ; $5f6d: $d1
	xor b                                            ; $5f6e: $a8
	pop de                                           ; $5f6f: $d1
	ei                                               ; $5f70: $fb
	rst $38                                          ; $5f71: $ff
	ld a, $1f                                        ; $5f72: $3e $1f
	rla                                              ; $5f74: $17
	reti                                             ; $5f75: $d9


	rst $38                                          ; $5f76: $ff
	sub [hl]                                         ; $5f77: $96
	ld c, a                                          ; $5f78: $4f
	inc hl                                           ; $5f79: $23
	ld b, c                                          ; $5f7a: $41
	add c                                            ; $5f7b: $81
	ld b, b                                          ; $5f7c: $40
	add b                                            ; $5f7d: $80
	ld d, b                                          ; $5f7e: $50
	xor c                                            ; $5f7f: $a9
	ldh a, [$6e]                                     ; $5f80: $f0 $6e
	or d                                             ; $5f82: $b2
	ld l, a                                          ; $5f83: $6f
	inc bc                                           ; $5f84: $03
	ld a, [de]                                       ; $5f85: $1a
	add b                                            ; $5f86: $80
	inc bc                                           ; $5f87: $03
	ldh a, [rTAC]                                    ; $5f88: $f0 $07

jr_05d_5f8a:
	ldh a, [$9e]                                     ; $5f8a: $f0 $9e
	db $fd                                           ; $5f8c: $fd
	ld c, a                                          ; $5f8d: $4f
	ldh a, [$9b]                                     ; $5f8e: $f0 $9b
	ld a, [$ff55]                                    ; $5f90: $fa $55 $ff
	push de                                          ; $5f93: $d5
	ld e, e                                          ; $5f94: $5b
	ldh a, [hDisp1_WX]                                     ; $5f95: $f0 $96
	ld bc, $55aa                                     ; $5f97: $01 $aa $55
	rst $38                                          ; $5f9a: $ff
	ld e, b                                          ; $5f9b: $58
	rst SubAFromBC                                          ; $5f9c: $e7
	sbc [hl]                                         ; $5f9d: $9e
	cp l                                             ; $5f9e: $bd

jr_05d_5f9f:
	dec sp                                           ; $5f9f: $3b
	ld [hl], a                                       ; $5fa0: $77
	inc bc                                           ; $5fa1: $03
	add b                                            ; $5fa2: $80
	ld a, b                                          ; $5fa3: $78
	pop hl                                           ; $5fa4: $e1
	jp $12c6                                         ; $5fa5: $c3 $c6 $12


	inc h                                            ; $5fa8: $24
	call nz, Call_05d_6c4c                           ; $5fa9: $c4 $4c $6c
	ld l, d                                          ; $5fac: $6a
	push hl                                          ; $5fad: $e5
	ld [hl], b                                       ; $5fae: $70
	ld e, $2c                                        ; $5faf: $1e $2c
	db $ec                                           ; $5fb1: $ec
	db $e4                                           ; $5fb2: $e4
	call nz, $c3c6                                   ; $5fb3: $c4 $c6 $c3
	jp $1f1f                                         ; $5fb6: $c3 $1f $1f


	dec sp                                           ; $5fb9: $3b
	inc [hl]                                         ; $5fba: $34
	ld l, b                                          ; $5fbb: $68
	ldh a, [$f0]                                     ; $5fbc: $f0 $f0
	ld h, b                                          ; $5fbe: $60
	rlca                                             ; $5fbf: $07
	ld [bc], a                                       ; $5fc0: $02
	rlca                                             ; $5fc1: $07
	add b                                            ; $5fc2: $80
	inc c                                            ; $5fc3: $0c
	jr jr_05d_5ff6                                   ; $5fc4: $18 $30

	ret nc                                           ; $5fc6: $d0

	and b                                            ; $5fc7: $a0
	and b                                            ; $5fc8: $a0
	ld b, b                                          ; $5fc9: $40
	add e                                            ; $5fca: $83
	ld b, $08                                        ; $5fcb: $06 $08
	inc de                                           ; $5fcd: $13
	inc h                                            ; $5fce: $24
	ld c, b                                          ; $5fcf: $48
	ld h, b                                          ; $5fd0: $60
	ret nz                                           ; $5fd1: $c0

	add e                                            ; $5fd2: $83
	rlca                                             ; $5fd3: $07
	rrca                                             ; $5fd4: $0f
	rra                                              ; $5fd5: $1f
	ccf                                              ; $5fd6: $3f
	ld a, a                                          ; $5fd7: $7f
	ld c, a                                          ; $5fd8: $4f
	db $fc                                           ; $5fd9: $fc
	cp e                                             ; $5fda: $bb
	db $fd                                           ; $5fdb: $fd
	db $dd                                           ; $5fdc: $dd
	ld l, [hl]                                       ; $5fdd: $6e
	or a                                             ; $5fde: $b7
	rst SubAFromDE                                          ; $5fdf: $df
	ld a, a                                          ; $5fe0: $7f
	rst $38                                          ; $5fe1: $ff
	add b                                            ; $5fe2: $80
	rst JumpTable                                          ; $5fe3: $c7
	ld a, $e3                                        ; $5fe4: $3e $e3
	sbc a                                            ; $5fe6: $9f
	ld a, b                                          ; $5fe7: $78
	db $e3                                           ; $5fe8: $e3
	db $fc                                           ; $5fe9: $fc
	add a                                            ; $5fea: $87
	ldh [$bf], a                                     ; $5feb: $e0 $bf
	add $fb                                          ; $5fed: $c6 $fb
	ld a, a                                          ; $5fef: $7f
	rst $38                                          ; $5ff0: $ff
	rst $38                                          ; $5ff1: $ff
	inc bc                                           ; $5ff2: $03
	ret nz                                           ; $5ff3: $c0

	ld a, b                                          ; $5ff4: $78
	rst $38                                          ; $5ff5: $ff

jr_05d_5ff6:
	rlca                                             ; $5ff6: $07
	rst $38                                          ; $5ff7: $ff
	sub b                                            ; $5ff8: $90
	or [hl]                                          ; $5ff9: $b6
	db $dd                                           ; $5ffa: $dd
	ld l, h                                          ; $5ffb: $6c
	db $fc                                           ; $5ffc: $fc
	inc de                                           ; $5ffd: $13
	adc e                                            ; $5ffe: $8b
	jp z, $cf6f                                      ; $5fff: $ca $6f $cf

	sbc h                                            ; $6002: $9c
	rst SubAFromBC                                          ; $6003: $e7
	scf                                              ; $6004: $37
	rla                                              ; $6005: $17
	ld [hl], a                                       ; $6006: $77
	ld [de], a                                       ; $6007: $12
	sub e                                            ; $6008: $93
	ld l, a                                          ; $6009: $6f
	ld e, h                                          ; $600a: $5c
	ei                                               ; $600b: $fb
	rst FarCall                                          ; $600c: $f7
	push hl                                          ; $600d: $e5
	ld c, b                                          ; $600e: $48
	db $fd                                           ; $600f: $fd
	xor $c7                                          ; $6010: $ee $c7
	rst JumpTable                                          ; $6012: $c7
	adc h                                            ; $6013: $8c
	sbc a                                            ; $6014: $9f
	ld a, d                                          ; $6015: $7a
	sub e                                            ; $6016: $93
	ld a, l                                          ; $6017: $7d
	ld b, h                                          ; $6018: $44
	sub c                                            ; $6019: $91
	rst AddAOntoHL                                          ; $601a: $ef
	rra                                              ; $601b: $1f
	rst AddAOntoHL                                          ; $601c: $ef
	rrca                                             ; $601d: $0f
	sbc a                                            ; $601e: $9f
	ld l, a                                          ; $601f: $6f
	ld e, a                                          ; $6020: $5f
	ld hl, sp-$02                                    ; $6021: $f8 $fe
	ld sp, hl                                        ; $6023: $f9
	ld hl, sp-$08                                    ; $6024: $f8 $f8
	ldh a, [$f8]                                     ; $6026: $f0 $f8
	ld d, [hl]                                       ; $6028: $56
	ret nz                                           ; $6029: $c0

	ld [hl], c                                       ; $602a: $71
	dec a                                            ; $602b: $3d
	ld a, l                                          ; $602c: $7d
	add e                                            ; $602d: $83
	halt                                             ; $602e: $76
	rra                                              ; $602f: $1f
	sbc l                                            ; $6030: $9d
	xor b                                            ; $6031: $a8
	ld e, h                                          ; $6032: $5c
	reti                                             ; $6033: $d9


	rst $38                                          ; $6034: $ff
	sbc d                                            ; $6035: $9a
	push de                                          ; $6036: $d5
	ld bc, $160b                                     ; $6037: $01 $0b $16
	inc c                                            ; $603a: $0c
	cp $df                                           ; $603b: $fe $df
	cp $9c                                           ; $603d: $fe $9c
	db $f4                                           ; $603f: $f4
	jp hl                                            ; $6040: $e9


	di                                               ; $6041: $f3
	db $dd                                           ; $6042: $dd
	rst $38                                          ; $6043: $ff
	sbc l                                            ; $6044: $9d
	pop af                                           ; $6045: $f1
	ldh [$74], a                                     ; $6046: $e0 $74
	rst SubAFromBC                                          ; $6048: $e7
	sbc e                                            ; $6049: $9b
	dec b                                            ; $604a: $05
	nop                                              ; $604b: $00
	ld c, $1f                                        ; $604c: $0e $1f
	jp c, $99ff                                      ; $604e: $da $ff $99

	ld a, a                                          ; $6051: $7f
	ccf                                              ; $6052: $3f
	ccf                                              ; $6053: $3f
	ld a, a                                          ; $6054: $7f
	cp a                                             ; $6055: $bf
	ld a, a                                          ; $6056: $7f
	ld a, e                                          ; $6057: $7b
	pop bc                                           ; $6058: $c1
	rst SubAFromDE                                          ; $6059: $df
	ret nz                                           ; $605a: $c0

	ld a, e                                          ; $605b: $7b
	db $fd                                           ; $605c: $fd
	ld [bc], a                                       ; $605d: $02
	ldh [$03], a                                     ; $605e: $e0 $03
	ldh a, [rVBK]                                    ; $6060: $f0 $4f
	ldh a, [$df]                                     ; $6062: $f0 $df
	cp $91                                           ; $6064: $fe $91
	db $fc                                           ; $6066: $fc
	ld hl, sp-$04                                    ; $6067: $f8 $fc
	push af                                          ; $6069: $f5
	jp hl                                            ; $606a: $e9


	reti                                             ; $606b: $d9


	inc bc                                           ; $606c: $03
	inc bc                                           ; $606d: $03
	rlca                                             ; $606e: $07
	rrca                                             ; $606f: $0f
	dec bc                                           ; $6070: $0b
	ld a, [de]                                       ; $6071: $1a
	ld [hl], $66                                     ; $6072: $36 $66
	sbc $7f                                          ; $6074: $de $7f
	ld a, a                                          ; $6076: $7f
	xor $7f                                          ; $6077: $ee $7f
	db $ed                                           ; $6079: $ed
	sbc [hl]                                         ; $607a: $9e
	ld sp, hl                                        ; $607b: $f9
	sbc $80                                          ; $607c: $de $80
	sbc [hl]                                         ; $607e: $9e
	ld bc, $ec7b                                     ; $607f: $01 $7b $ec
	add b                                            ; $6082: $80
	ld b, $b0                                        ; $6083: $06 $b0
	sub c                                            ; $6085: $91
	ccf                                              ; $6086: $3f
	ld [hl], d                                       ; $6087: $72
	halt                                             ; $6088: $76
	halt                                             ; $6089: $76
	db $ec                                           ; $608a: $ec
	ld sp, hl                                        ; $608b: $f9
	ld l, b                                          ; $608c: $68
	ld a, [hl]                                       ; $608d: $7e
	rst $38                                          ; $608e: $ff
	rst AddAOntoHL                                          ; $608f: $ef
	call $1389                                       ; $6090: $cd $89 $13
	rlca                                             ; $6093: $07
	ld b, b                                          ; $6094: $40
	and b                                            ; $6095: $a0
	db $d3                                           ; $6096: $d3
	xor e                                            ; $6097: $ab
	cp $ec                                           ; $6098: $fe $ec
	call nc, Call_05d_4089                           ; $609a: $d4 $89 $40
	add b                                            ; $609d: $80
	add c                                            ; $609e: $81
	add e                                            ; $609f: $83
	add e                                            ; $60a0: $83
	add a                                            ; $60a1: $87
	sub l                                            ; $60a2: $95
	add a                                            ; $60a3: $87
	rrca                                             ; $60a4: $0f
	and c                                            ; $60a5: $a1
	add $88                                          ; $60a6: $c6 $88
	ld de, $4522                                     ; $60a8: $11 $22 $45
	adc a                                            ; $60ab: $8f
	dec de                                           ; $60ac: $1b
	ld l, h                                          ; $60ad: $6c
	jr z, jr_05d_612e                                ; $60ae: $28 $7e

Call_05d_60b0:
	db $f4                                           ; $60b0: $f4
	add [hl]                                         ; $60b1: $86
	dec c                                            ; $60b2: $0d
	ld [hl], $d8                                     ; $60b3: $36 $d8
	ld a, b                                          ; $60b5: $78
	or $fb                                           ; $60b6: $f6 $fb
	rst $38                                          ; $60b8: $ff
	db $fd                                           ; $60b9: $fd
	cp $f8                                           ; $60ba: $fe $f8
	ldh [$9c], a                                     ; $60bc: $e0 $9c
	inc c                                            ; $60be: $0c
	rlca                                             ; $60bf: $07
	db $e3                                           ; $60c0: $e3
	di                                               ; $60c1: $f3
	ldh [rSCX], a                                    ; $60c2: $e0 $43
	call z, $b998                                    ; $60c4: $cc $98 $b9
	ld [hl], d                                       ; $60c7: $72
	rst SubAFromHL                                          ; $60c8: $d7
	cp l                                             ; $60c9: $bd
	inc sp                                           ; $60ca: $33
	ld a, d                                          ; $60cb: $7a
	rst SubAFromHL                                          ; $60cc: $d7
	add b                                            ; $60cd: $80
	rst AddAOntoHL                                          ; $60ce: $ef
	rst SubAFromDE                                          ; $60cf: $df
	sbc h                                            ; $60d0: $9c
	add hl, de                                       ; $60d1: $19
	ld sp, hl                                        ; $60d2: $f9
	inc l                                            ; $60d3: $2c
	ld c, d                                          ; $60d4: $4a
	res 1, e                                         ; $60d5: $cb $8b
	sbc e                                            ; $60d7: $9b
	sub c                                            ; $60d8: $91
	inc sp                                           ; $60d9: $33
	cp $3f                                           ; $60da: $fe $3f
	rst AddAOntoHL                                          ; $60dc: $ef
	db $ed                                           ; $60dd: $ed
	ret                                              ; $60de: $c9


	reti                                             ; $60df: $d9


	sbc e                                            ; $60e0: $9b
	cp e                                             ; $60e1: $bb
	pop bc                                           ; $60e2: $c1
	or $33                                           ; $60e3: $f6 $33
	ld e, l                                          ; $60e5: $5d
	adc e                                            ; $60e6: $8b
	ld l, h                                          ; $60e7: $6c
	ld [hl], l                                       ; $60e8: $75
	ld d, l                                          ; $60e9: $55
	ld sp, hl                                        ; $60ea: $f9
	inc h                                            ; $60eb: $24
	sbc d                                            ; $60ec: $9a
	sub l                                            ; $60ed: $95
	adc e                                            ; $60ee: $8b
	call $a4c5                                       ; $60ef: $cd $c5 $a4
	or h                                             ; $60f2: $b4
	ld l, a                                          ; $60f3: $6f
	rst SubAFromDE                                          ; $60f4: $df
	ld e, a                                          ; $60f5: $5f
	ld a, a                                          ; $60f6: $7f
	ld a, a                                          ; $60f7: $7f
	sbc $bf                                          ; $60f8: $de $bf
	ld a, [hl]                                       ; $60fa: $7e
	call nz, $f09c                                   ; $60fb: $c4 $9c $f0
	ldh [$c0], a                                     ; $60fe: $e0 $c0
	sbc $e0                                          ; $6100: $de $e0
	add a                                            ; $6102: $87
	ld a, [$c011]                                    ; $6103: $fa $11 $c0
	call nz, $e4ea                                   ; $6106: $c4 $ea $e4
	ld [hl], d                                       ; $6109: $72
	cp c                                             ; $610a: $b9
	dec b                                            ; $610b: $05
	xor $3f                                          ; $610c: $ee $3f
	ccf                                              ; $610e: $3f
	rra                                              ; $610f: $1f
	rra                                              ; $6110: $1f
	adc a                                            ; $6111: $8f
	ld b, a                                          ; $6112: $47
	cp b                                             ; $6113: $b8
	ldh a, [$e0]                                     ; $6114: $f0 $e0
	ld b, b                                          ; $6116: $40
	nop                                              ; $6117: $00
	ld [bc], a                                       ; $6118: $02
	dec b                                            ; $6119: $05
	ld a, [bc]                                       ; $611a: $0a
	ld e, a                                          ; $611b: $5f
	jr c, @-$65                                      ; $611c: $38 $99

	ld bc, $112a                                     ; $611e: $01 $2a $11
	xor d                                            ; $6121: $aa
	ld d, b                                          ; $6122: $50
	ldh [$d9], a                                     ; $6123: $e0 $d9
	rst $38                                          ; $6125: $ff
	sbc b                                            ; $6126: $98
	dec bc                                           ; $6127: $0b
	sub a                                            ; $6128: $97
	ld c, a                                          ; $6129: $4f
	rst $38                                          ; $612a: $ff
	ld a, a                                          ; $612b: $7f
	xor a                                            ; $612c: $af
	ld d, l                                          ; $612d: $55

jr_05d_612e:
	ld h, e                                          ; $612e: $63
	ldh [$7f], a                                     ; $612f: $e0 $7f
	di                                               ; $6131: $f3
	rst SubAFromDE                                          ; $6132: $df
	rst $38                                          ; $6133: $ff
	sbc e                                            ; $6134: $9b
	cp a                                             ; $6135: $bf
	rst AddAOntoHL                                          ; $6136: $ef
	ld e, e                                          ; $6137: $5b
	rrca                                             ; $6138: $0f
	ld a, b                                          ; $6139: $78
	ldh a, [$7e]                                     ; $613a: $f0 $7e
	jp nz, Jump_05d_5b7d                             ; $613c: $c2 $7d $5b

	sbc [hl]                                         ; $613f: $9e

jr_05d_6140:
	ldh a, [rSC]                                     ; $6140: $f0 $02
	ldh [$03], a                                     ; $6142: $e0 $03
	ldh a, [$7b]                                     ; $6144: $f0 $7b
	add hl, de                                       ; $6146: $19
	ld a, l                                          ; $6147: $7d
	ld a, h                                          ; $6148: $7c
	sbc [hl]                                         ; $6149: $9e
	ei                                               ; $614a: $fb
	ld a, e                                          ; $614b: $7b
	adc b                                            ; $614c: $88
	ld a, [hl]                                       ; $614d: $7e
	ldh [$99], a                                     ; $614e: $e0 $99
	ld b, $04                                        ; $6150: $06 $04
	inc c                                            ; $6152: $0c
	di                                               ; $6153: $f3
	or e                                             ; $6154: $b3
	ld [hl], e                                       ; $6155: $73
	sbc $e7                                          ; $6156: $de $e7
	rst SubAFromDE                                          ; $6158: $df
	rst JumpTable                                          ; $6159: $c7
	sbc h                                            ; $615a: $9c
	ld c, h                                          ; $615b: $4c
	call z, $de8c                                    ; $615c: $cc $8c $de
	jr jr_05d_6140                                   ; $615f: $18 $df

	jr c, @+$7c                                      ; $6161: $38 $7a

	inc a                                            ; $6163: $3c
	ld a, d                                          ; $6164: $7a
	xor [hl]                                         ; $6165: $ae
	sbc l                                            ; $6166: $9d
	ldh a, [$e1]                                     ; $6167: $f0 $e1
	ld a, d                                          ; $6169: $7a
	inc l                                            ; $616a: $2c
	ld a, a                                          ; $616b: $7f
	ldh [$79], a                                     ; $616c: $e0 $79
	xor [hl]                                         ; $616e: $ae
	ld a, l                                          ; $616f: $7d
	ld a, l                                          ; $6170: $7d
	sub a                                            ; $6171: $97
	ld b, $0f                                        ; $6172: $06 $0f
	ld a, $5f                                        ; $6174: $3e $5f
	adc a                                            ; $6176: $8f
	rlca                                             ; $6177: $07
	rra                                              ; $6178: $1f
	ld a, $7b                                        ; $6179: $3e $7b
	ld [$f07d], a                                    ; $617b: $ea $7d $f0
	sub h                                            ; $617e: $94
	cp $12                                           ; $617f: $fe $12
	ld d, h                                          ; $6181: $54
	xor c                                            ; $6182: $a9
	ld [$d5d2], a                                    ; $6183: $ea $d2 $d5
	jp hl                                            ; $6186: $e9


	rr a                                             ; $6187: $cb $1f
	rra                                              ; $6189: $1f
	ld a, d                                          ; $618a: $7a
	add hl, hl                                       ; $618b: $29
	rst SubAFromDE                                          ; $618c: $df
	ld a, a                                          ; $618d: $7f
	ld a, h                                          ; $618e: $7c
	ld a, l                                          ; $618f: $7d
	add h                                            ; $6190: $84
	or c                                             ; $6191: $b1
	ld h, d                                          ; $6192: $62
	ld h, d                                          ; $6193: $62
	jp nz, $80c1                                     ; $6194: $c2 $c1 $80

	add b                                            ; $6197: $80
	push hl                                          ; $6198: $e5
	pop hl                                           ; $6199: $e1
	jp nz, $83c2                                     ; $619a: $c2 $c2 $83

	add c                                            ; $619d: $81
	add b                                            ; $619e: $80
	add b                                            ; $619f: $80
	rla                                              ; $61a0: $17
	cp [hl]                                          ; $61a1: $be
	sbc $ec                                          ; $61a2: $de $ec
	ld b, b                                          ; $61a4: $40
	ret nz                                           ; $61a5: $c0

	nop                                              ; $61a6: $00
	ld [$f899], sp                                   ; $61a7: $08 $99 $f8
	ld hl, sp+$68                                    ; $61aa: $f8 $68

jr_05d_61ac:
	ld [hl], h                                       ; $61ac: $74
	inc a                                            ; $61ad: $3c
	add b                                            ; $61ae: $80
	add hl, sp                                       ; $61af: $39
	dec sp                                           ; $61b0: $3b
	inc sp                                           ; $61b1: $33
	inc sp                                           ; $61b2: $33
	inc hl                                           ; $61b3: $23
	rlca                                             ; $61b4: $07
	ld a, $7f                                        ; $61b5: $3e $7f
	ld sp, $2131                                     ; $61b7: $31 $31 $21
	inc hl                                           ; $61ba: $23
	ld [bc], a                                       ; $61bb: $02
	nop                                              ; $61bc: $00
	rrca                                             ; $61bd: $0f
	inc bc                                           ; $61be: $03
	inc sp                                           ; $61bf: $33
	ld h, l                                          ; $61c0: $65
	db $ed                                           ; $61c1: $ed
	db $dd                                           ; $61c2: $dd
	cp $ea                                           ; $61c3: $fe $ea
	call z, $f715                                    ; $61c5: $cc $15 $f7
	rst FarCall                                          ; $61c8: $f7
	cp e                                             ; $61c9: $bb
	ld [hl], e                                       ; $61ca: $73
	ld h, e                                          ; $61cb: $63
	rst JumpTable                                          ; $61cc: $c7
	rlca                                             ; $61cd: $07
	adc l                                            ; $61ce: $8d
	adc a                                            ; $61cf: $8f
	ld e, [hl]                                       ; $61d0: $5e
	ld a, e                                          ; $61d1: $7b
	cp l                                             ; $61d2: $bd
	push de                                          ; $61d3: $d5
	ld h, c                                          ; $61d4: $61
	xor d                                            ; $61d5: $aa
	ld [$b575], a                                    ; $61d6: $ea $75 $b5
	xor l                                            ; $61d9: $ad
	ld l, e                                          ; $61da: $6b
	ld l, d                                          ; $61db: $6a
	sbc $d5                                          ; $61dc: $de $d5
	or l                                             ; $61de: $b5
	xor e                                            ; $61df: $ab
	cp a                                             ; $61e0: $bf
	ld [hl], e                                       ; $61e1: $73
	xor d                                            ; $61e2: $aa
	rst SubAFromDE                                          ; $61e3: $df
	rst $38                                          ; $61e4: $ff
	rst SubAFromDE                                          ; $61e5: $df
	ldh [$de], a                                     ; $61e6: $e0 $de
	ret nz                                           ; $61e8: $c0

	rst SubAFromDE                                          ; $61e9: $df
	add b                                            ; $61ea: $80
	sbc l                                            ; $61eb: $9d
	nop                                              ; $61ec: $00
	jr jr_05d_626a                                   ; $61ed: $18 $7b

	ld [$0899], sp                                   ; $61ef: $08 $99 $08
	sub h                                            ; $61f2: $94
	adc d                                            ; $61f3: $8a
	dec d                                            ; $61f4: $15
	rst SubAFromBC                                          ; $61f5: $e7
	ld a, a                                          ; $61f6: $7f
	ld a, d                                          ; $61f7: $7a
	or $7b                                           ; $61f8: $f6 $7b
	and $97                                          ; $61fa: $e6 $97
	dec d                                            ; $61fc: $15
	dec bc                                           ; $61fd: $0b
	ld d, [hl]                                       ; $61fe: $56
	xor l                                            ; $61ff: $ad
	ld e, d                                          ; $6200: $5a
	dec d                                            ; $6201: $15
	ld a, [bc]                                       ; $6202: $0a
	dec b                                            ; $6203: $05
	reti                                             ; $6204: $d9


	rst $38                                          ; $6205: $ff
	sbc l                                            ; $6206: $9d
	ldh a, [rLCDC]                                   ; $6207: $f0 $40
	ld a, c                                          ; $6209: $79
	and [hl]                                         ; $620a: $a6
	sbc h                                            ; $620b: $9c
	ld d, b                                          ; $620c: $50
	xor b                                            ; $620d: $a8
	ld e, l                                          ; $620e: $5d
	ld e, a                                          ; $620f: $5f
	jr jr_05d_61ac                                   ; $6210: $18 $9a

	inc b                                            ; $6212: $04
	ld [$2a14], sp                                   ; $6213: $08 $14 $2a
	rla                                              ; $6216: $17
	ld a, c                                          ; $6217: $79
	dec [hl]                                         ; $6218: $35
	db $db                                           ; $6219: $db
	rst $38                                          ; $621a: $ff
	ld a, e                                          ; $621b: $7b
	ld e, c                                          ; $621c: $59
	sbc l                                            ; $621d: $9d
	rra                                              ; $621e: $1f
	cpl                                              ; $621f: $2f
	ld [hl], e                                       ; $6220: $73
	or b                                             ; $6221: $b0
	ld a, c                                          ; $6222: $79
	inc sp                                           ; $6223: $33
	ld a, a                                          ; $6224: $7f
	ld a, $9e                                        ; $6225: $3e $9e
	add b                                            ; $6227: $80
	ld [bc], a                                       ; $6228: $02
	ldh [rTAC], a                                    ; $6229: $e0 $07
	ldh a, [$9e]                                     ; $622b: $f0 $9e
	rst FarCall                                          ; $622d: $f7
	halt                                             ; $622e: $76
	cp a                                             ; $622f: $bf
	rst SubAFromDE                                          ; $6230: $df
	cp $9d                                           ; $6231: $fe $9d
	ld [$de18], sp                                   ; $6233: $08 $18 $de
	db $10                                           ; $6236: $10
	sbc $11                                          ; $6237: $de $11
	adc a                                            ; $6239: $8f
	rst GetHLinHL                                          ; $623a: $cf
	rst SubAFromDE                                          ; $623b: $df
	rst SubAFromDE                                          ; $623c: $df
	db $fc                                           ; $623d: $fc
	ld sp, hl                                        ; $623e: $f9
	rst SubAFromBC                                          ; $623f: $e7
	sbc d                                            ; $6240: $9a
	dec h                                            ; $6241: $25
	jr nc, jr_05d_6264                               ; $6242: $30 $20

	jr nz, jr_05d_6249                               ; $6244: $20 $03

	rlca                                             ; $6246: $07
	ld e, $7d                                        ; $6247: $1e $7d

jr_05d_6249:
	ei                                               ; $6249: $fb
	ld a, c                                          ; $624a: $79
	or c                                             ; $624b: $b1
	sbc c                                            ; $624c: $99
	ld h, d                                          ; $624d: $62
	xor h                                            ; $624e: $ac
	ld e, c                                          ; $624f: $59
	and d                                            ; $6250: $a2
	ld b, d                                          ; $6251: $42
	ccf                                              ; $6252: $3f
	ld a, e                                          ; $6253: $7b
	dec sp                                           ; $6254: $3b
	sub c                                            ; $6255: $91
	rst FarCall                                          ; $6256: $f7
	rst AddAOntoHL                                          ; $6257: $ef
	rst SubAFromDE                                          ; $6258: $df
	cp a                                             ; $6259: $bf
	inc bc                                           ; $625a: $03
	xor d                                            ; $625b: $aa
	jr z, jr_05d_62b3                                ; $625c: $28 $55

	xor l                                            ; $625e: $ad
	ld e, e                                          ; $625f: $5b
	cpl                                              ; $6260: $2f
	ld c, l                                          ; $6261: $4d
	rst $38                                          ; $6262: $ff
	rst FarCall                                          ; $6263: $f7

jr_05d_6264:
	ld a, e                                          ; $6264: $7b
	ldh a, [c]                                       ; $6265: $f2
	adc h                                            ; $6266: $8c
	cp l                                             ; $6267: $bd
	ld sp, hl                                        ; $6268: $f9
	ei                                               ; $6269: $fb

jr_05d_626a:
	push de                                          ; $626a: $d5
	sub l                                            ; $626b: $95
	xor c                                            ; $626c: $a9
	ld e, a                                          ; $626d: $5f
	ld d, e                                          ; $626e: $53
	and l                                            ; $626f: $a5
	and c                                            ; $6270: $a1
	cp e                                             ; $6271: $bb
	db $fd                                           ; $6272: $fd
	db $fd                                           ; $6273: $fd
	ld sp, hl                                        ; $6274: $f9
	rst $38                                          ; $6275: $ff
	di                                               ; $6276: $f3
	push hl                                          ; $6277: $e5
	pop hl                                           ; $6278: $e1
	ei                                               ; $6279: $fb
	ld a, e                                          ; $627a: $7b
	dec e                                            ; $627b: $1d
	sbc d                                            ; $627c: $9a
	ld [bc], a                                       ; $627d: $02
	add a                                            ; $627e: $87
	add d                                            ; $627f: $82
	rlca                                             ; $6280: $07
	add a                                            ; $6281: $87
	ld [hl], b                                       ; $6282: $70
	and h                                            ; $6283: $a4
	sub [hl]                                         ; $6284: $96
	rlca                                             ; $6285: $07
	add [hl]                                         ; $6286: $86
	add e                                            ; $6287: $83
	jr jr_05d_6302                                   ; $6288: $18 $78

	ld hl, sp-$08                                    ; $628a: $f8 $f8
	ld [hl], b                                       ; $628c: $70
	add b                                            ; $628d: $80
	ld a, d                                          ; $628e: $7a
	cp [hl]                                          ; $628f: $be
	ld a, h                                          ; $6290: $7c
	cpl                                              ; $6291: $2f
	ld a, a                                          ; $6292: $7f
	ld h, $7e                                        ; $6293: $26 $7e
	ld c, $84                                        ; $6295: $0e $84
	add b                                            ; $6297: $80
	ld a, a                                          ; $6298: $7f
	ld h, a                                          ; $6299: $67
	ei                                               ; $629a: $fb
	dec a                                            ; $629b: $3d
	ccf                                              ; $629c: $3f
	dec de                                           ; $629d: $1b
	rra                                              ; $629e: $1f
	ld a, $01                                        ; $629f: $3e $01
	ld a, b                                          ; $62a1: $78
	db $f4                                           ; $62a2: $f4
	ld a, d                                          ; $62a3: $7a
	jr jr_05d_62b2                                   ; $62a4: $18 $0c

	dec b                                            ; $62a6: $05
	inc bc                                           ; $62a7: $03
	cp c                                             ; $62a8: $b9
	ldh a, [c]                                       ; $62a9: $f2
	db $e4                                           ; $62aa: $e4
	db $e4                                           ; $62ab: $e4
	ret                                              ; $62ac: $c9


	sub d                                            ; $62ad: $92
	inc h                                            ; $62ae: $24
	ld c, c                                          ; $62af: $49
	rst GetHLinHL                                          ; $62b0: $cf
	ld e, a                                          ; $62b1: $5f

jr_05d_62b2:
	ld a, d                                          ; $62b2: $7a

jr_05d_62b3:
	add b                                            ; $62b3: $80
	sbc $ff                                          ; $62b4: $de $ff
	add a                                            ; $62b6: $87
	ld d, l                                          ; $62b7: $55
	ld l, d                                          ; $62b8: $6a
	cp h                                             ; $62b9: $bc
	db $f4                                           ; $62ba: $f4
	jr c, @-$16                                      ; $62bb: $38 $e8

	or b                                             ; $62bd: $b0
	ld h, b                                          ; $62be: $60
	db $eb                                           ; $62bf: $eb
	sub $d4                                          ; $62c0: $d6 $d4
	xor h                                            ; $62c2: $ac
	add sp, $58                                      ; $62c3: $e8 $58
	ret nc                                           ; $62c5: $d0

	and b                                            ; $62c6: $a0
	ld a, a                                          ; $62c7: $7f
	cp a                                             ; $62c8: $bf
	ld d, a                                          ; $62c9: $57
	cp a                                             ; $62ca: $bf
	ld d, l                                          ; $62cb: $55
	adc a                                            ; $62cc: $8f
	dec d                                            ; $62cd: $15
	dec bc                                           ; $62ce: $0b
	ld sp, hl                                        ; $62cf: $f9
	sub l                                            ; $62d0: $95
	ld c, d                                          ; $62d1: $4a
	add l                                            ; $62d2: $85
	rst JumpTable                                          ; $62d3: $c7
	db $eb                                           ; $62d4: $eb
	ld h, a                                          ; $62d5: $67
	ld [$88e4], a                                    ; $62d6: $ea $e4 $88
	cp a                                             ; $62d9: $bf
	ld a, a                                          ; $62da: $7f
	ld a, c                                          ; $62db: $79
	add c                                            ; $62dc: $81
	rst SubAFromDE                                          ; $62dd: $df
	rra                                              ; $62de: $1f
	sbc l                                            ; $62df: $9d
	ld a, a                                          ; $62e0: $7f
	ld [bc], a                                       ; $62e1: $02
	ld a, b                                          ; $62e2: $78
	ld b, c                                          ; $62e3: $41
	sbc e                                            ; $62e4: $9b
	inc b                                            ; $62e5: $04
	jr z, jr_05d_633c                                ; $62e6: $28 $54

	xor b                                            ; $62e8: $a8
	reti                                             ; $62e9: $d9


	rst $38                                          ; $62ea: $ff
	sbc d                                            ; $62eb: $9a
	cp [hl]                                          ; $62ec: $be
	ld a, l                                          ; $62ed: $7d
	ld l, d                                          ; $62ee: $6a
	ld [hl], l                                       ; $62ef: $75
	ld a, [hl-]                                      ; $62f0: $3a
	ld a, e                                          ; $62f1: $7b
	push hl                                          ; $62f2: $e5
	reti                                             ; $62f3: $d9


	rst $38                                          ; $62f4: $ff
	sbc e                                            ; $62f5: $9b
	ei                                               ; $62f6: $fb
	ld h, b                                          ; $62f7: $60
	ret nz                                           ; $62f8: $c0

	ld h, b                                          ; $62f9: $60
	ld a, d                                          ; $62fa: $7a
	add h                                            ; $62fb: $84
	sbc [hl]                                         ; $62fc: $9e
	and [hl]                                         ; $62fd: $a6
	ld h, c                                          ; $62fe: $61
	add c                                            ; $62ff: $81
	sbc h                                            ; $6300: $9c
	rra                                              ; $6301: $1f

jr_05d_6302:
	rrca                                             ; $6302: $0f
	inc bc                                           ; $6303: $03
	sbc $01                                          ; $6304: $de $01
	sbc d                                            ; $6306: $9a
	inc bc                                           ; $6307: $03
	add b                                            ; $6308: $80
	ldh [$f0], a                                     ; $6309: $e0 $f0
	db $fc                                           ; $630b: $fc
	sbc $fe                                          ; $630c: $de $fe
	sbc [hl]                                         ; $630e: $9e
	db $fc                                           ; $630f: $fc
	ld [bc], a                                       ; $6310: $02
	ldh [$33], a                                     ; $6311: $e0 $33
	ldh a, [$9e]                                     ; $6313: $f0 $9e
	push de                                          ; $6315: $d5
	ld h, e                                          ; $6316: $63
	ldh a, [$dd]                                     ; $6317: $f0 $dd
	db $f4                                           ; $6319: $f4
	rst SubAFromDE                                          ; $631a: $df
	ldh a, [$9d]                                     ; $631b: $f0 $9d
	ld d, b                                          ; $631d: $50
	or b                                             ; $631e: $b0
	db $dd                                           ; $631f: $dd
	dec de                                           ; $6320: $1b
	db $dd                                           ; $6321: $dd
	rra                                              ; $6322: $1f
	sbc h                                            ; $6323: $9c
	ld e, b                                          ; $6324: $58
	jr nc, @-$3e                                     ; $6325: $30 $c0

	ld [hl], e                                       ; $6327: $73
	dec b                                            ; $6328: $05
	sbc l                                            ; $6329: $9d
	rst SubAFromBC                                          ; $632a: $e7
	rst GetHLinHL                                          ; $632b: $cf
	ld l, [hl]                                       ; $632c: $6e
	ld c, l                                          ; $632d: $4d
	sub a                                            ; $632e: $97
	add h                                            ; $632f: $84
	add hl, bc                                       ; $6330: $09
	ld [de], a                                       ; $6331: $12
	ld [$2110], sp                                   ; $6332: $08 $10 $21
	add e                                            ; $6335: $83
	dec b                                            ; $6336: $05
	ld [hl], a                                       ; $6337: $77
	inc h                                            ; $6338: $24
	ld a, c                                          ; $6339: $79
	ld d, a                                          ; $633a: $57
	sub c                                            ; $633b: $91

jr_05d_633c:
	ei                                               ; $633c: $fb
	sub l                                            ; $633d: $95
	dec l                                            ; $633e: $2d
	ld l, c                                          ; $633f: $69
	db $db                                           ; $6340: $db
	di                                               ; $6341: $f3
	rst FarCall                                          ; $6342: $f7
	ld h, a                                          ; $6343: $67
	rst GetHLinHL                                          ; $6344: $cf
	ld sp, hl                                        ; $6345: $f9
	pop af                                           ; $6346: $f1
	or c                                             ; $6347: $b1
	ld h, b                                          ; $6348: $60
	ld b, b                                          ; $6349: $40
	ld a, d                                          ; $634a: $7a
	db $d3                                           ; $634b: $d3
	sbc e                                            ; $634c: $9b
	ld a, a                                          ; $634d: $7f
	ld a, c                                          ; $634e: $79
	ld [hl], b                                       ; $634f: $70
	ldh a, [$dd]                                     ; $6350: $f0 $dd
	ldh [hDisp0_WY], a                                     ; $6352: $e0 $88
	rst JumpTable                                          ; $6354: $c7
	reti                                             ; $6355: $d9


	pop de                                           ; $6356: $d1
	sub b                                            ; $6357: $90
	and d                                            ; $6358: $a2
	and d                                            ; $6359: $a2
	inc h                                            ; $635a: $24
	inc h                                            ; $635b: $24
	adc b                                            ; $635c: $88
	ret nz                                           ; $635d: $c0

	ldh [$f0], a                                     ; $635e: $e0 $f0
	db $fd                                           ; $6360: $fd
	ld a, a                                          ; $6361: $7f
	ccf                                              ; $6362: $3f
	rrca                                             ; $6363: $0f
	add b                                            ; $6364: $80
	add b                                            ; $6365: $80
	ret nz                                           ; $6366: $c0

	ldh [$7e], a                                     ; $6367: $e0 $7e
	ccf                                              ; $6369: $3f
	rrca                                             ; $636a: $0f
	ld a, e                                          ; $636b: $7b
	or [hl]                                          ; $636c: $b6
	sbc [hl]                                         ; $636d: $9e
	rrca                                             ; $636e: $0f
	ld a, e                                          ; $636f: $7b
	push bc                                          ; $6370: $c5
	sbc l                                            ; $6371: $9d
	ldh a, [c]                                       ; $6372: $f2
	sub l                                            ; $6373: $95
	db $fd                                           ; $6374: $fd
	sub e                                            ; $6375: $93
	ld bc, $f3ff                                     ; $6376: $01 $ff $f3
	sub a                                            ; $6379: $97
	db $fc                                           ; $637a: $fc
	ld sp, hl                                        ; $637b: $f9
	ldh a, [c]                                       ; $637c: $f2
	and h                                            ; $637d: $a4
	add sp, $51                                      ; $637e: $e8 $51
	and d                                            ; $6380: $a2
	ld c, h                                          ; $6381: $4c
	ld a, c                                          ; $6382: $79
	dec [hl]                                         ; $6383: $35
	ld [hl], e                                       ; $6384: $73
	xor l                                            ; $6385: $ad
	sub b                                            ; $6386: $90
	adc c                                            ; $6387: $89
	rla                                              ; $6388: $17
	cpl                                              ; $6389: $2f
	ld e, [hl]                                       ; $638a: $5e
	cp h                                             ; $638b: $bc
	ld [hl], b                                       ; $638c: $70
	ldh [$80], a                                     ; $638d: $e0 $80
	rst $38                                          ; $638f: $ff
	ld a, [$eaf5]                                    ; $6390: $fa $f5 $ea
	call c, Call_05d_60b0                            ; $6393: $dc $b0 $60
	ld a, d                                          ; $6396: $7a
	sbc [hl]                                         ; $6397: $9e
	ei                                               ; $6398: $fb
	ld a, a                                          ; $6399: $7f
	and h                                            ; $639a: $a4
	ei                                               ; $639b: $fb
	sub h                                            ; $639c: $94
	and b                                            ; $639d: $a0
	ld b, l                                          ; $639e: $45
	adc d                                            ; $639f: $8a
	dec d                                            ; $63a0: $15
	ld c, a                                          ; $63a1: $4f
	inc hl                                           ; $63a2: $23

jr_05d_63a3:
	add hl, de                                       ; $63a3: $19
	ld bc, $bf1f                                     ; $63a4: $01 $1f $bf
	ld a, a                                          ; $63a7: $7f
	ld a, d                                          ; $63a8: $7a
	adc $7f                                          ; $63a9: $ce $7f
	jp z, $0297                                      ; $63ab: $ca $97 $02

	ld d, l                                          ; $63ae: $55
	xor d                                            ; $63af: $aa
	call nc, Call_05d_50a8                           ; $63b0: $d4 $a8 $50
	xor b                                            ; $63b3: $a8
	ld d, b                                          ; $63b4: $50
	reti                                             ; $63b5: $d9


	rst $38                                          ; $63b6: $ff
	sub a                                            ; $63b7: $97
	call nc, $f078                                   ; $63b8: $d4 $78 $f0
	ld h, b                                          ; $63bb: $60
	ldh a, [$64]                                     ; $63bc: $f0 $64
	ld sp, hl                                        ; $63be: $f9
	ldh a, [c]                                       ; $63bf: $f2
	reti                                             ; $63c0: $d9


	rst $38                                          ; $63c1: $ff
	ld a, l                                          ; $63c2: $7d
	inc l                                            ; $63c3: $2c
	ld a, b                                          ; $63c4: $78
	reti                                             ; $63c5: $d9


	sbc h                                            ; $63c6: $9c
	adc d                                            ; $63c7: $8a
	ld d, l                                          ; $63c8: $55
	xor d                                            ; $63c9: $aa
	reti                                             ; $63ca: $d9


	rst $38                                          ; $63cb: $ff
	sub a                                            ; $63cc: $97
	ld b, h                                          ; $63cd: $44
	xor b                                            ; $63ce: $a8
	db $f4                                           ; $63cf: $f4
	ld [$ea75], a                                    ; $63d0: $ea $75 $ea
	ld [hl], c                                       ; $63d3: $71
	ld hl, sp-$27                                    ; $63d4: $f8 $d9
	rst $38                                          ; $63d6: $ff
	sbc h                                            ; $63d7: $9c
	rlca                                             ; $63d8: $07
	rla                                              ; $63d9: $17
	ld a, [bc]                                       ; $63da: $0a
	ld a, c                                          ; $63db: $79
	ld e, a                                          ; $63dc: $5f
	ld a, a                                          ; $63dd: $7f
	call c, $f89e                                    ; $63de: $dc $9e $f8
	ld h, d                                          ; $63e1: $62
	add $99                                          ; $63e2: $c6 $99
	rst $38                                          ; $63e4: $ff
	ld a, l                                          ; $63e5: $7d
	ld a, b                                          ; $63e6: $78
	ld hl, sp-$0f                                    ; $63e7: $f8 $f1
	pop hl                                           ; $63e9: $e1
	ld a, e                                          ; $63ea: $7b
	db $eb                                           ; $63eb: $eb
	sbc d                                            ; $63ec: $9a
	jp nz, $e7e7                                     ; $63ed: $c2 $e7 $e7

	xor $fe                                          ; $63f0: $ee $fe
	db $dd                                           ; $63f2: $dd
	rst $38                                          ; $63f3: $ff
	sbc e                                            ; $63f4: $9b
	push af                                          ; $63f5: $f5
	rst $38                                          ; $63f6: $ff
	ld d, l                                          ; $63f7: $55
	ld hl, sp+$62                                    ; $63f8: $f8 $62
	ret nc                                           ; $63fa: $d0

	sbc d                                            ; $63fb: $9a
	xor d                                            ; $63fc: $aa
	db $fd                                           ; $63fd: $fd
	ld [$e055], a                                    ; $63fe: $ea $55 $e0
	ld a, c                                          ; $6401: $79
	dec hl                                           ; $6402: $2b
	ld a, [$559b]                                    ; $6403: $fa $9b $55
	and b                                            ; $6406: $a0
	ld c, b                                          ; $6407: $48
	db $10                                           ; $6408: $10
	ld [hl], h                                       ; $6409: $74
	ld [hl], a                                       ; $640a: $77
	ld [hl], e                                       ; $640b: $73
	jr nc, jr_05d_63a3                               ; $640c: $30 $95

	ld [bc], a                                       ; $640e: $02
	inc b                                            ; $640f: $04
	ld [$2050], sp                                   ; $6410: $08 $50 $20
	ld h, c                                          ; $6413: $61
	sbc $c0                                          ; $6414: $de $c0
	ret nz                                           ; $6416: $c0

	pop hl                                           ; $6417: $e1
	ld a, c                                          ; $6418: $79
	jr z, jr_05d_6499                                ; $6419: $28 $7e

	ld d, $df                                        ; $641b: $16 $df
	ccf                                              ; $641d: $3f
	sbc h                                            ; $641e: $9c
	ld e, $00                                        ; $641f: $1e $00
	inc c                                            ; $6421: $0c
	ld a, d                                          ; $6422: $7a
	ret nz                                           ; $6423: $c0

	sbc h                                            ; $6424: $9c
	dec b                                            ; $6425: $05

Call_05d_6426:
	dec sp                                           ; $6426: $3b
	cp $73                                           ; $6427: $fe $73
	cp b                                             ; $6429: $b8
	adc c                                            ; $642a: $89
	ld a, [$01c4]                                    ; $642b: $fa $c4 $01
	ld bc, $170b                                     ; $642e: $01 $0b $17
	ld l, a                                          ; $6431: $6f
	adc $9c                                          ; $6432: $ce $9c
	add hl, sp                                       ; $6434: $39
	ld [hl], e                                       ; $6435: $73
	ld hl, $ecf6                                     ; $6436: $21 $f6 $ec
	sbc b                                            ; $6439: $98
	jr c, @+$72                                      ; $643a: $38 $70

	ldh [$c0], a                                     ; $643c: $e0 $c0
	ld hl, sp-$21                                    ; $643e: $f8 $df
	sbc a                                            ; $6440: $9f
	ld a, c                                          ; $6441: $79
	reti                                             ; $6442: $d9


	sbc l                                            ; $6443: $9d
	cp $f8                                           ; $6444: $fe $f8
	ld l, a                                          ; $6446: $6f
	ld [hl+], a                                      ; $6447: $22
	sbc h                                            ; $6448: $9c
	ld bc, $7f07                                     ; $6449: $01 $07 $7f
	ld [hl], h                                       ; $644c: $74
	xor c                                            ; $644d: $a9
	ld a, l                                          ; $644e: $7d
	and [hl]                                         ; $644f: $a6
	add b                                            ; $6450: $80
	ld h, b                                          ; $6451: $60
	jr c, jr_05d_647c                                ; $6452: $38 $28

	ld c, b                                          ; $6454: $48
	ld c, b                                          ; $6455: $48
	ld h, b                                          ; $6456: $60
	ld d, b                                          ; $6457: $50
	ret z                                            ; $6458: $c8

	add sp, -$04                                     ; $6459: $e8 $fc
	rra                                              ; $645b: $1f
	rra                                              ; $645c: $1f
	ld a, $3a                                        ; $645d: $3e $3a
	ld h, d                                          ; $645f: $62
	ld l, a                                          ; $6460: $6f
	ldh a, [$5f]                                     ; $6461: $f0 $5f
	ld bc, $0603                                     ; $6463: $01 $03 $06
	ld c, $1e                                        ; $6466: $0e $1e
	rra                                              ; $6468: $1f
	ccf                                              ; $6469: $3f
	rst $38                                          ; $646a: $ff
	ld h, $2d                                        ; $646b: $26 $2d
	ld d, d                                          ; $646d: $52
	cpl                                              ; $646e: $2f
	rst GetHLinHL                                          ; $646f: $cf
	sub b                                            ; $6470: $90
	inc a                                            ; $6471: $3c
	ldh a, [rP1]                                     ; $6472: $f0 $00
	daa                                              ; $6474: $27
	cpl                                              ; $6475: $2f
	ld e, a                                          ; $6476: $5f
	inc a                                            ; $6477: $3c
	di                                               ; $6478: $f3
	call z, $00f0                                    ; $6479: $cc $f0 $00

jr_05d_647c:
	or a                                             ; $647c: $b7
	ld l, h                                          ; $647d: $6c
	ld hl, sp-$20                                    ; $647e: $f8 $e0
	db $fd                                           ; $6480: $fd
	sbc h                                            ; $6481: $9c
	db $db                                           ; $6482: $db
	or h                                             ; $6483: $b4
	ld e, b                                          ; $6484: $58
	ld [hl], e                                       ; $6485: $73
	ld hl, sp-$12                                    ; $6486: $f8 $ee
	ld a, [hl]                                       ; $6488: $7e
	db $fd                                           ; $6489: $fd
	sbc h                                            ; $648a: $9c
	ld b, h                                          ; $648b: $44
	and b                                            ; $648c: $a0
	jr jr_05d_6501                                   ; $648d: $18 $72

	dec sp                                           ; $648f: $3b
	add h                                            ; $6490: $84
	inc bc                                           ; $6491: $03
	ld b, a                                          ; $6492: $47
	rst SubAFromBC                                          ; $6493: $e7
	db $10                                           ; $6494: $10
	ld [$4002], sp                                   ; $6495: $08 $02 $40
	and b                                            ; $6498: $a0

jr_05d_6499:
	ld de, $000c                                     ; $6499: $11 $0c $00
	rrca                                             ; $649c: $0f
	rlca                                             ; $649d: $07
	ld bc, $4001                                     ; $649e: $01 $01 $40
	ldh [$f3], a                                     ; $64a1: $e0 $f3
	rst $38                                          ; $64a3: $ff
	xor b                                            ; $64a4: $a8
	ld d, c                                          ; $64a5: $51
	and d                                            ; $64a6: $a2
	dec b                                            ; $64a7: $05
	jp nz, $0b85                                     ; $64a8: $c2 $85 $0b

	ld h, $71                                        ; $64ab: $26 $71
	or h                                             ; $64ad: $b4
	sbc $ff                                          ; $64ae: $de $ff
	sbc l                                            ; $64b0: $9d
	pop hl                                           ; $64b1: $e1
	jp nz, $9efc                                     ; $64b2: $c2 $fc $9e

	ld a, [bc]                                       ; $64b5: $0a
	reti                                             ; $64b6: $d9


	rst $38                                          ; $64b7: $ff
	sub a                                            ; $64b8: $97
	ld d, l                                          ; $64b9: $55
	ccf                                              ; $64ba: $3f
	ccf                                              ; $64bb: $3f
	ld a, [hl]                                       ; $64bc: $7e
	add hl, de                                       ; $64bd: $19
	ld [bc], a                                       ; $64be: $02
	ld b, l                                          ; $64bf: $45
	adc b                                            ; $64c0: $88
	reti                                             ; $64c1: $d9


	rst $38                                          ; $64c2: $ff
	sbc l                                            ; $64c3: $9d

Call_05d_64c4:
	ret nc                                           ; $64c4: $d0

	jr z, jr_05d_6510                                ; $64c5: $28 $49

	cp b                                             ; $64c7: $b8
	rst SubAFromDE                                          ; $64c8: $df
	ld bc, $9cff                                     ; $64c9: $01 $ff $9c
	inc de                                           ; $64cc: $13
	cpl                                              ; $64cd: $2f
	ld d, e                                          ; $64ce: $53
	reti                                             ; $64cf: $d9


	rst $38                                          ; $64d0: $ff
	sub a                                            ; $64d1: $97
	db $ed                                           ; $64d2: $ed
	ld a, [$faf4]                                    ; $64d3: $fa $f4 $fa
	push af                                          ; $64d6: $f5
	db $eb                                           ; $64d7: $eb
	ld [hl], a                                       ; $64d8: $77
	db $fd                                           ; $64d9: $fd
	ld [hl], e                                       ; $64da: $73
	rrca                                             ; $64db: $0f
	sbc $ff                                          ; $64dc: $de $ff
	sub [hl]                                         ; $64de: $96
	ld d, h                                          ; $64df: $54
	ld a, [bc]                                       ; $64e0: $0a
	db $10                                           ; $64e1: $10
	adc d                                            ; $64e2: $8a
	add b                                            ; $64e3: $80
	ld [bc], a                                       ; $64e4: $02
	cp b                                             ; $64e5: $b8
	ld hl, sp+$00                                    ; $64e6: $f8 $00
	sbc $e0                                          ; $64e8: $de $e0
	rst SubAFromDE                                          ; $64ea: $df
	db $fc                                           ; $64eb: $fc
	sbc l                                            ; $64ec: $9d
	ld hl, sp-$02                                    ; $64ed: $f8 $fe
	ld [hl], e                                       ; $64ef: $73
	add hl, de                                       ; $64f0: $19
	sbc h                                            ; $64f1: $9c
	add e                                            ; $64f2: $83
	rlca                                             ; $64f3: $07
	cp a                                             ; $64f4: $bf
	ld l, d                                          ; $64f5: $6a
	ret nc                                           ; $64f6: $d0

	sbc [hl]                                         ; $64f7: $9e
	jr jr_05d_6574                                   ; $64f8: $18 $7a

	ret c                                            ; $64fa: $d8

	ld a, l                                          ; $64fb: $7d
	db $fd                                           ; $64fc: $fd
	sub h                                            ; $64fd: $94
	di                                               ; $64fe: $f3
	rst SubAFromBC                                          ; $64ff: $e7
	rst JumpTable                                          ; $6500: $c7

jr_05d_6501:
	db $10                                           ; $6501: $10
	jr nz, jr_05d_6544                               ; $6502: $20 $40

	add e                                            ; $6504: $83
	rlca                                             ; $6505: $07
	ld c, $1c                                        ; $6506: $0e $1c
	inc a                                            ; $6508: $3c
	ld a, c                                          ; $6509: $79
	xor e                                            ; $650a: $ab
	ld a, a                                          ; $650b: $7f
	jp c, $817e                                      ; $650c: $da $7e $81

	sbc [hl]                                         ; $650f: $9e

jr_05d_6510:
	bit 7, e                                         ; $6510: $cb $7b
	ldh [c], a                                       ; $6512: $e2
	ld a, [hl]                                       ; $6513: $7e
	xor d                                            ; $6514: $aa
	ld a, a                                          ; $6515: $7f
	ld c, $88                                        ; $6516: $0e $88
	inc a                                            ; $6518: $3c
	call c, $78b8                                    ; $6519: $dc $b8 $78
	ldh a, [$e1]                                     ; $651c: $f0 $e1
	pop bc                                           ; $651e: $c1
	jp nz, $2382                                     ; $651f: $c2 $82 $23

	ld b, a                                          ; $6522: $47
	add a                                            ; $6523: $87
	rrca                                             ; $6524: $0f
	rra                                              ; $6525: $1f
	ccf                                              ; $6526: $3f
	ld a, $7e                                        ; $6527: $3e $7e
	db $10                                           ; $6529: $10
	db $10                                           ; $652a: $10
	ld [$14e4], sp                                   ; $652b: $08 $e4 $14
	ld a, [hl]                                       ; $652e: $7e
	ld a, c                                          ; $652f: $79
	add [hl]                                         ; $6530: $86
	ld a, l                                          ; $6531: $7d
	ld [de], a                                       ; $6532: $12
	ld a, [hl]                                       ; $6533: $7e
	sbc h                                            ; $6534: $9c
	ld a, l                                          ; $6535: $7d
	dec b                                            ; $6536: $05
	add c                                            ; $6537: $81
	rlca                                             ; $6538: $07
	inc bc                                           ; $6539: $03
	inc b                                            ; $653a: $04
	add hl, bc                                       ; $653b: $09
	ld [hl-], a                                      ; $653c: $32
	ld b, h                                          ; $653d: $44
	adc b                                            ; $653e: $88
	db $10                                           ; $653f: $10
	jr nz, @+$01                                     ; $6540: $20 $ff

	cp $7d                                           ; $6542: $fe $7d

jr_05d_6544:
	ld a, [hl-]                                      ; $6544: $3a
	ld [hl], h                                       ; $6545: $74
	add sp, -$30                                     ; $6546: $e8 $d0
	and b                                            ; $6548: $a0
	rst SubAFromBC                                          ; $6549: $e7
	and b                                            ; $654a: $a0
	ld d, b                                          ; $654b: $50
	jr z, jr_05d_6564                                ; $654c: $28 $16

	dec bc                                           ; $654e: $0b
	dec b                                            ; $654f: $05
	ld [bc], a                                       ; $6550: $02
	rst $38                                          ; $6551: $ff
	xor a                                            ; $6552: $af
	ld d, e                                          ; $6553: $53
	inc l                                            ; $6554: $2c
	rla                                              ; $6555: $17
	ld a, e                                          ; $6556: $7b
	ld hl, sp-$69                                    ; $6557: $f8 $97
	sub d                                            ; $6559: $92
	and d                                            ; $655a: $a2
	ld h, d                                          ; $655b: $62
	ld [hl+], a                                      ; $655c: $22
	ld de, $9111                                     ; $655d: $11 $11 $91
	pop de                                           ; $6560: $d1
	db $dd                                           ; $6561: $dd
	cp $7e                                           ; $6562: $fe $7e

jr_05d_6564:
	ld l, [hl]                                       ; $6564: $6e
	sbc [hl]                                         ; $6565: $9e
	rst SubAFromDE                                          ; $6566: $df

jr_05d_6567:
	ld h, c                                          ; $6567: $61
	jr jr_05d_6567                                   ; $6568: $18 $fd

	sbc h                                            ; $656a: $9c
	dec b                                            ; $656b: $05
	nop                                              ; $656c: $00
	ld d, l                                          ; $656d: $55
	ld [hl], d                                       ; $656e: $72
	adc b                                            ; $656f: $88
	sbc h                                            ; $6570: $9c
	inc b                                            ; $6571: $04
	nop                                              ; $6572: $00
	ld d, l                                          ; $6573: $55

jr_05d_6574:
	ld hl, sp+$7f                                    ; $6574: $f8 $7f
	ld l, h                                          ; $6576: $6c
	ld a, l                                          ; $6577: $7d
	ld hl, $489c                                     ; $6578: $21 $9c $48
	inc b                                            ; $657b: $04
	ld d, b                                          ; $657c: $50
	halt                                             ; $657d: $76
	ld [hl], h                                       ; $657e: $74
	ld a, [hl]                                       ; $657f: $7e
	db $dd                                           ; $6580: $dd
	ld a, a                                          ; $6581: $7f
	and c                                            ; $6582: $a1
	ld a, [hl]                                       ; $6583: $7e
	jp c, $ea6b                                      ; $6584: $da $6b $ea

	ld h, e                                          ; $6587: $63
	db $10                                           ; $6588: $10
	sbc d                                            ; $6589: $9a
	and b                                            ; $658a: $a0
	ld d, h                                          ; $658b: $54
	and b                                            ; $658c: $a0
	ld b, b                                          ; $658d: $40
	add b                                            ; $658e: $80
	ld e, h                                          ; $658f: $5c
	ld h, b                                          ; $6590: $60
	sbc b                                            ; $6591: $98
	ld c, l                                          ; $6592: $4d
	xor d                                            ; $6593: $aa
	ld d, l                                          ; $6594: $55
	xor e                                            ; $6595: $ab
	rla                                              ; $6596: $17
	dec hl                                           ; $6597: $2b
	rla                                              ; $6598: $17
	ld h, c                                          ; $6599: $61
	and b                                            ; $659a: $a0
	sbc h                                            ; $659b: $9c
	sub l                                            ; $659c: $95
	xor d                                            ; $659d: $aa
	ld d, l                                          ; $659e: $55
	ld [hl], e                                       ; $659f: $73
	cp $63                                           ; $65a0: $fe $63
	ret nc                                           ; $65a2: $d0

	sbc b                                            ; $65a3: $98
	adc b                                            ; $65a4: $88
	ld d, b                                          ; $65a5: $50
	xor b                                            ; $65a6: $a8
	ld d, h                                          ; $65a7: $54
	adc d                                            ; $65a8: $8a
	inc b                                            ; $65a9: $04
	dec bc                                           ; $65aa: $0b
	ld e, [hl]                                       ; $65ab: $5e
	ret nc                                           ; $65ac: $d0

	sbc c                                            ; $65ad: $99
	ld [bc], a                                       ; $65ae: $02
	dec b                                            ; $65af: $05
	ld c, $0d                                        ; $65b0: $0e $0d
	rla                                              ; $65b2: $17
	cpl                                              ; $65b3: $2f
	reti                                             ; $65b4: $d9


	rst $38                                          ; $65b5: $ff
	sbc b                                            ; $65b6: $98
	rst AddAOntoHL                                          ; $65b7: $ef
	rst SubAFromDE                                          ; $65b8: $df
	xor e                                            ; $65b9: $ab
	ld d, a                                          ; $65ba: $57
	xor a                                            ; $65bb: $af
	rst SubAFromDE                                          ; $65bc: $df
	rst $38                                          ; $65bd: $ff
	ld h, [hl]                                       ; $65be: $66
	pop de                                           ; $65bf: $d1
	rst SubAFromDE                                          ; $65c0: $df
	rst $38                                          ; $65c1: $ff
	sbc c                                            ; $65c2: $99
	ldh a, [$ea]                                     ; $65c3: $f0 $ea
	push de                                          ; $65c5: $d5
	ld [$6af5], a                                    ; $65c6: $ea $f5 $6a
	ld l, h                                          ; $65c9: $6c
	sub e                                            ; $65ca: $93
	sbc $ff                                          ; $65cb: $de $ff
	sbc h                                            ; $65cd: $9c
	db $fc                                           ; $65ce: $fc
	ld a, $0e                                        ; $65cf: $3e $0e
	ld a, c                                          ; $65d1: $79
	inc bc                                           ; $65d2: $03
	rst SubAFromDE                                          ; $65d3: $df
	ldh a, [$d9]                                     ; $65d4: $f0 $d9
	rst $38                                          ; $65d6: $ff
	ld a, [hl]                                       ; $65d7: $7e
	ld e, h                                          ; $65d8: $5c
	add b                                            ; $65d9: $80
	rst AddAOntoHL                                          ; $65da: $ef
	sub a                                            ; $65db: $97
	adc e                                            ; $65dc: $8b
	adc a                                            ; $65dd: $8f
	adc l                                            ; $65de: $8d
	ld d, a                                          ; $65df: $57
	db $e4                                           ; $65e0: $e4
	add d                                            ; $65e1: $82
	pop af                                           ; $65e2: $f1
	ld hl, sp-$04                                    ; $65e3: $f8 $fc
	db $fc                                           ; $65e5: $fc
	cp $fa                                           ; $65e6: $fe $fa
	adc a                                            ; $65e8: $8f
	rrca                                             ; $65e9: $0f
	rra                                              ; $65ea: $1f
	sbc [hl]                                         ; $65eb: $9e
	sbc $dc                                          ; $65ec: $de $dc
	inc a                                            ; $65ee: $3c
	inc l                                            ; $65ef: $2c
	ld a, b                                          ; $65f0: $78
	ld hl, sp-$10                                    ; $65f1: $f8 $f0
	pop af                                           ; $65f3: $f1
	ld h, c                                          ; $65f4: $61
	ld h, e                                          ; $65f5: $63
	db $e3                                           ; $65f6: $e3
	di                                               ; $65f7: $f3

jr_05d_65f8:
	sub a                                            ; $65f8: $97
	add [hl]                                         ; $65f9: $86
	ld d, $2c                                        ; $65fa: $16 $2c
	inc l                                            ; $65fc: $2c
	ld e, b                                          ; $65fd: $58
	ld d, b                                          ; $65fe: $50
	and b                                            ; $65ff: $a0
	ret nz                                           ; $6600: $c0

	ld a, b                                          ; $6601: $78
	ld sp, hl                                        ; $6602: $f9
	di                                               ; $6603: $f3
	di                                               ; $6604: $f3
	rst SubAFromBC                                          ; $6605: $e7
	rst AddAOntoHL                                          ; $6606: $ef
	rst SubAFromDE                                          ; $6607: $df
	cp a                                             ; $6608: $bf
	ld [bc], a                                       ; $6609: $02
	rra                                              ; $660a: $1f
	ld hl, $5f4b                                     ; $660b: $21 $4b $5f
	ld a, a                                          ; $660e: $7f
	ld a, [hl]                                       ; $660f: $7e
	inc a                                            ; $6610: $3c
	cp $fe                                           ; $6611: $fe $fe
	ld a, c                                          ; $6613: $79
	and [hl]                                         ; $6614: $a6
	sub b                                            ; $6615: $90
	pop bc                                           ; $6616: $c1
	jp $f8e6                                         ; $6617: $c3 $e6 $f8


	ldh a, [$e1]                                     ; $661a: $f0 $e1
	jp nz, $0884                                     ; $661c: $c2 $84 $08

	db $10                                           ; $661f: $10
	jr nz, jr_05d_6631                               ; $6620: $20 $0f

	ld a, [de]                                       ; $6622: $1a
	dec [hl]                                         ; $6623: $35
	ld l, d                                          ; $6624: $6a
	ld a, b                                          ; $6625: $78
	rst JumpTable                                          ; $6626: $c7
	ld a, e                                          ; $6627: $7b
	inc [hl]                                         ; $6628: $34
	ld c, h                                          ; $6629: $4c
	and b                                            ; $662a: $a0
	ld l, a                                          ; $662b: $6f
	db $10                                           ; $662c: $10
	ld e, a                                          ; $662d: $5f
	ld hl, sp-$66                                    ; $662e: $f8 $9a
	ld a, a                                          ; $6630: $7f

jr_05d_6631:
	cp e                                             ; $6631: $bb
	ld e, l                                          ; $6632: $5d
	dec l                                            ; $6633: $2d
	dec e                                            ; $6634: $1d
	sbc $0c                                          ; $6635: $de $0c
	add [hl]                                         ; $6637: $86
	ld a, a                                          ; $6638: $7f
	or c                                             ; $6639: $b1
	ld e, c                                          ; $663a: $59
	add hl, hl                                       ; $663b: $29
	jr jr_05d_6676                                   ; $663c: $18 $38

	jr jr_05d_65f8                                   ; $663e: $18 $b8

	nop                                              ; $6640: $00
	add b                                            ; $6641: $80
	call z, $baf6                                    ; $6642: $cc $f6 $ba
	xor d                                            ; $6645: $aa
	and [hl]                                         ; $6646: $a6
	adc [hl]                                         ; $6647: $8e
	ld d, l                                          ; $6648: $55
	add b                                            ; $6649: $80
	db $dd                                           ; $664a: $dd
	ld a, [hl-]                                      ; $664b: $3a
	xor e                                            ; $664c: $ab
	xor d                                            ; $664d: $aa

Jump_05d_664e:
	ld a, [bc]                                       ; $664e: $0a
	ld [bc], a                                       ; $664f: $02
	ld b, l                                          ; $6650: $45
	ld a, d                                          ; $6651: $7a
	call nz, $b87e                                   ; $6652: $c4 $7e $b8
	ld a, a                                          ; $6655: $7f
	cp $9e                                           ; $6656: $fe $9e
	db $10                                           ; $6658: $10
	cp $7e                                           ; $6659: $fe $7e
	jp z, Jump_05d_5092                              ; $665b: $ca $92 $50

	xor d                                            ; $665e: $aa
	ld d, h                                          ; $665f: $54
	nop                                              ; $6660: $00
	ld d, h                                          ; $6661: $54
	ld [bc], a                                       ; $6662: $02
	ld d, b                                          ; $6663: $50
	jr nz, @+$52                                     ; $6664: $20 $50

	xor b                                            ; $6666: $a8
	inc bc                                           ; $6667: $03
	inc bc                                           ; $6668: $03
	ld bc, $be72                                     ; $6669: $01 $72 $be
	ld [hl], a                                       ; $666c: $77
	cp b                                             ; $666d: $b8
	sbc h                                            ; $666e: $9c
	ld de, $152a                                     ; $666f: $11 $2a $15
	ld h, c                                          ; $6672: $61
	or b                                             ; $6673: $b0
	sub a                                            ; $6674: $97
	ld d, c                                          ; $6675: $51

jr_05d_6676:
	xor d                                            ; $6676: $aa
	dec d                                            ; $6677: $15
	ld a, [hl+]                                      ; $6678: $2a
	ld d, a                                          ; $6679: $57
	xor a                                            ; $667a: $af
	ld e, a                                          ; $667b: $5f
	cp h                                             ; $667c: $bc
	ld h, c                                          ; $667d: $61
	and b                                            ; $667e: $a0
	ld a, a                                          ; $667f: $7f
	ld bc, $ef9a                                     ; $6680: $01 $9a $ef
	cp a                                             ; $6683: $bf
	sbc a                                            ; $6684: $9f
	rst GetHLinHL                                          ; $6685: $cf
	ld c, e                                          ; $6686: $4b
	ld h, e                                          ; $6687: $63
	ldh a, [$7a]                                     ; $6688: $f0 $7a
	or b                                             ; $668a: $b0
	ld [hl], a                                       ; $668b: $77
	cp $d9                                           ; $668c: $fe $d9
	rst $38                                          ; $668e: $ff
	sbc [hl]                                         ; $668f: $9e
	rra                                              ; $6690: $1f
	jp nc, Jump_05d_7fff                             ; $6691: $d2 $ff $7f

	ld l, $7d                                        ; $6694: $2e $7d
	ldh [$9b], a                                     ; $6696: $e0 $9b
	cp d                                             ; $6698: $ba
	ld d, h                                          ; $6699: $54
	xor b                                            ; $669a: $a8
	ld b, b                                          ; $669b: $40
	reti                                             ; $669c: $d9


	rst $38                                          ; $669d: $ff
	sbc l                                            ; $669e: $9d
	db $e4                                           ; $669f: $e4
	ret nz                                           ; $66a0: $c0

	ld [hl], e                                       ; $66a1: $73
	ld b, a                                          ; $66a2: $47
	sbc [hl]                                         ; $66a3: $9e
	rlca                                             ; $66a4: $07
	reti                                             ; $66a5: $d9


	rst $38                                          ; $66a6: $ff
	ld a, l                                          ; $66a7: $7d
	db $ed                                           ; $66a8: $ed
	ld a, c                                          ; $66a9: $79
	db $ec                                           ; $66aa: $ec
	ld h, a                                          ; $66ab: $67
	res 2, l                                         ; $66ac: $cb $95
	db $fc                                           ; $66ae: $fc
	ldh [rP1], a                                     ; $66af: $e0 $00
	ldh [$80], a                                     ; $66b1: $e0 $80
	add a                                            ; $66b3: $87
	ld a, a                                          ; $66b4: $7f
	cp $fd                                           ; $66b5: $fe $fd
	rst SubAFromBC                                          ; $66b7: $e7
	halt                                             ; $66b8: $76
	or b                                             ; $66b9: $b0
	add b                                            ; $66ba: $80
	ld hl, sp-$7f                                    ; $66bb: $f8 $81
	inc bc                                           ; $66bd: $03
	ld e, $f8                                        ; $66be: $1e $f8
	ld e, e                                          ; $66c0: $5b
	ld h, $d3                                        ; $66c1: $26 $d3
	cp c                                             ; $66c3: $b9
	cp c                                             ; $66c4: $b9
	ret nc                                           ; $66c5: $d0

	and b                                            ; $66c6: $a0
	db $10                                           ; $66c7: $10
	ld a, [$efff]                                    ; $66c8: $fa $ff $ef
	rst JumpTable                                          ; $66cb: $c7
	rst JumpTable                                          ; $66cc: $c7
	ld l, a                                          ; $66cd: $6f
	ld a, a                                          ; $66ce: $7f
	rst $38                                          ; $66cf: $ff
	add hl, de                                       ; $66d0: $19
	add hl, sp                                       ; $66d1: $39
	ld a, d                                          ; $66d2: $7a
	ld a, d                                          ; $66d3: $7a
	ld l, b                                          ; $66d4: $68
	ld hl, sp-$08                                    ; $66d5: $f8 $f8
	add sp, -$09                                     ; $66d7: $e8 $f7
	rst SubAFromHL                                          ; $66d9: $d7
	rst SubAFromDE                                          ; $66da: $df
	sub a                                            ; $66db: $97
	sub e                                            ; $66dc: $93
	sbc a                                            ; $66dd: $9f
	adc a                                            ; $66de: $8f
	adc a                                            ; $66df: $8f
	sbc a                                            ; $66e0: $9f
	nop                                              ; $66e1: $00
	rrca                                             ; $66e2: $0f
	ld de, $3f1f                                     ; $66e3: $11 $1f $3f
	cpl                                              ; $66e6: $2f
	ld e, [hl]                                       ; $66e7: $5e
	ld a, h                                          ; $66e8: $7c
	ld a, d                                          ; $66e9: $7a
	ld [hl], a                                       ; $66ea: $77
	ld a, [hl]                                       ; $66eb: $7e
	adc h                                            ; $66ec: $8c
	sbc e                                            ; $66ed: $9b
	pop hl                                           ; $66ee: $e1
	jp $38c6                                         ; $66ef: $c3 $c6 $38


	ld l, d                                          ; $66f2: $6a
	ret nc                                           ; $66f3: $d0

	ld a, l                                          ; $66f4: $7d
	jr z, @+$30                                      ; $66f5: $28 $2e

	ret nc                                           ; $66f7: $d0

	add sp, -$7a                                     ; $66f8: $e8 $86
	ld [bc], a                                       ; $66fa: $02
	ld bc, $010a                                     ; $66fb: $01 $0a $01
	ld a, [bc]                                       ; $66fe: $0a
	dec b                                            ; $66ff: $05
	ld a, [hl+]                                      ; $6700: $2a
	jr jr_05d_6733                                   ; $6701: $18 $30

	jr nc, jr_05d_6766                               ; $6703: $30 $61

	ld h, e                                          ; $6705: $63
	ld b, e                                          ; $6706: $43
	rst JumpTable                                          ; $6707: $c7
	rst JumpTable                                          ; $6708: $c7
	ld [hl], b                                       ; $6709: $70
	and b                                            ; $670a: $a0
	ld h, b                                          ; $670b: $60
	ret nz                                           ; $670c: $c0

	ld b, b                                          ; $670d: $40
	ret nz                                           ; $670e: $c0

	add b                                            ; $670f: $80
	add b                                            ; $6710: $80
	ld l, $7e                                        ; $6711: $2e $7e
	ld a, d                                          ; $6713: $7a
	ld c, d                                          ; $6714: $4a
	sub e                                            ; $6715: $93
	ei                                               ; $6716: $fb
	pop af                                           ; $6717: $f1
	ldh [$03], a                                     ; $6718: $e0 $03
	ld [bc], a                                       ; $671a: $02
	dec b                                            ; $671b: $05
	ld b, $0f                                        ; $671c: $06 $0f
	rrca                                             ; $671e: $0f
	dec de                                           ; $671f: $1b
	dec [hl]                                         ; $6720: $35
	dec d                                            ; $6721: $15
	ld a, d                                          ; $6722: $7a
	call nz, $9aff                                   ; $6723: $c4 $ff $9a
	add b                                            ; $6726: $80
	ret nz                                           ; $6727: $c0

	ld b, b                                          ; $6728: $40
	xor d                                            ; $6729: $aa
	ld d, b                                          ; $672a: $50
	ld a, c                                          ; $672b: $79
	jp z, $057e                                      ; $672c: $ca $7e $05

	sbc e                                            ; $672f: $9b
	ld d, b                                          ; $6730: $50
	add b                                            ; $6731: $80
	ld b, b                                          ; $6732: $40

jr_05d_6733:
	jr nz, jr_05d_67a8                               ; $6733: $20 $73

	cpl                                              ; $6735: $2f
	sbc h                                            ; $6736: $9c
	ccf                                              ; $6737: $3f
	rra                                              ; $6738: $1f
	sbc a                                            ; $6739: $9f
	ld [hl], h                                       ; $673a: $74
	ld [hl], b                                       ; $673b: $70
	ld a, d                                          ; $673c: $7a
	jp nc, $2b9c                                     ; $673d: $d2 $9c $2b

	ld d, a                                          ; $6740: $57
	and e                                            ; $6741: $a3
	ld e, h                                          ; $6742: $5c
	sub b                                            ; $6743: $90
	sub a                                            ; $6744: $97
	halt                                             ; $6745: $76
	ldh [c], a                                       ; $6746: $e2
	ldh a, [$f0]                                     ; $6747: $f0 $f0
	pop bc                                           ; $6749: $c1
	ldh [$f1], a                                     ; $674a: $e0 $f1
	ld b, d                                          ; $674c: $42
	reti                                             ; $674d: $d9


	rst $38                                          ; $674e: $ff
	sbc b                                            ; $674f: $98
	rlca                                             ; $6750: $07
	dec bc                                           ; $6751: $0b
	rlca                                             ; $6752: $07
	adc e                                            ; $6753: $8b
	ld d, a                                          ; $6754: $57
	xor e                                            ; $6755: $ab
	ld d, a                                          ; $6756: $57
	ld h, d                                          ; $6757: $62
	ret nc                                           ; $6758: $d0

	ld b, d                                          ; $6759: $42
	nop                                              ; $675a: $00
	jp c, $9b77                                      ; $675b: $da $77 $9b

	ld h, [hl]                                       ; $675e: $66
	ld [hl], a                                       ; $675f: $77
	ld [hl], d                                       ; $6760: $72
	daa                                              ; $6761: $27
	call c, $9e77                                    ; $6762: $dc $77 $9e
	ld d, l                                          ; $6765: $55

jr_05d_6766:
	sbc $66                                          ; $6766: $de $66
	sbc [hl]                                         ; $6768: $9e
	ld [hl+], a                                      ; $6769: $22
	ld l, a                                          ; $676a: $6f
	or $df                                           ; $676b: $f6 $df
	ld b, h                                          ; $676d: $44
	ld a, a                                          ; $676e: $7f
	or $73                                           ; $676f: $f6 $73
	push af                                          ; $6771: $f5
	sbc e                                            ; $6772: $9b
	ld h, l                                          ; $6773: $65
	ld d, l                                          ; $6774: $55
	ld b, h                                          ; $6775: $44
	ld h, d                                          ; $6776: $62
	ld h, a                                          ; $6777: $67
	or $9e                                           ; $6778: $f6 $9e
	ld d, h                                          ; $677a: $54
	ld d, e                                          ; $677b: $53
	or $77                                           ; $677c: $f6 $77
	call z, $e27b                                    ; $677e: $cc $7b $e2
	sbc $22                                          ; $6781: $de $22
	ld [hl], e                                       ; $6783: $73
	or $77                                           ; $6784: $f6 $77
	reti                                             ; $6786: $d9


	ld [hl], a                                       ; $6787: $77
	push af                                          ; $6788: $f5
	rst SubAFromDE                                          ; $6789: $df
	inc sp                                           ; $678a: $33
	ld a, e                                          ; $678b: $7b
	add $de                                          ; $678c: $c6 $de
	ld [hl+], a                                      ; $678e: $22
	sbc d                                            ; $678f: $9a
	ld [hl], a                                       ; $6790: $77

Call_05d_6791:
	ld [hl], e                                       ; $6791: $73
	inc sp                                           ; $6792: $33
	dec [hl]                                         ; $6793: $35
	ld d, [hl]                                       ; $6794: $56
	ld l, a                                          ; $6795: $6f
	or $df                                           ; $6796: $f6 $df
	inc sp                                           ; $6798: $33
	ld [hl], a                                       ; $6799: $77
	or $7f                                           ; $679a: $f6 $7f
	add hl, bc                                       ; $679c: $09
	sbc d                                            ; $679d: $9a
	rst $38                                          ; $679e: $ff
	nop                                              ; $679f: $00
	rst $38                                          ; $67a0: $ff
	nop                                              ; $67a1: $00
	nop                                              ; $67a2: $00
	call c, $99ff                                    ; $67a3: $dc $ff $99
	inc bc                                           ; $67a6: $03
	rst $38                                          ; $67a7: $ff

jr_05d_67a8:
	ld [bc], a                                       ; $67a8: $02
	cp $ab                                           ; $67a9: $fe $ab
	ld d, [hl]                                       ; $67ab: $56
	ld e, a                                          ; $67ac: $5f
	ldh a, [$fb]                                     ; $67ad: $f0 $fb
	ld a, e                                          ; $67af: $7b
	ldh a, [hDisp1_OBP1]                                     ; $67b0: $f0 $94
	inc bc                                           ; $67b2: $03
	dec c                                            ; $67b3: $0d
	db $fc                                           ; $67b4: $fc
	push af                                          ; $67b5: $f5
	db $f4                                           ; $67b6: $f4
	rst $38                                          ; $67b7: $ff
	db $f4                                           ; $67b8: $f4
	rra                                              ; $67b9: $1f
	ld [de], a                                       ; $67ba: $12
	rrca                                             ; $67bb: $0f
	rrca                                             ; $67bc: $0f
	ld a, e                                          ; $67bd: $7b
	ldh a, [hDisp1_BGP]                                     ; $67be: $f0 $92
	ldh a, [rIE]                                     ; $67c0: $f0 $ff
	xor b                                            ; $67c2: $a8
	ld e, h                                          ; $67c3: $5c
	rlca                                             ; $67c4: $07
	ld e, a                                          ; $67c5: $5f
	inc bc                                           ; $67c6: $03
	rst $38                                          ; $67c7: $ff
	cpl                                              ; $67c8: $2f
	ld hl, sp-$58                                    ; $67c9: $f8 $a8
	ldh a, [$f0]                                     ; $67cb: $f0 $f0
	ld [hl], e                                       ; $67cd: $73
	ldh [$73], a                                     ; $67ce: $e0 $73
	ret nc                                           ; $67d0: $d0

	sbc l                                            ; $67d1: $9d
	db $fc                                           ; $67d2: $fc
	ret nz                                           ; $67d3: $c0

	ld h, e                                          ; $67d4: $63
	ret nc                                           ; $67d5: $d0

	ld [hl], e                                       ; $67d6: $73
	ldh a, [$df]                                     ; $67d7: $f0 $df
	inc bc                                           ; $67d9: $03
	sbc c                                            ; $67da: $99
	ld b, $07                                        ; $67db: $06 $07
	ld h, h                                          ; $67dd: $64
	rra                                              ; $67de: $1f
	dec e                                            ; $67df: $1d
	ld b, $5b                                        ; $67e0: $06 $5b
	or b                                             ; $67e2: $b0
	ld a, e                                          ; $67e3: $7b
	cp $9d                                           ; $67e4: $fe $9d
	ld d, l                                          ; $67e6: $55
	xor d                                            ; $67e7: $aa
	ld b, e                                          ; $67e8: $43
	ldh a, [$9e]                                     ; $67e9: $f0 $9e
	add c                                            ; $67eb: $81
	ld [hl], e                                       ; $67ec: $73
	cp $9a                                           ; $67ed: $fe $9a
	pop bc                                           ; $67ef: $c1
	rst $38                                          ; $67f0: $ff
	pop bc                                           ; $67f1: $c1
	ld a, a                                          ; $67f2: $7f
	pop bc                                           ; $67f3: $c1
	ld a, e                                          ; $67f4: $7b
	ld hl, sp-$62                                    ; $67f5: $f8 $9e
	add b                                            ; $67f7: $80
	ld [hl], a                                       ; $67f8: $77
	jp hl                                            ; $67f9: $e9


	ld a, a                                          ; $67fa: $7f
	and e                                            ; $67fb: $a3
	sub l                                            ; $67fc: $95
	db $fc                                           ; $67fd: $fc
	rst $38                                          ; $67fe: $ff
	ld hl, sp-$04                                    ; $67ff: $f8 $fc
	sub b                                            ; $6801: $90
	ld sp, hl                                        ; $6802: $f9
	sub b                                            ; $6803: $90
	rst $38                                          ; $6804: $ff
	rst SubAFromHL                                          ; $6805: $d7
	cp a                                             ; $6806: $bf
	ld a, e                                          ; $6807: $7b
	ldh a, [hDisp1_WY]                                     ; $6808: $f0 $95
	ld hl, sp+$06                                    ; $680a: $f8 $06
	rst $38                                          ; $680c: $ff
	ld bc, $001f                                     ; $680d: $01 $1f $00
	cpl                                              ; $6810: $2f
	nop                                              ; $6811: $00
	ld d, a                                          ; $6812: $57
	nop                                              ; $6813: $00
	ld a, e                                          ; $6814: $7b
	add sp, $7f                                      ; $6815: $e8 $7f
	push af                                          ; $6817: $f5
	ld a, a                                          ; $6818: $7f
	cp $7f                                           ; $6819: $fe $7f
	db $fd                                           ; $681b: $fd
	db $dd                                           ; $681c: $dd
	rst $38                                          ; $681d: $ff
	sbc h                                            ; $681e: $9c
	ld b, c                                          ; $681f: $41
	rst $38                                          ; $6820: $ff
	ld hl, $fe7b                                     ; $6821: $21 $7b $fe
	sbc l                                            ; $6824: $9d
	cp a                                             ; $6825: $bf
	nop                                              ; $6826: $00
	ld h, e                                          ; $6827: $63
	cp $80                                           ; $6828: $fe $80
	ld bc, $01bf                                     ; $682a: $01 $bf $01
	cp [hl]                                          ; $682d: $be
	inc bc                                           ; $682e: $03
	or c                                             ; $682f: $b1
	adc $92                                          ; $6830: $ce $92
	db $ec                                           ; $6832: $ec
	add b                                            ; $6833: $80
	rst $38                                          ; $6834: $ff
	add [hl]                                         ; $6835: $86
	ld sp, hl                                        ; $6836: $f9
	sub b                                            ; $6837: $90
	ldh [rDMA], a                                    ; $6838: $e0 $46
	add b                                            ; $683a: $80
	sbc c                                            ; $683b: $99
	ld b, $e0                                        ; $683c: $06 $e0
	rra                                              ; $683e: $1f
	ld b, e                                          ; $683f: $43
	cp h                                             ; $6840: $bc
	inc bc                                           ; $6841: $03
	db $fc                                           ; $6842: $fc
	ld bc, $42fe                                     ; $6843: $01 $fe $42
	cp h                                             ; $6846: $bc
	and h                                            ; $6847: $a4
	dec de                                           ; $6848: $1b
	add b                                            ; $6849: $80
	rla                                              ; $684a: $17
	ld [$10eb], sp                                   ; $684b: $08 $eb $10
	inc a                                            ; $684e: $3c
	jp $00ff                                         ; $684f: $c3 $ff $00


	jp nc, $200d                                     ; $6852: $d2 $0d $20

	rst SubAFromDE                                          ; $6855: $df
	add l                                            ; $6856: $85
	ld a, d                                          ; $6857: $7a
	dec de                                           ; $6858: $1b
	ldh [$a3], a                                     ; $6859: $e0 $a3
	ld b, b                                          ; $685b: $40
	ld b, l                                          ; $685c: $45
	ld [bc], a                                       ; $685d: $02
	sbc b                                            ; $685e: $98
	rlca                                             ; $685f: $07
	ldh [rP1], a                                     ; $6860: $e0 $00
	add b                                            ; $6862: $80
	ld b, b                                          ; $6863: $40
	ldh a, [c]                                       ; $6864: $f2
	inc c                                            ; $6865: $0c
	ei                                               ; $6866: $fb
	inc b                                            ; $6867: $04
	db $fc                                           ; $6868: $fc
	sbc b                                            ; $6869: $98
	nop                                              ; $686a: $00
	db $eb                                           ; $686b: $eb
	inc d                                            ; $686c: $14
	sub a                                            ; $686d: $97
	ld h, b                                          ; $686e: $60
	ld c, [hl]                                       ; $686f: $4e
	or c                                             ; $6870: $b1
	push af                                          ; $6871: $f5
	sbc h                                            ; $6872: $9c

jr_05d_6873:
	add b                                            ; $6873: $80
	nop                                              ; $6874: $00

jr_05d_6875:
	nop                                              ; $6875: $00
	ld l, e                                          ; $6876: $6b
	ld a, [hl+]                                      ; $6877: $2a
	rst SubAFromBC                                          ; $6878: $e7
	sbc l                                            ; $6879: $9d
	ld d, a                                          ; $687a: $57
	xor e                                            ; $687b: $ab
	ld [hl], a                                       ; $687c: $77
	ld l, [hl]                                       ; $687d: $6e
	ld l, a                                          ; $687e: $6f
	cp $77                                           ; $687f: $fe $77
	ld l, b                                          ; $6881: $68
	sbc l                                            ; $6882: $9d
	nop                                              ; $6883: $00
	ldh a, [rPCM34]                                  ; $6884: $f0 $77
	call $2298                                       ; $6886: $cd $98 $22
	inc b                                            ; $6889: $04
	jr nz, @+$05                                     ; $688a: $20 $03

	ld [de], a                                       ; $688c: $12
	ld bc, $fe09                                     ; $688d: $01 $09 $fe
	sbc d                                            ; $6890: $9a
	ld bc, $0406                                     ; $6891: $01 $06 $04
	inc bc                                           ; $6894: $03
	nop                                              ; $6895: $00
	ld [hl], a                                       ; $6896: $77
	cp $7b                                           ; $6897: $fe $7b
	scf                                              ; $6899: $37
	sbc e                                            ; $689a: $9b
	ld [bc], a                                       ; $689b: $02
	db $fd                                           ; $689c: $fd
	jr z, jr_05d_68b0                                ; $689d: $28 $11

	ld [hl], a                                       ; $689f: $77
	xor c                                            ; $68a0: $a9
	sbc l                                            ; $68a1: $9d
	ld [$7787], sp                                   ; $68a2: $08 $87 $77
	ldh a, [c]                                       ; $68a5: $f2
	sbc c                                            ; $68a6: $99
	db $10                                           ; $68a7: $10
	ldh [$08], a                                     ; $68a8: $e0 $08
	add a                                            ; $68aa: $87
	ld [bc], a                                       ; $68ab: $02
	adc h                                            ; $68ac: $8c
	db $fd                                           ; $68ad: $fd
	add c                                            ; $68ae: $81
	ld b, b                                          ; $68af: $40

jr_05d_68b0:
	add b                                            ; $68b0: $80
	jr nz, jr_05d_6873                               ; $68b1: $20 $c0

	jr nz, jr_05d_6875                               ; $68b3: $20 $c0

	ld bc, $0100                                     ; $68b5: $01 $00 $01
	nop                                              ; $68b8: $00
	ld [hl+], a                                      ; $68b9: $22
	inc e                                            ; $68ba: $1c
	ld b, $05                                        ; $68bb: $06 $05
	ld b, a                                          ; $68bd: $47
	inc b                                            ; $68be: $04
	ld b, a                                          ; $68bf: $47
	inc b                                            ; $68c0: $04
	add a                                            ; $68c1: $87
	inc b                                            ; $68c2: $04
	add a                                            ; $68c3: $87
	dec b                                            ; $68c4: $05
	ld b, $07                                        ; $68c5: $06 $07
	inc b                                            ; $68c7: $04
	ld b, $04                                        ; $68c8: $06 $04
	rlca                                             ; $68ca: $07
	xor d                                            ; $68cb: $aa
	ld d, l                                          ; $68cc: $55
	ld [hl], d                                       ; $68cd: $72
	rst SubAFromHL                                          ; $68ce: $d7
	sub [hl]                                         ; $68cf: $96
	ld a, h                                          ; $68d0: $7c
	add e                                            ; $68d1: $83
	rst $38                                          ; $68d2: $ff
	nop                                              ; $68d3: $00
	add a                                            ; $68d4: $87
	nop                                              ; $68d5: $00
	ld a, a                                          ; $68d6: $7f
	ld a, [hl]                                       ; $68d7: $7e
	rst $38                                          ; $68d8: $ff
	ld l, e                                          ; $68d9: $6b
	ldh a, [$7f]                                     ; $68da: $f0 $7f
	cp $7f                                           ; $68dc: $fe $7f
	sub e                                            ; $68de: $93
	sbc d                                            ; $68df: $9a
	add c                                            ; $68e0: $81
	ld b, c                                          ; $68e1: $41
	rst $38                                          ; $68e2: $ff
	ccf                                              ; $68e3: $3f
	rst $38                                          ; $68e4: $ff
	ld a, d                                          ; $68e5: $7a
	adc $6f                                          ; $68e6: $ce $6f
	cp $7b                                           ; $68e8: $fe $7b
	db $ec                                           ; $68ea: $ec
	add b                                            ; $68eb: $80
	ei                                               ; $68ec: $fb
	ld [$08f9], sp                                   ; $68ed: $08 $f9 $08
	ld hl, sp-$47                                    ; $68f0: $f8 $b9
	add sp, -$45                                     ; $68f2: $e8 $bb
	rst SubAFromDE                                          ; $68f4: $df
	rst $38                                          ; $68f5: $ff
	rst $38                                          ; $68f6: $ff
	rst SubAFromBC                                          ; $68f7: $e7
	di                                               ; $68f8: $f3
	ret nz                                           ; $68f9: $c0

	and l                                            ; $68fa: $a5
	and b                                            ; $68fb: $a0
	rst AddAOntoHL                                          ; $68fc: $ef
	and b                                            ; $68fd: $a0
	rst $38                                          ; $68fe: $ff
	and b                                            ; $68ff: $a0
	rst $38                                          ; $6900: $ff
	adc a                                            ; $6901: $8f
	sub c                                            ; $6902: $91
	di                                               ; $6903: $f3
	pop af                                           ; $6904: $f1
	rst FarCall                                          ; $6905: $f7
	rst $38                                          ; $6906: $ff
	ld c, a                                          ; $6907: $4f
	rst $38                                          ; $6908: $ff
	ld c, a                                          ; $6909: $4f
	or c                                             ; $690a: $b1
	add [hl]                                         ; $690b: $86
	add b                                            ; $690c: $80
	and e                                            ; $690d: $a3
	add b                                            ; $690e: $80
	rst SubAFromBC                                          ; $690f: $e7
	ret nz                                           ; $6910: $c0

	ld hl, $a3ff                                     ; $6911: $21 $ff $a3
	cp $63                                           ; $6914: $fe $63
	cp $e6                                           ; $6916: $fe $e6
	db $fc                                           ; $6918: $fc
	ld h, $fc                                        ; $6919: $26 $fc
	add $fc                                          ; $691b: $c6 $fc
	xor h                                            ; $691d: $ac
	cp b                                             ; $691e: $b8
	db $ec                                           ; $691f: $ec
	cp b                                             ; $6920: $b8
	cp [hl]                                          ; $6921: $be
	inc bc                                           ; $6922: $03
	inc a                                            ; $6923: $3c
	rlca                                             ; $6924: $07
	ld l, a                                          ; $6925: $6f
	cp $9c                                           ; $6926: $fe $9c
	jr c, jr_05d_6939                                ; $6928: $38 $0f

	ld a, b                                          ; $692a: $78
	ld a, e                                          ; $692b: $7b
	cp $6f                                           ; $692c: $fe $6f
	and e                                            ; $692e: $a3
	ld a, [hl]                                       ; $692f: $7e
	ld a, [hl]                                       ; $6930: $7e
	sub a                                            ; $6931: $97
	ld b, $fc                                        ; $6932: $06 $fc
	inc c                                            ; $6934: $0c
	ld hl, sp+$19                                    ; $6935: $f8 $19
	ldh a, [$33]                                     ; $6937: $f0 $33

jr_05d_6939:
	ldh [rPCM34], a                                  ; $6939: $e0 $77
	ldh a, [c]                                       ; $693b: $f2
	sbc b                                            ; $693c: $98
	ldh [rIE], a                                     ; $693d: $e0 $ff
	rst $38                                          ; $693f: $ff
	rra                                              ; $6940: $1f
	rlca                                             ; $6941: $07
	nop                                              ; $6942: $00
	ld hl, sp+$6a                                    ; $6943: $f8 $6a
	inc h                                            ; $6945: $24
	ld [hl], a                                       ; $6946: $77
	cp $7f                                           ; $6947: $fe $7f
	sub c                                            ; $6949: $91
	sbc h                                            ; $694a: $9c
	rst $38                                          ; $694b: $ff
	ld a, a                                          ; $694c: $7f
	ccf                                              ; $694d: $3f
	ld a, d                                          ; $694e: $7a
	db $e3                                           ; $694f: $e3
	ld h, a                                          ; $6950: $67
	ldh a, [rPCM34]                                  ; $6951: $f0 $77
	cp $7b                                           ; $6953: $fe $7b
	db $ed                                           ; $6955: $ed
	halt                                             ; $6956: $76
	adc $7b                                          ; $6957: $ce $7b
	db $fd                                           ; $6959: $fd
	cp $97                                           ; $695a: $fe $97
	call z, $f800                                    ; $695c: $cc $00 $f8
	add b                                            ; $695f: $80
	rst $38                                          ; $6960: $ff
	ldh a, [$7f]                                     ; $6961: $f0 $7f
	ld a, [hl]                                       ; $6963: $7e
	ld a, c                                          ; $6964: $79
	adc $5a                                          ; $6965: $ce $5a
	or c                                             ; $6967: $b1
	sbc l                                            ; $6968: $9d
	ret c                                            ; $6969: $d8

	nop                                              ; $696a: $00
	ld a, c                                          ; $696b: $79
	adc $f3                                          ; $696c: $ce $f3
	ld l, [hl]                                       ; $696e: $6e
	push bc                                          ; $696f: $c5
	sub [hl]                                         ; $6970: $96
	xor e                                            ; $6971: $ab
	ld d, l                                          ; $6972: $55
	ld d, l                                          ; $6973: $55
	ld bc, $00aa                                     ; $6974: $01 $aa $00
	ld d, l                                          ; $6977: $55
	nop                                              ; $6978: $00
	xor d                                            ; $6979: $aa
	db $fc                                           ; $697a: $fc
	sbc c                                            ; $697b: $99
	ld [$0207], sp                                   ; $697c: $08 $07 $02
	ld bc, $0081                                     ; $697f: $01 $81 $00
	db $db                                           ; $6982: $db
	add b                                            ; $6983: $80
	sbc h                                            ; $6984: $9c
	ld [de], a                                       ; $6985: $12
	dec c                                            ; $6986: $0d
	nop                                              ; $6987: $00
	ld [hl], e                                       ; $6988: $73
	ld l, h                                          ; $6989: $6c
	sub l                                            ; $698a: $95
	db $10                                           ; $698b: $10
	pop hl                                           ; $698c: $e1
	jp nz, $0001                                     ; $698d: $c2 $01 $00

	inc bc                                           ; $6990: $03
	jr nz, jr_05d_69b2                               ; $6991: $20 $1f

	inc d                                            ; $6993: $14
	adc c                                            ; $6994: $89
	ld [hl], e                                       ; $6995: $73
	sub d                                            ; $6996: $92
	ld a, a                                          ; $6997: $7f
	ld l, b                                          ; $6998: $68
	ld a, [hl]                                       ; $6999: $7e
	jp nz, $f092                                     ; $699a: $c2 $92 $f0

	ld bc, $10fe                                     ; $699d: $01 $fe $10
	rst GetHLinHL                                          ; $69a0: $cf
	nop                                              ; $69a1: $00
	cp $00                                           ; $69a2: $fe $00
	cp $42                                           ; $69a4: $fe $42
	add b                                            ; $69a6: $80
	inc b                                            ; $69a7: $04
	nop                                              ; $69a8: $00
	ld [hl], a                                       ; $69a9: $77
	cp $8f                                           ; $69aa: $fe $8f
	ld [$1800], sp                                   ; $69ac: $08 $00 $18
	ldh [rTIMA], a                                   ; $69af: $e0 $05
	rlca                                             ; $69b1: $07

jr_05d_69b2:
	rlca                                             ; $69b2: $07
	ld b, $07                                        ; $69b3: $06 $07
	dec b                                            ; $69b5: $05
	ld b, $06                                        ; $69b6: $06 $06
	inc b                                            ; $69b8: $04
	ld b, $06                                        ; $69b9: $06 $06
	rlca                                             ; $69bb: $07
	ld [hl], a                                       ; $69bc: $77
	ld hl, sp+$79                                    ; $69bd: $f8 $79
	xor h                                            ; $69bf: $ac
	ld a, a                                          ; $69c0: $7f
	pop de                                           ; $69c1: $d1
	add e                                            ; $69c2: $83
	add e                                            ; $69c3: $83
	ld a, h                                          ; $69c4: $7c
	ld b, h                                          ; $69c5: $44
	inc a                                            ; $69c6: $3c
	db $fd                                           ; $69c7: $fd
	ld a, h                                          ; $69c8: $7c
	rst AddAOntoHL                                          ; $69c9: $ef
	rst $38                                          ; $69ca: $ff
	add e                                            ; $69cb: $83
	ld l, h                                          ; $69cc: $6c
	nop                                              ; $69cd: $00
	and e                                            ; $69ce: $a3
	cp $e3                                           ; $69cf: $fe $e3
	ld a, [hl]                                       ; $69d1: $7e
	db $e3                                           ; $69d2: $e3
	ld a, $e3                                        ; $69d3: $3e $e3
	cp $43                                           ; $69d5: $fe $43
	cp $d3                                           ; $69d7: $fe $d3
	cp $fb                                           ; $69d9: $fe $fb
	xor [hl]                                         ; $69db: $ae
	ld a, e                                          ; $69dc: $7b
	ld l, $f9                                        ; $69dd: $2e $f9
	ld a, d                                          ; $69df: $7a
	call z, $fe73                                    ; $69e0: $cc $73 $fe
	sbc b                                            ; $69e3: $98
	nop                                              ; $69e4: $00

jr_05d_69e5:
	pop af                                           ; $69e5: $f1
	nop                                              ; $69e6: $00
	di                                               ; $69e7: $f3
	nop                                              ; $69e8: $00
	rst FarCall                                          ; $69e9: $f7
	nop                                              ; $69ea: $00
	ld a, d                                          ; $69eb: $7a
	adc $9a                                          ; $69ec: $ce $9a
	ldh [$bf], a                                     ; $69ee: $e0 $bf
	pop hl                                           ; $69f0: $e1
	sbc a                                            ; $69f1: $9f
	di                                               ; $69f2: $f3
	ld a, e                                          ; $69f3: $7b
	cp $9a                                           ; $69f4: $fe $9a
	pop af                                           ; $69f6: $f1
	adc a                                            ; $69f7: $8f
	ld hl, sp-$32                                    ; $69f8: $f8 $ce
	ld hl, sp+$76                                    ; $69fa: $f8 $76
	sbc b                                            ; $69fc: $98
	adc b                                            ; $69fd: $88
	ld a, a                                          ; $69fe: $7f
	ld b, c                                          ; $69ff: $41
	rst $38                                          ; $6a00: $ff
	db $e3                                           ; $6a01: $e3
	cp $e3                                           ; $6a02: $fe $e3
	db $fc                                           ; $6a04: $fc
	rst JumpTable                                          ; $6a05: $c7
	cp h                                             ; $6a06: $bc
	add a                                            ; $6a07: $87
	ld a, b                                          ; $6a08: $78
	rrca                                             ; $6a09: $0f
	db $ec                                           ; $6a0a: $ec
	jr c, jr_05d_69e5                                ; $6a0b: $38 $d8

	ld [hl], b                                       ; $6a0d: $70
	ret c                                            ; $6a0e: $d8

	ld [hl], b                                       ; $6a0f: $70
	sbc c                                            ; $6a10: $99
	ldh a, [$31]                                     ; $6a11: $f0 $31
	ldh [$33], a                                     ; $6a13: $e0 $33
	ld a, e                                          ; $6a15: $7b
	cp $80                                           ; $6a16: $fe $80
	daa                                              ; $6a18: $27
	ldh [$78], a                                     ; $6a19: $e0 $78
	rrca                                             ; $6a1b: $0f
	ldh a, [$1f]                                     ; $6a1c: $f0 $1f
	pop af                                           ; $6a1e: $f1

jr_05d_6a1f:
	rra                                              ; $6a1f: $1f
	di                                               ; $6a20: $f3
	ld e, $f6                                        ; $6a21: $1e $f6
	inc e                                            ; $6a23: $1c
	db $fc                                           ; $6a24: $fc
	jr jr_05d_6a1f                                   ; $6a25: $18 $f8

	jr nc, @-$0d                                     ; $6a27: $30 $f1

	jr nc, jr_05d_6a8e                               ; $6a29: $30 $63

	ret nz                                           ; $6a2b: $c0

	rst JumpTable                                          ; $6a2c: $c7
	add b                                            ; $6a2d: $80
	add a                                            ; $6a2e: $87
	nop                                              ; $6a2f: $00
	rrca                                             ; $6a30: $0f
	ld bc, $021f                                     ; $6a31: $01 $1f $02
	ccf                                              ; $6a34: $3f
	inc bc                                           ; $6a35: $03
	ld a, h                                          ; $6a36: $7c
	ld a, l                                          ; $6a37: $7d
	xor d                                            ; $6a38: $aa
	sbc [hl]                                         ; $6a39: $9e
	rrca                                             ; $6a3a: $0f
	ld a, e                                          ; $6a3b: $7b
	add d                                            ; $6a3c: $82
	sub d                                            ; $6a3d: $92
	ld [hl], b                                       ; $6a3e: $70
	rst $38                                          ; $6a3f: $ff
	adc [hl]                                         ; $6a40: $8e
	rst $38                                          ; $6a41: $ff
	pop af                                           ; $6a42: $f1
	rrca                                             ; $6a43: $0f
	call z, $e683                                    ; $6a44: $cc $83 $e6
	ld h, c                                          ; $6a47: $61
	ld a, e                                          ; $6a48: $7b
	ld [hl], b                                       ; $6a49: $70
	db $dd                                           ; $6a4a: $dd
	ld l, [hl]                                       ; $6a4b: $6e
	and c                                            ; $6a4c: $a1
	ld a, l                                          ; $6a4d: $7d
	jr c, @+$64                                      ; $6a4e: $38 $62

	cp b                                             ; $6a50: $b8
	ld [hl], d                                       ; $6a51: $72
	push bc                                          ; $6a52: $c5
	ld e, [hl]                                       ; $6a53: $5e
	cp d                                             ; $6a54: $ba
	sbc h                                            ; $6a55: $9c
	adc a                                            ; $6a56: $8f
	ld bc, $7af1                                     ; $6a57: $01 $f1 $7a
	ld [hl-], a                                      ; $6a5a: $32
	sbc e                                            ; $6a5b: $9b
	ld a, a                                          ; $6a5c: $7f
	ret nz                                           ; $6a5d: $c0

	ccf                                              ; $6a5e: $3f
	di                                               ; $6a5f: $f3
	ld [hl], a                                       ; $6a60: $77
	push bc                                          ; $6a61: $c5
	ld a, e                                          ; $6a62: $7b
	sbc $93                                          ; $6a63: $de $93
	ldh a, [$e0]                                     ; $6a65: $f0 $e0
	ld a, b                                          ; $6a67: $78
	ld hl, sp+$58                                    ; $6a68: $f8 $58
	cp $26                                           ; $6a6a: $fe $26
	rst $38                                          ; $6a6c: $ff
	add hl, de                                       ; $6a6d: $19
	rst $38                                          ; $6a6e: $ff
	add $3f                                          ; $6a6f: $c6 $3f
	ld a, d                                          ; $6a71: $7a
	ld l, b                                          ; $6a72: $68
	db $fd                                           ; $6a73: $fd
	sbc [hl]                                         ; $6a74: $9e
	dec b                                            ; $6a75: $05
	ld a, b                                          ; $6a76: $78
	di                                               ; $6a77: $f3
	sub a                                            ; $6a78: $97
	ld [hl], l                                       ; $6a79: $75
	ld a, [bc]                                       ; $6a7a: $0a
	pop bc                                           ; $6a7b: $c1
	cp [hl]                                          ; $6a7c: $be
	ret nc                                           ; $6a7d: $d0

	rst AddAOntoHL                                          ; $6a7e: $ef
	db $eb                                           ; $6a7f: $eb
	call nz, $cc76                                   ; $6a80: $c4 $76 $cc
	ld d, a                                          ; $6a83: $57
	db $fc                                           ; $6a84: $fc
	sbc d                                            ; $6a85: $9a
	add d                                            ; $6a86: $82
	add c                                            ; $6a87: $81
	add b                                            ; $6a88: $80
	adc a                                            ; $6a89: $8f
	add c                                            ; $6a8a: $81
	sbc $80                                          ; $6a8b: $de $80
	adc l                                            ; $6a8d: $8d

jr_05d_6a8e:
	add h                                            ; $6a8e: $84
	adc b                                            ; $6a8f: $88
	add b                                            ; $6a90: $80
	add a                                            ; $6a91: $87
	add b                                            ; $6a92: $80
	add e                                            ; $6a93: $83
	add b                                            ; $6a94: $80
	add c                                            ; $6a95: $81
	nop                                              ; $6a96: $00
	db $fc                                           ; $6a97: $fc
	inc b                                            ; $6a98: $04
	ld hl, sp+$0a                                    ; $6a99: $f8 $0a
	pop af                                           ; $6a9b: $f1
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	inc b                                            ; $6a9e: $04
	jr @+$79                                         ; $6a9f: $18 $77

	or d                                             ; $6aa1: $b2
	sbc c                                            ; $6aa2: $99
	ld b, b                                          ; $6aa3: $40
	sbc h                                            ; $6aa4: $9c
	ld [bc], a                                       ; $6aa5: $02
	pop bc                                           ; $6aa6: $c1
	jr nz, @-$3e                                     ; $6aa7: $20 $c0

	halt                                             ; $6aa9: $76
	jp nz, $f07f                                     ; $6aaa: $c2 $7f $f0

	sbc l                                            ; $6aad: $9d
	ld [bc], a                                       ; $6aae: $02
	db $fc                                           ; $6aaf: $fc
	ld a, e                                          ; $6ab0: $7b
	cp $9c                                           ; $6ab1: $fe $9c
	ld bc, $fc02                                     ; $6ab3: $01 $02 $fc
	ld a, e                                          ; $6ab6: $7b
	ld [$357e], a                                    ; $6ab7: $ea $7e $35
	ld a, [$e47f]                                    ; $6aba: $fa $7f $e4
	rst SubAFromDE                                          ; $6abd: $df
	ld b, $99                                        ; $6abe: $06 $99
	daa                                              ; $6ac0: $27
	add $07                                          ; $6ac1: $c6 $07
	and $07                                          ; $6ac3: $e6 $07
	dec b                                            ; $6ac5: $05
	ld h, a                                          ; $6ac6: $67
	cp $7e                                           ; $6ac7: $fe $7e
	add a                                            ; $6ac9: $87
	ld l, e                                          ; $6aca: $6b
	ld h, a                                          ; $6acb: $67
	adc [hl]                                         ; $6acc: $8e
	add hl, sp                                       ; $6acd: $39
	rst $38                                          ; $6ace: $ff
	add d                                            ; $6acf: $82
	rst $38                                          ; $6ad0: $ff
	ld a, l                                          ; $6ad1: $7d
	rst $38                                          ; $6ad2: $ff
	ld bc, $2e7b                                     ; $6ad3: $01 $7b $2e
	di                                               ; $6ad6: $f3
	ld e, [hl]                                       ; $6ad7: $5e
	db $e3                                           ; $6ad8: $e3
	ld a, [hl]                                       ; $6ad9: $7e
	jp $c3fe                                         ; $6ada: $c3 $fe $c3


	ld a, [hl]                                       ; $6add: $7e
	ld a, b                                          ; $6ade: $78
	ld c, a                                          ; $6adf: $4f
	sbc h                                            ; $6ae0: $9c
	ld a, a                                          ; $6ae1: $7f
	pop hl                                           ; $6ae2: $e1
	ccf                                              ; $6ae3: $3f
	ld a, d                                          ; $6ae4: $7a
	adc $7b                                          ; $6ae5: $ce $7b
	cp $7e                                           ; $6ae7: $fe $7e
	ld a, e                                          ; $6ae9: $7b
	ld a, l                                          ; $6aea: $7d
	inc hl                                           ; $6aeb: $23
	sub a                                            ; $6aec: $97
	rst $38                                          ; $6aed: $ff
	dec b                                            ; $6aee: $05
	rst $38                                          ; $6aef: $ff
	inc b                                            ; $6af0: $04
	db $fc                                           ; $6af1: $fc
	ld [$beff], sp                                   ; $6af2: $08 $ff $be
	ld a, e                                          ; $6af5: $7b
	ld d, [hl]                                       ; $6af6: $56
	add b                                            ; $6af7: $80
	ld [$087f], sp                                   ; $6af8: $08 $7f $08
	cp [hl]                                          ; $6afb: $be

jr_05d_6afc:
	nop                                              ; $6afc: $00
	rst GetHLinHL                                          ; $6afd: $cf
	add b                                            ; $6afe: $80
	rst SubAFromBC                                          ; $6aff: $e7
	ld b, c                                          ; $6b00: $41
	ld a, e                                          ; $6b01: $7b
	jr nz, jr_05d_6afc                               ; $6b02: $20 $f8

	ccf                                              ; $6b04: $3f
	ld hl, sp-$21                                    ; $6b05: $f8 $df
	ld sp, hl                                        ; $6b07: $f9
	rra                                              ; $6b08: $1f
	ccf                                              ; $6b09: $3f
	ld e, $7f                                        ; $6b0a: $1e $7f
	jr z, @+$01                                      ; $6b0c: $28 $ff

	ld b, b                                          ; $6b0e: $40
	rst $38                                          ; $6b0f: $ff
	pop bc                                           ; $6b10: $c1
	add a                                            ; $6b11: $87
	nop                                              ; $6b12: $00
	ld l, a                                          ; $6b13: $6f
	ret nz                                           ; $6b14: $c0

	ld e, a                                          ; $6b15: $5f
	jp nz, $df9b                                     ; $6b16: $c2 $9b $df

	call nz, Call_05d_48ff                           ; $6b19: $c4 $ff $48
	ld a, e                                          ; $6b1c: $7b
	cp $7c                                           ; $6b1d: $fe $7c
	ld hl, $a47f                                     ; $6b1f: $21 $7f $a4
	sbc d                                            ; $6b22: $9a
	db $10                                           ; $6b23: $10

jr_05d_6b24:
	db $e3                                           ; $6b24: $e3
	jr nz, @+$01                                     ; $6b25: $20 $ff

	jr nz, jr_05d_6ba4                               ; $6b27: $20 $7b

	and $6f                                          ; $6b29: $e6 $6f
	cp $7e                                           ; $6b2b: $fe $7e
	sbc b                                            ; $6b2d: $98
	ld a, a                                          ; $6b2e: $7f
	sbc h                                            ; $6b2f: $9c
	sbc b                                            ; $6b30: $98
	rla                                              ; $6b31: $17
	rst $38                                          ; $6b32: $ff
	inc de                                           ; $6b33: $13
	rst $38                                          ; $6b34: $ff

jr_05d_6b35:
	jr nz, jr_05d_6b35                               ; $6b35: $20 $fe

	ld b, d                                          ; $6b37: $42
	ld a, e                                          ; $6b38: $7b
	or $7e                                           ; $6b39: $f6 $7e

jr_05d_6b3b:
	ld hl, sp-$80                                    ; $6b3b: $f8 $80
	jr @-$07                                         ; $6b3d: $18 $f7

	inc [hl]                                         ; $6b3f: $34
	ld hl, sp-$31                                    ; $6b40: $f8 $cf
	cp h                                             ; $6b42: $bc
	rst SubAFromBC                                          ; $6b43: $e7
	sbc $7f                                          ; $6b44: $de $7f
	ldh a, [c]                                       ; $6b46: $f2
	inc sp                                           ; $6b47: $33
	pop af                                           ; $6b48: $f1
	dec a                                            ; $6b49: $3d
	ld sp, hl                                        ; $6b4a: $f9
	ccf                                              ; $6b4b: $3f
	ld a, $1f                                        ; $6b4c: $3e $1f
	ld e, $0f                                        ; $6b4e: $1e $0f
	and $99                                          ; $6b50: $e6 $99
	ld c, c                                          ; $6b52: $49
	ret nc                                           ; $6b53: $d0

	ld h, a                                          ; $6b54: $67
	ret nc                                           ; $6b55: $d0

	ld d, d                                          ; $6b56: $52
	db $ec                                           ; $6b57: $ec
	ld h, e                                          ; $6b58: $63
	call c, $cc72                                    ; $6b59: $dc $72 $cc
	add b                                            ; $6b5c: $80
	ld a, d                                          ; $6b5d: $7a
	call nz, $cc73                                   ; $6b5e: $c4 $73 $cc
	ld de, $0aee                                     ; $6b61: $11 $ee $0a
	db $e4                                           ; $6b64: $e4
	or h                                             ; $6b65: $b4
	ld c, b                                          ; $6b66: $48
	ld h, d                                          ; $6b67: $62
	dec e                                            ; $6b68: $1d
	db $10                                           ; $6b69: $10
	rrca                                             ; $6b6a: $0f
	ld h, $19                                        ; $6b6b: $26 $19
	jp $0c38                                         ; $6b6d: $c3 $38 $0c


	ldh a, [$f0]                                     ; $6b70: $f0 $f0
	rrca                                             ; $6b72: $0f
	nop                                              ; $6b73: $00
	ld a, a                                          ; $6b74: $7f
	adc a                                            ; $6b75: $8f
	ld [hl], b                                       ; $6b76: $70
	inc e                                            ; $6b77: $1c
	ldh [rAUD1SWEEP], a                              ; $6b78: $e0 $10
	ldh [rAUD4LEN], a                                ; $6b7a: $e0 $20
	rst SubAFromDE                                          ; $6b7c: $df
	ret nz                                           ; $6b7d: $c0

	db $fd                                           ; $6b7e: $fd
	ld a, a                                          ; $6b7f: $7f
	inc d                                            ; $6b80: $14
	db $e4                                           ; $6b81: $e4
	ld l, [hl]                                       ; $6b82: $6e
	ret z                                            ; $6b83: $c8

	ld [hl], l                                       ; $6b84: $75
	jr c, jr_05d_6bf6                                ; $6b85: $38 $6f

	db $fc                                           ; $6b87: $fc
	db $dd                                           ; $6b88: $dd
	add b                                            ; $6b89: $80
	sub a                                            ; $6b8a: $97
	ret nz                                           ; $6b8b: $c0

	add b                                            ; $6b8c: $80
	ld b, b                                          ; $6b8d: $40
	ret nz                                           ; $6b8e: $c0

	ld b, b                                          ; $6b8f: $40
	ret nz                                           ; $6b90: $c0

	ret nz                                           ; $6b91: $c0

	ld b, b                                          ; $6b92: $40
	ld [hl], a                                       ; $6b93: $77
	db $fc                                           ; $6b94: $fc
	ld a, d                                          ; $6b95: $7a
	ret z                                            ; $6b96: $c8

	adc [hl]                                         ; $6b97: $8e
	jr @+$03                                         ; $6b98: $18 $01

	jr jr_05d_6bbc                                   ; $6b9a: $18 $20

	add hl, de                                       ; $6b9c: $19
	nop                                              ; $6b9d: $00
	jr c, jr_05d_6ba0                                ; $6b9e: $38 $00

jr_05d_6ba0:
	jr c, @+$4a                                      ; $6ba0: $38 $48

	jr nc, jr_05d_6b24                               ; $6ba2: $30 $80

jr_05d_6ba4:
	ld [hl], c                                       ; $6ba4: $71
	ld [$8007], sp                                   ; $6ba5: $08 $07 $80
	ld a, a                                          ; $6ba8: $7f
	ld a, d                                          ; $6ba9: $7a
	call z, $b07e                                    ; $6baa: $cc $7e $b0
	ld a, b                                          ; $6bad: $78
	ld l, $7d                                        ; $6bae: $2e $7d
	ld [hl], d                                       ; $6bb0: $72
	ld a, l                                          ; $6bb1: $7d
	dec l                                            ; $6bb2: $2d
	ld a, a                                          ; $6bb3: $7f
	sbc b                                            ; $6bb4: $98
	ld a, l                                          ; $6bb5: $7d
	inc l                                            ; $6bb6: $2c
	sbc d                                            ; $6bb7: $9a
	db $10                                           ; $6bb8: $10
	jr nz, jr_05d_6b3b                               ; $6bb9: $20 $80

	ld h, b                                          ; $6bbb: $60

jr_05d_6bbc:
	ld bc, $fd76                                     ; $6bbc: $01 $76 $fd
	ld a, e                                          ; $6bbf: $7b
	add sp, -$22                                     ; $6bc0: $e8 $de
	rlca                                             ; $6bc2: $07
	ld a, [hl]                                       ; $6bc3: $7e
	jp z, Jump_05d_497c                              ; $6bc4: $ca $7c $49

	ld a, a                                          ; $6bc7: $7f
	cp $dc                                           ; $6bc8: $fe $dc
	ld [bc], a                                       ; $6bca: $02
	add b                                            ; $6bcb: $80
	inc bc                                           ; $6bcc: $03
	ld [bc], a                                       ; $6bcd: $02
	rst $38                                          ; $6bce: $ff
	ld bc, $02fb                                     ; $6bcf: $01 $fb $02
	rst FarCall                                          ; $6bd2: $f7
	ld [bc], a                                       ; $6bd3: $02
	rst JumpTable                                          ; $6bd4: $c7
	inc b                                            ; $6bd5: $04
	rst AddAOntoHL                                          ; $6bd6: $ef
	nop                                              ; $6bd7: $00
	ld a, $00                                        ; $6bd8: $3e $00

jr_05d_6bda:
	dec e                                            ; $6bda: $1d
	ld bc, $e2ff                                     ; $6bdb: $01 $ff $e2
	pop af                                           ; $6bde: $f1
	ccf                                              ; $6bdf: $3f
	ld sp, hl                                        ; $6be0: $f9
	cpl                                              ; $6be1: $2f
	rst $38                                          ; $6be2: $ff
	rlca                                             ; $6be3: $07
	rst $38                                          ; $6be4: $ff
	ld bc, $011f                                     ; $6be5: $01 $1f $01
	rlca                                             ; $6be8: $07
	ld bc, $90ff                                     ; $6be9: $01 $ff $90
	ld a, [$02ff]                                    ; $6bec: $fa $ff $02
	ld hl, sp+$08                                    ; $6bef: $f8 $08

jr_05d_6bf1:
	ld hl, sp+$10                                    ; $6bf1: $f8 $10
	ld hl, sp+$10                                    ; $6bf3: $f8 $10
	pop af                                           ; $6bf5: $f1

jr_05d_6bf6:
	jr nz, @-$0b                                     ; $6bf6: $20 $f3

	jr nz, jr_05d_6bf1                               ; $6bf8: $20 $f7

	jr nz, jr_05d_6c72                               ; $6bfa: $20 $76

	or h                                             ; $6bfc: $b4
	sub l                                            ; $6bfd: $95
	ccf                                              ; $6bfe: $3f
	jr jr_05d_6c10                                   ; $6bff: $18 $0f

	rlca                                             ; $6c01: $07
	rrca                                             ; $6c02: $0f
	rlca                                             ; $6c03: $07
	rst $38                                          ; $6c04: $ff
	nop                                              ; $6c05: $00
	db $fc                                           ; $6c06: $fc
	ld [$fe77], sp                                   ; $6c07: $08 $77 $fe
	ld a, a                                          ; $6c0a: $7f
	and $9a                                          ; $6c0b: $e6 $9a
	ld a, a                                          ; $6c0d: $7f
	ld a, b                                          ; $6c0e: $78
	rst $38                                          ; $6c0f: $ff

jr_05d_6c10:
	add b                                            ; $6c10: $80
	pop bc                                           ; $6c11: $c1
	db $fc                                           ; $6c12: $fc
	sbc h                                            ; $6c13: $9c
	inc a                                            ; $6c14: $3c
	nop                                              ; $6c15: $00
	ld a, a                                          ; $6c16: $7f
	ld h, l                                          ; $6c17: $65
	db $db                                           ; $6c18: $db
	sbc l                                            ; $6c19: $9d
	ld bc, $777f                                     ; $6c1a: $01 $7f $77
	cp $83                                           ; $6c1d: $fe $83
	ld b, d                                          ; $6c1f: $42
	ld a, [hl]                                       ; $6c20: $7e
	ld b, d                                          ; $6c21: $42
	cp $44                                           ; $6c22: $fe $44
	rst $38                                          ; $6c24: $ff
	add l                                            ; $6c25: $85
	rst $38                                          ; $6c26: $ff
	adc l                                            ; $6c27: $8d
	rst $38                                          ; $6c28: $ff
	dec d                                            ; $6c29: $15
	rst $38                                          ; $6c2a: $ff
	dec h                                            ; $6c2b: $25
	rst $38                                          ; $6c2c: $ff
	ld b, h                                          ; $6c2d: $44
	db $fd                                           ; $6c2e: $fd
	ld c, b                                          ; $6c2f: $48
	db $fd                                           ; $6c30: $fd
	ld c, b                                          ; $6c31: $48
	ld a, e                                          ; $6c32: $7b
	jr z, @+$01                                      ; $6c33: $28 $ff

	ld a, h                                          ; $6c35: $7c
	rst $38                                          ; $6c36: $ff
	ld a, b                                          ; $6c37: $78
	rst $38                                          ; $6c38: $ff
	jr nc, jr_05d_6bda                               ; $6c39: $30 $9f

	ld [hl], l                                       ; $6c3b: $75
	and l                                            ; $6c3c: $a5
	sbc b                                            ; $6c3d: $98
	ld a, a                                          ; $6c3e: $7f
	cp $06                                           ; $6c3f: $fe $06
	db $fc                                           ; $6c41: $fc
	inc d                                            ; $6c42: $14
	xor $03                                          ; $6c43: $ee $03
	ld a, e                                          ; $6c45: $7b
	sub d                                            ; $6c46: $92
	sbc b                                            ; $6c47: $98
	add hl, bc                                       ; $6c48: $09
	cp $12                                           ; $6c49: $fe $12

jr_05d_6c4b:
	db $fc                                           ; $6c4b: $fc

Call_05d_6c4c:
	db $e4                                           ; $6c4c: $e4
	jr c, jr_05d_6c87                                ; $6c4d: $38 $38

	db $fd                                           ; $6c4f: $fd
	sub l                                            ; $6c50: $95
	or b                                             ; $6c51: $b0
	adc a                                            ; $6c52: $8f
	add hl, de                                       ; $6c53: $19
	ld b, $1a                                        ; $6c54: $06 $1a
	inc b                                            ; $6c56: $04
	ld a, [de]                                       ; $6c57: $1a
	inc b                                            ; $6c58: $04
	ld [de], a                                       ; $6c59: $12
	inc c                                            ; $6c5a: $0c
	ld [hl], a                                       ; $6c5b: $77
	ld a, [$fe7f]                                    ; $6c5c: $fa $7f $fe
	sbc b                                            ; $6c5f: $98
	ld h, d                                          ; $6c60: $62
	sbc h                                            ; $6c61: $9c
	ld [bc], a                                       ; $6c62: $02
	inc e                                            ; $6c63: $1c
	inc d                                            ; $6c64: $14
	ld [$e00c], sp                                   ; $6c65: $08 $0c $e0
	jp z, $03df                                      ; $6c68: $ca $df $03

	ld e, c                                          ; $6c6b: $59
	ld b, l                                          ; $6c6c: $45
	ld [hl], e                                       ; $6c6d: $73
	cp $7a                                           ; $6c6e: $fe $7a
	rst JumpTable                                          ; $6c70: $c7
	ld l, e                                          ; $6c71: $6b

jr_05d_6c72:
	cp $98                                           ; $6c72: $fe $98
	ldh [rLCDC], a                                   ; $6c74: $e0 $40
	ldh [rAUD4LEN], a                                ; $6c76: $e0 $20
	ldh [rAUD4LEN], a                                ; $6c78: $e0 $20
	ld bc, $8076                                     ; $6c7a: $01 $76 $80
	adc l                                            ; $6c7d: $8d
	ld hl, sp+$00                                    ; $6c7e: $f8 $00
	jr c, jr_05d_6ca2                                ; $6c80: $38 $20

	jr jr_05d_6ca6                                   ; $6c82: $18 $22

	add hl, de                                       ; $6c84: $19
	nop                                              ; $6c85: $00
	ccf                                              ; $6c86: $3f

jr_05d_6c87:
	ld [bc], a                                       ; $6c87: $02
	ld a, h                                          ; $6c88: $7c
	jr nz, jr_05d_6c4b                               ; $6c89: $20 $c0

	add c                                            ; $6c8b: $81
	ld h, b                                          ; $6c8c: $60
	ld [$0067], sp                                   ; $6c8d: $08 $67 $00
	halt                                             ; $6c90: $76
	cp h                                             ; $6c91: $bc
	adc h                                            ; $6c92: $8c
	ldh a, [$80]                                     ; $6c93: $f0 $80
	jr nc, jr_05d_6c97                               ; $6c95: $30 $00

jr_05d_6c97:
	jr nc, jr_05d_6cd9                               ; $6c97: $30 $40

	jr nc, jr_05d_6c9b                               ; $6c99: $30 $00

jr_05d_6c9b:
	ldh a, [$09]                                     ; $6c9b: $f0 $09
	ldh a, [rSCY]                                    ; $6c9d: $f0 $42
	sbc c                                            ; $6c9f: $99
	db $10                                           ; $6ca0: $10
	rrca                                             ; $6ca1: $0f

jr_05d_6ca2:
	nop                                              ; $6ca2: $00
	rrca                                             ; $6ca3: $0f
	nop                                              ; $6ca4: $00
	rlca                                             ; $6ca5: $07

jr_05d_6ca6:
	ld a, e                                          ; $6ca6: $7b
	xor [hl]                                         ; $6ca7: $ae
	rst SubAFromDE                                          ; $6ca8: $df
	ld [bc], a                                       ; $6ca9: $02
	sbc [hl]                                         ; $6caa: $9e
	jp nz, $fe6f                                     ; $6cab: $c2 $6f $fe

	sbc h                                            ; $6cae: $9c
	inc bc                                           ; $6caf: $03
	add d                                            ; $6cb0: $82
	inc bc                                           ; $6cb1: $03
	ld a, d                                          ; $6cb2: $7a
	ret nz                                           ; $6cb3: $c0

	sbc b                                            ; $6cb4: $98
	cp $18                                           ; $6cb5: $fe $18
	jr c, jr_05d_6cb9                                ; $6cb7: $38 $00

jr_05d_6cb9:
	inc e                                            ; $6cb9: $1c
	ld [$727c], sp                                   ; $6cba: $08 $7c $72
	ldh a, [c]                                       ; $6cbd: $f2
	ld a, a                                          ; $6cbe: $7f
	cp $9c                                           ; $6cbf: $fe $9c
	db $fd                                           ; $6cc1: $fd
	ld [$7b07], sp                                   ; $6cc2: $08 $07 $7b
	db $ec                                           ; $6cc5: $ec
	ld a, a                                          ; $6cc6: $7f
	cp $7f                                           ; $6cc7: $fe $7f
	or a                                             ; $6cc9: $b7
	ld a, a                                          ; $6cca: $7f
	cp a                                             ; $6ccb: $bf
	ld a, c                                          ; $6ccc: $79
	adc [hl]                                         ; $6ccd: $8e
	ld a, d                                          ; $6cce: $7a
	and d                                            ; $6ccf: $a2
	ld [hl], e                                       ; $6cd0: $73
	adc d                                            ; $6cd1: $8a
	ld [hl], l                                       ; $6cd2: $75
	call nz, $b875                                   ; $6cd3: $c4 $75 $b8
	ld a, c                                          ; $6cd6: $79
	or b                                             ; $6cd7: $b0
	sbc e                                            ; $6cd8: $9b

jr_05d_6cd9:
	ld sp, hl                                        ; $6cd9: $f9
	db $10                                           ; $6cda: $10
	ei                                               ; $6cdb: $fb
	db $10                                           ; $6cdc: $10
	ld [hl], d                                       ; $6cdd: $72
	or h                                             ; $6cde: $b4
	ld a, a                                          ; $6cdf: $7f
	ldh a, [c]                                       ; $6ce0: $f2
	ld e, a                                          ; $6ce1: $5f
	ld l, d                                          ; $6ce2: $6a
	ld a, a                                          ; $6ce3: $7f
	jp c, $fe7f                                      ; $6ce4: $da $7f $fe

	ld l, a                                          ; $6ce7: $6f
	ret nc                                           ; $6ce8: $d0

	sbc b                                            ; $6ce9: $98
	inc b                                            ; $6cea: $04
	rst $38                                          ; $6ceb: $ff
	add h                                            ; $6cec: $84
	rst $38                                          ; $6ced: $ff
	adc b                                            ; $6cee: $88
	rst $38                                          ; $6cef: $ff
	ld [$d677], sp                                   ; $6cf0: $08 $77 $d6
	ld [hl], e                                       ; $6cf3: $73
	adc $8a                                          ; $6cf4: $ce $8a
	ld b, b                                          ; $6cf6: $40
	dec sp                                           ; $6cf7: $3b
	db $10                                           ; $6cf8: $10
	rra                                              ; $6cf9: $1f
	nop                                              ; $6cfa: $00
	sbc a                                            ; $6cfb: $9f
	ld [$0fcf], sp                                   ; $6cfc: $08 $cf $0f
	rst GetHLinHL                                          ; $6cff: $cf
	ld c, $fe                                        ; $6d00: $0e $fe
	nop                                              ; $6d02: $00
	ld hl, sp+$10                                    ; $6d03: $f8 $10
	ldh a, [rAUD4LEN]                                ; $6d05: $f0 $20
	db $fc                                           ; $6d07: $fc
	inc h                                            ; $6d08: $24
	rst $38                                          ; $6d09: $ff
	ld c, e                                          ; $6d0a: $4b
	ld a, d                                          ; $6d0b: $7a
	call nz, $8197                                   ; $6d0c: $c4 $97 $81

jr_05d_6d0f:
	rst $38                                          ; $6d0f: $ff
	ld [hl], b                                       ; $6d10: $70
	ld a, a                                          ; $6d11: $7f
	inc c                                            ; $6d12: $0c
	rra                                              ; $6d13: $1f
	nop                                              ; $6d14: $00
	rra                                              ; $6d15: $1f
	sbc $01                                          ; $6d16: $de $01
	sbc c                                            ; $6d18: $99
	rst $38                                          ; $6d19: $ff
	cp $fe                                           ; $6d1a: $fe $fe
	jr nc, jr_05d_6d0f                               ; $6d1c: $30 $f1

	ret nz                                           ; $6d1e: $c0

	ld a, e                                          ; $6d1f: $7b
	cp d                                             ; $6d20: $ba
	ld a, h                                          ; $6d21: $7c
	ld l, a                                          ; $6d22: $6f
	sbc b                                            ; $6d23: $98
	jr nc, @+$01                                     ; $6d24: $30 $ff

	ret nz                                           ; $6d26: $c0

	cp $fe                                           ; $6d27: $fe $fe
	add a                                            ; $6d29: $87
	ld bc, $057a                                     ; $6d2a: $01 $7a $05
	ld a, a                                          ; $6d2d: $7f
	cp $7a                                           ; $6d2e: $fe $7a
	ld l, b                                          ; $6d30: $68
	ld [hl], a                                       ; $6d31: $77
	and h                                            ; $6d32: $a4
	rst SubAFromDE                                          ; $6d33: $df
	rlca                                             ; $6d34: $07
	sbc b                                            ; $6d35: $98
	rst $38                                          ; $6d36: $ff
	ld hl, sp-$08                                    ; $6d37: $f8 $f8
	ld h, b                                          ; $6d39: $60
	ldh [$80], a                                     ; $6d3a: $e0 $80
	add e                                            ; $6d3c: $83
	ld l, a                                          ; $6d3d: $6f
	sub [hl]                                         ; $6d3e: $96
	ld a, a                                          ; $6d3f: $7f
	ldh a, [c]                                       ; $6d40: $f2
	ld [hl], l                                       ; $6d41: $75
	cp b                                             ; $6d42: $b8
	cp $6b                                           ; $6d43: $fe $6b
	add [hl]                                         ; $6d45: $86
	ld a, e                                          ; $6d46: $7b
	di                                               ; $6d47: $f3
	rst SubAFromDE                                          ; $6d48: $df
	ld hl, sp+$7f                                    ; $6d49: $f8 $7f
	ld [$277f], a                                    ; $6d4b: $ea $7f $27
	ld a, e                                          ; $6d4e: $7b
	and $73                                          ; $6d4f: $e6 $73
	ldh a, [hDisp1_WY]                                     ; $6d51: $f0 $95
	rrca                                             ; $6d53: $0f
	inc c                                            ; $6d54: $0c
	jr c, jr_05d_6d87                                ; $6d55: $38 $30

	db $e3                                           ; $6d57: $e3
	ret nz                                           ; $6d58: $c0

	adc a                                            ; $6d59: $8f
	nop                                              ; $6d5a: $00
	rst $38                                          ; $6d5b: $ff
	inc c                                            ; $6d5c: $0c
	ld [hl], h                                       ; $6d5d: $74
	inc sp                                           ; $6d5e: $33
	sbc l                                            ; $6d5f: $9d
	rst $38                                          ; $6d60: $ff
	ldh [rDMA], a                                    ; $6d61: $e0 $46
	ret nz                                           ; $6d63: $c0

	halt                                             ; $6d64: $76
	call z, $fe57                                    ; $6d65: $cc $57 $fe
	sbc [hl]                                         ; $6d68: $9e
	ld b, b                                          ; $6d69: $40
	halt                                             ; $6d6a: $76
	ld c, d                                          ; $6d6b: $4a
	sub [hl]                                         ; $6d6c: $96
	ld b, b                                          ; $6d6d: $40
	db $10                                           ; $6d6e: $10
	ld h, b                                          ; $6d6f: $60
	nop                                              ; $6d70: $00
	ld a, a                                          ; $6d71: $7f
	ld b, b                                          ; $6d72: $40
	ccf                                              ; $6d73: $3f
	jr z, jr_05d_6d89                                ; $6d74: $28 $13

	halt                                             ; $6d76: $76
	sbc $7e                                          ; $6d77: $de $7e
	ret nc                                           ; $6d79: $d0

	sub e                                            ; $6d7a: $93
	ld b, b                                          ; $6d7b: $40
	ld sp, $3300                                     ; $6d7c: $31 $00 $33
	nop                                              ; $6d7f: $00
	or a                                             ; $6d80: $b7
	ld bc, $00be                                     ; $6d81: $01 $be $00
	cp a                                             ; $6d84: $bf
	nop                                              ; $6d85: $00
	ccf                                              ; $6d86: $3f

jr_05d_6d87:
	ld a, b                                          ; $6d87: $78
	ld [hl-], a                                      ; $6d88: $32

jr_05d_6d89:
	ld a, c                                          ; $6d89: $79
	adc b                                            ; $6d8a: $88
	sbc l                                            ; $6d8b: $9d
	ld [$7bf0], sp                                   ; $6d8c: $08 $f0 $7b
	ld hl, sp+$7f                                    ; $6d8f: $f8 $7f
	reti                                             ; $6d91: $d9


	ld a, l                                          ; $6d92: $7d
	ld [hl], c                                       ; $6d93: $71
	ld a, a                                          ; $6d94: $7f
	xor e                                            ; $6d95: $ab
	ld [hl], d                                       ; $6d96: $72
	ldh [$7b], a                                     ; $6d97: $e0 $7b
	cp $9e                                           ; $6d99: $fe $9e
	ld [hl+], a                                      ; $6d9b: $22
	ld a, e                                          ; $6d9c: $7b
	cp $9a                                           ; $6d9d: $fe $9a
	ld h, e                                          ; $6d9f: $63
	inc bc                                           ; $6da0: $03
	db $e3                                           ; $6da1: $e3
	db $fd                                           ; $6da2: $fd
	nop                                              ; $6da3: $00
	ld [hl], a                                       ; $6da4: $77
	cp $7b                                           ; $6da5: $fe $7b
	ld [de], a                                       ; $6da7: $12
	sbc [hl]                                         ; $6da8: $9e
	ld [hl+], a                                      ; $6da9: $22
	ld a, b                                          ; $6daa: $78
	and d                                            ; $6dab: $a2
	ld a, b                                          ; $6dac: $78
	xor [hl]                                         ; $6dad: $ae
	ld [hl], d                                       ; $6dae: $72
	db $f4                                           ; $6daf: $f4
	ld h, [hl]                                       ; $6db0: $66
	ld [$c19a], a                                    ; $6db1: $ea $9a $c1
	rst $38                                          ; $6db4: $ff
	dec a                                            ; $6db5: $3d
	rst $38                                          ; $6db6: $ff
	add hl, bc                                       ; $6db7: $09
	ld a, e                                          ; $6db8: $7b
	or $7f                                           ; $6db9: $f6 $7f
	ld [de], a                                       ; $6dbb: $12
	sbc [hl]                                         ; $6dbc: $9e
	add [hl]                                         ; $6dbd: $86
	ld [hl], d                                       ; $6dbe: $72
	ld [$5a77], a                                    ; $6dbf: $ea $77 $5a
	sbc h                                            ; $6dc2: $9c
	ret c                                            ; $6dc3: $d8

	rst $38                                          ; $6dc4: $ff
	ld b, $7b                                        ; $6dc5: $06 $7b
	ldh a, [$7f]                                     ; $6dc7: $f0 $7f
	or $7f                                           ; $6dc9: $f6 $7f
	ld a, [$219e]                                    ; $6dcb: $fa $9e $21
	ld [hl], d                                       ; $6dce: $72
	sbc $7e                                          ; $6dcf: $de $7e
	adc $7f                                          ; $6dd1: $ce $7f
	add sp, -$62                                     ; $6dd3: $e8 $9e
	add sp, $6a                                      ; $6dd5: $e8 $6a
	cp [hl]                                          ; $6dd7: $be
	ld a, h                                          ; $6dd8: $7c
	ld l, h                                          ; $6dd9: $6c
	ld a, [hl]                                       ; $6dda: $7e
	jp nz, $967e                                     ; $6ddb: $c2 $7e $96

	halt                                             ; $6dde: $76
	ldh [c], a                                       ; $6ddf: $e2
	ld l, a                                          ; $6de0: $6f
	ld b, [hl]                                       ; $6de1: $46
	ld a, d                                          ; $6de2: $7a
	xor [hl]                                         ; $6de3: $ae
	sbc h                                            ; $6de4: $9c
	di                                               ; $6de5: $f3
	ld b, b                                          ; $6de6: $40
	rst AddAOntoHL                                          ; $6de7: $ef
	ld [hl], d                                       ; $6de8: $72
	ld hl, sp+$67                                    ; $6de9: $f8 $67
	cp $99                                           ; $6deb: $fe $99
	adc a                                            ; $6ded: $8f
	inc bc                                           ; $6dee: $03
	rst AddAOntoHL                                          ; $6def: $ef
	ld b, $ef                                        ; $6df0: $06 $ef
	inc b                                            ; $6df2: $04
	ld [hl], a                                       ; $6df3: $77
	or [hl]                                          ; $6df4: $b6
	sbc c                                            ; $6df5: $99
	ld hl, sp+$0f                                    ; $6df6: $f8 $0f
	ldh a, [$1f]                                     ; $6df8: $f0 $1f
	ldh [$3f], a                                     ; $6dfa: $e0 $3f
	ld [hl], d                                       ; $6dfc: $72
	jp c, $e37c                                      ; $6dfd: $da $7c $e3

	ld h, e                                          ; $6e00: $63
	rst SubAFromDE                                          ; $6e01: $df
	ld a, e                                          ; $6e02: $7b
	db $fd                                           ; $6e03: $fd
	ld a, a                                          ; $6e04: $7f
	ld [$cf5b], a                                    ; $6e05: $ea $5b $cf
	rst SubAFromDE                                          ; $6e08: $df
	ld hl, sp-$6e                                    ; $6e09: $f8 $92
	sub b                                            ; $6e0b: $90
	ld h, b                                          ; $6e0c: $60
	db $10                                           ; $6e0d: $10
	ldh [$34], a                                     ; $6e0e: $e0 $34
	jp nz, $8678                                     ; $6e10: $c2 $78 $86

	ld [hl+], a                                      ; $6e13: $22
	call c, $fc02                                    ; $6e14: $dc $02 $fc
	inc bc                                           ; $6e17: $03
	ld a, b                                          ; $6e18: $78
	cp [hl]                                          ; $6e19: $be
	push af                                          ; $6e1a: $f5
	ld l, [hl]                                       ; $6e1b: $6e
	or h                                             ; $6e1c: $b4
	rst FarCall                                          ; $6e1d: $f7
	sbc c                                            ; $6e1e: $99
	ldh a, [rP1]                                     ; $6e1f: $f0 $00
	rra                                              ; $6e21: $1f
	inc e                                            ; $6e22: $1c
	inc bc                                           ; $6e23: $03
	inc bc                                           ; $6e24: $03
	ld c, a                                          ; $6e25: $4f
	sbc $4f                                          ; $6e26: $de $4f
	cp $7e                                           ; $6e28: $fe $7e
	rst FarCall                                          ; $6e2a: $f7
	ld a, h                                          ; $6e2b: $7c
	ld [hl], c                                       ; $6e2c: $71
	ld d, a                                          ; $6e2d: $57
	cp $95                                           ; $6e2e: $fe $95
	ld bc, $000e                                     ; $6e30: $01 $0e $00
	ld e, $02                                        ; $6e33: $1e $02
	inc a                                            ; $6e35: $3c
	nop                                              ; $6e36: $00
	db $fc                                           ; $6e37: $fc
	inc b                                            ; $6e38: $04
	ld hl, sp-$02                                    ; $6e39: $f8 $fe
	ld a, l                                          ; $6e3b: $7d
	sub h                                            ; $6e3c: $94
	sbc l                                            ; $6e3d: $9d
	ld a, $01                                        ; $6e3e: $3e $01
	ld a, b                                          ; $6e40: $78
	jr c, @-$6b                                      ; $6e41: $38 $93

	add b                                            ; $6e43: $80
	ld a, b                                          ; $6e44: $78
	nop                                              ; $6e45: $00
	ld a, b                                          ; $6e46: $78
	ld b, b                                          ; $6e47: $40
	jr c, @+$22                                      ; $6e48: $38 $20

	ld d, $01                                        ; $6e4a: $16 $01
	adc [hl]                                         ; $6e4c: $8e
	ld [$7ac7], sp                                   ; $6e4d: $08 $c7 $7a
	push hl                                          ; $6e50: $e5
	sbc d                                            ; $6e51: $9a
	rrca                                             ; $6e52: $0f
	inc b                                            ; $6e53: $04
	inc bc                                           ; $6e54: $03
	ld [bc], a                                       ; $6e55: $02
	ld bc, $95fb                                     ; $6e56: $01 $fb $95
	add h                                            ; $6e59: $84
	inc bc                                           ; $6e5a: $03
	inc bc                                           ; $6e5b: $03
	jp nz, $c203                                     ; $6e5c: $c2 $03 $c2

	ld b, e                                          ; $6e5f: $43
	add c                                            ; $6e60: $81
	ld bc, $da81                                     ; $6e61: $01 $81 $da
	ld bc, $f19a                                     ; $6e64: $01 $9a $f1
	rst $38                                          ; $6e67: $ff
	ld sp, $61ff                                     ; $6e68: $31 $ff $61
	ld [hl], e                                       ; $6e6b: $73
	inc c                                            ; $6e6c: $0c
	ld [hl], a                                       ; $6e6d: $77
	and d                                            ; $6e6e: $a2
	sbc h                                            ; $6e6f: $9c
	inc sp                                           ; $6e70: $33
	rst $38                                          ; $6e71: $ff
	pop hl                                           ; $6e72: $e1
	ld a, d                                          ; $6e73: $7a
	ld hl, sp+$7e                                    ; $6e74: $f8 $7e
	ld a, [$fe7f]                                    ; $6e76: $fa $7f $fe
	sbc [hl]                                         ; $6e79: $9e
	ld b, d                                          ; $6e7a: $42
	ld l, c                                          ; $6e7b: $69
	or b                                             ; $6e7c: $b0
	sbc [hl]                                         ; $6e7d: $9e
	ldh a, [c]                                       ; $6e7e: $f2
	ld l, c                                          ; $6e7f: $69
	or h                                             ; $6e80: $b4
	ld a, a                                          ; $6e81: $7f
	cp $77                                           ; $6e82: $fe $77
	ldh [rPCM12], a                                  ; $6e84: $e0 $76
	ret nc                                           ; $6e86: $d0

	sbc [hl]                                         ; $6e87: $9e
	ld c, h                                          ; $6e88: $4c
	ld a, e                                          ; $6e89: $7b
	db $e4                                           ; $6e8a: $e4
	ld a, [hl]                                       ; $6e8b: $7e
	sub [hl]                                         ; $6e8c: $96
	ld [hl], a                                       ; $6e8d: $77
	adc $9c                                          ; $6e8e: $ce $9c
	or d                                             ; $6e90: $b2
	rst $38                                          ; $6e91: $ff
	ld a, [bc]                                       ; $6e92: $0a
	ld a, e                                          ; $6e93: $7b
	sub $9c                                          ; $6e94: $d6 $9c
	ld c, $ff                                        ; $6e96: $0e $ff
	inc de                                           ; $6e98: $13
	ld [hl], c                                       ; $6e99: $71
	sub h                                            ; $6e9a: $94
	ld a, a                                          ; $6e9b: $7f
	cp b                                             ; $6e9c: $b8
	sbc [hl]                                         ; $6e9d: $9e
	ld c, l                                          ; $6e9e: $4d
	ld [hl], e                                       ; $6e9f: $73
	and $7e                                          ; $6ea0: $e6 $7e
	xor d                                            ; $6ea2: $aa
	ld a, a                                          ; $6ea3: $7f
	or b                                             ; $6ea4: $b0
	sbc h                                            ; $6ea5: $9c
	ld d, b                                          ; $6ea6: $50
	rst $38                                          ; $6ea7: $ff
	sbc b                                            ; $6ea8: $98
	ld a, e                                          ; $6ea9: $7b
	ret z                                            ; $6eaa: $c8

	halt                                             ; $6eab: $76
	xor [hl]                                         ; $6eac: $ae
	halt                                             ; $6ead: $76
	sub $7e                                          ; $6eae: $d6 $7e
	ldh [c], a                                       ; $6eb0: $e2
	sbc l                                            ; $6eb1: $9d
	add e                                            ; $6eb2: $83
	db $fc                                           ; $6eb3: $fc
	ld h, d                                          ; $6eb4: $62
	db $ec                                           ; $6eb5: $ec
	ld [hl], l                                       ; $6eb6: $75
	sub a                                            ; $6eb7: $97
	ld a, d                                          ; $6eb8: $7a
	add e                                            ; $6eb9: $83
	sbc e                                            ; $6eba: $9b
	ld sp, hl                                        ; $6ebb: $f9
	rlca                                             ; $6ebc: $07
	ld hl, sp+$3f                                    ; $6ebd: $f8 $3f
	ld a, e                                          ; $6ebf: $7b
	push af                                          ; $6ec0: $f5
	ld a, l                                          ; $6ec1: $7d
	ld a, [hl]                                       ; $6ec2: $7e
	ld l, a                                          ; $6ec3: $6f
	ld [$479a], a                                    ; $6ec4: $ea $9a $47

jr_05d_6ec7:
	cp b                                             ; $6ec7: $b8
	rst SubAFromDE                                          ; $6ec8: $df
	jr nz, jr_05d_6ec7                               ; $6ec9: $20 $fc

	ld a, b                                          ; $6ecb: $78
	cp c                                             ; $6ecc: $b9
	ld a, l                                          ; $6ecd: $7d
	ld e, h                                          ; $6ece: $5c
	ld [hl], c                                       ; $6ecf: $71
	sbc e                                            ; $6ed0: $9b
	sbc b                                            ; $6ed1: $98
	ld hl, sp-$32                                    ; $6ed2: $f8 $ce
	jr nc, @+$01                                     ; $6ed4: $30 $ff

	nop                                              ; $6ed6: $00
	ld [hl], e                                       ; $6ed7: $73
	nop                                              ; $6ed8: $00
	ld [hl], e                                       ; $6ed9: $73
	ld c, e                                          ; $6eda: $4b
	ld [hl], e                                       ; $6edb: $73
	ldh [hDisp1_WX], a                                     ; $6edc: $e0 $96
	rst JumpTable                                          ; $6ede: $c7
	jr c, jr_05d_6f60                                ; $6edf: $38 $7f

	nop                                              ; $6ee1: $00
	ld a, [de]                                       ; $6ee2: $1a
	nop                                              ; $6ee3: $00
	adc h                                            ; $6ee4: $8c
	nop                                              ; $6ee5: $00
	add b                                            ; $6ee6: $80
	ld [hl], e                                       ; $6ee7: $73
	ldh a, [$9b]                                     ; $6ee8: $f0 $9b
	inc c                                            ; $6eea: $0c
	di                                               ; $6eeb: $f3
	cp a                                             ; $6eec: $bf
	ld b, b                                          ; $6eed: $40
	ld [hl], h                                       ; $6eee: $74
	adc c                                            ; $6eef: $89
	db $fd                                           ; $6ef0: $fd
	ld a, [hl]                                       ; $6ef1: $7e
	ld a, e                                          ; $6ef2: $7b
	ld [hl], a                                       ; $6ef3: $77
	xor $9c                                          ; $6ef4: $ee $9c
	di                                               ; $6ef6: $f3
	inc c                                            ; $6ef7: $0c
	dec de                                           ; $6ef8: $1b
	ld e, [hl]                                       ; $6ef9: $5e
	xor [hl]                                         ; $6efa: $ae
	ld a, e                                          ; $6efb: $7b
	ldh a, [$9a]                                     ; $6efc: $f0 $9a
	ld de, $feee                                     ; $6efe: $11 $ee $fe
	nop                                              ; $6f01: $00
	ld [$c05a], sp                                   ; $6f02: $08 $5a $c0
	ld l, d                                          ; $6f05: $6a
	ld h, h                                          ; $6f06: $64
	sbc $ff                                          ; $6f07: $de $ff
	ld l, [hl]                                       ; $6f09: $6e
	jp z, $c36e                                      ; $6f0a: $ca $6e $c3

	sbc $f0                                          ; $6f0d: $de $f0
	sub [hl]                                         ; $6f0f: $96
	pop af                                           ; $6f10: $f1
	db $10                                           ; $6f11: $10
	ld c, $04                                        ; $6f12: $0e $04
	ld b, d                                          ; $6f14: $42
	nop                                              ; $6f15: $00
	ld a, b                                          ; $6f16: $78
	nop                                              ; $6f17: $00
	inc a                                            ; $6f18: $3c
	db $fd                                           ; $6f19: $fd
	ld a, [hl]                                       ; $6f1a: $7e
	ret c                                            ; $6f1b: $d8

	sub [hl]                                         ; $6f1c: $96
	jr nz, jr_05d_6f3d                               ; $6f1d: $20 $1e

	db $10                                           ; $6f1f: $10
	db $e3                                           ; $6f20: $e3
	nop                                              ; $6f21: $00
	ld a, a                                          ; $6f22: $7f
	nop                                              ; $6f23: $00
	ld bc, $7980                                     ; $6f24: $01 $80 $79
	ld [hl], d                                       ; $6f27: $72
	sbc e                                            ; $6f28: $9b
	nop                                              ; $6f29: $00
	dec b                                            ; $6f2a: $05
	inc d                                            ; $6f2b: $14
	ld [$6279], sp                                   ; $6f2c: $08 $79 $62
	sbc l                                            ; $6f2f: $9d
	add a                                            ; $6f30: $87
	db $10                                           ; $6f31: $10
	ld a, c                                          ; $6f32: $79
	inc sp                                           ; $6f33: $33
	ld a, [hl]                                       ; $6f34: $7e
	ld b, [hl]                                       ; $6f35: $46
	ld a, [hl]                                       ; $6f36: $7e
	inc a                                            ; $6f37: $3c
	ld a, l                                          ; $6f38: $7d
	ld [hl], b                                       ; $6f39: $70
	ld a, a                                          ; $6f3a: $7f
	or $9b                                           ; $6f3b: $f6 $9b

jr_05d_6f3d:
	inc b                                            ; $6f3d: $04
	jp $c121                                         ; $6f3e: $c3 $21 $c1


	ld h, d                                          ; $6f41: $62
	call nz, $019a                                   ; $6f42: $c4 $9a $01
	dec b                                            ; $6f45: $05
	ld hl, sp+$00                                    ; $6f46: $f8 $00
	db $fc                                           ; $6f48: $fc
	ld l, d                                          ; $6f49: $6a
	jp z, $a173                                      ; $6f4a: $ca $73 $a1

	sbc e                                            ; $6f4d: $9b
	and b                                            ; $6f4e: $a0
	rst $38                                          ; $6f4f: $ff
	ret nc                                           ; $6f50: $d0

	rst $38                                          ; $6f51: $ff
	ld [hl], c                                       ; $6f52: $71
	cp d                                             ; $6f53: $ba
	sbc [hl]                                         ; $6f54: $9e
	db $e4                                           ; $6f55: $e4
	ld a, e                                          ; $6f56: $7b
	ld [$0f98], sp                                   ; $6f57: $08 $98 $0f
	rst FarCall                                          ; $6f5a: $f7
	rst FarCall                                          ; $6f5b: $f7
	db $f4                                           ; $6f5c: $f4
	rst FarCall                                          ; $6f5d: $f7
	ld a, h                                          ; $6f5e: $7c
	rst $38                                          ; $6f5f: $ff

jr_05d_6f60:
	ld a, d                                          ; $6f60: $7a
	ldh a, [$7f]                                     ; $6f61: $f0 $7f
	and $7e                                          ; $6f63: $e6 $7e
	call nc, $fe77                                   ; $6f65: $d4 $77 $fe
	sbc d                                            ; $6f68: $9a
	ld hl, sp+$7f                                    ; $6f69: $f8 $7f
	rst $38                                          ; $6f6b: $ff
	dec d                                            ; $6f6c: $15
	rst $38                                          ; $6f6d: $ff
	ld a, c                                          ; $6f6e: $79
	sbc [hl]                                         ; $6f6f: $9e
	halt                                             ; $6f70: $76
	db $ec                                           ; $6f71: $ec
	ld [hl], l                                       ; $6f72: $75
	ld h, d                                          ; $6f73: $62
	sbc h                                            ; $6f74: $9c
	dec b                                            ; $6f75: $05
	rst $38                                          ; $6f76: $ff
	call $ffde                                       ; $6f77: $cd $de $ff
	ld l, a                                          ; $6f7a: $6f
	db $e4                                           ; $6f7b: $e4
	ld a, c                                          ; $6f7c: $79
	adc h                                            ; $6f7d: $8c
	ld a, [hl]                                       ; $6f7e: $7e
	jp c, Jump_05d_767c                              ; $6f7f: $da $7c $76

	sbc e                                            ; $6f82: $9b
	rst SubAFromBC                                          ; $6f83: $e7
	cp $ff                                           ; $6f84: $fe $ff
	ret z                                            ; $6f86: $c8

	halt                                             ; $6f87: $76
	or d                                             ; $6f88: $b2
	ld l, [hl]                                       ; $6f89: $6e
	jp c, $fd7f                                      ; $6f8a: $da $7f $fd

	ld a, a                                          ; $6f8d: $7f
	ld a, [hl-]                                      ; $6f8e: $3a
	ld d, e                                          ; $6f8f: $53
	ld b, b                                          ; $6f90: $40
	cp $9e                                           ; $6f91: $fe $9e
	add c                                            ; $6f93: $81
	ld a, d                                          ; $6f94: $7a
	db $fc                                           ; $6f95: $fc
	ld a, b                                          ; $6f96: $78
	push af                                          ; $6f97: $f5
	ld a, a                                          ; $6f98: $7f
	and c                                            ; $6f99: $a1
	sbc h                                            ; $6f9a: $9c
	ldh a, [$31]                                     ; $6f9b: $f0 $31
	ret nz                                           ; $6f9d: $c0

	ld a, d                                          ; $6f9e: $7a
	ldh a, [c]                                       ; $6f9f: $f2
	ld a, a                                          ; $6fa0: $7f
	ld a, a                                          ; $6fa1: $7f
	halt                                             ; $6fa2: $76
	cp h                                             ; $6fa3: $bc
	ld a, e                                          ; $6fa4: $7b
	ldh a, [$7f]                                     ; $6fa5: $f0 $7f
	db $e4                                           ; $6fa7: $e4
	ld e, l                                          ; $6fa8: $5d
	and l                                            ; $6fa9: $a5
	ld a, [hl]                                       ; $6faa: $7e
	db $ed                                           ; $6fab: $ed
	ld [hl], a                                       ; $6fac: $77
	ldh a, [$74]                                     ; $6fad: $f0 $74
	or l                                             ; $6faf: $b5
	or $7f                                           ; $6fb0: $f6 $7f
	db $d3                                           ; $6fb2: $d3
	ld [hl], a                                       ; $6fb3: $77
	pop de                                           ; $6fb4: $d1
	ldh [$d0], a                                     ; $6fb5: $e0 $d0
	db $d3                                           ; $6fb7: $d3
	rst $38                                          ; $6fb8: $ff
	sbc d                                            ; $6fb9: $9a
	ld e, l                                          ; $6fba: $5d
	rst $38                                          ; $6fbb: $ff
	ldh a, [$f1]                                     ; $6fbc: $f0 $f1
	pop af                                           ; $6fbe: $f1
	sub $f0                                          ; $6fbf: $d6 $f0
	sbc l                                            ; $6fc1: $9d
	ld [hl], b                                       ; $6fc2: $70
	ldh a, [$7b]                                     ; $6fc3: $f0 $7b
	adc c                                            ; $6fc5: $89
	sub h                                            ; $6fc6: $94
	ld sp, hl                                        ; $6fc7: $f9
	nop                                              ; $6fc8: $00
	ldh a, [$80]                                     ; $6fc9: $f0 $80
	ld h, b                                          ; $6fcb: $60
	ld b, b                                          ; $6fcc: $40
	nop                                              ; $6fcd: $00
	nop                                              ; $6fce: $00
	rra                                              ; $6fcf: $1f
	ld [$7b07], sp                                   ; $6fd0: $08 $07 $7b
	adc e                                            ; $6fd3: $8b
	sbc h                                            ; $6fd4: $9c
	db $ec                                           ; $6fd5: $ec
	add hl, bc                                       ; $6fd6: $09
	add $7b                                          ; $6fd7: $c6 $7b
	ld a, [$3c7d]                                    ; $6fd9: $fa $7d $3c
	ld a, [hl]                                       ; $6fdc: $7e
	ld b, e                                          ; $6fdd: $43
	sbc b                                            ; $6fde: $98
	inc b                                            ; $6fdf: $04
	db $10                                           ; $6fe0: $10
	rst SubAFromBC                                          ; $6fe1: $e7
	nop                                              ; $6fe2: $00
	rst FarCall                                          ; $6fe3: $f7
	ld bc, $7bc0                                     ; $6fe4: $01 $c0 $7b
	ld d, c                                          ; $6fe7: $51
	ld l, a                                          ; $6fe8: $6f
	cp $6f                                           ; $6fe9: $fe $6f
	ld a, [hl-]                                      ; $6feb: $3a
	ld d, h                                          ; $6fec: $54
	cp $97                                           ; $6fed: $fe $97
	add b                                            ; $6fef: $80
	adc b                                            ; $6ff0: $88
	nop                                              ; $6ff1: $00
	and b                                            ; $6ff2: $a0
	rst $38                                          ; $6ff3: $ff
	push de                                          ; $6ff4: $d5
	rst $38                                          ; $6ff5: $ff
	ld a, [$ffd6]                                    ; $6ff6: $fa $d6 $ff
	sbc c                                            ; $6ff9: $99
	db $fc                                           ; $6ffa: $fc
	rst SubAFromBC                                          ; $6ffb: $e7
	ld a, [hl]                                       ; $6ffc: $7e
	db $e3                                           ; $6ffd: $e3
	cp $c3                                           ; $6ffe: $fe $c3
	ld a, b                                          ; $7000: $78
	ld b, [hl]                                       ; $7001: $46
	ld a, h                                          ; $7002: $7c
	ld a, h                                          ; $7003: $7c
	ld [hl], c                                       ; $7004: $71
	ld l, h                                          ; $7005: $6c
	ld a, l                                          ; $7006: $7d
	sbc l                                            ; $7007: $9d
	ld a, [hl]                                       ; $7008: $7e
	reti                                             ; $7009: $d9


	ld a, a                                          ; $700a: $7f
	db $fc                                           ; $700b: $fc
	sbc d                                            ; $700c: $9a
	ld d, l                                          ; $700d: $55
	rst $38                                          ; $700e: $ff
	xor a                                            ; $700f: $af
	rst $38                                          ; $7010: $ff
	rst SubAFromDE                                          ; $7011: $df
	ld l, a                                          ; $7012: $6f
	ldh [$8d], a                                     ; $7013: $e0 $8d
	cp $7c                                           ; $7015: $fe $7c
	cp $fd                                           ; $7017: $fe $fd
	rst $38                                          ; $7019: $ff
	rst $38                                          ; $701a: $ff
	cp $ff                                           ; $701b: $fe $ff
	db $fc                                           ; $701d: $fc
	rst $38                                          ; $701e: $ff
	ld hl, sp-$01                                    ; $701f: $f8 $ff
	ldh a, [rIE]                                     ; $7021: $f0 $ff
	ldh [$f3], a                                     ; $7023: $e0 $f3
	ld a, [$7bf9]                                    ; $7025: $fa $f9 $7b
	pop af                                           ; $7028: $f1
	ld a, e                                          ; $7029: $7b
	ldh a, [c]                                       ; $702a: $f2
	sbc [hl]                                         ; $702b: $9e
	ld [hl], b                                       ; $702c: $70
	ld a, c                                          ; $702d: $79
	ld l, h                                          ; $702e: $6c
	ld a, e                                          ; $702f: $7b
	cp $7b                                           ; $7030: $fe $7b
	inc bc                                           ; $7032: $03
	call c, $df80                                    ; $7033: $dc $80 $df
	add c                                            ; $7036: $81
	sbc c                                            ; $7037: $99
	cp $7e                                           ; $7038: $fe $7e
	push bc                                          ; $703a: $c5
	ld a, l                                          ; $703b: $7d
	jp z, $fb7b                                      ; $703c: $ca $7b $fb

	rst SubAFromDE                                          ; $703f: $df
	ld hl, sp-$21                                    ; $7040: $f8 $df
	inc b                                            ; $7042: $04
	rst SubAFromDE                                          ; $7043: $df
	rst $38                                          ; $7044: $ff
	sbc e                                            ; $7045: $9b
	rra                                              ; $7046: $1f
	rst $38                                          ; $7047: $ff
	ccf                                              ; $7048: $3f
	pop af                                           ; $7049: $f1
	rst FarCall                                          ; $704a: $f7
	rst SubAFromDE                                          ; $704b: $df
	db $fc                                           ; $704c: $fc
	sbc [hl]                                         ; $704d: $9e
	inc bc                                           ; $704e: $03
	ld [hl], d                                       ; $704f: $72
	and l                                            ; $7050: $a5
	rst FarCall                                          ; $7051: $f7
	rst SubAFromDE                                          ; $7052: $df
	ret nz                                           ; $7053: $c0

	sbc [hl]                                         ; $7054: $9e
	jr c, jr_05d_70cb                                ; $7055: $38 $74

	cp d                                             ; $7057: $ba
	ldh [$b4], a                                     ; $7058: $e0 $b4
	sbc [hl]                                         ; $705a: $9e
	xor d                                            ; $705b: $aa
	ld a, e                                          ; $705c: $7b
	ld b, h                                          ; $705d: $44
	ld d, a                                          ; $705e: $57
	db $fc                                           ; $705f: $fc
	sub [hl]                                         ; $7060: $96
	or d                                             ; $7061: $b2
	ldh a, [$50]                                     ; $7062: $f0 $50
	di                                               ; $7064: $f3
	or c                                             ; $7065: $b1
	ldh a, [$50]                                     ; $7066: $f0 $50
	ldh a, [$b7]                                     ; $7068: $f0 $b7
	ld a, e                                          ; $706a: $7b
	ld hl, sp-$70                                    ; $706b: $f8 $90
	or d                                             ; $706d: $b2
	pop af                                           ; $706e: $f1
	ld d, b                                          ; $706f: $50
	pop af                                           ; $7070: $f1
	jr nz, jr_05d_7092                               ; $7071: $20 $1f

	nop                                              ; $7073: $00
	db $fd                                           ; $7074: $fd
	nop                                              ; $7075: $00
	ld sp, hl                                        ; $7076: $f9
	ld [bc], a                                       ; $7077: $02
	add hl, de                                       ; $7078: $19
	nop                                              ; $7079: $00
	rra                                              ; $707a: $1f
	ld bc, $137a                                     ; $707b: $01 $7a $13
	sub a                                            ; $707e: $97
	ld b, b                                          ; $707f: $40
	adc a                                            ; $7080: $8f
	nop                                              ; $7081: $00
	rst FarCall                                          ; $7082: $f7
	nop                                              ; $7083: $00
	add e                                            ; $7084: $83
	inc h                                            ; $7085: $24
	sbc c                                            ; $7086: $99
	ld a, e                                          ; $7087: $7b
	db $ec                                           ; $7088: $ec
	ld a, a                                          ; $7089: $7f
	cp $7e                                           ; $708a: $fe $7e
	cp [hl]                                          ; $708c: $be
	add c                                            ; $708d: $81
	pop hl                                           ; $708e: $e1
	nop                                              ; $708f: $00
	pop hl                                           ; $7090: $e1
	add c                                            ; $7091: $81

jr_05d_7092:
	ld c, $01                                        ; $7092: $0e $01
	adc [hl]                                         ; $7094: $8e
	ld bc, $008e                                     ; $7095: $01 $8e $00
	adc a                                            ; $7098: $8f
	ld de, $00ae                                     ; $7099: $11 $ae $00
	cp [hl]                                          ; $709c: $be
	nop                                              ; $709d: $00
	cp h                                             ; $709e: $bc
	db $10                                           ; $709f: $10
	and b                                            ; $70a0: $a0
	nop                                              ; $70a1: $00
	ld a, [bc]                                       ; $70a2: $0a
	nop                                              ; $70a3: $00
	inc l                                            ; $70a4: $2c
	db $10                                           ; $70a5: $10
	inc c                                            ; $70a6: $0c
	nop                                              ; $70a7: $00
	stop                                             ; $70a8: $10 $00
	inc b                                            ; $70aa: $04
	inc b                                            ; $70ab: $04
	ld h, [hl]                                       ; $70ac: $66
	ld h, b                                          ; $70ad: $60
	ld a, [hl]                                       ; $70ae: $7e
	db $f4                                           ; $70af: $f4
	sbc d                                            ; $70b0: $9a
	cp [hl]                                          ; $70b1: $be
	rst $38                                          ; $70b2: $ff
	cp h                                             ; $70b3: $bc
	rst $38                                          ; $70b4: $ff
	sbc h                                            ; $70b5: $9c
	ld a, b                                          ; $70b6: $78
	adc h                                            ; $70b7: $8c
	ld [hl], a                                       ; $70b8: $77
	cp $69                                           ; $70b9: $fe $69
	adc $63                                          ; $70bb: $ce $63
	cp $7d                                           ; $70bd: $fe $7d
	adc e                                            ; $70bf: $8b
	ld l, a                                          ; $70c0: $6f
	cp $96                                           ; $70c1: $fe $96
	ccf                                              ; $70c3: $3f
	rst $38                                          ; $70c4: $ff
	ld a, $ff                                        ; $70c5: $3e $ff
	inc a                                            ; $70c7: $3c
	rst AddAOntoHL                                          ; $70c8: $ef
	jr z, @+$01                                      ; $70c9: $28 $ff

jr_05d_70cb:
	ldh [$78], a                                     ; $70cb: $e0 $78
	ld a, l                                          ; $70cd: $7d
	ld [hl], l                                       ; $70ce: $75
	sub b                                            ; $70cf: $90
	ld h, a                                          ; $70d0: $67
	ldh [$72], a                                     ; $70d1: $e0 $72
	jp z, $fe5f                                      ; $70d3: $ca $5f $fe

	sbc c                                            ; $70d6: $99
	ld [$f43b], a                                    ; $70d7: $ea $3b $f4
	rla                                              ; $70da: $17
	db $fc                                           ; $70db: $fc
	rrca                                             ; $70dc: $0f
	ld a, e                                          ; $70dd: $7b
	cp $8e                                           ; $70de: $fe $8e
	rlca                                             ; $70e0: $07

Jump_05d_70e1:
	rst $38                                          ; $70e1: $ff
	inc bc                                           ; $70e2: $03
	cp $03                                           ; $70e3: $fe $03
	rst $38                                          ; $70e5: $ff
	ld bc, $c54f                                     ; $70e6: $01 $4f $c5
	ccf                                              ; $70e9: $3f
	pop af                                           ; $70ea: $f1
	ccf                                              ; $70eb: $3f
	ldh [c], a                                       ; $70ec: $e2
	ld a, a                                          ; $70ed: $7f
	ret nz                                           ; $70ee: $c0

	ld a, a                                          ; $70ef: $7f
	ret nz                                           ; $70f0: $c0

	ld a, c                                          ; $70f1: $79
	xor l                                            ; $70f2: $ad
	ld [hl], e                                       ; $70f3: $73

jr_05d_70f4:
	cp $7e                                           ; $70f4: $fe $7e
	adc e                                            ; $70f6: $8b
	sbc d                                            ; $70f7: $9a
	rst SubAFromBC                                          ; $70f8: $e7
	ccf                                              ; $70f9: $3f
	ret nz                                           ; $70fa: $c0

	ld a, a                                          ; $70fb: $7f
	add c                                            ; $70fc: $81
	ld a, e                                          ; $70fd: $7b
	adc c                                            ; $70fe: $89
	ld [hl], b                                       ; $70ff: $70
	ld [hl], $9d                                     ; $7100: $36 $9d
	cp $01                                           ; $7102: $fe $01
	ld a, e                                          ; $7104: $7b
	ld a, [$d89e]                                    ; $7105: $fa $9e $d8
	ld a, e                                          ; $7108: $7b
	xor c                                            ; $7109: $a9
	ld h, l                                          ; $710a: $65
	ld d, l                                          ; $710b: $55
	ld a, c                                          ; $710c: $79
	ld h, b                                          ; $710d: $60
	sbc d                                            ; $710e: $9a
	add b                                            ; $710f: $80
	ld b, b                                          ; $7110: $40
	ret nz                                           ; $7111: $c0

	jr nz, jr_05d_70f4                               ; $7112: $20 $e0

	ld [hl], a                                       ; $7114: $77
	cp $7f                                           ; $7115: $fe $7f
	ld hl, sp-$20                                    ; $7117: $f8 $e0
	pop bc                                           ; $7119: $c1
	ld e, b                                          ; $711a: $58
	nop                                              ; $711b: $00
	sbc b                                            ; $711c: $98
	inc sp                                           ; $711d: $33
	ld [hl+], a                                      ; $711e: $22
	inc sp                                           ; $711f: $33
	inc sp                                           ; $7120: $33
	inc hl                                           ; $7121: $23
	inc sp                                           ; $7122: $33
	dec h                                            ; $7123: $25
	sbc $55                                          ; $7124: $de $55
	db $dd                                           ; $7126: $dd
	inc sp                                           ; $7127: $33
	sbc l                                            ; $7128: $9d
	inc h                                            ; $7129: $24
	ld b, d                                          ; $712a: $42
	sbc $66                                          ; $712b: $de $66
	ld a, e                                          ; $712d: $7b
	or $9e                                           ; $712e: $f6 $9e
	ld [hl-], a                                      ; $7130: $32
	sbc $22                                          ; $7131: $de $22
	sbc e                                            ; $7133: $9b
	ld h, [hl]                                       ; $7134: $66
	ld b, [hl]                                       ; $7135: $46
	ld h, [hl]                                       ; $7136: $66
	ld h, l                                          ; $7137: $65
	sbc $33                                          ; $7138: $de $33
	sbc c                                            ; $713a: $99
	ld [hl+], a                                      ; $713b: $22
	inc h                                            ; $713c: $24
	ld [hl+], a                                      ; $713d: $22
	ld [hl+], a                                      ; $713e: $22
	ld b, l                                          ; $713f: $45
	ld d, l                                          ; $7140: $55
	ld a, e                                          ; $7141: $7b
	jp c, $ec77                                      ; $7142: $da $77 $ec

	sbc h                                            ; $7145: $9c
	ld [hl+], a                                      ; $7146: $22
	dec h                                            ; $7147: $25
	ld d, d                                          ; $7148: $52
	ld h, a                                          ; $7149: $67
	or $de                                           ; $714a: $f6 $de
	ld [hl+], a                                      ; $714c: $22
	ld l, a                                          ; $714d: $6f
	or $9b                                           ; $714e: $f6 $9b
	ld h, $66                                        ; $7150: $26 $66
	ld d, l                                          ; $7152: $55
	ld d, d                                          ; $7153: $52
	ld [hl], a                                       ; $7154: $77
	ret c                                            ; $7155: $d8

	rst SubAFromDE                                          ; $7156: $df

jr_05d_7157:
	ld [hl+], a                                      ; $7157: $22
	sbc [hl]                                         ; $7158: $9e
	daa                                              ; $7159: $27
	sbc $77                                          ; $715a: $de $77
	sbc $33                                          ; $715c: $de $33
	sbc h                                            ; $715e: $9c
	ld b, h                                          ; $715f: $44
	ld b, d                                          ; $7160: $42
	inc hl                                           ; $7161: $23
	jp c, $dd33                                      ; $7162: $da $33 $dd

	ld b, h                                          ; $7165: $44
	sbc [hl]                                         ; $7166: $9e
	ld b, d                                          ; $7167: $42
	call c, $9833                                    ; $7168: $dc $33 $98
	ld b, d                                          ; $716b: $42
	ld b, h                                          ; $716c: $44
	inc h                                            ; $716d: $24
	ld b, h                                          ; $716e: $44
	ld b, h                                          ; $716f: $44
	inc sp                                           ; $7170: $33
	inc sp                                           ; $7171: $33
	ld c, b                                          ; $7172: $48
	adc h                                            ; $7173: $8c
	sbc l                                            ; $7174: $9d
	dec d                                            ; $7175: $15
	ld a, [de]                                       ; $7176: $1a
	ld a, e                                          ; $7177: $7b
	cp $9c                                           ; $7178: $fe $9c
	jr jr_05d_7191                                   ; $717a: $18 $15

	jr jr_05d_7157                                   ; $717c: $18 $d9

	ldh a, [hDisp0_LCDC]                                     ; $717e: $f0 $82
	ld b, b                                          ; $7180: $40
	add b                                            ; $7181: $80
	ld a, l                                          ; $7182: $7d
	ld a, [hl+]                                      ; $7183: $2a
	ld h, h                                          ; $7184: $64
	jr z, jr_05d_7197                                ; $7185: $28 $10

	and d                                            ; $7187: $a2
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	ld [bc], a                                       ; $718a: $02
	ld d, l                                          ; $718b: $55
	dec de                                           ; $718c: $1b
	rla                                              ; $718d: $17
	cpl                                              ; $718e: $2f
	ld e, a                                          ; $718f: $5f
	nop                                              ; $7190: $00

jr_05d_7191:
	ld a, [de]                                       ; $7191: $1a
	ld d, h                                          ; $7192: $54
	cp b                                             ; $7193: $b8
	ld [de], a                                       ; $7194: $12
	nop                                              ; $7195: $00
	ld [de], a                                       ; $7196: $12

jr_05d_7197:
	and b                                            ; $7197: $a0
	nop                                              ; $7198: $00
	dec b                                            ; $7199: $05
	xor e                                            ; $719a: $ab
	ld b, a                                          ; $719b: $47
	adc a                                            ; $719c: $8f
	sbc $ff                                          ; $719d: $de $ff
	rst SubAFromDE                                          ; $719f: $df
	ld bc, $2996                                     ; $71a0: $01 $96 $29
	nop                                              ; $71a3: $00

jr_05d_71a4:
	xor d                                            ; $71a4: $aa
	dec d                                            ; $71a5: $15
	and d                                            ; $71a6: $a2
	ld d, b                                          ; $71a7: $50
	nop                                              ; $71a8: $00
	rst $38                                          ; $71a9: $ff
	cp $dc                                           ; $71aa: $fe $dc
	rst $38                                          ; $71ac: $ff
	sub e                                            ; $71ad: $93
	jp z, $ca25                                      ; $71ae: $ca $25 $ca

	ld b, c                                          ; $71b1: $41
	add d                                            ; $71b2: $82
	nop                                              ; $71b3: $00
	add d                                            ; $71b4: $82
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	ret nz                                           ; $71b7: $c0

	nop                                              ; $71b8: $00
	add b                                            ; $71b9: $80
	db $dd                                           ; $71ba: $dd
	ret nz                                           ; $71bb: $c0

	sub [hl]                                         ; $71bc: $96
	sbc a                                            ; $71bd: $9f
	ld a, a                                          ; $71be: $7f
	cp a                                             ; $71bf: $bf
	ld a, a                                          ; $71c0: $7f
	rst $38                                          ; $71c1: $ff
	ld a, b                                          ; $71c2: $78
	ld hl, sp+$71                                    ; $71c3: $f8 $71
	jr z, jr_05d_71a4                                ; $71c5: $28 $dd

	ld [$0fdf], sp                                   ; $71c7: $08 $df $0f
	sbc [hl]                                         ; $71ca: $9e
	rra                                              ; $71cb: $1f
	db $dd                                           ; $71cc: $dd
	rst $38                                          ; $71cd: $ff
	sbc e                                            ; $71ce: $9b
	db $fd                                           ; $71cf: $fd
	add hl, sp                                       ; $71d0: $39
	rst SubAFromBC                                          ; $71d1: $e7
	ld d, h                                          ; $71d2: $54
	cp $9a                                           ; $71d3: $fe $9a
	inc bc                                           ; $71d5: $03
	ld c, $f7                                        ; $71d6: $0e $f7
	rst SubAFromDE                                          ; $71d8: $df
	cp h                                             ; $71d9: $bc
	db $dd                                           ; $71da: $dd
	rst $38                                          ; $71db: $ff
	sbc e                                            ; $71dc: $9b
	set 7, b                                         ; $71dd: $cb $f8
	rst $38                                          ; $71df: $ff
	sbc a                                            ; $71e0: $9f

Jump_05d_71e1:
	cp $9a                                           ; $71e1: $fe $9a
	db $fc                                           ; $71e3: $fc
	scf                                              ; $71e4: $37
	rst $38                                          ; $71e5: $ff
	rst $38                                          ; $71e6: $ff
	sbc a                                            ; $71e7: $9f
	call c, $9cff                                    ; $71e8: $dc $ff $9c
	ld h, b                                          ; $71eb: $60
	sub b                                            ; $71ec: $90
	add sp, -$03                                     ; $71ed: $e8 $fd
	sbc [hl]                                         ; $71ef: $9e
	add b                                            ; $71f0: $80
	reti                                             ; $71f1: $d9


	rst $38                                          ; $71f2: $ff
	ld sp, hl                                        ; $71f3: $f9
	dec sp                                           ; $71f4: $3b
	ldh a, [$73]                                     ; $71f5: $f0 $73
	adc d                                            ; $71f7: $8a
	ld e, e                                          ; $71f8: $5b
	ldh a, [$97]                                     ; $71f9: $f0 $97
	and e                                            ; $71fb: $a3
	ld b, d                                          ; $71fc: $42
	and d                                            ; $71fd: $a2
	ld b, c                                          ; $71fe: $41

Call_05d_71ff:
	db $fd                                           ; $71ff: $fd
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	ld a, [bc]                                       ; $7202: $0a
	cp $df                                           ; $7203: $fe $df
	ld [bc], a                                       ; $7205: $02
	rst SubAFromDE                                          ; $7206: $df
	rst $38                                          ; $7207: $ff
	sub [hl]                                         ; $7208: $96
	ldh a, [hDisp0_OBP1]                                     ; $7209: $f0 $87
	sbc a                                            ; $720b: $9f
	cp a                                             ; $720c: $bf
	sbc [hl]                                         ; $720d: $9e
	cp a                                             ; $720e: $bf
	ld a, $1e                                        ; $720f: $3e $1e
	ld l, h                                          ; $7211: $6c
	sbc $41                                          ; $7212: $de $41
	add b                                            ; $7214: $80
	ld b, e                                          ; $7215: $43
	ld b, d                                          ; $7216: $42
	jp nz, $06c2                                     ; $7217: $c2 $c2 $06

	ld [hl], $b7                                     ; $721a: $36 $b7
	ccf                                              ; $721c: $3f
	ld l, a                                          ; $721d: $6f
	ld l, a                                          ; $721e: $6f
	ld a, l                                          ; $721f: $7d
	call c, $bddb                                    ; $7220: $dc $db $bd
	inc a                                            ; $7223: $3c
	jr c, jr_05d_725e                                ; $7224: $38 $38

	ld a, b                                          ; $7226: $78
	ld [hl], d                                       ; $7227: $72
	ld [hl], e                                       ; $7228: $73
	rst FarCall                                          ; $7229: $f7
	ld a, a                                          ; $722a: $7f
	ld a, a                                          ; $722b: $7f
	ld [$8085], a                                    ; $722c: $ea $85 $80
	ld bc, $ff03                                     ; $722f: $01 $03 $ff
	add b                                            ; $7232: $80
	add b                                            ; $7233: $80
	sub h                                            ; $7234: $94
	dec d                                            ; $7235: $15
	ld a, d                                          ; $7236: $7a
	ld a, a                                          ; $7237: $7f
	cp $fc                                           ; $7238: $fe $fc
	rst $38                                          ; $723a: $ff
	rst $38                                          ; $723b: $ff
	ld e, a                                          ; $723c: $5f
	add [hl]                                         ; $723d: $86
	dec hl                                           ; $723e: $2b
	ld d, a                                          ; $723f: $57
	ld [hl], a                                       ; $7240: $77
	xor l                                            ; $7241: $ad
	sbc e                                            ; $7242: $9b
	and b                                            ; $7243: $a0
	ld [hl], b                                       ; $7244: $70
	ret nc                                           ; $7245: $d0

	xor b                                            ; $7246: $a8
	ld a, e                                          ; $7247: $7b
	ld a, l                                          ; $7248: $7d
	sub a                                            ; $7249: $97
	and b                                            ; $724a: $a0
	ld hl, sp-$0a                                    ; $724b: $f8 $f6
	db $fc                                           ; $724d: $fc
	cp $fa                                           ; $724e: $fe $fa
	xor h                                            ; $7250: $ac
	ld e, b                                          ; $7251: $58
	db $fc                                           ; $7252: $fc
	sbc c                                            ; $7253: $99
	inc b                                            ; $7254: $04
	ld d, b                                          ; $7255: $50
	and b                                            ; $7256: $a0
	ld d, a                                          ; $7257: $57
	dec hl                                           ; $7258: $2b
	dec b                                            ; $7259: $05
	ld a, e                                          ; $725a: $7b
	and d                                            ; $725b: $a2
	sbc l                                            ; $725c: $9d
	dec b                                            ; $725d: $05

jr_05d_725e:
	cpl                                              ; $725e: $2f
	ld h, e                                          ; $725f: $63
	adc l                                            ; $7260: $8d
	sbc b                                            ; $7261: $98
	ld [$a855], a                                    ; $7262: $ea $55 $a8
	ld d, l                                          ; $7265: $55
	xor d                                            ; $7266: $aa
	ld a, a                                          ; $7267: $7f
	ld [$95f9], a                                    ; $7268: $ea $f9 $95
	inc d                                            ; $726b: $14
	db $10                                           ; $726c: $10
	db $f4                                           ; $726d: $f4
	ldh [$f0], a                                     ; $726e: $e0 $f0
	ldh [$e0], a                                     ; $7270: $e0 $e0
	ld h, b                                          ; $7272: $60
	ldh a, [$f0]                                     ; $7273: $f0 $f0
	call c, $9a20                                    ; $7275: $dc $20 $9a
	and b                                            ; $7278: $a0
	ld b, b                                          ; $7279: $40
	ld a, [bc]                                       ; $727a: $0a
	ld bc, $fe3d                                     ; $727b: $01 $3d $fe
	sbc [hl]                                         ; $727e: $9e
	ld a, a                                          ; $727f: $7f
	sbc $3f                                          ; $7280: $de $3f
	sbc [hl]                                         ; $7282: $9e
	ld [bc], a                                       ; $7283: $02
	db $fd                                           ; $7284: $fd
	sbc h                                            ; $7285: $9c
	ld e, d                                          ; $7286: $5a
	sbc b                                            ; $7287: $98
	ld a, [hl+]                                      ; $7288: $2a
	ld a, d                                          ; $7289: $7a
	ld hl, sp-$7f                                    ; $728a: $f8 $81
	dec b                                            ; $728c: $05
	ldh a, [$e7]                                     ; $728d: $f0 $e7
	rst SubAFromBC                                          ; $728f: $e7
	rst JumpTable                                          ; $7290: $c7
	rlca                                             ; $7291: $07
	rlca                                             ; $7292: $07
	nop                                              ; $7293: $00
	rrca                                             ; $7294: $0f
	rrca                                             ; $7295: $0f
	sub b                                            ; $7296: $90
	ld c, b                                          ; $7297: $48
	xor c                                            ; $7298: $a9
	dec b                                            ; $7299: $05
	adc c                                            ; $729a: $89
	sbc a                                            ; $729b: $9f
	ld [hl], h                                       ; $729c: $74
	nop                                              ; $729d: $00
	ldh [$f0], a                                     ; $729e: $e0 $f0
	cp $ff                                           ; $72a0: $fe $ff
	ld b, $00                                        ; $72a2: $06 $00
	sbc a                                            ; $72a4: $9f
	rst $38                                          ; $72a5: $ff
	ld [bc], a                                       ; $72a6: $02
	nop                                              ; $72a7: $00
	add d                                            ; $72a8: $82
	ld b, b                                          ; $72a9: $40
	ld a, e                                          ; $72aa: $7b
	db $fc                                           ; $72ab: $fc
	sbc [hl]                                         ; $72ac: $9e
	add b                                            ; $72ad: $80
	ld [hl], a                                       ; $72ae: $77
	ld bc, $96fd                                     ; $72af: $01 $fd $96
	ldh a, [c]                                       ; $72b2: $f2
	ld [hl], e                                       ; $72b3: $73
	di                                               ; $72b4: $f3
	ld [hl], e                                       ; $72b5: $73
	di                                               ; $72b6: $f3
	ld [hl], d                                       ; $72b7: $72
	ldh a, [c]                                       ; $72b8: $f2
	ld [hl], d                                       ; $72b9: $72
	rra                                              ; $72ba: $1f
	db $dd                                           ; $72bb: $dd
	ld e, $de                                        ; $72bc: $1e $de
	rra                                              ; $72be: $1f
	sub l                                            ; $72bf: $95
	xor h                                            ; $72c0: $ac
	ld d, [hl]                                       ; $72c1: $56
	xor h                                            ; $72c2: $ac
	ld e, h                                          ; $72c3: $5c
	xor a                                            ; $72c4: $af
	ld e, l                                          ; $72c5: $5d
	or [hl]                                          ; $72c6: $b6
	ret c                                            ; $72c7: $d8

	ld a, [hl]                                       ; $72c8: $7e
	cp $7b                                           ; $72c9: $fe $7b
	ld d, e                                          ; $72cb: $53
	sbc h                                            ; $72cc: $9c
	cp $f9                                           ; $72cd: $fe $f9
	rst SubAFromBC                                          ; $72cf: $e7
	sbc $3f                                          ; $72d0: $de $3f
	ld a, a                                          ; $72d2: $7f
	res 1, l                                         ; $72d3: $cb $8d
	rst JumpTable                                          ; $72d5: $c7
	inc bc                                           ; $72d6: $03
	inc e                                            ; $72d7: $1c
	cp a                                             ; $72d8: $bf
	ld a, a                                          ; $72d9: $7f
	cp a                                             ; $72da: $bf
	sbc a                                            ; $72db: $9f
	rst $38                                          ; $72dc: $ff
	ccf                                              ; $72dd: $3f
	rst $38                                          ; $72de: $ff
	rst $38                                          ; $72df: $ff
	add sp, -$18                                     ; $72e0: $e8 $e8
	db $f4                                           ; $72e2: $f4
	db $fd                                           ; $72e3: $fd

Call_05d_72e4:
	cp $ff                                           ; $72e4: $fe $ff
	ld [hl], a                                       ; $72e6: $77
	ld a, d                                          ; $72e7: $7a
	or l                                             ; $72e8: $b5
	sub d                                            ; $72e9: $92
	rst $38                                          ; $72ea: $ff
	or $f5                                           ; $72eb: $f6 $f5
	db $f4                                           ; $72ed: $f4
	db $fc                                           ; $72ee: $fc
	db $fc                                           ; $72ef: $fc
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	or l                                             ; $72f2: $b5
	ld c, b                                          ; $72f3: $48
	push de                                          ; $72f4: $d5
	xor d                                            ; $72f5: $aa
	ld [hl], l                                       ; $72f6: $75
	sbc $ff                                          ; $72f7: $de $ff
	sbc d                                            ; $72f9: $9a
	ld c, d                                          ; $72fa: $4a
	or a                                             ; $72fb: $b7
	ld a, [hl+]                                      ; $72fc: $2a
	ld d, l                                          ; $72fd: $55
	adc d                                            ; $72fe: $8a
	cp $9a                                           ; $72ff: $fe $9a
	ld b, b                                          ; $7301: $40
	add e                                            ; $7302: $83
	ld c, [hl]                                       ; $7303: $4e
	xor a                                            ; $7304: $af
	ld e, [hl]                                       ; $7305: $5e
	ld a, d                                          ; $7306: $7a
	sbc b                                            ; $7307: $98
	ld a, a                                          ; $7308: $7f
	adc $80                                          ; $7309: $ce $80
	or h                                             ; $730b: $b4
	ld e, e                                          ; $730c: $5b
	or a                                             ; $730d: $b7
	ld [hl], a                                       ; $730e: $77
	ld [bc], a                                       ; $730f: $02
	nop                                              ; $7310: $00
	ld a, [bc]                                       ; $7311: $0a
	push af                                          ; $7312: $f5
	ld l, d                                          ; $7313: $6a
	push af                                          ; $7314: $f5
	ld a, [de]                                       ; $7315: $1a

jr_05d_7316:
	rst $38                                          ; $7316: $ff
	db $fd                                           ; $7317: $fd
	rst $38                                          ; $7318: $ff
	push af                                          ; $7319: $f5
	ld a, [$fe1d]                                    ; $731a: $fa $1d $fe
	rst $38                                          ; $731d: $ff
	ld a, [$0aa5]                                    ; $731e: $fa $a5 $0a
	and l                                            ; $7321: $a5
	ld c, d                                          ; $7322: $4a
	and h                                            ; $7323: $a4
	ld b, d                                          ; $7324: $42
	and l                                            ; $7325: $a5
	ld c, d                                          ; $7326: $4a
	ld d, b                                          ; $7327: $50
	ldh a, [$50]                                     ; $7328: $f0 $50
	add b                                            ; $732a: $80
	or c                                             ; $732b: $b1
	ld d, e                                          ; $732c: $53
	or b                                             ; $732d: $b0
	ld d, b                                          ; $732e: $50
	or b                                             ; $732f: $b0
	cp [hl]                                          ; $7330: $be
	ld [hl], l                                       ; $7331: $75
	ld b, l                                          ; $7332: $45
	rrca                                             ; $7333: $0f
	dec bc                                           ; $7334: $0b
	bit 1, d                                         ; $7335: $cb $4a
	cp $04                                           ; $7337: $fe $04
	inc c                                            ; $7339: $0c
	cp l                                             ; $733a: $bd
	ld sp, hl                                        ; $733b: $f9
	ld sp, hl                                        ; $733c: $f9
	dec sp                                           ; $733d: $3b
	dec sp                                           ; $733e: $3b
	inc de                                           ; $733f: $13
	rst $38                                          ; $7340: $ff
	cp h                                             ; $7341: $bc
	or c                                             ; $7342: $b1
	db $eb                                           ; $7343: $eb
	ld b, a                                          ; $7344: $47
	jp $bfeb                                         ; $7345: $c3 $eb $bf


	db $fc                                           ; $7348: $fc
	di                                               ; $7349: $f3
	adc a                                            ; $734a: $8f
	rst AddAOntoHL                                          ; $734b: $ef
	jp $a7e7                                         ; $734c: $c3 $e7 $a7


	xor e                                            ; $734f: $ab
	rst $38                                          ; $7350: $ff
	rst $38                                          ; $7351: $ff
	jr z, jr_05d_7316                                ; $7352: $28 $c2

	ldh [$fc], a                                     ; $7354: $e0 $fc
	ldh a, [$f4]                                     ; $7356: $f0 $f4
	ld [$c000], a                                    ; $7358: $ea $00 $c0
	ld a, d                                          ; $735b: $7a
	call nz, $ff80                                   ; $735c: $c4 $80 $ff
	ei                                               ; $735f: $fb
	pop af                                           ; $7360: $f1
	ld a, [$1830]                                    ; $7361: $fa $30 $18
	ld c, l                                          ; $7364: $4d
	ld [hl], e                                       ; $7365: $73
	ld [hl], $3d                                     ; $7366: $36 $3d
	dec sp                                           ; $7368: $3b
	ld h, l                                          ; $7369: $65
	rra                                              ; $736a: $1f
	rrca                                             ; $736b: $0f
	add $e6                                          ; $736c: $c6 $e6
	di                                               ; $736e: $f3
	di                                               ; $736f: $f3
	db $fd                                           ; $7370: $fd
	jr nz, @+$09                                     ; $7371: $20 $07

	cpl                                              ; $7373: $2f
	bit 7, h                                         ; $7374: $cb $7c
	and h                                            ; $7376: $a4
	ld b, b                                          ; $7377: $40
	nop                                              ; $7378: $00
	call c, $d0f8                                    ; $7379: $dc $f8 $d0
	nop                                              ; $737c: $00
	sub h                                            ; $737d: $94
	add e                                            ; $737e: $83
	ld e, e                                          ; $737f: $5b
	cp a                                             ; $7380: $bf
	db $fc                                           ; $7381: $fc
	ld a, a                                          ; $7382: $7f
	xor a                                            ; $7383: $af
	ld e, a                                          ; $7384: $5f
	xor d                                            ; $7385: $aa
	ld d, a                                          ; $7386: $57
	ld c, d                                          ; $7387: $4a
	add c                                            ; $7388: $81
	ld [hl], d                                       ; $7389: $72
	db $f4                                           ; $738a: $f4
	rst SubAFromDE                                          ; $738b: $df
	add b                                            ; $738c: $80
	ld a, d                                          ; $738d: $7a
	ret nz                                           ; $738e: $c0

	sbc [hl]                                         ; $738f: $9e
	ld a, [$ffde]                                    ; $7390: $fa $de $ff
	sbc h                                            ; $7393: $9c
	xor a                                            ; $7394: $af
	rst $38                                          ; $7395: $ff
	xor e                                            ; $7396: $ab
	ld sp, hl                                        ; $7397: $f9
	sbc e                                            ; $7398: $9b
	ld h, c                                          ; $7399: $61
	pop hl                                           ; $739a: $e1
	ldh [$e0], a                                     ; $739b: $e0 $e0
	sbc $c0                                          ; $739d: $de $c0
	sbc l                                            ; $739f: $9d
	ld b, b                                          ; $73a0: $40
	and b                                            ; $73a1: $a0
	sbc $20                                          ; $73a2: $de $20
	sbc $40                                          ; $73a4: $de $40
	add b                                            ; $73a6: $80
	ld b, c                                          ; $73a7: $41
	ld d, l                                          ; $73a8: $55
	nop                                              ; $73a9: $00
	rst GetHLinHL                                          ; $73aa: $cf
	xor d                                            ; $73ab: $aa
	add b                                            ; $73ac: $80
	ld a, [bc]                                       ; $73ad: $0a
	jr nc, jr_05d_73da                               ; $73ae: $30 $2a

	rst $38                                          ; $73b0: $ff
	rst $38                                          ; $73b1: $ff
	jr nc, @+$81                                     ; $73b2: $30 $7f

	ld a, a                                          ; $73b4: $7f
	rlca                                             ; $73b5: $07
	rrca                                             ; $73b6: $0f
	rst $38                                          ; $73b7: $ff
	ld d, l                                          ; $73b8: $55
	nop                                              ; $73b9: $00
	pop hl                                           ; $73ba: $e1
	and d                                            ; $73bb: $a2
	ld hl, $53b8                                     ; $73bc: $21 $b8 $53
	sbc c                                            ; $73bf: $99
	rst $38                                          ; $73c0: $ff
	rst $38                                          ; $73c1: $ff
	rra                                              ; $73c2: $1f
	rst $38                                          ; $73c3: $ff
	rst JumpTable                                          ; $73c4: $c7
	rst JumpTable                                          ; $73c5: $c7
	sub b                                            ; $73c6: $90
	db $fc                                           ; $73c7: $fc
	ldh [rHDMA5], a                                  ; $73c8: $e0 $55
	nop                                              ; $73ca: $00
	jr nz, @-$5e                                     ; $73cb: $20 $a0

	ld d, b                                          ; $73cd: $50
	and e                                            ; $73ce: $a3
	ld e, a                                          ; $73cf: $5f
	cp [hl]                                          ; $73d0: $be
	rst $38                                          ; $73d1: $ff
	rst $38                                          ; $73d2: $ff
	ret nz                                           ; $73d3: $c0

	ret nz                                           ; $73d4: $c0

	ldh [$7b], a                                     ; $73d5: $e0 $7b
	ld a, l                                          ; $73d7: $7d
	sbc l                                            ; $73d8: $9d
	ld [bc], a                                       ; $73d9: $02

jr_05d_73da:
	add b                                            ; $73da: $80
	ld [hl], a                                       ; $73db: $77
	and l                                            ; $73dc: $a5
	sbc $80                                          ; $73dd: $de $80
	ld a, [$f19c]                                    ; $73df: $fa $9c $f1
	pop hl                                           ; $73e2: $e1
	ldh [c], a                                       ; $73e3: $e2
	sbc $e3                                          ; $73e4: $de $e3
	rst SubAFromDE                                          ; $73e6: $df
	di                                               ; $73e7: $f3
	sbc [hl]                                         ; $73e8: $9e
	rra                                              ; $73e9: $1f
	call c, $df3f                                    ; $73ea: $dc $3f $df
	dec l                                            ; $73ed: $2d
	sub a                                            ; $73ee: $97
	add a                                            ; $73ef: $87
	ld a, $7e                                        ; $73f0: $3e $7e
	rst GetHLinHL                                          ; $73f2: $cf
	cp a                                             ; $73f3: $bf
	ei                                               ; $73f4: $fb
	rst AddAOntoHL                                          ; $73f5: $ef
	db $eb                                           ; $73f6: $eb
	db $dd                                           ; $73f7: $dd
	rst $38                                          ; $73f8: $ff
	adc b                                            ; $73f9: $88
	rst SubAFromDE                                          ; $73fa: $df
	db $db                                           ; $73fb: $db
	adc $4e                                          ; $73fc: $ce $4e
	cp $e1                                           ; $73fe: $fe $e1
	rst SubAFromDE                                          ; $7400: $df
	ld sp, hl                                        ; $7401: $f9
	rst FarCall                                          ; $7402: $f7
	db $fd                                           ; $7403: $fd
	cp a                                             ; $7404: $bf
	dec d                                            ; $7405: $15
	rst $38                                          ; $7406: $ff
	rst $38                                          ; $7407: $ff
	rst SubAFromBC                                          ; $7408: $e7
	ld c, [hl]                                       ; $7409: $4e
	sbc a                                            ; $740a: $9f
	dec c                                            ; $740b: $0d
	rlca                                             ; $740c: $07
	rlca                                             ; $740d: $07
	inc e                                            ; $740e: $1c
	call z, $dee4                                    ; $740f: $cc $e4 $de
	db $fc                                           ; $7412: $fc
	rst SubAFromDE                                          ; $7413: $df
	ld a, d                                          ; $7414: $7a
	ld a, c                                          ; $7415: $79
	and [hl]                                         ; $7416: $a6
	add b                                            ; $7417: $80
	dec e                                            ; $7418: $1d
	sbc h                                            ; $7419: $9c
	call c, $1212                                    ; $741a: $dc $12 $12
	nop                                              ; $741d: $00
	add $94                                          ; $741e: $c6 $94
	ld [hl], e                                       ; $7420: $73
	and a                                            ; $7421: $a7
	ld h, e                                          ; $7422: $63
	ld h, $23                                        ; $7423: $26 $23
	rst $38                                          ; $7425: $ff
	add hl, sp                                       ; $7426: $39
	dec hl                                           ; $7427: $2b
	dec c                                            ; $7428: $0d
	ld a, [bc]                                       ; $7429: $0a
	ld c, $0b                                        ; $742a: $0e $0b
	rrca                                             ; $742c: $0f
	ld a, e                                          ; $742d: $7b
	db $f4                                           ; $742e: $f4
	rst GetHLinHL                                          ; $742f: $cf
	ld sp, hl                                        ; $7430: $f9
	db $fd                                           ; $7431: $fd
	jp Jump_05d_7f1f                                 ; $7432: $c3 $1f $7f


	rst FarCall                                          ; $7435: $f7
	ei                                               ; $7436: $fb
	sbc l                                            ; $7437: $9d
	cp e                                             ; $7438: $bb
	ld a, a                                          ; $7439: $7f
	ld [hl], c                                       ; $743a: $71
	add h                                            ; $743b: $84
	sbc e                                            ; $743c: $9b
	set 6, h                                         ; $743d: $cb $f4
	rst SubAFromBC                                          ; $743f: $e7
	rst GetHLinHL                                          ; $7440: $cf
	ld a, d                                          ; $7441: $7a
	ld b, h                                          ; $7442: $44
	sbc [hl]                                         ; $7443: $9e
	di                                               ; $7444: $f3
	ld a, d                                          ; $7445: $7a
	adc [hl]                                         ; $7446: $8e
	ld a, d                                          ; $7447: $7a
	add c                                            ; $7448: $81
	sub l                                            ; $7449: $95
	rst $38                                          ; $744a: $ff
	and h                                            ; $744b: $a4
	ret z                                            ; $744c: $c8

	ld h, b                                          ; $744d: $60
	and b                                            ; $744e: $a0
	ret nc                                           ; $744f: $d0

	ret nc                                           ; $7450: $d0

	db $10                                           ; $7451: $10
	adc b                                            ; $7452: $88
	ret nc                                           ; $7453: $d0

	db $db                                           ; $7454: $db
	ldh a, [hDisp1_BGP]                                     ; $7455: $f0 $92
	ld hl, sp-$69                                    ; $7457: $f8 $97
	ld d, $19                                        ; $7459: $16 $19
	scf                                              ; $745b: $37
	cpl                                              ; $745c: $2f
	cpl                                              ; $745d: $2f
	dec hl                                           ; $745e: $2b
	ld e, e                                          ; $745f: $5b
	ld [hl], a                                       ; $7460: $77
	ld [hl], a                                       ; $7461: $77
	ld a, $3f                                        ; $7462: $3e $3f
	sbc $2f                                          ; $7464: $de $2f
	sub d                                            ; $7466: $92
	ld e, a                                          ; $7467: $5f
	di                                               ; $7468: $f3
	add c                                            ; $7469: $81
	rrca                                             ; $746a: $0f
	xor c                                            ; $746b: $a9
	ldh a, [c]                                       ; $746c: $f2
	rst $38                                          ; $746d: $ff
	rst $38                                          ; $746e: $ff
	ld a, a                                          ; $746f: $7f
	rst GetHLinHL                                          ; $7470: $cf
	ld a, a                                          ; $7471: $7f
	ccf                                              ; $7472: $3f
	rst JumpTable                                          ; $7473: $c7
	halt                                             ; $7474: $76
	adc $87                                          ; $7475: $ce $87
	sub c                                            ; $7477: $91
	push af                                          ; $7478: $f5
	db $fd                                           ; $7479: $fd
	cp $81                                           ; $747a: $fe $81
	rst $38                                          ; $747c: $ff
	cp $fd                                           ; $747d: $fe $fd
	ldh [$f8], a                                     ; $747f: $e0 $f8
	cp $ff                                           ; $7481: $fe $ff
	ld a, a                                          ; $7483: $7f
	cp $fd                                           ; $7484: $fe $fd
	ei                                               ; $7486: $fb
	dec sp                                           ; $7487: $3b
	ld a, e                                          ; $7488: $7b
	ld a, c                                          ; $7489: $79
	db $fd                                           ; $748a: $fd
	db $fd                                           ; $748b: $fd
	rst JumpTable                                          ; $748c: $c7
	pop af                                           ; $748d: $f1
	adc e                                            ; $748e: $8b
	call c, $86fd                                    ; $748f: $dc $fd $86
	dec c                                            ; $7492: $0d
	push hl                                          ; $7493: $e5
	push af                                          ; $7494: $f5
	dec c                                            ; $7495: $0d
	ld a, a                                          ; $7496: $7f
	or e                                             ; $7497: $b3
	cp $6c                                           ; $7498: $fe $6c
	nop                                              ; $749a: $00
	ld bc, $f007                                     ; $749b: $01 $07 $f0
	add b                                            ; $749e: $80
	nop                                              ; $749f: $00
	ld bc, $ff93                                     ; $74a0: $01 $93 $ff
	cp $f8                                           ; $74a3: $fe $f8
	nop                                              ; $74a5: $00
	rlca                                             ; $74a6: $07
	adc [hl]                                         ; $74a7: $8e
	inc e                                            ; $74a8: $1c
	sub l                                            ; $74a9: $95
	xor d                                            ; $74aa: $aa
	ld [hl], a                                       ; $74ab: $77
	ld [hl+], a                                      ; $74ac: $22
	sub h                                            ; $74ad: $94
	ld bc, $2a83                                     ; $74ae: $01 $83 $2a
	ld d, l                                          ; $74b1: $55
	ld a, a                                          ; $74b2: $7f
	rst $38                                          ; $74b3: $ff
	rst $38                                          ; $74b4: $ff
	cpl                                              ; $74b5: $2f
	ld a, [de]                                       ; $74b6: $1a
	or c                                             ; $74b7: $b1
	ldh [c], a                                       ; $74b8: $e2
	ld [hl], a                                       ; $74b9: $77
	pop af                                           ; $74ba: $f1
	sbc e                                            ; $74bb: $9b
	ret nc                                           ; $74bc: $d0

	push hl                                          ; $74bd: $e5
	ld c, [hl]                                       ; $74be: $4e
	dec e                                            ; $74bf: $1d
	ld a, e                                          ; $74c0: $7b
	pop af                                           ; $74c1: $f1
	sub a                                            ; $74c2: $97
	ld b, c                                          ; $74c3: $41

jr_05d_74c4:
	ld b, b                                          ; $74c4: $40
	ld b, c                                          ; $74c5: $41
	ld b, d                                          ; $74c6: $42
	ld b, e                                          ; $74c7: $43
	add d                                            ; $74c8: $82
	add d                                            ; $74c9: $82
	add c                                            ; $74ca: $81
	halt                                             ; $74cb: $76
	call nz, Call_05d_408e                           ; $74cc: $c4 $8e $40
	add c                                            ; $74cf: $81
	add c                                            ; $74d0: $81
	add e                                            ; $74d1: $83
	ld b, [hl]                                       ; $74d2: $46
	nop                                              ; $74d3: $00
	ret nc                                           ; $74d4: $d0

	push af                                          ; $74d5: $f5
	nop                                              ; $74d6: $00
	push de                                          ; $74d7: $d5
	nop                                              ; $74d8: $00
	ld d, l                                          ; $74d9: $55
	ld hl, sp+$00                                    ; $74da: $f8 $00
	cpl                                              ; $74dc: $2f
	ld e, a                                          ; $74dd: $5f
	rst $38                                          ; $74de: $ff
	ld a, e                                          ; $74df: $7b
	ldh [rIE], a                                     ; $74e0: $e0 $ff
	sub [hl]                                         ; $74e2: $96
	jr jr_05d_753a                                   ; $74e3: $18 $55

	nop                                              ; $74e5: $00
	ld b, l                                          ; $74e6: $45
	ld c, $50                                        ; $74e7: $0e $50
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	rst SubAFromBC                                          ; $74eb: $e7
	halt                                             ; $74ec: $76
	ld d, c                                          ; $74ed: $51
	adc [hl]                                         ; $74ee: $8e
	rst $38                                          ; $74ef: $ff
	cp l                                             ; $74f0: $bd
	inc a                                            ; $74f1: $3c
	ld bc, $0354                                     ; $74f2: $01 $54 $03
	ld d, h                                          ; $74f5: $54
	inc b                                            ; $74f6: $04
	ld d, c                                          ; $74f7: $51
	ld a, [hl]                                       ; $74f8: $7e
	nop                                              ; $74f9: $00
	cp $ff                                           ; $74fa: $fe $ff
	db $fc                                           ; $74fc: $fc
	ld hl, sp-$08                                    ; $74fd: $f8 $f8
	cp $fd                                           ; $74ff: $fe $fd
	rst SubAFromDE                                          ; $7501: $df
	ld bc, $1b9d                                     ; $7502: $01 $9d $1b
	ld h, $fb                                        ; $7505: $26 $fb
	sbc l                                            ; $7507: $9d
	dec de                                           ; $7508: $1b
	inc h                                            ; $7509: $24
	sbc $f3                                          ; $750a: $de $f3
	sbc $f2                                          ; $750c: $de $f2
	add b                                            ; $750e: $80
	ld a, [$2d26]                                    ; $750f: $fa $26 $2d
	dec l                                            ; $7512: $2d
	inc l                                            ; $7513: $2c
	inc l                                            ; $7514: $2c
	ld c, h                                          ; $7515: $4c
	ld c, h                                          ; $7516: $4c
	call c, Call_05d_7624                            ; $7517: $dc $24 $76
	ld h, b                                          ; $751a: $60
	and b                                            ; $751b: $a0
	ld [hl], b                                       ; $751c: $70
	db $10                                           ; $751d: $10
	jr @+$0a                                         ; $751e: $18 $08

	inc c                                            ; $7520: $0c
	ld b, h                                          ; $7521: $44
	jr nz, jr_05d_74c4                               ; $7522: $20 $a0

	ld h, b                                          ; $7524: $60
	db $10                                           ; $7525: $10
	db $10                                           ; $7526: $10
	ld [$230c], sp                                   ; $7527: $08 $0c $23
	jr nz, jr_05d_758c                               ; $752a: $20 $60

	add hl, bc                                       ; $752c: $09
	pop af                                           ; $752d: $f1
	sub a                                            ; $752e: $97
	inc bc                                           ; $752f: $03
	ld h, e                                          ; $7530: $63
	rlca                                             ; $7531: $07
	ld [bc], a                                       ; $7532: $02
	ld b, b                                          ; $7533: $40
	ld b, b                                          ; $7534: $40
	ld [$7bb0], sp                                   ; $7535: $08 $b0 $7b
	push bc                                          ; $7538: $c5
	add e                                            ; $7539: $83

jr_05d_753a:
	ld a, [$e8f4]                                    ; $753a: $fa $f4 $e8
	ldh a, [$c0]                                     ; $753d: $f0 $c0
	ret nz                                           ; $753f: $c0

	add b                                            ; $7540: $80
	add b                                            ; $7541: $80
	ld [de], a                                       ; $7542: $12
	inc h                                            ; $7543: $24
	jr z, @+$7e                                      ; $7544: $28 $7c

	ld l, d                                          ; $7546: $6a
	db $ed                                           ; $7547: $ed
	xor d                                            ; $7548: $aa
	xor l                                            ; $7549: $ad
	inc h                                            ; $754a: $24
	ld h, a                                          ; $754b: $67
	add l                                            ; $754c: $85
	ld b, a                                          ; $754d: $47
	add l                                            ; $754e: $85
	ld b, l                                          ; $754f: $45
	jp nz, $0fc7                                     ; $7550: $c2 $c7 $0f

	dec c                                            ; $7553: $0d
	dec l                                            ; $7554: $2d
	dec l                                            ; $7555: $2d
	sbc $2f                                          ; $7556: $de $2f
	add h                                            ; $7558: $84
	add hl, hl                                       ; $7559: $29
	ld [hl], e                                       ; $755a: $73
	ld h, c                                          ; $755b: $61
	cp a                                             ; $755c: $bf
	add b                                            ; $755d: $80
	sbc a                                            ; $755e: $9f
	cp $ad                                           ; $755f: $fe $ad
	ld [hl], l                                       ; $7561: $75
	pop hl                                           ; $7562: $e1
	pop hl                                           ; $7563: $e1
	rst $38                                          ; $7564: $ff
	ldh a, [rIE]                                     ; $7565: $f0 $ff
	db $eb                                           ; $7567: $eb
	rst SubAFromBC                                          ; $7568: $e7
	rst JumpTable                                          ; $7569: $c7
	di                                               ; $756a: $f3
	pop hl                                           ; $756b: $e1
	rst $38                                          ; $756c: $ff
	nop                                              ; $756d: $00
	ld a, $1f                                        ; $756e: $3e $1f
	db $ed                                           ; $7570: $ed
	db $eb                                           ; $7571: $eb
	ld hl, $7b21                                     ; $7572: $21 $21 $7b
	ld h, d                                          ; $7575: $62
	sub h                                            ; $7576: $94
	push af                                          ; $7577: $f5
	ld sp, hl                                        ; $7578: $f9
	jr c, @-$56                                      ; $7579: $38 $a8

	xor b                                            ; $757b: $a8
	ld l, b                                          ; $757c: $68
	ld l, c                                          ; $757d: $69
	ld l, d                                          ; $757e: $6a
	db $eb                                           ; $757f: $eb
	ld d, l                                          ; $7580: $55
	and [hl]                                         ; $7581: $a6
	sbc $f8                                          ; $7582: $de $f8
	sub b                                            ; $7584: $90
	ld sp, hl                                        ; $7585: $f9
	ld a, [$fdfb]                                    ; $7586: $fa $fb $fd
	cp $55                                           ; $7589: $fe $55
	push af                                          ; $758b: $f5

jr_05d_758c:
	db $fd                                           ; $758c: $fd
	adc h                                            ; $758d: $8c
	ld b, d                                          ; $758e: $42
	ld sp, $79f9                                     ; $758f: $31 $f9 $79
	ld e, l                                          ; $7592: $5d
	db $fd                                           ; $7593: $fd
	ld [hl], e                                       ; $7594: $73
	ld hl, sp-$78                                    ; $7595: $f8 $88
	ld [hl], c                                       ; $7597: $71
	ld a, a                                          ; $7598: $7f
	ld l, e                                          ; $7599: $6b
	ld [hl], b                                       ; $759a: $70
	cp b                                             ; $759b: $b8
	ld a, a                                          ; $759c: $7f
	ccf                                              ; $759d: $3f
	rra                                              ; $759e: $1f
	inc e                                            ; $759f: $1c
	rst $38                                          ; $75a0: $ff
	ld hl, sp-$10                                    ; $75a1: $f8 $f0
	ld hl, sp+$6f                                    ; $75a3: $f8 $6f
	ld h, $13                                        ; $75a5: $26 $13
	db $10                                           ; $75a7: $10
	ei                                               ; $75a8: $fb
	ld hl, sp+$1a                                    ; $75a9: $f8 $1a
	dec bc                                           ; $75ab: $0b
	adc l                                            ; $75ac: $8d
	adc [hl]                                         ; $75ad: $8e
	ld a, c                                          ; $75ae: $79
	rst SubAFromBC                                          ; $75af: $e7
	adc a                                            ; $75b0: $8f
	rst $38                                          ; $75b1: $ff
	rrca                                             ; $75b2: $0f
	rrca                                             ; $75b3: $0f
	add a                                            ; $75b4: $87
	add e                                            ; $75b5: $83
	inc bc                                           ; $75b6: $03
	ld b, $67                                        ; $75b7: $06 $67
	push af                                          ; $75b9: $f5
	or $66                                           ; $75ba: $f6 $66
	adc h                                            ; $75bc: $8c
	ld [$fff0], sp                                   ; $75bd: $08 $f0 $ff
	ld sp, hl                                        ; $75c0: $f9
	sbc $fb                                          ; $75c1: $de $fb
	add [hl]                                         ; $75c3: $86
	rst FarCall                                          ; $75c4: $f7
	rst $38                                          ; $75c5: $ff
	rst $38                                          ; $75c6: $ff
	ldh a, [rIF]                                     ; $75c7: $f0 $0f
	ld [bc], a                                       ; $75c9: $02
	nop                                              ; $75ca: $00
	ld [hl+], a                                      ; $75cb: $22
	ld [hl], b                                       ; $75cc: $70
	ld a, [hl+]                                      ; $75cd: $2a
	db $10                                           ; $75ce: $10
	xor d                                            ; $75cf: $aa
	ldh a, [$fc]                                     ; $75d0: $f0 $fc
	db $fc                                           ; $75d2: $fc
	ret c                                            ; $75d3: $d8

	add b                                            ; $75d4: $80
	ret nz                                           ; $75d5: $c0

	ldh [rLCDC], a                                   ; $75d6: $e0 $40
	rst $38                                          ; $75d8: $ff
	xor d                                            ; $75d9: $aa
	nop                                              ; $75da: $00
	xor d                                            ; $75db: $aa
	ld bc, $fe7b                                     ; $75dc: $01 $7b $fe
	ld h, b                                          ; $75df: $60
	ld b, b                                          ; $75e0: $40
	sbc e                                            ; $75e1: $9b
	xor d                                            ; $75e2: $aa
	dec b                                            ; $75e3: $05
	xor d                                            ; $75e4: $aa
	ld d, l                                          ; $75e5: $55
	ld a, e                                          ; $75e6: $7b
	cp $f9                                           ; $75e7: $fe $f9
	sbc $82                                          ; $75e9: $de $82
	sbc d                                            ; $75eb: $9a
	add e                                            ; $75ec: $83
	add h                                            ; $75ed: $84
	add l                                            ; $75ee: $85
	nop                                              ; $75ef: $00
	nop                                              ; $75f0: $00
	sbc $81                                          ; $75f1: $de $81
	sbc h                                            ; $75f3: $9c
	add b                                            ; $75f4: $80
	add e                                            ; $75f5: $83
	add e                                            ; $75f6: $83
	cp $98                                           ; $75f7: $fe $98
	ld d, l                                          ; $75f9: $55
	ld [bc], a                                       ; $75fa: $02
	call nc, Call_05d_43aa                           ; $75fb: $d4 $aa $43
	add b                                            ; $75fe: $80
	nop                                              ; $75ff: $00
	sbc $ff                                          ; $7600: $de $ff
	ld a, [hl]                                       ; $7602: $7e
	ld hl, $b278                                     ; $7603: $21 $78 $b2
	add a                                            ; $7606: $87
	ld a, [bc]                                       ; $7607: $0a
	dec a                                            ; $7608: $3d
	ld [hl+], a                                      ; $7609: $22
	dec h                                            ; $760a: $25
	add e                                            ; $760b: $83
	push af                                          ; $760c: $f5
	add hl, bc                                       ; $760d: $09
	ld [$c3ff], sp                                   ; $760e: $08 $ff $c3
	pop bc                                           ; $7611: $c1
	jp $0fff                                         ; $7612: $c3 $ff $0f


	ld b, $07                                        ; $7615: $06 $07
	cp [hl]                                          ; $7617: $be
	ld a, h                                          ; $7618: $7c
	pop hl                                           ; $7619: $e1
	ret nc                                           ; $761a: $d0

	ret nz                                           ; $761b: $c0

	and b                                            ; $761c: $a0
	ret nz                                           ; $761d: $c0

	ld a, h                                          ; $761e: $7c
	ld a, c                                          ; $761f: $79
	ret nc                                           ; $7620: $d0

	ld a, c                                          ; $7621: $79
	ld b, a                                          ; $7622: $47
	ld a, l                                          ; $7623: $7d

Call_05d_7624:
	add a                                            ; $7624: $87
	add b                                            ; $7625: $80
	inc l                                            ; $7626: $2c
	inc a                                            ; $7627: $3c
	ld a, [de]                                       ; $7628: $1a
	db $10                                           ; $7629: $10
	ld [hl-], a                                      ; $762a: $32
	ld e, b                                          ; $762b: $58
	ld e, b                                          ; $762c: $58
	cpl                                              ; $762d: $2f
	inc h                                            ; $762e: $24
	ld a, [hl+]                                      ; $762f: $2a
	db $10                                           ; $7630: $10
	ld [de], a                                       ; $7631: $12
	jr nc, jr_05d_7686                               ; $7632: $30 $52

	ld c, h                                          ; $7634: $4c
	inc h                                            ; $7635: $24
	ld a, $1e                                        ; $7636: $3e $1e
	ld c, h                                          ; $7638: $4c
	rrca                                             ; $7639: $0f
	ld c, a                                          ; $763a: $4f
	dec e                                            ; $763b: $1d

jr_05d_763c:
	dec de                                           ; $763c: $1b
	rst $38                                          ; $763d: $ff
	inc h                                            ; $763e: $24
	ld e, l                                          ; $763f: $5d
	inc b                                            ; $7640: $04
	ld b, a                                          ; $7641: $47
	ld b, $44                                        ; $7642: $06 $44
	add hl, hl                                       ; $7644: $29
	sub c                                            ; $7645: $91
	ld de, $0b0e                                     ; $7646: $11 $0e $0b
	add hl, bc                                       ; $7649: $09
	ld [wTaskParam2_word0], sp                                   ; $764a: $08 $b8 $d0
	jr nz, jr_05d_765f                               ; $764d: $20 $10

	ld a, [$08f9]                                    ; $764f: $fa $f9 $08
	ld [$7bf8], sp                                   ; $7652: $08 $f8 $7b
	ld hl, sp-$62                                    ; $7655: $f8 $9e
	rrca                                             ; $7657: $0f
	ld a, b                                          ; $7658: $78
	halt                                             ; $7659: $76
	sub a                                            ; $765a: $97
	ccf                                              ; $765b: $3f
	inc de                                           ; $765c: $13
	inc de                                           ; $765d: $13
	scf                                              ; $765e: $37

jr_05d_765f:
	inc bc                                           ; $765f: $03
	adc a                                            ; $7660: $8f
	cp $78                                           ; $7661: $fe $78
	ld l, h                                          ; $7663: $6c
	db $ec                                           ; $7664: $ec
	rst SubAFromDE                                          ; $7665: $df
	add b                                            ; $7666: $80
	adc d                                            ; $7667: $8a
	ldh a, [$ec]                                     ; $7668: $f0 $ec
	di                                               ; $766a: $f3
	pop bc                                           ; $766b: $c1
	rst $38                                          ; $766c: $ff
	rst $38                                          ; $766d: $ff
	add b                                            ; $766e: $80
	add b                                            ; $766f: $80
	rst $38                                          ; $7670: $ff
	ld a, a                                          ; $7671: $7f
	ccf                                              ; $7672: $3f
	ld a, a                                          ; $7673: $7f
	rlca                                             ; $7674: $07
	ld bc, $ff01                                     ; $7675: $01 $01 $ff
	nop                                              ; $7678: $00
	db $10                                           ; $7679: $10
	jr nc, jr_05d_763c                               ; $767a: $30 $c0

Jump_05d_767c:
	jp hl                                            ; $767c: $e9


	ld a, d                                          ; $767d: $7a
	ld b, [hl]                                       ; $767e: $46
	sub e                                            ; $767f: $93
	rst $38                                          ; $7680: $ff
	rst AddAOntoHL                                          ; $7681: $ef
	rst GetHLinHL                                          ; $7682: $cf
	rst $38                                          ; $7683: $ff
	ld a, e                                          ; $7684: $7b
	ld b, e                                          ; $7685: $43

jr_05d_7686:
	or b                                             ; $7686: $b0
	rst SubAFromHL                                          ; $7687: $d7
	ld d, [hl]                                       ; $7688: $56
	daa                                              ; $7689: $27
	ld de, $791e                                     ; $768a: $11 $1e $79
	add h                                            ; $768d: $84
	ld a, d                                          ; $768e: $7a
	ld [hl-], a                                      ; $768f: $32
	rst SubAFromDE                                          ; $7690: $df
	rst $38                                          ; $7691: $ff
	sub [hl]                                         ; $7692: $96
	rst FarCall                                          ; $7693: $f7
	ldh a, [$03]                                     ; $7694: $f0 $03
	ld a, [$f9da]                                    ; $7696: $fa $da $f9
	ldh [c], a                                       ; $7699: $e2
	ld e, $1f                                        ; $769a: $1e $1f
	ld [hl], e                                       ; $769c: $73
	ld e, a                                          ; $769d: $5f
	rst SubAFromDE                                          ; $769e: $df
	cp $8f                                           ; $769f: $fe $8f
	xor e                                            ; $76a1: $ab
	xor h                                            ; $76a2: $ac
	ld b, a                                          ; $76a3: $47
	sbc a                                            ; $76a4: $9f
	sub a                                            ; $76a5: $97
	inc sp                                           ; $76a6: $33
	dec de                                           ; $76a7: $1b
	ld sp, $ecf9                                     ; $76a8: $31 $f9 $ec
	rst JumpTable                                          ; $76ab: $c7

jr_05d_76ac:
	sbc a                                            ; $76ac: $9f
	or e                                             ; $76ad: $b3
	ld de, $2010                                     ; $76ae: $11 $10 $20
	db $dd                                           ; $76b1: $dd
	ld sp, hl                                        ; $76b2: $f9
	ld a, [hl]                                       ; $76b3: $7e
	cp d                                             ; $76b4: $ba
	sub d                                            ; $76b5: $92
	xor $dc                                          ; $76b6: $ee $dc
	pop af                                           ; $76b8: $f1
	ld sp, hl                                        ; $76b9: $f9
	pop hl                                           ; $76ba: $e1
	pop hl                                           ; $76bb: $e1
	pop bc                                           ; $76bc: $c1
	ld hl, sp-$18                                    ; $76bd: $f8 $e8
	ld [$060e], sp                                   ; $76bf: $08 $0e $06
	inc bc                                           ; $76c2: $03
	ld a, e                                          ; $76c3: $7b
	sbc e                                            ; $76c4: $9b
	sbc e                                            ; $76c5: $9b
	ld b, b                                          ; $76c6: $40
	jr nz, jr_05d_76d1                               ; $76c7: $20 $08

	inc b                                            ; $76c9: $04
	ld l, a                                          ; $76ca: $6f

jr_05d_76cb:
	ld hl, sp-$6d                                    ; $76cb: $f8 $93
	ld c, $3f                                        ; $76cd: $0e $3f
	rst $38                                          ; $76cf: $ff
	dec a                                            ; $76d0: $3d

jr_05d_76d1:
	ld a, [hl]                                       ; $76d1: $7e
	or b                                             ; $76d2: $b0
	ret nz                                           ; $76d3: $c0

	add b                                            ; $76d4: $80
	inc c                                            ; $76d5: $0c
	jr c, jr_05d_76cb                                ; $76d6: $38 $f3

	dec l                                            ; $76d8: $2d
	ld [hl], a                                       ; $76d9: $77
	ld hl, sp-$6e                                    ; $76da: $f8 $92
	jr c, jr_05d_76ac                                ; $76dc: $38 $ce

	ld a, $f7                                        ; $76de: $3e $f7
	ld sp, $1033                                     ; $76e0: $31 $33 $10
	jr nz, jr_05d_771d                               ; $76e3: $20 $38

	call z, $d132                                    ; $76e5: $cc $32 $d1
	db $10                                           ; $76e8: $10
	db $fd                                           ; $76e9: $fd
	ld a, d                                          ; $76ea: $7a
	ret nc                                           ; $76eb: $d0

	sbc e                                            ; $76ec: $9b
	ret nz                                           ; $76ed: $c0

	ld [$2a70], a                                    ; $76ee: $ea $70 $2a
	ld [hl], e                                       ; $76f1: $73
	ld h, h                                          ; $76f2: $64
	ld a, a                                          ; $76f3: $7f
	pop de                                           ; $76f4: $d1
	sbc e                                            ; $76f5: $9b
	jr nz, @+$07                                     ; $76f6: $20 $05

	xor d                                            ; $76f8: $aa
	dec d                                            ; $76f9: $15
	ld a, d                                          ; $76fa: $7a
	jp nz, $fc7f                                     ; $76fb: $c2 $7f $fc

	ld sp, hl                                        ; $76fe: $f9
	halt                                             ; $76ff: $76
	call nz, $c056                                   ; $7700: $c4 $56 $c0
	sub e                                            ; $7703: $93
	inc b                                            ; $7704: $04
	ld bc, $0700                                     ; $7705: $01 $00 $07
	ld a, [bc]                                       ; $7708: $0a
	rlca                                             ; $7709: $07
	nop                                              ; $770a: $00
	inc c                                            ; $770b: $0c
	inc bc                                           ; $770c: $03
	rlca                                             ; $770d: $07
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	ld a, e                                          ; $7710: $7b
	db $fd                                           ; $7711: $fd
	add [hl]                                         ; $7712: $86
	inc bc                                           ; $7713: $03
	add d                                            ; $7714: $82
	ld d, b                                          ; $7715: $50
	xor d                                            ; $7716: $aa
	ld d, h                                          ; $7717: $54
	xor d                                            ; $7718: $aa
	ld d, [hl]                                       ; $7719: $56
	daa                                              ; $771a: $27
	ld d, h                                          ; $771b: $54
	rst $38                                          ; $771c: $ff

jr_05d_771d:
	rst $38                                          ; $771d: $ff
	ld a, l                                          ; $771e: $7d
	rst $38                                          ; $771f: $ff
	rst $38                                          ; $7720: $ff
	ld sp, hl                                        ; $7721: $f9
	ld hl, sp-$01                                    ; $7722: $f8 $ff
	add d                                            ; $7724: $82
	ld h, l                                          ; $7725: $65
	xor d                                            ; $7726: $aa
	ld h, l                                          ; $7727: $65
	ld a, [bc]                                       ; $7728: $0a
	ld d, l                                          ; $7729: $55
	ld a, [bc]                                       ; $772a: $0a
	push bc                                          ; $772b: $c5
	ld a, e                                          ; $772c: $7b
	ld [$067b], sp                                   ; $772d: $08 $7b $06
	ld a, a                                          ; $7730: $7f
	ld c, l                                          ; $7731: $4d
	add b                                            ; $7732: $80
	inc d                                            ; $7733: $14
	ld a, [hl+]                                      ; $7734: $2a
	add d                                            ; $7735: $82
	ld c, h                                          ; $7736: $4c
	inc b                                            ; $7737: $04
	ld d, h                                          ; $7738: $54
	add sp, -$38                                     ; $7739: $e8 $c8
	ld hl, sp-$04                                    ; $773b: $f8 $fc
	db $fc                                           ; $773d: $fc
	or b                                             ; $773e: $b0
	ld hl, sp-$08                                    ; $773f: $f8 $f8
	ldh a, [$f0]                                     ; $7741: $f0 $f0
	ccf                                              ; $7743: $3f
	rla                                              ; $7744: $17
	rrca                                             ; $7745: $0f
	dec bc                                           ; $7746: $0b
	add hl, bc                                       ; $7747: $09
	add hl, de                                       ; $7748: $19
	ld de, $3f31                                     ; $7749: $11 $31 $3f
	ld de, $080e                                     ; $774c: $11 $0e $08
	ld [$1111], sp                                   ; $774f: $08 $11 $11
	sbc e                                            ; $7752: $9b

jr_05d_7753:
	jr nz, jr_05d_7753                               ; $7753: $20 $fe

	db $fc                                           ; $7755: $fc
	ld hl, sp-$24                                    ; $7756: $f8 $dc
	ldh [$8d], a                                     ; $7758: $e0 $8d
	ldh [c], a                                       ; $775a: $e2
	add h                                            ; $775b: $84
	dec de                                           ; $775c: $1b
	db $ec                                           ; $775d: $ec
	or b                                             ; $775e: $b0
	jr nz, jr_05d_7781                               ; $775f: $20 $20

	ld [hl], b                                       ; $7761: $70
	adc b                                            ; $7762: $88
	ld b, h                                          ; $7763: $44
	inc hl                                           ; $7764: $23
	db $10                                           ; $7765: $10
	ld [$0307], sp                                   ; $7766: $08 $07 $03
	ld bc, $c488                                     ; $7769: $01 $88 $c4
	ld a, e                                          ; $776c: $7b
	ld hl, sp-$6f                                    ; $776d: $f8 $91
	ld b, $01                                        ; $776f: $06 $01
	nop                                              ; $7771: $00
	daa                                              ; $7772: $27
	cpl                                              ; $7773: $2f
	inc e                                            ; $7774: $1c
	or b                                             ; $7775: $b0
	ld b, c                                          ; $7776: $41
	add [hl]                                         ; $7777: $86
	adc b                                            ; $7778: $88
	adc b                                            ; $7779: $88
	nop                                              ; $777a: $00
	inc bc                                           ; $777b: $03
	inc c                                            ; $777c: $0c
	ld [hl], a                                       ; $777d: $77
	ld hl, sp-$6e                                    ; $777e: $f8 $92
	xor b                                            ; $7780: $a8

jr_05d_7781:
	rst $38                                          ; $7781: $ff
	ld sp, hl                                        ; $7782: $f9
	ld e, $63                                        ; $7783: $1e $63
	add b                                            ; $7785: $80
	jr jr_05d_77f8                                   ; $7786: $18 $70

	ldh [hDisp0_OBP0], a                                     ; $7788: $e0 $86
	ld c, $11                                        ; $778a: $0e $11
	ld h, b                                          ; $778c: $60
	ld [hl], h                                       ; $778d: $74
	jp hl                                            ; $778e: $e9


	sub h                                            ; $778f: $94
	pop af                                           ; $7790: $f1
	cp $ff                                           ; $7791: $fe $ff
	ld a, c                                          ; $7793: $79
	jr nz, jr_05d_77a6                               ; $7794: $20 $10

	add hl, bc                                       ; $7796: $09
	add hl, bc                                       ; $7797: $09
	ccf                                              ; $7798: $3f
	ld c, $03                                        ; $7799: $0e $03
	ld [hl], b                                       ; $779b: $70

Call_05d_779c:
	res 3, e                                         ; $779c: $cb $9b
	db $fd                                           ; $779e: $fd
	ld d, l                                          ; $779f: $55
	or h                                             ; $77a0: $b4
	db $fd                                           ; $77a1: $fd
	ld a, d                                          ; $77a2: $7a

jr_05d_77a3:
	ld d, h                                          ; $77a3: $54
	add b                                            ; $77a4: $80
	cp [hl]                                          ; $77a5: $be

jr_05d_77a6:
	rst FarCall                                          ; $77a6: $f7
	ld d, a                                          ; $77a7: $57
	and a                                            ; $77a8: $a7
	and a                                            ; $77a9: $a7
	ld d, [hl]                                       ; $77aa: $56
	inc l                                            ; $77ab: $2c
	and h                                            ; $77ac: $a4
	inc d                                            ; $77ad: $14
	rst AddAOntoHL                                          ; $77ae: $ef
	ld [$ef0b], a                                    ; $77af: $ea $0b $ef
	cp $3c                                           ; $77b2: $fe $3c
	rra                                              ; $77b4: $1f
	rra                                              ; $77b5: $1f
	ei                                               ; $77b6: $fb
	ld a, [$f9f9]                                    ; $77b7: $fa $f9 $f9
	ld a, [de]                                       ; $77ba: $1a
	inc c                                            ; $77bb: $0c
	add hl, bc                                       ; $77bc: $09
	ld a, [bc]                                       ; $77bd: $0a
	ld h, b                                          ; $77be: $60
	ret nz                                           ; $77bf: $c0

	ld b, c                                          ; $77c0: $41
	ld b, a                                          ; $77c1: $47
	daa                                              ; $77c2: $27
	ld d, a                                          ; $77c3: $57
	add b                                            ; $77c4: $80
	ei                                               ; $77c5: $fb
	ld b, l                                          ; $77c6: $45
	ld b, b                                          ; $77c7: $40
	ret nz                                           ; $77c8: $c0

	ld b, b                                          ; $77c9: $40
	ld b, b                                          ; $77ca: $40
	jr nz, jr_05d_783d                               ; $77cb: $20 $70

	ld hl, sp+$7c                                    ; $77cd: $f8 $7c
	inc a                                            ; $77cf: $3c
	cp $fe                                           ; $77d0: $fe $fe
	or $fb                                           ; $77d2: $f6 $fb
	rst SubAFromBC                                          ; $77d4: $e7
	db $e3                                           ; $77d5: $e3
	pop hl                                           ; $77d6: $e1
	db $10                                           ; $77d7: $10
	jr jr_05d_77f2                                   ; $77d8: $18 $18

	inc d                                            ; $77da: $14
	ld a, [hl-]                                      ; $77db: $3a
	ld h, [hl]                                       ; $77dc: $66
	ld h, e                                          ; $77dd: $63
	ld hl, $0f13                                     ; $77de: $21 $13 $0f

Jump_05d_77e1:
	dec b                                            ; $77e1: $05
	rlca                                             ; $77e2: $07
	dec bc                                           ; $77e3: $0b
	sbc e                                            ; $77e4: $9b
	jr nc, @+$81                                     ; $77e5: $30 $7f

	db $fc                                           ; $77e7: $fc
	inc de                                           ; $77e8: $13
	ld a, d                                          ; $77e9: $7a
	inc b                                            ; $77ea: $04
	sub a                                            ; $77eb: $97
	inc c                                            ; $77ec: $0c
	ccf                                              ; $77ed: $3f
	ld c, a                                          ; $77ee: $4f
	ret nz                                           ; $77ef: $c0

	sbc b                                            ; $77f0: $98
	nop                                              ; $77f1: $00

jr_05d_77f2:
	ldh [rP1], a                                     ; $77f2: $e0 $00
	ld [hl], h                                       ; $77f4: $74
	res 3, [hl]                                      ; $77f5: $cb $9e
	rst SubAFromBC                                          ; $77f7: $e7

jr_05d_77f8:
	ld a, d                                          ; $77f8: $7a
	pop hl                                           ; $77f9: $e1
	sbc c                                            ; $77fa: $99
	nop                                              ; $77fb: $00
	ldh a, [rP1]                                     ; $77fc: $f0 $00
	nop                                              ; $77fe: $00
	ld h, b                                          ; $77ff: $60
	ld b, b                                          ; $7800: $40
	db $fd                                           ; $7801: $fd
	sbc c                                            ; $7802: $99
	jr nz, @+$63                                     ; $7803: $20 $61

	nop                                              ; $7805: $00
	and b                                            ; $7806: $a0

jr_05d_7807:
	ld h, b                                          ; $7807: $60
	ld h, b                                          ; $7808: $60
	db $dd                                           ; $7809: $dd
	jr nz, jr_05d_77a3                               ; $780a: $20 $97

	jr nc, jr_05d_7828                               ; $780c: $30 $1a

	inc e                                            ; $780e: $1c
	ld a, [bc]                                       ; $780f: $0a
	dec b                                            ; $7810: $05
	ld b, $87                                        ; $7811: $06 $87
	inc bc                                           ; $7813: $03
	ld a, b                                          ; $7814: $78
	call nc, $8d7e                                   ; $7815: $d4 $7e $8d
	rst SubAFromDE                                          ; $7818: $df
	ld [bc], a                                       ; $7819: $02
	sbc [hl]                                         ; $781a: $9e
	ld bc, $c076                                     ; $781b: $01 $76 $c0
	ld d, [hl]                                       ; $781e: $56
	ret nc                                           ; $781f: $d0

	ld b, [hl]                                       ; $7820: $46
	ret nz                                           ; $7821: $c0

	sbc l                                            ; $7822: $9d
	ld [bc], a                                       ; $7823: $02
	rrca                                             ; $7824: $0f
	cp $7d                                           ; $7825: $fe $7d
	push bc                                          ; $7827: $c5

jr_05d_7828:
	sbc [hl]                                         ; $7828: $9e
	dec b                                            ; $7829: $05
	ld [hl], a                                       ; $782a: $77
	ld sp, hl                                        ; $782b: $f9
	sub d                                            ; $782c: $92
	nop                                              ; $782d: $00
	rrca                                             ; $782e: $0f
	rrca                                             ; $782f: $0f
	inc bc                                           ; $7830: $03
	add d                                            ; $7831: $82
	adc c                                            ; $7832: $89
	rlca                                             ; $7833: $07
	nop                                              ; $7834: $00
	add h                                            ; $7835: $84
	ld d, h                                          ; $7836: $54
	xor d                                            ; $7837: $aa
	dec b                                            ; $7838: $05
	rst $38                                          ; $7839: $ff
	ld a, d                                          ; $783a: $7a
	or e                                             ; $783b: $b3
	sbc [hl]                                         ; $783c: $9e

jr_05d_783d:
	ld a, b                                          ; $783d: $78
	sbc $ff                                          ; $783e: $de $ff
	sub d                                            ; $7840: $92
	xor e                                            ; $7841: $ab
	ld h, a                                          ; $7842: $67
	adc d                                            ; $7843: $8a
	inc hl                                           ; $7844: $23
	inc sp                                           ; $7845: $33
	dec b                                            ; $7846: $05
	xor d                                            ; $7847: $aa
	db $10                                           ; $7848: $10
	rst $38                                          ; $7849: $ff
	sbc a                                            ; $784a: $9f
	ld a, a                                          ; $784b: $7f
	inc e                                            ; $784c: $1c
	inc c                                            ; $784d: $0c
	sbc $ff                                          ; $784e: $de $ff
	sub d                                            ; $7850: $92
	db $f4                                           ; $7851: $f4
	ld a, b                                          ; $7852: $78
	db $fd                                           ; $7853: $fd
	inc bc                                           ; $7854: $03
	rst FarCall                                          ; $7855: $f7
	ld d, a                                          ; $7856: $57
	xor a                                            ; $7857: $af
	ld d, a                                          ; $7858: $57
	ld hl, sp-$04                                    ; $7859: $f8 $fc
	ld bc, $0502                                     ; $785b: $01 $02 $05
	sbc $fb                                          ; $785e: $de $fb
	sbc e                                            ; $7860: $9b
	ld h, e                                          ; $7861: $63
	db $e3                                           ; $7862: $e3
	ld b, e                                          ; $7863: $43
	jp $87dd                                         ; $7864: $c3 $dd $87


	ld a, a                                          ; $7867: $7f
	jr c, jr_05d_7807                                ; $7868: $38 $9d

	ld b, b                                          ; $786a: $40
	add b                                            ; $786b: $80
	ld [hl], a                                       ; $786c: $77
	rrca                                             ; $786d: $0f
	rst SubAFromDE                                          ; $786e: $df
	ldh [$de], a                                     ; $786f: $e0 $de
	ret nc                                           ; $7871: $d0

	rst SubAFromDE                                          ; $7872: $df
	ldh a, [hDisp1_OBP1]                                     ; $7873: $f0 $94
	and h                                            ; $7875: $a4
	ld [hl], c                                       ; $7876: $71
	ld [hl], d                                       ; $7877: $72
	ld [hl], h                                       ; $7878: $74
	ld a, h                                          ; $7879: $7c
	ld a, h                                          ; $787a: $7c
	ld a, b                                          ; $787b: $78
	ld a, b                                          ; $787c: $78
	cp $01                                           ; $787d: $fe $01
	ld bc, $9efc                                     ; $787f: $01 $fc $9e
	add [hl]                                         ; $7882: $86
	ld a, [$0895]                                    ; $7883: $fa $95 $08
	add c                                            ; $7886: $81
	inc bc                                           ; $7887: $03
	inc bc                                           ; $7888: $03
	adc d                                            ; $7889: $8a
	adc d                                            ; $788a: $8a
	ld [$8a08], sp                                   ; $788b: $08 $08 $8a
	xor b                                            ; $788e: $a8
	ld a, d                                          ; $788f: $7a
	cp l                                             ; $7890: $bd
	ld a, c                                          ; $7891: $79
	add e                                            ; $7892: $83
	ld a, l                                          ; $7893: $7d
	ld [hl], $77                                     ; $7894: $36 $77
	res 3, h                                         ; $7896: $cb $9c
	nop                                              ; $7898: $00
	ld b, d                                          ; $7899: $42
	ld b, h                                          ; $789a: $44
	ld a, [$03df]                                    ; $789b: $fa $df $03
	sbc c                                            ; $789e: $99
	ld [bc], a                                       ; $789f: $02
	dec bc                                           ; $78a0: $0b
	dec de                                           ; $78a1: $1b
	ld a, d                                          ; $78a2: $7a
	ld a, [$7bfe]                                    ; $78a3: $fa $fe $7b
	ld a, [bc]                                       ; $78a6: $0a
	db $dd                                           ; $78a7: $dd
	ld b, $82                                        ; $78a8: $06 $82
	inc b                                            ; $78aa: $04
	call nz, $1ebe                                   ; $78ab: $c4 $be $1e
	rra                                              ; $78ae: $1f
	ld l, a                                          ; $78af: $6f
	rst AddAOntoHL                                          ; $78b0: $ef
	and $c6                                          ; $78b1: $e6 $c6
	jp $0c14                                         ; $78b3: $c3 $14 $0c


	inc c                                            ; $78b6: $0c
	ld b, $07                                        ; $78b7: $06 $07
	inc bc                                           ; $78b9: $03
	inc bc                                           ; $78ba: $03
	ld bc, $1c1e                                     ; $78bb: $01 $1e $1c
	jr c, @-$06                                      ; $78be: $38 $f8

	ldh a, [$03]                                     ; $78c0: $f0 $03
	rlca                                             ; $78c2: $07
	inc c                                            ; $78c3: $0c
	dec c                                            ; $78c4: $0d
	dec bc                                           ; $78c5: $0b
	rrca                                             ; $78c6: $0f
	ld a, c                                          ; $78c7: $79
	ld a, l                                          ; $78c8: $7d
	sub l                                            ; $78c9: $95
	db $fc                                           ; $78ca: $fc
	ei                                               ; $78cb: $fb
	ld b, h                                          ; $78cc: $44
	inc a                                            ; $78cd: $3c
	inc b                                            ; $78ce: $04
	inc b                                            ; $78cf: $04
	db $f4                                           ; $78d0: $f4
	xor h                                            ; $78d1: $ac
	inc b                                            ; $78d2: $04
	inc b                                            ; $78d3: $04
	call c, $91fc                                    ; $78d4: $dc $fc $91
	inc e                                            ; $78d7: $1c
	db $fc                                           ; $78d8: $fc
	db $fc                                           ; $78d9: $fc
	pop hl                                           ; $78da: $e1
	pop hl                                           ; $78db: $e1
	ld [hl], e                                       ; $78dc: $73
	ld [hl], a                                       ; $78dd: $77
	ccf                                              ; $78de: $3f
	dec sp                                           ; $78df: $3b
	inc sp                                           ; $78e0: $33
	inc hl                                           ; $78e1: $23
	ld hl, $1321                                     ; $78e2: $21 $21 $13
	ld a, d                                          ; $78e5: $7a
	ld h, $df                                        ; $78e6: $26 $df
	inc bc                                           ; $78e8: $03
	sbc $40                                          ; $78e9: $de $40
	sbc d                                            ; $78eb: $9a
	ld h, b                                          ; $78ec: $60
	ldh [$f0], a                                     ; $78ed: $e0 $f0
	ldh a, [$78]                                     ; $78ef: $f0 $78
	sbc $c0                                          ; $78f1: $de $c0
	rst SubAFromDE                                          ; $78f3: $df
	and b                                            ; $78f4: $a0
	sub e                                            ; $78f5: $93
	sub b                                            ; $78f6: $90
	ret nc                                           ; $78f7: $d0

	ret z                                            ; $78f8: $c8

	ld bc, $0f06                                     ; $78f9: $01 $06 $0f
	rrca                                             ; $78fc: $0f
	rra                                              ; $78fd: $1f
	cpl                                              ; $78fe: $2f

Jump_05d_78ff:
	ld e, [hl]                                       ; $78ff: $5e
	inc e                                            ; $7900: $1c
	nop                                              ; $7901: $00
	ld [hl], a                                       ; $7902: $77
	ld l, b                                          ; $7903: $68
	adc h                                            ; $7904: $8c
	ld de, $6723                                     ; $7905: $11 $23 $67
	inc hl                                           ; $7908: $23
	and $de                                          ; $7909: $e6 $de
	call c, $3f98                                    ; $790b: $dc $98 $3f
	ld a, l                                          ; $790e: $7d
	rst SubAFromBC                                          ; $790f: $e7
	ldh [rAUD4LEN], a                                ; $7910: $e0 $20
	ld h, b                                          ; $7912: $60
	ld h, b                                          ; $7913: $60
	ldh [$c0], a                                     ; $7914: $e0 $c0
	sbc [hl]                                         ; $7916: $9e
	ld hl, sp-$22                                    ; $7917: $f8 $de
	inc bc                                           ; $7919: $03
	sbc d                                            ; $791a: $9a
	inc sp                                           ; $791b: $33
	ld h, e                                          ; $791c: $63
	db $e3                                           ; $791d: $e3
	rst JumpTable                                          ; $791e: $c7
	add a                                            ; $791f: $87
	ld l, e                                          ; $7920: $6b
	ld c, b                                          ; $7921: $48
	sbc l                                            ; $7922: $9d
	nop                                              ; $7923: $00
	rst SubAFromDE                                          ; $7924: $df
	ld a, c                                          ; $7925: $79
	rlca                                             ; $7926: $07
	db $dd                                           ; $7927: $dd
	rst $38                                          ; $7928: $ff
	ld l, h                                          ; $7929: $6c
	sub $7d                                          ; $792a: $d6 $7d
	ld l, [hl]                                       ; $792c: $6e
	sbc e                                            ; $792d: $9b
	ld d, l                                          ; $792e: $55
	ld [$fbdd], a                                    ; $792f: $ea $dd $fb
	ld l, a                                          ; $7932: $6f
	ldh a, [$fb]                                     ; $7933: $f0 $fb
	sub e                                            ; $7935: $93
	ld a, [bc]                                       ; $7936: $0a
	ld bc, $0810                                     ; $7937: $01 $10 $08
	ld [de], a                                       ; $793a: $12
	dec d                                            ; $793b: $15
	ld [de], a                                       ; $793c: $12
	dec h                                            ; $793d: $25
	rlca                                             ; $793e: $07
	rra                                              ; $793f: $1f
	rrca                                             ; $7940: $0f
	rlca                                             ; $7941: $07
	sbc $0f                                          ; $7942: $de $0f
	sub h                                            ; $7944: $94
	rra                                              ; $7945: $1f
	adc d                                            ; $7946: $8a
	ld d, l                                          ; $7947: $55
	ld [bc], a                                       ; $7948: $02
	inc d                                            ; $7949: $14
	adc d                                            ; $794a: $8a
	dec d                                            ; $794b: $15
	ld a, [bc]                                       ; $794c: $0a
	ld d, l                                          ; $794d: $55
	rst $38                                          ; $794e: $ff
	rst $38                                          ; $794f: $ff
	ld a, d                                          ; $7950: $7a
	add hl, bc                                       ; $7951: $09
	sub h                                            ; $7952: $94
	adc a                                            ; $7953: $8f
	rst $38                                          ; $7954: $ff
	rst $38                                          ; $7955: $ff
	ld [$2a51], sp                                   ; $7956: $08 $51 $2a
	sub c                                            ; $7959: $91
	and d                                            ; $795a: $a2
	ld d, c                                          ; $795b: $51
	cp e                                             ; $795c: $bb
	pop af                                           ; $795d: $f1
	sbc $ff                                          ; $795e: $de $ff
	sbc [hl]                                         ; $7960: $9e
	ld a, a                                          ; $7961: $7f
	ld a, e                                          ; $7962: $7b
	xor $7e                                          ; $7963: $ee $7e
	or b                                             ; $7965: $b0
	adc l                                            ; $7966: $8d
	ld e, e                                          ; $7967: $5b
	cp l                                             ; $7968: $bd
	ld e, l                                          ; $7969: $5d
	xor a                                            ; $796a: $af
	or $e3                                           ; $796b: $f6 $e3
	ret                                              ; $796d: $c9


	rst FarCall                                          ; $796e: $f7
	rst AddAOntoHL                                          ; $796f: $ef
	db $eb                                           ; $7970: $eb
	db $eb                                           ; $7971: $eb
	push af                                          ; $7972: $f5
	db $fd                                           ; $7973: $fd
	ld a, [$87f1]                                    ; $7974: $fa $f1 $87
	rst GetHLinHL                                          ; $7977: $cf
	rst AddAOntoHL                                          ; $7978: $ef
	sbc $ff                                          ; $7979: $de $ff
	sbc c                                            ; $797b: $99
	ld a, [hl]                                       ; $797c: $7e
	add hl, sp                                       ; $797d: $39
	add b                                            ; $797e: $80
	add c                                            ; $797f: $81
	jp $dde7                                         ; $7980: $c3 $e7 $dd


	rst $38                                          ; $7983: $ff
	add b                                            ; $7984: $80
	jp nc, $d1d0                                     ; $7985: $d2 $d0 $d1

	and b                                            ; $7988: $a0
	and b                                            ; $7989: $a0
	and l                                            ; $798a: $a5
	ld b, d                                          ; $798b: $42
	ret nz                                           ; $798c: $c0

	ei                                               ; $798d: $fb
	ldh a, [$f7]                                     ; $798e: $f0 $f7
	ldh [$e4], a                                     ; $7990: $e0 $e4
	and $c3                                          ; $7992: $e6 $c3
	add b                                            ; $7994: $80
	ld b, h                                          ; $7995: $44
	adc h                                            ; $7996: $8c
	adc b                                            ; $7997: $88
	add l                                            ; $7998: $85
	ld b, $0e                                        ; $7999: $06 $0e
	inc e                                            ; $799b: $1c
	ld a, a                                          ; $799c: $7f
	add [hl]                                         ; $799d: $86
	adc b                                            ; $799e: $88
	ret z                                            ; $799f: $c8

	adc $03                                          ; $79a0: $ce $03
	inc bc                                           ; $79a2: $03
	adc a                                            ; $79a3: $8f
	add b                                            ; $79a4: $80
	nop                                              ; $79a5: $00
	adc b                                            ; $79a6: $88
	ret                                              ; $79a7: $c9


	ret z                                            ; $79a8: $c8

	ld c, e                                          ; $79a9: $4b
	ld c, c                                          ; $79aa: $49
	ld c, e                                          ; $79ab: $4b
	ret                                              ; $79ac: $c9


	ret nz                                           ; $79ad: $c0

	xor d                                            ; $79ae: $aa
	adc d                                            ; $79af: $8a
	ld c, a                                          ; $79b0: $4f
	rst GetHLinHL                                          ; $79b1: $cf
	rst GetHLinHL                                          ; $79b2: $cf
	jp Jump_05d_5051                                 ; $79b3: $c3 $51 $50


	ld a, [bc]                                       ; $79b6: $0a
	ld bc, $a045                                     ; $79b7: $01 $45 $a0
	and h                                            ; $79ba: $a4
	ld [bc], a                                       ; $79bb: $02
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	ld b, l                                          ; $79be: $45
	pop hl                                           ; $79bf: $e1
	or d                                             ; $79c0: $b2
	sub b                                            ; $79c1: $90
	sub d                                            ; $79c2: $92
	and c                                            ; $79c3: $a1
	rst $38                                          ; $79c4: $ff
	sub [hl]                                         ; $79c5: $96
	sbc a                                            ; $79c6: $9f
	rst SubAFromHL                                          ; $79c7: $d7
	ld d, a                                          ; $79c8: $57
	ld d, a                                          ; $79c9: $57
	dec sp                                           ; $79ca: $3b
	ld a, [$7938]                                    ; $79cb: $fa $38 $79
	add h                                            ; $79ce: $84
	sbc $cc                                          ; $79cf: $de $cc
	add e                                            ; $79d1: $83
	inc c                                            ; $79d2: $0c
	call $0f0f                                       ; $79d3: $cd $0f $0f
	jp $8181                                         ; $79d6: $c3 $81 $81


	ld [bc], a                                       ; $79d9: $02
	ld l, $5f                                        ; $79da: $2e $5f
	rst $38                                          ; $79dc: $ff
	cp l                                             ; $79dd: $bd
	ld bc, $1108                                     ; $79de: $01 $08 $11
	inc hl                                           ; $79e1: $23
	call Call_05d_6791                               ; $79e2: $cd $91 $67
	rst GetHLinHL                                          ; $79e5: $cf
	ld hl, sp-$78                                    ; $79e6: $f8 $88
	adc a                                            ; $79e8: $8f
	ld c, b                                          ; $79e9: $48
	ret z                                            ; $79ea: $c8

	add sp, -$57                                     ; $79eb: $e8 $a9
	ld e, a                                          ; $79ed: $5f
	reti                                             ; $79ee: $d9


	rst $38                                          ; $79ef: $ff
	rst SubAFromDE                                          ; $79f0: $df
	inc b                                            ; $79f1: $04
	adc d                                            ; $79f2: $8a
	xor $32                                          ; $79f3: $ee $32
	ld c, a                                          ; $79f5: $4f
	cp a                                             ; $79f6: $bf
	ld a, a                                          ; $79f7: $7f
	rst $38                                          ; $79f8: $ff
	db $fc                                           ; $79f9: $fc
	db $fc                                           ; $79fa: $fc
	cp $f2                                           ; $79fb: $fe $f2
	pop bc                                           ; $79fd: $c1
	adc h                                            ; $79fe: $8c
	db $10                                           ; $79ff: $10
	jr nz, @+$45                                     ; $7a00: $20 $43

	ld b, c                                          ; $7a02: $41
	rlca                                             ; $7a03: $07
	rra                                              ; $7a04: $1f
	ccf                                              ; $7a05: $3f
	cp a                                             ; $7a06: $bf
	ld e, [hl]                                       ; $7a07: $5e
	ld a, d                                          ; $7a08: $7a
	ld hl, sp+$7a                                    ; $7a09: $f8 $7a
	rst $38                                          ; $7a0b: $ff
	sub e                                            ; $7a0c: $93
	add c                                            ; $7a0d: $81
	rst JumpTable                                          ; $7a0e: $c7
	rst $38                                          ; $7a0f: $ff
	and h                                            ; $7a10: $a4
	ld [hl], d                                       ; $7a11: $72
	cp c                                             ; $7a12: $b9
	call c, $fdff                                    ; $7a13: $dc $ff $fd
	cp $7d                                           ; $7a16: $fe $7d
	db $fc                                           ; $7a18: $fc
	ld a, d                                          ; $7a19: $7a
	ld hl, sp-$6d                                    ; $7a1a: $f8 $93
	ld a, a                                          ; $7a1c: $7f
	cp b                                             ; $7a1d: $b8
	add h                                            ; $7a1e: $84
	add h                                            ; $7a1f: $84
	cp a                                             ; $7a20: $bf
	inc l                                            ; $7a21: $2c
	jp $8180                                         ; $7a22: $c3 $80 $81


	add b                                            ; $7a25: $80
	ldh [rPCM34], a                                  ; $7a26: $e0 $77
	ld [hl], a                                       ; $7a28: $77
	cp a                                             ; $7a29: $bf
	ld a, a                                          ; $7a2a: $7f
	db $ed                                           ; $7a2b: $ed
	sub c                                            ; $7a2c: $91
	ld e, a                                          ; $7a2d: $5f
	ld c, b                                          ; $7a2e: $48
	ld e, $f8                                        ; $7a2f: $1e $f8
	cp a                                             ; $7a31: $bf
	ld a, h                                          ; $7a32: $7c
	db $fc                                           ; $7a33: $fc
	ld [hl], b                                       ; $7a34: $70
	ret nz                                           ; $7a35: $c0

	ld hl, sp-$20                                    ; $7a36: $f8 $e0
	nop                                              ; $7a38: $00
	ret nz                                           ; $7a39: $c0

	db $fc                                           ; $7a3a: $fc
	ld a, c                                          ; $7a3b: $79
	ld l, [hl]                                       ; $7a3c: $6e
	ld a, h                                          ; $7a3d: $7c
	ld a, h                                          ; $7a3e: $7c
	sbc [hl]                                         ; $7a3f: $9e
	rst JumpTable                                          ; $7a40: $c7
	call c, $6a03                                    ; $7a41: $dc $03 $6a
	jp nz, $9aff                                     ; $7a44: $c2 $ff $9a

	rst $38                                          ; $7a47: $ff
	cp d                                             ; $7a48: $ba
	and l                                            ; $7a49: $a5
	ldh [$df], a                                     ; $7a4a: $e0 $df
	ld a, c                                          ; $7a4c: $79
	xor $9b                                          ; $7a4d: $ee $9b
	ld b, b                                          ; $7a4f: $40
	ld h, l                                          ; $7a50: $65
	ld a, d                                          ; $7a51: $7a
	ccf                                              ; $7a52: $3f
	sbc $30                                          ; $7a53: $de $30
	ld a, l                                          ; $7a55: $7d
	cp b                                             ; $7a56: $b8
	sbc h                                            ; $7a57: $9c
	xor d                                            ; $7a58: $aa
	ld b, b                                          ; $7a59: $40
	inc c                                            ; $7a5a: $0c
	ld [hl], d                                       ; $7a5b: $72
	jp Jump_05d_559c                                 ; $7a5c: $c3 $9c $55


	cp a                                             ; $7a5f: $bf
	di                                               ; $7a60: $f3
	db $fd                                           ; $7a61: $fd
	sbc b                                            ; $7a62: $98
	rra                                              ; $7a63: $1f
	nop                                              ; $7a64: $00
	inc a                                            ; $7a65: $3c
	dec d                                            ; $7a66: $15
	ld [hl+], a                                      ; $7a67: $22
	dec d                                            ; $7a68: $15
	ld a, [hl+]                                      ; $7a69: $2a
	ld a, d                                          ; $7a6a: $7a
	nop                                              ; $7a6b: $00
	sub d                                            ; $7a6c: $92
	inc bc                                           ; $7a6d: $03
	ccf                                              ; $7a6e: $3f
	rra                                              ; $7a6f: $1f
	rrca                                             ; $7a70: $0f
	rra                                              ; $7a71: $1f
	ccf                                              ; $7a72: $3f
	cp $e0                                           ; $7a73: $fe $e0
	and a                                            ; $7a75: $a7
	ld d, l                                          ; $7a76: $55
	ld a, [bc]                                       ; $7a77: $0a
	ld d, l                                          ; $7a78: $55
	xor b                                            ; $7a79: $a8
	ld a, d                                          ; $7a7a: $7a
	add c                                            ; $7a7b: $81
	ld a, h                                          ; $7a7c: $7c
	ld b, h                                          ; $7a7d: $44
	sub b                                            ; $7a7e: $90
	rst $38                                          ; $7a7f: $ff
	cp [hl]                                          ; $7a80: $be
	rst $38                                          ; $7a81: $ff
	rst $38                                          ; $7a82: $ff
	db $e4                                           ; $7a83: $e4
	ld hl, sp-$40                                    ; $7a84: $f8 $c0
	ld d, l                                          ; $7a86: $55
	jr z, jr_05d_7ad9                                ; $7a87: $28 $50

	ld [hl+], a                                      ; $7a89: $22
	ld d, l                                          ; $7a8a: $55
	ld hl, sp+$00                                    ; $7a8b: $f8 $00
	ccf                                              ; $7a8d: $3f
	ld l, d                                          ; $7a8e: $6a
	ld a, b                                          ; $7a8f: $78
	sub [hl]                                         ; $7a90: $96
	jr nc, jr_05d_7adb                               ; $7a91: $30 $48

	xor b                                            ; $7a93: $a8
	ld c, b                                          ; $7a94: $48
	sub b                                            ; $7a95: $90
	jr nz, jr_05d_7a98                               ; $7a96: $20 $00

jr_05d_7a98:
	nop                                              ; $7a98: $00
	ret nz                                           ; $7a99: $c0

	sbc $f0                                          ; $7a9a: $de $f0
	ld a, [hl]                                       ; $7a9c: $7e
	ld c, [hl]                                       ; $7a9d: $4e
	sbc l                                            ; $7a9e: $9d
	add $3a                                          ; $7a9f: $c6 $3a
	sbc $1a                                          ; $7aa1: $de $1a
	sbc d                                            ; $7aa3: $9a
	ld a, [bc]                                       ; $7aa4: $0a
	ld a, [hl+]                                      ; $7aa5: $2a
	ld a, [hl+]                                      ; $7aa6: $2a
	rst $38                                          ; $7aa7: $ff
	ccf                                              ; $7aa8: $3f
	sbc $07                                          ; $7aa9: $de $07
	sbc $17                                          ; $7aab: $de $17
	ld a, b                                          ; $7aad: $78
	cp c                                             ; $7aae: $b9
	ld a, d                                          ; $7aaf: $7a
	ld c, $9c                                        ; $7ab0: $0e $9c
	ld h, b                                          ; $7ab2: $60
	ld h, d                                          ; $7ab3: $62
	add b                                            ; $7ab4: $80
	call c, $9cc0                                    ; $7ab5: $dc $c0 $9c
	jp $38c1                                         ; $7ab8: $c3 $c1 $38


	ld a, b                                          ; $7abb: $78
	ld a, h                                          ; $7abc: $7c
	ld a, a                                          ; $7abd: $7f
	db $e4                                           ; $7abe: $e4
	sbc [hl]                                         ; $7abf: $9e
	inc bc                                           ; $7ac0: $03
	ld sp, hl                                        ; $7ac1: $f9
	rst SubAFromDE                                          ; $7ac2: $df
	ret nz                                           ; $7ac3: $c0

	call c, $dfc8                                    ; $7ac4: $dc $c8 $df
	ret nz                                           ; $7ac7: $c0

	call c, $9c40                                    ; $7ac8: $dc $40 $9c
	ld d, b                                          ; $7acb: $50
	ld e, b                                          ; $7acc: $58

jr_05d_7acd:
	ld c, b                                          ; $7acd: $48
	ld a, e                                          ; $7ace: $7b
	adc b                                            ; $7acf: $88
	sbc d                                            ; $7ad0: $9a
	rlca                                             ; $7ad1: $07
	ccf                                              ; $7ad2: $3f
	ld a, a                                          ; $7ad3: $7f
	rst $38                                          ; $7ad4: $ff
	ld a, a                                          ; $7ad5: $7f
	ld sp, hl                                        ; $7ad6: $f9
	sub a                                            ; $7ad7: $97
	ld l, [hl]                                       ; $7ad8: $6e

jr_05d_7ad9:
	db $ec                                           ; $7ad9: $ec
	rst AddAOntoHL                                          ; $7ada: $ef

jr_05d_7adb:
	call z, $d4cf                                    ; $7adb: $cc $cf $d4
	sub h                                            ; $7ade: $94
	call nc, $1fde                                   ; $7adf: $d4 $de $1f
	sbc $3f                                          ; $7ae2: $de $3f
	sub l                                            ; $7ae4: $95
	ld a, a                                          ; $7ae5: $7f
	ccf                                              ; $7ae6: $3f
	ld a, [de]                                       ; $7ae7: $1a
	ld a, l                                          ; $7ae8: $7d
	ld a, [$ff7f]                                    ; $7ae9: $fa $7f $ff
	ccf                                              ; $7aec: $3f
	rra                                              ; $7aed: $1f
	jr c, jr_05d_7acd                                ; $7aee: $38 $dd

	rst $38                                          ; $7af0: $ff
	add a                                            ; $7af1: $87
	db $fc                                           ; $7af2: $fc
	rst $38                                          ; $7af3: $ff
	ldh a, [$e0]                                     ; $7af4: $f0 $e0
	or e                                             ; $7af6: $b3
	ld [hl], e                                       ; $7af7: $73
	di                                               ; $7af8: $f3
	di                                               ; $7af9: $f3
	ei                                               ; $7afa: $fb
	rst $38                                          ; $7afb: $ff
	ei                                               ; $7afc: $fb
	ld a, e                                          ; $7afd: $7b

Call_05d_7afe:
	cp $fe                                           ; $7afe: $fe $fe
	rst SubAFromDE                                          ; $7b00: $df

Call_05d_7b01:
	ld e, $0f                                        ; $7b01: $1e $0f
	adc [hl]                                         ; $7b03: $8e
	rrca                                             ; $7b04: $0f
	ld c, $ff                                        ; $7b05: $0e $ff
	call nc, stodo_PreservedHLrelatedToScriptStack                                   ; $7b07: $d4 $94 $bd
	ld [hl], l                                       ; $7b0a: $75
	db $dd                                           ; $7b0b: $dd
	ld a, a                                          ; $7b0c: $7f
	db $db                                           ; $7b0d: $db
	sub c                                            ; $7b0e: $91
	rst $38                                          ; $7b0f: $ff
	sbc $e1                                          ; $7b10: $de $e1
	add b                                            ; $7b12: $80
	nop                                              ; $7b13: $00
	ld b, b                                          ; $7b14: $40
	inc b                                            ; $7b15: $04
	ld [bc], a                                       ; $7b16: $02
	ld bc, $3ef9                                     ; $7b17: $01 $f9 $3e
	ldh [$f0], a                                     ; $7b1a: $e0 $f0
	ldh [$de], a                                     ; $7b1c: $e0 $de
	rst $38                                          ; $7b1e: $ff
	sbc l                                            ; $7b1f: $9d
	rlca                                             ; $7b20: $07
	rst $38                                          ; $7b21: $ff
	ld a, e                                          ; $7b22: $7b
	cpl                                              ; $7b23: $2f
	add b                                            ; $7b24: $80
	ld a, $1d                                        ; $7b25: $3e $1d
	ld a, [bc]                                       ; $7b27: $0a
	db $fd                                           ; $7b28: $fd
	halt                                             ; $7b29: $76
	inc b                                            ; $7b2a: $04
	inc h                                            ; $7b2b: $24
	ld l, b                                          ; $7b2c: $68
	call nz, $f8e4                                   ; $7b2d: $c4 $e4 $f8
	ld hl, sp-$04                                    ; $7b30: $f8 $fc
	db $fc                                           ; $7b32: $fc
	call c, $d798                                    ; $7b33: $dc $98 $d7
	ld [hl], a                                       ; $7b36: $77
	cp e                                             ; $7b37: $bb
	ld l, e                                          ; $7b38: $6b
	sbc e                                            ; $7b39: $9b
	dec d                                            ; $7b3a: $15
	dec d                                            ; $7b3b: $15
	inc de                                           ; $7b3c: $13
	ld l, b                                          ; $7b3d: $68
	jr z, @+$26                                      ; $7b3e: $28 $24

jr_05d_7b40:
	inc [hl]                                         ; $7b40: $34
	inc d                                            ; $7b41: $14
	ld a, [de]                                       ; $7b42: $1a
	ld a, [de]                                       ; $7b43: $1a
	sbc h                                            ; $7b44: $9c
	ld e, $f0                                        ; $7b45: $1e $f0
	ldh [$7a], a                                     ; $7b47: $e0 $7a
	bit 7, a                                         ; $7b49: $cb $7f
	ld d, e                                          ; $7b4b: $53
	ld a, [hl]                                       ; $7b4c: $7e
	pop bc                                           ; $7b4d: $c1
	ld a, [$8875]                                    ; $7b4e: $fa $75 $88
	sbc e                                            ; $7b51: $9b
	ld bc, $0f07                                     ; $7b52: $01 $07 $0f
	inc e                                            ; $7b55: $1c
	ld sp, hl                                        ; $7b56: $f9
	rst SubAFromDE                                          ; $7b57: $df
	add sp, -$22                                     ; $7b58: $e8 $de
	ld hl, sp-$66                                    ; $7b5a: $f8 $9a
	db $f4                                           ; $7b5c: $f4
	ld [hl], h                                       ; $7b5d: $74
	sub $18                                          ; $7b5e: $d6 $18
	jr jr_05d_7b40                                   ; $7b60: $18 $de

	ld [$0cde], sp                                   ; $7b62: $08 $de $0c
	ld h, b                                          ; $7b65: $60
	ld c, b                                          ; $7b66: $48
	sub b                                            ; $7b67: $90
	dec b                                            ; $7b68: $05
	inc hl                                           ; $7b69: $23
	nop                                              ; $7b6a: $00
	dec b                                            ; $7b6b: $05
	nop                                              ; $7b6c: $00
	nop                                              ; $7b6d: $00
	add d                                            ; $7b6e: $82
	jr nz, jr_05d_7b96                               ; $7b6f: $20 $25

	ld a, [hl+]                                      ; $7b71: $2a
	dec [hl]                                         ; $7b72: $35
	ld c, d                                          ; $7b73: $4a
	ld b, l                                          ; $7b74: $45
	ccf                                              ; $7b75: $3f
	nop                                              ; $7b76: $00
	sbc $1f                                          ; $7b77: $de $1f
	sbc h                                            ; $7b79: $9c
	ld e, $3f                                        ; $7b7a: $1e $3f
	ccf                                              ; $7b7c: $3f
	cp $7d                                           ; $7b7d: $fe $7d
	xor $9b                                          ; $7b7f: $ee $9b
	ld d, l                                          ; $7b81: $55
	ld a, [hl+]                                      ; $7b82: $2a
	ld b, c                                          ; $7b83: $41
	or $76                                           ; $7b84: $f6 $76
	db $d3                                           ; $7b86: $d3
	ld a, e                                          ; $7b87: $7b
	db $fc                                           ; $7b88: $fc
	ld a, a                                          ; $7b89: $7f
	or e                                             ; $7b8a: $b3
	ld a, a                                          ; $7b8b: $7f
	db $f4                                           ; $7b8c: $f4
	sub [hl]                                         ; $7b8d: $96
	xor b                                            ; $7b8e: $a8
	ld b, e                                          ; $7b8f: $43
	or $c8                                           ; $7b90: $f6 $c8
	db $10                                           ; $7b92: $10
	ldh a, [rIE]                                     ; $7b93: $f0 $ff
	rst $38                                          ; $7b95: $ff

jr_05d_7b96:
	rst FarCall                                          ; $7b96: $f7
	ld a, e                                          ; $7b97: $7b
	db $fd                                           ; $7b98: $fd
	ld a, a                                          ; $7b99: $7f
	sbc c                                            ; $7b9a: $99
	sbc b                                            ; $7b9b: $98
	and b                                            ; $7b9c: $a0
	ld h, b                                          ; $7b9d: $60
	sub d                                            ; $7b9e: $92
	ret nz                                           ; $7b9f: $c0

	and d                                            ; $7ba0: $a2
	jr nc, jr_05d_7bad                               ; $7ba1: $30 $0a

	ld a, d                                          ; $7ba3: $7a
	rst FarCall                                          ; $7ba4: $f7
	ld a, b                                          ; $7ba5: $78
	ld [$c092], a                                    ; $7ba6: $ea $92 $c0
	nop                                              ; $7ba9: $00
	nop                                              ; $7baa: $00
	xor d                                            ; $7bab: $aa
	ld a, [hl+]                                      ; $7bac: $2a

jr_05d_7bad:
	sbc d                                            ; $7bad: $9a
	ld e, h                                          ; $7bae: $5c
	sbc h                                            ; $7baf: $9c
	ld d, h                                          ; $7bb0: $54

Call_05d_7bb1:
	adc h                                            ; $7bb1: $8c
	ld d, h                                          ; $7bb2: $54
	rla                                              ; $7bb3: $17
	rla                                              ; $7bb4: $17
	sbc $27                                          ; $7bb5: $de $27
	sub e                                            ; $7bb7: $93
	cpl                                              ; $7bb8: $2f
	scf                                              ; $7bb9: $37
	cpl                                              ; $7bba: $2f
	ld l, c                                          ; $7bbb: $69
	jr z, jr_05d_7bea                                ; $7bbc: $28 $2c

	inc h                                            ; $7bbe: $24
	ld h, $23                                        ; $7bbf: $26 $23
	inc sp                                           ; $7bc1: $33
	dec sp                                           ; $7bc2: $3b
	ret nz                                           ; $7bc3: $c0

	db $dd                                           ; $7bc4: $dd
	ldh [$df], a                                     ; $7bc5: $e0 $df
	ldh [c], a                                       ; $7bc7: $e2
	sbc c                                            ; $7bc8: $99
	pop hl                                           ; $7bc9: $e1
	adc b                                            ; $7bca: $88
	ld hl, sp+$3f                                    ; $7bcb: $f8 $3f
	rrca                                             ; $7bcd: $0f
	inc bc                                           ; $7bce: $03
	ld a, e                                          ; $7bcf: $7b
	ld e, a                                          ; $7bd0: $5f
	sbc l                                            ; $7bd1: $9d
	ld a, b                                          ; $7bd2: $78
	rlca                                             ; $7bd3: $07
	ld l, d                                          ; $7bd4: $6a
	cp a                                             ; $7bd5: $bf
	add b                                            ; $7bd6: $80
	ret z                                            ; $7bd7: $c8

	rst $38                                          ; $7bd8: $ff
	db $f4                                           ; $7bd9: $f4
	sub $c9                                          ; $7bda: $d6 $c9
	ret z                                            ; $7bdc: $c8

	ret z                                            ; $7bdd: $c8

	ld c, b                                          ; $7bde: $48
	ret z                                            ; $7bdf: $c8

	ld a, a                                          ; $7be0: $7f
	ld c, e                                          ; $7be1: $4b
	ld l, c                                          ; $7be2: $69
	ld e, a                                          ; $7be3: $5f
	ld c, b                                          ; $7be4: $48
	ld c, b                                          ; $7be5: $48
	ld bc, $ff03                                     ; $7be6: $01 $03 $ff
	rra                                              ; $7be9: $1f

jr_05d_7bea:
	ld [hl], c                                       ; $7bea: $71
	add e                                            ; $7beb: $83

Call_05d_7bec:
	rrca                                             ; $7bec: $0f
	inc a                                            ; $7bed: $3c
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	db $fc                                           ; $7bf0: $fc
	ld hl, sp-$10                                    ; $7bf1: $f8 $f0
	add b                                            ; $7bf3: $80
	inc bc                                           ; $7bf4: $03
	rrca                                             ; $7bf5: $0f
	rst SubAFromDE                                          ; $7bf6: $df
	call nc, $dc99                                   ; $7bf7: $d4 $99 $dc
	sub a                                            ; $7bfa: $97
	sub h                                            ; $7bfb: $94
	sub l                                            ; $7bfc: $95
	ld d, $64                                        ; $7bfd: $16 $64
	halt                                             ; $7bff: $76
	jp Jump_05d_7fdf                                 ; $7c00: $c3 $df $7f


	adc b                                            ; $7c03: $88
	cp $fc                                           ; $7c04: $fe $fc
	jr nc, jr_05d_7c68                               ; $7c06: $30 $60

	ld b, b                                          ; $7c08: $40
	ret nz                                           ; $7c09: $c0

	add c                                            ; $7c0a: $81
	inc bc                                           ; $7c0b: $03
	ld b, $1c                                        ; $7c0c: $06 $1c
	ldh [$c0], a                                     ; $7c0e: $e0 $c0
	ret nz                                           ; $7c10: $c0

	add b                                            ; $7c11: $80

jr_05d_7c12:
	add b                                            ; $7c12: $80
	ld bc, $0703                                     ; $7c13: $01 $03 $07
	dec sp                                           ; $7c16: $3b
	add hl, sp                                       ; $7c17: $39
	ld l, b                                          ; $7c18: $68
	set 7, h                                         ; $7c19: $cb $fc
	sbc $08                                          ; $7c1b: $de $08
	sbc l                                            ; $7c1d: $9d
	ld c, $1f                                        ; $7c1e: $0e $1f
	ld a, d                                          ; $7c20: $7a
	adc d                                            ; $7c21: $8a
	db $dd                                           ; $7c22: $dd
	rst $38                                          ; $7c23: $ff
	sbc e                                            ; $7c24: $9b
	rst AddAOntoHL                                          ; $7c25: $ef
	db $fc                                           ; $7c26: $fc
	rst $38                                          ; $7c27: $ff
	rrca                                             ; $7c28: $0f
	sbc $02                                          ; $7c29: $de $02
	sbc e                                            ; $7c2b: $9b
	jr c, jr_05d_7c35                                ; $7c2c: $38 $07

	and b                                            ; $7c2e: $a0
	push af                                          ; $7c2f: $f5
	db $dd                                           ; $7c30: $dd
	rst $38                                          ; $7c31: $ff
	add b                                            ; $7c32: $80
	rst GetHLinHL                                          ; $7c33: $cf
	ccf                                              ; $7c34: $3f

jr_05d_7c35:
	sbc $ad                                          ; $7c35: $de $ad

jr_05d_7c37:
	cp $98                                           ; $7c37: $fe $98
	add a                                            ; $7c39: $87
	ret nz                                           ; $7c3a: $c0

	ld a, $f0                                        ; $7c3b: $3e $f0
	ld bc, $ff57                                     ; $7c3d: $01 $57 $ff
	sbc a                                            ; $7c40: $9f
	add a                                            ; $7c41: $87
	ret nz                                           ; $7c42: $c0

	ret z                                            ; $7c43: $c8

	sub b                                            ; $7c44: $90
	jr nc, jr_05d_7c37                               ; $7c45: $30 $f0

	ld [hl], b                                       ; $7c47: $70
	ldh [$c0], a                                     ; $7c48: $e0 $c0
	nop                                              ; $7c4a: $00
	jr c, jr_05d_7cbd                                ; $7c4b: $38 $70

	ldh a, [$d0]                                     ; $7c4d: $f0 $d0
	sub b                                            ; $7c4f: $90
	jr nz, jr_05d_7c12                               ; $7c50: $20 $c0

	sbc [hl]                                         ; $7c52: $9e
	nop                                              ; $7c53: $00
	db $dd                                           ; $7c54: $dd
	rrca                                             ; $7c55: $0f
	rst SubAFromDE                                          ; $7c56: $df
	ld e, $7c                                        ; $7c57: $1e $7c
	sub h                                            ; $7c59: $94
	sbc $0a                                          ; $7c5a: $de $0a
	sub d                                            ; $7c5c: $92
	inc c                                            ; $7c5d: $0c
	inc d                                            ; $7c5e: $14
	ld [de], a                                       ; $7c5f: $12
	adc c                                            ; $7c60: $89
	ld d, a                                          ; $7c61: $57
	ldh [$c0], a                                     ; $7c62: $e0 $c0
	ld b, b                                          ; $7c64: $40
	add b                                            ; $7c65: $80
	inc bc                                           ; $7c66: $03
	rst $38                                          ; $7c67: $ff

jr_05d_7c68:
	ld hl, sp-$09                                    ; $7c68: $f8 $f7
	ld a, d                                          ; $7c6a: $7a
	cp e                                             ; $7c6b: $bb
	ld a, c                                          ; $7c6c: $79
	add e                                            ; $7c6d: $83

jr_05d_7c6e:
	add l                                            ; $7c6e: $85
	rra                                              ; $7c6f: $1f
	ld hl, sp+$71                                    ; $7c70: $f8 $71
	rlca                                             ; $7c72: $07
	dec de                                           ; $7c73: $1b
	and $cc                                          ; $7c74: $e6 $cc
	ccf                                              ; $7c76: $3f
	rst $38                                          ; $7c77: $ff
	add h                                            ; $7c78: $84
	nop                                              ; $7c79: $00
	nop                                              ; $7c7a: $00
	inc b                                            ; $7c7b: $04
	jr c, jr_05d_7c6e                                ; $7c7c: $38 $f0

	ret nz                                           ; $7c7e: $c0

jr_05d_7c7f:
	rst $38                                          ; $7c7f: $ff
	rlca                                             ; $7c80: $07
	sub l                                            ; $7c81: $95

jr_05d_7c82:
	sub h                                            ; $7c82: $94
	inc [hl]                                         ; $7c83: $34
	inc [hl]                                         ; $7c84: $34
	ld h, h                                          ; $7c85: $64
	ret z                                            ; $7c86: $c8

	ldh a, [rAUD1SWEEP]                              ; $7c87: $f0 $10
	db $dd                                           ; $7c89: $dd
	inc c                                            ; $7c8a: $0c
	sbc e                                            ; $7c8b: $9b
	inc e                                            ; $7c8c: $1c
	jr c, jr_05d_7c7f                                ; $7c8d: $38 $f0

	ldh a, [$f9]                                     ; $7c8f: $f0 $f9
	adc a                                            ; $7c91: $8f
	dec d                                            ; $7c92: $15
	ld [bc], a                                       ; $7c93: $02
	inc b                                            ; $7c94: $04
	xor d                                            ; $7c95: $aa
	ld d, l                                          ; $7c96: $55
	ld a, [hl+]                                      ; $7c97: $2a
	dec b                                            ; $7c98: $05
	xor e                                            ; $7c99: $ab
	ld [$090a], sp                                   ; $7c9a: $08 $0a $09
	ld [$2a35], sp                                   ; $7c9d: $08 $35 $2a
	dec h                                            ; $7ca0: $25
	ld c, d                                          ; $7ca1: $4a
	db $dd                                           ; $7ca2: $dd
	rlca                                             ; $7ca3: $07
	ld a, [hl]                                       ; $7ca4: $7e
	ld d, d                                          ; $7ca5: $52
	ld a, a                                          ; $7ca6: $7f
	ld l, e                                          ; $7ca7: $6b
	ld a, a                                          ; $7ca8: $7f
	cp c                                             ; $7ca9: $b9
	sbc c                                            ; $7caa: $99
	ld b, b                                          ; $7cab: $40
	nop                                              ; $7cac: $00
	ld b, b                                          ; $7cad: $40
	sub h                                            ; $7cae: $94
	ld h, b                                          ; $7caf: $60
	ld a, b                                          ; $7cb0: $78
	db $db                                           ; $7cb1: $db
	rst $38                                          ; $7cb2: $ff
	ld a, a                                          ; $7cb3: $7f
	ld a, a                                          ; $7cb4: $7f
	sub a                                            ; $7cb5: $97
	and d                                            ; $7cb6: $a2
	dec d                                            ; $7cb7: $15
	ld l, $00                                        ; $7cb8: $2e $00
	inc bc                                           ; $7cba: $03
	ld a, [hl+]                                      ; $7cbb: $2a
	ld e, a                                          ; $7cbc: $5f

jr_05d_7cbd:
	cp $75                                           ; $7cbd: $fe $75
	nop                                              ; $7cbf: $00
	ld a, a                                          ; $7cc0: $7f
	ld d, [hl]                                       ; $7cc1: $56
	rst SubAFromDE                                          ; $7cc2: $df
	rst $38                                          ; $7cc3: $ff
	sub a                                            ; $7cc4: $97
	ld a, [hl+]                                      ; $7cc5: $2a
	ld bc, $85aa                                     ; $7cc6: $01 $aa $85
	xor e                                            ; $7cc9: $ab
	push de                                          ; $7cca: $d5
	dec hl                                           ; $7ccb: $2b
	ld d, a                                          ; $7ccc: $57
	ei                                               ; $7ccd: $fb
	rst SubAFromDE                                          ; $7cce: $df
	add b                                            ; $7ccf: $80
	add b                                            ; $7cd0: $80
	call z, $cc54                                    ; $7cd1: $cc $54 $cc
	sub h                                            ; $7cd4: $94
	xor h                                            ; $7cd5: $ac
	sbc b                                            ; $7cd6: $98
	xor b                                            ; $7cd7: $a8
	sbc b                                            ; $7cd8: $98
	scf                                              ; $7cd9: $37
	cpl                                              ; $7cda: $2f
	scf                                              ; $7cdb: $37
	ld l, a                                          ; $7cdc: $6f
	ld d, a                                          ; $7cdd: $57
	ld l, a                                          ; $7cde: $6f
	ld e, a                                          ; $7cdf: $5f
	ld l, a                                          ; $7ce0: $6f
	rra                                              ; $7ce1: $1f
	rrca                                             ; $7ce2: $0f
	ld e, a                                          ; $7ce3: $5f
	xor a                                            ; $7ce4: $af
	ld e, b                                          ; $7ce5: $58
	ldh a, [$d5]                                     ; $7ce6: $f0 $d5
	or b                                             ; $7ce8: $b0
	pop af                                           ; $7ce9: $f1
	rst $38                                          ; $7cea: $ff
	xor a                                            ; $7ceb: $af
	ld e, c                                          ; $7cec: $59
	or b                                             ; $7ced: $b0
	db $10                                           ; $7cee: $10
	jr c, jr_05d_7c82                                ; $7cef: $38 $91

	ld h, b                                          ; $7cf1: $60
	db $fc                                           ; $7cf2: $fc
	rst $38                                          ; $7cf3: $ff
	dec e                                            ; $7cf4: $1d
	db $fd                                           ; $7cf5: $fd
	dec d                                            ; $7cf6: $15
	rlca                                             ; $7cf7: $07
	inc b                                            ; $7cf8: $04
	nop                                              ; $7cf9: $00
	add b                                            ; $7cfa: $80
	cp $f7                                           ; $7cfb: $fe $f7
	rst FarCall                                          ; $7cfd: $f7
	rlca                                             ; $7cfe: $07

Call_05d_7cff:
	ld a, d                                          ; $7cff: $7a
	cp h                                             ; $7d00: $bc
	rst SubAFromDE                                          ; $7d01: $df
	rst $38                                          ; $7d02: $ff
	adc b                                            ; $7d03: $88
	rst SubAFromHL                                          ; $7d04: $d7
	rst $38                                          ; $7d05: $ff
	ld c, $ff                                        ; $7d06: $0e $ff
	call z, Call_05d_4848                            ; $7d08: $cc $48 $48
	ld a, a                                          ; $7d0b: $7f
	ldh a, [c]                                       ; $7d0c: $f2
	ld a, [hl]                                       ; $7d0d: $7e
	ld [bc], a                                       ; $7d0e: $02
	rst $38                                          ; $7d0f: $ff
	ld c, b                                          ; $7d10: $48
	ld b, b                                          ; $7d11: $40
	rst FarCall                                          ; $7d12: $f7
	db $fc                                           ; $7d13: $fc
	sbc h                                            ; $7d14: $9c
	sub a                                            ; $7d15: $97
	or $f1                                           ; $7d16: $f6 $f1
	ld bc, $1f00                                     ; $7d18: $01 $00 $1f
	sbc $f7                                          ; $7d1b: $de $f7
	sbc [hl]                                         ; $7d1d: $9e
	pop af                                           ; $7d1e: $f1
	ld a, e                                          ; $7d1f: $7b
	dec a                                            ; $7d20: $3d
	adc e                                            ; $7d21: $8b
	ret z                                            ; $7d22: $c8

	ld d, c                                          ; $7d23: $51
	ld [hl], e                                       ; $7d24: $73
	and a                                            ; $7d25: $a7
	ld b, a                                          ; $7d26: $47
	ld c, a                                          ; $7d27: $4f
	ld b, a                                          ; $7d28: $47
	ld h, e                                          ; $7d29: $63

jr_05d_7d2a:
	ld hl, sp-$10                                    ; $7d2a: $f8 $f0
	ldh [$e0], a                                     ; $7d2c: $e0 $e0
	ret nz                                           ; $7d2e: $c0

	jp $c0c0                                         ; $7d2f: $c3 $c0 $c0


	ld a, b                                          ; $7d32: $78
	ldh a, [$f8]                                     ; $7d33: $f0 $f8
	ret nz                                           ; $7d35: $c0

	ld [hl], l                                       ; $7d36: $75
	sbc $78                                          ; $7d37: $de $78
	push hl                                          ; $7d39: $e5
	sbc [hl]                                         ; $7d3a: $9e
	ld [hl], b                                       ; $7d3b: $70
	db $dd                                           ; $7d3c: $dd
	rst $38                                          ; $7d3d: $ff
	sbc e                                            ; $7d3e: $9b
	ld [$fa0f], sp                                   ; $7d3f: $08 $0f $fa
	adc b                                            ; $7d42: $88
	sbc $08                                          ; $7d43: $de $08
	sbc [hl]                                         ; $7d45: $9e
	rrca                                             ; $7d46: $0f
	ld a, e                                          ; $7d47: $7b
	ld [hl], d                                       ; $7d48: $72
	ld [hl], d                                       ; $7d49: $72
	ret nz                                           ; $7d4a: $c0

	sbc c                                            ; $7d4b: $99
	rra                                              ; $7d4c: $1f
	ei                                               ; $7d4d: $fb
	ld b, e                                          ; $7d4e: $43
	rlca                                             ; $7d4f: $07
	rlca                                             ; $7d50: $07
	rra                                              ; $7d51: $1f
	ld a, e                                          ; $7d52: $7b
	ld h, c                                          ; $7d53: $61
	adc e                                            ; $7d54: $8b
	and $3e                                          ; $7d55: $e6 $3e
	db $fd                                           ; $7d57: $fd
	db $fd                                           ; $7d58: $fd
	ld a, [$18e4]                                    ; $7d59: $fa $e4 $18
	ret nz                                           ; $7d5c: $c0

	and l                                            ; $7d5d: $a5
	xor d                                            ; $7d5e: $aa
	or l                                             ; $7d5f: $b5
	ld a, [hl+]                                      ; $7d60: $2a
	ccf                                              ; $7d61: $3f
	ld a, [de]                                       ; $7d62: $1a
	rra                                              ; $7d63: $1f
	ret nz                                           ; $7d64: $c0

	and b                                            ; $7d65: $a0
	and b                                            ; $7d66: $a0
	jr nz, jr_05d_7d89                               ; $7d67: $20 $20

	sbc $10                                          ; $7d69: $de $10
	ld sp, hl                                        ; $7d6b: $f9
	add b                                            ; $7d6c: $80
	ld a, [hl+]                                      ; $7d6d: $2a
	ld d, a                                          ; $7d6e: $57
	cpl                                              ; $7d6f: $2f
	ld d, l                                          ; $7d70: $55
	xor d                                            ; $7d71: $aa
	push af                                          ; $7d72: $f5
	cp $ff                                           ; $7d73: $fe $ff
	dec b                                            ; $7d75: $05
	dec b                                            ; $7d76: $05
	rlca                                             ; $7d77: $07
	rrca                                             ; $7d78: $0f
	ld c, $1d                                        ; $7d79: $0e $1d
	rra                                              ; $7d7b: $1f
	rra                                              ; $7d7c: $1f
	xor [hl]                                         ; $7d7d: $ae
	ld d, [hl]                                       ; $7d7e: $56
	adc a                                            ; $7d7f: $8f
	jr jr_05d_7d2a                                   ; $7d80: $18 $a8

	ld d, b                                          ; $7d82: $50
	or b                                             ; $7d83: $b0
	pop de                                           ; $7d84: $d1
	sbc [hl]                                         ; $7d85: $9e
	sbc b                                            ; $7d86: $98
	cp $ff                                           ; $7d87: $fe $ff

jr_05d_7d89:
	rst AddAOntoHL                                          ; $7d89: $ef
	adc $8c                                          ; $7d8a: $ce $8c
	sub e                                            ; $7d8c: $93
	inc c                                            ; $7d8d: $0c
	ldh a, [$f0]                                     ; $7d8e: $f0 $f0
	rst $38                                          ; $7d90: $ff
	inc b                                            ; $7d91: $04
	inc b                                            ; $7d92: $04
	ld b, h                                          ; $7d93: $44
	adc b                                            ; $7d94: $88
	ld [$0404], sp                                   ; $7d95: $08 $04 $04
	rst GetHLinHL                                          ; $7d98: $cf
	ld a, b                                          ; $7d99: $78
	sbc h                                            ; $7d9a: $9c
	ld a, l                                          ; $7d9b: $7d
	ld a, [hl]                                       ; $7d9c: $7e
	rst SubAFromDE                                          ; $7d9d: $df
	rlca                                             ; $7d9e: $07
	ld [hl], l                                       ; $7d9f: $75
	or e                                             ; $7da0: $b3
	rst $38                                          ; $7da1: $ff
	rst SubAFromDE                                          ; $7da2: $df
	db $10                                           ; $7da3: $10
	ld a, a                                          ; $7da4: $7f
	ld a, a                                          ; $7da5: $7f
	sub [hl]                                         ; $7da6: $96
	inc e                                            ; $7da7: $1c
	ld a, h                                          ; $7da8: $7c
	db $fc                                           ; $7da9: $fc
	db $fc                                           ; $7daa: $fc
	pop af                                           ; $7dab: $f1
	ld a, [$0af5]                                    ; $7dac: $fa $f5 $0a
	dec b                                            ; $7daf: $05
	sbc $07                                          ; $7db0: $de $07
	ld sp, hl                                        ; $7db2: $f9
	sbc e                                            ; $7db3: $9b
	ld a, a                                          ; $7db4: $7f
	xor a                                            ; $7db5: $af
	ld e, a                                          ; $7db6: $5f
	cp a                                             ; $7db7: $bf
	db $dd                                           ; $7db8: $dd
	rst $38                                          ; $7db9: $ff
	ld e, h                                          ; $7dba: $5c
	nop                                              ; $7dbb: $00
	db $db                                           ; $7dbc: $db
	ld [hl+], a                                      ; $7dbd: $22
	sbc e                                            ; $7dbe: $9b
	inc hl                                           ; $7dbf: $23
	inc sp                                           ; $7dc0: $33
	inc sp                                           ; $7dc1: $33
	ld h, [hl]                                       ; $7dc2: $66
	ld l, e                                          ; $7dc3: $6b
	or $9e                                           ; $7dc4: $f6 $9e
	ld h, [hl]                                       ; $7dc6: $66
	ld [hl], e                                       ; $7dc7: $73
	or $9d                                           ; $7dc8: $f6 $9d
	ld [hl], a                                       ; $7dca: $77
	halt                                             ; $7dcb: $76
	sbc $66                                          ; $7dcc: $de $66
	sub h                                            ; $7dce: $94
	ld h, e                                          ; $7dcf: $63
	inc sp                                           ; $7dd0: $33
	ld [hl+], a                                      ; $7dd1: $22
	ld [hl+], a                                      ; $7dd2: $22
	ld b, d                                          ; $7dd3: $42
	ld [hl], h                                       ; $7dd4: $74
	halt                                             ; $7dd5: $76
	ld [hl], a                                       ; $7dd6: $77
	ld h, a                                          ; $7dd7: $67
	ld [hl], a                                       ; $7dd8: $77
	ld h, e                                          ; $7dd9: $63
	sbc $22                                          ; $7dda: $de $22
	sbc c                                            ; $7ddc: $99
	ld b, h                                          ; $7ddd: $44
	ld [hl], h                                       ; $7dde: $74
	ld [hl], d                                       ; $7ddf: $72

Jump_05d_7de0:
	ld h, [hl]                                       ; $7de0: $66
	ld [hl], a                                       ; $7de1: $77
	ld [hl], a                                       ; $7de2: $77
	ld [hl], a                                       ; $7de3: $77
	db $e3                                           ; $7de4: $e3
	sbc c                                            ; $7de5: $99
	ld b, a                                          ; $7de6: $47
	ld h, a                                          ; $7de7: $67
	ld h, [hl]                                       ; $7de8: $66
	ld h, [hl]                                       ; $7de9: $66
	ld [hl], a                                       ; $7dea: $77
	ld h, [hl]                                       ; $7deb: $66
	ld a, e                                          ; $7dec: $7b
	or $9d                                           ; $7ded: $f6 $9d
	ld h, $47                                        ; $7def: $26 $47
	sbc $66                                          ; $7df1: $de $66
	ld a, e                                          ; $7df3: $7b
	di                                               ; $7df4: $f3
	ld a, e                                          ; $7df5: $7b
	or $77                                           ; $7df6: $f6 $77
	ret nc                                           ; $7df8: $d0

	ld a, a                                          ; $7df9: $7f
	push de                                          ; $7dfa: $d5
	ld [hl], a                                       ; $7dfb: $77
	ldh [c], a                                       ; $7dfc: $e2
	sbc [hl]                                         ; $7dfd: $9e
	ld h, $7b                                        ; $7dfe: $26 $7b
	db $e3                                           ; $7e00: $e3
	sbc e                                            ; $7e01: $9b
	ld b, h                                          ; $7e02: $44
	ld b, [hl]                                       ; $7e03: $46
	ld h, [hl]                                       ; $7e04: $66
	ld d, l                                          ; $7e05: $55
	ld l, a                                          ; $7e06: $6f
	or $9d                                           ; $7e07: $f6 $9d
	ld [hl], h                                       ; $7e09: $74
	ld b, l                                          ; $7e0a: $45
	ld [hl], a                                       ; $7e0b: $77
	or $7f                                           ; $7e0c: $f6 $7f
	xor d                                            ; $7e0e: $aa
	sbc c                                            ; $7e0f: $99
	ld h, a                                          ; $7e10: $67
	halt                                             ; $7e11: $76
	ld h, e                                          ; $7e12: $63
	ld d, l                                          ; $7e13: $55
	ld h, [hl]                                       ; $7e14: $66
	ld d, l                                          ; $7e15: $55
	dec a                                            ; $7e16: $3d
	adc e                                            ; $7e17: $8b
	db $dd                                           ; $7e18: $dd
	rst $38                                          ; $7e19: $ff
	ld sp, hl                                        ; $7e1a: $f9
	reti                                             ; $7e1b: $d9


	rst $38                                          ; $7e1c: $ff
	ld c, e                                          ; $7e1d: $4b
	ldh a, [$9e]                                     ; $7e1e: $f0 $9e
	push de                                          ; $7e20: $d5
	ld d, a                                          ; $7e21: $57
	ldh a, [$9b]                                     ; $7e22: $f0 $9b
	cp $fd                                           ; $7e24: $fe $fd
	ld a, [$fd40]                                    ; $7e26: $fa $40 $fd
	sbc h                                            ; $7e29: $9c
	ld bc, $0502                                     ; $7e2a: $01 $02 $05
	ld [hl], e                                       ; $7e2d: $73
	ldh a, [$9c]                                     ; $7e2e: $f0 $9c
	rst SubAFromBC                                          ; $7e30: $e7
	ld [hl], a                                       ; $7e31: $77
	di                                               ; $7e32: $f3
	sbc $32                                          ; $7e33: $de $32
	sbc c                                            ; $7e35: $99
	ld a, [hl-]                                      ; $7e36: $3a
	add hl, de                                       ; $7e37: $19
	call nz, Call_05d_42c6                           ; $7e38: $c4 $c6 $42
	ld [hl+], a                                      ; $7e3b: $22
	sbc $e3                                          ; $7e3c: $de $e3
	sbc [hl]                                         ; $7e3e: $9e
	pop af                                           ; $7e3f: $f1
	sbc $ff                                          ; $7e40: $de $ff
	sbc [hl]                                         ; $7e42: $9e
	ld bc, $c04b                                     ; $7e43: $01 $4b $c0
	sbc [hl]                                         ; $7e46: $9e
	ld d, l                                          ; $7e47: $55
	rla                                              ; $7e48: $17
	and b                                            ; $7e49: $a0
	adc a                                            ; $7e4a: $8f
	rst FarCall                                          ; $7e4b: $f7
	di                                               ; $7e4c: $f3
	ei                                               ; $7e4d: $fb
	ei                                               ; $7e4e: $fb
	add hl, bc                                       ; $7e4f: $09
	dec b                                            ; $7e50: $05
	inc b                                            ; $7e51: $04
	ld [bc], a                                       ; $7e52: $02
	inc d                                            ; $7e53: $14
	ld d, $0a                                        ; $7e54: $16 $0a
	ld a, [bc]                                       ; $7e56: $0a
	ei                                               ; $7e57: $fb
	db $fd                                           ; $7e58: $fd
	db $fd                                           ; $7e59: $fd
	cp $6f                                           ; $7e5a: $fe $6f
	ldh [$df], a                                     ; $7e5c: $e0 $df
	add b                                            ; $7e5e: $80
	ld e, e                                          ; $7e5f: $5b
	ret nc                                           ; $7e60: $d0

	sbc [hl]                                         ; $7e61: $9e
	db $ec                                           ; $7e62: $ec
	ld c, e                                          ; $7e63: $4b
	ret nz                                           ; $7e64: $c0

	ld [hl], e                                       ; $7e65: $73
	db $e4                                           ; $7e66: $e4
	ld h, a                                          ; $7e67: $67
	ldh a, [$9c]                                     ; $7e68: $f0 $9c
	ld [$eaf4], a                                    ; $7e6a: $ea $f4 $ea
	ld hl, sp-$62                                    ; $7e6d: $f8 $9e
	rst $38                                          ; $7e6f: $ff
	sbc $f0                                          ; $7e70: $de $f0
	adc h                                            ; $7e72: $8c
	inc d                                            ; $7e73: $14
	jr z, jr_05d_7e86                                ; $7e74: $28 $10

	ld bc, $100e                                     ; $7e76: $01 $0e $10
	rlca                                             ; $7e79: $07
	dec de                                           ; $7e7a: $1b
	ld l, e                                          ; $7e7b: $6b
	ld d, a                                          ; $7e7c: $57
	ld l, a                                          ; $7e7d: $6f
	ld a, [hl]                                       ; $7e7e: $7e
	ld [hl], c                                       ; $7e7f: $71
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	inc b                                            ; $7e82: $04
	ld d, h                                          ; $7e83: $54
	xor b                                            ; $7e84: $a8
	db $10                                           ; $7e85: $10

jr_05d_7e86:
	ld a, e                                          ; $7e86: $7b
	or c                                             ; $7e87: $b1
	add b                                            ; $7e88: $80
	ld a, b                                          ; $7e89: $78
	db $fc                                           ; $7e8a: $fc
	xor e                                            ; $7e8b: $ab
	ld d, a                                          ; $7e8c: $57
	rst AddAOntoHL                                          ; $7e8d: $ef
	rst $38                                          ; $7e8e: $ff
	rst $38                                          ; $7e8f: $ff
	ld a, a                                          ; $7e90: $7f
	rlca                                             ; $7e91: $07
	inc bc                                           ; $7e92: $03
	dec b                                            ; $7e93: $05
	ld a, [de]                                       ; $7e94: $1a
	dec b                                            ; $7e95: $05
	ld [rRAMG], sp                                   ; $7e96: $08 $00 $00
	ld sp, $fa40                                     ; $7e99: $31 $40 $fa
	push hl                                          ; $7e9c: $e5
	ld a, [$fff7]                                    ; $7e9d: $fa $f7 $ff
	rst $38                                          ; $7ea0: $ff
	adc $9f                                          ; $7ea1: $ce $9f
	ld d, c                                          ; $7ea3: $51
	xor b                                            ; $7ea4: $a8
	ld d, c                                          ; $7ea5: $51
	adc d                                            ; $7ea6: $8a
	db $10                                           ; $7ea7: $10
	adc h                                            ; $7ea8: $8c
	ld h, b                                          ; $7ea9: $60
	ld a, a                                          ; $7eaa: $7f
	add b                                            ; $7eab: $80
	xor [hl]                                         ; $7eac: $ae
	ld d, a                                          ; $7ead: $57
	xor [hl]                                         ; $7eae: $ae
	ld [hl], l                                       ; $7eaf: $75
	rst AddAOntoHL                                          ; $7eb0: $ef
	sbc a                                            ; $7eb1: $9f
	rst $38                                          ; $7eb2: $ff
	ret nz                                           ; $7eb3: $c0

	ld sp, hl                                        ; $7eb4: $f9
	ld a, a                                          ; $7eb5: $7f
	ld a, a                                          ; $7eb6: $7f
	ccf                                              ; $7eb7: $3f
	rrca                                             ; $7eb8: $0f
	rlca                                             ; $7eb9: $07
	db $e3                                           ; $7eba: $e3
	rra                                              ; $7ebb: $1f
	ld a, e                                          ; $7ebc: $7b
	ld a, l                                          ; $7ebd: $7d
	sub a                                            ; $7ebe: $97
	ret nz                                           ; $7ebf: $c0

	ldh a, [$f8]                                     ; $7ec0: $f0 $f8
	db $fc                                           ; $7ec2: $fc
	rra                                              ; $7ec3: $1f
	ld b, b                                          ; $7ec4: $40
	ld [$6bf5], a                                    ; $7ec5: $ea $f5 $6b
	ld l, h                                          ; $7ec8: $6c
	db $fc                                           ; $7ec9: $fc
	sbc [hl]                                         ; $7eca: $9e
	ldh [$7b], a                                     ; $7ecb: $e0 $7b
	ld b, $9d                                        ; $7ecd: $06 $9d
	xor d                                            ; $7ecf: $aa
	push af                                          ; $7ed0: $f5
	ld e, e                                          ; $7ed1: $5b
	inc a                                            ; $7ed2: $3c
	ld a, a                                          ; $7ed3: $7f
	inc hl                                           ; $7ed4: $23
	sub a                                            ; $7ed5: $97
	ld d, l                                          ; $7ed6: $55
	xor d                                            ; $7ed7: $aa
	ld d, l                                          ; $7ed8: $55
	xor d                                            ; $7ed9: $aa
	rst $38                                          ; $7eda: $ff
	xor [hl]                                         ; $7edb: $ae
	xor d                                            ; $7edc: $aa
	rst $38                                          ; $7edd: $ff
	ld a, e                                          ; $7ede: $7b
	ld sp, hl                                        ; $7edf: $f9
	ld a, a                                          ; $7ee0: $7f
	di                                               ; $7ee1: $f3
	sbc [hl]                                         ; $7ee2: $9e
	ld d, c                                          ; $7ee3: $51
	ld l, e                                          ; $7ee4: $6b
	ldh a, [$df]                                     ; $7ee5: $f0 $df
	xor d                                            ; $7ee7: $aa
	ld l, a                                          ; $7ee8: $6f
	ldh a, [$df]                                     ; $7ee9: $f0 $df
	ld d, l                                          ; $7eeb: $55
	ld a, a                                          ; $7eec: $7f
	db $fd                                           ; $7eed: $fd
	ld a, a                                          ; $7eee: $7f
	add l                                            ; $7eef: $85
	sub c                                            ; $7ef0: $91
	xor a                                            ; $7ef1: $af
	rst $38                                          ; $7ef2: $ff
	or [hl]                                          ; $7ef3: $b6
	xor d                                            ; $7ef4: $aa
	rst $38                                          ; $7ef5: $ff
	xor e                                            ; $7ef6: $ab
	ld d, [hl]                                       ; $7ef7: $56
	xor h                                            ; $7ef8: $ac
	ld d, h                                          ; $7ef9: $54
	dec b                                            ; $7efa: $05

Call_05d_7efb:
	ld c, h                                          ; $7efb: $4c
	ld d, l                                          ; $7efc: $55
	nop                                              ; $7efd: $00
	db $f4                                           ; $7efe: $f4
	ld [hl], e                                       ; $7eff: $73
	jr nz, jr_05d_7f81                               ; $7f00: $20 $7f

	ldh a, [$9d]                                     ; $7f02: $f0 $9d
	db $eb                                           ; $7f04: $eb
	rra                                              ; $7f05: $1f
	db $fd                                           ; $7f06: $fd
	rst SubAFromDE                                          ; $7f07: $df
	add hl, de                                       ; $7f08: $19
	sbc [hl]                                         ; $7f09: $9e
	dec e                                            ; $7f0a: $1d
	ld [hl], e                                       ; $7f0b: $73
	or h                                             ; $7f0c: $b4
	sbc $f1                                          ; $7f0d: $de $f1
	ld [hl], e                                       ; $7f0f: $73
	ld hl, sp-$65                                    ; $7f10: $f8 $9b
	ld a, [bc]                                       ; $7f12: $0a
	nop                                              ; $7f13: $00
	ld a, [hl+]                                      ; $7f14: $2a
	dec d                                            ; $7f15: $15
	ld [hl], a                                       ; $7f16: $77
	rst FarCall                                          ; $7f17: $f7
	ld a, a                                          ; $7f18: $7f
	sbc h                                            ; $7f19: $9c
	sbc l                                            ; $7f1a: $9d
	push de                                          ; $7f1b: $d5
	ld [$f877], a                                    ; $7f1c: $ea $77 $f8

Jump_05d_7f1f:
	sbc c                                            ; $7f1f: $99
	xor d                                            ; $7f20: $aa
	nop                                              ; $7f21: $00
	xor d                                            ; $7f22: $aa
	ld d, l                                          ; $7f23: $55
	ld a, [$7b6f]                                    ; $7f24: $fa $6f $7b
	sbc b                                            ; $7f27: $98
	ld a, [hl]                                       ; $7f28: $7e
	cp c                                             ; $7f29: $b9
	ld a, a                                          ; $7f2a: $7f
	adc b                                            ; $7f2b: $88
	ld a, e                                          ; $7f2c: $7b
	adc $77                                          ; $7f2d: $ce $77
	ldh a, [$7f]                                     ; $7f2f: $f0 $7f
	rst FarCall                                          ; $7f31: $f7
	sbc l                                            ; $7f32: $9d
	ld a, a                                          ; $7f33: $7f
	dec e                                            ; $7f34: $1d
	ld [hl], a                                       ; $7f35: $77
	ldh a, [hDisp1_SCX]                                     ; $7f36: $f0 $91
	ld d, l                                          ; $7f38: $55
	ld [$1a10], a                                    ; $7f39: $ea $10 $1a
	ld [bc], a                                       ; $7f3c: $02
	ld [bc], a                                       ; $7f3d: $02
	xor e                                            ; $7f3e: $ab
	ld d, l                                          ; $7f3f: $55
	xor e                                            ; $7f40: $ab
	ld d, l                                          ; $7f41: $55
	ld a, [$fe54]                                    ; $7f42: $fa $54 $fe
	cp $7b                                           ; $7f45: $fe $7b
	ld sp, hl                                        ; $7f47: $f9
	add h                                            ; $7f48: $84
	xor d                                            ; $7f49: $aa
	dec b                                            ; $7f4a: $05
	xor e                                            ; $7f4b: $ab
	add b                                            ; $7f4c: $80
	ld a, h                                          ; $7f4d: $7c
	ld h, [hl]                                       ; $7f4e: $66
	ld h, [hl]                                       ; $7f4f: $66
	ld h, e                                          ; $7f50: $63
	or e                                             ; $7f51: $b3
	or e                                             ; $7f52: $b3
	or c                                             ; $7f53: $b1
	rst $38                                          ; $7f54: $ff

Jump_05d_7f55:
	rst $38                                          ; $7f55: $ff
	set 1, e                                         ; $7f56: $cb $cb
	push bc                                          ; $7f58: $c5
	push hl                                          ; $7f59: $e5
	push hl                                          ; $7f5a: $e5
	ldh [c], a                                       ; $7f5b: $e2
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	inc bc                                           ; $7f5e: $03
	ld b, $0d                                        ; $7f5f: $06 $0d
	ld a, [de]                                       ; $7f61: $1a
	dec a                                            ; $7f62: $3d
	cp d                                             ; $7f63: $ba
	sbc $ff                                          ; $7f64: $de $ff
	sub a                                            ; $7f66: $97
	db $fc                                           ; $7f67: $fc
	ld hl, sp-$10                                    ; $7f68: $f8 $f0
	ldh [$e0], a                                     ; $7f6a: $e0 $e0
	nop                                              ; $7f6c: $00
	cp $57                                           ; $7f6d: $fe $57
	ld [hl], a                                       ; $7f6f: $77
	ld h, a                                          ; $7f70: $67
	ld a, a                                          ; $7f71: $7f
	add c                                            ; $7f72: $81
	ld h, d                                          ; $7f73: $62
	ld e, c                                          ; $7f74: $59
	sbc h                                            ; $7f75: $9c
	jp Jump_05d_5cb7                                 ; $7f76: $c3 $b7 $5c


	ld a, e                                          ; $7f79: $7b
	add $de                                          ; $7f7a: $c6 $de
	ldh a, [hDisp1_LCDC]                                     ; $7f7c: $f0 $8f
	inc sp                                           ; $7f7e: $33
	inc c                                            ; $7f7f: $0c
	dec bc                                           ; $7f80: $0b

jr_05d_7f81:
	stop                                             ; $7f81: $10 $00
	dec [hl]                                         ; $7f83: $35
	ld [$ff5d], a                                    ; $7f84: $ea $5d $ff
	ld [$c000], sp                                   ; $7f87: $08 $00 $c0
	ldh a, [$0a]                                     ; $7f8a: $f0 $0a
	dec d                                            ; $7f8c: $15
	xor d                                            ; $7f8d: $aa
	ld [hl], a                                       ; $7f8e: $77
	ld hl, sp-$6c                                    ; $7f8f: $f8 $94
	jr nz, jr_05d_7fef                               ; $7f91: $20 $5c

	xor b                                            ; $7f93: $a8
	nop                                              ; $7f94: $00
	add b                                            ; $7f95: $80
	ld h, b                                          ; $7f96: $60
	jr jr_05d_7f9f                                   ; $7f97: $18 $06

	ld bc, $57a3                                     ; $7f99: $01 $a3 $57
	ld a, d                                          ; $7f9c: $7a
	pop bc                                           ; $7f9d: $c1
	sbc e                                            ; $7f9e: $9b

jr_05d_7f9f:
	rra                                              ; $7f9f: $1f
	rlca                                             ; $7fa0: $07
	ld bc, $7a60                                     ; $7fa1: $01 $60 $7a
	rst $38                                          ; $7fa4: $ff
	sbc d                                            ; $7fa5: $9a
	ld a, [hl+]                                      ; $7fa6: $2a
	ld d, l                                          ; $7fa7: $55
	and d                                            ; $7fa8: $a2
	ld b, l                                          ; $7fa9: $45
	sbc a                                            ; $7faa: $9f
	ld a, c                                          ; $7fab: $79
	push af                                          ; $7fac: $f5
	add h                                            ; $7fad: $84
	push de                                          ; $7fae: $d5
	xor d                                            ; $7faf: $aa
	ld e, l                                          ; $7fb0: $5d
	cp d                                             ; $7fb1: $ba
	ret nz                                           ; $7fb2: $c0

	ret nz                                           ; $7fb3: $c0

	push bc                                          ; $7fb4: $c5
	ret nz                                           ; $7fb5: $c0

	ret nz                                           ; $7fb6: $c0

	call nz, $d3c5                                   ; $7fb7: $c4 $c5 $d3
	and b                                            ; $7fba: $a0
	ldh [$a2], a                                     ; $7fbb: $e0 $a2
	and c                                            ; $7fbd: $a1
	and b                                            ; $7fbe: $a0
	and c                                            ; $7fbf: $a1
	and d                                            ; $7fc0: $a2
	and b                                            ; $7fc1: $a0
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	ld d, b                                          ; $7fc4: $50
	ld [$ab55], a                                    ; $7fc5: $ea $55 $ab
	ld [hl], l                                       ; $7fc8: $75
	ld a, d                                          ; $7fc9: $7a
	ld l, e                                          ; $7fca: $6b
	sbc c                                            ; $7fcb: $99
	and b                                            ; $7fcc: $a0
	dec d                                            ; $7fcd: $15
	adc d                                            ; $7fce: $8a
	ld d, h                                          ; $7fcf: $54
	adc d                                            ; $7fd0: $8a
	dec d                                            ; $7fd1: $15
	ld a, e                                          ; $7fd2: $7b
	ld c, l                                          ; $7fd3: $4d
	sbc d                                            ; $7fd4: $9a
	add b                                            ; $7fd5: $80
	ld d, b                                          ; $7fd6: $50
	or b                                             ; $7fd7: $b0
	ldh [$a0], a                                     ; $7fd8: $e0 $a0
	ld [hl], a                                       ; $7fda: $77
	inc de                                           ; $7fdb: $13
	sbc e                                            ; $7fdc: $9b
	and b                                            ; $7fdd: $a0
	ld b, b                                          ; $7fde: $40

Jump_05d_7fdf:
	nop                                              ; $7fdf: $00
	ld b, b                                          ; $7fe0: $40
	ld [hl], l                                       ; $7fe1: $75
	cp l                                             ; $7fe2: $bd
	sbc e                                            ; $7fe3: $9b
	cp h                                             ; $7fe4: $bc
	cp b                                             ; $7fe5: $b8
	ld a, h                                          ; $7fe6: $7c
	ld a, b                                          ; $7fe7: $78
	ld a, d                                          ; $7fe8: $7a
	db $fd                                           ; $7fe9: $fd
	sbc d                                            ; $7fea: $9a
	add c                                            ; $7feb: $81
	jp Jump_05d_43c7                                 ; $7fec: $c3 $c7 $43


jr_05d_7fef:
	ld b, a                                          ; $7fef: $47
	ld a, e                                          ; $7ff0: $7b
	inc e                                            ; $7ff1: $1c
	call c, Call_05d_7afe                            ; $7ff2: $dc $fe $7a
	inc sp                                           ; $7ff5: $33
	call c, Call_05d_7b01                            ; $7ff6: $dc $01 $7b
	ldh a, [$dc]                                     ; $7ff9: $f0 $dc
	ld a, a                                          ; $7ffb: $7f
	ld a, e                                          ; $7ffc: $7b
	ldh a, [$dd]                                     ; $7ffd: $f0 $dd

Call_05d_7fff:
Jump_05d_7fff:
	add b                                            ; $7fff: $80
