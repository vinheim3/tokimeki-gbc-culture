; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

	adc d                                            ; $4000: $8a
	add l                                            ; $4001: $85
	add d                                            ; $4002: $82
	cp $7e                                           ; $4003: $fe $7e
	adc h                                            ; $4005: $8c
	ld a, h                                          ; $4006: $7c
	ld a, h                                          ; $4007: $7c
	sub a                                            ; $4008: $97
	add b                                            ; $4009: $80
	db $20, $d0                                      ; $400a: $20 $d0
	nop                                              ; $400c: $00
	ldh [rP1], a                                     ; $400d: $e0 $00
	ldh a, [rIF]                                     ; $400f: $f0 $0f
	ld a, d                                          ; $4011: $7a
	jr nz, @-$07                                     ; $4012: $20 $f7

	ld a, l                                          ; $4014: $7d
	ld hl, $f99e                                     ; $4015: $21 $9e $f9
	ld l, c                                          ; $4018: $69
	ld e, d                                          ; $4019: $5a
	db $fd                                           ; $401a: $fd
	sbc d                                            ; $401b: $9a
	ld e, h                                          ; $401c: $5c
	ret c                                            ; $401d: $d8

	ld bc, $e44f                                     ; $401e: $01 $4f $e4
	halt                                             ; $4021: $76
	db $fd                                           ; $4022: $fd
	ld a, [$e199]                                    ; $4023: $fa $99 $e1
	pop bc                                           ; $4026: $c1
	ld [$0817], a                                    ; $4027: $ea $17 $08
	db $fd                                           ; $402a: $fd
	rst FarCall                                          ; $402b: $f7
	sbc c                                            ; $402c: $99
	add b                                            ; $402d: $80
	sbc b                                            ; $402e: $98
	rst $38                                          ; $402f: $ff
	nop                                              ; $4030: $00
	add b                                            ; $4031: $80
	ld a, [hl]                                       ; $4032: $7e
	push af                                          ; $4033: $f5
	sbc l                                            ; $4034: $9d
	sbc b                                            ; $4035: $98
	nop                                              ; $4036: $00
	ld l, c                                          ; $4037: $69
	ld l, e                                          ; $4038: $6b
	or $9e                                           ; $4039: $f6 $9e
	ld a, a                                          ; $403b: $7f
	ldh a, [c]                                       ; $403c: $f2
	ld h, d                                          ; $403d: $62
	ld a, c                                          ; $403e: $79
	dec hl                                           ; $403f: $2b
	ldh a, [hDisp1_BGP]                                     ; $4040: $f0 $92
	ldh [$9f], a                                     ; $4042: $e0 $9f
	ld l, a                                          ; $4044: $6f
	sub b                                            ; $4045: $90
	ld a, a                                          ; $4046: $7f
	nop                                              ; $4047: $00
	ld [hl], b                                       ; $4048: $70
	ld [$1fa7], sp                                   ; $4049: $08 $a7 $1f
	ld [hl], c                                       ; $404c: $71
	rrca                                             ; $404d: $0f
	add e                                            ; $404e: $83
	ld [hl], d                                       ; $404f: $72
	or b                                             ; $4050: $b0
	ld [hl], d                                       ; $4051: $72
	add $9e                                          ; $4052: $c6 $9e
	pop bc                                           ; $4054: $c1
	ld a, b                                          ; $4055: $78
	db $ed                                           ; $4056: $ed
	sbc l                                            ; $4057: $9d
	db $fc                                           ; $4058: $fc
	adc [hl]                                         ; $4059: $8e
	sbc $ff                                          ; $405a: $de $ff
	ld a, [hl]                                       ; $405c: $7e
	adc $80                                          ; $405d: $ce $80

jr_03e_405f:
	sbc h                                            ; $405f: $9c
	ld a, $dc                                        ; $4060: $3e $dc
	ld a, $3e                                        ; $4062: $3e $3e
	rst $38                                          ; $4064: $ff
	or $fe                                           ; $4065: $f6 $fe
	ld a, $3e                                        ; $4067: $3e $3e
	inc a                                            ; $4069: $3c
	cp a                                             ; $406a: $bf
	db $fc                                           ; $406b: $fc
	rst $38                                          ; $406c: $ff
	db $10                                           ; $406d: $10
	and $50                                          ; $406e: $e6 $50
	rst SubAFromBC                                          ; $4070: $e7
	ret nz                                           ; $4071: $c0

	rst JumpTable                                          ; $4072: $c7
	sub b                                            ; $4073: $90
	rst JumpTable                                          ; $4074: $c7
	ret nz                                           ; $4075: $c0

	rst SubAFromHL                                          ; $4076: $d7
	nop                                              ; $4077: $00
	db $d3                                           ; $4078: $d3
	ld [$c0d3], sp                                   ; $4079: $08 $d3 $c0
	sbc e                                            ; $407c: $9b
	inc bc                                           ; $407d: $03
	sbc h                                            ; $407e: $9c
	inc bc                                           ; $407f: $03
	cp $01                                           ; $4080: $fe $01
	ld h, d                                          ; $4082: $62
	ld a, e                                          ; $4083: $7b
	ld [hl], d                                       ; $4084: $72
	ld l, l                                          ; $4085: $6d
	ld a, l                                          ; $4086: $7d
	ld a, c                                          ; $4087: $79
	ld e, a                                          ; $4088: $5f
	ldh a, [c]                                       ; $4089: $f2
	sub [hl]                                         ; $408a: $96
	pop af                                           ; $408b: $f1
	rrca                                             ; $408c: $0f
	ld hl, sp-$01                                    ; $408d: $f8 $ff
	add a                                            ; $408f: $87
	ld hl, sp-$02                                    ; $4090: $f8 $fe
	ld bc, $79f8                                     ; $4092: $01 $f8 $79
	ld a, [hl-]                                      ; $4095: $3a
	adc [hl]                                         ; $4096: $8e
	db $fd                                           ; $4097: $fd
	ld bc, $00fe                                     ; $4098: $01 $fe $00
	adc a                                            ; $409b: $8f
	rst $38                                          ; $409c: $ff
	rlca                                             ; $409d: $07
	jr jr_03e_40bb                                   ; $409e: $18 $1b

	cp l                                             ; $40a0: $bd
	ei                                               ; $40a1: $fb
	db $fc                                           ; $40a2: $fc
	pop af                                           ; $40a3: $f1
	cp $f1                                           ; $40a4: $fe $f1
	rst $38                                          ; $40a6: $ff
	ei                                               ; $40a7: $fb
	call c, $92ff                                    ; $40a8: $dc $ff $92
	call z, $d972                                    ; $40ab: $cc $72 $d9
	ld h, a                                          ; $40ae: $67
	sbc [hl]                                         ; $40af: $9e
	ldh [rIE], a                                     ; $40b0: $e0 $ff
	nop                                              ; $40b2: $00
	adc $30                                          ; $40b3: $ce $30
	nop                                              ; $40b5: $00
	db $fd                                           ; $40b6: $fd
	add b                                            ; $40b7: $80
	ld a, b                                          ; $40b8: $78
	ld c, c                                          ; $40b9: $49
	add b                                            ; $40ba: $80

jr_03e_40bb:
	rlca                                             ; $40bb: $07
	ret nz                                           ; $40bc: $c0

	jr nz, jr_03e_405f                               ; $40bd: $20 $a0

	dec hl                                           ; $40bf: $2b
	ld hl, sp-$80                                    ; $40c0: $f8 $80
	ccf                                              ; $40c2: $3f
	rlca                                             ; $40c3: $07
	jr c, jr_03e_40d7                                ; $40c4: $38 $11

	cp $60                                           ; $40c6: $fe $60
	rst $38                                          ; $40c8: $ff
	ld c, h                                          ; $40c9: $4c
	rst $38                                          ; $40ca: $ff
	ld sp, $dd0e                                     ; $40cb: $31 $0e $dd
	ldh [c], a                                       ; $40ce: $e2
	db $d3                                           ; $40cf: $d3
	inc l                                            ; $40d0: $2c
	db $fc                                           ; $40d1: $fc
	ld b, $44                                        ; $40d2: $06 $44
	cp a                                             ; $40d4: $bf
	inc l                                            ; $40d5: $2c
	rst SubAFromDE                                          ; $40d6: $df

jr_03e_40d7:
	adc c                                            ; $40d7: $89
	ld a, a                                          ; $40d8: $7f
	ld e, $7f                                        ; $40d9: $1e $7f
	ld l, d                                          ; $40db: $6a
	sub a                                            ; $40dc: $97

jr_03e_40dd:
	sub e                                            ; $40dd: $93
	sbc a                                            ; $40de: $9f

Call_03e_40df:
	ld h, e                                          ; $40df: $63
	push hl                                          ; $40e0: $e5
	ld a, [de]                                       ; $40e1: $1a
	inc b                                            ; $40e2: $04
	ei                                               ; $40e3: $fb
	ret nz                                           ; $40e4: $c0

	ld l, e                                          ; $40e5: $6b
	sbc [hl]                                         ; $40e6: $9e
	sub [hl]                                         ; $40e7: $96
	jr c, jr_03e_40dd                                ; $40e8: $38 $f3

	ld [hl-], a                                      ; $40ea: $32
	ret                                              ; $40eb: $c9


	cp $01                                           ; $40ec: $fe $01
	and c                                            ; $40ee: $a1
	rst SubAFromDE                                          ; $40ef: $df
	add c                                            ; $40f0: $81
	ld a, e                                          ; $40f1: $7b
	db $f4                                           ; $40f2: $f4
	ld a, a                                          ; $40f3: $7f
	and b                                            ; $40f4: $a0
	ld a, [hl]                                       ; $40f5: $7e
	dec b                                            ; $40f6: $05
	add d                                            ; $40f7: $82
	inc h                                            ; $40f8: $24
	ld sp, hl                                        ; $40f9: $f9
	add b                                            ; $40fa: $80
	cp a                                             ; $40fb: $bf
	nop                                              ; $40fc: $00
	cp $c0                                           ; $40fd: $fe $c0
	db $fc                                           ; $40ff: $fc
	ldh [c], a                                       ; $4100: $e2
	ld bc, $008e                                     ; $4101: $01 $8e $00
	ld l, b                                          ; $4104: $68
	db $10                                           ; $4105: $10
	adc e                                            ; $4106: $8b
	ret nz                                           ; $4107: $c0

	ld bc, $4fd0                                     ; $4108: $01 $d0 $4f
	add b                                            ; $410b: $80
	jr c, jr_03e_410e                                ; $410c: $38 $00

jr_03e_410e:
	and b                                            ; $410e: $a0
	ld b, b                                          ; $410f: $40
	sub a                                            ; $4110: $97
	nop                                              ; $4111: $00
	rra                                              ; $4112: $1f
	nop                                              ; $4113: $00
	inc bc                                           ; $4114: $03
	ld a, d                                          ; $4115: $7a
	ld a, l                                          ; $4116: $7d
	sbc [hl]                                         ; $4117: $9e
	add b                                            ; $4118: $80
	ld a, [$f09e]                                    ; $4119: $fa $9e $f0
	ld a, e                                          ; $411c: $7b
	or $7e                                           ; $411d: $f6 $7e
	ld [hl], e                                       ; $411f: $73
	sbc [hl]                                         ; $4120: $9e
	inc e                                            ; $4121: $1c
	ldh [$c0], a                                     ; $4122: $e0 $c0
	db $dd                                           ; $4124: $dd
	rst $38                                          ; $4125: $ff
	add b                                            ; $4126: $80
	add sp, -$11                                     ; $4127: $e8 $ef
	ld a, b                                          ; $4129: $78
	rst $38                                          ; $412a: $ff
	ld hl, sp-$10                                    ; $412b: $f8 $f0
	ldh a, [$e0]                                     ; $412d: $f0 $e0
	ld sp, hl                                        ; $412f: $f9
	sub c                                            ; $4130: $91
	ld h, c                                          ; $4131: $61
	pop bc                                           ; $4132: $c1
	jp $fd04                                         ; $4133: $c3 $04 $fd


	cp $cf                                           ; $4136: $fe $cf
	rst $38                                          ; $4138: $ff
	rrca                                             ; $4139: $0f
	rst FarCall                                          ; $413a: $f7
	ld d, e                                          ; $413b: $53

jr_03e_413c:
	ld h, e                                          ; $413c: $63
	rla                                              ; $413d: $17
	ld [hl+], a                                      ; $413e: $22
	and [hl]                                         ; $413f: $a6
	and b                                            ; $4140: $a0
	inc b                                            ; $4141: $04
	jr nz, jr_03e_413c                               ; $4142: $20 $f8

	ld a, a                                          ; $4144: $7f
	or $9d                                           ; $4145: $f6 $9d
	ccf                                              ; $4147: $3f
	or $dc                                           ; $4148: $f6 $dc
	rst $38                                          ; $414a: $ff
	ld a, h                                          ; $414b: $7c
	ld [hl], c                                       ; $414c: $71
	adc e                                            ; $414d: $8b
	srl l                                            ; $414e: $cb $3d
	db $eb                                           ; $4150: $eb
	inc e                                            ; $4151: $1c
	ld b, e                                          ; $4152: $43
	sbc b                                            ; $4153: $98
	ld b, c                                          ; $4154: $41

jr_03e_4155:
	sbc b                                            ; $4155: $98
	inc c                                            ; $4156: $0c
	ret c                                            ; $4157: $d8

	adc [hl]                                         ; $4158: $8e
	rst SubAFromDE                                          ; $4159: $df
	and $ff                                          ; $415a: $e6 $ff
	ld d, a                                          ; $415c: $57
	ld hl, sp+$7c                                    ; $415d: $f8 $7c
	cp a                                             ; $415f: $bf
	ld [hl], c                                       ; $4160: $71
	adc [hl]                                         ; $4161: $8e
	ld [hl], a                                       ; $4162: $77
	inc a                                            ; $4163: $3c
	sub c                                            ; $4164: $91
	ccf                                              ; $4165: $3f
	ret nz                                           ; $4166: $c0

	inc bc                                           ; $4167: $03
	db $fc                                           ; $4168: $fc
	nop                                              ; $4169: $00
	ld a, [$00f8]                                    ; $416a: $fa $f8 $00
	ccf                                              ; $416d: $3f
	jp nz, $0bf7                                     ; $416e: $c2 $f7 $0b

	db $fc                                           ; $4171: $fc
	inc bc                                           ; $4172: $03
	ld [hl], a                                       ; $4173: $77
	xor $96                                          ; $4174: $ee $96
	ld d, b                                          ; $4176: $50
	xor a                                            ; $4177: $af
	db $fc                                           ; $4178: $fc
	inc bc                                           ; $4179: $03
	db $f4                                           ; $417a: $f4
	ld bc, $00f1                                     ; $417b: $01 $f1 $00
	db $f4                                           ; $417e: $f4
	sbc $ff                                          ; $417f: $de $ff
	ld a, [hl]                                       ; $4181: $7e
	and c                                            ; $4182: $a1
	sbc c                                            ; $4183: $99
	ld sp, hl                                        ; $4184: $f9
	rlca                                             ; $4185: $07
	inc a                                            ; $4186: $3c
	jp $807f                                         ; $4187: $c3 $7f $80


	ld [hl], a                                       ; $418a: $77
	add sp, -$74                                     ; $418b: $e8 $8c
	ret nz                                           ; $418d: $c0

	ccf                                              ; $418e: $3f
	pop af                                           ; $418f: $f1

jr_03e_4190:
	rst $38                                          ; $4190: $ff
	ld sp, hl                                        ; $4191: $f9
	ccf                                              ; $4192: $3f
	rst $38                                          ; $4193: $ff
	rst $38                                          ; $4194: $ff
	jr nc, @+$01                                     ; $4195: $30 $ff

	rrca                                             ; $4197: $0f
	ldh a, [$c7]                                     ; $4198: $f0 $c7
	db $10                                           ; $419a: $10
	ret nz                                           ; $419b: $c0

	dec b                                            ; $419c: $05
	inc e                                            ; $419d: $1c
	ldh a, [$e0]                                     ; $419e: $f0 $e0
	ld a, e                                          ; $41a0: $7b
	xor b                                            ; $41a1: $a8
	rst SubAFromDE                                          ; $41a2: $df
	rst $38                                          ; $41a3: $ff
	ld a, a                                          ; $41a4: $7f
	db $ed                                           ; $41a5: $ed
	sbc e                                            ; $41a6: $9b
	ldh [$1f], a                                     ; $41a7: $e0 $1f
	adc [hl]                                         ; $41a9: $8e
	ld [hl], c                                       ; $41aa: $71
	ld a, d                                          ; $41ab: $7a
	inc b                                            ; $41ac: $04
	sbc e                                            ; $41ad: $9b
	ld a, a                                          ; $41ae: $7f
	ld [hl], b                                       ; $41af: $70
	rst $38                                          ; $41b0: $ff
	pop hl                                           ; $41b1: $e1
	sbc $ff                                          ; $41b2: $de $ff
	ld a, [hl]                                       ; $41b4: $7e
	ld e, b                                          ; $41b5: $58
	ld a, a                                          ; $41b6: $7f
	xor [hl]                                         ; $41b7: $ae
	ld [hl], d                                       ; $41b8: $72
	jr c, jr_03e_4155                                ; $41b9: $38 $9a

	rst $38                                          ; $41bb: $ff
	ld a, $ff                                        ; $41bc: $3e $ff
	ldh a, [rIE]                                     ; $41be: $f0 $ff
	ld a, d                                          ; $41c0: $7a
	and c                                            ; $41c1: $a1
	ld [hl], a                                       ; $41c2: $77
	cp $98                                           ; $41c3: $fe $98
	db $fc                                           ; $41c5: $fc
	ld d, b                                          ; $41c6: $50
	and c                                            ; $41c7: $a1
	inc bc                                           ; $41c8: $03
	add a                                            ; $41c9: $87
	nop                                              ; $41ca: $00
	rst $38                                          ; $41cb: $ff
	ld a, d                                          ; $41cc: $7a

jr_03e_41cd:
	ld a, c                                          ; $41cd: $79
	add e                                            ; $41ce: $83
	ld hl, sp+$03                                    ; $41cf: $f8 $03
	pop hl                                           ; $41d1: $e1
	add a                                            ; $41d2: $87
	ld c, $7d                                        ; $41d3: $0e $7d
	jr nc, @+$01                                     ; $41d5: $30 $ff

	ldh [$e2], a                                     ; $41d7: $e0 $e2
	dec e                                            ; $41d9: $1d
	inc bc                                           ; $41da: $03
	add $24                                          ; $41db: $c6 $24
	jr jr_03e_4190                                   ; $41dd: $18 $b1

	ld h, b                                          ; $41df: $60
	jp $078c                                         ; $41e0: $c3 $8c $07


	jr c, @+$51                                      ; $41e3: $38 $4f

	or b                                             ; $41e5: $b0
	dec c                                            ; $41e6: $0d
	ldh a, [c]                                       ; $41e7: $f2
	rrca                                             ; $41e8: $0f
	ldh a, [$1f]                                     ; $41e9: $f0 $1f
	ld a, c                                          ; $41eb: $79
	cp [hl]                                          ; $41ec: $be
	ld d, d                                          ; $41ed: $52
	jr nc, @+$4d                                     ; $41ee: $30 $4b

	cp $7f                                           ; $41f0: $fe $7f
	jp $fe7f                                         ; $41f2: $c3 $7f $fe


	ld a, l                                          ; $41f5: $7d
	ld l, e                                          ; $41f6: $6b
	ld e, a                                          ; $41f7: $5f
	ldh a, [$fd]                                     ; $41f8: $f0 $fd
	sbc [hl]                                         ; $41fa: $9e
	ld a, b                                          ; $41fb: $78
	ld a, e                                          ; $41fc: $7b
	db $ec                                           ; $41fd: $ec
	ld a, a                                          ; $41fe: $7f
	ccf                                              ; $41ff: $3f
	ld e, a                                          ; $4200: $5f
	ldh a, [rBCPD]                                   ; $4201: $f0 $69
	ld d, b                                          ; $4203: $50
	ld a, d                                          ; $4204: $7a
	sub d                                            ; $4205: $92
	ld a, [hl]                                       ; $4206: $7e
	ld e, d                                          ; $4207: $5a
	pop hl                                           ; $4208: $e1
	add b                                            ; $4209: $80
	ldh [rAUD4LEN], a                                ; $420a: $e0 $20
	or a                                             ; $420c: $b7
	ld l, b                                          ; $420d: $68
	cp $31                                           ; $420e: $fe $31
	ret z                                            ; $4210: $c8

	nop                                              ; $4211: $00
	and b                                            ; $4212: $a0
	jr nz, jr_03e_41cd                               ; $4213: $20 $b8

	cp b                                             ; $4215: $b8
	and a                                            ; $4216: $a7
	ldh [$61], a                                     ; $4217: $e0 $61
	ldh a, [rAUD4LEN]                                ; $4219: $f0 $20
	inc b                                            ; $421b: $04
	ldh [rLCDC], a                                   ; $421c: $e0 $40
	ld h, c                                          ; $421e: $61
	pop hl                                           ; $421f: $e1
	add c                                            ; $4220: $81

jr_03e_4221:
	pop bc                                           ; $4221: $c1
	rst JumpTable                                          ; $4222: $c7
	ld b, a                                          ; $4223: $47
	ld h, [hl]                                       ; $4224: $66
	rlca                                             ; $4225: $07
	xor d                                            ; $4226: $aa
	ld b, a                                          ; $4227: $47
	cpl                                              ; $4228: $2f
	add b                                            ; $4229: $80
	call nz, $18f7                                   ; $422a: $c4 $f7 $18
	rst $38                                          ; $422d: $ff
	jr jr_03e_4221                                   ; $422e: $18 $f1

	and h                                            ; $4230: $a4
	pop af                                           ; $4231: $f1
	ld [$e7ff], a                                    ; $4232: $ea $ff $e7
	rst $38                                          ; $4235: $ff
	add a                                            ; $4236: $87
	db $fd                                           ; $4237: $fd
	rst SubAFromDE                                          ; $4238: $df
	rst AddAOntoHL                                          ; $4239: $ef
	jr @-$06                                         ; $423a: $18 $f8

	ld [bc], a                                       ; $423c: $02
	ld hl, sp+$00                                    ; $423d: $f8 $00
	ld a, [$9607]                                    ; $423f: $fa $07 $96
	ld a, a                                          ; $4242: $7f
	rst SubAFromBC                                          ; $4243: $e7
	rst $38                                          ; $4244: $ff
	rst $38                                          ; $4245: $ff
	rst FarCall                                          ; $4246: $f7
	adc e                                            ; $4247: $8b
	jp z, $8380                                      ; $4248: $ca $80 $83

	ld h, d                                          ; $424b: $62
	adc e                                            ; $424c: $8b
	rlca                                             ; $424d: $07
	rra                                              ; $424e: $1f
	rst SubAFromDE                                          ; $424f: $df
	dec [hl]                                         ; $4250: $35
	rst $38                                          ; $4251: $ff
	ccf                                              ; $4252: $3f
	ldh a, [$a2]                                     ; $4253: $f0 $a2
	xor l                                            ; $4255: $ad
	add e                                            ; $4256: $83
	rrca                                             ; $4257: $0f
	or a                                             ; $4258: $b7
	ld l, c                                          ; $4259: $69
	ldh [$3f], a                                     ; $425a: $e0 $3f
	ld b, h                                          ; $425c: $44
	ld e, a                                          ; $425d: $5f
	rrca                                             ; $425e: $0f
	ld e, $a2                                        ; $425f: $1e $a2
	rst SubAFromDE                                          ; $4261: $df
	cp [hl]                                          ; $4262: $be
	ld h, a                                          ; $4263: $67
	rst AddAOntoHL                                          ; $4264: $ef
	db $fc                                           ; $4265: $fc
	rst JumpTable                                          ; $4266: $c7
	ld hl, sp+$03                                    ; $4267: $f8 $03
	add b                                            ; $4269: $80
	ret nc                                           ; $426a: $d0

	push bc                                          ; $426b: $c5
	ld [bc], a                                       ; $426c: $02
	ld e, e                                          ; $426d: $5b
	rst $38                                          ; $426e: $ff
	pop af                                           ; $426f: $f1
	db $e4                                           ; $4270: $e4
	ei                                               ; $4271: $fb
	ldh a, [$bf]                                     ; $4272: $f0 $bf
	ld b, h                                          ; $4274: $44
	adc a                                            ; $4275: $8f
	ld [hl], h                                       ; $4276: $74
	xor l                                            ; $4277: $ad
	ld a, a                                          ; $4278: $7f
	rst $38                                          ; $4279: $ff
	cp a                                             ; $427a: $bf
	rst $38                                          ; $427b: $ff
	ccf                                              ; $427c: $3f
	di                                               ; $427d: $f3
	ccf                                              ; $427e: $3f
	cp $5f                                           ; $427f: $fe $5f
	rst $38                                          ; $4281: $ff
	ld a, a                                          ; $4282: $7f
	or $3b                                           ; $4283: $f6 $3b
	rst SubAFromDE                                          ; $4285: $df
	ldh [$7f], a                                     ; $4286: $e0 $7f
	ret nz                                           ; $4288: $c0

	sbc d                                            ; $4289: $9a
	ld l, h                                          ; $428a: $6c
	sub e                                            ; $428b: $93
	ret nz                                           ; $428c: $c0

	cp a                                             ; $428d: $bf
	ei                                               ; $428e: $fb
	ld a, d                                          ; $428f: $7a
	ldh [hDisp0_OBP1], a                                     ; $4290: $e0 $87
	add h                                            ; $4292: $84
	ei                                               ; $4293: $fb
	ld b, c                                          ; $4294: $41
	rst AddAOntoHL                                          ; $4295: $ef
	rrca                                             ; $4296: $0f
	inc a                                            ; $4297: $3c
	sub b                                            ; $4298: $90
	ld h, c                                          ; $4299: $61
	rst JumpTable                                          ; $429a: $c7
	inc bc                                           ; $429b: $03
	inc c                                            ; $429c: $0c
	rst SubAFromDE                                          ; $429d: $df
	rlca                                             ; $429e: $07
	db $fc                                           ; $429f: $fc
	inc l                                            ; $42a0: $2c
	ld hl, sp+$41                                    ; $42a1: $f8 $41
	jp $0fe7                                         ; $42a3: $c3 $e7 $0f


	cp b                                             ; $42a6: $b8
	ld a, a                                          ; $42a7: $7f
	ldh [rIE], a                                     ; $42a8: $e0 $ff
	halt                                             ; $42aa: $76
	adc l                                            ; $42ab: $8d
	sbc d                                            ; $42ac: $9a
	inc a                                            ; $42ad: $3c
	rra                                              ; $42ae: $1f
	ldh a, [$7f]                                     ; $42af: $f0 $7f
	ret nz                                           ; $42b1: $c0

	ld c, d                                          ; $42b2: $4a
	ei                                               ; $42b3: $fb
	ld a, d                                          ; $42b4: $7a
	cp [hl]                                          ; $42b5: $be
	ld h, e                                          ; $42b6: $63
	db $f4                                           ; $42b7: $f4
	sub c                                            ; $42b8: $91
	cpl                                              ; $42b9: $2f
	ret nc                                           ; $42ba: $d0

	ei                                               ; $42bb: $fb
	inc b                                            ; $42bc: $04
	ld e, a                                          ; $42bd: $5f
	and b                                            ; $42be: $a0
	add e                                            ; $42bf: $83
	ld a, h                                          ; $42c0: $7c
	dec c                                            ; $42c1: $0d
	ldh a, [c]                                       ; $42c2: $f2
	rlca                                             ; $42c3: $07
	ld hl, sp+$0e                                    ; $42c4: $f8 $0e
	pop af                                           ; $42c6: $f1
	ld l, h                                          ; $42c7: $6c
	jp nz, $fe67                                     ; $42c8: $c2 $67 $fe

	ld l, [hl]                                       ; $42cb: $6e
	ld c, h                                          ; $42cc: $4c
	inc bc                                           ; $42cd: $03
	cp $53                                           ; $42ce: $fe $53
	cp $7d                                           ; $42d0: $fe $7d
	ld l, b                                          ; $42d2: $68
	ld c, a                                          ; $42d3: $4f
	ldh a, [rPCM12]                                  ; $42d4: $f0 $76
	cp b                                             ; $42d6: $b8
	ld a, [hl]                                       ; $42d7: $7e
	cp d                                             ; $42d8: $ba
	ld a, a                                          ; $42d9: $7f
	cp $7e                                           ; $42da: $fe $7e
	and b                                            ; $42dc: $a0
	ld a, a                                          ; $42dd: $7f
	cp $77                                           ; $42de: $fe $77
	adc c                                            ; $42e0: $89
	rst FarCall                                          ; $42e1: $f7
	sbc [hl]                                         ; $42e2: $9e
	inc hl                                           ; $42e3: $23
	ld [hl], d                                       ; $42e4: $72
	ld d, [hl]                                       ; $42e5: $56
	add b                                            ; $42e6: $80
	add sp, -$10                                     ; $42e7: $e8 $f0
	ld sp, hl                                        ; $42e9: $f9
	ldh [$db], a                                     ; $42ea: $e0 $db
	ldh a, [$9f]                                     ; $42ec: $f0 $9f
	ldh a, [rIE]                                     ; $42ee: $f0 $ff
	pop hl                                           ; $42f0: $e1
	ld sp, hl                                        ; $42f1: $f9
	rst FarCall                                          ; $42f2: $f7
	rst $38                                          ; $42f3: $ff
	rst $38                                          ; $42f4: $ff
	sbc a                                            ; $42f5: $9f
	cp $02                                           ; $42f6: $fe $02
	nop                                              ; $42f8: $00
	ret nz                                           ; $42f9: $c0

	ld [bc], a                                       ; $42fa: $02
	add b                                            ; $42fb: $80
	ld b, b                                          ; $42fc: $40
	ld bc, $9ac7                                     ; $42fd: $01 $c7 $9a
	rst SubAFromBC                                          ; $4300: $e7
	ld e, $e0                                        ; $4301: $1e $e0
	nop                                              ; $4303: $00
	ldh a, [rAUD4LEN]                                ; $4304: $f0 $20
	add b                                            ; $4306: $80
	ldh a, [hDisp0_SCY]                                     ; $4307: $f0 $83
	inc e                                            ; $4309: $1c
	sub b                                            ; $430a: $90
	rrca                                             ; $430b: $0f
	add c                                            ; $430c: $81
	inc bc                                           ; $430d: $03
	jp $0103                                         ; $430e: $c3 $03 $01


	ld e, c                                          ; $4311: $59
	ld d, a                                          ; $4312: $57
	ld sp, $83c7                                     ; $4313: $31 $c7 $83
	sbc e                                            ; $4316: $9b
	add a                                            ; $4317: $87
	db $dd                                           ; $4318: $dd
	dec hl                                           ; $4319: $2b
	ld a, c                                          ; $431a: $79
	xor $8b                                          ; $431b: $ee $8b
	cp $bf                                           ; $431d: $fe $bf
	call z, $f09f                                    ; $431f: $cc $9f $f0
	cp a                                             ; $4322: $bf
	db $e4                                           ; $4323: $e4
	ld sp, hl                                        ; $4324: $f9
	sbc $7f                                          ; $4325: $de $7f
	ld e, a                                          ; $4327: $5f
	add b                                            ; $4328: $80
	cp l                                             ; $4329: $bd
	ldh a, [c]                                       ; $432a: $f2
	ld a, [hl]                                       ; $432b: $7e
	rst JumpTable                                          ; $432c: $c7
	ldh [$e9], a                                     ; $432d: $e0 $e9
	pop hl                                           ; $432f: $e1
	ld h, b                                          ; $4330: $60
	rst SubAFromDE                                          ; $4331: $df
	ld a, d                                          ; $4332: $7a
	ld c, a                                          ; $4333: $4f
	rst $38                                          ; $4334: $ff
	ei                                               ; $4335: $fb
	rra                                              ; $4336: $1f
	ld bc, $90ff                                     ; $4337: $01 $ff $90
	ld a, a                                          ; $433a: $7f
	db $e3                                           ; $433b: $e3
	ld a, a                                          ; $433c: $7f
	xor e                                            ; $433d: $ab
	push af                                          ; $433e: $f5
	xor a                                            ; $433f: $af
	ld a, h                                          ; $4340: $7c
	rst $38                                          ; $4341: $ff
	ld a, b                                          ; $4342: $78
	rst SubAFromDE                                          ; $4343: $df
	pop af                                           ; $4344: $f1
	rst $38                                          ; $4345: $ff
	cp $bf                                           ; $4346: $fe $bf
	sbc l                                            ; $4348: $9d
	ld hl, sp-$3a                                    ; $4349: $f8 $c6
	ld a, d                                          ; $434b: $7a
	ld a, [$c77e]                                    ; $434c: $fa $7e $c7
	adc l                                            ; $434f: $8d
	cp $30                                           ; $4350: $fe $30
	ret nc                                           ; $4352: $d0

	pop bc                                           ; $4353: $c1
	ld b, e                                          ; $4354: $43
	add a                                            ; $4355: $87
	cpl                                              ; $4356: $2f
	ld e, $7f                                        ; $4357: $1e $7f
	ld a, b                                          ; $4359: $78
	nop                                              ; $435a: $00
	pop af                                           ; $435b: $f1
	ld [hl], l                                       ; $435c: $75
	add e                                            ; $435d: $83
	add a                                            ; $435e: $87
	rrca                                             ; $435f: $0f
	inc a                                            ; $4360: $3c
	ccf                                              ; $4361: $3f
	ld l, [hl]                                       ; $4362: $6e
	ldh [c], a                                       ; $4363: $e2
	ld a, a                                          ; $4364: $7f
	cp $3e                                           ; $4365: $fe $3e
	ldh [c], a                                       ; $4367: $e2
	daa                                              ; $4368: $27
	cp $7e                                           ; $4369: $fe $7e
	jp z, $1f9b                                      ; $436b: $ca $9b $1f

	ldh [$09], a                                     ; $436e: $e0 $09
	or $6f                                           ; $4370: $f6 $6f
	db $f4                                           ; $4372: $f4
	sbc [hl]                                         ; $4373: $9e
	ld [bc], a                                       ; $4374: $02
	ld a, c                                          ; $4375: $79
	cp l                                             ; $4376: $bd
	adc c                                            ; $4377: $89
	reti                                             ; $4378: $d9


	ld h, $66                                        ; $4379: $26 $66
	sbc c                                            ; $437b: $99
	cp b                                             ; $437c: $b8
	ld b, a                                          ; $437d: $47
	ld bc, $07fe                                     ; $437e: $01 $fe $07
	ld hl, sp+$07                                    ; $4381: $f8 $07
	ld hl, sp+$4f                                    ; $4383: $f8 $4f
	or b                                             ; $4385: $b0
	cp a                                             ; $4386: $bf
	ld b, b                                          ; $4387: $40
	add c                                            ; $4388: $81
	ld a, [hl]                                       ; $4389: $7e
	or a                                             ; $438a: $b7
	ld c, b                                          ; $438b: $48
	sbc a                                            ; $438c: $9f
	ld h, b                                          ; $438d: $60
	ld l, a                                          ; $438e: $6f
	db $d3                                           ; $438f: $d3
	ld a, a                                          ; $4390: $7f
	ldh a, [c]                                       ; $4391: $f2
	ld d, [hl]                                       ; $4392: $56

Jump_03e_4393:
	call nz, $fe9d                                   ; $4393: $c4 $9d $fe
	ld bc, $b54f                                     ; $4396: $01 $4f $b5
	sbc l                                            ; $4399: $9d
	ld [hl], a                                       ; $439a: $77
	adc b                                            ; $439b: $88
	ld d, a                                          ; $439c: $57
	ldh a, [c]                                       ; $439d: $f2
	ld a, [hl]                                       ; $439e: $7e
	add b                                            ; $439f: $80
	sbc e                                            ; $43a0: $9b
	or b                                             ; $43a1: $b0
	ld c, a                                          ; $43a2: $4f
	pop af                                           ; $43a3: $f1
	ld c, $4e                                        ; $43a4: $0e $4e
	adc b                                            ; $43a6: $88
	ld a, a                                          ; $43a7: $7f
	ret nz                                           ; $43a8: $c0

	ld [hl], a                                       ; $43a9: $77
	cp $03                                           ; $43aa: $fe $03
	ld l, l                                          ; $43ac: $6d
	ld a, e                                          ; $43ad: $7b
	cp $94                                           ; $43ae: $fe $94
	db $e3                                           ; $43b0: $e3
	db $fc                                           ; $43b1: $fc
	sbc $e5                                          ; $43b2: $de $e5
	db $fc                                           ; $43b4: $fc
	rst FarCall                                          ; $43b5: $f7
	db $fd                                           ; $43b6: $fd
	sbc a                                            ; $43b7: $9f
	ld a, [$fa9f]                                    ; $43b8: $fa $9f $fa
	call c, $94ff                                    ; $43bb: $dc $ff $94
	daa                                              ; $43be: $27
	ld sp, hl                                        ; $43bf: $f9
	ld a, e                                          ; $43c0: $7b
	db $fd                                           ; $43c1: $fd
	ld [hl], e                                       ; $43c2: $73
	rst $38                                          ; $43c3: $ff
	cp b                                             ; $43c4: $b8
	rst $38                                          ; $43c5: $ff
	inc e                                            ; $43c6: $1c
	rst $38                                          ; $43c7: $ff
	rra                                              ; $43c8: $1f
	ld a, b                                          ; $43c9: $78
	xor d                                            ; $43ca: $aa
	ld a, a                                          ; $43cb: $7f
	db $fc                                           ; $43cc: $fc
	sub h                                            ; $43cd: $94
	cp a                                             ; $43ce: $bf
	rlca                                             ; $43cf: $07
	add a                                            ; $43d0: $87
	cp b                                             ; $43d1: $b8
	rlca                                             ; $43d2: $07
	rst $38                                          ; $43d3: $ff
	daa                                              ; $43d4: $27
	rst $38                                          ; $43d5: $ff
	ld a, h                                          ; $43d6: $7c
	rst $38                                          ; $43d7: $ff
	ld hl, sp+$79                                    ; $43d8: $f8 $79
	sub $9a                                          ; $43da: $d6 $9a
	db $f4                                           ; $43dc: $f4
	ld hl, sp+$7f                                    ; $43dd: $f8 $7f
	add b                                            ; $43df: $80
	add b                                            ; $43e0: $80
	ld a, e                                          ; $43e1: $7b
	ld b, $7f                                        ; $43e2: $06 $7f
	cp $98                                           ; $43e4: $fe $98
	add c                                            ; $43e6: $81
	ld hl, sp+$1f                                    ; $43e7: $f8 $1f
	ldh [rPCM12], a                                  ; $43e9: $e0 $76
	ld [$78f1], sp                                   ; $43eb: $08 $f1 $78
	ld d, d                                          ; $43ee: $52
	sub h                                            ; $43ef: $94
	ld c, $f0                                        ; $43f0: $0e $f0
	daa                                              ; $43f2: $27
	ret nz                                           ; $43f3: $c0

	inc a                                            ; $43f4: $3c
	ld bc, $07e7                                     ; $43f5: $01 $e7 $07
	sbc a                                            ; $43f8: $9f
	ccf                                              ; $43f9: $3f
	ld a, b                                          ; $43fa: $78
	ld a, b                                          ; $43fb: $78
	sub [hl]                                         ; $43fc: $96
	sub a                                            ; $43fd: $97
	ld bc, $9703                                     ; $43fe: $01 $03 $97
	rrca                                             ; $4401: $0f
	ld e, h                                          ; $4402: $5c
	ccf                                              ; $4403: $3f
	ldh a, [rIE]                                     ; $4404: $f0 $ff
	ld h, [hl]                                       ; $4406: $66
	ld [$8468], a                                    ; $4407: $ea $68 $84
	inc bc                                           ; $440a: $03
	cp $27                                           ; $440b: $fe $27
	cp $7d                                           ; $440d: $fe $7d
	xor b                                            ; $440f: $a8
	ld c, a                                          ; $4410: $4f
	ldh a, [$7f]                                     ; $4411: $f0 $7f
	ld a, [hl+]                                      ; $4413: $2a
	sbc e                                            ; $4414: $9b
	adc e                                            ; $4415: $8b
	ld [hl], h                                       ; $4416: $74
	ld bc, $76fe                                     ; $4417: $01 $fe $76
	ret nz                                           ; $441a: $c0

	ld a, a                                          ; $441b: $7f
	rra                                              ; $441c: $1f
	ld [hl], a                                       ; $441d: $77
	ldh a, [rPCM12]                                  ; $441e: $f0 $76
	ldh [c], a                                       ; $4420: $e2
	ld a, a                                          ; $4421: $7f
	cp $9b                                           ; $4422: $fe $9b
	ld [hl], b                                       ; $4424: $70
	adc a                                            ; $4425: $8f
	ld b, b                                          ; $4426: $40
	cp a                                             ; $4427: $bf
	ld a, b                                          ; $4428: $78
	ld b, h                                          ; $4429: $44
	sbc l                                            ; $442a: $9d
	ldh [rTAC], a                                    ; $442b: $e0 $07
	ld a, e                                          ; $442d: $7b
	ld h, b                                          ; $442e: $60
	ld a, a                                          ; $442f: $7f
	ld hl, sp-$67                                    ; $4430: $f8 $99
	add b                                            ; $4432: $80
	ld a, a                                          ; $4433: $7f
	ld b, $f9                                        ; $4434: $06 $f9
	ld c, a                                          ; $4436: $4f
	or b                                             ; $4437: $b0
	ld l, a                                          ; $4438: $6f
	rst GetHLinHL                                          ; $4439: $cf
	sub l                                            ; $443a: $95
	rst SubAFromDE                                          ; $443b: $df
	jr nz, @-$0b                                     ; $443c: $20 $f3

	inc c                                            ; $443e: $0c
	ret nz                                           ; $443f: $c0

	ccf                                              ; $4440: $3f
	ld h, b                                          ; $4441: $60
	sbc a                                            ; $4442: $9f
	sbc $21                                          ; $4443: $de $21
	ld h, $c0                                        ; $4445: $26 $c0
	rla                                              ; $4447: $17
	cp $7e                                           ; $4448: $fe $7e
	ld h, l                                          ; $444a: $65
	ld l, a                                          ; $444b: $6f

Call_03e_444c:
	ld hl, sp-$73                                    ; $444c: $f8 $8d
	db $fc                                           ; $444e: $fc
	inc bc                                           ; $444f: $03
	ldh a, [c]                                       ; $4450: $f2
	dec c                                            ; $4451: $0d
	ld hl, sp+$07                                    ; $4452: $f8 $07
	ld h, b                                          ; $4454: $60
	sbc a                                            ; $4455: $9f
	inc c                                            ; $4456: $0c
	di                                               ; $4457: $f3
	xor $11                                          ; $4458: $ee $11
	call Call_03e_7232                               ; $445a: $cd $32 $72
	adc l                                            ; $445d: $8d
	ld e, b                                          ; $445e: $58
	and a                                            ; $445f: $a7
	ld h, a                                          ; $4460: $67
	db $dd                                           ; $4461: $dd
	ld d, b                                          ; $4462: $50
	nop                                              ; $4463: $00
	sbc [hl]                                         ; $4464: $9e
	dec [hl]                                         ; $4465: $35
	sbc $33                                          ; $4466: $de $33
	sbc c                                            ; $4468: $99
	ld b, [hl]                                       ; $4469: $46
	ld h, [hl]                                       ; $446a: $66
	ld h, [hl]                                       ; $446b: $66
	ld h, a                                          ; $446c: $67
	ld [hl], a                                       ; $446d: $77
	ld [hl], a                                       ; $446e: $77
	db $dd                                           ; $446f: $dd
	inc sp                                           ; $4470: $33
	sbc [hl]                                         ; $4471: $9e
	inc [hl]                                         ; $4472: $34
	ld a, e                                          ; $4473: $7b
	or $9d                                           ; $4474: $f6 $9d
	halt                                             ; $4476: $76
	ld h, [hl]                                       ; $4477: $66
	db $dd                                           ; $4478: $dd
	inc sp                                           ; $4479: $33
	sbc [hl]                                         ; $447a: $9e
	ld b, a                                          ; $447b: $47
	call c, $dd77                                    ; $447c: $dc $77 $dd
	ld b, h                                          ; $447f: $44
	ld a, e                                          ; $4480: $7b
	push hl                                          ; $4481: $e5
	sbc $77                                          ; $4482: $de $77
	sbc l                                            ; $4484: $9d
	ld h, [hl]                                       ; $4485: $66
	ld h, h                                          ; $4486: $64
	db $db                                           ; $4487: $db
	ld h, [hl]                                       ; $4488: $66
	sub a                                            ; $4489: $97
	ld h, h                                          ; $448a: $64
	ld b, h                                          ; $448b: $44
	ld h, [hl]                                       ; $448c: $66
	ld h, h                                          ; $448d: $64
	ld h, e                                          ; $448e: $63
	ld [hl], $33                                     ; $448f: $36 $33
	ld b, h                                          ; $4491: $44
	db $dd                                           ; $4492: $dd
	ld h, [hl]                                       ; $4493: $66
	ld a, a                                          ; $4494: $7f
	ld a, [$cc6b]                                    ; $4495: $fa $6b $cc
	ld a, a                                          ; $4498: $7f
	or $9b                                           ; $4499: $f6 $9b
	ld d, e                                          ; $449b: $53
	ld d, l                                          ; $449c: $55
	ld d, l                                          ; $449d: $55

Call_03e_449e:
	ld d, e                                          ; $449e: $53
	ld l, a                                          ; $449f: $6f
	db $ec                                           ; $44a0: $ec
	sbc $55                                          ; $44a1: $de $55
	ld [hl], e                                       ; $44a3: $73
	rst FarCall                                          ; $44a4: $f7
	ld a, a                                          ; $44a5: $7f
	or $9d                                           ; $44a6: $f6 $9d
	dec [hl]                                         ; $44a8: $35
	ld d, l                                          ; $44a9: $55
	ld a, e                                          ; $44aa: $7b
	and a                                            ; $44ab: $a7
	ld [hl], e                                       ; $44ac: $73
	or $77                                           ; $44ad: $f6 $77
	db $dd                                           ; $44af: $dd
	call c, $fe66                                    ; $44b0: $dc $66 $fe
	ld b, $95                                        ; $44b3: $06 $95
	nop                                              ; $44b5: $00
	rst $38                                          ; $44b6: $ff
	nop                                              ; $44b7: $00
	rst $38                                          ; $44b8: $ff
	add h                                            ; $44b9: $84
	ld a, e                                          ; $44ba: $7b
	inc sp                                           ; $44bb: $33
	call z, $33cc                                    ; $44bc: $cc $cc $33
	ld a, e                                          ; $44bf: $7b
	rst FarCall                                          ; $44c0: $f7
	ld a, a                                          ; $44c1: $7f
	cp $73                                           ; $44c2: $fe $73
	ei                                               ; $44c4: $fb
	ld b, a                                          ; $44c5: $47
	ldh a, [$9d]                                     ; $44c6: $f0 $9d
	ld [$4ff7], sp                                   ; $44c8: $08 $f7 $4f
	ldh a, [$9d]                                     ; $44cb: $f0 $9d
	ld c, b                                          ; $44cd: $48
	or a                                             ; $44ce: $b7
	ld c, a                                          ; $44cf: $4f
	ldh a, [$9d]                                     ; $44d0: $f0 $9d
	ld b, h                                          ; $44d2: $44
	cp e                                             ; $44d3: $bb
	ld e, e                                          ; $44d4: $5b
	ldh a, [$8b]                                     ; $44d5: $f0 $8b
	ld a, a                                          ; $44d7: $7f
	inc c                                            ; $44d8: $0c
	ld [hl], e                                       ; $44d9: $73
	inc sp                                           ; $44da: $33
	ld c, h                                          ; $44db: $4c
	inc c                                            ; $44dc: $0c
	ld [hl], e                                       ; $44dd: $73
	ld d, e                                          ; $44de: $53
	inc l                                            ; $44df: $2c
	dec l                                            ; $44e0: $2d
	ld d, d                                          ; $44e1: $52
	ld d, [hl]                                       ; $44e2: $56
	add hl, hl                                       ; $44e3: $29
	ld a, a                                          ; $44e4: $7f
	nop                                              ; $44e5: $00
	add sp, -$01                                     ; $44e6: $e8 $ff
	ldh a, [c]                                       ; $44e8: $f2
	rst $38                                          ; $44e9: $ff
	db $fd                                           ; $44ea: $fd
	sub $ff                                          ; $44eb: $d6 $ff
	ld a, a                                          ; $44ed: $7f
	db $dd                                           ; $44ee: $dd
	sbc d                                            ; $44ef: $9a
	sub b                                            ; $44f0: $90
	rst $38                                          ; $44f1: $ff
	ld l, d                                          ; $44f2: $6a
	rst $38                                          ; $44f3: $ff
	sub l                                            ; $44f4: $95
	ld e, e                                          ; $44f5: $5b
	ldh a, [$7f]                                     ; $44f6: $f0 $7f
	cp $9c                                           ; $44f8: $fe $9c
	adc d                                            ; $44fa: $8a
	rst $38                                          ; $44fb: $ff
	ld d, l                                          ; $44fc: $55
	ld e, e                                          ; $44fd: $5b
	ldh a, [$9a]                                     ; $44fe: $f0 $9a
	sub c                                            ; $4500: $91
	rst $38                                          ; $4501: $ff
	ld l, e                                          ; $4502: $6b
	rst $38                                          ; $4503: $ff
	sbc a                                            ; $4504: $9f
	ret c                                            ; $4505: $d8

	rst $38                                          ; $4506: $ff
	sbc h                                            ; $4507: $9c
	xor a                                            ; $4508: $af
	rst $38                                          ; $4509: $ff
	ld a, a                                          ; $450a: $7f
	call nz, $8fff                                   ; $450b: $c4 $ff $8f
	nop                                              ; $450e: $00
	cp $30                                           ; $450f: $fe $30
	adc $cc                                          ; $4511: $ce $cc
	ld [hl-], a                                      ; $4513: $32
	ld [hl-], a                                      ; $4514: $32
	call z, $32cc                                    ; $4515: $cc $cc $32
	cp d                                             ; $4518: $ba
	ld b, h                                          ; $4519: $44
	ld d, [hl]                                       ; $451a: $56
	xor b                                            ; $451b: $a8
	cp $00                                           ; $451c: $fe $00
	inc bc                                           ; $451e: $03
	jr nc, jr_03e_4524                               ; $451f: $30 $03

	ldh a, [$03]                                     ; $4521: $f0 $03
	db $10                                           ; $4523: $10

jr_03e_4524:
	ld d, e                                          ; $4524: $53
	db $10                                           ; $4525: $10
	rst SubAFromDE                                          ; $4526: $df
	rst $38                                          ; $4527: $ff
	sbc [hl]                                         ; $4528: $9e
	ld bc, $fe6b                                     ; $4529: $01 $6b $fe
	sbc c                                            ; $452c: $99
	add hl, hl                                       ; $452d: $29
	rst SubAFromHL                                          ; $452e: $d7
	sub c                                            ; $452f: $91
	ld l, a                                          ; $4530: $6f
	ld l, l                                          ; $4531: $6d
	sub e                                            ; $4532: $93
	ld l, a                                          ; $4533: $6f
	sbc $77                                          ; $4534: $de $77
	cp $99                                           ; $4536: $fe $99
	inc h                                            ; $4538: $24
	db $db                                           ; $4539: $db
	ld [de], a                                       ; $453a: $12
	db $ed                                           ; $453b: $ed
	ld c, l                                          ; $453c: $4d
	or d                                             ; $453d: $b2
	ld e, a                                          ; $453e: $5f
	ldh [$99], a                                     ; $453f: $e0 $99
	ld c, c                                          ; $4541: $49
	or a                                             ; $4542: $b7
	or c                                             ; $4543: $b1
	ld c, a                                          ; $4544: $4f
	ld c, l                                          ; $4545: $4d
	or e                                             ; $4546: $b3
	ld d, a                                          ; $4547: $57
	ldh [$9c], a                                     ; $4548: $e0 $9c
	inc de                                           ; $454a: $13
	db $ec                                           ; $454b: $ec
	ld c, h                                          ; $454c: $4c
	ld a, e                                          ; $454d: $7b
	ldh a, [$67]                                     ; $454e: $f0 $67
	ldh [$97], a                                     ; $4550: $e0 $97
	adc c                                            ; $4552: $89
	ld [hl], a                                       ; $4553: $77
	dec [hl]                                         ; $4554: $35
	set 1, c                                         ; $4555: $cb $c9
	scf                                              ; $4557: $37
	ld a, a                                          ; $4558: $7f
	nop                                              ; $4559: $00
	ld c, a                                          ; $455a: $4f
	cp $9d                                           ; $455b: $fe $9d
	ldh [rIE], a                                     ; $455d: $e0 $ff
	ld c, a                                          ; $455f: $4f
	cp $67                                           ; $4560: $fe $67
	jp nz, $fe7f                                     ; $4562: $c2 $7f $fe

	sbc c                                            ; $4565: $99
	ld [bc], a                                       ; $4566: $02
	db $fd                                           ; $4567: $fd
	dec b                                            ; $4568: $05
	ld a, [$5ca3]                                    ; $4569: $fa $a3 $5c
	ld [hl], a                                       ; $456c: $77
	or $7f                                           ; $456d: $f6 $7f
	sbc b                                            ; $456f: $98
	ld a, a                                          ; $4570: $7f
	cp b                                             ; $4571: $b8
	sbc b                                            ; $4572: $98
	sub e                                            ; $4573: $93
	ld l, h                                          ; $4574: $6c
	ld l, l                                          ; $4575: $6d
	sub d                                            ; $4576: $92
	ccf                                              ; $4577: $3f
	ret nz                                           ; $4578: $c0

	rst $38                                          ; $4579: $ff
	ld [hl], e                                       ; $457a: $73
	nop                                              ; $457b: $00
	ld a, a                                          ; $457c: $7f
	cp $99                                           ; $457d: $fe $99
	sbc c                                            ; $457f: $99
	ld h, [hl]                                       ; $4580: $66
	ld [hl], d                                       ; $4581: $72
	adc l                                            ; $4582: $8d
	xor a                                            ; $4583: $af
	ld d, b                                          ; $4584: $50
	ld [hl], a                                       ; $4585: $77
	push af                                          ; $4586: $f5
	ld h, a                                          ; $4587: $67
	jp nc, $8095                                     ; $4588: $d2 $95 $80

	ld a, a                                          ; $458b: $7f
	ld h, b                                          ; $458c: $60
	sbc a                                            ; $458d: $9f
	or b                                             ; $458e: $b0
	ld c, a                                          ; $458f: $4f
	db $ec                                           ; $4590: $ec
	inc de                                           ; $4591: $13
	rlca                                             ; $4592: $07
	rst $38                                          ; $4593: $ff
	ld c, a                                          ; $4594: $4f
	cp $7e                                           ; $4595: $fe $7e
	adc $4f                                          ; $4597: $ce $4f
	cp $df                                           ; $4599: $fe $df
	rst $38                                          ; $459b: $ff
	sbc [hl]                                         ; $459c: $9e
	add b                                            ; $459d: $80
	ld l, e                                          ; $459e: $6b
	cp $99                                           ; $459f: $fe $99
	sub c                                            ; $45a1: $91
	xor $ac                                          ; $45a2: $ee $ac
	db $d3                                           ; $45a4: $d3
	sub e                                            ; $45a5: $93
	db $ec                                           ; $45a6: $ec
	ld d, a                                          ; $45a7: $57
	ld d, b                                          ; $45a8: $50
	sbc e                                            ; $45a9: $9b
	ret z                                            ; $45aa: $c8

	scf                                              ; $45ab: $37
	ld [hl-], a                                      ; $45ac: $32
	call $e003                                       ; $45ad: $cd $03 $e0
	ld h, e                                          ; $45b0: $63
	ldh [$9a], a                                     ; $45b1: $e0 $9a
	sub d                                            ; $45b3: $92
	db $ed                                           ; $45b4: $ed
	adc l                                            ; $45b5: $8d
	ldh a, [c]                                       ; $45b6: $f2
	or d                                             ; $45b7: $b2
	ld a, e                                          ; $45b8: $7b
	ldh a, [$5f]                                     ; $45b9: $f0 $5f
	ldh [$7e], a                                     ; $45bb: $e0 $7e
	cp b                                             ; $45bd: $b8
	sbc l                                            ; $45be: $9d
	or d                                             ; $45bf: $b2
	ld c, l                                          ; $45c0: $4d
	ld e, a                                          ; $45c1: $5f
	ldh [hDisp1_WX], a                                     ; $45c2: $e0 $96
	sub h                                            ; $45c4: $94
	db $eb                                           ; $45c5: $eb
	adc c                                            ; $45c6: $89
	or $b6                                           ; $45c7: $f6 $b6
	ret                                              ; $45c9: $c9


	db $fd                                           ; $45ca: $fd
	inc bc                                           ; $45cb: $03
	ld bc, $bc72                                     ; $45cc: $01 $72 $bc
	ld a, a                                          ; $45cf: $7f
	ld hl, sp-$69                                    ; $45d0: $f8 $97
	push de                                          ; $45d2: $d5
	inc bc                                           ; $45d3: $03
	ld l, l                                          ; $45d4: $6d
	inc bc                                           ; $45d5: $03
	sbc c                                            ; $45d6: $99
	inc bc                                           ; $45d7: $03
	ld a, a                                          ; $45d8: $7f
	add b                                            ; $45d9: $80
	halt                                             ; $45da: $76
	xor e                                            ; $45db: $ab
	ld a, a                                          ; $45dc: $7f
	db $fc                                           ; $45dd: $fc
	ld a, a                                          ; $45de: $7f
	ld hl, sp-$67                                    ; $45df: $f8 $99
	ld e, d                                          ; $45e1: $5a
	add b                                            ; $45e2: $80
	scf                                              ; $45e3: $37
	add b                                            ; $45e4: $80
	ld c, h                                          ; $45e5: $4c
	add b                                            ; $45e6: $80
	ld e, a                                          ; $45e7: $5f
	ldh [$9a], a                                     ; $45e8: $e0 $9a
	db $ed                                           ; $45ea: $ed
	inc bc                                           ; $45eb: $03
	dec [hl]                                         ; $45ec: $35
	inc bc                                           ; $45ed: $03
	call $e05b                                       ; $45ee: $cd $5b $e0
	sbc d                                            ; $45f1: $9a
	ld l, [hl]                                       ; $45f2: $6e
	add b                                            ; $45f3: $80
	ld e, c                                          ; $45f4: $59
	add b                                            ; $45f5: $80
	ld h, [hl]                                       ; $45f6: $66
	ld d, e                                          ; $45f7: $53
	ldh [$9e], a                                     ; $45f8: $e0 $9e
	sub c                                            ; $45fa: $91
	ld a, e                                          ; $45fb: $7b
	cp [hl]                                          ; $45fc: $be
	ld a, $c0                                        ; $45fd: $3e $c0
	adc c                                            ; $45ff: $89
	push hl                                          ; $4600: $e5
	ld a, [$edf2]                                    ; $4601: $fa $f2 $ed
	db $ed                                           ; $4604: $ed
	ldh a, [c]                                       ; $4605: $f2
	ei                                               ; $4606: $fb
	db $e4                                           ; $4607: $e4
	db $ed                                           ; $4608: $ed
	ldh a, [c]                                       ; $4609: $f2
	rst AddAOntoHL                                          ; $460a: $ef
	ldh a, [$f7]                                     ; $460b: $f0 $f7
	add sp, $4d                                      ; $460d: $e8 $4d
	or d                                             ; $460f: $b2
	or a                                             ; $4610: $b7
	ld c, b                                          ; $4611: $48
	ld a, a                                          ; $4612: $7f
	add b                                            ; $4613: $80
	cp a                                             ; $4614: $bf
	ld b, b                                          ; $4615: $40
	ld e, d                                          ; $4616: $5a
	or a                                             ; $4617: $b7
	inc de                                           ; $4618: $13
	cp $97                                           ; $4619: $fe $97
	jp nc, $fc2d                                     ; $461b: $d2 $2d $fc

	inc bc                                           ; $461e: $03
	ei                                               ; $461f: $fb
	inc b                                            ; $4620: $04
	cp $01                                           ; $4621: $fe $01
	ld h, a                                          ; $4623: $67
	ldh a, [$7e]                                     ; $4624: $f0 $7e
	adc $91                                          ; $4626: $ce $91
	add a                                            ; $4628: $87
	ld a, a                                          ; $4629: $7f
	rlca                                             ; $462a: $07
	rst $38                                          ; $462b: $ff
	rst SubAFromBC                                          ; $462c: $e7
	rra                                              ; $462d: $1f
	rst SubAFromDE                                          ; $462e: $df
	daa                                              ; $462f: $27
	rst AddAOntoHL                                          ; $4630: $ef
	rla                                              ; $4631: $17
	rst FarCall                                          ; $4632: $f7
	rrca                                             ; $4633: $0f
	rst AddAOntoHL                                          ; $4634: $ef
	rla                                              ; $4635: $17
	ld b, [hl]                                       ; $4636: $46
	ret nz                                           ; $4637: $c0

	sbc h                                            ; $4638: $9c
	cp a                                             ; $4639: $bf
	ret nz                                           ; $463a: $c0

	add b                                            ; $463b: $80
	sbc $ff                                          ; $463c: $de $ff
	ld a, a                                          ; $463e: $7f
	db $fc                                           ; $463f: $fc
	ld a, a                                          ; $4640: $7f
	ld hl, sp-$69                                    ; $4641: $f8 $97
	or a                                             ; $4643: $b7
	ret nz                                           ; $4644: $c0

	adc c                                            ; $4645: $89
	ret nz                                           ; $4646: $c0

	or [hl]                                          ; $4647: $b6
	ret nz                                           ; $4648: $c0

	cp $01                                           ; $4649: $fe $01
	ld l, a                                          ; $464b: $6f
	ld d, b                                          ; $464c: $50
	ld a, a                                          ; $464d: $7f
	ld hl, sp-$67                                    ; $464e: $f8 $99
	halt                                             ; $4650: $76
	ld bc, $019a                                     ; $4651: $01 $9a $01
	ld h, [hl]                                       ; $4654: $66
	ld bc, $e003                                     ; $4655: $01 $03 $e0
	ld e, e                                          ; $4658: $5b
	ldh [$9c], a                                     ; $4659: $e0 $9c
	xor h                                            ; $465b: $ac
	ret nz                                           ; $465c: $c0

	or e                                             ; $465d: $b3
	ld e, e                                          ; $465e: $5b
	ldh [$9a], a                                     ; $465f: $e0 $9a
	ld e, d                                          ; $4661: $5a
	ld bc, $01ec                                     ; $4662: $01 $ec $01
	ld [hl-], a                                      ; $4665: $32
	ld e, e                                          ; $4666: $5b
	ldh [$9e], a                                     ; $4667: $e0 $9e
	xor e                                            ; $4669: $ab
	ld a, e                                          ; $466a: $7b
	jp nz, $999b                                     ; $466b: $c2 $9b $99

	ret nz                                           ; $466e: $c0

	ld bc, $6b03                                     ; $466f: $01 $03 $6b
	cp $6d                                           ; $4672: $fe $6d
	halt                                             ; $4674: $76
	sbc h                                            ; $4675: $9c
	inc bc                                           ; $4676: $03
	nop                                              ; $4677: $00
	add b                                            ; $4678: $80
	ld l, e                                          ; $4679: $6b
	cp $6c                                           ; $467a: $fe $6c
	and h                                            ; $467c: $a4
	sbc [hl]                                         ; $467d: $9e

jr_03e_467e:
	add b                                            ; $467e: $80
	inc bc                                           ; $467f: $03
	ldh [rWX], a                                     ; $4680: $e0 $4b
	ldh [rDMA], a                                    ; $4682: $e0 $46
	ret nz                                           ; $4684: $c0

	ld a, [hl]                                       ; $4685: $7e
	call z, $ca76                                    ; $4686: $cc $76 $ca
	sbc c                                            ; $4689: $99
	db $eb                                           ; $468a: $eb
	db $f4                                           ; $468b: $f4
	and $f9                                          ; $468c: $e6 $f9
	pop hl                                           ; $468e: $e1
	cp $75                                           ; $468f: $fe $75
	add b                                            ; $4691: $80
	ld l, [hl]                                       ; $4692: $6e
	ld a, [$be7e]                                    ; $4693: $fa $7e $be
	sub a                                            ; $4696: $97
	rst AddAOntoHL                                          ; $4697: $ef

jr_03e_4698:
	db $10                                           ; $4698: $10
	sbc a                                            ; $4699: $9f
	ld h, b                                          ; $469a: $60
	ld h, a                                          ; $469b: $67
	sbc b                                            ; $469c: $98
	dec de                                           ; $469d: $1b
	db $e4                                           ; $469e: $e4
	ld [bc], a                                       ; $469f: $02
	cp [hl]                                          ; $46a0: $be
	ld [hl], e                                       ; $46a1: $73
	cp $7f                                           ; $46a2: $fe $7f
	ld b, d                                          ; $46a4: $42
	adc a                                            ; $46a5: $8f
	db $fd                                           ; $46a6: $fd
	ld [bc], a                                       ; $46a7: $02
	ld [$d515], a                                    ; $46a8: $ea $15 $d5
	ld a, [hl+]                                      ; $46ab: $2a
	adc b                                            ; $46ac: $88
	ld [hl], a                                       ; $46ad: $77
	rst FarCall                                          ; $46ae: $f7
	rrca                                             ; $46af: $0f
	rst SubAFromHL                                          ; $46b0: $d7
	cpl                                              ; $46b1: $2f
	and a                                            ; $46b2: $a7
	ld e, a                                          ; $46b3: $5f
	rst JumpTable                                          ; $46b4: $c7
	ccf                                              ; $46b5: $3f
	ld l, [hl]                                       ; $46b6: $6e
	cp b                                             ; $46b7: $b8
	ld b, l                                          ; $46b8: $45
	add b                                            ; $46b9: $80
	sbc e                                            ; $46ba: $9b
	sbc $e0                                          ; $46bb: $de $e0
	add b                                            ; $46bd: $80
	ret nz                                           ; $46be: $c0

	ld l, e                                          ; $46bf: $6b
	cp $73                                           ; $46c0: $fe $73
	ld a, [de]                                       ; $46c2: $1a
	ld a, a                                          ; $46c3: $7f
	ld hl, sp-$71                                    ; $46c4: $f8 $8f
	rst $38                                          ; $46c6: $ff
	jr jr_03e_4698                                   ; $46c7: $18 $cf

	inc a                                            ; $46c9: $3c
	rst JumpTable                                          ; $46ca: $c7
	inc c                                            ; $46cb: $0c
	jp $e724                                         ; $46cc: $c3 $24 $e7


	jr @-$7d                                         ; $46cf: $18 $81

	rst SubAFromBC                                          ; $46d1: $e7
	nop                                              ; $46d2: $00
	add c                                            ; $46d3: $81
	ld b, b                                          ; $46d4: $40
	ld h, d                                          ; $46d5: $62
	ld b, a                                          ; $46d6: $47
	ldh [$9d], a                                     ; $46d7: $e0 $9d
	nop                                              ; $46d9: $00
	ld bc, $fe6b                                     ; $46da: $01 $6b $fe
	ld l, a                                          ; $46dd: $6f
	jr nc, jr_03e_467e                               ; $46de: $30 $9e

	ld bc, $e003                                     ; $46e0: $01 $03 $e0
	ld c, e                                          ; $46e3: $4b
	ldh [$63], a                                     ; $46e4: $e0 $63
	nop                                              ; $46e6: $00
	ld l, d                                          ; $46e7: $6a
	db $fc                                           ; $46e8: $fc
	ld h, d                                          ; $46e9: $62
	ldh [rOCPS], a                                   ; $46ea: $e0 $6a
	call c, $e003                                    ; $46ec: $dc $03 $e0
	ld c, e                                          ; $46ef: $4b
	ldh [rSTAT], a                                   ; $46f0: $e0 $41
	add b                                            ; $46f2: $80
	sbc $e0                                          ; $46f3: $de $e0
	sbc [hl]                                         ; $46f5: $9e
	ret nz                                           ; $46f6: $c0

	ld a, e                                          ; $46f7: $7b
	db $fd                                           ; $46f8: $fd
	rst SubAFromDE                                          ; $46f9: $df
	ret nz                                           ; $46fa: $c0

	ld a, a                                          ; $46fb: $7f
	sub h                                            ; $46fc: $94
	ld a, a                                          ; $46fd: $7f
	db $fd                                           ; $46fe: $fd
	rst SubAFromDE                                          ; $46ff: $df
	add b                                            ; $4700: $80
	push hl                                          ; $4701: $e5
	ld a, [hl]                                       ; $4702: $7e
	ld h, e                                          ; $4703: $63
	sbc [hl]                                         ; $4704: $9e
	rlca                                             ; $4705: $07
	db $f4                                           ; $4706: $f4
	sbc d                                            ; $4707: $9a
	ld a, [$f500]                                    ; $4708: $fa $00 $f5
	nop                                              ; $470b: $00
	dec hl                                           ; $470c: $2b
	db $fc                                           ; $470d: $fc
	ld a, a                                          ; $470e: $7f
	ld b, c                                          ; $470f: $41
	sbc d                                            ; $4710: $9a
	inc b                                            ; $4711: $04
	nop                                              ; $4712: $00
	ld d, e                                          ; $4713: $53
	nop                                              ; $4714: $00
	cp a                                             ; $4715: $bf
	halt                                             ; $4716: $76
	add [hl]                                         ; $4717: $86
	add b                                            ; $4718: $80
	rlca                                             ; $4719: $07
	sbc a                                            ; $471a: $9f
	rlca                                             ; $471b: $07
	cpl                                              ; $471c: $2f
	inc bc                                           ; $471d: $03
	ld e, [hl]                                       ; $471e: $5e
	inc bc                                           ; $471f: $03
	cp [hl]                                          ; $4720: $be
	ld bc, $03fc                                     ; $4721: $01 $fc $03
	ld hl, sp+$07                                    ; $4724: $f8 $07
	di                                               ; $4726: $f3
	rrca                                             ; $4727: $0f
	cp $e0                                           ; $4728: $fe $e0
	ld a, $e0                                        ; $472a: $3e $e0
	ld l, [hl]                                       ; $472c: $6e
	sub b                                            ; $472d: $90
	ld h, $d8                                        ; $472e: $26 $d8
	sbc [hl]                                         ; $4730: $9e
	ld hl, sp-$02                                    ; $4731: $f8 $fe
	ld hl, sp+$26                                    ; $4733: $f8 $26
	ld hl, sp-$3a                                    ; $4735: $f8 $c6
	cp b                                             ; $4737: $b8
	ld h, e                                          ; $4738: $63
	jr nz, jr_03e_47a6                               ; $4739: $20 $6b

	inc e                                            ; $473b: $1c
	adc a                                            ; $473c: $8f
	ld [hl+], a                                      ; $473d: $22
	ld h, [hl]                                       ; $473e: $66
	ld h, $76                                        ; $473f: $26 $76
	nop                                              ; $4741: $00
	and d                                            ; $4742: $a2
	cp [hl]                                          ; $4743: $be
	ld a, [hl]                                       ; $4744: $7e
	sbc h                                            ; $4745: $9c
	ld e, [hl]                                       ; $4746: $5e
	adc b                                            ; $4747: $88
	ld e, l                                          ; $4748: $5d
	pop bc                                           ; $4749: $c1
	ld [$c9c1], sp                                   ; $474a: $08 $c1 $c9
	ld b, a                                          ; $474d: $47
	ldh [$62], a                                     ; $474e: $e0 $62
	ldh [rOCPS], a                                   ; $4750: $e0 $6a
	call c, $e003                                    ; $4752: $dc $03 $e0
	ld b, a                                          ; $4755: $47
	ldh [$71], a                                     ; $4756: $e0 $71
	ld h, h                                          ; $4758: $64
	sbc d                                            ; $4759: $9a
	ld [bc], a                                       ; $475a: $02
	ld bc, $ff09                                     ; $475b: $01 $09 $ff
	ld [bc], a                                       ; $475e: $02
	ld a, e                                          ; $475f: $7b
	ld a, [$fe7f]                                    ; $4760: $fa $7f $fe
	ld [hl], a                                       ; $4763: $77
	ldh a, [$7d]                                     ; $4764: $f0 $7d
	ldh [c], a                                       ; $4766: $e2
	sub [hl]                                         ; $4767: $96
	ld b, b                                          ; $4768: $40
	add b                                            ; $4769: $80
	ld hl, $40ff                                     ; $476a: $21 $ff $40
	add d                                            ; $476d: $82
	ld b, b                                          ; $476e: $40
	add h                                            ; $476f: $84
	ld c, b                                          ; $4770: $48
	ld a, d                                          ; $4771: $7a
	call c, $fe7f                                    ; $4772: $dc $7f $fe
	sub a                                            ; $4775: $97
	cp h                                             ; $4776: $bc
	ld b, e                                          ; $4777: $43
	inc b                                            ; $4778: $04
	add e                                            ; $4779: $83
	jr nz, @+$01                                     ; $477a: $20 $ff

	inc b                                            ; $477c: $04
	inc bc                                           ; $477d: $03
	ld [hl], a                                       ; $477e: $77
	cp $77                                           ; $477f: $fe $77
	ldh a, [rPCM12]                                  ; $4781: $f0 $76
	cp e                                             ; $4783: $bb
	ld a, a                                          ; $4784: $7f
	ldh [$99], a                                     ; $4785: $e0 $99
	add b                                            ; $4787: $80
	ld [bc], a                                       ; $4788: $02
	add h                                            ; $4789: $84
	inc b                                            ; $478a: $04
	add b                                            ; $478b: $80
	ld [$f077], sp                                   ; $478c: $08 $77 $f0
	sbc d                                            ; $478f: $9a
	cp [hl]                                          ; $4790: $be
	ld b, c                                          ; $4791: $41
	add d                                            ; $4792: $82
	add c                                            ; $4793: $81
	nop                                              ; $4794: $00
	ld e, e                                          ; $4795: $5b
	ret nz                                           ; $4796: $c0

	ld a, a                                          ; $4797: $7f
	cp $7e                                           ; $4798: $fe $7e
	or [hl]                                          ; $479a: $b6
	sbc h                                            ; $479b: $9c
	ld l, e                                          ; $479c: $6b
	rst $38                                          ; $479d: $ff
	inc b                                            ; $479e: $04
	ld h, c                                          ; $479f: $61
	pop bc                                           ; $47a0: $c1
	ld a, a                                          ; $47a1: $7f
	sbc b                                            ; $47a2: $98
	ld a, a                                          ; $47a3: $7f
	db $fc                                           ; $47a4: $fc
	sbc [hl]                                         ; $47a5: $9e

jr_03e_47a6:
	ld e, b                                          ; $47a6: $58
	ld e, c                                          ; $47a7: $59
	or c                                             ; $47a8: $b1
	ld [hl], a                                       ; $47a9: $77
	and $9c                                          ; $47aa: $e6 $9c
	sbc $ff                                          ; $47ac: $de $ff
	jr nz, jr_03e_4813                               ; $47ae: $20 $63

	ldh a, [$79]                                     ; $47b0: $f0 $79
	ld c, b                                          ; $47b2: $48
	sbc l                                            ; $47b3: $9d
	rst $38                                          ; $47b4: $ff
	ld c, [hl]                                       ; $47b5: $4e
	ld a, e                                          ; $47b6: $7b
	db $fc                                           ; $47b7: $fc
	ld d, l                                          ; $47b8: $55
	adc l                                            ; $47b9: $8d
	sbc [hl]                                         ; $47ba: $9e
	inc de                                           ; $47bb: $13
	ld e, e                                          ; $47bc: $5b
	db $f4                                           ; $47bd: $f4
	sbc [hl]                                         ; $47be: $9e
	ld b, b                                          ; $47bf: $40
	ld a, e                                          ; $47c0: $7b
	db $fc                                           ; $47c1: $fc
	sbc h                                            ; $47c2: $9c
	ld c, $ff                                        ; $47c3: $0e $ff
	ld [$f473], sp                                   ; $47c5: $08 $73 $f4
	sbc d                                            ; $47c8: $9a
	ld e, $ff                                        ; $47c9: $1e $ff
	jr c, @+$01                                      ; $47cb: $38 $ff

	ld [hl], b                                       ; $47cd: $70
	ld a, e                                          ; $47ce: $7b
	ld hl, sp-$62                                    ; $47cf: $f8 $9e
	ld [bc], a                                       ; $47d1: $02
	ld [hl], e                                       ; $47d2: $73
	xor d                                            ; $47d3: $aa
	ld a, a                                          ; $47d4: $7f
	cp $9e                                           ; $47d5: $fe $9e
	inc c                                            ; $47d7: $0c
	ld [hl], e                                       ; $47d8: $73
	cp $9a                                           ; $47d9: $fe $9a
	ld c, b                                          ; $47db: $48
	rst $38                                          ; $47dc: $ff
	ld h, b                                          ; $47dd: $60
	rst $38                                          ; $47de: $ff

jr_03e_47df:
	db $10                                           ; $47df: $10
	ld h, e                                          ; $47e0: $63
	ret nc                                           ; $47e1: $d0

	sbc h                                            ; $47e2: $9c
	ld a, a                                          ; $47e3: $7f
	add c                                            ; $47e4: $81
	ld b, b                                          ; $47e5: $40
	ld a, e                                          ; $47e6: $7b
	ld c, b                                          ; $47e7: $48
	ld a, a                                          ; $47e8: $7f
	db $fc                                           ; $47e9: $fc
	ld [hl], a                                       ; $47ea: $77
	cp $7e                                           ; $47eb: $fe $7e
	call z, $c99d                                    ; $47ed: $cc $9d $c9
	nop                                              ; $47f0: $00
	ld a, e                                          ; $47f1: $7b
	cp $96                                           ; $47f2: $fe $96
	sub h                                            ; $47f4: $94
	ret                                              ; $47f5: $c9


	ld d, h                                          ; $47f6: $54
	adc b                                            ; $47f7: $88
	inc [hl]                                         ; $47f8: $34
	cp h                                             ; $47f9: $bc
	rst FarCall                                          ; $47fa: $f7
	rst $38                                          ; $47fb: $ff
	jp $e077                                         ; $47fc: $c3 $77 $e0


	sbc h                                            ; $47ff: $9c
	ld a, l                                          ; $4800: $7d
	add d                                            ; $4801: $82
	ld b, c                                          ; $4802: $41
	ld a, e                                          ; $4803: $7b
	ld d, b                                          ; $4804: $50
	ld l, a                                          ; $4805: $6f
	ldh [$6f], a                                     ; $4806: $e0 $6f
	jr nc, @+$81                                     ; $4808: $30 $7f

	ld c, c                                          ; $480a: $49
	sub a                                            ; $480b: $97
	add h                                            ; $480c: $84
	rst $38                                          ; $480d: $ff
	ld bc, $2140                                     ; $480e: $01 $40 $21
	jr nz, jr_03e_4814                               ; $4811: $20 $01

jr_03e_4813:
	db $10                                           ; $4813: $10

jr_03e_4814:
	ld [hl], a                                       ; $4814: $77
	ldh a, [$97]                                     ; $4815: $f0 $97
	dec a                                            ; $4817: $3d
	jp nz, $c120                                     ; $4818: $c2 $20 $c1

	inc b                                            ; $481b: $04
	rst $38                                          ; $481c: $ff
	jr nz, jr_03e_47df                               ; $481d: $20 $c0

	ld [hl], a                                       ; $481f: $77
	cp $66                                           ; $4820: $fe $66
	ldh [$7f], a                                     ; $4822: $e0 $7f
	ldh [$9a], a                                     ; $4824: $e0 $9a
	ld [bc], a                                       ; $4826: $02
	ld b, c                                          ; $4827: $41
	ld [bc], a                                       ; $4828: $02
	ld hl, $6212                                     ; $4829: $21 $12 $62
	ldh [$9e], a                                     ; $482c: $e0 $9e
	sub b                                            ; $482e: $90
	ld l, e                                          ; $482f: $6b
	ret nz                                           ; $4830: $c0

	ld [hl], a                                       ; $4831: $77
	pop bc                                           ; $4832: $c1
	sub l                                            ; $4833: $95
	rst $38                                          ; $4834: $ff
	and $00                                          ; $4835: $e6 $00
	rst $38                                          ; $4837: $ff
	rlca                                             ; $4838: $07
	ld hl, sp-$20                                    ; $4839: $f8 $e0
	nop                                              ; $483b: $00
	rrca                                             ; $483c: $0f
	ldh a, [rPCM34]                                  ; $483d: $f0 $77
	or h                                             ; $483f: $b4
	halt                                             ; $4840: $76
	xor e                                            ; $4841: $ab
	sbc d                                            ; $4842: $9a
	inc bc                                           ; $4843: $03
	db $fc                                           ; $4844: $fc
	ldh a, [rP1]                                     ; $4845: $f0 $00
	rra                                              ; $4847: $1f
	cp $7f                                           ; $4848: $fe $7f
	ld [$f06f], a                                    ; $484a: $ea $6f $f0
	sbc [hl]                                         ; $484d: $9e
	sbc a                                            ; $484e: $9f
	ld a, c                                          ; $484f: $79
	db $e4                                           ; $4850: $e4
	rst $38                                          ; $4851: $ff
	sbc [hl]                                         ; $4852: $9e
	rrca                                             ; $4853: $0f
	ld l, a                                          ; $4854: $6f
	ld h, c                                          ; $4855: $61
	ld a, e                                          ; $4856: $7b
	ldh a, [rIE]                                     ; $4857: $f0 $ff
	sbc h                                            ; $4859: $9c
	ld hl, sp+$00                                    ; $485a: $f8 $00
	ld b, $78                                        ; $485c: $06 $78
	xor d                                            ; $485e: $aa
	sbc l                                            ; $485f: $9d
	add b                                            ; $4860: $80
	ld a, a                                          ; $4861: $7f
	ld l, e                                          ; $4862: $6b
	ldh a, [$9d]                                     ; $4863: $f0 $9d
	ld bc, $7907                                     ; $4865: $01 $07 $79
	sub h                                            ; $4868: $94
	sbc e                                            ; $4869: $9b
	inc c                                            ; $486a: $0c
	add e                                            ; $486b: $83
	ccf                                              ; $486c: $3f
	ret nz                                           ; $486d: $c0

	ld [hl], e                                       ; $486e: $73
	ldh a, [$9c]                                     ; $486f: $f0 $9c
	ccf                                              ; $4871: $3f
	ld sp, $77ce                                     ; $4872: $31 $ce $77
	sub $7f                                          ; $4875: $d6 $7f
	jp nz, $f09d                                     ; $4877: $c2 $9d $f0

	rrca                                             ; $487a: $0f
	ld [hl], e                                       ; $487b: $73
	ldh a, [$9b]                                     ; $487c: $f0 $9b
	rst $38                                          ; $487e: $ff
	db $fc                                           ; $487f: $fc
	inc bc                                           ; $4880: $03
	ei                                               ; $4881: $fb
	ld a, d                                          ; $4882: $7a

jr_03e_4883:
	res 3, e                                         ; $4883: $cb $9b
	db $e4                                           ; $4885: $e4
	dec de                                           ; $4886: $1b
	rrca                                             ; $4887: $0f
	ldh a, [$6f]                                     ; $4888: $f0 $6f
	ldh a, [$99]                                     ; $488a: $f0 $99
	rst GetHLinHL                                          ; $488c: $cf
	jr nc, @+$01                                     ; $488d: $30 $ff

	nop                                              ; $488f: $00
	di                                               ; $4890: $f3
	inc c                                            ; $4891: $0c
	ld [hl], e                                       ; $4892: $73
	sub d                                            ; $4893: $92
	ld [hl], e                                       ; $4894: $73
	ldh a, [$97]                                     ; $4895: $f0 $97
	rst SubAFromHL                                          ; $4897: $d7
	jr z, @+$01                                      ; $4898: $28 $ff

	nop                                              ; $489a: $00
	ccf                                              ; $489b: $3f
	ret nz                                           ; $489c: $c0

	inc bc                                           ; $489d: $03
	db $fc                                           ; $489e: $fc
	ld h, a                                          ; $489f: $67
	ldh a, [rPCM34]                                  ; $48a0: $f0 $77
	ld hl, sp+$7c                                    ; $48a2: $f8 $7c
	adc [hl]                                         ; $48a4: $8e
	sbc l                                            ; $48a5: $9d
	sub b                                            ; $48a6: $90
	ld l, a                                          ; $48a7: $6f
	ld l, e                                          ; $48a8: $6b
	ld [hl], b                                       ; $48a9: $70
	sub [hl]                                         ; $48aa: $96
	rst $38                                          ; $48ab: $ff
	ld d, e                                          ; $48ac: $53
	xor h                                            ; $48ad: $ac
	rst $38                                          ; $48ae: $ff
	nop                                              ; $48af: $00
	ld hl, sp+$07                                    ; $48b0: $f8 $07
	jr nc, jr_03e_4883                               ; $48b2: $30 $cf

	ld h, a                                          ; $48b4: $67
	ldh a, [hDisp1_WY]                                     ; $48b5: $f0 $95
	sub a                                            ; $48b7: $97
	ld l, b                                          ; $48b8: $68
	rst $38                                          ; $48b9: $ff
	nop                                              ; $48ba: $00
	ld c, $f1                                        ; $48bb: $0e $f1
	ld [hl], c                                       ; $48bd: $71
	adc [hl]                                         ; $48be: $8e
	ret nz                                           ; $48bf: $c0

	ccf                                              ; $48c0: $3f
	ld l, a                                          ; $48c1: $6f
	ldh a, [$9d]                                     ; $48c2: $f0 $9d
	ld [hl], $c9                                     ; $48c4: $36 $c9
	ld [hl], a                                       ; $48c6: $77
	sub d                                            ; $48c7: $92
	ld a, a                                          ; $48c8: $7f
	ldh a, [c]                                       ; $48c9: $f2
	sbc l                                            ; $48ca: $9d
	rra                                              ; $48cb: $1f
	ldh [$6f], a                                     ; $48cc: $e0 $6f
	ldh a, [$9c]                                     ; $48ce: $f0 $9c
	ld h, l                                          ; $48d0: $65
	sbc d                                            ; $48d1: $9a
	ldh [$73], a                                     ; $48d2: $e0 $73
	ld e, h                                          ; $48d4: $5c
	ld h, a                                          ; $48d5: $67
	or b                                             ; $48d6: $b0
	sbc l                                            ; $48d7: $9d
	rst JumpTable                                          ; $48d8: $c7
	jr c, jr_03e_4952                                ; $48d9: $38 $77

	ld [hl-], a                                      ; $48db: $32
	ld a, a                                          ; $48dc: $7f
	ld c, [hl]                                       ; $48dd: $4e
	ld a, a                                          ; $48de: $7f

jr_03e_48df:
	ld a, b                                          ; $48df: $78
	ld l, a                                          ; $48e0: $6f
	ldh a, [$7f]                                     ; $48e1: $f0 $7f
	ret c                                            ; $48e3: $d8

	ld a, [hl]                                       ; $48e4: $7e
	db $fc                                           ; $48e5: $fc
	sbc [hl]                                         ; $48e6: $9e
	jr c, jr_03e_4963                                ; $48e7: $38 $7a

	jp z, $b067                                      ; $48e9: $ca $67 $b0

	ld [hl], a                                       ; $48ec: $77
	ld hl, sp-$01                                    ; $48ed: $f8 $ff
	sbc h                                            ; $48ef: $9c
	db $fc                                           ; $48f0: $fc
	nop                                              ; $48f1: $00
	db $e3                                           ; $48f2: $e3
	ld l, e                                          ; $48f3: $6b
	ret nc                                           ; $48f4: $d0

	sbc h                                            ; $48f5: $9c
	jr jr_03e_48df                                   ; $48f6: $18 $e7

	rst GetHLinHL                                          ; $48f8: $cf
	ld [hl], e                                       ; $48f9: $73
	db $10                                           ; $48fa: $10
	ld a, a                                          ; $48fb: $7f
	adc h                                            ; $48fc: $8c
	ld l, a                                          ; $48fd: $6f
	ldh a, [$98]                                     ; $48fe: $f0 $98
	adc e                                            ; $4900: $8b
	ld [hl], h                                       ; $4901: $74
	jp nz, $3000                                     ; $4902: $c2 $00 $30

	nop                                              ; $4905: $00
	cp $66                                           ; $4906: $fe $66
	ldh a, [$9c]                                     ; $4908: $f0 $9c
	rst $38                                          ; $490a: $ff
	dec sp                                           ; $490b: $3b
	call nz, $d670                                   ; $490c: $c4 $70 $d6
	ld a, b                                          ; $490f: $78
	cp $7b                                           ; $4910: $fe $7b
	pop af                                           ; $4912: $f1
	ld a, e                                          ; $4913: $7b
	db $eb                                           ; $4914: $eb
	ld a, e                                          ; $4915: $7b
	and b                                            ; $4916: $a0
	sub l                                            ; $4917: $95
	ldh [$fc], a                                     ; $4918: $e0 $fc
	inc bc                                           ; $491a: $03
	ldh [rIE], a                                     ; $491b: $e0 $ff
	rra                                              ; $491d: $1f
	rst $38                                          ; $491e: $ff
	ccf                                              ; $491f: $3f
	rst $38                                          ; $4920: $ff
	rst $38                                          ; $4921: $ff
	ld a, d                                          ; $4922: $7a
	adc h                                            ; $4923: $8c
	ld [hl], a                                       ; $4924: $77
	adc b                                            ; $4925: $88
	ld h, a                                          ; $4926: $67
	dec [hl]                                         ; $4927: $35
	ld [hl], a                                       ; $4928: $77
	or $7a                                           ; $4929: $f6 $7a
	or b                                             ; $492b: $b0
	ld [hl], d                                       ; $492c: $72
	jp $a16a                                         ; $492d: $c3 $6a $a1


	ld a, e                                          ; $4930: $7b
	db $fd                                           ; $4931: $fd
	ld a, a                                          ; $4932: $7f
	bit 7, a                                         ; $4933: $cb $7f
	ld a, [$d27f]                                    ; $4935: $fa $7f $d2
	ld [hl], a                                       ; $4938: $77
	ld d, c                                          ; $4939: $51
	ld a, [hl]                                       ; $493a: $7e
	db $ed                                           ; $493b: $ed
	ld a, [hl]                                       ; $493c: $7e
	db $db                                           ; $493d: $db
	ld a, a                                          ; $493e: $7f
	cp b                                             ; $493f: $b8
	sbc l                                            ; $4940: $9d
	jp Jump_03e_6f3c                                 ; $4941: $c3 $3c $6f


	and $75                                          ; $4944: $e6 $75
	or d                                             ; $4946: $b2
	sbc [hl]                                         ; $4947: $9e
	cp $7a                                           ; $4948: $fe $7a
	ld e, [hl]                                       ; $494a: $5e
	ld [hl], a                                       ; $494b: $77
	jp z, $e166                                      ; $494c: $ca $66 $e1

	ld a, a                                          ; $494f: $7f
	db $fc                                           ; $4950: $fc
	ld a, a                                          ; $4951: $7f

jr_03e_4952:
	and h                                            ; $4952: $a4
	sbc h                                            ; $4953: $9c
	cp a                                             ; $4954: $bf
	ld b, b                                          ; $4955: $40
	nop                                              ; $4956: $00
	ld a, e                                          ; $4957: $7b
	jp nc, $ce7f                                     ; $4958: $d2 $7f $ce

	ld l, a                                          ; $495b: $6f
	ldh a, [rPCM34]                                  ; $495c: $f0 $77
	ldh [$7f], a                                     ; $495e: $e0 $7f
	db $fc                                           ; $4960: $fc
	ld [hl], a                                       ; $4961: $77
	db $f4                                           ; $4962: $f4

jr_03e_4963:
	ld a, a                                          ; $4963: $7f
	xor $7f                                          ; $4964: $ee $7f
	jp hl                                            ; $4966: $e9


	ld a, a                                          ; $4967: $7f
	ld hl, sp+$7f                                    ; $4968: $f8 $7f
	jp nz, $2c79                                     ; $496a: $c2 $79 $2c

	ld a, [hl]                                       ; $496d: $7e
	ld a, a                                          ; $496e: $7f
	sbc $ff                                          ; $496f: $de $ff
	sbc e                                            ; $4971: $9b
	adc a                                            ; $4972: $8f
	di                                               ; $4973: $f3
	rst $38                                          ; $4974: $ff
	ld a, h                                          ; $4975: $7c
	ld [hl], a                                       ; $4976: $77
	and b                                            ; $4977: $a0
	ld a, [hl]                                       ; $4978: $7e
	ld h, h                                          ; $4979: $64
	ld h, a                                          ; $497a: $67
	sub d                                            ; $497b: $92
	ld [hl], a                                       ; $497c: $77
	sub $7f                                          ; $497d: $d6 $7f
	ret nz                                           ; $497f: $c0

	ld h, a                                          ; $4980: $67
	or [hl]                                          ; $4981: $b6
	ld l, a                                          ; $4982: $6f
	xor $77                                          ; $4983: $ee $77
	ld hl, sp+$7f                                    ; $4985: $f8 $7f
	db $ec                                           ; $4987: $ec
	sbc h                                            ; $4988: $9c
	inc bc                                           ; $4989: $03
	db $fd                                           ; $498a: $fd
	cp $6b                                           ; $498b: $fe $6b
	ld [$427f], a                                    ; $498d: $ea $7f $42
	ld [hl], l                                       ; $4990: $75
	cp $5f                                           ; $4991: $fe $5f
	sub b                                            ; $4993: $90
	ld [hl], l                                       ; $4994: $75

Call_03e_4995:
	cp $73                                           ; $4995: $fe $73
	ld sp, hl                                        ; $4997: $f9
	ld l, e                                          ; $4998: $6b
	ldh a, [rPCM12]                                  ; $4999: $f0 $76
	sbc b                                            ; $499b: $98
	ld a, [hl]                                       ; $499c: $7e
	ld b, h                                          ; $499d: $44

Call_03e_499e:
Jump_03e_499e:
	ld a, a                                          ; $499e: $7f
	db $ed                                           ; $499f: $ed
	ld l, [hl]                                       ; $49a0: $6e
	pop bc                                           ; $49a1: $c1
	ld l, l                                          ; $49a2: $6d
	adc h                                            ; $49a3: $8c
	ld [hl], e                                       ; $49a4: $73
	inc b                                            ; $49a5: $04
	ld l, e                                          ; $49a6: $6b
	ld b, b                                          ; $49a7: $40
	ld [hl], d                                       ; $49a8: $72
	ret nz                                           ; $49a9: $c0

	rst SubAFromDE                                          ; $49aa: $df
	rst $38                                          ; $49ab: $ff
	ld [hl], a                                       ; $49ac: $77
	ld l, c                                          ; $49ad: $69
	ld a, e                                          ; $49ae: $7b
	ldh a, [c]                                       ; $49af: $f2
	ld [hl], d                                       ; $49b0: $72
	dec de                                           ; $49b1: $1b
	ld a, e                                          ; $49b2: $7b
	ld e, $7f                                        ; $49b3: $1e $7f
	and d                                            ; $49b5: $a2
	ld [hl], h                                       ; $49b6: $74
	db $ec                                           ; $49b7: $ec
	ld [hl], a                                       ; $49b8: $77
	call c, $1e99                                    ; $49b9: $dc $99 $1e
	pop hl                                           ; $49bc: $e1
	rst $38                                          ; $49bd: $ff
	nop                                              ; $49be: $00
	dec b                                            ; $49bf: $05
	ld a, [$f46f]                                    ; $49c0: $fa $6f $f4
	sbc l                                            ; $49c3: $9d
	rst GetHLinHL                                          ; $49c4: $cf
	rst $38                                          ; $49c5: $ff
	ld a, d                                          ; $49c6: $7a
	inc bc                                           ; $49c7: $03
	ld a, e                                          ; $49c8: $7b
	ld c, $9d                                        ; $49c9: $0e $9d
	ldh [$1f], a                                     ; $49cb: $e0 $1f
	ld [hl], a                                       ; $49cd: $77
	nop                                              ; $49ce: $00
	ld [hl], l                                       ; $49cf: $75
	jp nc, $0a62                                     ; $49d0: $d2 $62 $0a

	ld a, h                                          ; $49d3: $7c
	and [hl]                                         ; $49d4: $a6
	ld a, l                                          ; $49d5: $7d
	jp c, $c19d                                      ; $49d6: $da $9d $c1

	rst $38                                          ; $49d9: $ff
	halt                                             ; $49da: $76
	sbc h                                            ; $49db: $9c
	ld [hl], a                                       ; $49dc: $77
	cp $7b                                           ; $49dd: $fe $7b
	ld [hl], b                                       ; $49df: $70
	rst SubAFromDE                                          ; $49e0: $df
	db $10                                           ; $49e1: $10
	ld [hl], e                                       ; $49e2: $73
	dec e                                            ; $49e3: $1d
	ld l, a                                          ; $49e4: $6f
	ldh a, [$7f]                                     ; $49e5: $f0 $7f
	db $d3                                           ; $49e7: $d3
	sbc h                                            ; $49e8: $9c
	db $e3                                           ; $49e9: $e3
	ccf                                              ; $49ea: $3f
	ccf                                              ; $49eb: $3f
	ld a, b                                          ; $49ec: $78
	ret                                              ; $49ed: $c9


	ld h, a                                          ; $49ee: $67
	ldh [$7a], a                                     ; $49ef: $e0 $7a
	sub l                                            ; $49f1: $95
	ld h, d                                          ; $49f2: $62
	xor a                                            ; $49f3: $af
	halt                                             ; $49f4: $76
	ret                                              ; $49f5: $c9


	ld a, a                                          ; $49f6: $7f
	and $7f                                          ; $49f7: $e6 $7f
	add a                                            ; $49f9: $87
	ld [hl], a                                       ; $49fa: $77
	db $f4                                           ; $49fb: $f4
	ld a, a                                          ; $49fc: $7f
	cp [hl]                                          ; $49fd: $be
	ld d, a                                          ; $49fe: $57
	inc de                                           ; $49ff: $13
	ld a, [hl]                                       ; $4a00: $7e
	ld a, $63                                        ; $4a01: $3e $63
	add hl, bc                                       ; $4a03: $09
	ld l, e                                          ; $4a04: $6b
	ld a, [$876c]                                    ; $4a05: $fa $6c $87
	ld a, c                                          ; $4a08: $79
	ld l, e                                          ; $4a09: $6b
	ld a, a                                          ; $4a0a: $7f
	ld a, [$82df]                                    ; $4a0b: $fa $df $82
	sbc $ff                                          ; $4a0e: $de $ff
	ld a, h                                          ; $4a10: $7c
	ld h, l                                          ; $4a11: $65
	ld [hl], a                                       ; $4a12: $77
	ld c, e                                          ; $4a13: $4b
	ld [hl], e                                       ; $4a14: $73
	jp c, $907b                                      ; $4a15: $da $7b $90

	ld [hl], l                                       ; $4a18: $75
	ld a, $78                                        ; $4a19: $3e $78
	call $886f                                       ; $4a1b: $cd $6f $88
	ld a, e                                          ; $4a1e: $7b
	ldh [$7f], a                                     ; $4a1f: $e0 $7f
	ld a, [$fc75]                                    ; $4a21: $fa $75 $fc
	ld [hl], e                                       ; $4a24: $73
	ld [hl], d                                       ; $4a25: $72
	ld a, a                                          ; $4a26: $7f
	ld a, [$08df]                                    ; $4a27: $fa $df $08
	ld a, e                                          ; $4a2a: $7b
	jp z, Jump_03e_4b76                              ; $4a2b: $ca $76 $4b

	halt                                             ; $4a2e: $76
	ld b, e                                          ; $4a2f: $43
	ld a, e                                          ; $4a30: $7b
	ldh a, [$7b]                                     ; $4a31: $f0 $7b
	ld [hl], b                                       ; $4a33: $70
	ld a, a                                          ; $4a34: $7f
	cp $77                                           ; $4a35: $fe $77
	dec de                                           ; $4a37: $1b
	ld a, a                                          ; $4a38: $7f
	cp $9e                                           ; $4a39: $fe $9e
	xor $73                                          ; $4a3b: $ee $73
	add sp, $6a                                      ; $4a3d: $e8 $6a
	ld c, $7a                                        ; $4a3f: $0e $7a
	rst SubAFromHL                                          ; $4a41: $d7
	sbc [hl]                                         ; $4a42: $9e
	scf                                              ; $4a43: $37
	ld l, e                                          ; $4a44: $6b
	inc bc                                           ; $4a45: $03
	ld a, e                                          ; $4a46: $7b
	ld b, $7b                                        ; $4a47: $06 $7b
	cp $9e                                           ; $4a49: $fe $9e
	rst SubAFromBC                                          ; $4a4b: $e7
	ld h, d                                          ; $4a4c: $62
	inc bc                                           ; $4a4d: $03
	ld l, a                                          ; $4a4e: $6f
	ld [hl], d                                       ; $4a4f: $72
	sbc [hl]                                         ; $4a50: $9e
	ld a, [$c87b]                                    ; $4a51: $fa $7b $c8
	ld l, b                                          ; $4a54: $68
	and h                                            ; $4a55: $a4
	ld l, e                                          ; $4a56: $6b
	cp $9e                                           ; $4a57: $fe $9e
	db $ec                                           ; $4a59: $ec
	ld [hl], a                                       ; $4a5a: $77
	ld a, [$c1df]                                    ; $4a5b: $fa $df $c1
	ld l, e                                          ; $4a5e: $6b
	ld h, $6f                                        ; $4a5f: $26 $6f
	db $ec                                           ; $4a61: $ec
	sbc [hl]                                         ; $4a62: $9e
	ld bc, $907b                                     ; $4a63: $01 $7b $90
	ld l, a                                          ; $4a66: $6f
	ld a, $76                                        ; $4a67: $3e $76
	db $fc                                           ; $4a69: $fc
	ld a, e                                          ; $4a6a: $7b
	ld hl, sp-$21                                    ; $4a6b: $f8 $df
	ld hl, $607b                                     ; $4a6d: $21 $7b $60
	ld a, a                                          ; $4a70: $7f
	ret z                                            ; $4a71: $c8

	ld a, a                                          ; $4a72: $7f
	ld a, h                                          ; $4a73: $7c
	ld l, c                                          ; $4a74: $69
	ld a, b                                          ; $4a75: $78
	sbc $04                                          ; $4a76: $de $04
	rst SubAFromHL                                          ; $4a78: $d7
	rst $38                                          ; $4a79: $ff
	ld [hl], a                                       ; $4a7a: $77
	ld [bc], a                                       ; $4a7b: $02
	ld a, [hl]                                       ; $4a7c: $7e
	adc $d9                                          ; $4a7d: $ce $d9
	rst $38                                          ; $4a7f: $ff
	ld l, h                                          ; $4a80: $6c
	ld h, $9d                                        ; $4a81: $26 $9d
	rst $38                                          ; $4a83: $ff
	jr nz, jr_03e_4af4                               ; $4a84: $20 $6e

	sbc h                                            ; $4a86: $9c
	ld h, d                                          ; $4a87: $62
	db $fc                                           ; $4a88: $fc
	ld a, a                                          ; $4a89: $7f
	cpl                                              ; $4a8a: $2f
	ld [hl], a                                       ; $4a8b: $77
	dec c                                            ; $4a8c: $0d
	sbc $ff                                          ; $4a8d: $de $ff
	ld [hl], h                                       ; $4a8f: $74
	ld b, [hl]                                       ; $4a90: $46
	ld a, e                                          ; $4a91: $7b

jr_03e_4a92:
	ld a, [de]                                       ; $4a92: $1a
	ld a, a                                          ; $4a93: $7f
	rlca                                             ; $4a94: $07
	ld a, a                                          ; $4a95: $7f
	sbc l                                            ; $4a96: $9d
	ld [hl], a                                       ; $4a97: $77
	dec h                                            ; $4a98: $25
	ld [hl], e                                       ; $4a99: $73
	ld e, [hl]                                       ; $4a9a: $5e
	sbc [hl]                                         ; $4a9b: $9e
	inc e                                            ; $4a9c: $1c
	ld l, a                                          ; $4a9d: $6f
	cp [hl]                                          ; $4a9e: $be
	ld [hl], e                                       ; $4a9f: $73
	cp h                                             ; $4aa0: $bc
	ld l, [hl]                                       ; $4aa1: $6e
	ld hl, sp-$63                                    ; $4aa2: $f8 $9d
	ret nz                                           ; $4aa4: $c0

	ldh [$7b], a                                     ; $4aa5: $e0 $7b
	cp [hl]                                          ; $4aa7: $be
	sbc l                                            ; $4aa8: $9d
	ccf                                              ; $4aa9: $3f
	rst JumpTable                                          ; $4aaa: $c7
	ld e, a                                          ; $4aab: $5f
	ld e, b                                          ; $4aac: $58
	ld a, e                                          ; $4aad: $7b
	jp nz, $3a5f                                     ; $4aae: $c2 $5f $3a

	ld a, e                                          ; $4ab1: $7b

jr_03e_4ab2:
	cp h                                             ; $4ab2: $bc
	ld a, e                                          ; $4ab3: $7b
	call nc, $527f                                   ; $4ab4: $d4 $7f $52
	ld l, [hl]                                       ; $4ab7: $6e
	xor $7f                                          ; $4ab8: $ee $7f
	jp nz, $df9e                                     ; $4aba: $c2 $9e $df

	ld [hl], e                                       ; $4abd: $73
	ldh [$9e], a                                     ; $4abe: $e0 $9e
	call c, $2c63                                    ; $4ac0: $dc $63 $2c
	rst SubAFromDE                                          ; $4ac3: $df
	rst $38                                          ; $4ac4: $ff
	sbc [hl]                                         ; $4ac5: $9e
	jr c, @+$7d                                      ; $4ac6: $38 $7b

	ccf                                              ; $4ac8: $3f
	ld h, a                                          ; $4ac9: $67
	ld [hl-], a                                      ; $4aca: $32
	ld [hl], a                                       ; $4acb: $77
	ldh a, [$9c]                                     ; $4acc: $f0 $9c
	ccf                                              ; $4ace: $3f
	jr nz, jr_03e_4ab2                               ; $4acf: $20 $e1

	ld a, e                                          ; $4ad1: $7b
	ld [hl], b                                       ; $4ad2: $70
	ld [hl], a                                       ; $4ad3: $77
	db $f4                                           ; $4ad4: $f4
	ld a, a                                          ; $4ad5: $7f
	add a                                            ; $4ad6: $87
	ld a, [hl]                                       ; $4ad7: $7e
	call c, Call_03e_7067                            ; $4ad8: $dc $67 $70
	ld [hl], a                                       ; $4adb: $77
	ldh a, [$9c]                                     ; $4adc: $f0 $9c
	ld h, b                                          ; $4ade: $60
	rst $38                                          ; $4adf: $ff
	add e                                            ; $4ae0: $83
	db $dd                                           ; $4ae1: $dd
	rst $38                                          ; $4ae2: $ff
	ld a, a                                          ; $4ae3: $7f
	ret nc                                           ; $4ae4: $d0

	ld a, e                                          ; $4ae5: $7b
	adc $77                                          ; $4ae6: $ce $77
	ld h, h                                          ; $4ae8: $64
	jp c, $9cff                                      ; $4ae9: $da $ff $9c

	ld b, d                                          ; $4aec: $42
	cp $42                                           ; $4aed: $fe $42
	ld l, a                                          ; $4aef: $6f
	sub d                                            ; $4af0: $92
	ld a, a                                          ; $4af1: $7f
	jr nc, jr_03e_4a92                               ; $4af2: $30 $9e

jr_03e_4af4:
	cp a                                             ; $4af4: $bf
	ld [hl], e                                       ; $4af5: $73
	ldh [$72], a                                     ; $4af6: $e0 $72
	db $ed                                           ; $4af8: $ed
	ld [hl], e                                       ; $4af9: $73
	adc $7d                                          ; $4afa: $ce $7d
	cp c                                             ; $4afc: $b9
	sbc $ff                                          ; $4afd: $de $ff
	sbc e                                            ; $4aff: $9b
	ld b, c                                          ; $4b00: $41
	ld a, a                                          ; $4b01: $7f
	ld a, a                                          ; $4b02: $7f
	jp $2e6a                                         ; $4b03: $c3 $6a $2e


	ld a, a                                          ; $4b06: $7f
	ld a, [$c073]                                    ; $4b07: $fa $73 $c0
	ld h, e                                          ; $4b0a: $63
	ld d, h                                          ; $4b0b: $54
	sbc c                                            ; $4b0c: $99
	ld [hl], c                                       ; $4b0d: $71
	rst $38                                          ; $4b0e: $ff
	adc a                                            ; $4b0f: $8f
	rst $38                                          ; $4b10: $ff
	cp $21                                           ; $4b11: $fe $21
	ld e, a                                          ; $4b13: $5f
	ldh a, [$7e]                                     ; $4b14: $f0 $7e
	ldh [$9e], a                                     ; $4b16: $e0 $9e
	rst AddAOntoHL                                          ; $4b18: $ef
	ld [hl], l                                       ; $4b19: $75
	sbc a                                            ; $4b1a: $9f
	ld h, e                                          ; $4b1b: $63
	ldh a, [rPCM34]                                  ; $4b1c: $f0 $77
	ld hl, sp+$7e                                    ; $4b1e: $f8 $7e
	ld e, h                                          ; $4b20: $5c
	ld h, [hl]                                       ; $4b21: $66
	cp h                                             ; $4b22: $bc
	ld a, e                                          ; $4b23: $7b
	inc d                                            ; $4b24: $14
	db $db                                           ; $4b25: $db
	rst $38                                          ; $4b26: $ff
	sbc h                                            ; $4b27: $9c
	ld [bc], a                                       ; $4b28: $02
	rlca                                             ; $4b29: $07
	ld [bc], a                                       ; $4b2a: $02
	ld h, [hl]                                       ; $4b2b: $66
	inc a                                            ; $4b2c: $3c
	call c, $7fff                                    ; $4b2d: $dc $ff $7f
	db $dd                                           ; $4b30: $dd
	ld a, e                                          ; $4b31: $7b
	db $db                                           ; $4b32: $db
	ld [hl], a                                       ; $4b33: $77
	ld a, [hl-]                                      ; $4b34: $3a
	ld h, [hl]                                       ; $4b35: $66
	inc hl                                           ; $4b36: $23
	sbc [hl]                                         ; $4b37: $9e
	db $fc                                           ; $4b38: $fc
	ld [hl], e                                       ; $4b39: $73
	ld h, e                                          ; $4b3a: $63
	ld [hl], e                                       ; $4b3b: $73
	sub d                                            ; $4b3c: $92
	ld [hl], e                                       ; $4b3d: $73
	rst SubAFromBC                                          ; $4b3e: $e7
	ld a, a                                          ; $4b3f: $7f

jr_03e_4b40:
	inc l                                            ; $4b40: $2c
	rst SubAFromDE                                          ; $4b41: $df
	ldh [$5b], a                                     ; $4b42: $e0 $5b

Call_03e_4b44:
jr_03e_4b44:
	ldh [$df], a                                     ; $4b44: $e0 $df
	rst $38                                          ; $4b46: $ff
	sbc $06                                          ; $4b47: $de $06
	ld l, [hl]                                       ; $4b49: $6e
	ld [hl], b                                       ; $4b4a: $70
	ld [hl], a                                       ; $4b4b: $77
	call c, $a37a                                    ; $4b4c: $dc $7a $a3
	sbc $01                                          ; $4b4f: $de $01
	ld l, a                                          ; $4b51: $6f
	cp [hl]                                          ; $4b52: $be
	ld [hl], c                                       ; $4b53: $71
	sbc d                                            ; $4b54: $9a
	cp $d5                                           ; $4b55: $fe $d5
	rst $38                                          ; $4b57: $ff
	sbc [hl]                                         ; $4b58: $9e
	nop                                              ; $4b59: $00
	sbc $40                                          ; $4b5a: $de $40
	push de                                          ; $4b5c: $d5
	rst $38                                          ; $4b5d: $ff
	sbc [hl]                                         ; $4b5e: $9e
	rrca                                             ; $4b5f: $0f
	sbc $10                                          ; $4b60: $de $10
	db $dd                                           ; $4b62: $dd
	rst $38                                          ; $4b63: $ff
	ld l, d                                          ; $4b64: $6a
	ld c, c                                          ; $4b65: $49
	ld h, e                                          ; $4b66: $63
	ld c, $9e                                        ; $4b67: $0e $9e
	jr jr_03e_4b44                                   ; $4b69: $18 $d9

	rst $38                                          ; $4b6b: $ff
	ld l, e                                          ; $4b6c: $6b
	or d                                             ; $4b6d: $b2
	ld [hl], a                                       ; $4b6e: $77
	or h                                             ; $4b6f: $b4
	sbc [hl]                                         ; $4b70: $9e
	add c                                            ; $4b71: $81
	ld l, h                                          ; $4b72: $6c
	inc sp                                           ; $4b73: $33
	ld l, h                                          ; $4b74: $6c
	inc l                                            ; $4b75: $2c

Jump_03e_4b76:
	ld l, [hl]                                       ; $4b76: $6e
	nop                                              ; $4b77: $00
	ld a, d                                          ; $4b78: $7a
	ld c, $9d                                        ; $4b79: $0e $9d
	ld hl, $6f20                                     ; $4b7b: $21 $20 $6f
	ldh a, [$9e]                                     ; $4b7e: $f0 $9e
	ld [hl], b                                       ; $4b80: $70
	ld l, e                                          ; $4b81: $6b
	xor a                                            ; $4b82: $af
	ld l, [hl]                                       ; $4b83: $6e
	ld e, $73                                        ; $4b84: $1e $73
	inc d                                            ; $4b86: $14
	ld l, e                                          ; $4b87: $6b
	ld e, $7b                                        ; $4b88: $1e $7b
	cp $5e                                           ; $4b8a: $fe $5e
	sbc [hl]                                         ; $4b8c: $9e

jr_03e_4b8d:
	ld a, e                                          ; $4b8d: $7b
	push af                                          ; $4b8e: $f5
	sbc [hl]                                         ; $4b8f: $9e
	ret nz                                           ; $4b90: $c0

	ld [hl], h                                       ; $4b91: $74
	ld d, b                                          ; $4b92: $50
	ld [hl], c                                       ; $4b93: $71
	inc c                                            ; $4b94: $0c
	call c, $deff                                    ; $4b95: $dc $ff $de
	ret nz                                           ; $4b98: $c0

	ld e, h                                          ; $4b99: $5c
	jp nc, $ae77                                     ; $4b9a: $d2 $77 $ae

	sbc l                                            ; $4b9d: $9d
	jr nz, jr_03e_4b40                               ; $4b9e: $20 $a0

	ld [hl], a                                       ; $4ba0: $77
	db $10                                           ; $4ba1: $10
	ld [hl], e                                       ; $4ba2: $73
	dec hl                                           ; $4ba3: $2b
	ld [hl], c                                       ; $4ba4: $71
	sbc $9e                                          ; $4ba5: $de $9e
	rra                                              ; $4ba7: $1f
	ld a, e                                          ; $4ba8: $7b
	ld e, [hl]                                       ; $4ba9: $5e
	ld a, l                                          ; $4baa: $7d
	ld [hl], d                                       ; $4bab: $72
	ld a, [hl]                                       ; $4bac: $7e
	ld e, d                                          ; $4bad: $5a
	sbc $ff                                          ; $4bae: $de $ff
	inc e                                            ; $4bb0: $1c
	nop                                              ; $4bb1: $00
	rst SubAFromHL                                          ; $4bb2: $d7
	inc sp                                           ; $4bb3: $33
	rst SubAFromDE                                          ; $4bb4: $df
	ld b, h                                          ; $4bb5: $44
	sbc [hl]                                         ; $4bb6: $9e
	ld b, e                                          ; $4bb7: $43
	sbc $33                                          ; $4bb8: $de $33
	sbc [hl]                                         ; $4bba: $9e
	inc [hl]                                         ; $4bbb: $34
	call c, Call_03e_4b44                            ; $4bbc: $dc $44 $4b
	or $9e                                           ; $4bbf: $f6 $9e
	ld d, h                                          ; $4bc1: $54
	ld c, a                                          ; $4bc2: $4f
	or $dc                                           ; $4bc3: $f6 $dc

jr_03e_4bc5:
	ld b, h                                          ; $4bc5: $44
	ld a, e                                          ; $4bc6: $7b
	or $cd                                           ; $4bc7: $f6 $cd
	ld h, [hl]                                       ; $4bc9: $66
	jp $c777                                         ; $4bca: $c3 $77 $c7


	adc c                                            ; $4bcd: $89
	reti                                             ; $4bce: $d9


	rst $38                                          ; $4bcf: $ff
	ld sp, hl                                        ; $4bd0: $f9
	rlca                                             ; $4bd1: $07
	ldh a, [$9c]                                     ; $4bd2: $f0 $9c
	cp a                                             ; $4bd4: $bf
	db $e3                                           ; $4bd5: $e3
	db $fc                                           ; $4bd6: $fc
	call c, $9cff                                    ; $4bd7: $dc $ff $9c
	ld a, a                                          ; $4bda: $7f
	rra                                              ; $4bdb: $1f
	inc bc                                           ; $4bdc: $03
	db $fc                                           ; $4bdd: $fc
	sbc d                                            ; $4bde: $9a
	jr nz, @-$26                                     ; $4bdf: $20 $d8

	ld a, b                                          ; $4be1: $78
	rst SubAFromDE                                          ; $4be2: $df
	ei                                               ; $4be3: $fb
	sbc $ff                                          ; $4be4: $de $ff
	sbc d                                            ; $4be6: $9a
	sbc h                                            ; $4be7: $9c
	rst SubAFromBC                                          ; $4be8: $e7
	rst $38                                          ; $4be9: $ff
	ccf                                              ; $4bea: $3f
	rlca                                             ; $4beb: $07
	ei                                               ; $4bec: $fb
	sub c                                            ; $4bed: $91
	ld [$7ce0], sp                                   ; $4bee: $08 $e0 $7c
	rst AddAOntoHL                                          ; $4bf1: $ef
	rst $38                                          ; $4bf2: $ff
	jr jr_03e_4b8d                                   ; $4bf3: $18 $98

	ld hl, sp-$08                                    ; $4bf5: $f8 $f8
	rst $38                                          ; $4bf7: $ff
	rst $38                                          ; $4bf8: $ff
	rra                                              ; $4bf9: $1f
	inc bc                                           ; $4bfa: $03
	db $10                                           ; $4bfb: $10
	cp $9b                                           ; $4bfc: $fe $9b
	add b                                            ; $4bfe: $80
	jr nc, jr_03e_4bc5                               ; $4bff: $30 $c4

	ld e, e                                          ; $4c01: $5b
	db $dd                                           ; $4c02: $dd
	db $10                                           ; $4c03: $10
	sbc d                                            ; $4c04: $9a
	sub b                                            ; $4c05: $90
	ldh a, [$3c]                                     ; $4c06: $f0 $3c
	daa                                              ; $4c08: $27
	nop                                              ; $4c09: $00
	jp c, $9e40                                      ; $4c0a: $da $40 $9e

	ld h, b                                          ; $4c0d: $60
	jp c, $9c20                                      ; $4c0e: $da $20 $9c

	jr jr_03e_4c17                                   ; $4c11: $18 $04

	dec b                                            ; $4c13: $05
	call c, $9c04                                    ; $4c14: $dc $04 $9c

jr_03e_4c17:
	sbc h                                            ; $4c17: $9c
	adc [hl]                                         ; $4c18: $8e
	add e                                            ; $4c19: $83
	call c, $df80                                    ; $4c1a: $dc $80 $df
	inc bc                                           ; $4c1d: $03
	add b                                            ; $4c1e: $80
	ld bc, $1040                                     ; $4c1f: $01 $40 $10
	ld bc, $0004                                     ; $4c22: $01 $04 $00
	rla                                              ; $4c25: $17
	ld de, $f190                                     ; $4c26: $11 $90 $f1
	add hl, sp                                       ; $4c29: $39
	inc e                                            ; $4c2a: $1c
	inc de                                           ; $4c2b: $13
	ld de, $ff7f                                     ; $4c2c: $11 $7f $ff
	ld l, a                                          ; $4c2f: $6f
	ld a, a                                          ; $4c30: $7f
	dec c                                            ; $4c31: $0d
	ld b, $01                                        ; $4c32: $06 $01
	add b                                            ; $4c34: $80
	add b                                            ; $4c35: $80
	ret nz                                           ; $4c36: $c0

	ldh a, [$38]                                     ; $4c37: $f0 $38
	ld e, $17                                        ; $4c39: $1e $17
	inc de                                           ; $4c3b: $13
	pop de                                           ; $4c3c: $d1
	rst FarCall                                          ; $4c3d: $f7
	sbc h                                            ; $4c3e: $9c
	ei                                               ; $4c3f: $fb
	db $fc                                           ; $4c40: $fc
	cp $7b                                           ; $4c41: $fe $7b
	add d                                            ; $4c43: $82
	ld a, a                                          ; $4c44: $7f
	sub h                                            ; $4c45: $94
	ld l, a                                          ; $4c46: $6f
	add c                                            ; $4c47: $81
	add b                                            ; $4c48: $80
	ld b, b                                          ; $4c49: $40
	ei                                               ; $4c4a: $fb
	db $fd                                           ; $4c4b: $fd
	nop                                              ; $4c4c: $00
	ld [bc], a                                       ; $4c4d: $02
	ccf                                              ; $4c4e: $3f
	ret nz                                           ; $4c4f: $c0

	rst SubAFromBC                                          ; $4c50: $e7
	rst FarCall                                          ; $4c51: $f7
	rst $38                                          ; $4c52: $ff
	rst $38                                          ; $4c53: $ff
	cp $7f                                           ; $4c54: $fe $7f
	ccf                                              ; $4c56: $3f
	db $10                                           ; $4c57: $10
	rrca                                             ; $4c58: $0f
	rlca                                             ; $4c59: $07
	ret nz                                           ; $4c5a: $c0

	db $fc                                           ; $4c5b: $fc
	jp nz, $bf7f                                     ; $4c5c: $c2 $7f $bf

	db $10                                           ; $4c5f: $10
	rst GetHLinHL                                          ; $4c60: $cf
	rst SubAFromBC                                          ; $4c61: $e7
	call nc, $fefc                                   ; $4c62: $d4 $fc $fe
	ld a, a                                          ; $4c65: $7f
	rst $38                                          ; $4c66: $ff
	rst SubAFromDE                                          ; $4c67: $df
	ld a, a                                          ; $4c68: $7f
	ld a, b                                          ; $4c69: $78
	adc a                                            ; $4c6a: $8f
	add b                                            ; $4c6b: $80
	ld b, b                                          ; $4c6c: $40
	nop                                              ; $4c6d: $00
	db $10                                           ; $4c6e: $10
	sub l                                            ; $4c6f: $95
	ret z                                            ; $4c70: $c8

	rst AddAOntoHL                                          ; $4c71: $ef
	rst SubAFromBC                                          ; $4c72: $e7
	add b                                            ; $4c73: $80
	ret nz                                           ; $4c74: $c0

	ld b, b                                          ; $4c75: $40
	or l                                             ; $4c76: $b5
	rst SubAFromDE                                          ; $4c77: $df
	set 5, a                                         ; $4c78: $cb $ef
	rst FarCall                                          ; $4c7a: $f7
	cp $9a                                           ; $4c7b: $fe $9a
	ld [bc], a                                       ; $4c7d: $02
	ld e, e                                          ; $4c7e: $5b
	ld bc, $fdfd                                     ; $4c7f: $01 $fd $fd
	cp $95                                           ; $4c82: $fe $95
	ld d, e                                          ; $4c84: $53
	ei                                               ; $4c85: $fb
	dec bc                                           ; $4c86: $0b
	rst $38                                          ; $4c87: $ff
	db $fd                                           ; $4c88: $fd
	nop                                              ; $4c89: $00
	ld c, $00                                        ; $4c8a: $0e $00
	ld [bc], a                                       ; $4c8c: $02
	ld d, l                                          ; $4c8d: $55
	ld a, e                                          ; $4c8e: $7b
	ld a, [de]                                       ; $4c8f: $1a
	ld a, e                                          ; $4c90: $7b
	ld hl, sp-$64                                    ; $4c91: $f8 $9c
	ld l, a                                          ; $4c93: $6f
	rst $38                                          ; $4c94: $ff
	ld a, e                                          ; $4c95: $7b
	ld a, e                                          ; $4c96: $7b
	ld hl, sp-$68                                    ; $4c97: $f8 $98
	ld l, a                                          ; $4c99: $6f
	nop                                              ; $4c9a: $00
	ld a, a                                          ; $4c9b: $7f

jr_03e_4c9c:
	ld a, a                                          ; $4c9c: $7f
	nop                                              ; $4c9d: $00
	ld a, a                                          ; $4c9e: $7f
	ccf                                              ; $4c9f: $3f
	ld [hl], a                                       ; $4ca0: $77
	ld hl, sp+$7f                                    ; $4ca1: $f8 $7f
	sbc c                                            ; $4ca3: $99
	ld a, a                                          ; $4ca4: $7f
	db $fd                                           ; $4ca5: $fd
	sub d                                            ; $4ca6: $92
	nop                                              ; $4ca7: $00
	ret z                                            ; $4ca8: $c8

	nop                                              ; $4ca9: $00
	sbc b                                            ; $4caa: $98
	rst SubAFromDE                                          ; $4cab: $df
	ld b, b                                          ; $4cac: $40
	rst SubAFromDE                                          ; $4cad: $df
	rst SubAFromDE                                          ; $4cae: $df
	nop                                              ; $4caf: $00
	ret z                                            ; $4cb0: $c8

	jr nz, @-$26                                     ; $4cb1: $20 $d8

	rst SubAFromDE                                          ; $4cb3: $df
	sbc $ff                                          ; $4cb4: $de $ff
	sub d                                            ; $4cb6: $92
	ld bc, $00c9                                     ; $4cb7: $01 $c9 $00
	nop                                              ; $4cba: $00
	di                                               ; $4cbb: $f3
	nop                                              ; $4cbc: $00
	rst SubAFromBC                                          ; $4cbd: $e7
	rst SubAFromBC                                          ; $4cbe: $e7
	ld bc, $02c9                                     ; $4cbf: $01 $c9 $02
	adc e                                            ; $4cc2: $8b
	rst FarCall                                          ; $4cc3: $f7
	ld a, e                                          ; $4cc4: $7b
	adc d                                            ; $4cc5: $8a
	ld [bc], a                                       ; $4cc6: $02
	ret nz                                           ; $4cc7: $c0

	inc bc                                           ; $4cc8: $03
	ldh a, [rVBK]                                    ; $4cc9: $f0 $4f
	ldh a, [$de]                                     ; $4ccb: $f0 $de
	cp $dc                                           ; $4ccd: $fe $dc
	db $fc                                           ; $4ccf: $fc
	reti                                             ; $4cd0: $d9


	inc bc                                           ; $4cd1: $03
	reti                                             ; $4cd2: $d9


	ld a, a                                          ; $4cd3: $7f
	ld sp, hl                                        ; $4cd4: $f9
	sbc h                                            ; $4cd5: $9c
	jr nz, jr_03e_4c9c                               ; $4cd6: $20 $c4

	ld sp, hl                                        ; $4cd8: $f9
	call c, $9dff                                    ; $4cd9: $dc $ff $9d
	ldh [$3c], a                                     ; $4cdc: $e0 $3c
	ld l, [hl]                                       ; $4cde: $6e
	sub d                                            ; $4cdf: $92
	sbc $04                                          ; $4ce0: $de $04
	sbc d                                            ; $4ce2: $9a
	inc h                                            ; $4ce3: $24
	ret nz                                           ; $4ce4: $c0

	ret z                                            ; $4ce5: $c8

	db $dd                                           ; $4ce6: $dd
	rst JumpTable                                          ; $4ce7: $c7
	sbc $80                                          ; $4ce8: $de $80
	ld a, a                                          ; $4cea: $7f
	db $ed                                           ; $4ceb: $ed
	sbc h                                            ; $4cec: $9c
	scf                                              ; $4ced: $37
	ld e, $1f                                        ; $4cee: $1e $1f
	jp c, $9e01                                      ; $4cf0: $da $01 $9e

	dec h                                            ; $4cf3: $25
	db $db                                           ; $4cf4: $db
	db $10                                           ; $4cf5: $10
	sbc l                                            ; $4cf6: $9d
	ldh a, [$d8]                                     ; $4cf7: $f0 $d8
	cp $9e                                           ; $4cf9: $fe $9e
	ld bc, $02dd                                     ; $4cfb: $01 $dd $02
	sbc e                                            ; $4cfe: $9b
	ld [hl], c                                       ; $4cff: $71
	add hl, de                                       ; $4d00: $19
	rra                                              ; $4d01: $1f
	inc de                                           ; $4d02: $13
	db $dd                                           ; $4d03: $dd
	ld de, $3f8e                                     ; $4d04: $11 $8e $3f
	ld e, e                                          ; $4d07: $5b
	ld e, l                                          ; $4d08: $5d
	rlca                                             ; $4d09: $07
	pop de                                           ; $4d0a: $d1
	ld b, b                                          ; $4d0b: $40
	ld d, b                                          ; $4d0c: $50
	ld d, h                                          ; $4d0d: $54
	ld [hl], b                                       ; $4d0e: $70
	inc a                                            ; $4d0f: $3c
	ld c, $53                                        ; $4d10: $0e $53
	ld b, e                                          ; $4d12: $43
	ld [hl-], a                                      ; $4d13: $32
	ld a, [bc]                                       ; $4d14: $0a
	ld [bc], a                                       ; $4d15: $02
	ld hl, sp+$7a                                    ; $4d16: $f8 $7a
	or d                                             ; $4d18: $b2
	ld a, [hl]                                       ; $4d19: $7e
	ret c                                            ; $4d1a: $d8

	sbc e                                            ; $4d1b: $9b
	adc a                                            ; $4d1c: $8f
	cp e                                             ; $4d1d: $bb
	inc bc                                           ; $4d1e: $03
	ld bc, $587a                                     ; $4d1f: $01 $7a $58
	adc a                                            ; $4d22: $8f
	ld h, b                                          ; $4d23: $60
	jr nc, jr_03e_4d2e                               ; $4d24: $30 $08

	ld [bc], a                                       ; $4d26: $02
	ld sp, hl                                        ; $4d27: $f9
	ld [hl], b                                       ; $4d28: $70
	sbc [hl]                                         ; $4d29: $9e
	rst GetHLinHL                                          ; $4d2a: $cf
	rst FarCall                                          ; $4d2b: $f7
	ld hl, sp-$05                                    ; $4d2c: $f8 $fb

jr_03e_4d2e:
	inc de                                           ; $4d2e: $13
	rst $38                                          ; $4d2f: $ff
	ld a, h                                          ; $4d30: $7c
	ld e, $0f                                        ; $4d31: $1e $0f
	ld a, e                                          ; $4d33: $7b
	sbc l                                            ; $4d34: $9d
	sub e                                            ; $4d35: $93
	ld [de], a                                       ; $4d36: $12
	ld sp, hl                                        ; $4d37: $f9
	db $fc                                           ; $4d38: $fc
	ld a, [hl]                                       ; $4d39: $7e
	ccf                                              ; $4d3a: $3f
	cp a                                             ; $4d3b: $bf
	nop                                              ; $4d3c: $00
	rst $38                                          ; $4d3d: $ff
	di                                               ; $4d3e: $f3
	rst $38                                          ; $4d3f: $ff
	db $fd                                           ; $4d40: $fd
	ld a, [hl]                                       ; $4d41: $7e
	ld [hl], a                                       ; $4d42: $77
	ld e, d                                          ; $4d43: $5a
	sbc e                                            ; $4d44: $9b
	ld b, h                                          ; $4d45: $44
	cp $fe                                           ; $4d46: $fe $fe
	rst $38                                          ; $4d48: $ff
	ld a, d                                          ; $4d49: $7a
	ld [$927e], a                                    ; $4d4a: $ea $7e $92
	ld [hl], l                                       ; $4d4d: $75
	db $fc                                           ; $4d4e: $fc
	ld a, e                                          ; $4d4f: $7b
	ldh a, [$9e]                                     ; $4d50: $f0 $9e
	sub c                                            ; $4d52: $91
	ld a, e                                          ; $4d53: $7b
	ld sp, hl                                        ; $4d54: $f9
	ld [hl], a                                       ; $4d55: $77
	ldh a, [$73]                                     ; $4d56: $f0 $73
	pop af                                           ; $4d58: $f1
	ld a, e                                          ; $4d59: $7b
	ldh a, [$9e]                                     ; $4d5a: $f0 $9e
	and [hl]                                         ; $4d5c: $a6
	db $dd                                           ; $4d5d: $dd
	cp a                                             ; $4d5e: $bf
	ld l, a                                          ; $4d5f: $6f
	ldh a, [$73]                                     ; $4d60: $f0 $73
	ld a, [hl+]                                      ; $4d62: $2a
	sbc h                                            ; $4d63: $9c
	ld d, d                                          ; $4d64: $52
	rst $38                                          ; $4d65: $ff
	cp a                                             ; $4d66: $bf
	ld [hl], a                                       ; $4d67: $77
	ld hl, sp+$63                                    ; $4d68: $f8 $63
	ldh a, [$9a]                                     ; $4d6a: $f0 $9a
	xor l                                            ; $4d6c: $ad
	rst AddAOntoHL                                          ; $4d6d: $ef
	rst GetHLinHL                                          ; $4d6e: $cf
	rst SubAFromDE                                          ; $4d6f: $df
	rst SubAFromDE                                          ; $4d70: $df
	ld e, e                                          ; $4d71: $5b
	ldh a, [$dc]                                     ; $4d72: $f0 $dc
	rst $38                                          ; $4d74: $ff
	sbc h                                            ; $4d75: $9c
	rrca                                             ; $4d76: $0f
	adc b                                            ; $4d77: $88
	add b                                            ; $4d78: $80
	db $fc                                           ; $4d79: $fc
	sbc [hl]                                         ; $4d7a: $9e
	ret nz                                           ; $4d7b: $c0

	reti                                             ; $4d7c: $d9


	rst $38                                          ; $4d7d: $ff
	sbc [hl]                                         ; $4d7e: $9e
	rra                                              ; $4d7f: $1f
	ld a, [$809e]                                    ; $4d80: $fa $9e $80
	reti                                             ; $4d83: $d9


	rst $38                                          ; $4d84: $ff
	ld a, [hl]                                       ; $4d85: $7e
	ld [hl], b                                       ; $4d86: $70
	ei                                               ; $4d87: $fb
	ld [hl], a                                       ; $4d88: $77
	sbc $9d                                          ; $4d89: $de $9d
	xor d                                            ; $4d8b: $aa
	push de                                          ; $4d8c: $d5
	ld a, e                                          ; $4d8d: $7b
	add e                                            ; $4d8e: $83
	ld e, [hl]                                       ; $4d8f: $5e
	ret nz                                           ; $4d90: $c0

	sbc d                                            ; $4d91: $9a
	db $fd                                           ; $4d92: $fd
	xor d                                            ; $4d93: $aa
	ld d, l                                          ; $4d94: $55
	xor d                                            ; $4d95: $aa
	push af                                          ; $4d96: $f5
	ld e, e                                          ; $4d97: $5b
	ldh a, [$99]                                     ; $4d98: $f0 $99
	ld d, a                                          ; $4d9a: $57
	xor e                                            ; $4d9b: $ab
	ld d, e                                          ; $4d9c: $53
	and e                                            ; $4d9d: $a3
	ld d, e                                          ; $4d9e: $53
	xor e                                            ; $4d9f: $ab
	reti                                             ; $4da0: $d9


	inc bc                                           ; $4da1: $03
	sub a                                            ; $4da2: $97
	cpl                                              ; $4da3: $2f
	ld d, l                                          ; $4da4: $55
	dec hl                                           ; $4da5: $2b
	ld d, a                                          ; $4da6: $57
	ld a, [hl+]                                      ; $4da7: $2a
	dec d                                            ; $4da8: $15
	ld a, [hl-]                                      ; $4da9: $3a
	ld h, b                                          ; $4daa: $60
	ld a, d                                          ; $4dab: $7a
	ld sp, hl                                        ; $4dac: $f9
	adc e                                            ; $4dad: $8b
	rrca                                             ; $4dae: $0f
	jr jr_03e_4de1                                   ; $4daf: $18 $30

	jr nc, @+$22                                     ; $4db1: $30 $20

	rst $38                                          ; $4db3: $ff
	dec hl                                           ; $4db4: $2b
	ld b, c                                          ; $4db5: $41
	ld l, h                                          ; $4db6: $6c
	ldh [$60], a                                     ; $4db7: $e0 $60
	ld h, b                                          ; $4db9: $60
	ldh [c], a                                       ; $4dba: $e2
	nop                                              ; $4dbb: $00
	ld b, b                                          ; $4dbc: $40
	db $fc                                           ; $4dbd: $fc
	jp $c040                                         ; $4dbe: $c3 $40 $c0


	ret nz                                           ; $4dc1: $c0

	ld a, d                                          ; $4dc2: $7a
	ld h, $99                                        ; $4dc3: $26 $99
	ld e, a                                          ; $4dc5: $5f
	cpl                                              ; $4dc6: $2f
	push bc                                          ; $4dc7: $c5
	ld [$0201], sp                                   ; $4dc8: $08 $01 $02
	ld [hl], a                                       ; $4dcb: $77
	and h                                            ; $4dcc: $a4
	sbc b                                            ; $4dcd: $98
	jr c, jr_03e_4dd7                                ; $4dce: $38 $07

	nop                                              ; $4dd0: $00
	ld bc, $dcf0                                     ; $4dd1: $01 $f0 $dc
	di                                               ; $4dd4: $f3
	ld [hl], a                                       ; $4dd5: $77
	dec h                                            ; $4dd6: $25

jr_03e_4dd7:
	ld a, e                                          ; $4dd7: $7b
	adc [hl]                                         ; $4dd8: $8e
	adc h                                            ; $4dd9: $8c
	rrca                                             ; $4dda: $0f
	ld bc, $8000                                     ; $4ddb: $01 $00 $80
	ret nz                                           ; $4dde: $c0

	ret nz                                           ; $4ddf: $c0

	ld [bc], a                                       ; $4de0: $02

jr_03e_4de1:
	ld [bc], a                                       ; $4de1: $02
	add h                                            ; $4de2: $84
	ld [hl], b                                       ; $4de3: $70
	sbc $fd                                          ; $4de4: $de $fd
	rst $38                                          ; $4de6: $ff
	rst $38                                          ; $4de7: $ff
	sub c                                            ; $4de8: $91
	pop af                                           ; $4de9: $f1
	ei                                               ; $4dea: $fb
	rst $38                                          ; $4deb: $ff
	ccf                                              ; $4dec: $3f
	ld a, c                                          ; $4ded: $79
	adc h                                            ; $4dee: $8c
	adc l                                            ; $4def: $8d
	db $10                                           ; $4df0: $10
	ld d, b                                          ; $4df1: $50
	ld d, b                                          ; $4df2: $50
	stop                                             ; $4df3: $10 $00
	ret nz                                           ; $4df5: $c0

	ld sp, $43e6                                     ; $4df6: $31 $e6 $43
	ld [bc], a                                       ; $4df9: $02
	ld [bc], a                                       ; $4dfa: $02
	ld b, d                                          ; $4dfb: $42
	ldh a, [c]                                       ; $4dfc: $f2
	cp $fe                                           ; $4dfd: $fe $fe
	rra                                              ; $4dff: $1f
	ld b, [hl]                                       ; $4e00: $46
	pop bc                                           ; $4e01: $c1
	db $dd                                           ; $4e02: $dd
	ret nz                                           ; $4e03: $c0

	ld a, l                                          ; $4e04: $7d
	sbc e                                            ; $4e05: $9b
	sub d                                            ; $4e06: $92
	rst GetHLinHL                                          ; $4e07: $cf
	ld l, e                                          ; $4e08: $6b
	ld e, e                                          ; $4e09: $5b
	ld c, [hl]                                       ; $4e0a: $4e
	ld c, e                                          ; $4e0b: $4b
	ld c, d                                          ; $4e0c: $4a
	jp z, $f8fa                                      ; $4e0d: $ca $fa $f8

	db $fc                                           ; $4e10: $fc
	cp b                                             ; $4e11: $b8
	inc a                                            ; $4e12: $3c
	jr c, jr_03e_4e90                                ; $4e13: $38 $7b

	cp $9d                                           ; $4e15: $fe $9d
	rlca                                             ; $4e17: $07
	add a                                            ; $4e18: $87
	db $db                                           ; $4e19: $db
	rst JumpTable                                          ; $4e1a: $c7
	sbc [hl]                                         ; $4e1b: $9e
	rra                                              ; $4e1c: $1f
	jp c, $df08                                      ; $4e1d: $da $08 $df

	rst $38                                          ; $4e20: $ff
	db $db                                           ; $4e21: $db
	ld hl, sp-$62                                    ; $4e22: $f8 $9e
	rst $38                                          ; $4e24: $ff
	ld h, e                                          ; $4e25: $63
	ldh a, [rOCPD]                                   ; $4e26: $f0 $6b
	ld hl, sp+$03                                    ; $4e28: $f8 $03
	ldh a, [rIF]                                     ; $4e2a: $f0 $0f
	ldh a, [$9a]                                     ; $4e2c: $f0 $9a
	ld b, b                                          ; $4e2e: $40
	and b                                            ; $4e2f: $a0
	ld b, b                                          ; $4e30: $40
	nop                                              ; $4e31: $00
	nop                                              ; $4e32: $00
	ld a, d                                          ; $4e33: $7a
	cp $4d                                           ; $4e34: $fe $4d
	cp b                                             ; $4e36: $b8
	sbc [hl]                                         ; $4e37: $9e
	db $dd                                           ; $4e38: $dd
	ld c, e                                          ; $4e39: $4b
	ldh a, [$9e]                                     ; $4e3a: $f0 $9e
	ld d, h                                          ; $4e3c: $54
	halt                                             ; $4e3d: $76
	ld a, e                                          ; $4e3e: $7b
	ld l, [hl]                                       ; $4e3f: $6e
	and [hl]                                         ; $4e40: $a6
	sbc [hl]                                         ; $4e41: $9e
	ld [$9efc], sp                                   ; $4e42: $08 $fc $9e
	ld a, [$9562]                                    ; $4e45: $fa $62 $95
	ld a, h                                          ; $4e48: $7c
	res 3, [hl]                                      ; $4e49: $cb $9e
	rlca                                             ; $4e4b: $07
	ld a, e                                          ; $4e4c: $7b
	inc bc                                           ; $4e4d: $03
	ld a, d                                          ; $4e4e: $7a
	add b                                            ; $4e4f: $80
	db $db                                           ; $4e50: $db
	rst $38                                          ; $4e51: $ff
	rst SubAFromDE                                          ; $4e52: $df
	db $fc                                           ; $4e53: $fc
	sbc c                                            ; $4e54: $99
	inc a                                            ; $4e55: $3c
	ldh a, [$be]                                     ; $4e56: $f0 $be
	ld d, h                                          ; $4e58: $54
	ld a, [bc]                                       ; $4e59: $0a
	nop                                              ; $4e5a: $00
	sbc $01                                          ; $4e5b: $de $01
	ld a, a                                          ; $4e5d: $7f
	ld a, [bc]                                       ; $4e5e: $0a
	rst SubAFromDE                                          ; $4e5f: $df
	cp $7c                                           ; $4e60: $fe $7c
	ldh [hDisp1_WY], a                                     ; $4e62: $e0 $95
	xor b                                            ; $4e64: $a8
	ld d, l                                          ; $4e65: $55
	ld a, [hl+]                                      ; $4e66: $2a
	ld a, [hl+]                                      ; $4e67: $2a
	ld d, l                                          ; $4e68: $55
	dec hl                                           ; $4e69: $2b
	ld a, b                                          ; $4e6a: $78
	ld b, b                                          ; $4e6b: $40
	ld b, b                                          ; $4e6c: $40
	add b                                            ; $4e6d: $80
	ld a, d                                          ; $4e6e: $7a
	ld [hl], e                                       ; $4e6f: $73
	sub h                                            ; $4e70: $94
	db $fc                                           ; $4e71: $fc
	ret nz                                           ; $4e72: $c0

	and $e4                                          ; $4e73: $e6 $e4
	ld h, h                                          ; $4e75: $64
	call nz, $dcc4                                   ; $4e76: $c4 $c4 $dc
	adc b                                            ; $4e79: $88
	db $fc                                           ; $4e7a: $fc
	ld b, e                                          ; $4e7b: $43
	db $dd                                           ; $4e7c: $dd
	ld b, d                                          ; $4e7d: $42

jr_03e_4e7e:
	adc h                                            ; $4e7e: $8c
	ld h, b                                          ; $4e7f: $60
	ld a, a                                          ; $4e80: $7f
	inc bc                                           ; $4e81: $03
	inc h                                            ; $4e82: $24
	or $09                                           ; $4e83: $f6 $09
	rra                                              ; $4e85: $1f
	ld e, e                                          ; $4e86: $5b
	cp l                                             ; $4e87: $bd
	inc a                                            ; $4e88: $3c
	rst GetHLinHL                                          ; $4e89: $cf
	jp $0409                                         ; $4e8a: $c3 $09 $04


	jr nz, jr_03e_4eb3                               ; $4e8d: $20 $24

	nop                                              ; $4e8f: $00

jr_03e_4e90:
	ret nz                                           ; $4e90: $c0

	ldh a, [$78]                                     ; $4e91: $f0 $78
	adc e                                            ; $4e93: $8b
	ld a, h                                          ; $4e94: $7c
	add e                                            ; $4e95: $83
	sub h                                            ; $4e96: $94
	rst FarCall                                          ; $4e97: $f7
	di                                               ; $4e98: $f3
	rst $38                                          ; $4e99: $ff
	ret nz                                           ; $4e9a: $c0

	add b                                            ; $4e9b: $80
	ld b, b                                          ; $4e9c: $40
	jr nz, jr_03e_4eaf                               ; $4e9d: $20 $10

	nop                                              ; $4e9f: $00
	ld [$753f], sp                                   ; $4ea0: $08 $3f $75
	add sp, -$64                                     ; $4ea3: $e8 $9c
	xor a                                            ; $4ea5: $af
	ld d, l                                          ; $4ea6: $55
	ld a, [$8874]                                    ; $4ea7: $fa $74 $88
	db $fd                                           ; $4eaa: $fd
	sbc [hl]                                         ; $4eab: $9e
	ld hl, sp+$7a                                    ; $4eac: $f8 $7a
	or l                                             ; $4eae: $b5

jr_03e_4eaf:
	ld a, e                                          ; $4eaf: $7b
	xor $9d                                          ; $4eb0: $ee $9d
	xor e                                            ; $4eb2: $ab

jr_03e_4eb3:
	rst $38                                          ; $4eb3: $ff
	ld l, h                                          ; $4eb4: $6c
	ld b, c                                          ; $4eb5: $41
	ld a, e                                          ; $4eb6: $7b
	rst AddAOntoHL                                          ; $4eb7: $ef
	ld l, [hl]                                       ; $4eb8: $6e
	sub d                                            ; $4eb9: $92
	ld a, a                                          ; $4eba: $7f
	sub l                                            ; $4ebb: $95
	halt                                             ; $4ebc: $76
	sub b                                            ; $4ebd: $90
	cp $97                                           ; $4ebe: $fe $97
	jr c, jr_03e_4e7e                                ; $4ec0: $38 $bc

	cp b                                             ; $4ec2: $b8
	cp h                                             ; $4ec3: $bc
	ld hl, sp-$19                                    ; $4ec4: $f8 $e7
	push de                                          ; $4ec6: $d5
	ret nz                                           ; $4ec7: $c0

	db $dd                                           ; $4ec8: $dd
	rst JumpTable                                          ; $4ec9: $c7
	sub l                                            ; $4eca: $95
	rlca                                             ; $4ecb: $07
	rra                                              ; $4ecc: $1f
	ccf                                              ; $4ecd: $3f
	ccf                                              ; $4ece: $3f
	rrca                                             ; $4ecf: $0f
	rrca                                             ; $4ed0: $0f
	ccf                                              ; $4ed1: $3f
	ccf                                              ; $4ed2: $3f
	ld d, l                                          ; $4ed3: $55
	xor d                                            ; $4ed4: $aa
	ld [hl], h                                       ; $4ed5: $74
	ld e, [hl]                                       ; $4ed6: $5e
	ld h, e                                          ; $4ed7: $63
	ld c, [hl]                                       ; $4ed8: $4e
	sbc [hl]                                         ; $4ed9: $9e
	rst $38                                          ; $4eda: $ff
	ld l, a                                          ; $4edb: $6f
	ldh a, [$60]                                     ; $4edc: $f0 $60
	push bc                                          ; $4ede: $c5
	inc bc                                           ; $4edf: $03
	ldh a, [rAUD2ENV]                                ; $4ee0: $f0 $17
	ldh a, [$9d]                                     ; $4ee2: $f0 $9d
	ld d, l                                          ; $4ee4: $55
	and b                                            ; $4ee5: $a0
	ld c, h                                          ; $4ee6: $4c
	ld a, b                                          ; $4ee7: $78
	sbc h                                            ; $4ee8: $9c
	ld d, l                                          ; $4ee9: $55
	ld a, [bc]                                       ; $4eea: $0a
	ld bc, $0477                                     ; $4eeb: $01 $77 $04
	ld e, a                                          ; $4eee: $5f
	ldh a, [hDisp0_SCY]                                     ; $4eef: $f0 $83
	xor d                                            ; $4ef1: $aa
	ld b, b                                          ; $4ef2: $40
	sbc b                                            ; $4ef3: $98
	call c, $a990                                    ; $4ef4: $dc $90 $a9
	sub b                                            ; $4ef7: $90
	rst $38                                          ; $4ef8: $ff
	rst $38                                          ; $4ef9: $ff
	sub d                                            ; $4efa: $92
	sbc l                                            ; $4efb: $9d
	cp a                                             ; $4efc: $bf
	sub b                                            ; $4efd: $90
	xor b                                            ; $4efe: $a8
	sub b                                            ; $4eff: $90
	rst $38                                          ; $4f00: $ff
	xor d                                            ; $4f01: $aa
	dec b                                            ; $4f02: $05
	nop                                              ; $4f03: $00
	rst SubAFromHL                                          ; $4f04: $d7
	dec [hl]                                         ; $4f05: $35
	dec hl                                           ; $4f06: $2b
	ld [hl], a                                       ; $4f07: $77
	rst $38                                          ; $4f08: $ff
	rst $38                                          ; $4f09: $ff
	xor a                                            ; $4f0a: $af
	ld d, e                                          ; $4f0b: $53
	rst $38                                          ; $4f0c: $ff
	sbc $41                                          ; $4f0d: $de $41
	ld a, a                                          ; $4f0f: $7f
	ldh a, [$7e]                                     ; $4f10: $f0 $7e
	ldh [$9b], a                                     ; $4f12: $e0 $9b
	ld h, l                                          ; $4f14: $65
	ld a, [hl+]                                      ; $4f15: $2a
	ld d, b                                          ; $4f16: $50
	ld bc, $b676                                     ; $4f17: $01 $76 $b6
	rst SubAFromDE                                          ; $4f1a: $df
	ccf                                              ; $4f1b: $3f
	add e                                            ; $4f1c: $83
	cp a                                             ; $4f1d: $bf
	ld a, $e3                                        ; $4f1e: $3e $e3
	sbc a                                            ; $4f20: $9f
	ld a, a                                          ; $4f21: $7f
	ld e, e                                          ; $4f22: $5b
	ld de, $9111                                     ; $4f23: $11 $11 $91
	ld sp, $e0fc                                     ; $4f26: $31 $fc $e0
	add b                                            ; $4f29: $80
	add c                                            ; $4f2a: $81
	add e                                            ; $4f2b: $83
	add e                                            ; $4f2c: $83
	inc bc                                           ; $4f2d: $03
	inc bc                                           ; $4f2e: $03
	ccf                                              ; $4f2f: $3f
	rst $38                                          ; $4f30: $ff
	ld e, a                                          ; $4f31: $5f
	xor [hl]                                         ; $4f32: $ae
	ld d, l                                          ; $4f33: $55
	xor [hl]                                         ; $4f34: $ae
	ld d, l                                          ; $4f35: $55
	ld b, $00                                        ; $4f36: $06 $00
	rrca                                             ; $4f38: $0f
	db $db                                           ; $4f39: $db
	rst $38                                          ; $4f3a: $ff
	sbc e                                            ; $4f3b: $9b
	add b                                            ; $4f3c: $80
	ldh a, [rIE]                                     ; $4f3d: $f0 $ff
	xor a                                            ; $4f3f: $af
	ld a, e                                          ; $4f40: $7b
	add b                                            ; $4f41: $80
	sbc l                                            ; $4f42: $9d
	adc d                                            ; $4f43: $8a
	rra                                              ; $4f44: $1f
	jp c, $96ff                                      ; $4f45: $da $ff $96

	rrca                                             ; $4f48: $0f
	nop                                              ; $4f49: $00
	ldh [c], a                                       ; $4f4a: $e2
	xor e                                            ; $4f4b: $ab
	ld d, l                                          ; $4f4c: $55
	xor d                                            ; $4f4d: $aa
	ld d, h                                          ; $4f4e: $54
	and b                                            ; $4f4f: $a0
	ldh a, [$da]                                     ; $4f50: $f0 $da
	rst $38                                          ; $4f52: $ff
	add a                                            ; $4f53: $87
	inc b                                            ; $4f54: $04
	inc e                                            ; $4f55: $1c
	inc [hl]                                         ; $4f56: $34
	ld [hl-], a                                      ; $4f57: $32
	jr c, jr_03e_4f97                                ; $4f58: $38 $3d

	dec e                                            ; $4f5a: $1d
	ld [hl], c                                       ; $4f5b: $71
	rst AddAOntoHL                                          ; $4f5c: $ef
	rst AddAOntoHL                                          ; $4f5d: $ef
	db $e3                                           ; $4f5e: $e3
	jp $e1c1                                         ; $4f5f: $c3 $c1 $e1


	pop af                                           ; $4f62: $f1
	ret nz                                           ; $4f63: $c0

	ld a, [bc]                                       ; $4f64: $0a
	dec d                                            ; $4f65: $15
	ld a, [hl+]                                      ; $4f66: $2a
	db $fd                                           ; $4f67: $fd
	cp a                                             ; $4f68: $bf
	ld bc, $79fa                                     ; $4f69: $01 $fa $79
	reti                                             ; $4f6c: $d9


	rst $38                                          ; $4f6d: $ff
	sbc e                                            ; $4f6e: $9b
	and b                                            ; $4f6f: $a0
	ld a, l                                          ; $4f70: $7d
	xor d                                            ; $4f71: $aa
	ld d, l                                          ; $4f72: $55
	ld [hl], a                                       ; $4f73: $77
	ccf                                              ; $4f74: $3f
	ld h, d                                          ; $4f75: $62
	jr nz, @-$65                                     ; $4f76: $20 $99

	ld b, b                                          ; $4f78: $40
	xor d                                            ; $4f79: $aa
	ld d, l                                          ; $4f7a: $55
	cp $ff                                           ; $4f7b: $fe $ff
	cp $72                                           ; $4f7d: $fe $72
	xor c                                            ; $4f7f: $a9
	ld l, [hl]                                       ; $4f80: $6e
	db $10                                           ; $4f81: $10
	sbc c                                            ; $4f82: $99
	xor b                                            ; $4f83: $a8
	ld d, b                                          ; $4f84: $50
	xor [hl]                                         ; $4f85: $ae
	push de                                          ; $4f86: $d5
	xor d                                            ; $4f87: $aa
	ld d, b                                          ; $4f88: $50
	ld e, a                                          ; $4f89: $5f
	ldh a, [$99]                                     ; $4f8a: $f0 $99
	dec bc                                           ; $4f8c: $0b
	dec de                                           ; $4f8d: $1b
	xor [hl]                                         ; $4f8e: $ae
	ld a, c                                          ; $4f8f: $79
	or b                                             ; $4f90: $b0
	dec e                                            ; $4f91: $1d
	sbc $ff                                          ; $4f92: $de $ff
	rst SubAFromDE                                          ; $4f94: $df
	di                                               ; $4f95: $f3
	sbc [hl]                                         ; $4f96: $9e

jr_03e_4f97:
	pop af                                           ; $4f97: $f1
	ld a, b                                          ; $4f98: $78
	ret c                                            ; $4f99: $d8

	ld a, c                                          ; $4f9a: $79
	call nc, $e59b                                   ; $4f9b: $d4 $9b $e5
	ld a, a                                          ; $4f9e: $7f
	ld bc, $71ba                                     ; $4f9f: $01 $ba $71
	db $f4                                           ; $4fa2: $f4
	sbc [hl]                                         ; $4fa3: $9e
	adc a                                            ; $4fa4: $8f
	ld a, b                                          ; $4fa5: $78
	xor b                                            ; $4fa6: $a8
	ld [hl], b                                       ; $4fa7: $70
	jp nz, Jump_03e_579e                             ; $4fa8: $c2 $9e $57

	ld e, l                                          ; $4fab: $5d
	ret nc                                           ; $4fac: $d0

	ld a, a                                          ; $4fad: $7f
	ldh a, [$9c]                                     ; $4fae: $f0 $9c
	xor h                                            ; $4fb0: $ac
	ld d, a                                          ; $4fb1: $57
	rst $38                                          ; $4fb2: $ff
	ld [hl], c                                       ; $4fb3: $71
	ret nc                                           ; $4fb4: $d0

	sbc $f8                                          ; $4fb5: $de $f8
	sbc l                                            ; $4fb7: $9d
	ld a, [$7bef]                                    ; $4fb8: $fa $ef $7b
	ldh a, [$9a]                                     ; $4fbb: $f0 $9a
	ld a, [de]                                       ; $4fbd: $1a
	db $ed                                           ; $4fbe: $ed
	rst AddAOntoHL                                          ; $4fbf: $ef
	adc a                                            ; $4fc0: $8f
	ld [hl], b                                       ; $4fc1: $70
	ld [hl], a                                       ; $4fc2: $77
	pop de                                           ; $4fc3: $d1
	sbc h                                            ; $4fc4: $9c
	rrca                                             ; $4fc5: $0f
	rra                                              ; $4fc6: $1f
	rra                                              ; $4fc7: $1f
	ld [hl], e                                       ; $4fc8: $73
	ret nz                                           ; $4fc9: $c0

	ld a, e                                          ; $4fca: $7b
	ld a, a                                          ; $4fcb: $7f
	sbc [hl]                                         ; $4fcc: $9e
	adc d                                            ; $4fcd: $8a
	ld c, l                                          ; $4fce: $4d
	and b                                            ; $4fcf: $a0
	ld e, [hl]                                       ; $4fd0: $5e
	ret nz                                           ; $4fd1: $c0

	ld b, a                                          ; $4fd2: $47
	ldh a, [$9c]                                     ; $4fd3: $f0 $9c
	xor c                                            ; $4fd5: $a9
	sub l                                            ; $4fd6: $95
	xor e                                            ; $4fd7: $ab
	ld [hl], e                                       ; $4fd8: $73
	cp $7e                                           ; $4fd9: $fe $7e
	add $7f                                          ; $4fdb: $c6 $7f
	cp $9e                                           ; $4fdd: $fe $9e
	and b                                            ; $4fdf: $a0
	ld a, e                                          ; $4fe0: $7b
	cp $9d                                           ; $4fe1: $fe $9d
	ld a, [hl+]                                      ; $4fe3: $2a
	halt                                             ; $4fe4: $76
	ld a, e                                          ; $4fe5: $7b
	cp $99                                           ; $4fe6: $fe $99
	ld [hl], d                                       ; $4fe8: $72
	ld [hl+], a                                      ; $4fe9: $22
	ld [hl-], a                                      ; $4fea: $32
	ld bc, $0040                                     ; $4feb: $01 $40 $00
	ld a, e                                          ; $4fee: $7b
	cp $7e                                           ; $4fef: $fe $7e
	sbc b                                            ; $4ff1: $98
	add a                                            ; $4ff2: $87
	dec b                                            ; $4ff3: $05
	ld b, $0f                                        ; $4ff4: $06 $0f
	inc c                                            ; $4ff6: $0c
	ld [$1018], sp                                   ; $4ff7: $08 $18 $10
	jr nz, jr_03e_503a                               ; $4ffa: $20 $3e

	dec a                                            ; $4ffc: $3d
	add hl, sp                                       ; $4ffd: $39
	inc sp                                           ; $4ffe: $33
	or a                                             ; $4fff: $b7
	and a                                            ; $5000: $a7
	adc a                                            ; $5001: $8f
	sbc a                                            ; $5002: $9f
	or c                                             ; $5003: $b1
	or b                                             ; $5004: $b0
	or c                                             ; $5005: $b1
	or c                                             ; $5006: $b1
	and c                                            ; $5007: $a1
	and c                                            ; $5008: $a1
	sub c                                            ; $5009: $91
	add c                                            ; $500a: $81
	reti                                             ; $500b: $d9


	inc bc                                           ; $500c: $03
	ld a, a                                          ; $500d: $7f
	ldh [$7b], a                                     ; $500e: $e0 $7b
	cp $9d                                           ; $5010: $fe $9d
	ld [bc], a                                       ; $5012: $02
	inc b                                            ; $5013: $04
	ld d, a                                          ; $5014: $57
	and b                                            ; $5015: $a0
	rst SubAFromDE                                          ; $5016: $df
	ld bc, $039c                                     ; $5017: $01 $9c $03
	rlca                                             ; $501a: $07
	dec bc                                           ; $501b: $0b
	ld [hl], c                                       ; $501c: $71
	call z, $fe80                                    ; $501d: $cc $80 $fe
	db $fc                                           ; $5020: $fc
	db $fc                                           ; $5021: $fc
	nop                                              ; $5022: $00
	ld [hl], b                                       ; $5023: $70
	ld hl, sp-$10                                    ; $5024: $f8 $f0
	ld e, b                                          ; $5026: $58
	ld a, $2e                                        ; $5027: $3e $2e
	add e                                            ; $5029: $83
	rst $38                                          ; $502a: $ff
	cp a                                             ; $502b: $bf
	ld a, a                                          ; $502c: $7f
	rst GetHLinHL                                          ; $502d: $cf
	rrca                                             ; $502e: $0f
	ccf                                              ; $502f: $3f
	inc b                                            ; $5030: $04
	ld bc, $cce7                                     ; $5031: $01 $e7 $cc
	ret z                                            ; $5034: $c8

	ld e, b                                          ; $5035: $58
	inc l                                            ; $5036: $2c
	inc [hl]                                         ; $5037: $34
	sbc h                                            ; $5038: $9c
	inc c                                            ; $5039: $0c

jr_03e_503a:
	sub d                                            ; $503a: $92
	daa                                              ; $503b: $27
	adc a                                            ; $503c: $8f
	rst GetHLinHL                                          ; $503d: $cf
	sub h                                            ; $503e: $94
	rst JumpTable                                          ; $503f: $c7
	rst SubAFromBC                                          ; $5040: $e7
	ld [hl], a                                       ; $5041: $77
	rst FarCall                                          ; $5042: $f7
	ld e, d                                          ; $5043: $5a
	ld e, c                                          ; $5044: $59
	ld a, [bc]                                       ; $5045: $0a
	add hl, bc                                       ; $5046: $09
	ld a, [bc]                                       ; $5047: $0a
	add hl, bc                                       ; $5048: $09
	ld e, [hl]                                       ; $5049: $5e
	ld h, d                                          ; $504a: $62
	ldh [rPCM34], a                                  ; $504b: $e0 $77
	ld b, c                                          ; $504d: $41
	ld a, a                                          ; $504e: $7f
	cp $9e                                           ; $504f: $fe $9e
	cp a                                             ; $5051: $bf
	ld h, d                                          ; $5052: $62
	ret nz                                           ; $5053: $c0

	sbc b                                            ; $5054: $98
	ld a, [$ead5]                                    ; $5055: $fa $d5 $ea
	ld d, h                                          ; $5058: $54
	xor b                                            ; $5059: $a8
	ld d, h                                          ; $505a: $54
	ld hl, sp+$5e                                    ; $505b: $f8 $5e
	ret nc                                           ; $505d: $d0

	sbc d                                            ; $505e: $9a
	jr jr_03e_506d                                   ; $505f: $18 $0c

	inc de                                           ; $5061: $13
	inc b                                            ; $5062: $04
	inc bc                                           ; $5063: $03
	halt                                             ; $5064: $76
	nop                                              ; $5065: $00
	sbc h                                            ; $5066: $9c
	rst AddAOntoHL                                          ; $5067: $ef
	push hl                                          ; $5068: $e5
	db $fc                                           ; $5069: $fc
	ld a, c                                          ; $506a: $79
	ld h, h                                          ; $506b: $64
	db $fd                                           ; $506c: $fd

jr_03e_506d:
	sbc e                                            ; $506d: $9b
	pop bc                                           ; $506e: $c1
	ld h, c                                          ; $506f: $61
	ld h, d                                          ; $5070: $62
	ld a, h                                          ; $5071: $7c
	ld [hl], c                                       ; $5072: $71
	ld c, c                                          ; $5073: $49
	add l                                            ; $5074: $85
	ld a, $7e                                        ; $5075: $3e $7e
	ld e, h                                          ; $5077: $5c
	cp h                                             ; $5078: $bc
	ld [hl], a                                       ; $5079: $77
	sbc a                                            ; $507a: $9f
	rla                                              ; $507b: $17
	rra                                              ; $507c: $1f
	ccf                                              ; $507d: $3f
	ld a, a                                          ; $507e: $7f
	rst SubAFromDE                                          ; $507f: $df
	sub e                                            ; $5080: $93
	ret nz                                           ; $5081: $c0

	nop                                              ; $5082: $00
	jr jr_03e_508e                                   ; $5083: $18 $09

	dec d                                            ; $5085: $15
	add hl, hl                                       ; $5086: $29
	ld h, h                                          ; $5087: $64
	nop                                              ; $5088: $00
	add b                                            ; $5089: $80
	ret nz                                           ; $508a: $c0

	or b                                             ; $508b: $b0
	add sp, -$5c                                     ; $508c: $e8 $a4

jr_03e_508e:
	cp d                                             ; $508e: $ba
	ld a, d                                          ; $508f: $7a
	ld b, c                                          ; $5090: $41
	adc c                                            ; $5091: $89
	ld a, a                                          ; $5092: $7f
	ld e, a                                          ; $5093: $5f
	rrca                                             ; $5094: $0f
	rst SubAFromBC                                          ; $5095: $e7
	pop af                                           ; $5096: $f1
	inc sp                                           ; $5097: $33
	nop                                              ; $5098: $00
	inc c                                            ; $5099: $0c
	ld c, $13                                        ; $509a: $0e $13
	ld a, [de]                                       ; $509c: $1a
	ld h, a                                          ; $509d: $67
	ld b, a                                          ; $509e: $47

jr_03e_509f:
	rrca                                             ; $509f: $0f
	rst SubAFromBC                                          ; $50a0: $e7
	rst $38                                          ; $50a1: $ff
	ldh a, [$e2]                                     ; $50a2: $f0 $e2
	reti                                             ; $50a4: $d9


	ccf                                              ; $50a5: $3f
	db $fc                                           ; $50a6: $fc
	cp $fd                                           ; $50a7: $fe $fd
	ld a, a                                          ; $50a9: $7f
	db $dd                                           ; $50aa: $dd
	ld a, l                                          ; $50ab: $7d
	di                                               ; $50ac: $f3
	ld [hl], a                                       ; $50ad: $77
	pop bc                                           ; $50ae: $c1
	sbc c                                            ; $50af: $99
	cp a                                             ; $50b0: $bf
	sbc a                                            ; $50b1: $9f
	rst SubAFromDE                                          ; $50b2: $df
	rst $38                                          ; $50b3: $ff
	ld bc, $7902                                     ; $50b4: $01 $02 $79
	and b                                            ; $50b7: $a0
	ld b, d                                          ; $50b8: $42
	ret nc                                           ; $50b9: $d0

jr_03e_50ba:
	ld e, d                                          ; $50ba: $5a
	jr nc, jr_03e_50ba                               ; $50bb: $30 $fd

	ld e, d                                          ; $50bd: $5a
	jr nz, jr_03e_509f                               ; $50be: $20 $df

	adc a                                            ; $50c0: $8f
	adc a                                            ; $50c1: $8f
	adc l                                            ; $50c2: $8d
	sbc h                                            ; $50c3: $9c
	adc h                                            ; $50c4: $8c
	ld e, l                                          ; $50c5: $5d
	xor d                                            ; $50c6: $aa
	ld d, l                                          ; $50c7: $55
	ldh a, [$f0]                                     ; $50c8: $f0 $f0
	ldh a, [c]                                       ; $50ca: $f2
	db $e3                                           ; $50cb: $e3
	ld hl, sp-$04                                    ; $50cc: $f8 $fc
	rst $38                                          ; $50ce: $ff
	rst $38                                          ; $50cf: $ff
	or d                                             ; $50d0: $b2
	and d                                            ; $50d1: $a2
	ld a, e                                          ; $50d2: $7b
	pop bc                                           ; $50d3: $c1
	ld a, e                                          ; $50d4: $7b
	ld a, [hl-]                                      ; $50d5: $3a
	sbc h                                            ; $50d6: $9c
	ld c, l                                          ; $50d7: $4d
	ld e, l                                          ; $50d8: $5d
	rst $38                                          ; $50d9: $ff
	ld a, e                                          ; $50da: $7b
	and h                                            ; $50db: $a4
	rst SubAFromDE                                          ; $50dc: $df
	rst $38                                          ; $50dd: $ff
	sub l                                            ; $50de: $95
	ld h, c                                          ; $50df: $61
	ld b, d                                          ; $50e0: $42
	ld e, h                                          ; $50e1: $5c
	ld sp, hl                                        ; $50e2: $f9
	rrca                                             ; $50e3: $0f
	db $fd                                           ; $50e4: $fd
	xor d                                            ; $50e5: $aa
	ld d, l                                          ; $50e6: $55
	sbc [hl]                                         ; $50e7: $9e
	cp h                                             ; $50e8: $bc
	ld [hl], l                                       ; $50e9: $75
	scf                                              ; $50ea: $37

jr_03e_50eb:
	rst SubAFromDE                                          ; $50eb: $df
	rst $38                                          ; $50ec: $ff
	sub a                                            ; $50ed: $97
	ld [hl-], a                                      ; $50ee: $32
	ld h, c                                          ; $50ef: $61
	add d                                            ; $50f0: $82
	jr c, jr_03e_5133                                ; $50f1: $38 $40

	db $fd                                           ; $50f3: $fd
	xor b                                            ; $50f4: $a8
	ldh a, [rSVBK]                                   ; $50f5: $f0 $70
	or e                                             ; $50f7: $b3
	sub l                                            ; $50f8: $95
	rlca                                             ; $50f9: $07
	rst $38                                          ; $50fa: $ff
	rrca                                             ; $50fb: $0f
	inc b                                            ; $50fc: $04
	ld d, a                                          ; $50fd: $57
	ld a, [hl-]                                      ; $50fe: $3a
	ld d, h                                          ; $50ff: $54
	ld l, b                                          ; $5100: $68
	ld b, c                                          ; $5101: $41
	nop                                              ; $5102: $00
	ld a, c                                          ; $5103: $79
	ld h, b                                          ; $5104: $60
	sbc h                                            ; $5105: $9c
	ld a, a                                          ; $5106: $7f

jr_03e_5107:
	ccf                                              ; $5107: $3f
	ccf                                              ; $5108: $3f
	ld a, e                                          ; $5109: $7b
	jr nc, jr_03e_50eb                               ; $510a: $30 $df

	dec bc                                           ; $510c: $0b
	add b                                            ; $510d: $80
	rrca                                             ; $510e: $0f
	dec d                                            ; $510f: $15
	ld [hl-], a                                      ; $5110: $32
	db $ec                                           ; $5111: $ec
	ret c                                            ; $5112: $d8

	ld h, e                                          ; $5113: $63
	ldh a, [$f0]                                     ; $5114: $f0 $f0
	rst $38                                          ; $5116: $ff
	di                                               ; $5117: $f3
	and $47                                          ; $5118: $e6 $47
	rst GetHLinHL                                          ; $511a: $cf
	inc a                                            ; $511b: $3c
	cp $00                                           ; $511c: $fe $00
	ldh [hDisp1_SCX], a                                     ; $511e: $e0 $91
	call c, $bf68                                    ; $5120: $dc $68 $bf
	rst FarCall                                          ; $5123: $f7
	rst FarCall                                          ; $5124: $f7
	rst $38                                          ; $5125: $ff
	cp a                                             ; $5126: $bf
	sbc [hl]                                         ; $5127: $9e
	adc b                                            ; $5128: $88
	rst GetHLinHL                                          ; $5129: $cf
	ld h, d                                          ; $512a: $62
	ld bc, $8414                                     ; $512b: $01 $14 $84
	inc d                                            ; $512e: $14
	jr jr_03e_51ab                                   ; $512f: $18 $7a

	ld [hl], b                                       ; $5131: $70
	ld a, d                                          ; $5132: $7a

jr_03e_5133:
	ld d, d                                          ; $5133: $52
	xor c                                            ; $5134: $a9
	rst SubAFromBC                                          ; $5135: $e7
	rst SubAFromBC                                          ; $5136: $e7
	rst AddAOntoHL                                          ; $5137: $ef
	ld bc, $8000                                     ; $5138: $01 $00 $80
	xor h                                            ; $513b: $ac
	ld d, b                                          ; $513c: $50
	nop                                              ; $513d: $00
	ldh [rSB], a                                     ; $513e: $e0 $01
	rrca                                             ; $5140: $0f
	dec a                                            ; $5141: $3d
	nop                                              ; $5142: $00
	xor d                                            ; $5143: $aa
	db $fd                                           ; $5144: $fd
	rst $38                                          ; $5145: $ff
	rra                                              ; $5146: $1f
	cp $f0                                           ; $5147: $fe $f0

jr_03e_5149:
	ei                                               ; $5149: $fb
	sbc c                                            ; $514a: $99
	ld a, a                                          ; $514b: $7f
	rst $38                                          ; $514c: $ff
	ld [hl], l                                       ; $514d: $75
	ld [bc], a                                       ; $514e: $02
	inc d                                            ; $514f: $14
	ld c, d                                          ; $5150: $4a
	ld a, c                                          ; $5151: $79
	ld [hl], $fb                                     ; $5152: $36 $fb
	ld a, a                                          ; $5154: $7f
	and [hl]                                         ; $5155: $a6
	sbc d                                            ; $5156: $9a
	cp a                                             ; $5157: $bf
	ld e, a                                          ; $5158: $5f
	xor d                                            ; $5159: $aa
	dec d                                            ; $515a: $15
	xor d                                            ; $515b: $aa
	ld [hl], a                                       ; $515c: $77
	ld [hl], d                                       ; $515d: $72
	db $fd                                           ; $515e: $fd
	sbc h                                            ; $515f: $9c
	ld [bc], a                                       ; $5160: $02
	ld d, l                                          ; $5161: $55
	cp $7b                                           ; $5162: $fe $7b
	sbc d                                            ; $5164: $9a
	ld a, a                                          ; $5165: $7f
	ccf                                              ; $5166: $3f
	sbc e                                            ; $5167: $9b
	cp $ab                                           ; $5168: $fe $ab
	nop                                              ; $516a: $00
	ld [bc], a                                       ; $516b: $02
	ld a, e                                          ; $516c: $7b
	dec d                                            ; $516d: $15
	add b                                            ; $516e: $80
	nop                                              ; $516f: $00
	cp b                                             ; $5170: $b8
	adc a                                            ; $5171: $8f
	and a                                            ; $5172: $a7
	ld [$ca65], a                                    ; $5173: $ea $65 $ca
	and c                                            ; $5176: $a1
	ld e, b                                          ; $5177: $58
	pop bc                                           ; $5178: $c1
	ld [hl], d                                       ; $5179: $72
	ld e, b                                          ; $517a: $58
	sub b                                            ; $517b: $90
	ld d, b                                          ; $517c: $50
	jr nc, jr_03e_5107                               ; $517d: $30 $88

	ld hl, $ed97                                     ; $517f: $21 $97 $ed
	rst $38                                          ; $5182: $ff
	or e                                             ; $5183: $b3
	ld b, e                                          ; $5184: $43
	cp a                                             ; $5185: $bf
	ld a, a                                          ; $5186: $7f
	ccf                                              ; $5187: $3f
	ldh a, [rAUD3ENA]                                ; $5188: $f0 $1a
	db $10                                           ; $518a: $10
	stop                                             ; $518b: $10 $00
	ld h, b                                          ; $518d: $60
	ld a, a                                          ; $518e: $7f
	xor d                                            ; $518f: $aa
	add b                                            ; $5190: $80
	ldh a, [$f1]                                     ; $5191: $f0 $f1
	db $fd                                           ; $5193: $fd
	ld hl, sp-$16                                    ; $5194: $f8 $ea
	ret c                                            ; $5196: $d8

	or h                                             ; $5197: $b4
	ei                                               ; $5198: $fb
	daa                                              ; $5199: $27
	ld c, [hl]                                       ; $519a: $4e
	db $10                                           ; $519b: $10
	ld [hl], b                                       ; $519c: $70
	jr nc, jr_03e_51ff                               ; $519d: $30 $60

	ret z                                            ; $519f: $c8

	db $fc                                           ; $51a0: $fc
	add hl, bc                                       ; $51a1: $09
	ld b, h                                          ; $51a2: $44
	add sp, $6e                                      ; $51a3: $e8 $6e
	rst SubAFromDE                                          ; $51a5: $df
	cp a                                             ; $51a6: $bf
	jr nz, jr_03e_5149                               ; $51a7: $20 $a0

	di                                               ; $51a9: $f3
	and [hl]                                         ; $51aa: $a6

jr_03e_51ab:
	ld c, $09                                        ; $51ab: $0e $09
	jr nc, jr_03e_521f                               ; $51ad: $30 $70

	db $10                                           ; $51af: $10
	adc [hl]                                         ; $51b0: $8e
	ld e, a                                          ; $51b1: $5f
	nop                                              ; $51b2: $00
	ld bc, $fb3a                                     ; $51b3: $01 $3a $fb
	rst $38                                          ; $51b6: $ff
	rst $38                                          ; $51b7: $ff
	inc sp                                           ; $51b8: $33
	ldh a, [rIE]                                     ; $51b9: $f0 $ff
	cp $13                                           ; $51bb: $fe $13
	ld a, [$0004]                                    ; $51bd: $fa $04 $00

jr_03e_51c0:
	inc c                                            ; $51c0: $0c
	rlca                                             ; $51c1: $07
	ld a, d                                          ; $51c2: $7a
	db $e4                                           ; $51c3: $e4
	db $dd                                           ; $51c4: $dd
	rst $38                                          ; $51c5: $ff
	sbc [hl]                                         ; $51c6: $9e
	dec l                                            ; $51c7: $2d
	ld a, d                                          ; $51c8: $7a
	db $fd                                           ; $51c9: $fd
	db $fd                                           ; $51ca: $fd
	sbc [hl]                                         ; $51cb: $9e
	jp nc, Jump_03e_6078                             ; $51cc: $d2 $78 $60

	rst $38                                          ; $51cf: $ff
	sbc l                                            ; $51d0: $9d
	ld [$db07], sp                                   ; $51d1: $08 $07 $db
	rst $38                                          ; $51d4: $ff
	ld a, e                                          ; $51d5: $7b
	ld e, [hl]                                       ; $51d6: $5e
	sbc d                                            ; $51d7: $9a
	xor d                                            ; $51d8: $aa
	stop                                             ; $51d9: $10 $00
	nop                                              ; $51db: $00
	jr nz, jr_03e_5248                               ; $51dc: $20 $6a

	and d                                            ; $51de: $a2
	ld a, [hl]                                       ; $51df: $7e
	ld e, l                                          ; $51e0: $5d
	ld a, d                                          ; $51e1: $7a
	xor $9b                                          ; $51e2: $ee $9b
	nop                                              ; $51e4: $00
	inc b                                            ; $51e5: $04
	add e                                            ; $51e6: $83
	ld a, a                                          ; $51e7: $7f
	ld [hl], e                                       ; $51e8: $73
	ldh a, [$9e]                                     ; $51e9: $f0 $9e
	ld hl, sp+$6d                                    ; $51eb: $f8 $6d
	ld l, b                                          ; $51ed: $68
	sbc [hl]                                         ; $51ee: $9e
	ld d, b                                          ; $51ef: $50
	ld a, b                                          ; $51f0: $78
	ld [hl], a                                       ; $51f1: $77
	ld [hl], a                                       ; $51f2: $77
	ldh a, [$9e]                                     ; $51f3: $f0 $9e
	ldh [$fb], a                                     ; $51f5: $e0 $fb

jr_03e_51f7:
	sbc e                                            ; $51f7: $9b
	adc h                                            ; $51f8: $8c
	jr c, jr_03e_51f7                                ; $51f9: $38 $fc

	di                                               ; $51fb: $f3
	ld [hl], e                                       ; $51fc: $73
	add sp, -$63                                     ; $51fd: $e8 $9d

jr_03e_51ff:
	rlca                                             ; $51ff: $07
	ld hl, sp+$6f                                    ; $5200: $f8 $6f
	add sp, -$68                                     ; $5202: $e8 $98
	nop                                              ; $5204: $00
	ld h, [hl]                                       ; $5205: $66
	ret nz                                           ; $5206: $c0

	nop                                              ; $5207: $00
	inc bc                                           ; $5208: $03
	dec d                                            ; $5209: $15
	dec hl                                           ; $520a: $2b
	ld l, a                                          ; $520b: $6f
	db $f4                                           ; $520c: $f4
	sub a                                            ; $520d: $97
	ld [$fed4], a                                    ; $520e: $ea $d4 $fe
	jr nz, jr_03e_5231                               ; $5211: $20 $1e

	nop                                              ; $5213: $00
	nop                                              ; $5214: $00
	ld hl, sp+$7b                                    ; $5215: $f8 $7b
	jr nc, jr_03e_528f                               ; $5217: $30 $76

	ld a, $7a                                        ; $5219: $3e $7a
	ld e, b                                          ; $521b: $58
	sub a                                            ; $521c: $97
	ld a, a                                          ; $521d: $7f
	rrca                                             ; $521e: $0f

jr_03e_521f:
	rst $38                                          ; $521f: $ff
	ld a, [bc]                                       ; $5220: $0a
	dec b                                            ; $5221: $05
	rra                                              ; $5222: $1f
	nop                                              ; $5223: $00
	db $10                                           ; $5224: $10
	ld [hl], e                                       ; $5225: $73
	ldh [$97], a                                     ; $5226: $e0 $97
	ld [bc], a                                       ; $5228: $02
	rst $38                                          ; $5229: $ff
	rst $38                                          ; $522a: $ff
	cp e                                             ; $522b: $bb
	dec h                                            ; $522c: $25
	ret nc                                           ; $522d: $d0

	and b                                            ; $522e: $a0
	ld b, b                                          ; $522f: $40
	ld a, e                                          ; $5230: $7b

jr_03e_5231:
	or h                                             ; $5231: $b4
	sbc [hl]                                         ; $5232: $9e
	pop af                                           ; $5233: $f1
	ld a, e                                          ; $5234: $7b
	pop bc                                           ; $5235: $c1
	ld a, [hl]                                       ; $5236: $7e
	db $ed                                           ; $5237: $ed
	rst SubAFromDE                                          ; $5238: $df
	rst $38                                          ; $5239: $ff
	sub [hl]                                         ; $523a: $96
	cp d                                             ; $523b: $ba
	ld d, h                                          ; $523c: $54
	cp h                                             ; $523d: $bc
	jr z, jr_03e_51c0                                ; $523e: $28 $80

	ld a, h                                          ; $5240: $7c
	dec d                                            ; $5241: $15
	ret                                              ; $5242: $c9


	rst $38                                          ; $5243: $ff

jr_03e_5244:
	ld a, d                                          ; $5244: $7a
	ld d, h                                          ; $5245: $54
	sbc e                                            ; $5246: $9b
	ld a, a                                          ; $5247: $7f

jr_03e_5248:
	ld [$3efe], sp                                   ; $5248: $08 $fe $3e
	halt                                             ; $524b: $76
	sbc $ff                                          ; $524c: $de $ff
	adc e                                            ; $524e: $8b
	rrca                                             ; $524f: $0f
	sbc a                                            ; $5250: $9f
	rst $38                                          ; $5251: $ff
	ld [hl], b                                       ; $5252: $70
	rst $38                                          ; $5253: $ff
	cp $e0                                           ; $5254: $fe $e0
	nop                                              ; $5256: $00
	ldh a, [$60]                                     ; $5257: $f0 $60
	inc c                                            ; $5259: $0c
	ld d, c                                          ; $525a: $51
	ldh a, [$c0]                                     ; $525b: $f0 $c0
	ld [bc], a                                       ; $525d: $02
	ld b, b                                          ; $525e: $40

jr_03e_525f:
	ld b, b                                          ; $525f: $40
	add b                                            ; $5260: $80
	ret nz                                           ; $5261: $c0

	jr nz, jr_03e_525f                               ; $5262: $20 $fb

	sbc h                                            ; $5264: $9c
	ld c, d                                          ; $5265: $4a
	rrca                                             ; $5266: $0f
	ccf                                              ; $5267: $3f
	sbc $0f                                          ; $5268: $de $0f
	sbc h                                            ; $526a: $9c
	dec b                                            ; $526b: $05
	ld bc, $fa05                                     ; $526c: $01 $05 $fa
	sub e                                            ; $526f: $93
	and e                                            ; $5270: $a3

jr_03e_5271:
	ld d, e                                          ; $5271: $53
	xor l                                            ; $5272: $ad
	push de                                          ; $5273: $d5
	rst $38                                          ; $5274: $ff
	cp $fc                                           ; $5275: $fe $fc
	cp $5d                                           ; $5277: $fe $5d
	xor [hl]                                         ; $5279: $ae
	ld d, a                                          ; $527a: $57
	ld a, [hl+]                                      ; $527b: $2a
	db $fd                                           ; $527c: $fd
	sub e                                            ; $527d: $93
	jr nc, @+$46                                     ; $527e: $30 $44

	adc b                                            ; $5280: $88
	add hl, bc                                       ; $5281: $09
	inc de                                           ; $5282: $13
	db $10                                           ; $5283: $10
	inc de                                           ; $5284: $13
	db $10                                           ; $5285: $10
	jp nz, $08a0                                     ; $5286: $c2 $a0 $08

	ld [$01de], sp                                   ; $5289: $08 $de $01
	sbc e                                            ; $528c: $9b
	ld [bc], a                                       ; $528d: $02
	rra                                              ; $528e: $1f

jr_03e_528f:
	jr nc, jr_03e_5271                               ; $528f: $30 $e0

	ld [hl], d                                       ; $5291: $72
	add a                                            ; $5292: $87
	sbc h                                            ; $5293: $9c
	inc c                                            ; $5294: $0c
	jr nc, jr_03e_52d7                               ; $5295: $30 $40

	ld [hl], e                                       ; $5297: $73
	ld hl, sp-$6f                                    ; $5298: $f8 $91
	ld a, l                                          ; $529a: $7d
	call z, Call_03e_444c                            ; $529b: $cc $4c $44
	jr nz, jr_03e_52df                               ; $529e: $20 $3f

	rra                                              ; $52a0: $1f
	nop                                              ; $52a1: $00
	ret z                                            ; $52a2: $c8

	nop                                              ; $52a3: $00
	inc b                                            ; $52a4: $04
	inc bc                                           ; $52a5: $03
	jr nz, jr_03e_52b9                               ; $52a6: $20 $11

	ld a, e                                          ; $52a8: $7b
	jr c, jr_03e_5244                                ; $52a9: $38 $99

	cp a                                             ; $52ab: $bf
	inc e                                            ; $52ac: $1c
	rst $38                                          ; $52ad: $ff
	dec h                                            ; $52ae: $25
	ld a, [$7b7c]                                    ; $52af: $fa $7c $7b
	ld c, e                                          ; $52b2: $4b
	sbc c                                            ; $52b3: $99
	nop                                              ; $52b4: $00
	ld [hl], $23                                     ; $52b5: $36 $23
	ld sp, hl                                        ; $52b7: $f9
	dec b                                            ; $52b8: $05

jr_03e_52b9:
	inc bc                                           ; $52b9: $03
	ld sp, hl                                        ; $52ba: $f9
	sbc h                                            ; $52bb: $9c
	rst FarCall                                          ; $52bc: $f7
	rst GetHLinHL                                          ; $52bd: $cf
	ccf                                              ; $52be: $3f
	call c, $97ff                                    ; $52bf: $dc $ff $97
	add hl, bc                                       ; $52c2: $09
	ld bc, $0220                                     ; $52c3: $01 $20 $02
	add hl, de                                       ; $52c6: $19
	add hl, bc                                       ; $52c7: $09
	ld c, h                                          ; $52c8: $4c
	ld a, [hl]                                       ; $52c9: $7e
	db $d3                                           ; $52ca: $d3
	rst $38                                          ; $52cb: $ff
	sbc [hl]                                         ; $52cc: $9e
	ccf                                              ; $52cd: $3f
	ld h, l                                          ; $52ce: $65
	ld [hl], b                                       ; $52cf: $70
	ld b, e                                          ; $52d0: $43
	ld hl, sp-$69                                    ; $52d1: $f8 $97
	ld [$bad5], a                                    ; $52d3: $ea $d5 $ba
	db $f4                                           ; $52d6: $f4

jr_03e_52d7:
	add sp, -$2c                                     ; $52d7: $e8 $d4
	add sp, $54                                      ; $52d9: $e8 $54
	reti                                             ; $52db: $d9


	rst $38                                          ; $52dc: $ff
	ld a, a                                          ; $52dd: $7f
	adc e                                            ; $52de: $8b

jr_03e_52df:
	ld a, c                                          ; $52df: $79
	ld a, $9d                                        ; $52e0: $3e $9d
	ld [bc], a                                       ; $52e2: $02
	dec b                                            ; $52e3: $05
	ld a, e                                          ; $52e4: $7b
	ldh [hDisp0_OBP0], a                                     ; $52e5: $e0 $86
	cp $fd                                           ; $52e7: $fe $fd
	cp $fd                                           ; $52e9: $fe $fd
	ld a, [$11ff]                                    ; $52eb: $fa $ff $11
	adc d                                            ; $52ee: $8a
	ld d, l                                          ; $52ef: $55
	xor e                                            ; $52f0: $ab
	ld a, h                                          ; $52f1: $7c
	ei                                               ; $52f2: $fb
	ld e, a                                          ; $52f3: $5f
	rst $38                                          ; $52f4: $ff
	xor $75                                          ; $52f5: $ee $75
	xor d                                            ; $52f7: $aa
	ld d, h                                          ; $52f8: $54
	add e                                            ; $52f9: $83
	inc b                                            ; $52fa: $04
	and b                                            ; $52fb: $a0
	nop                                              ; $52fc: $00
	ld e, a                                          ; $52fd: $5f
	cp a                                             ; $52fe: $bf
	ld a, a                                          ; $52ff: $7f
	db $dd                                           ; $5300: $dd
	rst $38                                          ; $5301: $ff
	sbc l                                            ; $5302: $9d
	rst JumpTable                                          ; $5303: $c7
	and b                                            ; $5304: $a0
	ld l, a                                          ; $5305: $6f
	ld h, c                                          ; $5306: $61
	sub h                                            ; $5307: $94
	nop                                              ; $5308: $00
	cp d                                             ; $5309: $ba
	rst SubAFromHL                                          ; $530a: $d7
	rst $38                                          ; $530b: $ff
	rst $38                                          ; $530c: $ff
	ei                                               ; $530d: $fb
	db $d3                                           ; $530e: $d3
	ld a, h                                          ; $530f: $7c
	ldh a, [rLYC]                                    ; $5310: $f0 $45
	add hl, hl                                       ; $5312: $29
	ei                                               ; $5313: $fb
	add b                                            ; $5314: $80
	jp nz, $a884                                     ; $5315: $c2 $84 $a8

	push bc                                          ; $5318: $c5
	xor d                                            ; $5319: $aa
	push af                                          ; $531a: $f5
	cp d                                             ; $531b: $ba
	reti                                             ; $531c: $d9


	ld a, l                                          ; $531d: $7d
	ei                                               ; $531e: $fb
	ld d, a                                          ; $531f: $57
	ld a, [hl-]                                      ; $5320: $3a
	ld d, l                                          ; $5321: $55
	ld a, [bc]                                       ; $5322: $0a
	dec b                                            ; $5323: $05
	ld b, $8a                                        ; $5324: $06 $8a
	dec b                                            ; $5326: $05
	dec hl                                           ; $5327: $2b
	ld d, h                                          ; $5328: $54
	and e                                            ; $5329: $a3
	dec d                                            ; $532a: $15
	cpl                                              ; $532b: $2f
	ld e, a                                          ; $532c: $5f
	ld [hl], l                                       ; $532d: $75
	ld a, [$abd4]                                    ; $532e: $fa $d4 $ab
	ld e, h                                          ; $5331: $5c
	ld [$9cd0], a                                    ; $5332: $ea $d0 $9c
	and b                                            ; $5335: $a0
	db $e3                                           ; $5336: $e3
	rst SubAFromHL                                          ; $5337: $d7
	ld [hl], e                                       ; $5338: $73
	ret nz                                           ; $5339: $c0

	sbc h                                            ; $533a: $9c
	cp l                                             ; $533b: $bd
	inc e                                            ; $533c: $1c
	jr z, jr_03e_53b2                                ; $533d: $28 $73

	ret nz                                           ; $533f: $c0

	sbc h                                            ; $5340: $9c
	ld b, d                                          ; $5341: $42
	rst SubAFromDE                                          ; $5342: $df
	cp $de                                           ; $5343: $fe $de
	db $fc                                           ; $5345: $fc
	ld a, c                                          ; $5346: $79
	xor l                                            ; $5347: $ad
	ld l, d                                          ; $5348: $6a
	pop de                                           ; $5349: $d1
	ld a, [$03df]                                    ; $534a: $fa $df $03
	ld h, e                                          ; $534d: $63
	or $df                                           ; $534e: $f6 $df
	rlca                                             ; $5350: $07
	ld a, h                                          ; $5351: $7c
	ld [hl], d                                       ; $5352: $72
	ld a, e                                          ; $5353: $7b
	ld [hl], l                                       ; $5354: $75
	ld l, l                                          ; $5355: $6d
	ld [hl], h                                       ; $5356: $74
	ld a, a                                          ; $5357: $7f
	ld h, l                                          ; $5358: $65
	rst SubAFromDE                                          ; $5359: $df
	cp $9c                                           ; $535a: $fe $9c
	ei                                               ; $535c: $fb
	xor e                                            ; $535d: $ab
	ld d, l                                          ; $535e: $55
	ld a, e                                          ; $535f: $7b
	cp $ff                                           ; $5360: $fe $ff
	add b                                            ; $5362: $80
	inc b                                            ; $5363: $04
	ld d, h                                          ; $5364: $54
	xor e                                            ; $5365: $ab
	ld d, a                                          ; $5366: $57
	xor e                                            ; $5367: $ab
	ld d, l                                          ; $5368: $55
	inc b                                            ; $5369: $04
	inc e                                            ; $536a: $1c
	inc a                                            ; $536b: $3c
	inc h                                            ; $536c: $24
	nop                                              ; $536d: $00
	ld [$f9fa], sp                                   ; $536e: $08 $fa $f9
	ld [de], a                                       ; $5371: $12
	inc d                                            ; $5372: $14
	jr c, jr_03e_53bd                                ; $5373: $38 $48

	adc b                                            ; $5375: $88
	ld [$06f1], sp                                   ; $5376: $08 $f1 $06
	ld b, c                                          ; $5379: $41
	inc bc                                           ; $537a: $03
	daa                                              ; $537b: $27
	ld c, [hl]                                       ; $537c: $4e
	dec d                                            ; $537d: $15
	ld [$0a55], a                                    ; $537e: $ea $55 $0a
	nop                                              ; $5381: $00
	ld a, a                                          ; $5382: $7f
	and c                                            ; $5383: $a1
	add l                                            ; $5384: $85
	ld hl, $954a                                     ; $5385: $21 $4a $95
	xor d                                            ; $5388: $aa
	push af                                          ; $5389: $f5
	call nc, Call_03e_54aa                           ; $538a: $d4 $aa $54
	xor d                                            ; $538d: $aa
	ld d, d                                          ; $538e: $52
	and b                                            ; $538f: $a0
	ld d, b                                          ; $5390: $50
	and b                                            ; $5391: $a0
	ld a, [hl+]                                      ; $5392: $2a
	ld d, h                                          ; $5393: $54
	xor d                                            ; $5394: $aa
	ld d, h                                          ; $5395: $54
	xor h                                            ; $5396: $ac
	ld e, h                                          ; $5397: $5c
	xor h                                            ; $5398: $ac
	ld e, l                                          ; $5399: $5d
	ld d, c                                          ; $539a: $51
	xor b                                            ; $539b: $a8
	ld d, b                                          ; $539c: $50
	xor b                                            ; $539d: $a8
	ld d, l                                          ; $539e: $55
	ld a, e                                          ; $539f: $7b
	cp $9b                                           ; $53a0: $fe $9b
	cpl                                              ; $53a2: $2f
	ld d, a                                          ; $53a3: $57
	xor a                                            ; $53a4: $af
	ld d, a                                          ; $53a5: $57
	ld a, e                                          ; $53a6: $7b
	ret nz                                           ; $53a7: $c0

	sub a                                            ; $53a8: $97
	ld d, a                                          ; $53a9: $57
	rst AddAOntoHL                                          ; $53aa: $ef
	dec sp                                           ; $53ab: $3b
	rra                                              ; $53ac: $1f
	cpl                                              ; $53ad: $2f
	rra                                              ; $53ae: $1f
	cpl                                              ; $53af: $2f
	rla                                              ; $53b0: $17
	ld a, c                                          ; $53b1: $79

jr_03e_53b2:
	set 3, e                                         ; $53b2: $cb $db
	rst $38                                          ; $53b4: $ff
	sbc h                                            ; $53b5: $9c
	ld h, a                                          ; $53b6: $67
	ccf                                              ; $53b7: $3f
	cp a                                             ; $53b8: $bf
	db $dd                                           ; $53b9: $dd
	rst $38                                          ; $53ba: $ff
	ld [hl], e                                       ; $53bb: $73
	ld e, e                                          ; $53bc: $5b

jr_03e_53bd:
	jp c, $7fff                                      ; $53bd: $da $ff $7f

	db $f4                                           ; $53c0: $f4
	ld a, a                                          ; $53c1: $7f
	dec bc                                           ; $53c2: $0b
	ret c                                            ; $53c3: $d8

	rst $38                                          ; $53c4: $ff
	sub a                                            ; $53c5: $97
	add h                                            ; $53c6: $84
	rst $38                                          ; $53c7: $ff
	ld a, [$feff]                                    ; $53c8: $fa $ff $fe
	push af                                          ; $53cb: $f5
	ld [$75dd], a                                    ; $53cc: $ea $dd $75
	pop af                                           ; $53cf: $f1
	ld [hl], d                                       ; $53d0: $72
	cp a                                             ; $53d1: $bf
	sbc b                                            ; $53d2: $98
	ldh a, [$a8]                                     ; $53d3: $f0 $a8
	ld d, b                                          ; $53d5: $50
	and b                                            ; $53d6: $a0
	ld b, e                                          ; $53d7: $43
	sbc h                                            ; $53d8: $9c
	ld h, b                                          ; $53d9: $60
	ld h, d                                          ; $53da: $62
	xor a                                            ; $53db: $af
	adc c                                            ; $53dc: $89
	rla                                              ; $53dd: $17
	inc bc                                           ; $53de: $03
	dec e                                            ; $53df: $1d
	db $eb                                           ; $53e0: $eb
	dec d                                            ; $53e1: $15
	inc bc                                           ; $53e2: $03
	dec d                                            ; $53e3: $15
	nop                                              ; $53e4: $00
	add sp, -$04                                     ; $53e5: $e8 $fc
	cp $f4                                           ; $53e7: $fe $f4
	ld [$eafc], a                                    ; $53e9: $ea $fc $ea
	inc e                                            ; $53ec: $1c
	ldh [$f0], a                                     ; $53ed: $e0 $f0
	ret nz                                           ; $53ef: $c0

	jp $e0dc                                         ; $53f0: $c3 $dc $e0


	ld [hl], l                                       ; $53f3: $75
	ld d, l                                          ; $53f4: $55
	db $fc                                           ; $53f5: $fc
	sub a                                            ; $53f6: $97
	rlca                                             ; $53f7: $07
	ld c, $38                                        ; $53f8: $0e $38
	ret nz                                           ; $53fa: $c0

	nop                                              ; $53fb: $00
	ld bc, $3806                                     ; $53fc: $01 $06 $38
	ld sp, hl                                        ; $53ff: $f9
	ld a, a                                          ; $5400: $7f
	rst GetHLinHL                                          ; $5401: $cf
	ld a, a                                          ; $5402: $7f
	ret nc                                           ; $5403: $d0

	sbc [hl]                                         ; $5404: $9e
	ld h, b                                          ; $5405: $60
	ld a, d                                          ; $5406: $7a
	adc e                                            ; $5407: $8b
	ld sp, hl                                        ; $5408: $f9
	sub [hl]                                         ; $5409: $96
	jp nz, $004f                                     ; $540a: $c2 $4f $00

	rst $38                                          ; $540d: $ff
	ld a, $3b                                        ; $540e: $3e $3b
	ld l, a                                          ; $5410: $6f
	add e                                            ; $5411: $83
	dec a                                            ; $5412: $3d
	ld a, d                                          ; $5413: $7a
	pop hl                                           ; $5414: $e1
	sub a                                            ; $5415: $97
	ld bc, $1004                                     ; $5416: $01 $04 $10
	nop                                              ; $5419: $00
	cp $bb                                           ; $541a: $fe $bb
	nop                                              ; $541c: $00
	or b                                             ; $541d: $b0
	db $dd                                           ; $541e: $dd
	rst $38                                          ; $541f: $ff
	sbc h                                            ; $5420: $9c
	ld bc, $0044                                     ; $5421: $01 $44 $00
	ld a, b                                          ; $5424: $78
	rst FarCall                                          ; $5425: $f7
	rst $38                                          ; $5426: $ff
	add b                                            ; $5427: $80
	ld a, [$2ed5]                                    ; $5428: $fa $d5 $2e
	nop                                              ; $542b: $00
	and b                                            ; $542c: $a0
	push af                                          ; $542d: $f5
	jp z, $05d5                                      ; $542e: $ca $d5 $05

	ld a, [hl+]                                      ; $5431: $2a
	ld de, $5f00                                     ; $5432: $11 $00 $5f
	ld a, [bc]                                       ; $5435: $0a
	dec [hl]                                         ; $5436: $35
	ld a, [hl+]                                      ; $5437: $2a
	xor a                                            ; $5438: $af
	ld e, a                                          ; $5439: $5f
	xor d                                            ; $543a: $aa
	nop                                              ; $543b: $00
	cpl                                              ; $543c: $2f
	ld b, l                                          ; $543d: $45
	xor d                                            ; $543e: $aa
	ld d, l                                          ; $543f: $55
	ld d, b                                          ; $5440: $50
	and b                                            ; $5441: $a0
	ld d, l                                          ; $5442: $55
	nop                                              ; $5443: $00
	ret nc                                           ; $5444: $d0

	cp d                                             ; $5445: $ba
	ld d, l                                          ; $5446: $55
	sub a                                            ; $5447: $97
	xor d                                            ; $5448: $aa
	add e                                            ; $5449: $83
	rst FarCall                                          ; $544a: $f7
	cp a                                             ; $544b: $bf
	nop                                              ; $544c: $00
	ret nz                                           ; $544d: $c0

	ld d, l                                          ; $544e: $55
	xor a                                            ; $544f: $af
	ld a, b                                          ; $5450: $78
	jp $d17b                                         ; $5451: $c3 $7b $d1


	add e                                            ; $5454: $83
	xor d                                            ; $5455: $aa
	ld d, b                                          ; $5456: $50
	xor d                                            ; $5457: $aa
	rst $38                                          ; $5458: $ff
	ld a, [$fd9d]                                    ; $5459: $fa $9d $fd
	call c, $a854                                    ; $545c: $dc $54 $a8
	ld d, b                                          ; $545f: $50
	nop                                              ; $5460: $00
	dec b                                            ; $5461: $05
	ld h, d                                          ; $5462: $62
	rrca                                             ; $5463: $0f
	nop                                              ; $5464: $00
	xor e                                            ; $5465: $ab
	ld d, a                                          ; $5466: $57
	xor a                                            ; $5467: $af
	ld d, [hl]                                       ; $5468: $56
	xor [hl]                                         ; $5469: $ae
	ld e, l                                          ; $546a: $5d
	rst SubAFromDE                                          ; $546b: $df
	nop                                              ; $546c: $00
	ld b, b                                          ; $546d: $40
	add b                                            ; $546e: $80
	inc bc                                           ; $546f: $03
	xor e                                            ; $5470: $ab
	ld a, b                                          ; $5471: $78
	sbc b                                            ; $5472: $98
	ld [hl], a                                       ; $5473: $77
	ld c, h                                          ; $5474: $4c
	sbc b                                            ; $5475: $98
	and d                                            ; $5476: $a2
	ld b, l                                          ; $5477: $45
	adc d                                            ; $5478: $8a
	db $ed                                           ; $5479: $ed
	stop                                             ; $547a: $10 $00
	and h                                            ; $547c: $a4
	ld a, c                                          ; $547d: $79
	ld [hl-], a                                      ; $547e: $32
	rst SubAFromDE                                          ; $547f: $df
	rst $38                                          ; $5480: $ff
	ld a, l                                          ; $5481: $7d
	sbc d                                            ; $5482: $9a
	ld [hl], a                                       ; $5483: $77
	db $fc                                           ; $5484: $fc
	sbc c                                            ; $5485: $99
	and d                                            ; $5486: $a2
	ld d, l                                          ; $5487: $55
	xor d                                            ; $5488: $aa
	nop                                              ; $5489: $00
	ld a, [hl+]                                      ; $548a: $2a
	add h                                            ; $548b: $84
	ld h, l                                          ; $548c: $65
	jp c, $ec95                                      ; $548d: $da $95 $ec

	dec b                                            ; $5490: $05
	xor c                                            ; $5491: $a9

jr_03e_5492:
	ld d, c                                          ; $5492: $51
	cp e                                             ; $5493: $bb
	ld [bc], a                                       ; $5494: $02
	add b                                            ; $5495: $80
	ld a, a                                          ; $5496: $7f
	db $fd                                           ; $5497: $fd
	ld sp, hl                                        ; $5498: $f9
	sbc $fb                                          ; $5499: $de $fb
	sub h                                            ; $549b: $94
	inc bc                                           ; $549c: $03
	add b                                            ; $549d: $80
	rst $38                                          ; $549e: $ff
	ld b, $55                                        ; $549f: $06 $55
	xor d                                            ; $54a1: $aa
	ld d, l                                          ; $54a2: $55
	ld [rRAMG], a                                    ; $54a3: $ea $00 $00
	call nc, $b965                                   ; $54a6: $d4 $65 $b9
	sbc c                                            ; $54a9: $99

Call_03e_54aa:
	dec b                                            ; $54aa: $05
	ldh [c], a                                       ; $54ab: $e2
	push bc                                          ; $54ac: $c5
	ld a, [hl+]                                      ; $54ad: $2a
	rla                                              ; $54ae: $17
	ccf                                              ; $54af: $3f
	ld a, e                                          ; $54b0: $7b
	jr c, @-$22                                      ; $54b1: $38 $dc

	rst $38                                          ; $54b3: $ff
	ld a, [hl]                                       ; $54b4: $7e
	ld h, c                                          ; $54b5: $61
	ld a, [hl]                                       ; $54b6: $7e
	db $d3                                           ; $54b7: $d3
	halt                                             ; $54b8: $76
	push bc                                          ; $54b9: $c5
	ld a, h                                          ; $54ba: $7c
	add hl, sp                                       ; $54bb: $39
	ld h, [hl]                                       ; $54bc: $66
	pop af                                           ; $54bd: $f1
	ld a, [hl]                                       ; $54be: $7e
	sbc d                                            ; $54bf: $9a
	sbc d                                            ; $54c0: $9a
	cp l                                             ; $54c1: $bd
	ld d, a                                          ; $54c2: $57
	xor d                                            ; $54c3: $aa
	ld d, a                                          ; $54c4: $57
	cp [hl]                                          ; $54c5: $be
	ld h, d                                          ; $54c6: $62
	or b                                             ; $54c7: $b0
	ld a, a                                          ; $54c8: $7f
	ld b, b                                          ; $54c9: $40
	sbc [hl]                                         ; $54ca: $9e
	xor d                                            ; $54cb: $aa
	ld a, e                                          ; $54cc: $7b
	cp $9d                                           ; $54cd: $fe $9d
	xor e                                            ; $54cf: $ab
	db $dd                                           ; $54d0: $dd
	ld h, c                                          ; $54d1: $61
	sub b                                            ; $54d2: $90
	ld a, a                                          ; $54d3: $7f
	ld [hl], h                                       ; $54d4: $74
	sbc d                                            ; $54d5: $9a
	ld b, a                                          ; $54d6: $47
	sbc b                                            ; $54d7: $98
	ldh [$a0], a                                     ; $54d8: $e0 $a0
	ld b, c                                          ; $54da: $41
	jp c, $87ff                                      ; $54db: $da $ff $87

	cp $27                                           ; $54de: $fe $27
	ld a, a                                          ; $54e0: $7f
	rst AddAOntoHL                                          ; $54e1: $ef
	rla                                              ; $54e2: $17
	ld a, [hl+]                                      ; $54e3: $2a
	ld d, c                                          ; $54e4: $51
	add d                                            ; $54e5: $82
	dec d                                            ; $54e6: $15
	call c, wTaskParam2_word0                                    ; $54e7: $dc $b8 $d0
	add sp, -$2b                                     ; $54ea: $e8 $d5
	xor [hl]                                         ; $54ec: $ae
	ld a, l                                          ; $54ed: $7d
	ld [$c3c0], a                                    ; $54ee: $ea $c0 $c3
	db $fc                                           ; $54f1: $fc
	sbc a                                            ; $54f2: $9f
	ccf                                              ; $54f3: $3f
	ld a, a                                          ; $54f4: $7f
	cp [hl]                                          ; $54f5: $be
	ld a, e                                          ; $54f6: $7b
	jr nc, jr_03e_5492                               ; $54f7: $30 $99

	nop                                              ; $54f9: $00
	ld h, b                                          ; $54fa: $60
	ret nz                                           ; $54fb: $c0

	add b                                            ; $54fc: $80
	ld b, c                                          ; $54fd: $41
	xor e                                            ; $54fe: $ab
	ld a, d                                          ; $54ff: $7a
	or a                                             ; $5500: $b7
	sbc d                                            ; $5501: $9a
	add c                                            ; $5502: $81
	ld a, [$dea6]                                    ; $5503: $fa $a6 $de
	rst SubAFromDE                                          ; $5506: $df
	db $fd                                           ; $5507: $fd
	sbc c                                            ; $5508: $99
	inc b                                            ; $5509: $04
	ld e, b                                          ; $550a: $58
	ld h, b                                          ; $550b: $60
	and b                                            ; $550c: $a0
	ld b, $18                                        ; $550d: $06 $18
	halt                                             ; $550f: $76
	jp nz, $839d                                     ; $5510: $c2 $9d $83

	rst SubAFromBC                                          ; $5513: $e7
	ld h, c                                          ; $5514: $61
	ret nc                                           ; $5515: $d0

	rst SubAFromDE                                          ; $5516: $df
	ld bc, $059e                                     ; $5517: $01 $9e $05
	ld [hl], a                                       ; $551a: $77
	sub e                                            ; $551b: $93
	ld h, d                                          ; $551c: $62
	and b                                            ; $551d: $a0
	ld h, a                                          ; $551e: $67
	ld [hl], a                                       ; $551f: $77
	ld a, [$107d]                                    ; $5520: $fa $7d $10
	adc l                                            ; $5523: $8d
	ld [$ead4], a                                    ; $5524: $ea $d4 $ea
	push de                                          ; $5527: $d5
	xor d                                            ; $5528: $aa
	ret nc                                           ; $5529: $d0

	dec d                                            ; $552a: $15
	ld a, [hl+]                                      ; $552b: $2a
	dec d                                            ; $552c: $15
	dec hl                                           ; $552d: $2b
	dec d                                            ; $552e: $15
	ld a, [hl+]                                      ; $552f: $2a
	ld d, l                                          ; $5530: $55
	cpl                                              ; $5531: $2f
	xor d                                            ; $5532: $aa
	ld d, l                                          ; $5533: $55
	xor d                                            ; $5534: $aa
	ld b, c                                          ; $5535: $41
	ld a, e                                          ; $5536: $7b
	ld a, h                                          ; $5537: $7c
	sbc [hl]                                         ; $5538: $9e
	inc bc                                           ; $5539: $03
	ld a, e                                          ; $553a: $7b
	add hl, hl                                       ; $553b: $29
	ld a, a                                          ; $553c: $7f
	ld e, e                                          ; $553d: $5b
	ld a, c                                          ; $553e: $79
	inc h                                            ; $553f: $24
	add [hl]                                         ; $5540: $86
	xor d                                            ; $5541: $aa
	ld d, c                                          ; $5542: $51
	and d                                            ; $5543: $a2
	ld b, h                                          ; $5544: $44
	ld a, [hl+]                                      ; $5545: $2a
	ld d, h                                          ; $5546: $54
	adc c                                            ; $5547: $89
	ld [bc], a                                       ; $5548: $02
	ld d, l                                          ; $5549: $55
	xor [hl]                                         ; $554a: $ae
	ld e, l                                          ; $554b: $5d
	cp e                                             ; $554c: $bb
	push af                                          ; $554d: $f5
	db $eb                                           ; $554e: $eb
	rst FarCall                                          ; $554f: $f7
	rst $38                                          ; $5550: $ff
	and b                                            ; $5551: $a0
	nop                                              ; $5552: $00
	db $10                                           ; $5553: $10
	jr nz, jr_03e_5597                               ; $5554: $20 $41

	sub d                                            ; $5556: $92
	ld b, $17                                        ; $5557: $06 $17
	ld e, a                                          ; $5559: $5f
	jp c, Jump_03e_7bff                              ; $555a: $da $ff $7b

	ldh a, [c]                                       ; $555d: $f2
	sbc d                                            ; $555e: $9a
	add d                                            ; $555f: $82
	ld [bc], a                                       ; $5560: $02
	inc h                                            ; $5561: $24
	ld hl, sp-$58                                    ; $5562: $f8 $a8
	reti                                             ; $5564: $d9


	rst $38                                          ; $5565: $ff
	sbc [hl]                                         ; $5566: $9e
	ld [$7ffd], sp                                   ; $5567: $08 $fd $7f
	db $eb                                           ; $556a: $eb
	sbc [hl]                                         ; $556b: $9e
	ld h, c                                          ; $556c: $61
	ld e, e                                          ; $556d: $5b
	sbc b                                            ; $556e: $98
	sbc d                                            ; $556f: $9a
	ld [bc], a                                       ; $5570: $02
	inc b                                            ; $5571: $04
	add h                                            ; $5572: $84
	adc h                                            ; $5573: $8c
	adc h                                            ; $5574: $8c
	reti                                             ; $5575: $d9


	rst $38                                          ; $5576: $ff
	sbc h                                            ; $5577: $9c
	ld a, [bc]                                       ; $5578: $0a
	dec d                                            ; $5579: $15
	ld a, [bc]                                       ; $557a: $0a
	ld a, e                                          ; $557b: $7b
	sub l                                            ; $557c: $95
	sbc l                                            ; $557d: $9d
	xor e                                            ; $557e: $ab
	sub l                                            ; $557f: $95
	reti                                             ; $5580: $d9


	rst $38                                          ; $5581: $ff
	sbc c                                            ; $5582: $99
	xor d                                            ; $5583: $aa
	call nc, $d78a                                   ; $5584: $d4 $8a $d7
	cp [hl]                                          ; $5587: $be
	rst FarCall                                          ; $5588: $f7
	rst SubAFromHL                                          ; $5589: $d7
	rst $38                                          ; $558a: $ff
	sbc h                                            ; $558b: $9c
	cp a                                             ; $558c: $bf
	rla                                              ; $558d: $17
	ccf                                              ; $558e: $3f
	ld e, c                                          ; $558f: $59
	and d                                            ; $5590: $a2
	rst GetHLinHL                                          ; $5591: $cf
	rst $38                                          ; $5592: $ff
	ld b, b                                          ; $5593: $40
	nop                                              ; $5594: $00
	sbc [hl]                                         ; $5595: $9e
	ld [hl], h                                       ; $5596: $74

jr_03e_5597:
	db $dd                                           ; $5597: $dd
	ld b, h                                          ; $5598: $44
	sbc [hl]                                         ; $5599: $9e
	ld b, e                                          ; $559a: $43
	db $dd                                           ; $559b: $dd
	inc sp                                           ; $559c: $33
	rst SubAFromDE                                          ; $559d: $df
	ld b, h                                          ; $559e: $44
	sbc [hl]                                         ; $559f: $9e
	ld b, a                                          ; $55a0: $47
	ld a, e                                          ; $55a1: $7b
	di                                               ; $55a2: $f3
	call c, $9e33                                    ; $55a3: $dc $33 $9e
	inc [hl]                                         ; $55a6: $34
	ld [hl], e                                       ; $55a7: $73
	push af                                          ; $55a8: $f5
	sbc $44                                          ; $55a9: $de $44
	sbc $33                                          ; $55ab: $de $33
	rst SubAFromDE                                          ; $55ad: $df
	ld [hl], a                                       ; $55ae: $77
	ld l, e                                          ; $55af: $6b
	or $99                                           ; $55b0: $f6 $99
	scf                                              ; $55b2: $37
	ld [hl], e                                       ; $55b3: $73
	halt                                             ; $55b4: $76
	inc sp                                           ; $55b5: $33
	inc sp                                           ; $55b6: $33
	ld [hl], $dd                                     ; $55b7: $36 $dd
	inc sp                                           ; $55b9: $33
	sub a                                            ; $55ba: $97
	scf                                              ; $55bb: $37
	ld [hl], $66                                     ; $55bc: $36 $66
	inc sp                                           ; $55be: $33
	ld [hl], $66                                     ; $55bf: $36 $66
	ld h, [hl]                                       ; $55c1: $66
	ld h, a                                          ; $55c2: $67
	ld a, e                                          ; $55c3: $7b
	db $e4                                           ; $55c4: $e4
	sbc [hl]                                         ; $55c5: $9e
	halt                                             ; $55c6: $76
	reti                                             ; $55c7: $d9


	ld h, [hl]                                       ; $55c8: $66
	call c, Call_03e_6b55                            ; $55c9: $dc $55 $6b
	ld sp, hl                                        ; $55cc: $f9
	sbc $55                                          ; $55cd: $de $55
	sbc [hl]                                         ; $55cf: $9e
	ld h, l                                          ; $55d0: $65
	bit 2, l                                         ; $55d1: $cb $55
	ld l, a                                          ; $55d3: $6f
	add hl, bc                                       ; $55d4: $09
	sbc c                                            ; $55d5: $99
	inc h                                            ; $55d6: $24
	rst SubAFromDE                                          ; $55d7: $df
	inc h                                            ; $55d8: $24
	rst SubAFromDE                                          ; $55d9: $df
	and h                                            ; $55da: $a4
	ld e, a                                          ; $55db: $5f
	ld [hl], a                                       ; $55dc: $77
	cp $9c                                           ; $55dd: $fe $9c
	db $e4                                           ; $55df: $e4
	rra                                              ; $55e0: $1f
	ld h, h                                          ; $55e1: $64
	ld a, e                                          ; $55e2: $7b
	cp $9b                                           ; $55e3: $fe $9b
	ld a, [bc]                                       ; $55e5: $0a
	push af                                          ; $55e6: $f5
	dec b                                            ; $55e7: $05
	ld a, [$fc6f]                                    ; $55e8: $fa $6f $fc
	sbc l                                            ; $55eb: $9d
	dec d                                            ; $55ec: $15
	ld [$fc77], a                                    ; $55ed: $ea $77 $fc
	sbc e                                            ; $55f0: $9b
	xor d                                            ; $55f1: $aa
	ld d, l                                          ; $55f2: $55
	ld d, l                                          ; $55f3: $55
	xor d                                            ; $55f4: $aa
	inc bc                                           ; $55f5: $03
	db $fc                                           ; $55f6: $fc
	inc bc                                           ; $55f7: $03
	db $fc                                           ; $55f8: $fc
	inc bc                                           ; $55f9: $03
	db $fc                                           ; $55fa: $fc
	inc bc                                           ; $55fb: $03
	db $fc                                           ; $55fc: $fc
	daa                                              ; $55fd: $27
	db $fc                                           ; $55fe: $fc
	sbc e                                            ; $55ff: $9b
	and h                                            ; $5600: $a4
	ld e, b                                          ; $5601: $58
	ld d, h                                          ; $5602: $54
	xor b                                            ; $5603: $a8
	ld d, a                                          ; $5604: $57
	db $fc                                           ; $5605: $fc
	sbc l                                            ; $5606: $9d
	dec bc                                           ; $5607: $0b
	inc a                                            ; $5608: $3c
	ld [hl], a                                       ; $5609: $77
	cp $9c                                           ; $560a: $fe $9c
	ld [$0b3f], sp                                   ; $560c: $08 $3f $0b
	ld a, e                                          ; $560f: $7b
	cp $7b                                           ; $5610: $fe $7b
	ld a, [$3c9c]                                    ; $5612: $fa $9c $3c
	ld d, d                                          ; $5615: $52
	xor h                                            ; $5616: $ac
	ld [hl], a                                       ; $5617: $77
	cp $9c                                           ; $5618: $fe $9c
	ld b, d                                          ; $561a: $42
	cp h                                             ; $561b: $bc
	ld d, d                                          ; $561c: $52
	ld a, e                                          ; $561d: $7b
	cp $7b                                           ; $561e: $fe $7b
	ld a, [$ac9a]                                    ; $5620: $fa $9a $ac
	add d                                            ; $5623: $82
	ld a, d                                          ; $5624: $7a
	add b                                            ; $5625: $80
	ld a, d                                          ; $5626: $7a
	ld d, a                                          ; $5627: $57
	db $fc                                           ; $5628: $fc
	sbc l                                            ; $5629: $9d
	add hl, hl                                       ; $562a: $29
	add $4f                                          ; $562b: $c6 $4f
	cp $9a                                           ; $562d: $fe $9a
	sbc l                                            ; $562f: $9d
	ld l, b                                          ; $5630: $68
	sub l                                            ; $5631: $95
	ld l, b                                          ; $5632: $68
	sbc l                                            ; $5633: $9d
	ld a, e                                          ; $5634: $7b
	cp $67                                           ; $5635: $fe $67
	ld a, [$269d]                                    ; $5637: $fa $9d $26
	call nz, $fe4f                                   ; $563a: $c4 $4f $fe
	sbc l                                            ; $563d: $9d
	sub l                                            ; $563e: $95
	ld a, d                                          ; $563f: $7a
	ld c, a                                          ; $5640: $4f
	cp $7e                                           ; $5641: $fe $7e
	adc $9e                                          ; $5643: $ce $9e
	ld l, h                                          ; $5645: $6c
	ld a, e                                          ; $5646: $7b
	cp $9a                                           ; $5647: $fe $9a
	xor b                                            ; $5649: $a8
	ld e, a                                          ; $564a: $5f
	adc b                                            ; $564b: $88
	ld a, a                                          ; $564c: $7f
	xor b                                            ; $564d: $a8
	ld a, e                                          ; $564e: $7b
	cp $9d                                           ; $564f: $fe $9d
	jr z, @+$01                                      ; $5651: $28 $ff

	halt                                             ; $5653: $76
	call z, $2a9d                                    ; $5654: $cc $9d $2a
	push de                                          ; $5657: $d5
	ld h, a                                          ; $5658: $67
	db $fc                                           ; $5659: $fc
	sbc l                                            ; $565a: $9d
	ld e, l                                          ; $565b: $5d
	and d                                            ; $565c: $a2
	ld [hl], a                                       ; $565d: $77
	ld e, h                                          ; $565e: $5c
	sbc l                                            ; $565f: $9d
	xor e                                            ; $5660: $ab
	ld d, h                                          ; $5661: $54
	ld e, a                                          ; $5662: $5f
	db $fc                                           ; $5663: $fc
	sbc d                                            ; $5664: $9a
	xor d                                            ; $5665: $aa
	nop                                              ; $5666: $00
	ld d, l                                          ; $5667: $55
	nop                                              ; $5668: $00
	xor d                                            ; $5669: $aa
	db $fc                                           ; $566a: $fc
	sbc c                                            ; $566b: $99
	ccf                                              ; $566c: $3f
	nop                                              ; $566d: $00
	add hl, de                                       ; $566e: $19
	ccf                                              ; $566f: $3f
	ld [de], a                                       ; $5670: $12
	dec sp                                           ; $5671: $3b
	ld e, a                                          ; $5672: $5f
	ldh a, [$99]                                     ; $5673: $f0 $99
	rst $38                                          ; $5675: $ff
	nop                                              ; $5676: $00
	ld h, d                                          ; $5677: $62
	rst $38                                          ; $5678: $ff
	sub l                                            ; $5679: $95
	rst $38                                          ; $567a: $ff
	ld d, a                                          ; $567b: $57
	ldh a, [$9b]                                     ; $567c: $f0 $9b
	db $eb                                           ; $567e: $eb
	rst $38                                          ; $567f: $ff
	or h                                             ; $5680: $b4
	rst FarCall                                          ; $5681: $f7
	ld d, a                                          ; $5682: $57
	ldh a, [$9b]                                     ; $5683: $f0 $9b
	ld e, d                                          ; $5685: $5a
	rst $38                                          ; $5686: $ff
	and l                                            ; $5687: $a5
	cp l                                             ; $5688: $bd
	ld d, a                                          ; $5689: $57
	ldh a, [$9b]                                     ; $568a: $f0 $9b
	push bc                                          ; $568c: $c5
	rst $38                                          ; $568d: $ff
	ld a, [hl+]                                      ; $568e: $2a
	rst AddAOntoHL                                          ; $568f: $ef
	ld d, a                                          ; $5690: $57
	ldh a, [$9b]                                     ; $5691: $f0 $9b
	db $e3                                           ; $5693: $e3
	rst FarCall                                          ; $5694: $f7
	jp nz, Jump_03e_5777                             ; $5695: $c2 $77 $57

	ldh a, [$9c]                                     ; $5698: $f0 $9c
	add hl, de                                       ; $569a: $19
	cp l                                             ; $569b: $bd
	ld de, $d053                                     ; $569c: $11 $53 $d0
	sbc e                                            ; $569f: $9b
	call c, $98de                                    ; $56a0: $dc $de $98
	sbc $6f                                          ; $56a3: $de $6f
	ldh a, [hDisp1_WY]                                     ; $56a5: $f0 $95
	ld bc, $0300                                     ; $56a7: $01 $00 $03
	nop                                              ; $56aa: $00
	ld sp, hl                                        ; $56ab: $f9
	ld [bc], a                                       ; $56ac: $02
	or c                                             ; $56ad: $b1
	ld a, [$fa11]                                    ; $56ae: $fa $11 $fa
	ld a, $c0                                        ; $56b1: $3e $c0
	ld a, [hl]                                       ; $56b3: $7e
	jp z, $0f8c                                      ; $56b4: $ca $8c $0f

	ccf                                              ; $56b7: $3f
	rra                                              ; $56b8: $1f
	jr nz, jr_03e_56bb                               ; $56b9: $20 $00

jr_03e_56bb:
	jr nz, jr_03e_56cc                               ; $56bb: $20 $0f

	jr nc, jr_03e_56fe                               ; $56bd: $30 $3f

	ccf                                              ; $56bf: $3f
	rra                                              ; $56c0: $1f
	ccf                                              ; $56c1: $3f
	ld d, d                                          ; $56c2: $52
	xor h                                            ; $56c3: $ac
	halt                                             ; $56c4: $76
	xor l                                            ; $56c5: $ad
	jp nc, $ffad                                     ; $56c6: $d2 $ad $ff

	ld [hl], e                                       ; $56c9: $73
	ret nz                                           ; $56ca: $c0

	db $dd                                           ; $56cb: $dd

jr_03e_56cc:
	rst $38                                          ; $56cc: $ff
	ld a, [hl]                                       ; $56cd: $7e
	call z, $f09e                                    ; $56ce: $cc $9e $f0
	ld a, d                                          ; $56d1: $7a
	ret z                                            ; $56d2: $c8

	sbc l                                            ; $56d3: $9d
	ld hl, sp+$02                                    ; $56d4: $f8 $02
	ld h, a                                          ; $56d6: $67
	ldh a, [$66]                                     ; $56d7: $f0 $66
	ret z                                            ; $56d9: $c8

	ld l, a                                          ; $56da: $6f
	sbc [hl]                                         ; $56db: $9e
	rst SubAFromDE                                          ; $56dc: $df
	rst $38                                          ; $56dd: $ff
	sbc l                                            ; $56de: $9d
	dec e                                            ; $56df: $1d
	add sp, $77                                      ; $56e0: $e8 $77
	cp $9d                                           ; $56e2: $fe $9d
	db $fd                                           ; $56e4: $fd
	ld [$f067], sp                                   ; $56e5: $08 $67 $f0
	ld h, [hl]                                       ; $56e8: $66
	ret z                                            ; $56e9: $c8

	sub a                                            ; $56ea: $97
	ld b, $04                                        ; $56eb: $06 $04
	ld b, $04                                        ; $56ed: $06 $04
	and $07                                          ; $56ef: $e6 $07
	rst SubAFromBC                                          ; $56f1: $e7
	rst SubAFromBC                                          ; $56f2: $e7
	ld l, [hl]                                       ; $56f3: $6e
	jp z, $809b                                      ; $56f4: $ca $9b $80

	dec [hl]                                         ; $56f7: $35
	add b                                            ; $56f8: $80
	dec d                                            ; $56f9: $15
	ld [hl], a                                       ; $56fa: $77
	rst SubAFromDE                                          ; $56fb: $df
	rst SubAFromDE                                          ; $56fc: $df
	rst $38                                          ; $56fd: $ff

jr_03e_56fe:
	sbc [hl]                                         ; $56fe: $9e
	jr c, jr_03e_577c                                ; $56ff: $38 $7b

	cp $9e                                           ; $5701: $fe $9e
	jr nc, @+$7d                                     ; $5703: $30 $7b

	cp $9a                                           ; $5705: $fe $9a
	ld [hl], b                                       ; $5707: $70
	rst $38                                          ; $5708: $ff
	ldh [rIE], a                                     ; $5709: $e0 $ff
	ld h, b                                          ; $570b: $60
	ld a, e                                          ; $570c: $7b
	cp $9b                                           ; $570d: $fe $9b
	ld a, $c1                                        ; $570f: $3e $c1
	ld a, a                                          ; $5711: $7f
	add b                                            ; $5712: $80
	ld [hl], a                                       ; $5713: $77
	db $fc                                           ; $5714: $fc
	sbc l                                            ; $5715: $9d
	cp a                                             ; $5716: $bf
	ld b, b                                          ; $5717: $40
	ld l, a                                          ; $5718: $6f
	db $fc                                           ; $5719: $fc
	ld e, [hl]                                       ; $571a: $5e
	call nz, $d596                                   ; $571b: $c4 $96 $d5
	ld a, [hl+]                                      ; $571e: $2a
	db $eb                                           ; $571f: $eb
	inc d                                            ; $5720: $14
	push de                                          ; $5721: $d5
	ld a, [hl+]                                      ; $5722: $2a
	db $10                                           ; $5723: $10
	dec sp                                           ; $5724: $3b
	ld [de], a                                       ; $5725: $12
	ld d, e                                          ; $5726: $53
	cp $9a                                           ; $5727: $fe $9a
	ld b, e                                          ; $5729: $43
	cp l                                             ; $572a: $bd
	sub a                                            ; $572b: $97
	cp l                                             ; $572c: $bd
	sub [hl]                                         ; $572d: $96
	ld l, e                                          ; $572e: $6b
	cp $96                                           ; $572f: $fe $96
	call c, $95bf                                    ; $5731: $dc $bf $95
	rst $38                                          ; $5734: $ff
	and e                                            ; $5735: $a3
	rst FarCall                                          ; $5736: $f7
	db $e3                                           ; $5737: $e3
	rst FarCall                                          ; $5738: $f7
	and e                                            ; $5739: $a3
	ld [hl], e                                       ; $573a: $73
	cp $7f                                           ; $573b: $fe $7f
	ld hl, sp+$7f                                    ; $573d: $f8 $7f
	cp $9b                                           ; $573f: $fe $9b
	db $10                                           ; $5741: $10
	rst $38                                          ; $5742: $ff
	jr @-$41                                         ; $5743: $18 $bd

	ld d, a                                          ; $5745: $57
	cp $7e                                           ; $5746: $fe $7e
	ret nz                                           ; $5748: $c0

	sbc l                                            ; $5749: $9d
	call nz, $57ee                                   ; $574a: $c4 $ee $57
	cp $98                                           ; $574d: $fe $98
	ld a, [hl+]                                      ; $574f: $2a
	xor $e2                                          ; $5750: $ee $e2
	ld [hl], a                                       ; $5752: $77
	and d                                            ; $5753: $a2
	ld [hl], a                                       ; $5754: $77
	and e                                            ; $5755: $a3
	ld e, e                                          ; $5756: $5b
	cp $80                                           ; $5757: $fe $80
	db $10                                           ; $5759: $10
	cp l                                             ; $575a: $bd
	add hl, bc                                       ; $575b: $09
	db $ed                                           ; $575c: $ed
	ld c, c                                          ; $575d: $49
	rst $38                                          ; $575e: $ff
	ld b, b                                          ; $575f: $40
	and $00                                          ; $5760: $e6 $00
	db $e4                                           ; $5762: $e4
	ld bc, $01e5                                     ; $5763: $01 $e5 $01
	and l                                            ; $5766: $a5
	add hl, de                                       ; $5767: $19
	cp l                                             ; $5768: $bd
	adc b                                            ; $5769: $88
	sbc $48                                          ; $576a: $de $48
	ld e, [hl]                                       ; $576c: $5e
	ld b, h                                          ; $576d: $44
	sub $40                                          ; $576e: $d6 $40
	ld d, d                                          ; $5770: $52
	ld b, b                                          ; $5771: $40
	jp nc, $d644                                     ; $5772: $d2 $44 $d6

	ld b, h                                          ; $5775: $44
	ld e, [hl]                                       ; $5776: $5e

Jump_03e_5777:
	call z, $de99                                    ; $5777: $cc $99 $de
	ld d, c                                          ; $577a: $51
	sbc d                                            ; $577b: $9a

jr_03e_577c:
	ld [hl], c                                       ; $577c: $71
	sbc d                                            ; $577d: $9a
	ld de, $fe7b                                     ; $577e: $11 $7b $fe
	sub a                                            ; $5781: $97
	ld h, c                                          ; $5782: $61
	ld a, [$7a91]                                    ; $5783: $fa $91 $7a
	ld bc, $011a                                     ; $5786: $01 $1a $01
	ld e, d                                          ; $5789: $5a
	ld b, [hl]                                       ; $578a: $46
	ret nz                                           ; $578b: $c0

	sbc $3f                                          ; $578c: $de $3f
	sbc h                                            ; $578e: $9c
	jr nc, jr_03e_57cb                               ; $578f: $30 $3a

	dec [hl]                                         ; $5791: $35
	ld [hl], a                                       ; $5792: $77
	db $fc                                           ; $5793: $fc
	ld l, a                                          ; $5794: $6f
	cp $de                                           ; $5795: $fe $de
	rst $38                                          ; $5797: $ff
	sub [hl]                                         ; $5798: $96
	ld bc, $53ad                                     ; $5799: $01 $ad $53
	db $ed                                           ; $579c: $ed
	inc de                                           ; $579d: $13

Jump_03e_579e:
	xor l                                            ; $579e: $ad
	ld d, e                                          ; $579f: $53
	xor l                                            ; $57a0: $ad
	ld b, c                                          ; $57a1: $41
	ld a, e                                          ; $57a2: $7b
	cp $9b                                           ; $57a3: $fe $9b
	ld d, e                                          ; $57a5: $53
	rst $38                                          ; $57a6: $ff
	rst $38                                          ; $57a7: $ff
	xor h                                            ; $57a8: $ac
	ld a, e                                          ; $57a9: $7b
	cp $df                                           ; $57aa: $fe $df
	rst $38                                          ; $57ac: $ff
	sbc b                                            ; $57ad: $98
	xor [hl]                                         ; $57ae: $ae
	db $fd                                           ; $57af: $fd
	xor [hl]                                         ; $57b0: $ae
	db $fd                                           ; $57b1: $fd
	xor a                                            ; $57b2: $af
	rst $38                                          ; $57b3: $ff
	xor a                                            ; $57b4: $af
	sbc $ff                                          ; $57b5: $de $ff
	sub h                                            ; $57b7: $94
	sub d                                            ; $57b8: $92
	ld l, l                                          ; $57b9: $6d
	sub d                                            ; $57ba: $92
	ld l, l                                          ; $57bb: $6d
	rst $38                                          ; $57bc: $ff
	ld l, l                                          ; $57bd: $6d
	db $db                                           ; $57be: $db
	inc h                                            ; $57bf: $24
	db $db                                           ; $57c0: $db
	inc h                                            ; $57c1: $24
	rst $38                                          ; $57c2: $ff
	ld a, e                                          ; $57c3: $7b
	ld hl, sp-$21                                    ; $57c4: $f8 $df
	rst $38                                          ; $57c6: $ff
	sbc c                                            ; $57c7: $99
	ld c, c                                          ; $57c8: $49
	or [hl]                                          ; $57c9: $b6
	ld c, c                                          ; $57ca: $49

jr_03e_57cb:
	or [hl]                                          ; $57cb: $b6
	rst $38                                          ; $57cc: $ff
	or [hl]                                          ; $57cd: $b6
	ld a, e                                          ; $57ce: $7b
	db $eb                                           ; $57cf: $eb
	sbc l                                            ; $57d0: $9d
	sub d                                            ; $57d1: $92
	rst $38                                          ; $57d2: $ff
	ld a, e                                          ; $57d3: $7b
	ld hl, sp-$21                                    ; $57d4: $f8 $df
	rst SubAFromBC                                          ; $57d6: $e7
	sub h                                            ; $57d7: $94
	daa                                              ; $57d8: $27
	and $27                                          ; $57d9: $e6 $27
	and $e7                                          ; $57db: $e6 $e7
	and $a7                                          ; $57dd: $e6 $a7
	ld h, [hl]                                       ; $57df: $66
	and a                                            ; $57e0: $a7
	ld h, [hl]                                       ; $57e1: $66

jr_03e_57e2:
	rst SubAFromBC                                          ; $57e2: $e7
	ld a, e                                          ; $57e3: $7b
	ld hl, sp+$7a                                    ; $57e4: $f8 $7a
	call z, Call_03e_6a9d                            ; $57e6: $cc $9d $6a
	sub l                                            ; $57e9: $95
	ld a, e                                          ; $57ea: $7b
	cp $7e                                           ; $57eb: $fe $7e
	or $77                                           ; $57ed: $f6 $77
	ld a, [$fe7f]                                    ; $57ef: $fa $7f $fe
	sbc l                                            ; $57f2: $9d
	and b                                            ; $57f3: $a0
	ld a, a                                          ; $57f4: $7f
	ld [hl], a                                       ; $57f5: $77
	cp $76                                           ; $57f6: $fe $76
	add $9e                                          ; $57f8: $c6 $9e
	ret nz                                           ; $57fa: $c0

	ld a, d                                          ; $57fb: $7a
	cp [hl]                                          ; $57fc: $be
	ld a, a                                          ; $57fd: $7f
	cp $66                                           ; $57fe: $fe $66
	ret z                                            ; $5800: $c8

	ld h, a                                          ; $5801: $67
	db $fc                                           ; $5802: $fc
	ld a, [hl]                                       ; $5803: $7e
	call z, $f59b                                    ; $5804: $cc $9b $f5
	ld a, [bc]                                       ; $5807: $0a
	ei                                               ; $5808: $fb
	inc b                                            ; $5809: $04
	ld [hl], a                                       ; $580a: $77
	db $fc                                           ; $580b: $fc
	sbc l                                            ; $580c: $9d
	db $fd                                           ; $580d: $fd
	ld [bc], a                                       ; $580e: $02
	ld a, d                                          ; $580f: $7a
	ld [hl], b                                       ; $5810: $70
	rst $38                                          ; $5811: $ff

jr_03e_5812:
	ld a, d                                          ; $5812: $7a
	ld h, $98                                        ; $5813: $26 $98
	dec de                                           ; $5815: $1b
	dec sp                                           ; $5816: $3b
	dec de                                           ; $5817: $1b
	dec sp                                           ; $5818: $3b
	inc de                                           ; $5819: $13
	dec sp                                           ; $581a: $3b
	ld de, $fe73                                     ; $581b: $11 $73 $fe
	adc [hl]                                         ; $581e: $8e
	ld b, l                                          ; $581f: $45
	nop                                              ; $5820: $00
	add b                                            ; $5821: $80
	nop                                              ; $5822: $00
	jr nz, jr_03e_57e2                               ; $5823: $20 $bd

	sub l                                            ; $5825: $95
	cp l                                             ; $5826: $bd
	ld [$0bbd], sp                                   ; $5827: $08 $bd $0b
	cp a                                             ; $582a: $bf
	dec c                                            ; $582b: $0d
	cp [hl]                                          ; $582c: $be
	rla                                              ; $582d: $17
	cp b                                             ; $582e: $b8
	inc d                                            ; $582f: $14
	cp $92                                           ; $5830: $fe $92
	ldh [$f7], a                                     ; $5832: $e0 $f7
	ld d, $f7                                        ; $5834: $16 $f7
	ldh [c], a                                       ; $5836: $e2
	rst FarCall                                          ; $5837: $f7
	ldh a, [c]                                       ; $5838: $f2
	rst FarCall                                          ; $5839: $f7
	jp z, $e63f                                      ; $583a: $ca $3f $e6

	rra                                              ; $583d: $1f
	and l                                            ; $583e: $a5
	cp $7e                                           ; $583f: $fe $7e
	ret z                                            ; $5841: $c8

	sbc [hl]                                         ; $5842: $9e
	sbc h                                            ; $5843: $9c
	ld h, d                                          ; $5844: $62
	cp [hl]                                          ; $5845: $be
	sbc [hl]                                         ; $5846: $9e
	ld a, [hl+]                                      ; $5847: $2a
	db $fd                                           ; $5848: $fd
	sbc e                                            ; $5849: $9b
	rst AddAOntoHL                                          ; $584a: $ef
	xor $ef                                          ; $584b: $ee $ef
	call nz, $fe6b                                   ; $584d: $c4 $6b $fe
	sbc b                                            ; $5850: $98
	call nc, $0023                                   ; $5851: $d4 $23 $00
	nop                                              ; $5854: $00
	inc bc                                           ; $5855: $03
	ld [hl], a                                       ; $5856: $77
	inc hl                                           ; $5857: $23
	ld h, e                                          ; $5858: $63
	cp $9e                                           ; $5859: $fe $9e
	sbc c                                            ; $585b: $99
	db $fd                                           ; $585c: $fd
	sub a                                            ; $585d: $97
	cp a                                             ; $585e: $bf
	add hl, sp                                       ; $585f: $39
	db $fd                                           ; $5860: $fd
	and c                                            ; $5861: $a1
	xor l                                            ; $5862: $ad
	jr nz, jr_03e_5812                               ; $5863: $20 $ad

	jr z, jr_03e_58e2                                ; $5865: $28 $7b

	cp $9e                                           ; $5867: $fe $9e
	call c, $d679                                    ; $5869: $dc $79 $d6
	adc a                                            ; $586c: $8f
	ld [bc], a                                       ; $586d: $02
	call c, $dc0e                                    ; $586e: $dc $0e $dc
	add [hl]                                         ; $5871: $86
	call nc, $d082                                   ; $5872: $d4 $82 $d0
	ld [bc], a                                       ; $5875: $02
	call nc, Call_03e_7422                           ; $5876: $d4 $22 $74
	or c                                             ; $5879: $b1
	cp d                                             ; $587a: $ba
	sub c                                            ; $587b: $91
	sbc d                                            ; $587c: $9a
	ld a, e                                          ; $587d: $7b
	db $fc                                           ; $587e: $fc
	sub [hl]                                         ; $587f: $96
	ld a, [$da81]                                    ; $5880: $fa $81 $da
	ld bc, $711a                                     ; $5883: $01 $1a $71
	ld a, d                                          ; $5886: $7a
	pop de                                           ; $5887: $d1
	jp c, $c046                                      ; $5888: $da $46 $c0

	halt                                             ; $588b: $76
	call z, $3798                                    ; $588c: $cc $98 $37
	dec a                                            ; $588f: $3d
	ld a, $31                                        ; $5890: $3e $31
	ccf                                              ; $5892: $3f
	jr nc, @+$22                                     ; $5893: $30 $20

	sbc $30                                          ; $5895: $de $30
	rst SubAFromDE                                          ; $5897: $df
	ccf                                              ; $5898: $3f
	ld a, d                                          ; $5899: $7a
	ret z                                            ; $589a: $c8

	ld a, [hl]                                       ; $589b: $7e
	call z, Call_03e_499e                            ; $589c: $cc $9e $49
	ld a, e                                          ; $589f: $7b
	db $fc                                           ; $58a0: $fc
	ld a, l                                          ; $58a1: $7d
	ld c, l                                          ; $58a2: $4d
	ld [hl], c                                       ; $58a3: $71
	rst GetHLinHL                                          ; $58a4: $cf
	ld a, [hl]                                       ; $58a5: $7e
	jp z, $ac9d                                      ; $58a6: $ca $9d $ac

	db $fd                                           ; $58a9: $fd
	ld [hl], a                                       ; $58aa: $77
	ld a, [$fe9e]                                    ; $58ab: $fa $9e $fe
	ld [hl], l                                       ; $58ae: $75
	ld l, l                                          ; $58af: $6d
	ld a, e                                          ; $58b0: $7b
	ldh a, [$7e]                                     ; $58b1: $f0 $7e
	jp z, $929e                                      ; $58b3: $ca $9e $92

	ld a, d                                          ; $58b6: $7a
	ret z                                            ; $58b7: $c8

	ld a, e                                          ; $58b8: $7b
	ld a, [$6d9e]                                    ; $58b9: $fa $9e $6d
	ld l, a                                          ; $58bc: $6f
	ldh a, [$7e]                                     ; $58bd: $f0 $7e
	jp z, Jump_03e_499e                              ; $58bf: $ca $9e $49

	ld a, d                                          ; $58c2: $7a
	ret z                                            ; $58c3: $c8

	ld a, e                                          ; $58c4: $7b
	ld a, [$b69e]                                    ; $58c5: $fa $9e $b6
	ld l, a                                          ; $58c8: $6f
	ldh a, [$7a]                                     ; $58c9: $f0 $7a
	jp nz, $c87a                                     ; $58cb: $c2 $7a $c8

	ld a, [hl]                                       ; $58ce: $7e
	call nz, $269d                                   ; $58cf: $c4 $9d $26
	rst SubAFromBC                                          ; $58d2: $e7
	ld [hl], l                                       ; $58d3: $75
	ld a, [hl]                                       ; $58d4: $7e
	rst SubAFromDE                                          ; $58d5: $df
	rst SubAFromBC                                          ; $58d6: $e7
	ld h, [hl]                                       ; $58d7: $66

jr_03e_58d8:
	ret z                                            ; $58d8: $c8

	sbc [hl]                                         ; $58d9: $9e

jr_03e_58da:
	ld l, d                                          ; $58da: $6a
	ei                                               ; $58db: $fb
	sbc d                                            ; $58dc: $9a
	rst $38                                          ; $58dd: $ff
	ldh a, [$7f]                                     ; $58de: $f0 $7f
	ldh a, [$3f]                                     ; $58e0: $f0 $3f

jr_03e_58e2:
	ld a, e                                          ; $58e2: $7b
	cp $9e                                           ; $58e3: $fe $9e
	rra                                              ; $58e5: $1f
	ld l, a                                          ; $58e6: $6f
	cp $9d                                           ; $58e7: $fe $9d
	db $fc                                           ; $58e9: $fc
	ccf                                              ; $58ea: $3f
	ld b, [hl]                                       ; $58eb: $46
	ret nz                                           ; $58ec: $c0

	halt                                             ; $58ed: $76
	call z, $fe57                                    ; $58ee: $cc $57 $fe
	halt                                             ; $58f1: $76
	call z, $7c7d                                    ; $58f2: $cc $7d $7c
	sbc [hl]                                         ; $58f5: $9e
	nop                                              ; $58f6: $00
	ld h, e                                          ; $58f7: $63
	cp $9a                                           ; $58f8: $fe $9a
	sub d                                            ; $58fa: $92
	cp b                                             ; $58fb: $b8

jr_03e_58fc:
	sbc l                                            ; $58fc: $9d
	or b                                             ; $58fd: $b0
	sbc c                                            ; $58fe: $99
	ld [hl], e                                       ; $58ff: $73
	cp $7f                                           ; $5900: $fe $7f
	ld hl, sp-$6e                                    ; $5902: $f8 $92
	sbc a                                            ; $5904: $9f
	or b                                             ; $5905: $b0
	sub l                                            ; $5906: $95
	or d                                             ; $5907: $b2
	jp nz, $823f                                     ; $5908: $c2 $3f $82

	ld a, a                                          ; $590b: $7f
	jp nz, $e23f                                     ; $590c: $c2 $3f $e2

	rra                                              ; $590f: $1f
	call nz, $c47a                                   ; $5910: $c4 $7a $c4
	ld a, a                                          ; $5913: $7f
	ld hl, sp-$65                                    ; $5914: $f8 $9b
	and d                                            ; $5916: $a2
	ld e, a                                          ; $5917: $5f
	nop                                              ; $5918: $00
	cp l                                             ; $5919: $bd
	ld h, e                                          ; $591a: $63
	cp $9a                                           ; $591b: $fe $9a
	or l                                             ; $591d: $b5
	ld d, [hl]                                       ; $591e: $56
	pop hl                                           ; $591f: $e1
	ld d, d                                          ; $5920: $52
	pop hl                                           ; $5921: $e1
	halt                                             ; $5922: $76
	call z, Call_03e_449e                            ; $5923: $cc $9e $44
	ld [hl], e                                       ; $5926: $73
	cp $6f                                           ; $5927: $fe $6f
	or $5e                                           ; $5929: $f6 $5e
	add $6f                                          ; $592b: $c6 $6f
	cp $7e                                           ; $592d: $fe $7e
	adc $9a                                          ; $592f: $ce $9a
	jr nz, jr_03e_58d8                               ; $5931: $20 $a5

	jr nz, jr_03e_58da                               ; $5933: $20 $a5

	add hl, hl                                       ; $5935: $29
	ld a, d                                          ; $5936: $7a
	add $7f                                          ; $5937: $c6 $7f
	ld a, [$3883]                                    ; $5939: $fa $83 $38
	cp l                                             ; $593c: $bd
	jr c, jr_03e_58fc                                ; $593d: $38 $bd

	ld [bc], a                                       ; $593f: $02
	ld d, b                                          ; $5940: $50
	add d                                            ; $5941: $82
	ret nc                                           ; $5942: $d0

	add h                                            ; $5943: $84
	sub $4c                                          ; $5944: $d6 $4c
	sbc $0a                                          ; $5946: $de $0a
	ld e, b                                          ; $5948: $58
	nop                                              ; $5949: $00
	ld d, [hl]                                       ; $594a: $56
	ld [bc], a                                       ; $594b: $02
	ld d, b                                          ; $594c: $50
	ld a, [bc]                                       ; $594d: $0a
	ld e, b                                          ; $594e: $58
	sub c                                            ; $594f: $91
	sbc d                                            ; $5950: $9a
	pop de                                           ; $5951: $d1
	jp c, $fac9                                      ; $5952: $da $c9 $fa

	pop af                                           ; $5955: $f1
	ld a, [$4478]                                    ; $5956: $fa $78 $44
	sbc [hl]                                         ; $5959: $9e
	cp d                                             ; $595a: $ba
	ld [hl], a                                       ; $595b: $77
	cp $01                                           ; $595c: $fe $01
	add b                                            ; $595e: $80
	rst SubAFromDE                                          ; $595f: $df
	rst $38                                          ; $5960: $ff
	sbc h                                            ; $5961: $9c
	ld b, $af                                        ; $5962: $06 $af
	ld d, [hl]                                       ; $5964: $56
	ld [hl], a                                       ; $5965: $77
	db $fc                                           ; $5966: $fc
	ld l, a                                          ; $5967: $6f
	cp $de                                           ; $5968: $fe $de
	rst $38                                          ; $596a: $ff
	sbc h                                            ; $596b: $9c
	nop                                              ; $596c: $00
	ld l, d                                          ; $596d: $6a
	sub l                                            ; $596e: $95
	ld [hl], a                                       ; $596f: $77
	db $fc                                           ; $5970: $fc
	ld l, a                                          ; $5971: $6f
	cp $77                                           ; $5972: $fe $77
	ldh a, [$9d]                                     ; $5974: $f0 $9d
	cp d                                             ; $5976: $ba
	ld b, l                                          ; $5977: $45
	ld [hl], a                                       ; $5978: $77
	db $fc                                           ; $5979: $fc
	ld l, a                                          ; $597a: $6f
	cp $de                                           ; $597b: $fe $de
	rst $38                                          ; $597d: $ff
	sbc h                                            ; $597e: $9c
	rra                                              ; $597f: $1f
	cp a                                             ; $5980: $bf
	ld d, l                                          ; $5981: $55
	ld [hl], a                                       ; $5982: $77
	db $fc                                           ; $5983: $fc
	ld l, a                                          ; $5984: $6f
	cp $dc                                           ; $5985: $fe $dc
	rst SubAFromBC                                          ; $5987: $e7
	sbc [hl]                                         ; $5988: $9e
	ld h, h                                          ; $5989: $64
	ld e, a                                          ; $598a: $5f
	cp $dd                                           ; $598b: $fe $dd
	rst $38                                          ; $598d: $ff
	ld a, [hl]                                       ; $598e: $7e
	ld [$7d9d], a                                    ; $598f: $ea $9d $7d
	add d                                            ; $5992: $82
	ld [hl], a                                       ; $5993: $77
	cp $9b                                           ; $5994: $fe $9b
	ld a, e                                          ; $5996: $7b
	add h                                            ; $5997: $84
	ld a, e                                          ; $5998: $7b
	add h                                            ; $5999: $84
	ld c, [hl]                                       ; $599a: $4e
	ldh [c], a                                       ; $599b: $e2
	ld a, d                                          ; $599c: $7a
	adc a                                            ; $599d: $8f
	sub b                                            ; $599e: $90
	nop                                              ; $599f: $00
	ccf                                              ; $59a0: $3f
	db $10                                           ; $59a1: $10
	ld a, a                                          ; $59a2: $7f
	jr nz, jr_03e_5a24                               ; $59a3: $20 $7f

	ld b, b                                          ; $59a5: $40
	rst $38                                          ; $59a6: $ff
	sub b                                            ; $59a7: $90
	rst $38                                          ; $59a8: $ff
	and h                                            ; $59a9: $a4
	rst AddAOntoHL                                          ; $59aa: $ef
	call z, $94df                                    ; $59ab: $cc $df $94
	ld b, [hl]                                       ; $59ae: $46
	ret nz                                           ; $59af: $c0

	add b                                            ; $59b0: $80
	ccf                                              ; $59b1: $3f
	dec sp                                           ; $59b2: $3b
	ccf                                              ; $59b3: $3f
	dec hl                                           ; $59b4: $2b
	ccf                                              ; $59b5: $3f
	inc hl                                           ; $59b6: $23
	ccf                                              ; $59b7: $3f
	inc hl                                           ; $59b8: $23
	dec sp                                           ; $59b9: $3b
	inc hl                                           ; $59ba: $23
	dec sp                                           ; $59bb: $3b
	ld [bc], a                                       ; $59bc: $02
	dec sp                                           ; $59bd: $3b
	jr nz, jr_03e_59fb                               ; $59be: $20 $3b

	nop                                              ; $59c0: $00
	sub b                                            ; $59c1: $90
	or h                                             ; $59c2: $b4
	sub b                                            ; $59c3: $90
	or d                                             ; $59c4: $b2
	sbc b                                            ; $59c5: $98
	cp c                                             ; $59c6: $b9
	sbc c                                            ; $59c7: $99
	cp e                                             ; $59c8: $bb
	adc a                                            ; $59c9: $8f
	cp a                                             ; $59ca: $bf
	adc a                                            ; $59cb: $8f
	pop hl                                           ; $59cc: $e1
	xor a                                            ; $59cd: $af
	ret nz                                           ; $59ce: $c0

	xor a                                            ; $59cf: $af
	add b                                            ; $59d0: $80
	ldh [rSC], a                                     ; $59d1: $e0 $02
	ccf                                              ; $59d3: $3f
	ld b, $7f                                        ; $59d4: $06 $7f
	rlca                                             ; $59d6: $07
	ld a, a                                          ; $59d7: $7f
	rra                                              ; $59d8: $1f
	rst $38                                          ; $59d9: $ff
	ld a, c                                          ; $59da: $79
	rst FarCall                                          ; $59db: $f7
	ld a, [$fae1]                                    ; $59dc: $fa $e1 $fa
	ld bc, $01f3                                     ; $59df: $01 $f3 $01
	ld h, b                                          ; $59e2: $60
	pop hl                                           ; $59e3: $e1
	ld [hl], b                                       ; $59e4: $70
	pop af                                           ; $59e5: $f1
	ld l, [hl]                                       ; $59e6: $6e
	di                                               ; $59e7: $f3
	ldh [c], a                                       ; $59e8: $e2
	rst $38                                          ; $59e9: $ff
	db $ec                                           ; $59ea: $ec
	di                                               ; $59eb: $f3
	xor l                                            ; $59ec: $ad
	di                                               ; $59ed: $f3
	ld c, e                                          ; $59ee: $4b
	or c                                             ; $59ef: $b1
	sbc l                                            ; $59f0: $9d
	db $ec                                           ; $59f1: $ec
	ld de, $c86e                                     ; $59f2: $11 $6e $c8
	halt                                             ; $59f5: $76
	add $77                                          ; $59f6: $c6 $77
	ld a, [$809e]                                    ; $59f8: $fa $9e $80

jr_03e_59fb:
	ld b, d                                          ; $59fb: $42
	ret nz                                           ; $59fc: $c0

	sub b                                            ; $59fd: $90
	inc a                                            ; $59fe: $3c
	xor l                                            ; $59ff: $ad
	inc l                                            ; $5a00: $2c
	cp l                                             ; $5a01: $bd
	inc a                                            ; $5a02: $3c
	cp l                                             ; $5a03: $bd
	inc l                                            ; $5a04: $2c
	cp l                                             ; $5a05: $bd
	dec l                                            ; $5a06: $2d
	xor l                                            ; $5a07: $ad
	inc l                                            ; $5a08: $2c
	xor l                                            ; $5a09: $ad
	inc l                                            ; $5a0a: $2c
	adc l                                            ; $5a0b: $8d
	inc l                                            ; $5a0c: $2c
	ld a, d                                          ; $5a0d: $7a
	ret nz                                           ; $5a0e: $c0

	ld a, [hl]                                       ; $5a0f: $7e
	ret z                                            ; $5a10: $c8

	sbc [hl]                                         ; $5a11: $9e
	ld b, $7a                                        ; $5a12: $06 $7a
	ret z                                            ; $5a14: $c8

	sbc e                                            ; $5a15: $9b
	ld c, d                                          ; $5a16: $4a
	ret c                                            ; $5a17: $d8

	adc h                                            ; $5a18: $8c
	jp c, $fe7b                                      ; $5a19: $da $7b $fe

	sbc l                                            ; $5a1c: $9d
	sbc $91                                          ; $5a1d: $de $91
	ld a, d                                          ; $5a1f: $7a
	call nz, $319e                                   ; $5a20: $c4 $9e $31
	ld [hl], d                                       ; $5a23: $72

jr_03e_5a24:
	call nz, $fa7f                                   ; $5a24: $c4 $7f $fa
	ld a, b                                          ; $5a27: $78
	inc a                                            ; $5a28: $3c
	sbc [hl]                                         ; $5a29: $9e
	sbc d                                            ; $5a2a: $9a
	ld b, [hl]                                       ; $5a2b: $46
	ret nz                                           ; $5a2c: $c0

	sbc c                                            ; $5a2d: $99
	dec b                                            ; $5a2e: $05
	ld a, [hl-]                                      ; $5a2f: $3a
	dec b                                            ; $5a30: $05
	ld a, [hl-]                                      ; $5a31: $3a
	nop                                              ; $5a32: $00
	ccf                                              ; $5a33: $3f
	ld [hl], a                                       ; $5a34: $77
	db $fc                                           ; $5a35: $fc
	ld a, b                                          ; $5a36: $78
	sub $9c                                          ; $5a37: $d6 $9c
	jr nc, jr_03e_5a3b                               ; $5a39: $30 $00

jr_03e_5a3b:
	ccf                                              ; $5a3b: $3f
	ld [hl], d                                       ; $5a3c: $72
	call z, $fc7b                                    ; $5a3d: $cc $7b $fc
	sbc l                                            ; $5a40: $9d
	or $0f                                           ; $5a41: $f6 $0f
	ld l, l                                          ; $5a43: $6d
	or b                                             ; $5a44: $b0
	ld [hl], d                                       ; $5a45: $72
	call z, $fc77                                    ; $5a46: $cc $77 $fc
	ld l, l                                          ; $5a49: $6d
	pop bc                                           ; $5a4a: $c1
	sbc [hl]                                         ; $5a4b: $9e
	rst $38                                          ; $5a4c: $ff
	ld [hl], d                                       ; $5a4d: $72
	call z, $fc77                                    ; $5a4e: $cc $77 $fc
	ld l, e                                          ; $5a51: $6b
	ldh a, [rPCM12]                                  ; $5a52: $f0 $76
	call z, $ff9b                                    ; $5a54: $cc $9b $ff
	ld e, a                                          ; $5a57: $5f
	cp a                                             ; $5a58: $bf
	ld d, h                                          ; $5a59: $54
	ld h, a                                          ; $5a5a: $67
	ldh a, [$72]                                     ; $5a5b: $f0 $72
	jp z, $e497                                      ; $5a5d: $ca $97 $e4

	rst SubAFromBC                                          ; $5a60: $e7
	ld h, [hl]                                       ; $5a61: $66
	rst SubAFromBC                                          ; $5a62: $e7
	ld h, $24                                        ; $5a63: $26 $24
	inc b                                            ; $5a65: $04
	rlca                                             ; $5a66: $07
	ld a, c                                          ; $5a67: $79
	add b                                            ; $5a68: $80
	sub l                                            ; $5a69: $95
	cp $01                                           ; $5a6a: $fe $01
	cp $05                                           ; $5a6c: $fe $05
	rst $38                                          ; $5a6e: $ff
	inc b                                            ; $5a6f: $04
	rst $38                                          ; $5a70: $ff
	add $c6                                          ; $5a71: $c6 $c6
	add hl, sp                                       ; $5a73: $39
	ld [hl], e                                       ; $5a74: $73
	pop hl                                           ; $5a75: $e1
	ld a, d                                          ; $5a76: $7a
	ret nc                                           ; $5a77: $d0

	ld l, a                                          ; $5a78: $6f
	ld a, [$fe7b]                                    ; $5a79: $fa $7b $fe
	db $dd                                           ; $5a7c: $dd
	rst $38                                          ; $5a7d: $ff
	adc [hl]                                         ; $5a7e: $8e
	pop bc                                           ; $5a7f: $c1
	cp a                                             ; $5a80: $bf
	inc h                                            ; $5a81: $24
	ld a, a                                          ; $5a82: $7f
	ld c, h                                          ; $5a83: $4c
	rst $38                                          ; $5a84: $ff
	call c, $f47f                                    ; $5a85: $dc $7f $f4
	ld a, a                                          ; $5a88: $7f
	db $e4                                           ; $5a89: $e4
	rst $38                                          ; $5a8a: $ff
	call z, $d8ff                                    ; $5a8b: $cc $ff $d8

jr_03e_5a8e:
	rst $38                                          ; $5a8e: $ff
	ldh a, [rDMA]                                    ; $5a8f: $f0 $46
	ret nz                                           ; $5a91: $c0

	ld a, d                                          ; $5a92: $7a
	ret z                                            ; $5a93: $c8

	add l                                            ; $5a94: $85
	ld bc, $213b                                     ; $5a95: $01 $3b $21
	dec sp                                           ; $5a98: $3b
	dec b                                            ; $5a99: $05
	dec sp                                           ; $5a9a: $3b
	ld hl, $3a3f                                     ; $5a9b: $21 $3f $3a
	dec sp                                           ; $5a9e: $3b
	ld a, $1b                                        ; $5a9f: $3e $1b
	ld h, $17                                        ; $5aa1: $26 $17
	ldh [$99], a                                     ; $5aa3: $e0 $99
	ld [hl], b                                       ; $5aa5: $70
	ld c, $7c                                        ; $5aa6: $0e $7c
	ld e, e                                          ; $5aa8: $5b
	daa                                              ; $5aa9: $27
	ld e, h                                          ; $5aaa: $5c
	inc hl                                           ; $5aab: $23
	ld e, a                                          ; $5aac: $5f
	jr nz, jr_03e_5a8e                               ; $5aad: $20 $df

	ld a, e                                          ; $5aaf: $7b
	cp $80                                           ; $5ab0: $fe $80
	xor $03                                          ; $5ab2: $ee $03
	sbc l                                            ; $5ab4: $9d
	rrca                                             ; $5ab5: $0f
	ld a, c                                          ; $5ab6: $79
	rra                                              ; $5ab7: $1f
	push hl                                          ; $5ab8: $e5
	ei                                               ; $5ab9: $fb
	dec c                                            ; $5aba: $0d
	di                                               ; $5abb: $f3
	db $fd                                           ; $5abc: $fd
	inc bc                                           ; $5abd: $03
	db $fd                                           ; $5abe: $fd
	inc bc                                           ; $5abf: $03
	db $fc                                           ; $5ac0: $fc
	inc bc                                           ; $5ac1: $03
	and $19                                          ; $5ac2: $e6 $19
	halt                                             ; $5ac4: $76
	adc c                                            ; $5ac5: $89
	ld [hl], d                                       ; $5ac6: $72
	adc l                                            ; $5ac7: $8d
	cp b                                             ; $5ac8: $b8
	rst JumpTable                                          ; $5ac9: $c7
	call c, $dee3                                    ; $5aca: $dc $e3 $de
	ld h, c                                          ; $5acd: $61
	db $ed                                           ; $5ace: $ed
	inc sp                                           ; $5acf: $33
	ld c, $9d                                        ; $5ad0: $0e $9d
	rst $38                                          ; $5ad2: $ff
	add b                                            ; $5ad3: $80
	ld a, d                                          ; $5ad4: $7a
	call z, $fe6f                                    ; $5ad5: $cc $6f $fe
	sub a                                            ; $5ad8: $97
	xor $ff                                          ; $5ad9: $ee $ff
	nop                                              ; $5adb: $00
	rst AddAOntoHL                                          ; $5adc: $ef
	nop                                              ; $5add: $00
	nop                                              ; $5ade: $00
	jr nz, jr_03e_5b58                               ; $5adf: $20 $77

	ld h, a                                          ; $5ae1: $67
	cp $96                                           ; $5ae2: $fe $96
	ld a, a                                          ; $5ae4: $7f
	rst FarCall                                          ; $5ae5: $f7
	nop                                              ; $5ae6: $00
	ld [hl], a                                       ; $5ae7: $77
	nop                                              ; $5ae8: $00
	nop                                              ; $5ae9: $00
	inc a                                            ; $5aea: $3c
	cp l                                             ; $5aeb: $bd
	inc h                                            ; $5aec: $24
	ld a, d                                          ; $5aed: $7a
	ret nz                                           ; $5aee: $c0

	ld [hl], a                                       ; $5aef: $77
	cp $9e                                           ; $5af0: $fe $9e
	ei                                               ; $5af2: $fb
	ld a, c                                          ; $5af3: $79
	add d                                            ; $5af4: $82
	rst $38                                          ; $5af5: $ff
	ld a, [hl]                                       ; $5af6: $7e
	adc $77                                          ; $5af7: $ce $77
	cp $9e                                           ; $5af9: $fe $9e
	adc b                                            ; $5afb: $88
	ld a, e                                          ; $5afc: $7b
	cp $89                                           ; $5afd: $fe $89
	db $fc                                           ; $5aff: $fc
	sbc $8e                                          ; $5b00: $de $8e
	call c, $0000                                   ; $5b02: $dc $00 $00
	sub c                                            ; $5b05: $91
	sbc d                                            ; $5b06: $9a
	add c                                            ; $5b07: $81
	xor d                                            ; $5b08: $aa
	ld de, $11fa                                     ; $5b09: $11 $fa $11
	sbc d                                            ; $5b0c: $9a
	ld bc, $f18a                                     ; $5b0d: $01 $8a $f1
	ld e, d                                          ; $5b10: $5a
	ld bc, $01fa                                     ; $5b11: $01 $fa $01
	ld [bc], a                                       ; $5b14: $02
	ld b, [hl]                                       ; $5b15: $46
	ret nz                                           ; $5b16: $c0

	ld a, [hl]                                       ; $5b17: $7e
	adc $9a                                          ; $5b18: $ce $9a
	dec c                                            ; $5b1a: $0d
	ld [hl-], a                                      ; $5b1b: $32
	dec c                                            ; $5b1c: $0d
	ld [hl-], a                                      ; $5b1d: $32
	inc c                                            ; $5b1e: $0c
	ld a, e                                          ; $5b1f: $7b
	cp $77                                           ; $5b20: $fe $77
	ld hl, sp+$7f                                    ; $5b22: $f8 $7f
	cp $df                                           ; $5b24: $fe $df
	rst $38                                          ; $5b26: $ff
	add l                                            ; $5b27: $85
	inc a                                            ; $5b28: $3c
	rst $38                                          ; $5b29: $ff
	ld a, $fd                                        ; $5b2a: $3e $fd
	cp d                                             ; $5b2c: $ba
	ld a, l                                          ; $5b2d: $7d
	cp d                                             ; $5b2e: $ba
	ld a, l                                          ; $5b2f: $7d
	dec a                                            ; $5b30: $3d
	ld a, e                                          ; $5b31: $7b
	dec a                                            ; $5b32: $3d
	ld a, e                                          ; $5b33: $7b
	dec [hl]                                         ; $5b34: $35
	ld a, e                                          ; $5b35: $7b
	rst $38                                          ; $5b36: $ff
	rst $38                                          ; $5b37: $ff
	add h                                            ; $5b38: $84
	rst $38                                          ; $5b39: $ff
	sub $ad                                          ; $5b3a: $d6 $ad
	ld d, [hl]                                       ; $5b3c: $56
	xor l                                            ; $5b3d: $ad
	sub $2d                                          ; $5b3e: $d6 $2d
	or [hl]                                          ; $5b40: $b6
	ld l, l                                          ; $5b41: $6d
	ld [hl], a                                       ; $5b42: $77
	cp $df                                           ; $5b43: $fe $df
	rst $38                                          ; $5b45: $ff
	sub h                                            ; $5b46: $94
	adc a                                            ; $5b47: $8f
	rst $38                                          ; $5b48: $ff
	rst GetHLinHL                                          ; $5b49: $cf
	sbc a                                            ; $5b4a: $9f
	rst GetHLinHL                                          ; $5b4b: $cf
	sbc [hl]                                         ; $5b4c: $9e
	rst GetHLinHL                                          ; $5b4d: $cf
	sbc l                                            ; $5b4e: $9d
	rst GetHLinHL                                          ; $5b4f: $cf
	sbc e                                            ; $5b50: $9b
	jp z, $f87b                                      ; $5b51: $ca $7b $f8

	ld a, a                                          ; $5b54: $7f
	rst SubAFromDE                                          ; $5b55: $df
	sub c                                            ; $5b56: $91
	cp l                                             ; $5b57: $bd

jr_03e_5b58:
	sbc $de                                          ; $5b58: $de $de
	cpl                                              ; $5b5a: $2f
	and a                                            ; $5b5b: $a7
	ld e, a                                          ; $5b5c: $5f
	ld b, a                                          ; $5b5d: $47
	cp a                                             ; $5b5e: $bf
	and e                                            ; $5b5f: $a3
	rst SubAFromDE                                          ; $5b60: $df
	ld b, e                                          ; $5b61: $43
	rst $38                                          ; $5b62: $ff
	rst FarCall                                          ; $5b63: $f7
	ld a, a                                          ; $5b64: $7f
	sbc $e7                                          ; $5b65: $de $e7

jr_03e_5b67:
	sbc b                                            ; $5b67: $98
	rlca                                             ; $5b68: $07
	rst SubAFromBC                                          ; $5b69: $e7
	inc b                                            ; $5b6a: $04
	rst SubAFromBC                                          ; $5b6b: $e7
	ld b, $e7                                        ; $5b6c: $06 $e7
	add [hl]                                         ; $5b6e: $86
	ld l, a                                          ; $5b6f: $6f
	cp $7a                                           ; $5b70: $fe $7a
	ld a, [hl]                                       ; $5b72: $7e
	rst SubAFromDE                                          ; $5b73: $df
	rst $38                                          ; $5b74: $ff
	ld a, d                                          ; $5b75: $7a
	ld a, [hl]                                       ; $5b76: $7e
	ld h, a                                          ; $5b77: $67
	cp $80                                           ; $5b78: $fe $80
	ret nz                                           ; $5b7a: $c0

	ccf                                              ; $5b7b: $3f
	add c                                            ; $5b7c: $81
	ld a, $03                                        ; $5b7d: $3e $03
	ld a, l                                          ; $5b7f: $7d
	rrca                                             ; $5b80: $0f
	di                                               ; $5b81: $f3
	rra                                              ; $5b82: $1f
	xor $3f                                          ; $5b83: $ee $3f
	ret c                                            ; $5b85: $d8

	rst $38                                          ; $5b86: $ff
	jr nc, @+$01                                     ; $5b87: $30 $ff

	ld h, c                                          ; $5b89: $61
	cp $61                                           ; $5b8a: $fe $61
	cp $c3                                           ; $5b8c: $fe $c3
	cp $87                                           ; $5b8e: $fe $87
	cp $0f                                           ; $5b90: $fe $0f
	rst $38                                          ; $5b92: $ff
	ld e, $fe                                        ; $5b93: $1e $fe
	ccf                                              ; $5b95: $3f
	rst $38                                          ; $5b96: $ff
	ld l, [hl]                                       ; $5b97: $6e
	rst $38                                          ; $5b98: $ff
	sbc [hl]                                         ; $5b99: $9e
	sub $76                                          ; $5b9a: $d6 $76
	call z, $3264                                    ; $5b9c: $cc $64 $32
	sub e                                            ; $5b9f: $93
	ld e, a                                          ; $5ba0: $5f
	and b                                            ; $5ba1: $a0
	ccf                                              ; $5ba2: $3f
	ret nz                                           ; $5ba3: $c0

	ld bc, $ff0e                                     ; $5ba4: $01 $0e $ff
	ld a, [hl]                                       ; $5ba7: $7e
	rst $38                                          ; $5ba8: $ff
	ld c, $ff                                        ; $5ba9: $0e $ff
	inc bc                                           ; $5bab: $03
	ld a, e                                          ; $5bac: $7b
	cp $9e                                           ; $5bad: $fe $9e
	ld bc, $e477                                     ; $5baf: $01 $77 $e4
	sub [hl]                                         ; $5bb2: $96
	rst GetHLinHL                                          ; $5bb3: $cf
	jr nc, @-$0f                                     ; $5bb4: $30 $ef

	jr nc, jr_03e_5b67                               ; $5bb6: $30 $af

	ld [hl], b                                       ; $5bb8: $70
	ldh a, [rIE]                                     ; $5bb9: $f0 $ff
	ld [hl], b                                       ; $5bbb: $70
	sbc $ff                                          ; $5bbc: $de $ff
	adc b                                            ; $5bbe: $88
	jp c, $ba37                                      ; $5bbf: $da $37 $ba

	ld h, a                                          ; $5bc2: $67
	ld sp, hl                                        ; $5bc3: $f9
	rlca                                             ; $5bc4: $07
	ld sp, hl                                        ; $5bc5: $f9
	rlca                                             ; $5bc6: $07
	di                                               ; $5bc7: $f3
	rrca                                             ; $5bc8: $0f
	inc bc                                           ; $5bc9: $03
	rst $38                                          ; $5bca: $ff
	rlca                                             ; $5bcb: $07
	cp $fd                                           ; $5bcc: $fe $fd
	cp $49                                           ; $5bce: $fe $49
	cp $e8                                           ; $5bd0: $fe $e8
	ld e, a                                          ; $5bd2: $5f
	nop                                              ; $5bd3: $00
	rst $38                                          ; $5bd4: $ff
	ld a, a                                          ; $5bd5: $7f
	ld a, e                                          ; $5bd6: $7b
	cp $56                                           ; $5bd7: $fe $56
	ld a, l                                          ; $5bd9: $7d
	ld h, [hl]                                       ; $5bda: $66
	ld d, c                                          ; $5bdb: $51
	inc bc                                           ; $5bdc: $03
	ldh a, [$33]                                     ; $5bdd: $f0 $33
	ldh a, [$9c]                                     ; $5bdf: $f0 $9c
	ld [bc], a                                       ; $5be1: $02
	rst $38                                          ; $5be2: $ff
	cp $7b                                           ; $5be3: $fe $7b
	cp $5f                                           ; $5be5: $fe $5f
	ldh a, [$66]                                     ; $5be7: $f0 $66
	ret z                                            ; $5be9: $c8

	sub e                                            ; $5bea: $93
	inc h                                            ; $5beb: $24
	ret c                                            ; $5bec: $d8

	inc d                                            ; $5bed: $14
	add sp, $04                                      ; $5bee: $e8 $04
	ld hl, sp+$04                                    ; $5bf0: $f8 $04
	ld hl, sp+$0e                                    ; $5bf2: $f8 $0e
	jr nc, jr_03e_5c04                               ; $5bf4: $30 $0e

	jr nc, @+$78                                     ; $5bf6: $30 $76

	ret z                                            ; $5bf8: $c8

	ld a, a                                          ; $5bf9: $7f
	ld a, [$827d]                                    ; $5bfa: $fa $7d $82
	sub c                                            ; $5bfd: $91
	rrca                                             ; $5bfe: $0f
	jr nc, jr_03e_5c02                               ; $5bff: $30 $01

	ccf                                              ; $5c01: $3f

jr_03e_5c02:
	or h                                             ; $5c02: $b4
	ld a, e                                          ; $5c03: $7b

jr_03e_5c04:
	cp e                                             ; $5c04: $bb
	halt                                             ; $5c05: $76
	cp e                                             ; $5c06: $bb
	halt                                             ; $5c07: $76
	xor c                                            ; $5c08: $a9
	halt                                             ; $5c09: $76
	dec sp                                           ; $5c0a: $3b
	db $e4                                           ; $5c0b: $e4
	ld l, l                                          ; $5c0c: $6d
	ret nc                                           ; $5c0d: $d0

	ld a, [hl]                                       ; $5c0e: $7e
	adc $9c                                          ; $5c0f: $ce $9c
	halt                                             ; $5c11: $76
	db $ed                                           ; $5c12: $ed
	ld d, [hl]                                       ; $5c13: $56
	ld [hl], e                                       ; $5c14: $73
	cp $6f                                           ; $5c15: $fe $6f
	ldh a, [hDisp1_OBP0]                                     ; $5c17: $f0 $93
	res 3, a                                         ; $5c19: $cb $9f
	rst GetHLinHL                                          ; $5c1b: $cf
	sbc a                                            ; $5c1c: $9f
	jp z, $ce9f                                      ; $5c1d: $ca $9f $ce

	sbc a                                            ; $5c20: $9f
	adc $9b                                          ; $5c21: $ce $9b
	nop                                              ; $5c23: $00
	ld bc, $2e7b                                     ; $5c24: $01 $7b $2e
	rst SubAFromDE                                          ; $5c27: $df
	rst $38                                          ; $5c28: $ff
	add b                                            ; $5c29: $80
	ld a, $1f                                        ; $5c2a: $3e $1f
	ld a, e                                          ; $5c2c: $7b
	ld c, e                                          ; $5c2d: $4b
	ld sp, $0136                                     ; $5c2e: $31 $36 $01
	ld c, [hl]                                       ; $5c31: $4e
	add e                                            ; $5c32: $83
	add hl, de                                       ; $5c33: $19
	rst SubAFromBC                                          ; $5c34: $e7
	di                                               ; $5c35: $f3
	rst GetHLinHL                                          ; $5c36: $cf
	halt                                             ; $5c37: $76
	rst $38                                          ; $5c38: $ff
	pop hl                                           ; $5c39: $e1
	add [hl]                                         ; $5c3a: $86
	pop hl                                           ; $5c3b: $e1
	add [hl]                                         ; $5c3c: $86
	ld h, c                                          ; $5c3d: $61
	add [hl]                                         ; $5c3e: $86
	and c                                            ; $5c3f: $a1
	add $e1                                          ; $5c40: $c6 $e1
	and $f0                                          ; $5c42: $e6 $f0
	db $f4                                           ; $5c44: $f4
	sbc e                                            ; $5c45: $9b
	db $fc                                           ; $5c46: $fc
	rrca                                             ; $5c47: $0f
	rst $38                                          ; $5c48: $ff
	sbc e                                            ; $5c49: $9b
	rst $38                                          ; $5c4a: $ff
	push af                                          ; $5c4b: $f5
	rst $38                                          ; $5c4c: $ff
	push de                                          ; $5c4d: $d5
	ld a, d                                          ; $5c4e: $7a
	ret z                                            ; $5c4f: $c8

	sbc h                                            ; $5c50: $9c
	sbc a                                            ; $5c51: $9f
	rst $38                                          ; $5c52: $ff
	sub a                                            ; $5c53: $97
	ld l, c                                          ; $5c54: $69
	add b                                            ; $5c55: $80
	sbc d                                            ; $5c56: $9a
	jp $c73f                                         ; $5c57: $c3 $3f $c7


	ld a, a                                          ; $5c5a: $7f
	ld c, $7a                                        ; $5c5b: $0e $7a
	ld e, e                                          ; $5c5d: $5b
	ld a, [hl]                                       ; $5c5e: $7e
	rst $38                                          ; $5c5f: $ff
	sub [hl]                                         ; $5c60: $96
	ldh [rIE], a                                     ; $5c61: $e0 $ff
	ret nz                                           ; $5c63: $c0

	rst AddAOntoHL                                          ; $5c64: $ef
	sub b                                            ; $5c65: $90
	rst $38                                          ; $5c66: $ff
	xor [hl]                                         ; $5c67: $ae
	rst $38                                          ; $5c68: $ff
	ld d, [hl]                                       ; $5c69: $56
	ld a, e                                          ; $5c6a: $7b
	db $fc                                           ; $5c6b: $fc
	sbc [hl]                                         ; $5c6c: $9e
	ld d, $7a                                        ; $5c6d: $16 $7a
	call c, $fc73                                    ; $5c6f: $dc $73 $fc
	halt                                             ; $5c72: $76
	call z, $1f93                                    ; $5c73: $cc $93 $1f
	ldh [$2f], a                                     ; $5c76: $e0 $2f
	ret nc                                           ; $5c78: $d0

	rla                                              ; $5c79: $17
	add sp, $0f                                      ; $5c7a: $e8 $0f
	ldh a, [rAUD2ENV]                                ; $5c7c: $f0 $17
	add sp, $0b                                      ; $5c7e: $e8 $0b
	db $f4                                           ; $5c80: $f4
	ld b, l                                          ; $5c81: $45
	ld [hl], b                                       ; $5c82: $70
	add e                                            ; $5c83: $83
	cp [hl]                                          ; $5c84: $be
	ld h, e                                          ; $5c85: $63
	cp l                                             ; $5c86: $bd
	ld h, d                                          ; $5c87: $62
	cp l                                             ; $5c88: $bd
	ld b, d                                          ; $5c89: $42
	ld a, l                                          ; $5c8a: $7d
	jp nz, $c27d                                     ; $5c8b: $c2 $7d $c2

	ld [hl], l                                       ; $5c8e: $75
	jp z, $8a75                                      ; $5c8f: $ca $75 $8a

	push af                                          ; $5c92: $f5
	adc d                                            ; $5c93: $8a
	call c, $dc6b                                    ; $5c94: $dc $6b $dc
	ld l, e                                          ; $5c97: $6b
	rst SubAFromHL                                          ; $5c98: $d7
	ld a, [hl+]                                      ; $5c99: $2a
	call nc, $d42b                                   ; $5c9a: $d4 $2b $d4
	dec hl                                           ; $5c9d: $2b
	jp c, $7725                                      ; $5c9e: $da $25 $77

	cp $97                                           ; $5ca1: $fe $97
	add b                                            ; $5ca3: $80
	ld a, a                                          ; $5ca4: $7f
	ld b, b                                          ; $5ca5: $40
	cp a                                             ; $5ca6: $bf
	and b                                            ; $5ca7: $a0
	ld e, a                                          ; $5ca8: $5f
	ret nc                                           ; $5ca9: $d0

	cpl                                              ; $5caa: $2f
	ld [hl], a                                       ; $5cab: $77
	db $fc                                           ; $5cac: $fc
	sbc e                                            ; $5cad: $9b
	add sp, $17                                      ; $5cae: $e8 $17
	db $f4                                           ; $5cb0: $f4
	adc e                                            ; $5cb1: $8b
	ld c, e                                          ; $5cb2: $4b
	pop bc                                           ; $5cb3: $c1
	dec hl                                           ; $5cb4: $2b
	cp $7c                                           ; $5cb5: $fe $7c
	db $db                                           ; $5cb7: $db
	sub a                                            ; $5cb8: $97
	rlca                                             ; $5cb9: $07
	ld hl, sp+$1f                                    ; $5cba: $f8 $1f
	ldh [$1f], a                                     ; $5cbc: $e0 $1f
	rst AddAOntoHL                                          ; $5cbe: $ef
	rra                                              ; $5cbf: $1f
	rst AddAOntoHL                                          ; $5cc0: $ef
	ld [hl], a                                       ; $5cc1: $77
	ldh a, [c]                                       ; $5cc2: $f2
	sbc l                                            ; $5cc3: $9d
	ld a, a                                          ; $5cc4: $7f
	cp a                                             ; $5cc5: $bf
	ld l, d                                          ; $5cc6: $6a
	cp l                                             ; $5cc7: $bd
	ld a, [hl]                                       ; $5cc8: $7e
	rst JumpTable                                          ; $5cc9: $c7
	ld [hl], e                                       ; $5cca: $73
	ld sp, hl                                        ; $5ccb: $f9
	sub e                                            ; $5ccc: $93
	ld hl, sp-$61                                    ; $5ccd: $f8 $9f
	ld hl, sp+$2f                                    ; $5ccf: $f8 $2f
	ld hl, sp+$5f                                    ; $5cd1: $f8 $5f
	add sp, -$41                                     ; $5cd3: $e8 $bf
	ret c                                            ; $5cd5: $d8

	ld a, a                                          ; $5cd6: $7f
	rst $38                                          ; $5cd7: $ff
	ld c, b                                          ; $5cd8: $48
	halt                                             ; $5cd9: $76
	call z, $fe67                                    ; $5cda: $cc $67 $fe
	sbc e                                            ; $5cdd: $9b
	nop                                              ; $5cde: $00
	cp $fd                                           ; $5cdf: $fe $fd
	nop                                              ; $5ce1: $00
	sbc $3f                                          ; $5ce2: $de $3f
	sbc d                                            ; $5ce4: $9a
	jr nz, jr_03e_5d11                               ; $5ce5: $20 $2a

	dec [hl]                                         ; $5ce7: $35
	ld a, [hl+]                                      ; $5ce8: $2a
	dec [hl]                                         ; $5ce9: $35
	ld [hl], a                                       ; $5cea: $77
	ld a, [$009b]                                    ; $5ceb: $fa $9b $00
	cp a                                             ; $5cee: $bf
	nop                                              ; $5cef: $00
	ld d, l                                          ; $5cf0: $55
	ld [hl], a                                       ; $5cf1: $77
	add $9b                                          ; $5cf2: $c6 $9b
	xor d                                            ; $5cf4: $aa
	ld d, l                                          ; $5cf5: $55
	xor d                                            ; $5cf6: $aa
	ld d, l                                          ; $5cf7: $55
	ld [hl], a                                       ; $5cf8: $77
	ld a, [$c47b]                                    ; $5cf9: $fa $7b $c4
	ld [hl], a                                       ; $5cfc: $77
	ldh a, [$9e]                                     ; $5cfd: $f0 $9e
	ld h, b                                          ; $5cff: $60
	ld [hl], e                                       ; $5d00: $73
	cp $98                                           ; $5d01: $fe $98
	ld h, e                                          ; $5d03: $63
	db $fc                                           ; $5d04: $fc
	ld h, l                                          ; $5d05: $65
	inc b                                            ; $5d06: $04
	db $fd                                           ; $5d07: $fd
	inc b                                            ; $5d08: $04
	ld d, h                                          ; $5d09: $54
	halt                                             ; $5d0a: $76
	res 3, h                                         ; $5d0b: $cb $9c
	ld d, l                                          ; $5d0d: $55
	xor e                                            ; $5d0e: $ab
	ld d, [hl]                                       ; $5d0f: $56
	ld a, e                                          ; $5d10: $7b

jr_03e_5d11:
	cp $96                                           ; $5d11: $fe $96
	sub [hl]                                         ; $5d13: $96
	ld l, e                                          ; $5d14: $6b
	db $d3                                           ; $5d15: $d3
	cpl                                              ; $5d16: $2f
	ld h, h                                          ; $5d17: $64
	sbc a                                            ; $5d18: $9f
	inc a                                            ; $5d19: $3c
	rst $38                                          ; $5d1a: $ff
	jr c, jr_03e_5d96                                ; $5d1b: $38 $79

	cp c                                             ; $5d1d: $b9
	ld a, a                                          ; $5d1e: $7f
	cp $7e                                           ; $5d1f: $fe $7e
	rst FarCall                                          ; $5d21: $f7
	sbc b                                            ; $5d22: $98
	pop de                                           ; $5d23: $d1
	rst $38                                          ; $5d24: $ff
	xor e                                            ; $5d25: $ab
	rst $38                                          ; $5d26: $ff
	rst SubAFromHL                                          ; $5d27: $d7
	rst $38                                          ; $5d28: $ff
	ld b, $7a                                        ; $5d29: $06 $7a
	ei                                               ; $5d2b: $fb
	ld a, l                                          ; $5d2c: $7d
	or a                                             ; $5d2d: $b7
	sbc d                                            ; $5d2e: $9a
	ld h, a                                          ; $5d2f: $67
	rst $38                                          ; $5d30: $ff
	set 7, a                                         ; $5d31: $cb $ff
	sub a                                            ; $5d33: $97
	ld a, e                                          ; $5d34: $7b
	ldh a, [$9e]                                     ; $5d35: $f0 $9e
	ld d, a                                          ; $5d37: $57
	ld [hl], e                                       ; $5d38: $73
	ld [hl], a                                       ; $5d39: $77
	sbc c                                            ; $5d3a: $99
	ld [$0015], a                                    ; $5d3b: $ea $15 $00
	dec d                                            ; $5d3e: $15
	ld l, d                                          ; $5d3f: $6a
	sub l                                            ; $5d40: $95
	ld [hl], a                                       ; $5d41: $77
	cp $97                                           ; $5d42: $fe $97
	ld [$df95], a                                    ; $5d44: $ea $95 $df
	and b                                            ; $5d47: $a0
	xor a                                            ; $5d48: $af
	ret nc                                           ; $5d49: $d0

	rst SubAFromHL                                          ; $5d4a: $d7
	xor b                                            ; $5d4b: $a8
	ld h, a                                          ; $5d4c: $67
	db $fc                                           ; $5d4d: $fc
	sbc l                                            ; $5d4e: $9d
	xor e                                            ; $5d4f: $ab
	call nc, $c866                                   ; $5d50: $d4 $66 $c8
	ld l, e                                          ; $5d53: $6b
	db $fc                                           ; $5d54: $fc
	sub h                                            ; $5d55: $94
	ld e, $05                                        ; $5d56: $1e $05
	ld a, [$fc03]                                    ; $5d58: $fa $03 $fc
	dec b                                            ; $5d5b: $05
	ld a, [$fd02]                                    ; $5d5c: $fa $02 $fd
	ld bc, $77fe                                     ; $5d5f: $01 $fe $77
	ld a, [hl+]                                      ; $5d62: $2a
	ld a, d                                          ; $5d63: $7a
	adc [hl]                                         ; $5d64: $8e
	ld l, e                                          ; $5d65: $6b
	dec e                                            ; $5d66: $1d
	ld a, l                                          ; $5d67: $7d
	ld [hl], b                                       ; $5d68: $70
	ld l, l                                          ; $5d69: $6d
	ld l, b                                          ; $5d6a: $68
	ld a, [hl]                                       ; $5d6b: $7e
	adc $7b                                          ; $5d6c: $ce $7b
	cp $80                                           ; $5d6e: $fe $80
	ld a, [bc]                                       ; $5d70: $0a
	push af                                          ; $5d71: $f5
	ld a, [bc]                                       ; $5d72: $0a
	rst FarCall                                          ; $5d73: $f7
	ld a, [bc]                                       ; $5d74: $0a
	rst SubAFromDE                                          ; $5d75: $df
	xor d                                            ; $5d76: $aa
	rst SubAFromDE                                          ; $5d77: $df
	xor d                                            ; $5d78: $aa
	db $db                                           ; $5d79: $db
	xor $da                                          ; $5d7a: $ee $da
	dec h                                            ; $5d7c: $25
	ld a, [$fb25]                                    ; $5d7d: $fa $25 $fb
	inc h                                            ; $5d80: $24
	ei                                               ; $5d81: $fb
	inc h                                            ; $5d82: $24
	ld sp, hl                                        ; $5d83: $f9
	ld h, $f9                                        ; $5d84: $26 $f9
	ld h, $b8                                        ; $5d86: $26 $b8
	ld h, a                                          ; $5d88: $67
	or a                                             ; $5d89: $b7
	ld l, a                                          ; $5d8a: $6f
	ld [$f495], a                                    ; $5d8b: $ea $95 $f4
	adc e                                            ; $5d8e: $8b
	sbc c                                            ; $5d8f: $99
	ld hl, sp-$7a                                    ; $5d90: $f8 $86
	db $f4                                           ; $5d92: $f4
	adc b                                            ; $5d93: $88
	ld hl, sp-$7b                                    ; $5d94: $f8 $85

jr_03e_5d96:
	ld l, a                                          ; $5d96: $6f
	cp $76                                           ; $5d97: $fe $76
	ld c, h                                          ; $5d99: $4c
	ld a, a                                          ; $5d9a: $7f
	db $fc                                           ; $5d9b: $fc
	ld a, a                                          ; $5d9c: $7f
	ld l, [hl]                                       ; $5d9d: $6e
	call c, $9cff                                    ; $5d9e: $dc $ff $9c
	ldh [$f0], a                                     ; $5da1: $e0 $f0
	pop bc                                           ; $5da3: $c1
	ld a, d                                          ; $5da4: $7a
	ldh a, [c]                                       ; $5da5: $f2
	sbc d                                            ; $5da6: $9a
	rst $38                                          ; $5da7: $ff
	inc c                                            ; $5da8: $0c
	rst $38                                          ; $5da9: $ff
	cp $f7                                           ; $5daa: $fe $f7
	ld [hl], l                                       ; $5dac: $75
	xor d                                            ; $5dad: $aa
	sub d                                            ; $5dae: $92
	cp $7f                                           ; $5daf: $fe $7f
	cp $bf                                           ; $5db1: $fe $bf
	rrca                                             ; $5db3: $0f
	rst $38                                          ; $5db4: $ff
	rlca                                             ; $5db5: $07
	ld hl, sp+$07                                    ; $5db6: $f8 $07
	add sp, $1f                                      ; $5db8: $e8 $1f
	rst AddAOntoHL                                          ; $5dba: $ef
	rrca                                             ; $5dbb: $0f
	ld a, e                                          ; $5dbc: $7b
	cp $9b                                           ; $5dbd: $fe $9b
	rla                                              ; $5dbf: $17
	ldh [rIF], a                                     ; $5dc0: $e0 $0f
	ldh [rOCPD], a                                   ; $5dc2: $e0 $6b
	adc [hl]                                         ; $5dc4: $8e
	call c, $86ff                                    ; $5dc5: $dc $ff $86
	ldh a, [rP1]                                     ; $5dc8: $f0 $00
	ldh a, [rP1]                                     ; $5dca: $f0 $00
	ld a, [$f50f]                                    ; $5dcc: $fa $0f $f5
	rra                                              ; $5dcf: $1f
	ld a, [$f43f]                                    ; $5dd0: $fa $3f $f4
	rst $38                                          ; $5dd3: $ff
	add sp, -$04                                     ; $5dd4: $e8 $fc
	ret nc                                           ; $5dd6: $d0

	ldh a, [rP1]                                     ; $5dd7: $f0 $00
	inc b                                            ; $5dd9: $04
	nop                                              ; $5dda: $00
	ld [bc], a                                       ; $5ddb: $02
	add b                                            ; $5ddc: $80
	cp $00                                           ; $5ddd: $fe $00
	db $fd                                           ; $5ddf: $fd
	nop                                              ; $5de0: $00
	ld [hl], a                                       ; $5de1: $77
	db $fc                                           ; $5de2: $fc
	sub c                                            ; $5de3: $91
	ld a, $00                                        ; $5de4: $3e $00
	dec b                                            ; $5de6: $05
	nop                                              ; $5de7: $00
	ld [bc], a                                       ; $5de8: $02
	nop                                              ; $5de9: $00
	dec c                                            ; $5dea: $0d
	cp d                                             ; $5deb: $ba
	nop                                              ; $5dec: $00
	ld a, a                                          ; $5ded: $7f
	nop                                              ; $5dee: $00
	cp [hl]                                          ; $5def: $be
	nop                                              ; $5df0: $00
	ld a, l                                          ; $5df1: $7d
	ld a, e                                          ; $5df2: $7b
	db $fc                                           ; $5df3: $fc
	sub [hl]                                         ; $5df4: $96
	push af                                          ; $5df5: $f5
	nop                                              ; $5df6: $00
	cp d                                             ; $5df7: $ba
	nop                                              ; $5df8: $00
	ld [hl], l                                       ; $5df9: $75
	nop                                              ; $5dfa: $00
	xor d                                            ; $5dfb: $aa
	nop                                              ; $5dfc: $00
	ld d, l                                          ; $5dfd: $55
	ld d, e                                          ; $5dfe: $53
	db $fc                                           ; $5dff: $fc
	add b                                            ; $5e00: $80
	xor b                                            ; $5e01: $a8
	inc b                                            ; $5e02: $04
	ld d, b                                          ; $5e03: $50
	inc b                                            ; $5e04: $04
	xor c                                            ; $5e05: $a9
	rlca                                             ; $5e06: $07
	ld d, d                                          ; $5e07: $52
	rlca                                             ; $5e08: $07
	xor b                                            ; $5e09: $a8
	rlca                                             ; $5e0a: $07
	ld d, l                                          ; $5e0b: $55
	inc bc                                           ; $5e0c: $03
	xor d                                            ; $5e0d: $aa
	ld bc, $0055                                     ; $5e0e: $01 $55 $00
	add hl, de                                       ; $5e11: $19
	ld a, a                                          ; $5e12: $7f
	ld h, h                                          ; $5e13: $64
	rst $38                                          ; $5e14: $ff
	sbc d                                            ; $5e15: $9a
	rst SubAFromBC                                          ; $5e16: $e7
	ld [hl], c                                       ; $5e17: $71
	adc a                                            ; $5e18: $8f
	call $1333                                       ; $5e19: $cd $33 $13
	pop hl                                           ; $5e1c: $e1
	ld sp, $1ec0                                     ; $5e1d: $31 $c0 $1e
	sbc l                                            ; $5e20: $9d
	ldh [rOCPD], a                                   ; $5e21: $e0 $6b
	ld a, d                                          ; $5e23: $7a
	call z, $c17d                                    ; $5e24: $cc $7d $c1
	sbc d                                            ; $5e27: $9a
	sbc [hl]                                         ; $5e28: $9e
	ld a, a                                          ; $5e29: $7f
	sbc h                                            ; $5e2a: $9c
	ccf                                              ; $5e2b: $3f
	ld a, b                                          ; $5e2c: $78
	ld a, e                                          ; $5e2d: $7b
	ld bc, $0598                                     ; $5e2e: $01 $98 $05
	rst $38                                          ; $5e31: $ff
	adc e                                            ; $5e32: $8b
	rst $38                                          ; $5e33: $ff
	rla                                              ; $5e34: $17
	rst $38                                          ; $5e35: $ff
	cpl                                              ; $5e36: $2f
	ld a, c                                          ; $5e37: $79
	xor l                                            ; $5e38: $ad
	ld a, a                                          ; $5e39: $7f
	db $fc                                           ; $5e3a: $fc
	sbc [hl]                                         ; $5e3b: $9e
	ld e, a                                          ; $5e3c: $5f
	ld a, e                                          ; $5e3d: $7b
	ld c, d                                          ; $5e3e: $4a
	adc l                                            ; $5e3f: $8d
	ld e, l                                          ; $5e40: $5d
	rst $38                                          ; $5e41: $ff
	ld [hl], a                                       ; $5e42: $77
	db $dd                                           ; $5e43: $dd
	or l                                             ; $5e44: $b5
	ld a, a                                          ; $5e45: $7f
	rst SubAFromDE                                          ; $5e46: $df
	jr nc, jr_03e_5eb9                               ; $5e47: $30 $70

	sub b                                            ; $5e49: $90
	scf                                              ; $5e4a: $37
	ret c                                            ; $5e4b: $d8

	ld sp, $35df                                     ; $5e4c: $31 $df $35
	db $db                                           ; $5e4f: $db
	dec [hl]                                         ; $5e50: $35
	db $db                                           ; $5e51: $db
	halt                                             ; $5e52: $76
	call z, $fc77                                    ; $5e53: $cc $77 $fc
	sbc l                                            ; $5e56: $9d
	push de                                          ; $5e57: $d5
	xor d                                            ; $5e58: $aa
	ld l, a                                          ; $5e59: $6f
	db $fc                                           ; $5e5a: $fc
	halt                                             ; $5e5b: $76
	call z, $fc5b                                    ; $5e5c: $cc $5b $fc
	sbc [hl]                                         ; $5e5f: $9e
	ld d, $45                                        ; $5e60: $16 $45
	and $7e                                          ; $5e62: $e6 $7e
	call z, $707d                                    ; $5e64: $cc $7d $70
	ld a, l                                          ; $5e67: $7d
	ld l, h                                          ; $5e68: $6c
	ld a, l                                          ; $5e69: $7d
	ld [hl], b                                       ; $5e6a: $70
	ld l, l                                          ; $5e6b: $6d
	ld l, h                                          ; $5e6c: $6c
	ld a, a                                          ; $5e6d: $7f
	db $fc                                           ; $5e6e: $fc
	add b                                            ; $5e6f: $80
	ld c, d                                          ; $5e70: $4a
	rst $38                                          ; $5e71: $ff
	ld [$df7f], a                                    ; $5e72: $ea $7f $df
	ccf                                              ; $5e75: $3f
	ldh [$1f], a                                     ; $5e76: $e0 $1f
	and $19                                          ; $5e78: $e6 $19
	rst AddAOntoHL                                          ; $5e7a: $ef
	db $10                                           ; $5e7b: $10
	rst AddAOntoHL                                          ; $5e7c: $ef
	db $10                                           ; $5e7d: $10
	db $eb                                           ; $5e7e: $eb
	db $10                                           ; $5e7f: $10
	dec h                                            ; $5e80: $25
	rst $38                                          ; $5e81: $ff
	daa                                              ; $5e82: $27
	rst $38                                          ; $5e83: $ff
	rst $38                                          ; $5e84: $ff
	db $fc                                           ; $5e85: $fc
	jp $dbfc                                         ; $5e86: $c3 $fc $db


	db $e4                                           ; $5e89: $e4
	ld e, e                                          ; $5e8a: $5b
	and h                                            ; $5e8b: $a4
	ld a, e                                          ; $5e8c: $7b
	add h                                            ; $5e8d: $84
	ld a, e                                          ; $5e8e: $7b
	sbc b                                            ; $5e8f: $98
	add h                                            ; $5e90: $84
	ld sp, hl                                        ; $5e91: $f9
	add h                                            ; $5e92: $84
	ld hl, sp+$07                                    ; $5e93: $f8 $07
	cp $05                                           ; $5e95: $fe $05
	ld a, d                                          ; $5e97: $7a
	add hl, sp                                       ; $5e98: $39
	ld a, h                                          ; $5e99: $7c
	dec l                                            ; $5e9a: $2d
	ld a, [hl]                                       ; $5e9b: $7e
	rla                                              ; $5e9c: $17
	ld a, e                                          ; $5e9d: $7b
	cp a                                             ; $5e9e: $bf
	adc [hl]                                         ; $5e9f: $8e
	sbc a                                            ; $5ea0: $9f
	ret nz                                           ; $5ea1: $c0

	db $10                                           ; $5ea2: $10
	rst GetHLinHL                                          ; $5ea3: $cf
	adc a                                            ; $5ea4: $8f
	ld l, a                                          ; $5ea5: $6f
	rst SubAFromDE                                          ; $5ea6: $df
	add hl, sp                                       ; $5ea7: $39
	dec de                                           ; $5ea8: $1b
	pop af                                           ; $5ea9: $f1
	sub c                                            ; $5eaa: $91
	di                                               ; $5eab: $f3
	di                                               ; $5eac: $f3
	push af                                          ; $5ead: $f5
	db $10                                           ; $5eae: $10
	ld b, $be                                        ; $5eaf: $06 $be
	ld a, e                                          ; $5eb1: $7b
	ld d, d                                          ; $5eb2: $52
	adc c                                            ; $5eb3: $89
	ld l, a                                          ; $5eb4: $6f
	cp $ee                                           ; $5eb5: $fe $ee
	cp $cd                                           ; $5eb7: $fe $cd

jr_03e_5eb9:
	db $fc                                           ; $5eb9: $fc
	sbc [hl]                                         ; $5eba: $9e
	ld hl, sp-$03                                    ; $5ebb: $f8 $fd
	ldh a, [$aa]                                     ; $5ebd: $f0 $aa
	nop                                              ; $5ebf: $00
	ld b, b                                          ; $5ec0: $40
	sbc a                                            ; $5ec1: $9f
	ret nz                                           ; $5ec2: $c0

	ccf                                              ; $5ec3: $3f
	ld b, b                                          ; $5ec4: $40
	rra                                              ; $5ec5: $1f
	add b                                            ; $5ec6: $80
	ccf                                              ; $5ec7: $3f
	nop                                              ; $5ec8: $00
	ld e, a                                          ; $5ec9: $5f
	ld a, e                                          ; $5eca: $7b
	db $fc                                           ; $5ecb: $fc
	ld a, [hl]                                       ; $5ecc: $7e
	push af                                          ; $5ecd: $f5
	ld a, l                                          ; $5ece: $7d
	cp [hl]                                          ; $5ecf: $be
	ld a, l                                          ; $5ed0: $7d
	xor d                                            ; $5ed1: $aa
	sbc [hl]                                         ; $5ed2: $9e
	db $fc                                           ; $5ed3: $fc
	ld a, e                                          ; $5ed4: $7b
	cp $7e                                           ; $5ed5: $fe $7e
	sbc $7a                                          ; $5ed7: $de $7a
	ld b, h                                          ; $5ed9: $44
	ld l, e                                          ; $5eda: $6b
	cp $77                                           ; $5edb: $fe $77
	xor $9c                                          ; $5edd: $ee $9c
	ld a, [hl]                                       ; $5edf: $7e
	nop                                              ; $5ee0: $00
	ccf                                              ; $5ee1: $3f
	ld [hl], h                                       ; $5ee2: $74
	ret nz                                           ; $5ee3: $c0

	ld a, e                                          ; $5ee4: $7b
	cp $7e                                           ; $5ee5: $fe $7e
	ret z                                            ; $5ee7: $c8

	ld a, [hl]                                       ; $5ee8: $7e
	call nz, Call_03e_7a98                           ; $5ee9: $c4 $98 $7a
	nop                                              ; $5eec: $00
	dec a                                            ; $5eed: $3d
	nop                                              ; $5eee: $00
	ld a, [de]                                       ; $5eef: $1a
	nop                                              ; $5ef0: $00
	dec c                                            ; $5ef1: $0d
	halt                                             ; $5ef2: $76
	cp b                                             ; $5ef3: $b8
	ld a, a                                          ; $5ef4: $7f
	cp [hl]                                          ; $5ef5: $be
	halt                                             ; $5ef6: $76
	call z, $c476                                    ; $5ef7: $cc $76 $c4
	ld [hl], a                                       ; $5efa: $77
	db $fc                                           ; $5efb: $fc
	ld a, a                                          ; $5efc: $7f
	push hl                                          ; $5efd: $e5
	ld b, [hl]                                       ; $5efe: $46
	ret nz                                           ; $5eff: $c0

	ld b, a                                          ; $5f00: $47
	db $fc                                           ; $5f01: $fc
	sub a                                            ; $5f02: $97
	xor [hl]                                         ; $5f03: $ae
	ld [hl], c                                       ; $5f04: $71
	ld b, e                                          ; $5f05: $43
	ccf                                              ; $5f06: $3f
	and e                                            ; $5f07: $a3
	rra                                              ; $5f08: $1f
	ld d, a                                          ; $5f09: $57
	ld [$b577], sp                                   ; $5f0a: $08 $77 $b5
	ld a, a                                          ; $5f0d: $7f
	sub e                                            ; $5f0e: $93
	adc d                                            ; $5f0f: $8a
	ld e, a                                          ; $5f10: $5f
	nop                                              ; $5f11: $00
	and d                                            ; $5f12: $a2
	rst $38                                          ; $5f13: $ff
	ld d, l                                          ; $5f14: $55
	rst $38                                          ; $5f15: $ff
	ld [$f7ff], a                                    ; $5f16: $ea $ff $f7
	rst $38                                          ; $5f19: $ff
	rst $38                                          ; $5f1a: $ff
	ccf                                              ; $5f1b: $3f
	rst GetHLinHL                                          ; $5f1c: $cf
	rlca                                             ; $5f1d: $07
	rst SubAFromBC                                          ; $5f1e: $e7
	inc bc                                           ; $5f1f: $03
	di                                               ; $5f20: $f3
	ld bc, $ffbe                                     ; $5f21: $01 $be $ff
	ld [hl], l                                       ; $5f24: $75
	ld a, d                                          ; $5f25: $7a
	ld h, $9e                                        ; $5f26: $26 $9e
	db $fd                                           ; $5f28: $fd
	ld a, e                                          ; $5f29: $7b
	db $ec                                           ; $5f2a: $ec
	ld a, h                                          ; $5f2b: $7c
	ld c, c                                          ; $5f2c: $49
	sbc [hl]                                         ; $5f2d: $9e
	ld a, [hl+]                                      ; $5f2e: $2a
	ld a, e                                          ; $5f2f: $7b
	db $fc                                           ; $5f30: $fc
	adc a                                            ; $5f31: $8f
	or l                                             ; $5f32: $b5
	db $db                                           ; $5f33: $db
	or c                                             ; $5f34: $b1
	db $db                                           ; $5f35: $db
	sub c                                            ; $5f36: $91
	ei                                               ; $5f37: $fb
	sub l                                            ; $5f38: $95
	ei                                               ; $5f39: $fb
	pop de                                           ; $5f3a: $d1
	ei                                               ; $5f3b: $fb
	push af                                          ; $5f3c: $f5
	ei                                               ; $5f3d: $fb
	push bc                                          ; $5f3e: $c5
	ei                                               ; $5f3f: $fb
	push de                                          ; $5f40: $d5
	db $eb                                           ; $5f41: $eb
	ld d, c                                          ; $5f42: $51
	nop                                              ; $5f43: $00
	db $db                                           ; $5f44: $db
	ld d, l                                          ; $5f45: $55
	sbc e                                            ; $5f46: $9b
	ld d, e                                          ; $5f47: $53
	inc sp                                           ; $5f48: $33
	scf                                              ; $5f49: $37
	ld [hl], a                                       ; $5f4a: $77
	ld a, e                                          ; $5f4b: $7b
	ei                                               ; $5f4c: $fb
	sbc $33                                          ; $5f4d: $de $33
	ld e, a                                          ; $5f4f: $5f
	or $98                                           ; $5f50: $f6 $98
	ld d, a                                          ; $5f52: $57
	halt                                             ; $5f53: $76
	ld h, [hl]                                       ; $5f54: $66
	ld h, e                                          ; $5f55: $63
	ld d, l                                          ; $5f56: $55
	ld d, e                                          ; $5f57: $53
	ld b, h                                          ; $5f58: $44
	ld h, a                                          ; $5f59: $67
	or $9c                                           ; $5f5a: $f6 $9c
	ld d, h                                          ; $5f5c: $54
	ld b, h                                          ; $5f5d: $44
	ld b, e                                          ; $5f5e: $43
	ld a, e                                          ; $5f5f: $7b
	or $df                                           ; $5f60: $f6 $df
	ld [hl], a                                       ; $5f62: $77
	sbc h                                            ; $5f63: $9c
	ld h, a                                          ; $5f64: $67
	ld b, l                                          ; $5f65: $45
	ld d, l                                          ; $5f66: $55
	db $dd                                           ; $5f67: $dd
	inc sp                                           ; $5f68: $33
	sbc [hl]                                         ; $5f69: $9e
	ld d, h                                          ; $5f6a: $54
	ld a, e                                          ; $5f6b: $7b
	or $df                                           ; $5f6c: $f6 $df
	ld d, l                                          ; $5f6e: $55
	ld [hl], e                                       ; $5f6f: $73
	or $99                                           ; $5f70: $f6 $99
	ld h, [hl]                                       ; $5f72: $66
	ld h, h                                          ; $5f73: $64
	ld h, [hl]                                       ; $5f74: $66
	ld d, [hl]                                       ; $5f75: $56
	ld d, l                                          ; $5f76: $55
	inc sp                                           ; $5f77: $33
	sbc $55                                          ; $5f78: $de $55
	ld a, e                                          ; $5f7a: $7b
	or $9e                                           ; $5f7b: $f6 $9e
	ld b, [hl]                                       ; $5f7d: $46
	ld l, a                                          ; $5f7e: $6f
	or $7f                                           ; $5f7f: $f6 $7f
	ret c                                            ; $5f81: $d8

	ld a, a                                          ; $5f82: $7f
	jp nc, $f673                                     ; $5f83: $d2 $73 $f6

	sbc h                                            ; $5f86: $9c
	ld d, [hl]                                       ; $5f87: $56
	ld h, h                                          ; $5f88: $64
	ld b, h                                          ; $5f89: $44
	ld [hl], a                                       ; $5f8a: $77
	or $9b                                           ; $5f8b: $f6 $9b
	ld b, h                                          ; $5f8d: $44
	ld d, l                                          ; $5f8e: $55
	ld d, [hl]                                       ; $5f8f: $56
	ld h, [hl]                                       ; $5f90: $66
	ld [hl], a                                       ; $5f91: $77
	or $f4                                           ; $5f92: $f6 $f4
	add hl, bc                                       ; $5f94: $09
	ldh [$d3], a                                     ; $5f95: $e0 $d3
	sbc [hl]                                         ; $5f97: $9e
	ld a, $f2                                        ; $5f98: $3e $f2
	sbc [hl]                                         ; $5f9a: $9e
	ld b, b                                          ; $5f9b: $40
	db $f4                                           ; $5f9c: $f4
	sbc h                                            ; $5f9d: $9c
	add b                                            ; $5f9e: $80
	nop                                              ; $5f9f: $00
	cpl                                              ; $5fa0: $2f
	ld hl, sp-$64                                    ; $5fa1: $f8 $9c
	ld a, [bc]                                       ; $5fa3: $0a
	nop                                              ; $5fa4: $00
	ld d, l                                          ; $5fa5: $55
	ld a, e                                          ; $5fa6: $7b
	ldh a, [c]                                       ; $5fa7: $f2
	sbc [hl]                                         ; $5fa8: $9e
	ld e, l                                          ; $5fa9: $5d
	ld a, e                                          ; $5faa: $7b
	ld hl, sp-$62                                    ; $5fab: $f8 $9e
	dec b                                            ; $5fad: $05
	ld [hl], e                                       ; $5fae: $73
	db $f4                                           ; $5faf: $f4
	sbc d                                            ; $5fb0: $9a
	xor a                                            ; $5fb1: $af
	nop                                              ; $5fb2: $00
	ld a, a                                          ; $5fb3: $7f
	nop                                              ; $5fb4: $00
	rst $38                                          ; $5fb5: $ff
	ld a, e                                          ; $5fb6: $7b
	db $fc                                           ; $5fb7: $fc
	sbc d                                            ; $5fb8: $9a
	rst AddAOntoHL                                          ; $5fb9: $ef
	nop                                              ; $5fba: $00
	ld e, a                                          ; $5fbb: $5f
	nop                                              ; $5fbc: $00
	cp a                                             ; $5fbd: $bf
	ld a, e                                          ; $5fbe: $7b
	or $5f                                           ; $5fbf: $f6 $5f
	cp $8a                                           ; $5fc1: $fe $8a
	cp $01                                           ; $5fc3: $fe $01
	push af                                          ; $5fc5: $f5
	ld a, [bc]                                       ; $5fc6: $0a
	xor d                                            ; $5fc7: $aa
	ld d, l                                          ; $5fc8: $55
	ld d, h                                          ; $5fc9: $54
	xor e                                            ; $5fca: $ab
	and d                                            ; $5fcb: $a2
	ld e, l                                          ; $5fcc: $5d
	ld b, h                                          ; $5fcd: $44
	cp e                                             ; $5fce: $bb
	xor d                                            ; $5fcf: $aa
	ld d, l                                          ; $5fd0: $55
	ld d, l                                          ; $5fd1: $55
	xor d                                            ; $5fd2: $aa
	and b                                            ; $5fd3: $a0
	ld e, a                                          ; $5fd4: $5f
	ld b, b                                          ; $5fd5: $40
	cp a                                             ; $5fd6: $bf
	add b                                            ; $5fd7: $80
	ld [hl], a                                       ; $5fd8: $77
	db $d3                                           ; $5fd9: $d3
	sbc l                                            ; $5fda: $9d
	rst $38                                          ; $5fdb: $ff
	ld b, b                                          ; $5fdc: $40
	ld c, a                                          ; $5fdd: $4f
	rst SubAFromHL                                          ; $5fde: $d7
	inc bc                                           ; $5fdf: $03
	cp $4f                                           ; $5fe0: $fe $4f
	cp $9c                                           ; $5fe2: $fe $9c
	ld bc, $02ff                                     ; $5fe4: $01 $ff $02
	ld a, e                                          ; $5fe7: $7b
	db $fc                                           ; $5fe8: $fc
	sbc h                                            ; $5fe9: $9c
	ld a, [bc]                                       ; $5fea: $0a
	rst $38                                          ; $5feb: $ff
	dec b                                            ; $5fec: $05
	ld a, e                                          ; $5fed: $7b
	ld hl, sp-$68                                    ; $5fee: $f8 $98
	ld d, l                                          ; $5ff0: $55
	rst $38                                          ; $5ff1: $ff
	xor d                                            ; $5ff2: $aa
	rst $38                                          ; $5ff3: $ff
	ld e, a                                          ; $5ff4: $5f
	rst $38                                          ; $5ff5: $ff
	xor e                                            ; $5ff6: $ab
	ld a, e                                          ; $5ff7: $7b
	ld hl, sp-$64                                    ; $5ff8: $f8 $9c
	cp a                                             ; $5ffa: $bf
	rst $38                                          ; $5ffb: $ff
	ld a, a                                          ; $5ffc: $7f
	call c, $67ff                                    ; $5ffd: $dc $ff $67
	ld hl, sp+$03                                    ; $6000: $f8 $03
	rst $38                                          ; $6002: $ff
	jp nz, $efff                                     ; $6003: $c2 $ff $ef

	sub a                                            ; $6006: $97
	inc bc                                           ; $6007: $03
	nop                                              ; $6008: $00
	inc bc                                           ; $6009: $03
	inc bc                                           ; $600a: $03
	ld bc, $0003                                     ; $600b: $01 $03 $00
	ld bc, $fe6b                                     ; $600e: $01 $6b $fe
	cp $7b                                           ; $6011: $fe $7b
	db $db                                           ; $6013: $db
	ld a, e                                          ; $6014: $7b
	rst SubAFromHL                                          ; $6015: $d7
	ld a, a                                          ; $6016: $7f
	adc a                                            ; $6017: $8f
	sbc e                                            ; $6018: $9b
	pop af                                           ; $6019: $f1
	ld a, a                                          ; $601a: $7f
	pop hl                                           ; $601b: $e1
	ld a, a                                          ; $601c: $7f
	ld e, e                                          ; $601d: $5b
	ldh a, [$9b]                                     ; $601e: $f0 $9b
	rst $38                                          ; $6020: $ff
	call nz, $c0ff                                   ; $6021: $c4 $ff $c0
	ld [hl], e                                       ; $6024: $73
	ret nz                                           ; $6025: $c0

	ld h, a                                          ; $6026: $67
	ldh a, [$9e]                                     ; $6027: $f0 $9e
	ld [$fe7b], sp                                   ; $6029: $08 $7b $fe
	ld d, a                                          ; $602c: $57
	ldh a, [$7f]                                     ; $602d: $f0 $7f
	ld c, h                                          ; $602f: $4c
	sbc l                                            ; $6030: $9d
	sub e                                            ; $6031: $93
	xor $57                                          ; $6032: $ee $57
	ldh a, [$9b]                                     ; $6034: $f0 $9b
	ldh [c], a                                       ; $6036: $e2
	dec e                                            ; $6037: $1d
	and $19                                          ; $6038: $e6 $19
	ld l, a                                          ; $603a: $6f
	ldh a, [rPCM34]                                  ; $603b: $f0 $77
	add a                                            ; $603d: $87
	rst SubAFromDE                                          ; $603e: $df
	rst $38                                          ; $603f: $ff
	sbc e                                            ; $6040: $9b
	cp [hl]                                          ; $6041: $be
	ld b, c                                          ; $6042: $41
	cp e                                             ; $6043: $bb
	ld b, h                                          ; $6044: $44
	ld d, a                                          ; $6045: $57
	ldh a, [$9b]                                     ; $6046: $f0 $9b
	or a                                             ; $6048: $b7
	ret z                                            ; $6049: $c8

	cp a                                             ; $604a: $bf
	ret nz                                           ; $604b: $c0

	ld d, a                                          ; $604c: $57
	ldh a, [$9b]                                     ; $604d: $f0 $9b
	ld a, $e1                                        ; $604f: $3e $e1
	dec bc                                           ; $6051: $0b
	db $f4                                           ; $6052: $f4
	ld d, a                                          ; $6053: $57
	ldh a, [$9b]                                     ; $6054: $f0 $9b
	ld c, a                                          ; $6056: $4f
	ldh a, [$5f]                                     ; $6057: $f0 $5f
	ldh [$5f], a                                     ; $6059: $e0 $5f
	ldh a, [$99]                                     ; $605b: $f0 $99
	rst SubAFromHL                                          ; $605d: $d7
	rst GetHLinHL                                          ; $605e: $cf
	ld d, e                                          ; $605f: $53
	call z, $c854                                    ; $6060: $cc $54 $c8
	ld d, a                                          ; $6063: $57
	ldh [$9b], a                                     ; $6064: $e0 $9b
	ld b, e                                          ; $6066: $43
	cp h                                             ; $6067: $bc
	and h                                            ; $6068: $a4
	jr jr_03e_60c2                                   ; $6069: $18 $57

	ldh a, [$9b]                                     ; $606b: $f0 $9b
	xor [hl]                                         ; $606d: $ae
	ld [hl], c                                       ; $606e: $71
	ld b, b                                          ; $606f: $40
	ld sp, $f057                                     ; $6070: $31 $57 $f0
	sbc e                                            ; $6073: $9b
	ld sp, $46ce                                     ; $6074: $31 $ce $46
	add b                                            ; $6077: $80

Jump_03e_6078:
	db $fc                                           ; $6078: $fc
	ld l, a                                          ; $6079: $6f
	pop af                                           ; $607a: $f1
	sbc d                                            ; $607b: $9a
	rst $38                                          ; $607c: $ff
	rlca                                             ; $607d: $07
	rst $38                                          ; $607e: $ff
	dec de                                           ; $607f: $1b
	ld h, a                                          ; $6080: $67
	ld d, a                                          ; $6081: $57
	ldh a, [$9b]                                     ; $6082: $f0 $9b
	and l                                            ; $6084: $a5
	rst $38                                          ; $6085: $ff
	sub d                                            ; $6086: $92
	xor l                                            ; $6087: $ad
	ld d, a                                          ; $6088: $57
	ldh a, [$9b]                                     ; $6089: $f0 $9b
	ldh [c], a                                       ; $608b: $e2
	rst $38                                          ; $608c: $ff
	dec d                                            ; $608d: $15
	ld [$f057], a                                    ; $608e: $ea $57 $f0
	sbc e                                            ; $6091: $9b
	db $f4                                           ; $6092: $f4
	rst $38                                          ; $6093: $ff
	add sp, -$0b                                     ; $6094: $e8 $f5
	ld d, a                                          ; $6096: $57
	ldh a, [$9b]                                     ; $6097: $f0 $9b
	jr z, @+$01                                      ; $6099: $28 $ff

	add c                                            ; $609b: $81
	ld a, [hl]                                       ; $609c: $7e
	ldh a, [$66]                                     ; $609d: $f0 $66
	ret z                                            ; $609f: $c8

	ld l, e                                          ; $60a0: $6b
	cp $9a                                           ; $60a1: $fe $9a
	ld e, a                                          ; $60a3: $5f
	ld h, c                                          ; $60a4: $61
	ld e, a                                          ; $60a5: $5f
	ld h, c                                          ; $60a6: $61
	ld d, e                                          ; $60a7: $53
	ld a, e                                          ; $60a8: $7b
	db $fc                                           ; $60a9: $fc
	ld a, a                                          ; $60aa: $7f
	cp $9e                                           ; $60ab: $fe $9e
	ld d, a                                          ; $60ad: $57
	ld a, e                                          ; $60ae: $7b
	cp $85                                           ; $60af: $fe $85
	ld b, b                                          ; $60b1: $40
	ld h, e                                          ; $60b2: $63
	rst SubAFromBC                                          ; $60b3: $e7
	sbc b                                            ; $60b4: $98
	rst SubAFromBC                                          ; $60b5: $e7
	sbc b                                            ; $60b6: $98
	ld b, $b9                                        ; $60b7: $06 $b9
	add $39                                          ; $60b9: $c6 $39
	add $39                                          ; $60bb: $c6 $39
	call $8d32                                       ; $60bd: $cd $32 $8d
	ld [hl], d                                       ; $60c0: $72
	inc d                                            ; $60c1: $14

jr_03e_60c2:
	ld h, e                                          ; $60c2: $63
	ld l, [hl]                                       ; $60c3: $6e
	sub c                                            ; $60c4: $91
	ld l, [hl]                                       ; $60c5: $6e
	sub c                                            ; $60c6: $91
	xor $11                                          ; $60c7: $ee $11
	rst SubAFromDE                                          ; $60c9: $df
	jr nc, @+$79                                     ; $60ca: $30 $77

	cp $89                                           ; $60cc: $fe $89
	cp a                                             ; $60ce: $bf
	ld [hl], b                                       ; $60cf: $70
	cp h                                             ; $60d0: $bc
	ld [hl], b                                       ; $60d1: $70
	xor d                                            ; $60d2: $aa
	ld b, l                                          ; $60d3: $45

jr_03e_60d4:
	xor d                                            ; $60d4: $aa
	ld b, l                                          ; $60d5: $45

jr_03e_60d6:
	ld l, d                                          ; $60d6: $6a
	sub l                                            ; $60d7: $95
	ld l, d                                          ; $60d8: $6a
	sub l                                            ; $60d9: $95
	dec sp                                           ; $60da: $3b
	call nz, $c43b                                   ; $60db: $c4 $3b $c4
	ccf                                              ; $60de: $3f
	ret nz                                           ; $60df: $c0

	nop                                              ; $60e0: $00
	xor $e5                                          ; $60e1: $ee $e5
	jr jr_03e_615c                                   ; $60e3: $18 $77

	cp $9d                                           ; $60e5: $fe $9d
	ld h, a                                          ; $60e7: $67
	sbc b                                            ; $60e8: $98
	ld l, a                                          ; $60e9: $6f
	cp $80                                           ; $60ea: $fe $80
	xor h                                            ; $60ec: $ac
	db $10                                           ; $60ed: $10
	ld e, $41                                        ; $60ee: $1e $41
	ld a, $41                                        ; $60f0: $3e $41
	xor [hl]                                         ; $60f2: $ae
	ld d, c                                          ; $60f3: $51
	inc l                                            ; $60f4: $2c
	ld d, e                                          ; $60f5: $53
	adc d                                            ; $60f6: $8a
	ld d, l                                          ; $60f7: $55
	xor d                                            ; $60f8: $aa
	ld d, l                                          ; $60f9: $55
	xor b                                            ; $60fa: $a8
	ld d, l                                          ; $60fb: $55
	ld d, h                                          ; $60fc: $54
	ld bc, $40ad                                     ; $60fd: $01 $ad $40
	xor c                                            ; $6100: $a9
	ld b, b                                          ; $6101: $40
	add hl, hl                                       ; $6102: $29
	ret nz                                           ; $6103: $c0

	add hl, hl                                       ; $6104: $29
	ret nz                                           ; $6105: $c0

	xor l                                            ; $6106: $ad
	ld b, b                                          ; $6107: $40
	dec l                                            ; $6108: $2d
	ret nz                                           ; $6109: $c0

	ld hl, $c896                                     ; $610a: $21 $96 $c8
	xor a                                            ; $610d: $af
	ld b, b                                          ; $610e: $40
	jp hl                                            ; $610f: $e9


	inc d                                            ; $6110: $14
	dec hl                                           ; $6111: $2b
	call nc, $d42b                                   ; $6112: $d4 $2b $d4
	ld [hl], a                                       ; $6115: $77
	jp nz, $6980                                     ; $6116: $c2 $80 $69

	add h                                            ; $6119: $84
	ld hl, $61dc                                     ; $611a: $21 $dc $61
	adc [hl]                                         ; $611d: $8e
	sbc c                                            ; $611e: $99
	ld h, b                                          ; $611f: $60
	ld [$08e0], sp                                   ; $6120: $08 $e0 $08
	ldh [$0c], a                                     ; $6123: $e0 $0c
	ldh [$b4], a                                     ; $6125: $e0 $b4
	ld h, b                                          ; $6127: $60
	cp h                                             ; $6128: $bc
	ld h, b                                          ; $6129: $60
	xor h                                            ; $612a: $ac
	ld [hl], b                                       ; $612b: $70
	adc b                                            ; $612c: $88
	ld [hl], b                                       ; $612d: $70
	push de                                          ; $612e: $d5
	ld c, b                                          ; $612f: $48
	sub $49                                          ; $6130: $d6 $49
	sub a                                            ; $6132: $97
	ld c, b                                          ; $6133: $48
	sub e                                            ; $6134: $93
	ld c, h                                          ; $6135: $4c
	sub a                                            ; $6136: $97
	add b                                            ; $6137: $80
	ld c, b                                          ; $6138: $48
	sub a                                            ; $6139: $97
	ld c, b                                          ; $613a: $48
	rst SubAFromHL                                          ; $613b: $d7
	ld [$08d7], sp                                   ; $613c: $08 $d7 $08
	add [hl]                                         ; $613f: $86
	jr c, jr_03e_60c2                                ; $6140: $38 $80

	jr c, jr_03e_60d4                                ; $6142: $38 $90

	jr z, jr_03e_60d6                                ; $6144: $28 $90

	jr z, @-$69                                      ; $6146: $28 $95

	jr z, jr_03e_6164                                ; $6148: $28 $1a

	jr nz, jr_03e_6156                               ; $614a: $20 $0a

	jr nc, jr_03e_6158                               ; $614c: $30 $0a

	jr nc, jr_03e_6155                               ; $614e: $30 $05

	ld [hl], b                                       ; $6150: $70
	dec d                                            ; $6151: $15
	ld [hl], b                                       ; $6152: $70
	jr jr_03e_61c5                                   ; $6153: $18 $70

jr_03e_6155:
	db $10                                           ; $6155: $10

jr_03e_6156:
	ld a, b                                          ; $6156: $78
	add b                                            ; $6157: $80

jr_03e_6158:
	ld d, b                                          ; $6158: $50
	jr c, jr_03e_6173                                ; $6159: $38 $18

	ld a, b                                          ; $615b: $78

jr_03e_615c:
	inc e                                            ; $615c: $1c
	ld a, b                                          ; $615d: $78
	sbc c                                            ; $615e: $99
	ld a, h                                          ; $615f: $7c
	ld b, $c0                                        ; $6160: $06 $c0
	ld [hl+], a                                      ; $6162: $22
	ret nz                                           ; $6163: $c0

jr_03e_6164:
	inc hl                                           ; $6164: $23
	ret nz                                           ; $6165: $c0

	ret nz                                           ; $6166: $c0

	ld hl, $6090                                     ; $6167: $21 $90 $60
	ld [de], a                                       ; $616a: $12
	ld h, b                                          ; $616b: $60
	ld b, d                                          ; $616c: $42
	jr nc, jr_03e_61af                               ; $616d: $30 $40

	jr nc, jr_03e_61c4                               ; $616f: $30 $53

	daa                                              ; $6171: $27
	ld c, a                                          ; $6172: $4f

jr_03e_6173:
	inc sp                                           ; $6173: $33
	add hl, bc                                       ; $6174: $09
	inc sp                                           ; $6175: $33
	and c                                            ; $6176: $a1
	sub h                                            ; $6177: $94
	dec de                                           ; $6178: $1b
	and e                                            ; $6179: $a3
	add hl, de                                       ; $617a: $19
	add h                                            ; $617b: $84
	add hl, de                                       ; $617c: $19
	ld [bc], a                                       ; $617d: $02
	dec e                                            ; $617e: $1d
	ldh [c], a                                       ; $617f: $e2
	dec e                                            ; $6180: $1d
	jp c, $6fa5                                      ; $6181: $da $a5 $6f

	cp $9e                                           ; $6184: $fe $9e
	adc b                                            ; $6186: $88
	ld l, e                                          ; $6187: $6b
	ld hl, sp-$6b                                    ; $6188: $f8 $95
	dec [hl]                                         ; $618a: $35
	jp z, $ca35                                      ; $618b: $ca $35 $ca

	dec d                                            ; $618e: $15
	ld [$ea15], a                                    ; $618f: $ea $15 $ea
	ret nz                                           ; $6192: $c0

	ld a, [hl+]                                      ; $6193: $2a
	ld [hl], a                                       ; $6194: $77
	ld a, [$fe7f]                                    ; $6195: $fa $7f $fe
	add b                                            ; $6198: $80
	ld d, e                                          ; $6199: $53
	db $ec                                           ; $619a: $ec
	ld d, e                                          ; $619b: $53
	db $e4                                           ; $619c: $e4
	ld a, e                                          ; $619d: $7b
	call z, $d86f                                    ; $619e: $cc $6f $d8
	xor a                                            ; $61a1: $af
	ret c                                            ; $61a2: $d8

	xor e                                            ; $61a3: $ab
	ret z                                            ; $61a4: $c8

	cp a                                             ; $61a5: $bf
	ret c                                            ; $61a6: $d8

	ld d, a                                          ; $61a7: $57
	cp b                                             ; $61a8: $b8
	pop de                                           ; $61a9: $d1
	ld l, $d0                                        ; $61aa: $2e $d0
	cpl                                              ; $61ac: $2f
	ld d, b                                          ; $61ad: $50
	xor a                                            ; $61ae: $af

jr_03e_61af:
	ld d, b                                          ; $61af: $50
	xor a                                            ; $61b0: $af
	adc d                                            ; $61b1: $8a
	dec h                                            ; $61b2: $25
	ret c                                            ; $61b3: $d8

	daa                                              ; $61b4: $27
	ld d, b                                          ; $61b5: $50
	xor a                                            ; $61b6: $af
	ret c                                            ; $61b7: $d8

	sbc [hl]                                         ; $61b8: $9e
	daa                                              ; $61b9: $27
	ld h, $c0                                        ; $61ba: $26 $c0
	ld h, c                                          ; $61bc: $61
	add c                                            ; $61bd: $81
	sbc l                                            ; $61be: $9d
	ld h, b                                          ; $61bf: $60
	nop                                              ; $61c0: $00
	sbc $7f                                          ; $61c1: $de $7f
	sub l                                            ; $61c3: $95

jr_03e_61c4:
	ld b, b                                          ; $61c4: $40

jr_03e_61c5:
	ld a, a                                          ; $61c5: $7f
	ld e, [hl]                                       ; $61c6: $5e
	ld h, c                                          ; $61c7: $61
	ld e, a                                          ; $61c8: $5f
	ld h, b                                          ; $61c9: $60
	ld a, [hl]                                       ; $61ca: $7e
	ld b, c                                          ; $61cb: $41
	ld e, [hl]                                       ; $61cc: $5e
	ld h, c                                          ; $61cd: $61
	ld l, [hl]                                       ; $61ce: $6e
	add d                                            ; $61cf: $82
	sub l                                            ; $61d0: $95
	ld e, e                                          ; $61d1: $5b
	rst $38                                          ; $61d2: $ff
	ld c, b                                          ; $61d3: $48
	rst $38                                          ; $61d4: $ff
	ld a, l                                          ; $61d5: $7d
	jp z, $ea5d                                      ; $61d6: $ca $5d $ea

	ld a, a                                          ; $61d9: $7f
	add sp, $6f                                      ; $61da: $e8 $6f
	ldh a, [$df]                                     ; $61dc: $f0 $df
	rst $38                                          ; $61de: $ff
	sub a                                            ; $61df: $97
	sub h                                            ; $61e0: $94
	ld a, [$700e]                                    ; $61e1: $fa $0e $70
	add $38                                          ; $61e4: $c6 $38
	rst JumpTable                                          ; $61e6: $c7
	jr c, jr_03e_6250                                ; $61e7: $38 $67

	ldh a, [$97]                                     ; $61e9: $f0 $97
	rrca                                             ; $61eb: $0f
	rst FarCall                                          ; $61ec: $f7
	rlca                                             ; $61ed: $07
	rst SubAFromBC                                          ; $61ee: $e7
	add a                                            ; $61ef: $87
	ld h, e                                          ; $61f0: $63
	sub a                                            ; $61f1: $97
	ld h, e                                          ; $61f2: $63
	ld h, a                                          ; $61f3: $67
	ldh a, [$97]                                     ; $61f4: $f0 $97
	ld b, l                                          ; $61f6: $45
	dec sp                                           ; $61f7: $3b
	ld b, d                                          ; $61f8: $42
	add hl, sp                                       ; $61f9: $39
	jp nc, $d229                                     ; $61fa: $d2 $29 $d2

	add hl, hl                                       ; $61fd: $29
	ld h, a                                          ; $61fe: $67
	ldh a, [$97]                                     ; $61ff: $f0 $97
	ld e, $fc                                        ; $6201: $1e $fc
	ld c, h                                          ; $6203: $4c
	sbc h                                            ; $6204: $9c
	call $dd18                                       ; $6205: $cd $18 $dd
	ld [$f067], sp                                   ; $6208: $08 $67 $f0
	ld a, a                                          ; $620b: $7f
	or [hl]                                          ; $620c: $b6
	sbc c                                            ; $620d: $99
	adc e                                            ; $620e: $8b
	ld b, b                                          ; $620f: $40
	adc e                                            ; $6210: $8b
	ld b, b                                          ; $6211: $40
	sbc c                                            ; $6212: $99
	ld b, b                                          ; $6213: $40
	ld h, a                                          ; $6214: $67
	ldh a, [$98]                                     ; $6215: $f0 $98
	sbc a                                            ; $6217: $9f
	ld h, b                                          ; $6218: $60
	cp l                                             ; $6219: $bd
	ld b, b                                          ; $621a: $40
	add hl, sp                                       ; $621b: $39
	ret nz                                           ; $621c: $c0

	ld de, $a063                                     ; $621d: $11 $63 $a0
	sub d                                            ; $6220: $92
	db $10                                           ; $6221: $10
	inc l                                            ; $6222: $2c
	rst AddAOntoHL                                          ; $6223: $ef
	nop                                              ; $6224: $00
	ld h, e                                          ; $6225: $63
	ld [$0873], sp                                   ; $6226: $08 $73 $08
	sub a                                            ; $6229: $97
	ld [$cf10], sp                                   ; $622a: $08 $10 $cf
	rst SubAFromDE                                          ; $622d: $df
	ld a, e                                          ; $622e: $7b
	cp $97                                           ; $622f: $fe $97
	ld de, $91ce                                     ; $6231: $11 $ce $91
	ld c, [hl]                                       ; $6234: $4e
	sub b                                            ; $6235: $90
	ld c, a                                          ; $6236: $4f
	sub b                                            ; $6237: $90
	ld c, a                                          ; $6238: $4f
	ld h, a                                          ; $6239: $67
	ldh [$9c], a                                     ; $623a: $e0 $9c
	db $f4                                           ; $623c: $f4
	ld bc, $73e4                                     ; $623d: $01 $e4 $73
	cp $67                                           ; $6240: $fe $67
	ldh a, [$97]                                     ; $6242: $f0 $97
	and a                                            ; $6244: $a7
	ld e, e                                          ; $6245: $5b
	ccf                                              ; $6246: $3f
	jp $d32f                                         ; $6247: $c3 $2f $d3


	ccf                                              ; $624a: $3f
	jp $8269                                         ; $624b: $c3 $69 $82


	sub [hl]                                         ; $624e: $96
	rst $38                                          ; $624f: $ff

jr_03e_6250:
	adc b                                            ; $6250: $88
	rst $38                                          ; $6251: $ff
	ld d, h                                          ; $6252: $54
	xor e                                            ; $6253: $ab
	inc d                                            ; $6254: $14
	db $eb                                           ; $6255: $eb
	add h                                            ; $6256: $84
	ld a, e                                          ; $6257: $7b
	ld h, a                                          ; $6258: $67
	ldh a, [hDisp1_WX]                                     ; $6259: $f0 $96
	add hl, bc                                       ; $625b: $09
	cp $a5                                           ; $625c: $fe $a5
	ld e, d                                          ; $625e: $5a
	and h                                            ; $625f: $a4
	ld e, e                                          ; $6260: $5b
	dec h                                            ; $6261: $25
	jp c, $6b0f                                      ; $6262: $da $0f $6b

	ldh a, [$7d]                                     ; $6265: $f0 $7d
	or [hl]                                          ; $6267: $b6
	sbc c                                            ; $6268: $99
	xor l                                            ; $6269: $ad
	ld d, d                                          ; $626a: $52
	xor c                                            ; $626b: $a9
	ld d, [hl]                                       ; $626c: $56
	xor c                                            ; $626d: $a9
	ld d, [hl]                                       ; $626e: $56
	ld a, e                                          ; $626f: $7b
	ldh a, [c]                                       ; $6270: $f2
	ld [hl], e                                       ; $6271: $73
	ldh a, [$97]                                     ; $6272: $f0 $97
	sub a                                            ; $6274: $97
	add sp, $13                                      ; $6275: $e8 $13
	add sp, $13                                      ; $6277: $e8 $13
	db $ec                                           ; $6279: $ec
	inc de                                           ; $627a: $13
	db $ec                                           ; $627b: $ec
	ld h, a                                          ; $627c: $67
	ldh a, [$97]                                     ; $627d: $f0 $97
	db $eb                                           ; $627f: $eb
	ld [hl], h                                       ; $6280: $74
	ei                                               ; $6281: $fb
	ld h, h                                          ; $6282: $64
	cp $61                                           ; $6283: $fe $61
	cp $61                                           ; $6285: $fe $61
	ld h, a                                          ; $6287: $67
	ldh a, [$97]                                     ; $6288: $f0 $97
	xor $39                                          ; $628a: $ee $39
	sbc $29                                          ; $628c: $de $29
	add l                                            ; $628e: $85
	ld a, d                                          ; $628f: $7a
	adc h                                            ; $6290: $8c
	ld [hl], e                                       ; $6291: $73
	ld [hl], $c1                                     ; $6292: $36 $c1
	ld d, [hl]                                       ; $6294: $56
	ret nz                                           ; $6295: $c0

	ld l, [hl]                                       ; $6296: $6e
	jp z, $bf7e                                      ; $6297: $ca $7e $bf

	adc d                                            ; $629a: $8a
	ld a, l                                          ; $629b: $7d
	ld b, b                                          ; $629c: $40
	ld a, a                                          ; $629d: $7f
	ld b, b                                          ; $629e: $40
	ld h, l                                          ; $629f: $65
	ld c, b                                          ; $62a0: $48
	nop                                              ; $62a1: $00
	ld h, b                                          ; $62a2: $60
	ld a, e                                          ; $62a3: $7b
	db $ec                                           ; $62a4: $ec
	ld a, a                                          ; $62a5: $7f
	db $e4                                           ; $62a6: $e4
	ld l, l                                          ; $62a7: $6d
	or $6d                                           ; $62a8: $f6 $6d
	or $75                                           ; $62aa: $f6 $75
	ld a, [$fb74]                                    ; $62ac: $fa $74 $fb
	ld [hl], b                                       ; $62af: $70
	ld a, b                                          ; $62b0: $78
	ld h, a                                          ; $62b1: $67
	ld a, [hl]                                       ; $62b2: $7e
	adc $94                                          ; $62b3: $ce $94
	ld h, [hl]                                       ; $62b5: $66
	sbc b                                            ; $62b6: $98
	ld h, d                                          ; $62b7: $62
	sbc h                                            ; $62b8: $9c
	ld h, e                                          ; $62b9: $63
	sbc h                                            ; $62ba: $9c
	inc sp                                           ; $62bb: $33
	call z, $cc10                                    ; $62bc: $cc $10 $cc
	nop                                              ; $62bf: $00
	ld a, b                                          ; $62c0: $78
	add d                                            ; $62c1: $82
	ld a, [hl]                                       ; $62c2: $7e
	adc $96                                          ; $62c3: $ce $96
	ld h, a                                          ; $62c5: $67
	inc de                                           ; $62c6: $13
	ld c, c                                          ; $62c7: $49
	inc sp                                           ; $62c8: $33
	swap c                                           ; $62c9: $cb $31
	add e                                            ; $62cb: $83
	ld hl, $7080                                     ; $62cc: $21 $80 $70
	ld d, h                                          ; $62cf: $54
	sbc [hl]                                         ; $62d0: $9e
	sub d                                            ; $62d1: $92
	ld a, d                                          ; $62d2: $7a

jr_03e_62d3:
	call z, $969c                                    ; $62d3: $cc $9c $96
	add hl, hl                                       ; $62d6: $29
	sub d                                            ; $62d7: $92
	ld a, e                                          ; $62d8: $7b
	cp $9c                                           ; $62d9: $fe $9c
	add d                                            ; $62db: $82
	add hl, sp                                       ; $62dc: $39
	cp c                                             ; $62dd: $b9
	cp $92                                           ; $62de: $fe $92
	ret c                                            ; $62e0: $d8

	add hl, bc                                       ; $62e1: $09
	ret c                                            ; $62e2: $d8

	add hl, bc                                       ; $62e3: $09
	ld e, d                                          ; $62e4: $5a
	adc c                                            ; $62e5: $89
	ld e, d                                          ; $62e6: $5a
	adc c                                            ; $62e7: $89
	db $d3                                           ; $62e8: $d3
	ld [$805b], sp                                   ; $62e9: $08 $5b $80
	jp $c27a                                         ; $62ec: $c3 $7a $c2


	sbc d                                            ; $62ef: $9a
	ld de, $1580                                     ; $62f0: $11 $80 $15
	add b                                            ; $62f3: $80
	ld d, l                                          ; $62f4: $55
	ld a, e                                          ; $62f5: $7b
	cp $7f                                           ; $62f6: $fe $7f
	ld a, [$1490]                                    ; $62f8: $fa $90 $14
	ld bc, $8100                                     ; $62fb: $01 $00 $81
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	inc sp                                           ; $6300: $33
	ret z                                            ; $6301: $c8

	inc sp                                           ; $6302: $33
	ret z                                            ; $6303: $c8

	dec sp                                           ; $6304: $3b
	ret nz                                           ; $6305: $c0

	ld [hl], e                                       ; $6306: $73
	add b                                            ; $6307: $80
	ld d, a                                          ; $6308: $57
	ld a, e                                          ; $6309: $7b
	cp $9e                                           ; $630a: $fe $9e
	sub l                                            ; $630c: $95
	cp $7e                                           ; $630d: $fe $7e
	sbc [hl]                                         ; $630f: $9e
	ld a, a                                          ; $6310: $7f
	cp $9c                                           ; $6311: $fe $9c
	db $ed                                           ; $6313: $ed
	jr jr_03e_62d3                                   ; $6314: $18 $bd

	ld a, e                                          ; $6316: $7b
	cp $9c                                           ; $6317: $fe $9c
	cp c                                             ; $6319: $b9
	jr jr_03e_6334                                   ; $631a: $18 $18

	ld a, d                                          ; $631c: $7a
	ld h, d                                          ; $631d: $62
	add d                                            ; $631e: $82
	sbc c                                            ; $631f: $99
	ld c, [hl]                                       ; $6320: $4e
	sbc l                                            ; $6321: $9d
	ld c, d                                          ; $6322: $4a
	sbc b                                            ; $6323: $98
	ld c, a                                          ; $6324: $4f
	sbc c                                            ; $6325: $99
	ld c, [hl]                                       ; $6326: $4e
	sbc b                                            ; $6327: $98
	ld c, a                                          ; $6328: $4f
	add hl, de                                       ; $6329: $19
	adc $1b                                          ; $632a: $ce $1b
	call z, $00df                                    ; $632c: $cc $df $00
	db $e4                                           ; $632f: $e4
	ld bc, $01e0                                     ; $6330: $01 $e0 $01
	db $ec                                           ; $6333: $ec

jr_03e_6334:
	ld bc, $21ce                                     ; $6334: $01 $ce $21
	adc $21                                          ; $6337: $ce $21
	xor $01                                          ; $6339: $ee $01
	xor $7b                                          ; $633b: $ee $7b
	ld b, l                                          ; $633d: $45
	sub c                                            ; $633e: $91
	scf                                              ; $633f: $37
	jp Jump_03e_4393                                 ; $6340: $c3 $93 $43


	cp a                                             ; $6343: $bf
	ld b, d                                          ; $6344: $42
	or e                                             ; $6345: $b3
	ld b, d                                          ; $6346: $42
	ccf                                              ; $6347: $3f
	jp nz, $c237                                     ; $6348: $c2 $37 $c2

	rra                                              ; $634b: $1f
	jp nz, $357b                                     ; $634c: $c2 $7b $35

	add b                                            ; $634f: $80
	ld a, d                                          ; $6350: $7a
	ld bc, $01de                                     ; $6351: $01 $de $01
	sub $2a                                          ; $6354: $d6 $2a
	call nc, $d42a                                   ; $6356: $d4 $2a $d4
	ld [hl+], a                                      ; $6359: $22
	db $dd                                           ; $635a: $dd
	ld h, h                                          ; $635b: $64
	sbc e                                            ; $635c: $9b
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
	dec [hl]                                         ; $635f: $35
	jp c, $ba15                                      ; $6360: $da $15 $ba

	inc d                                            ; $6363: $14
	cp e                                             ; $6364: $bb
	ld [hl], l                                       ; $6365: $75
	cp d                                             ; $6366: $ba
	ld [hl], l                                       ; $6367: $75
	cp d                                             ; $6368: $ba
	dec [hl]                                         ; $6369: $35
	ld a, [$7ab5]                                    ; $636a: $fa $b5 $7a
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	halt                                             ; $636f: $76
	call z, $a199                                    ; $6370: $cc $99 $a1
	ld e, [hl]                                       ; $6373: $5e
	xor c                                            ; $6374: $a9
	ld d, [hl]                                       ; $6375: $56

jr_03e_6376:
	xor e                                            ; $6376: $ab
	ld d, h                                          ; $6377: $54
	ld [hl], a                                       ; $6378: $77
	cp $9d                                           ; $6379: $fe $9d
	ccf                                              ; $637b: $3f
	nop                                              ; $637c: $00
	halt                                             ; $637d: $76
	call z, $1188                                    ; $637e: $cc $88 $11
	ld [$e219], a                                    ; $6381: $ea $19 $e2
	add hl, de                                       ; $6384: $19
	ldh [c], a                                       ; $6385: $e2
	ld [$00e2], sp                                   ; $6386: $08 $e2 $00
	ld [$00ff], a                                    ; $6389: $ea $ff $00
	sbc $61                                          ; $638c: $de $61
	db $f4                                           ; $638e: $f4
	ld c, e                                          ; $638f: $4b
	rst FarCall                                          ; $6390: $f7
	ld c, b                                          ; $6391: $48
	ei                                               ; $6392: $fb
	ld b, b                                          ; $6393: $40
	rst SubAFromDE                                          ; $6394: $df
	ld b, b                                          ; $6395: $40
	sub a                                            ; $6396: $97
	ld a, e                                          ; $6397: $7b
	cp $8e                                           ; $6398: $fe $8e
	db $fc                                           ; $639a: $fc
	nop                                              ; $639b: $00
	xor a                                            ; $639c: $af
	ld d, b                                          ; $639d: $50
	adc a                                            ; $639e: $8f
	ld [hl], b                                       ; $639f: $70
	adc a                                            ; $63a0: $8f
	ld [hl], b                                       ; $63a1: $70
	dec de                                           ; $63a2: $1b
	db $e4                                           ; $63a3: $e4
	inc e                                            ; $63a4: $1c
	pop hl                                           ; $63a5: $e1
	inc b                                            ; $63a6: $04
	jp hl                                            ; $63a7: $e9


	add hl, hl                                       ; $63a8: $29
	ret nz                                           ; $63a9: $c0

	rlca                                             ; $63aa: $07
	jr jr_03e_63ee                                   ; $63ab: $18 $41

	ld l, [hl]                                       ; $63ad: $6e
	cp d                                             ; $63ae: $ba
	adc a                                            ; $63af: $8f
	add b                                            ; $63b0: $80
	ld a, a                                          ; $63b1: $7f
	rst $38                                          ; $63b2: $ff
	ld a, a                                          ; $63b3: $7f
	ldh [c], a                                       ; $63b4: $e2
	ld a, a                                          ; $63b5: $7f
	call nz, $c47b                                   ; $63b6: $c4 $7b $c4
	ld h, c                                          ; $63b9: $61
	call nz, $c56b                                   ; $63ba: $c4 $6b $c5

jr_03e_63bd:
	ld l, d                                          ; $63bd: $6a
	push bc                                          ; $63be: $c5
	ld h, b                                          ; $63bf: $60
	halt                                             ; $63c0: $76
	add e                                            ; $63c1: $83
	sbc c                                            ; $63c2: $99
	ld sp, $0bff                                     ; $63c3: $31 $ff $0b
	push af                                          ; $63c6: $f5
	ld c, e                                          ; $63c7: $4b
	ld sp, $fe6f                                     ; $63c8: $31 $6f $fe
	halt                                             ; $63cb: $76
	ld [hl], d                                       ; $63cc: $72
	sbc e                                            ; $63cd: $9b
	call nz, $92ff                                   ; $63ce: $c4 $ff $92
	call z, $fe7b                                    ; $63d1: $cc $7b $fe
	sbc d                                            ; $63d4: $9a
	adc h                                            ; $63d5: $8c
	add b                                            ; $63d6: $80
	sbc h                                            ; $63d7: $9c
	jr nz, jr_03e_6376                               ; $63d8: $20 $9c

	ld [hl], a                                       ; $63da: $77
	ldh a, [$9e]                                     ; $63db: $f0 $9e
	jr nc, jr_03e_645a                               ; $63dd: $30 $7b

	ei                                               ; $63df: $fb
	sub a                                            ; $63e0: $97
	or d                                             ; $63e1: $b2
	ld b, l                                          ; $63e2: $45
	or d                                             ; $63e3: $b2
	ld b, l                                          ; $63e4: $45
	ld [hl], d                                       ; $63e5: $72
	add l                                            ; $63e6: $85
	ld [hl], b                                       ; $63e7: $70
	add h                                            ; $63e8: $84
	ld [hl], a                                       ; $63e9: $77
	ldh a, [$7e]                                     ; $63ea: $f0 $7e
	inc b                                            ; $63ec: $04
	ld a, [hl]                                       ; $63ed: $7e

jr_03e_63ee:
	and b                                            ; $63ee: $a0
	sbc l                                            ; $63ef: $9d
	ld sp, $778c                                     ; $63f0: $31 $8c $77
	cp $9d                                           ; $63f3: $fe $9d
	dec [hl]                                         ; $63f5: $35
	adc [hl]                                         ; $63f6: $8e
	ld [hl], a                                       ; $63f7: $77
	ldh a, [$9e]                                     ; $63f8: $f0 $9e
	ld hl, $fb7b                                     ; $63fa: $21 $7b $fb
	sbc b                                            ; $63fd: $98
	add hl, bc                                       ; $63fe: $09
	or $89                                           ; $63ff: $f6 $89
	halt                                             ; $6401: $76
	adc l                                            ; $6402: $8d
	ld [hl], d                                       ; $6403: $72
	nop                                              ; $6404: $00
	ld [hl], l                                       ; $6405: $75
	ldh a, [$9a]                                     ; $6406: $f0 $9a
	rst $38                                          ; $6408: $ff
	ret nz                                           ; $6409: $c0

	rst $38                                          ; $640a: $ff
	rst SubAFromHL                                          ; $640b: $d7
	add sp, $77                                      ; $640c: $e8 $77
	cp $9e                                           ; $640e: $fe $9e
	ld d, a                                          ; $6410: $57
	ld a, e                                          ; $6411: $7b
	cp $77                                           ; $6412: $fe $77
	ldh a, [$9b]                                     ; $6414: $f0 $9b
	dec b                                            ; $6416: $05
	ld a, [$728d]                                    ; $6417: $fa $8d $72
	ld h, a                                          ; $641a: $67
	cp $77                                           ; $641b: $fe $77
	ldh a, [$9d]                                     ; $641d: $f0 $9d
	ld l, h                                          ; $641f: $6c
	sub e                                            ; $6420: $93
	ld e, a                                          ; $6421: $5f
	cp $79                                           ; $6422: $fe $79
	add d                                            ; $6424: $82
	sub a                                            ; $6425: $97
	adc a                                            ; $6426: $8f
	call c, $df8f                                    ; $6427: $dc $8f $df
	adc b                                            ; $642a: $88
	rst SubAFromDE                                          ; $642b: $df
	adc b                                            ; $642c: $88
	db $dd                                           ; $642d: $dd
	ld a, e                                          ; $642e: $7b
	cp $9d                                           ; $642f: $fe $9d
	reti                                             ; $6431: $d9


	adc h                                            ; $6432: $8c
	ld [hl], a                                       ; $6433: $77
	or b                                             ; $6434: $b0
	sub e                                            ; $6435: $93
	ld [$05ff], sp                                   ; $6436: $08 $ff $05
	cp d                                             ; $6439: $ba
	ld [bc], a                                       ; $643a: $02
	jr c, jr_03e_63bd                                ; $643b: $38 $80

	ld a, [hl-]                                      ; $643d: $3a
	add d                                            ; $643e: $82
	jr c, @-$7b                                      ; $643f: $38 $83

	jr c, @+$79                                      ; $6441: $38 $77

	ldh a, [hDisp1_OBP0]                                     ; $6443: $f0 $93
	ld e, h                                          ; $6445: $5c
	rst $38                                          ; $6446: $ff
	add d                                            ; $6447: $82
	ld a, h                                          ; $6448: $7c
	inc h                                            ; $6449: $24
	ld e, b                                          ; $644a: $58
	inc h                                            ; $644b: $24
	ld e, b                                          ; $644c: $58
	ld [hl+], a                                      ; $644d: $22
	ld e, h                                          ; $644e: $5c
	ld [hl+], a                                      ; $644f: $22
	ld e, h                                          ; $6450: $5c
	ld [hl], a                                       ; $6451: $77
	ldh a, [hDisp1_OBP0]                                     ; $6452: $f0 $93
	ld bc, $00ff                                     ; $6454: $01 $ff $00
	cp l                                             ; $6457: $bd
	dec h                                            ; $6458: $25
	sbc b                                            ; $6459: $98

jr_03e_645a:
	ld bc, $09bc                                     ; $645a: $01 $bc $09
	or h                                             ; $645d: $b4
	dec l                                            ; $645e: $2d
	sub b                                            ; $645f: $90
	ld [hl], a                                       ; $6460: $77
	ldh a, [$9e]                                     ; $6461: $f0 $9e
	bit 7, e                                         ; $6463: $cb $7b
	adc [hl]                                         ; $6465: $8e
	sub a                                            ; $6466: $97
	add c                                            ; $6467: $81
	jp c, $da81                                      ; $6468: $da $81 $da

	add h                                            ; $646b: $84
	jp c, $d688                                      ; $646c: $da $88 $d6

	ld [hl], a                                       ; $646f: $77
	ldh a, [hDisp1_OBP0]                                     ; $6470: $f0 $93
	ld h, b                                          ; $6472: $60
	rst $38                                          ; $6473: $ff
	push bc                                          ; $6474: $c5
	ld a, d                                          ; $6475: $7a
	jp z, $cf71                                      ; $6476: $ca $71 $cf

	ld [hl], b                                       ; $6479: $70
	rst AddAOntoHL                                          ; $647a: $ef
	ld d, b                                          ; $647b: $50
	ld l, a                                          ; $647c: $6f
	ret nc                                           ; $647d: $d0

	ld [hl], a                                       ; $647e: $77
	ldh a, [$9a]                                     ; $647f: $f0 $9a
	ld d, d                                          ; $6481: $52
	rst $38                                          ; $6482: $ff

jr_03e_6483:
	adc c                                            ; $6483: $89
	halt                                             ; $6484: $76
	adc [hl]                                         ; $6485: $8e
	ld a, d                                          ; $6486: $7a
	jp c, $fe7f                                      ; $6487: $da $7f $fe

	ld a, a                                          ; $648a: $7f
	ld a, [$f077]                                    ; $648b: $fa $77 $f0
	sub e                                            ; $648e: $93
	dec c                                            ; $648f: $0d
	rst $38                                          ; $6490: $ff
	ld d, e                                          ; $6491: $53
	xor l                                            ; $6492: $ad
	and h                                            ; $6493: $a4
	add hl, bc                                       ; $6494: $09
	pop af                                           ; $6495: $f1
	inc c                                            ; $6496: $0c
	db $f4                                           ; $6497: $f4
	inc c                                            ; $6498: $0c
	db $f4                                           ; $6499: $f4
	ld c, $77                                        ; $649a: $0e $77
	ldh a, [$99]                                     ; $649c: $f0 $99
	ldh [c], a                                       ; $649e: $e2
	db $fd                                           ; $649f: $fd
	rst GetHLinHL                                          ; $64a0: $cf
	ldh a, [$c9]                                     ; $64a1: $f0 $c9
	ldh [rPCM34], a                                  ; $64a3: $e0 $77
	cp $9d                                           ; $64a5: $fe $9d
	ld c, c                                          ; $64a7: $49
	ldh [rAUD3HIGH], a                               ; $64a8: $e0 $1e
	ret nz                                           ; $64aa: $c0

	halt                                             ; $64ab: $76
	cp [hl]                                          ; $64ac: $be
	ld a, a                                          ; $64ad: $7f
	db $fc                                           ; $64ae: $fc
	add e                                            ; $64af: $83
	rst GetHLinHL                                          ; $64b0: $cf
	ld h, b                                          ; $64b1: $60
	jp z, $dc65                                      ; $64b2: $ca $65 $dc

	ld h, c                                          ; $64b5: $61
	ret z                                            ; $64b6: $c8

	ld h, c                                          ; $64b7: $61
	call $c160                                       ; $64b8: $cd $60 $c1
	ld l, [hl]                                       ; $64bb: $6e
	ret nz                                           ; $64bc: $c0

	ld h, b                                          ; $64bd: $60
	ldh [rP1], a                                     ; $64be: $e0 $00
	ld c, a                                          ; $64c0: $4f
	ld sp, $3349                                     ; $64c1: $31 $49 $33
	ld c, c                                          ; $64c4: $49
	ld [hl-], a                                      ; $64c5: $32
	adc c                                            ; $64c6: $89
	ld [hl], d                                       ; $64c7: $72
	adc c                                            ; $64c8: $89
	ld [hl], d                                       ; $64c9: $72
	dec bc                                           ; $64ca: $0b
	ld [hl], b                                       ; $64cb: $70
	ld a, e                                          ; $64cc: $7b
	inc hl                                           ; $64cd: $23
	add d                                            ; $64ce: $82
	nop                                              ; $64cf: $00
	and h                                            ; $64d0: $a4
	jr @-$5a                                         ; $64d1: $18 $a4

	jr @+$22                                         ; $64d3: $18 $20

	add hl, de                                       ; $64d5: $19
	ld b, d                                          ; $64d6: $42
	add hl, sp                                       ; $64d7: $39
	ld b, e                                          ; $64d8: $43
	add hl, sp                                       ; $64d9: $39
	dec bc                                           ; $64da: $0b
	ld [hl], c                                       ; $64db: $71
	ld [hl], b                                       ; $64dc: $70
	inc bc                                           ; $64dd: $03
	nop                                              ; $64de: $00
	nop                                              ; $64df: $00
	or d                                             ; $64e0: $b2
	add h                                            ; $64e1: $84
	or d                                             ; $64e2: $b2
	add h                                            ; $64e3: $84
	and e                                            ; $64e4: $a3
	add h                                            ; $64e5: $84

Call_03e_64e6:
	or e                                             ; $64e6: $b3
	add h                                            ; $64e7: $84
	sub e                                            ; $64e8: $93
	and h                                            ; $64e9: $a4
	sub e                                            ; $64ea: $93
	and h                                            ; $64eb: $a4
	db $fd                                           ; $64ec: $fd
	add b                                            ; $64ed: $80
	ld l, $95                                        ; $64ee: $2e $95
	dec l                                            ; $64f0: $2d
	sub [hl]                                         ; $64f1: $96
	dec l                                            ; $64f2: $2d
	sub [hl]                                         ; $64f3: $96
	ld l, $97                                        ; $64f4: $2e $97
	ld h, $9f                                        ; $64f6: $26 $9f
	ld h, $df                                        ; $64f8: $26 $df
	jr nz, jr_03e_6483                               ; $64fa: $20 $87

	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	add b                                            ; $64fe: $80
	ld a, e                                          ; $64ff: $7b
	add b                                            ; $6500: $80
	ld e, e                                          ; $6501: $5b
	adc b                                            ; $6502: $88
	ld d, e                                          ; $6503: $53
	cp h                                             ; $6504: $bc
	ld b, e                                          ; $6505: $43
	cp h                                             ; $6506: $bc
	ld b, e                                          ; $6507: $43
	sbc [hl]                                         ; $6508: $9e
	ld h, c                                          ; $6509: $61
	ld b, $69                                        ; $650a: $06 $69
	nop                                              ; $650c: $00
	sbc e                                            ; $650d: $9b
	nop                                              ; $650e: $00
	ld d, a                                          ; $650f: $57
	add sp, $17                                      ; $6510: $e8 $17
	ld a, d                                          ; $6512: $7a
	jp z, $179d                                      ; $6513: $ca $9d $17

	ld l, b                                          ; $6516: $68
	ld [hl], e                                       ; $6517: $73
	cp $7a                                           ; $6518: $fe $7a
	jp nz, $a99d                                     ; $651a: $c2 $9d $a9

	ld d, d                                          ; $651d: $52
	ld e, [hl]                                       ; $651e: $5e
	call nz, $c276                                   ; $651f: $c4 $76 $c2
	ld l, [hl]                                       ; $6522: $6e
	jp z, Jump_03e_6e9d                              ; $6523: $ca $9d $6e

	sub c                                            ; $6526: $91
	ld [hl], a                                       ; $6527: $77
	cp $7f                                           ; $6528: $fe $7f
	ld hl, sp-$01                                    ; $652a: $f8 $ff
	ld a, [hl]                                       ; $652c: $7e
	adc $7f                                          ; $652d: $ce $7f
	cp $9e                                           ; $652f: $fe $9e
	db $db                                           ; $6531: $db
	ld h, a                                          ; $6532: $67
	cp $8f                                           ; $6533: $fe $8f
	inc c                                            ; $6535: $0c
	rst SubAFromDE                                          ; $6536: $df
	nop                                              ; $6537: $00
	add c                                            ; $6538: $81
	ld a, [hl-]                                      ; $6539: $3a
	add e                                            ; $653a: $83
	jr c, @+$05                                      ; $653b: $38 $03

	cp b                                             ; $653d: $b8
	add d                                            ; $653e: $82
	jr c, jr_03e_6543                                ; $653f: $38 $02

	cp b                                             ; $6541: $b8
	ld [bc], a                                       ; $6542: $02

jr_03e_6543:
	cp b                                             ; $6543: $b8
	cp b                                             ; $6544: $b8
	ld a, b                                          ; $6545: $78
	rst $38                                          ; $6546: $ff
	halt                                             ; $6547: $76
	call z, $fe6f                                    ; $6548: $cc $6f $fe
	sbc h                                            ; $654b: $9c
	nop                                              ; $654c: $00
	ld a, [hl]                                       ; $654d: $7e
	ld a, h                                          ; $654e: $7c
	cp $7e                                           ; $654f: $fe $7e
	call z, $fe6f                                    ; $6551: $cc $6f $fe
	sbc d                                            ; $6554: $9a
	ld [$00b5], sp                                   ; $6555: $08 $b5 $00
	cp l                                             ; $6558: $bd
	ld de, $87fe                                     ; $6559: $11 $fe $87
	ld [$40d6], sp                                   ; $655c: $08 $d6 $40
	sub [hl]                                         ; $655f: $96
	ld b, b                                          ; $6560: $40
	or a                                             ; $6561: $b7
	ld b, b                                          ; $6562: $40
	or a                                             ; $6563: $b7
	ld c, b                                          ; $6564: $48
	or a                                             ; $6565: $b7
	nop                                              ; $6566: $00
	rst $38                                          ; $6567: $ff
	cp d                                             ; $6568: $ba
	ld b, l                                          ; $6569: $45
	rra                                              ; $656a: $1f
	nop                                              ; $656b: $00
	ld l, a                                          ; $656c: $6f
	ret nc                                           ; $656d: $d0

	rst AddAOntoHL                                          ; $656e: $ef
	ret nc                                           ; $656f: $d0

	db $eb                                           ; $6570: $eb
	ret nc                                           ; $6571: $d0

	rst GetHLinHL                                          ; $6572: $cf
	ldh a, [$7a]                                     ; $6573: $f0 $7a
	xor $8d                                          ; $6575: $ee $8d
	or $fb                                           ; $6577: $f6 $fb
	inc b                                            ; $6579: $04
	rst $38                                          ; $657a: $ff
	nop                                              ; $657b: $00
	adc [hl]                                         ; $657c: $8e
	ld [hl], c                                       ; $657d: $71
	adc a                                            ; $657e: $8f
	ld [hl], b                                       ; $657f: $70
	adc h                                            ; $6580: $8c
	ld [hl], e                                       ; $6581: $73
	adc l                                            ; $6582: $8d
	ld [hl], d                                       ; $6583: $72
	adc [hl]                                         ; $6584: $8e
	ld [hl], c                                       ; $6585: $71
	adc [hl]                                         ; $6586: $8e
	ld [hl], c                                       ; $6587: $71
	adc $79                                          ; $6588: $ce $79
	ldh [c], a                                       ; $658a: $e2
	add c                                            ; $658b: $81
	sub $2c                                          ; $658c: $d6 $2c
	call c, $dc26                                    ; $658e: $dc $26 $dc
	ld h, $de                                        ; $6591: $26 $de
	daa                                              ; $6593: $27
	sbc $27                                          ; $6594: $de $27
	rst SubAFromDE                                          ; $6596: $df
	daa                                              ; $6597: $27
	ld sp, hl                                        ; $6598: $f9
	ld b, $ff                                        ; $6599: $06 $ff
	nop                                              ; $659b: $00
	ld c, c                                          ; $659c: $49
	ldh [$c9], a                                     ; $659d: $e0 $c9
	ld h, b                                          ; $659f: $60
	ld c, c                                          ; $65a0: $49
	ld h, b                                          ; $65a1: $60
	ld c, c                                          ; $65a2: $49
	ldh [$09], a                                     ; $65a3: $e0 $09
	ldh [hDisp0_WX], a                                     ; $65a5: $e0 $89
	ld h, b                                          ; $65a7: $60
	adc c                                            ; $65a8: $89
	ld h, b                                          ; $65a9: $60
	ld a, b                                          ; $65aa: $78
	ld a, a                                          ; $65ab: $7f
	ld d, $bf                                        ; $65ac: $16 $bf
	ld a, e                                          ; $65ae: $7b
	cp $6d                                           ; $65af: $fe $6d
	add b                                            ; $65b1: $80
	sbc b                                            ; $65b2: $98

jr_03e_65b3:
	ret nz                                           ; $65b3: $c0

	ld a, a                                          ; $65b4: $7f
	pop bc                                           ; $65b5: $c1
	ld l, [hl]                                       ; $65b6: $6e
	reti                                             ; $65b7: $d9


	ld h, [hl]                                       ; $65b8: $66
	ret                                              ; $65b9: $c9


	ld a, e                                          ; $65ba: $7b
	cp $75                                           ; $65bb: $fe $75
	add b                                            ; $65bd: $80
	sub e                                            ; $65be: $93
	ld h, c                                          ; $65bf: $61
	rst $38                                          ; $65c0: $ff
	sub b                                            ; $65c1: $90
	ld l, a                                          ; $65c2: $6f
	nop                                              ; $65c3: $00
	ld l, c                                          ; $65c4: $69
	ld [bc], a                                       ; $65c5: $02
	ld l, l                                          ; $65c6: $6d
	add d                                            ; $65c7: $82
	ld a, l                                          ; $65c8: $7d
	ld [de], a                                       ; $65c9: $12
	ld l, l                                          ; $65ca: $6d
	ld [hl], a                                       ; $65cb: $77
	ldh a, [$9e]                                     ; $65cc: $f0 $9e
	ld [hl-], a                                      ; $65ce: $32
	ld a, c                                          ; $65cf: $79
	adc [hl]                                         ; $65d0: $8e
	sbc b                                            ; $65d1: $98
	jr nc, jr_03e_6612                               ; $65d2: $30 $3e

	ld a, c                                          ; $65d4: $79

jr_03e_65d5:
	or [hl]                                          ; $65d5: $b6
	ld a, b                                          ; $65d6: $78
	or a                                             ; $65d7: $b7
	ld a, b                                          ; $65d8: $78
	ld a, e                                          ; $65d9: $7b
	ld l, d                                          ; $65da: $6a
	rst SubAFromDE                                          ; $65db: $df
	rst $38                                          ; $65dc: $ff
	sub e                                            ; $65dd: $93
	cp d                                             ; $65de: $ba
	rst $38                                          ; $65df: $ff
	db $10                                           ; $65e0: $10
	rst $38                                          ; $65e1: $ff
	dec d                                            ; $65e2: $15
	cp d                                             ; $65e3: $ba
	ld de, $1afe                                     ; $65e4: $11 $fe $1a
	push af                                          ; $65e7: $f5
	ld a, [de]                                       ; $65e8: $1a
	push af                                          ; $65e9: $f5
	ld [hl], a                                       ; $65ea: $77
	ldh a, [hDisp1_OBP0]                                     ; $65eb: $f0 $93
	and c                                            ; $65ed: $a1
	rst $38                                          ; $65ee: $ff
	db $10                                           ; $65ef: $10
	rst AddAOntoHL                                          ; $65f0: $ef
	xor b                                            ; $65f1: $a8
	ld b, a                                          ; $65f2: $47
	sbc h                                            ; $65f3: $9c
	ld h, e                                          ; $65f4: $63
	sub h                                            ; $65f5: $94

jr_03e_65f6:
	ld l, e                                          ; $65f6: $6b
	sub h                                            ; $65f7: $94
	ld l, e                                          ; $65f8: $6b
	ld [hl], a                                       ; $65f9: $77
	ldh a, [$7f]                                     ; $65fa: $f0 $7f
	db $fc                                           ; $65fc: $fc
	sub l                                            ; $65fd: $95
	ccf                                              ; $65fe: $3f
	ret nz                                           ; $65ff: $c0

	ret c                                            ; $6600: $d8

	jr nz, @-$06                                     ; $6601: $20 $f8

	nop                                              ; $6603: $00
	cp b                                             ; $6604: $b8
	ld d, b                                          ; $6605: $50
	cp b                                             ; $6606: $b8
	ld d, b                                          ; $6607: $50
	ld [hl], a                                       ; $6608: $77
	ldh a, [hDisp1_OBP0]                                     ; $6609: $f0 $93
	ld b, c                                          ; $660b: $41
	rst $38                                          ; $660c: $ff
	ld a, $c1                                        ; $660d: $3e $c1
	nop                                              ; $660f: $00
	pop bc                                           ; $6610: $c1
	add b                                            ; $6611: $80

jr_03e_6612:
	ld b, c                                          ; $6612: $41
	add b                                            ; $6613: $80
	ld h, c                                          ; $6614: $61
	and b                                            ; $6615: $a0
	ld b, c                                          ; $6616: $41
	ld [hl], a                                       ; $6617: $77
	ldh a, [$7f]                                     ; $6618: $f0 $7f
	jp nz, Jump_03e_7595                             ; $661a: $c2 $95 $75

	sbc d                                            ; $661d: $9a
	push de                                          ; $661e: $d5
	jr jr_03e_65f6                                   ; $661f: $18 $d5

	jr jr_03e_65b3                                   ; $6621: $18 $90

	jr jr_03e_65d5                                   ; $6623: $18 $b0

	ld [$d06f], sp                                   ; $6625: $08 $6f $d0
	ld a, a                                          ; $6628: $7f
	cp $97                                           ; $6629: $fe $97
	ld l, [hl]                                       ; $662b: $6e
	sub b                                            ; $662c: $90
	ld h, [hl]                                       ; $662d: $66
	sbc b                                            ; $662e: $98
	ld l, h                                          ; $662f: $6c
	sub d                                            ; $6630: $92
	ld l, d                                          ; $6631: $6a
	sub h                                            ; $6632: $94
	ld a, c                                          ; $6633: $79
	add b                                            ; $6634: $80
	sub e                                            ; $6635: $93
	rst GetHLinHL                                          ; $6636: $cf
	ld e, c                                          ; $6637: $59
	adc [hl]                                         ; $6638: $8e
	ld e, e                                          ; $6639: $5b
	adc h                                            ; $663a: $8c
	rst SubAFromHL                                          ; $663b: $d7
	ld [$08d7], sp                                   ; $663c: $08 $d7 $08
	db $d3                                           ; $663f: $d3
	ld [$73d1], sp                                   ; $6640: $08 $d1 $73
	ldh [$7d], a                                     ; $6643: $e0 $7d
	db $db                                           ; $6645: $db
	ld a, a                                          ; $6646: $7f
	cp $9c                                           ; $6647: $fe $9c
	ld a, e                                          ; $6649: $7b
	ldh [$67], a                                     ; $664a: $e0 $67
	ld [hl], e                                       ; $664c: $73
	cp $6f                                           ; $664d: $fe $6f
	ret nc                                           ; $664f: $d0

	ld a, h                                          ; $6650: $7c
	ld d, h                                          ; $6651: $54
	sbc b                                            ; $6652: $98
	inc e                                            ; $6653: $1c
	nop                                              ; $6654: $00
	dec l                                            ; $6655: $2d
	nop                                              ; $6656: $00
	add hl, sp                                       ; $6657: $39
	ld [$6b39], sp                                   ; $6658: $08 $39 $6b
	ret nz                                           ; $665b: $c0

	sbc d                                            ; $665c: $9a
	push bc                                          ; $665d: $c5
	ld a, [hl-]                                      ; $665e: $3a
	jr nc, jr_03e_6661                               ; $665f: $30 $00

jr_03e_6661:
	ld [hl], b                                       ; $6661: $70
	ld [hl], e                                       ; $6662: $73
	cp $77                                           ; $6663: $fe $77

jr_03e_6665:
	ldh a, [hDisp1_OBP0]                                     ; $6665: $f0 $93
	jr @+$01                                         ; $6667: $18 $ff

	inc d                                            ; $6669: $14
	ei                                               ; $666a: $fb
	sbc d                                            ; $666b: $9a
	ld [hl], b                                       ; $666c: $70
	sbc e                                            ; $666d: $9b
	ld [hl], b                                       ; $666e: $70
	sbc d                                            ; $666f: $9a
	ld [hl], c                                       ; $6670: $71
	sbc d                                            ; $6671: $9a
	ld [hl], b                                       ; $6672: $70
	ld [hl], a                                       ; $6673: $77
	ldh a, [$9e]                                     ; $6674: $f0 $9e
	dec d                                            ; $6676: $15
	ld a, e                                          ; $6677: $7b
	sbc $97                                          ; $6678: $de $97
	ld [hl-], a                                      ; $667a: $32
	push bc                                          ; $667b: $c5
	ld a, [hl+]                                      ; $667c: $2a
	push de                                          ; $667d: $d5

Jump_03e_667e:
	dec bc                                           ; $667e: $0b
	or h                                             ; $667f: $b4
	ld h, e                                          ; $6680: $63
	sub h                                            ; $6681: $94
	ld [hl], a                                       ; $6682: $77
	ldh a, [$9a]                                     ; $6683: $f0 $9a
	sbc $ff                                          ; $6685: $de $ff
	xor l                                            ; $6687: $ad
	sbc $8d                                          ; $6688: $de $8d
	ld a, e                                          ; $668a: $7b
	cp $9a                                           ; $668b: $fe $9a
	adc h                                            ; $668d: $8c
	rst SubAFromDE                                          ; $668e: $df
	adc c                                            ; $668f: $89
	sbc $7e                                          ; $6690: $de $7e
	sbc $ff                                          ; $6692: $de $ff
	sub e                                            ; $6694: $93
	ld b, b                                          ; $6695: $40
	rst $38                                          ; $6696: $ff
	ld hl, $d9de                                     ; $6697: $21 $de $d9
	ld [bc], a                                       ; $669a: $02
	sbc c                                            ; $669b: $99
	ld b, d                                          ; $669c: $42
	ld e, l                                          ; $669d: $5d
	add d                                            ; $669e: $82
	ld e, l                                          ; $669f: $5d
	add d                                            ; $66a0: $82
	ld [hl], a                                       ; $66a1: $77
	ldh [$99], a                                     ; $66a2: $e0 $99
	ld hl, sp-$09                                    ; $66a4: $f8 $f7

jr_03e_66a6:
	ld e, b                                          ; $66a6: $58
	rst FarCall                                          ; $66a7: $f7
	inc b                                            ; $66a8: $04
	di                                               ; $66a9: $f3
	ld l, a                                          ; $66aa: $6f
	cp $06                                           ; $66ab: $fe $06
	ret nz                                           ; $66ad: $c0

	sbc d                                            ; $66ae: $9a
	ld sp, hl                                        ; $66af: $f9
	ld b, [hl]                                       ; $66b0: $46
	ld sp, hl                                        ; $66b1: $f9
	ld b, [hl]                                       ; $66b2: $46
	jp hl                                            ; $66b3: $e9


	ld l, e                                          ; $66b4: $6b

jr_03e_66b5:
	cp $7e                                           ; $66b5: $fe $7e
	ld [hl+], a                                      ; $66b7: $22
	ld a, a                                          ; $66b8: $7f
	ld [$7d93], sp                                   ; $66b9: $08 $93 $7d
	jr nz, jr_03e_673b                               ; $66bc: $20 $7d

	jr nz, jr_03e_66b5                               ; $66be: $20 $f5

	jr nz, jr_03e_6739                               ; $66c0: $20 $77

	jr nz, @-$08                                     ; $66c2: $20 $f6

	jr nz, jr_03e_673a                               ; $66c4: $20 $74

	jr nz, jr_03e_6743                               ; $66c6: $20 $7b

	ld [hl], e                                       ; $66c8: $73
	sub d                                            ; $66c9: $92
	nop                                              ; $66ca: $00
	sub a                                            ; $66cb: $97
	jr c, jr_03e_6665                                ; $66cc: $38 $97

	jr c, jr_03e_66a6                                ; $66ce: $38 $d6

	add hl, sp                                       ; $66d0: $39
	or [hl]                                          ; $66d1: $b6
	ld d, c                                          ; $66d2: $51
	or [hl]                                          ; $66d3: $b6
	ld d, c                                          ; $66d4: $51
	sub h                                            ; $66d5: $94
	ld [hl-], a                                      ; $66d6: $32
	ld [hl], a                                       ; $66d7: $77
	ldh a, [hDisp1_OBP0]                                     ; $66d8: $f0 $93
	inc sp                                           ; $66da: $33
	sbc h                                            ; $66db: $9c
	ld [hl-], a                                      ; $66dc: $32
	sbc l                                            ; $66dd: $9d
	cp d                                             ; $66de: $ba
	dec d                                            ; $66df: $15
	xor e                                            ; $66e0: $ab
	inc d                                            ; $66e1: $14
	cp e                                             ; $66e2: $bb
	inc b                                            ; $66e3: $04
	cp l                                             ; $66e4: $bd
	ld [bc], a                                       ; $66e5: $02
	ld [hl], a                                       ; $66e6: $77
	ldh a, [$99]                                     ; $66e7: $f0 $99
	call nc, $142b                                   ; $66e9: $d4 $2b $14
	db $eb                                           ; $66ec: $eb
	ld d, h                                          ; $66ed: $54
	xor e                                            ; $66ee: $ab
	ld [hl], a                                       ; $66ef: $77
	db $fc                                           ; $66f0: $fc
	ld a, a                                          ; $66f1: $7f
	cp $77                                           ; $66f2: $fe $77
	ldh a, [hDisp1_OBP0]                                     ; $66f4: $f0 $93

jr_03e_66f6:
	sub b                                            ; $66f6: $90
	ld a, b                                          ; $66f7: $78
	or b                                             ; $66f8: $b0
	ld a, b                                          ; $66f9: $78
	or b                                             ; $66fa: $b0
	ld [hl], b                                       ; $66fb: $70
	jr nc, jr_03e_66f6                               ; $66fc: $30 $f8

	ld [hl], b                                       ; $66fe: $70
	cp b                                             ; $66ff: $b8
	pop af                                           ; $6700: $f1

jr_03e_6701:
	jr c, jr_03e_6701                                ; $6701: $38 $fe

	sbc h                                            ; $6703: $9c
	rst $38                                          ; $6704: $ff
	and b                                            ; $6705: $a0
	ld b, c                                          ; $6706: $41
	ld [hl], a                                       ; $6707: $77
	cp $99                                           ; $6708: $fe $99
	and c                                            ; $670a: $a1
	ld b, b                                          ; $670b: $40
	and c                                            ; $670c: $a1
	ld b, b                                          ; $670d: $40
	cp a                                             ; $670e: $bf
	ld b, b                                          ; $670f: $40
	ld [hl], a                                       ; $6710: $77
	ldh a, [$9d]                                     ; $6711: $f0 $9d
	db $10                                           ; $6713: $10
	xor c                                            ; $6714: $a9
	ld a, e                                          ; $6715: $7b
	cp $98                                           ; $6716: $fe $98
	xor e                                            ; $6718: $ab
	ld [bc], a                                       ; $6719: $02
	xor c                                            ; $671a: $a9
	nop                                              ; $671b: $00
	xor d                                            ; $671c: $aa
	ld b, h                                          ; $671d: $44
	and d                                            ; $671e: $a2
	ld [hl], a                                       ; $671f: $77
	ldh a, [$7e]                                     ; $6720: $f0 $7e
	jp z, Jump_03e_6f9d                              ; $6722: $ca $9d $6f

	sub b                                            ; $6725: $90
	ld h, a                                          ; $6726: $67
	cp $77                                           ; $6727: $fe $77
	ret nz                                           ; $6729: $c0

	ld a, [hl]                                       ; $672a: $7e
	call z, $c676                                    ; $672b: $cc $76 $c6
	sbc l                                            ; $672e: $9d
	sub [hl]                                         ; $672f: $96
	ld c, c                                          ; $6730: $49
	ld [hl], a                                       ; $6731: $77
	cp $90                                           ; $6732: $fe $90
	sbc a                                            ; $6734: $9f
	ld b, b                                          ; $6735: $40
	db $10                                           ; $6736: $10
	rst GetHLinHL                                          ; $6737: $cf
	ld h, [hl]                                       ; $6738: $66

jr_03e_6739:
	ret nz                                           ; $6739: $c0

jr_03e_673a:
	ld l, [hl]                                       ; $673a: $6e

jr_03e_673b:
	ret nz                                           ; $673b: $c0

	ld c, d                                          ; $673c: $4a
	ret nz                                           ; $673d: $c0

	ld a, [hl]                                       ; $673e: $7e
	ret nz                                           ; $673f: $c0

jr_03e_6740:
	inc l                                            ; $6740: $2c
	ret nc                                           ; $6741: $d0

	ld c, h                                          ; $6742: $4c

jr_03e_6743:
	ld a, e                                          ; $6743: $7b
	ldh [$7f], a                                     ; $6744: $e0 $7f
	rst SubAFromDE                                          ; $6746: $df
	sub h                                            ; $6747: $94
	ld e, c                                          ; $6748: $59
	ld [$1848], sp                                   ; $6749: $08 $48 $18
	jr c, @+$1a                                      ; $674c: $38 $18

	ldh a, [rAUD3ENA]                                ; $674e: $f0 $1a
	ret nc                                           ; $6750: $d0

	inc a                                            ; $6751: $3c
	ret nc                                           ; $6752: $d0

	ld [hl], e                                       ; $6753: $73
	and b                                            ; $6754: $a0
	ld a, [hl]                                       ; $6755: $7e
	rst SubAFromDE                                          ; $6756: $df
	ld l, d                                          ; $6757: $6a
	add $9c                                          ; $6758: $c6 $9c
	ld [$0870], sp                                   ; $675a: $08 $70 $08
	ld [hl], a                                       ; $675d: $77
	ldh a, [hDisp1_OBP0]                                     ; $675e: $f0 $93
	sub b                                            ; $6760: $90
	ld a, e                                          ; $6761: $7b
	sub c                                            ; $6762: $91
	ld a, d                                          ; $6763: $7a
	db $10                                           ; $6764: $10
	ld a, [$f912]                                    ; $6765: $fa $12 $f9
	db $10                                           ; $6768: $10
	ei                                               ; $6769: $fb
	jr nc, @-$03                                     ; $676a: $30 $fb

	ld [hl], a                                       ; $676c: $77
	ldh a, [$7f]                                     ; $676d: $f0 $7f
	ld h, l                                          ; $676f: $65
	sbc d                                            ; $6770: $9a
	xor a                                            ; $6771: $af
	db $10                                           ; $6772: $10
	dec c                                            ; $6773: $0d
	ld [de], a                                       ; $6774: $12
	db $ed                                           ; $6775: $ed
	ld [hl], e                                       ; $6776: $73
	cp $7c                                           ; $6777: $fe $7c
	pop bc                                           ; $6779: $c1
	ld a, a                                          ; $677a: $7f
	and b                                            ; $677b: $a0
	sub e                                            ; $677c: $93
	reti                                             ; $677d: $d9


	sbc [hl]                                         ; $677e: $9e
	ld e, c                                          ; $677f: $59
	sbc [hl]                                         ; $6780: $9e
	dec sp                                           ; $6781: $3b
	call c, $dc1b                                    ; $6782: $dc $1b $dc
	ld a, e                                          ; $6785: $7b
	sbc h                                            ; $6786: $9c
	ld h, e                                          ; $6787: $63
	sbc h                                            ; $6788: $9c
	halt                                             ; $6789: $76
	ld b, a                                          ; $678a: $47
	sbc l                                            ; $678b: $9d
	db $dd                                           ; $678c: $dd
	ld [bc], a                                       ; $678d: $02
	ld [hl], a                                       ; $678e: $77
	cp $7e                                           ; $678f: $fe $7e
	jp nz, $199b                                     ; $6791: $c2 $9b $19

	add d                                            ; $6794: $82
	dec c                                            ; $6795: $0d
	sub d                                            ; $6796: $92
	ld [hl], a                                       ; $6797: $77
	ldh a, [$7e]                                     ; $6798: $f0 $7e
	adc $9d                                          ; $679a: $ce $9d
	add h                                            ; $679c: $84
	ld [hl], e                                       ; $679d: $73
	ld l, a                                          ; $679e: $6f
	cp $7d                                           ; $679f: $fe $7d
	ld e, d                                          ; $67a1: $5a
	ld [hl], a                                       ; $67a2: $77
	ldh a, [rTMA]                                    ; $67a3: $f0 $06
	ret nz                                           ; $67a5: $c0

	ld a, a                                          ; $67a6: $7f
	db $dd                                           ; $67a7: $dd
	ld a, l                                          ; $67a8: $7d
	ld a, a                                          ; $67a9: $7f
	sub e                                            ; $67aa: $93
	ld h, e                                          ; $67ab: $63
	rst $38                                          ; $67ac: $ff
	ld h, h                                          ; $67ad: $64
	jp $c364                                         ; $67ae: $c3 $64 $c3


	ld a, l                                          ; $67b1: $7d
	jp nz, $c275                                     ; $67b2: $c2 $75 $c2

	ld a, c                                          ; $67b5: $79
	add $6e                                          ; $67b6: $c6 $6e
	jr nc, jr_03e_6740                               ; $67b8: $30 $86

	db $fc                                           ; $67ba: $fc
	inc bc                                           ; $67bb: $03
	ld bc, $0650                                     ; $67bc: $01 $50 $06
	ld d, c                                          ; $67bf: $51
	dec bc                                           ; $67c0: $0b
	ld d, a                                          ; $67c1: $57
	rra                                              ; $67c2: $1f
	ld c, a                                          ; $67c3: $4f
	nop                                              ; $67c4: $00
	rst $38                                          ; $67c5: $ff
	ld sp, hl                                        ; $67c6: $f9
	db $fc                                           ; $67c7: $fc
	inc b                                            ; $67c8: $04
	db $e3                                           ; $67c9: $e3
	scf                                              ; $67ca: $37
	adc a                                            ; $67cb: $8f
	sbc a                                            ; $67cc: $9f
	ld a, a                                          ; $67cd: $7f
	rst $38                                          ; $67ce: $ff
	rst $38                                          ; $67cf: $ff
	cp $ff                                           ; $67d0: $fe $ff
	db $fd                                           ; $67d2: $fd
	ld a, e                                          ; $67d3: $7b
	db $e4                                           ; $67d4: $e4
	rst SubAFromDE                                          ; $67d5: $df
	rst $38                                          ; $67d6: $ff
	sub e                                            ; $67d7: $93
	sbc b                                            ; $67d8: $98
	rst $38                                          ; $67d9: $ff
	ld e, c                                          ; $67da: $59
	sbc b                                            ; $67db: $98
	ld e, e                                          ; $67dc: $5b
	sbc b                                            ; $67dd: $98
	ld e, d                                          ; $67de: $5a
	sub b                                            ; $67df: $90
	ld e, d                                          ; $67e0: $5a
	sub b                                            ; $67e1: $90
	ld [hl-], a                                      ; $67e2: $32
	sub b                                            ; $67e3: $90
	ld l, a                                          ; $67e4: $6f
	ret nc                                           ; $67e5: $d0

	sub l                                            ; $67e6: $95
	ld a, e                                          ; $67e7: $7b
	inc c                                            ; $67e8: $0c
	ld e, c                                          ; $67e9: $59
	inc c                                            ; $67ea: $0c
	ld e, e                                          ; $67eb: $5b
	inc c                                            ; $67ec: $0c
	db $db                                           ; $67ed: $db
	inc c                                            ; $67ee: $0c
	rr h                                             ; $67ef: $cb $1c
	ld l, a                                          ; $67f1: $6f
	ldh a, [$9a]                                     ; $67f2: $f0 $9a
	halt                                             ; $67f4: $76
	adc c                                            ; $67f5: $89
	ld [hl], h                                       ; $67f6: $74
	adc c                                            ; $67f7: $89
	halt                                             ; $67f8: $76
	ld [hl], e                                       ; $67f9: $73
	cp $6f                                           ; $67fa: $fe $6f
	ldh a, [$99]                                     ; $67fc: $f0 $99
	sub $29                                          ; $67fe: $d6 $29
	sub $29                                          ; $6800: $d6 $29
	add $39                                          ; $6802: $c6 $39
	ld [hl], a                                       ; $6804: $77
	cp $6f                                           ; $6805: $fe $6f
	ldh a, [$9b]                                     ; $6807: $f0 $9b
	ld c, c                                          ; $6809: $49
	or [hl]                                          ; $680a: $b6
	db $db                                           ; $680b: $db
	inc h                                            ; $680c: $24
	ld l, a                                          ; $680d: $6f
	cp $77                                           ; $680e: $fe $77
	ldh a, [$97]                                     ; $6810: $f0 $97
	inc e                                            ; $6812: $1c
	rst $38                                          ; $6813: $ff
	ld a, d                                          ; $6814: $7a
	sbc l                                            ; $6815: $9d
	ld a, e                                          ; $6816: $7b
	sbc h                                            ; $6817: $9c
	ld a, a                                          ; $6818: $7f
	sbc b                                            ; $6819: $98
	ld [hl], a                                       ; $681a: $77
	cp $98                                           ; $681b: $fe $98
	ld d, b                                          ; $681d: $50
	adc a                                            ; $681e: $8f
	rst SubAFromDE                                          ; $681f: $df
	adc a                                            ; $6820: $8f
	db $db                                           ; $6821: $db
	adc h                                            ; $6822: $8c
	ld e, e                                          ; $6823: $5b
	ld h, e                                          ; $6824: $63
	cp $69                                           ; $6825: $fe $69
	ld h, b                                          ; $6827: $60
	sub [hl]                                         ; $6828: $96
	ccf                                              ; $6829: $3f
	ld [bc], a                                       ; $682a: $02
	dec e                                            ; $682b: $1d
	ld [bc], a                                       ; $682c: $02
	dec a                                            ; $682d: $3d
	ld [$08bd], sp                                   ; $682e: $08 $bd $08
	cp l                                             ; $6831: $bd
	ld l, l                                          ; $6832: $6d
	and b                                            ; $6833: $a0
	sbc d                                            ; $6834: $9a
	reti                                             ; $6835: $d9


	ld e, $d9                                        ; $6836: $1e $d9
	ld a, $99                                        ; $6838: $3e $99
	ld a, e                                          ; $683a: $7b
	cp $9d                                           ; $683b: $fe $9d
	ld e, e                                          ; $683d: $5b
	sbc h                                            ; $683e: $9c
	ld [hl], a                                       ; $683f: $77
	ldh a, [$7c]                                     ; $6840: $f0 $7c
	ldh [c], a                                       ; $6842: $e2
	sbc c                                            ; $6843: $99
	ld [hl], e                                       ; $6844: $73
	cp h                                             ; $6845: $bc
	ld h, d                                          ; $6846: $62
	cp l                                             ; $6847: $bd
	and d                                            ; $6848: $a2
	dec a                                            ; $6849: $3d
	ld [hl], a                                       ; $684a: $77
	cp $77                                           ; $684b: $fe $77
	ldh a, [hDisp1_OBP0]                                     ; $684d: $f0 $93
	ld [$56ff], sp                                   ; $684f: $08 $ff $56
	xor c                                            ; $6852: $a9
	ld d, [hl]                                       ; $6853: $56
	xor c                                            ; $6854: $a9
	call nc, $d52b                                   ; $6855: $d4 $2b $d5
	ld a, [hl+]                                      ; $6858: $2a
	sub l                                            ; $6859: $95
	ld l, d                                          ; $685a: $6a
	ld [hl], a                                       ; $685b: $77
	ldh a, [hDisp1_OBP0]                                     ; $685c: $f0 $93
	ld bc, $94ff                                     ; $685e: $01 $ff $94
	ld l, e                                          ; $6861: $6b
	jr nc, @-$33                                     ; $6862: $30 $cb

	db $10                                           ; $6864: $10
	db $eb                                           ; $6865: $eb
	nop                                              ; $6866: $00
	ei                                               ; $6867: $fb
	xor c                                            ; $6868: $a9
	ld d, d                                          ; $6869: $52
	ld l, a                                          ; $686a: $6f
	or b                                             ; $686b: $b0
	sub l                                            ; $686c: $95
	add l                                            ; $686d: $85
	ld a, d                                          ; $686e: $7a
	ld b, a                                          ; $686f: $47
	jr jr_03e_68d7                                   ; $6870: $18 $65

	ld a, [de]                                       ; $6872: $1a
	ld h, l                                          ; $6873: $65
	ld a, [de]                                       ; $6874: $1a
	rst SubAFromBC                                          ; $6875: $e7
	jr jr_03e_68ef                                   ; $6876: $18 $77

	ldh a, [$9d]                                     ; $6878: $f0 $9d
	xor l                                            ; $687a: $ad

jr_03e_687b:
	ld d, d                                          ; $687b: $52
	ld e, a                                          ; $687c: $5f
	cp $77                                           ; $687d: $fe $77
	ldh a, [$9d]                                     ; $687f: $f0 $9d
	ld l, l                                          ; $6881: $6d
	sub e                                            ; $6882: $93
	ld [hl], a                                       ; $6883: $77
	cp $9e                                           ; $6884: $fe $9e
	ld l, h                                          ; $6886: $6c
	ld a, e                                          ; $6887: $7b
	cp $9d                                           ; $6888: $fe $9d
	ld l, l                                          ; $688a: $6d
	sub d                                            ; $688b: $92
	di                                               ; $688c: $f3
	sbc l                                            ; $688d: $9d
	dec b                                            ; $688e: $05
	inc bc                                           ; $688f: $03
	ld l, [hl]                                       ; $6890: $6e
	cp l                                             ; $6891: $bd
	add c                                            ; $6892: $81
	inc bc                                           ; $6893: $03
	rlca                                             ; $6894: $07
	inc c                                            ; $6895: $0c
	rra                                              ; $6896: $1f
	ld [hl], c                                       ; $6897: $71
	ccf                                              ; $6898: $3f
	rst JumpTable                                          ; $6899: $c7
	rst $38                                          ; $689a: $ff
	rra                                              ; $689b: $1f
	rst $38                                          ; $689c: $ff
	ld [$781f], sp                                   ; $689d: $08 $1f $78
	ccf                                              ; $68a0: $3f
	jp hl                                            ; $68a1: $e9


	or $81                                           ; $68a2: $f6 $81
	or $30                                           ; $68a4: $f6 $30
	rst FarCall                                          ; $68a6: $f7
	or l                                             ; $68a7: $b5
	ldh a, [c]                                       ; $68a8: $f2
	or b                                             ; $68a9: $b0
	rst $38                                          ; $68aa: $ff
	ccf                                              ; $68ab: $3f
	rst $38                                          ; $68ac: $ff
	rra                                              ; $68ad: $1f
	ld c, a                                          ; $68ae: $4f
	ccf                                              ; $68af: $3f
	ld e, a                                          ; $68b0: $5f
	ld l, e                                          ; $68b1: $6b
	cp $9d                                           ; $68b2: $fe $9d
	ld a, a                                          ; $68b4: $7f
	ccf                                              ; $68b5: $3f
	ld a, e                                          ; $68b6: $7b
	ldh a, [$df]                                     ; $68b7: $f0 $df
	rst $38                                          ; $68b9: $ff
	add [hl]                                         ; $68ba: $86
	rst JumpTable                                          ; $68bb: $c7
	rst SubAFromBC                                          ; $68bc: $e7
	add a                                            ; $68bd: $87
	bit 0, a                                         ; $68be: $cb $47
	ei                                               ; $68c0: $fb
	db $d3                                           ; $68c1: $d3
	rst AddAOntoHL                                          ; $68c2: $ef
	rst SubAFromHL                                          ; $68c3: $d7
	rst $38                                          ; $68c4: $ff
	rst $38                                          ; $68c5: $ff
	rst FarCall                                          ; $68c6: $f7
	rst $38                                          ; $68c7: $ff
	rst $38                                          ; $68c8: $ff
	or b                                             ; $68c9: $b0
	db $10                                           ; $68ca: $10
	or b                                             ; $68cb: $b0
	db $10                                           ; $68cc: $10
	and h                                            ; $68cd: $a4
	db $10                                           ; $68ce: $10
	dec d                                            ; $68cf: $15
	jr nz, jr_03e_68df                               ; $68d0: $20 $0d

	jr nz, jr_03e_68fd                               ; $68d2: $20 $29

	db $fd                                           ; $68d4: $fd
	sub d                                            ; $68d5: $92
	rst $38                                          ; $68d6: $ff

jr_03e_68d7:
	adc e                                            ; $68d7: $8b
	inc e                                            ; $68d8: $1c
	cp e                                             ; $68d9: $bb
	inc e                                            ; $68da: $1c
	cp c                                             ; $68db: $b9
	inc e                                            ; $68dc: $1c
	sbc l                                            ; $68dd: $9d
	inc a                                            ; $68de: $3c

jr_03e_68df:
	ccf                                              ; $68df: $3f
	inc a                                            ; $68e0: $3c
	inc hl                                           ; $68e1: $23
	inc e                                            ; $68e2: $1c
	ld [hl], a                                       ; $68e3: $77
	ldh a, [$7e]                                     ; $68e4: $f0 $7e
	adc $9c                                          ; $68e6: $ce $9c
	ld h, h                                          ; $68e8: $64
	adc c                                            ; $68e9: $89
	inc h                                            ; $68ea: $24
	ld a, e                                          ; $68eb: $7b
	cp $7e                                           ; $68ec: $fe $7e
	ret nz                                           ; $68ee: $c0

jr_03e_68ef:
	sbc l                                            ; $68ef: $9d
	jr nz, jr_03e_687b                               ; $68f0: $20 $89

	ld [hl], a                                       ; $68f2: $77
	ldh a, [$7e]                                     ; $68f3: $f0 $7e
	adc $7e                                          ; $68f5: $ce $7e
	add $9b                                          ; $68f7: $c6 $9b
	inc [hl]                                         ; $68f9: $34
	add hl, bc                                       ; $68fa: $09
	and $19                                          ; $68fb: $e6 $19

jr_03e_68fd:
	ld [hl], d                                       ; $68fd: $72
	call nz, $f07b                                   ; $68fe: $c4 $7b $f0
	ld [hl], d                                       ; $6901: $72
	call z, $249d                                    ; $6902: $cc $9d $24
	ret c                                            ; $6905: $d8

	ld l, [hl]                                       ; $6906: $6e
	call nz, $f07b                                   ; $6907: $c4 $7b $f0
	ld a, [hl]                                       ; $690a: $7e
	adc $9c                                          ; $690b: $ce $9c
	ld a, l                                          ; $690d: $7d
	sub d                                            ; $690e: $92
	ld a, a                                          ; $690f: $7f
	ld [hl], e                                       ; $6910: $73
	cp $9d                                           ; $6911: $fe $9d
	rst AddAOntoHL                                          ; $6913: $ef
	ld [de], a                                       ; $6914: $12
	ld [hl], a                                       ; $6915: $77
	ldh a, [$9d]                                     ; $6916: $f0 $9d
	ld e, d                                          ; $6918: $5a

jr_03e_6919:
	adc l                                            ; $6919: $8d
	ld e, [hl]                                       ; $691a: $5e
	call nz, $df96                                   ; $691b: $c4 $96 $df
	nop                                              ; $691e: $00
	ld d, b                                          ; $691f: $50
	adc a                                            ; $6920: $8f
	ld [$0cbe], sp                                   ; $6921: $08 $be $0c
	cp [hl]                                          ; $6924: $be
	dec c                                            ; $6925: $0d
	ld a, e                                          ; $6926: $7b
	db $fc                                           ; $6927: $fc
	sbc d                                            ; $6928: $9a
	ld c, $be                                        ; $6929: $0e $be
	ld [hl], c                                       ; $692b: $71
	ld c, $80                                        ; $692c: $0e $80
	ld a, e                                          ; $692e: $7b
	ldh [$7e], a                                     ; $692f: $e0 $7e
	adc $96                                          ; $6931: $ce $96
	ld e, e                                          ; $6933: $5b
	cp h                                             ; $6934: $bc
	srl h                                            ; $6935: $cb $3c
	db $eb                                           ; $6937: $eb
	inc e                                            ; $6938: $1c
	ld b, e                                          ; $6939: $43
	cp h                                             ; $693a: $bc
	adc a                                            ; $693b: $8f
	ld a, b                                          ; $693c: $78
	ld d, e                                          ; $693d: $53
	ld a, a                                          ; $693e: $7f
	ldh a, [$7e]                                     ; $693f: $f0 $7e
	ret z                                            ; $6941: $c8

	sub [hl]                                         ; $6942: $96
	inc bc                                           ; $6943: $03
	db $fc                                           ; $6944: $fc
	add e                                            ; $6945: $83
	inc a                                            ; $6946: $3c
	add a                                            ; $6947: $87
	jr c, jr_03e_6951                                ; $6948: $38 $07

	cp b                                             ; $694a: $b8
	cp a                                             ; $694b: $bf
	ld [hl], e                                       ; $694c: $73
	ld [hl], b                                       ; $694d: $70
	ld a, [hl]                                       ; $694e: $7e
	adc $95                                          ; $694f: $ce $95

jr_03e_6951:
	sub c                                            ; $6951: $91
	ld l, [hl]                                       ; $6952: $6e
	rst SubAFromHL                                          ; $6953: $d7
	jr z, jr_03e_696d                                ; $6954: $28 $17

	ld l, b                                          ; $6956: $68
	dec c                                            ; $6957: $0d
	ld [hl], d                                       ; $6958: $72
	rst JumpTable                                          ; $6959: $c7
	jr c, jr_03e_69d7                                ; $695a: $38 $7b

	inc de                                           ; $695c: $13
	sub d                                            ; $695d: $92
	rst $38                                          ; $695e: $ff
	or c                                             ; $695f: $b1
	ld c, d                                          ; $6960: $4a
	ld de, $39ca                                     ; $6961: $11 $ca $39
	jp nz, $c219                                     ; $6964: $c2 $19 $c2

	dec h                                            ; $6967: $25
	jp c, $c03f                                      ; $6968: $da $3f $c0

	ld a, c                                          ; $696b: $79
	or d                                             ; $696c: $b2

jr_03e_696d:
	sub d                                            ; $696d: $92
	rst $38                                          ; $696e: $ff
	rst SubAFromBC                                          ; $696f: $e7
	jr jr_03e_6919                                   ; $6970: $18 $a7

	ld e, b                                          ; $6972: $58
	xor [hl]                                         ; $6973: $ae
	ld d, b                                          ; $6974: $50
	xor d                                            ; $6975: $aa
	ld d, l                                          ; $6976: $55
	and e                                            ; $6977: $a3
	ld e, h                                          ; $6978: $5c
	inc bc                                           ; $6979: $03
	db $fc                                           ; $697a: $fc
	ld [hl], a                                       ; $697b: $77
	ldh a, [rHDMA2]                                  ; $697c: $f0 $52
	call nz, $f07b                                   ; $697e: $c4 $7b $f0
	ld a, [hl]                                       ; $6981: $7e
	adc $5f                                          ; $6982: $ce $5f
	cp $77                                           ; $6984: $fe $77
	ldh a, [$34]                                     ; $6986: $f0 $34
	nop                                              ; $6988: $00
	sub $33                                          ; $6989: $d6 $33
	ret c                                            ; $698b: $d8

	ld [hl], a                                       ; $698c: $77
	sbc h                                            ; $698d: $9c
	inc sp                                           ; $698e: $33
	ld h, [hl]                                       ; $698f: $66
	ld h, [hl]                                       ; $6990: $66
	call c, $df77                                    ; $6991: $dc $77 $df
	ld d, l                                          ; $6994: $55
	ld a, a                                          ; $6995: $7f
	or $de                                           ; $6996: $f6 $de
	ld d, l                                          ; $6998: $55
	sbc l                                            ; $6999: $9d
	ld d, a                                          ; $699a: $57
	ld d, l                                          ; $699b: $55
	ld [hl], e                                       ; $699c: $73
	db $ec                                           ; $699d: $ec
	ld h, e                                          ; $699e: $63
	or $de                                           ; $699f: $f6 $de
	ld [hl], a                                       ; $69a1: $77
	sbc l                                            ; $69a2: $9d
	ld h, [hl]                                       ; $69a3: $66
	ld h, a                                          ; $69a4: $67
	ld [hl], e                                       ; $69a5: $73
	ret c                                            ; $69a6: $d8

	ld d, a                                          ; $69a7: $57
	or $9d                                           ; $69a8: $f6 $9d
	ld [hl], l                                       ; $69aa: $75
	ld d, l                                          ; $69ab: $55
	ld a, e                                          ; $69ac: $7b
	ret nc                                           ; $69ad: $d0

	ld d, e                                          ; $69ae: $53
	or $9d                                           ; $69af: $f6 $9d
	ld d, h                                          ; $69b1: $54
	ld b, l                                          ; $69b2: $45
	ld a, e                                          ; $69b3: $7b
	adc $77                                          ; $69b4: $ce $77
	db $dd                                           ; $69b6: $dd
	sbc [hl]                                         ; $69b7: $9e
	ld d, l                                          ; $69b8: $55
	ld h, e                                          ; $69b9: $63
	or $e2                                           ; $69ba: $f6 $e2
	adc d                                            ; $69bc: $8a
	sbc l                                            ; $69bd: $9d
	add c                                            ; $69be: $81
	ld [bc], a                                       ; $69bf: $02
	ld a, e                                          ; $69c0: $7b
	cp $9d                                           ; $69c1: $fe $9d
	nop                                              ; $69c3: $00
	add c                                            ; $69c4: $81
	ld hl, sp-$69                                    ; $69c5: $f8 $97
	ld b, b                                          ; $69c7: $40
	and b                                            ; $69c8: $a0
	ld b, b                                          ; $69c9: $40
	jr nz, @+$42                                     ; $69ca: $20 $40

	jr nz, jr_03e_69ce                               ; $69cc: $20 $00

jr_03e_69ce:
	ld hl, $9df9                                     ; $69ce: $21 $f9 $9d
	ld [$7704], sp                                   ; $69d1: $08 $04 $77
	cp $9d                                           ; $69d4: $fe $9d
	nop                                              ; $69d6: $00

jr_03e_69d7:
	and h                                            ; $69d7: $a4
	ld h, a                                          ; $69d8: $67
	pop hl                                           ; $69d9: $e1
	rst SubAFromDE                                          ; $69da: $df
	ld [$0a85], sp                                   ; $69db: $08 $85 $0a
	dec c                                            ; $69de: $0d
	rrca                                             ; $69df: $0f
	dec de                                           ; $69e0: $1b
	add hl, bc                                       ; $69e1: $09
	ld a, [de]                                       ; $69e2: $1a
	rra                                              ; $69e3: $1f
	ccf                                              ; $69e4: $3f
	dec e                                            ; $69e5: $1d
	ld a, [hl-]                                      ; $69e6: $3a
	jr @+$2e                                         ; $69e7: $18 $2c

	inc e                                            ; $69e9: $1c
	inc l                                            ; $69ea: $2c
	ld [bc], a                                       ; $69eb: $02
	dec d                                            ; $69ec: $15
	xor e                                            ; $69ed: $ab
	ld d, a                                          ; $69ee: $57
	rst $38                                          ; $69ef: $ff
	cp $55                                           ; $69f0: $fe $55
	xor d                                            ; $69f2: $aa
	db $fd                                           ; $69f3: $fd
	ld [$a854], a                                    ; $69f4: $ea $54 $a8
	db $fd                                           ; $69f7: $fd
	sub [hl]                                         ; $69f8: $96
	cp a                                             ; $69f9: $bf
	rst $38                                          ; $69fa: $ff
	push af                                          ; $69fb: $f5
	ld [$a850], a                                    ; $69fc: $ea $50 $a8
	ld d, b                                          ; $69ff: $50
	nop                                              ; $6a00: $00
	ld b, b                                          ; $6a01: $40
	ld a, [$f495]                                    ; $6a02: $fa $95 $f4
	ld a, [$af5f]                                    ; $6a05: $fa $5f $af
	ld e, l                                          ; $6a08: $5d
	ld a, [hl+]                                      ; $6a09: $2a
	dec d                                            ; $6a0a: $15
	jr z, jr_03e_6a18                                ; $6a0b: $28 $0b

	dec b                                            ; $6a0d: $05
	ld a, [$808e]                                    ; $6a0e: $fa $8e $80
	ld b, b                                          ; $6a11: $40
	and b                                            ; $6a12: $a0
	ret nc                                           ; $6a13: $d0

	ld [$fa55], a                                    ; $6a14: $ea $55 $fa
	rst $38                                          ; $6a17: $ff

jr_03e_6a18:
	ld a, a                                          ; $6a18: $7f
	cp a                                             ; $6a19: $bf
	ld e, a                                          ; $6a1a: $5f
	cpl                                              ; $6a1b: $2f
	dec d                                            ; $6a1c: $15
	ld a, [hl+]                                      ; $6a1d: $2a
	dec b                                            ; $6a1e: $05
	nop                                              ; $6a1f: $00
	ld bc, $ea6f                                     ; $6a20: $01 $6f $ea
	jp c, $99fc                                      ; $6a23: $da $fc $99

	ld a, h                                          ; $6a26: $7c
	rst $38                                          ; $6a27: $ff
	nop                                              ; $6a28: $00
	ccf                                              ; $6a29: $3f
	ld a, [hl]                                       ; $6a2a: $7e
	inc bc                                           ; $6a2b: $03
	db $fd                                           ; $6a2c: $fd
	ld a, a                                          ; $6a2d: $7f
	rst FarCall                                          ; $6a2e: $f7
	sbc l                                            ; $6a2f: $9d
	nop                                              ; $6a30: $00
	ld a, h                                          ; $6a31: $7c
	cp $92                                           ; $6a32: $fe $92
	ld sp, hl                                        ; $6a34: $f9
	inc e                                            ; $6a35: $1c
	add b                                            ; $6a36: $80
	add e                                            ; $6a37: $83
	ld a, h                                          ; $6a38: $7c
	ld c, $0f                                        ; $6a39: $0e $0f
	rrca                                             ; $6a3b: $0f
	nop                                              ; $6a3c: $00
	ldh [rP1], a                                     ; $6a3d: $e0 $00
	nop                                              ; $6a3f: $00
	add e                                            ; $6a40: $83
	ld a, e                                          ; $6a41: $7b
	call nc, Call_03e_40df                           ; $6a42: $d4 $df $40
	sbc d                                            ; $6a45: $9a
	rrca                                             ; $6a46: $0f
	cp b                                             ; $6a47: $b8

jr_03e_6a48:
	ld e, h                                          ; $6a48: $5c
	ld d, h                                          ; $6a49: $54
	cp $7b                                           ; $6a4a: $fe $7b
	ldh [c], a                                       ; $6a4c: $e2
	ld a, e                                          ; $6a4d: $7b
	ld d, l                                          ; $6a4e: $55
	sbc [hl]                                         ; $6a4f: $9e
	and b                                            ; $6a50: $a0
	ld a, e                                          ; $6a51: $7b
	rst JumpTable                                          ; $6a52: $c7
	sbc l                                            ; $6a53: $9d
	ld [bc], a                                       ; $6a54: $02
	jp hl                                            ; $6a55: $e9


	ld a, [$069e]                                    ; $6a56: $fa $9e $06
	ld l, a                                          ; $6a59: $6f
	ld d, b                                          ; $6a5a: $50
	sbc e                                            ; $6a5b: $9b
	ld [$08f8], sp                                   ; $6a5c: $08 $f8 $08
	ld [$dcfe], sp                                   ; $6a5f: $08 $fe $dc
	rlca                                             ; $6a62: $07

jr_03e_6a63:
	sbc $0f                                          ; $6a63: $de $0f
	ld sp, hl                                        ; $6a65: $f9
	reti                                             ; $6a66: $d9


	rst $38                                          ; $6a67: $ff
	sbc [hl]                                         ; $6a68: $9e
	jr c, jr_03e_6a48                                ; $6a69: $38 $dd

	ld a, h                                          ; $6a6b: $7c
	sbc h                                            ; $6a6c: $9c
	ld a, b                                          ; $6a6d: $78
	inc a                                            ; $6a6e: $3c
	inc e                                            ; $6a6f: $1c
	db $db                                           ; $6a70: $db
	ld l, h                                          ; $6a71: $6c
	rst SubAFromDE                                          ; $6a72: $df
	ld l, b                                          ; $6a73: $68
	sbc l                                            ; $6a74: $9d
	rst GetHLinHL                                          ; $6a75: $cf
	rst SubAFromDE                                          ; $6a76: $df
	ld [hl], e                                       ; $6a77: $73
	cp $9e                                           ; $6a78: $fe $9e
	call c, $cd77                                    ; $6a7a: $dc $77 $cd
	sbc [hl]                                         ; $6a7d: $9e
	ld [bc], a                                       ; $6a7e: $02
	cp $9d                                           ; $6a7f: $fe $9d
	rst AddAOntoHL                                          ; $6a81: $ef
	rst FarCall                                          ; $6a82: $f7
	db $dd                                           ; $6a83: $dd
	rst $38                                          ; $6a84: $ff
	ld l, a                                          ; $6a85: $6f
	call $917f                                       ; $6a86: $cd $7f $91
	sbc e                                            ; $6a89: $9b
	rlca                                             ; $6a8a: $07
	inc bc                                           ; $6a8b: $03
	db $fd                                           ; $6a8c: $fd
	cp $de                                           ; $6a8d: $fe $de
	rst $38                                          ; $6a8f: $ff
	sbc h                                            ; $6a90: $9c
	rst GetHLinHL                                          ; $6a91: $cf
	rrca                                             ; $6a92: $0f
	ld a, [de]                                       ; $6a93: $1a
	ld l, a                                          ; $6a94: $6f
	ld l, [hl]                                       ; $6a95: $6e
	sbc e                                            ; $6a96: $9b
	ldh a, [$fc]                                     ; $6a97: $f0 $fc
	ld [hl], l                                       ; $6a99: $75
	xor [hl]                                         ; $6a9a: $ae
	sbc $ff                                          ; $6a9b: $de $ff

Call_03e_6a9d:
	sbc h                                            ; $6a9d: $9c
	xor d                                            ; $6a9e: $aa
	push de                                          ; $6a9f: $d5
	ld a, a                                          ; $6aa0: $7f

jr_03e_6aa1:
	ld l, a                                          ; $6aa1: $6f
	ldh a, [rIE]                                     ; $6aa2: $f0 $ff
	ld l, [hl]                                       ; $6aa4: $6e
	jp nz, $819d                                     ; $6aa5: $c2 $9d $81

	inc hl                                           ; $6aa8: $23
	ld l, a                                          ; $6aa9: $6f
	ld a, [hl-]                                      ; $6aaa: $3a
	sub l                                            ; $6aab: $95
	ld h, b                                          ; $6aac: $60
	jr jr_03e_6ab2                                   ; $6aad: $18 $03

	ld h, $0f                                        ; $6aaf: $26 $0f
	dec de                                           ; $6ab1: $1b

jr_03e_6ab2:
	dec a                                            ; $6ab2: $3d
	ld l, d                                          ; $6ab3: $6a
	push de                                          ; $6ab4: $d5
	xor d                                            ; $6ab5: $aa
	ld a, [$0195]                                    ; $6ab6: $fa $95 $01
	ret c                                            ; $6ab9: $d8

	ld b, h                                          ; $6aba: $44
	adc b                                            ; $6abb: $88
	ld b, h                                          ; $6abc: $44
	cp b                                             ; $6abd: $b8
	inc d                                            ; $6abe: $14
	db $10                                           ; $6abf: $10
	inc e                                            ; $6ac0: $1c
	jr nz, jr_03e_6aa1                               ; $6ac1: $20 $de

	jr nc, jr_03e_6a63                               ; $6ac3: $30 $9e

	ld [hl], b                                       ; $6ac5: $70
	sbc $f8                                          ; $6ac6: $de $f8
	sub a                                            ; $6ac8: $97
	db $10                                           ; $6ac9: $10
	or b                                             ; $6aca: $b0
	db $10                                           ; $6acb: $10
	cp b                                             ; $6acc: $b8
	inc e                                            ; $6acd: $1c
	or c                                             ; $6ace: $b1
	rla                                              ; $6acf: $17
	or a                                             ; $6ad0: $b7
	reti                                             ; $6ad1: $d9


	ld [$9afe], sp                                   ; $6ad2: $08 $fe $9a
	jr jr_03e_6b56                                   ; $6ad5: $18 $7f

	sub l                                            ; $6ad7: $95
	pop hl                                           ; $6ad8: $e1
	sub [hl]                                         ; $6ad9: $96
	db $fd                                           ; $6ada: $fd
	rst SubAFromDE                                          ; $6adb: $df
	ccf                                              ; $6adc: $3f
	sbc l                                            ; $6add: $9d
	ld a, $3f                                        ; $6ade: $3e $3f
	db $fd                                           ; $6ae0: $fd
	sbc e                                            ; $6ae1: $9b
	jr nc, @+$01                                     ; $6ae2: $30 $ff

	sbc a                                            ; $6ae4: $9f
	db $10                                           ; $6ae5: $10
	db $fd                                           ; $6ae6: $fd
	sbc h                                            ; $6ae7: $9c
	ret nz                                           ; $6ae8: $c0

	rst $38                                          ; $6ae9: $ff
	ld a, a                                          ; $6aea: $7f
	ld l, a                                          ; $6aeb: $6f
	halt                                             ; $6aec: $76
	ld a, a                                          ; $6aed: $7f
	rst AddAOntoHL                                          ; $6aee: $ef
	sbc [hl]                                         ; $6aef: $9e
	rlca                                             ; $6af0: $07
	db $fc                                           ; $6af1: $fc
	ld a, a                                          ; $6af2: $7f
	rst AddAOntoHL                                          ; $6af3: $ef
	ld a, a                                          ; $6af4: $7f
	xor $98                                          ; $6af5: $ee $98
	xor [hl]                                         ; $6af7: $ae
	ld d, a                                          ; $6af8: $57
	dec hl                                           ; $6af9: $2b
	rla                                              ; $6afa: $17
	dec bc                                           ; $6afb: $0b
	ld d, a                                          ; $6afc: $57
	bit 5, [hl]                                      ; $6afd: $cb $6e
	ret z                                            ; $6aff: $c8

	sbc e                                            ; $6b00: $9b
	add b                                            ; $6b01: $80
	ldh [rLCDC], a                                   ; $6b02: $e0 $40
	add b                                            ; $6b04: $80
	ld a, e                                          ; $6b05: $7b
	cp $9a                                           ; $6b06: $fe $9a
	and b                                            ; $6b08: $a0
	ret nz                                           ; $6b09: $c0

	and b                                            ; $6b0a: $a0
	cp h                                             ; $6b0b: $bc
	ld a, h                                          ; $6b0c: $7c
	ld a, e                                          ; $6b0d: $7b
	cp $9c                                           ; $6b0e: $fe $9c
	ld e, h                                          ; $6b10: $5c
	inc a                                            ; $6b11: $3c
	ld e, h                                          ; $6b12: $5c
	ld a, [$f09e]                                    ; $6b13: $fa $9e $f0
	ld sp, hl                                        ; $6b16: $f9
	sub a                                            ; $6b17: $97
	rrca                                             ; $6b18: $0f
	rlca                                             ; $6b19: $07
	rlca                                             ; $6b1a: $07
	inc bc                                           ; $6b1b: $03
	rlca                                             ; $6b1c: $07
	rlca                                             ; $6b1d: $07
	ld a, a                                          ; $6b1e: $7f
	pop bc                                           ; $6b1f: $c1
	ld sp, hl                                        ; $6b20: $f9
	sub l                                            ; $6b21: $95
	or $c0                                           ; $6b22: $f6 $c0
	cp [hl]                                          ; $6b24: $be
	cp $f8                                           ; $6b25: $fe $f8
	rst $38                                          ; $6b27: $ff
	rst $38                                          ; $6b28: $ff
	ld sp, hl                                        ; $6b29: $f9
	ld [$663c], sp                                   ; $6b2a: $08 $3c $66
	ld e, [hl]                                       ; $6b2d: $5e
	ld [hl], e                                       ; $6b2e: $73
	and a                                            ; $6b2f: $a7
	sbc [hl]                                         ; $6b30: $9e
	db $fc                                           ; $6b31: $fc
	ld hl, sp-$73                                    ; $6b32: $f8 $8d
	ld a, [bc]                                       ; $6b34: $0a
	ld bc, $0902                                     ; $6b35: $01 $02 $09
	ld [bc], a                                       ; $6b38: $02
	ld bc, $0fea                                     ; $6b39: $01 $ea $0f
	dec b                                            ; $6b3c: $05
	ld c, $0d                                        ; $6b3d: $0e $0d
	ld b, $0d                                        ; $6b3f: $06 $0d
	ld c, $05                                        ; $6b41: $0e $05
	nop                                              ; $6b43: $00
	xor d                                            ; $6b44: $aa
	ld d, l                                          ; $6b45: $55
	ld [hl], e                                       ; $6b46: $73
	cp $9e                                           ; $6b47: $fe $9e
	rst $38                                          ; $6b49: $ff
	ld l, a                                          ; $6b4a: $6f
	ld sp, hl                                        ; $6b4b: $f9
	sbc h                                            ; $6b4c: $9c
	ld d, l                                          ; $6b4d: $55
	inc a                                            ; $6b4e: $3c
	inc e                                            ; $6b4f: $1c
	sbc $3c                                          ; $6b50: $de $3c
	sbc e                                            ; $6b52: $9b
	inc e                                            ; $6b53: $1c
	ld a, h                                          ; $6b54: $7c

Call_03e_6b55:
	ld a, h                                          ; $6b55: $7c

jr_03e_6b56:
	ld c, b                                          ; $6b56: $48
	call c, $df68                                    ; $6b57: $dc $68 $df
	ld [$c09b], sp                                   ; $6b5a: $08 $9b $c0
	ret nc                                           ; $6b5d: $d0

	ldh [$c0], a                                     ; $6b5e: $e0 $c0
	db $dd                                           ; $6b60: $dd
	add b                                            ; $6b61: $80
	ld [hl], a                                       ; $6b62: $77
	ld e, d                                          ; $6b63: $5a
	sbc [hl]                                         ; $6b64: $9e
	ld h, b                                          ; $6b65: $60
	sbc $70                                          ; $6b66: $de $70
	sub a                                            ; $6b68: $97
	dec b                                            ; $6b69: $05
	ld [bc], a                                       ; $6b6a: $02
	ld bc, $0102                                     ; $6b6b: $01 $02 $01
	nop                                              ; $6b6e: $00
	ld bc, $f9c0                                     ; $6b6f: $01 $c0 $f9
	add h                                            ; $6b72: $84
	add h                                            ; $6b73: $84
	jp nz, $d3a0                                     ; $6b74: $c2 $a0 $d3

	and e                                            ; $6b77: $a3
	sub e                                            ; $6b78: $93
	ld l, e                                          ; $6b79: $6b
	or l                                             ; $6b7a: $b5
	ld a, a                                          ; $6b7b: $7f
	ccf                                              ; $6b7c: $3f
	ld e, a                                          ; $6b7d: $5f
	cpl                                              ; $6b7e: $2f
	ld e, a                                          ; $6b7f: $5f
	cpl                                              ; $6b80: $2f
	rla                                              ; $6b81: $17
	ld a, e                                          ; $6b82: $7b
	db $fd                                           ; $6b83: $fd
	ld a, [hl+]                                      ; $6b84: $2a
	ld d, l                                          ; $6b85: $55
	xor d                                            ; $6b86: $aa
	cp l                                             ; $6b87: $bd
	ld l, d                                          ; $6b88: $6a
	ld e, a                                          ; $6b89: $5f
	ld l, d                                          ; $6b8a: $6a
	nop                                              ; $6b8b: $00
	add b                                            ; $6b8c: $80
	add b                                            ; $6b8d: $80
	sbc $c0                                          ; $6b8e: $de $c0
	ld a, a                                          ; $6b90: $7f
	call nz, Call_03e_4995                           ; $6b91: $c4 $95 $49
	and b                                            ; $6b94: $a0
	dec e                                            ; $6b95: $1d
	cp d                                             ; $6b96: $ba
	dec d                                            ; $6b97: $15
	ld a, [hl-]                                      ; $6b98: $3a
	dec a                                            ; $6b99: $3d
	ld a, d                                          ; $6b9a: $7a
	ld b, $07                                        ; $6b9b: $06 $07
	ld l, a                                          ; $6b9d: $6f
	ld [hl], b                                       ; $6b9e: $70
	add [hl]                                         ; $6b9f: $86
	ld d, [hl]                                       ; $6ba0: $56
	xor b                                            ; $6ba1: $a8
	ld [hl+], a                                      ; $6ba2: $22
	and [hl]                                         ; $6ba3: $a6
	jr nz, jr_03e_6bee                               ; $6ba4: $20 $48

	add b                                            ; $6ba6: $80
	add c                                            ; $6ba7: $81
	ld bc, $dd07                                     ; $6ba8: $01 $07 $dd
	ld a, c                                          ; $6bab: $79
	ld a, a                                          ; $6bac: $7f
	rst FarCall                                          ; $6bad: $f7
	ld a, a                                          ; $6bae: $7f
	ld a, a                                          ; $6baf: $7f
	sbc b                                            ; $6bb0: $98
	inc e                                            ; $6bb1: $1c
	jr jr_03e_6bd0                                   ; $6bb2: $18 $1c

	jr nc, jr_03e_6bd3                               ; $6bb4: $30 $1d

	adc a                                            ; $6bb6: $8f
	ld b, c                                          ; $6bb7: $41
	ld a, b                                          ; $6bb8: $78
	db $dd                                           ; $6bb9: $dd
	ld hl, sp-$6c                                    ; $6bba: $f8 $94
	ldh [c], a                                       ; $6bbc: $e2
	rst SubAFromDE                                          ; $6bbd: $df
	cp a                                             ; $6bbe: $bf
	rla                                              ; $6bbf: $17
	or a                                             ; $6bc0: $b7
	rla                                              ; $6bc1: $17
	or l                                             ; $6bc2: $b5
	dec d                                            ; $6bc3: $15
	or a                                             ; $6bc4: $b7
	sub l                                            ; $6bc5: $95
	dec [hl]                                         ; $6bc6: $35
	sbc $08                                          ; $6bc7: $de $08
	rst SubAFromDE                                          ; $6bc9: $df
	ld a, [bc]                                       ; $6bca: $0a
	ld a, a                                          ; $6bcb: $7f
	db $fd                                           ; $6bcc: $fd
	sub [hl]                                         ; $6bcd: $96
	adc d                                            ; $6bce: $8a
	rst FarCall                                          ; $6bcf: $f7

jr_03e_6bd0:
	sub d                                            ; $6bd0: $92
	rst FarCall                                          ; $6bd1: $f7
	sub e                                            ; $6bd2: $93

jr_03e_6bd3:
	rst FarCall                                          ; $6bd3: $f7
	sub d                                            ; $6bd4: $92
	rst SubAFromHL                                          ; $6bd5: $d7
	sub e                                            ; $6bd6: $93
	reti                                             ; $6bd7: $d9


	ccf                                              ; $6bd8: $3f
	sbc c                                            ; $6bd9: $99
	xor b                                            ; $6bda: $a8
	ld d, l                                          ; $6bdb: $55
	ld [$fdff], a                                    ; $6bdc: $ea $ff $fd
	rst $38                                          ; $6bdf: $ff
	halt                                             ; $6be0: $76
	ld c, e                                          ; $6be1: $4b
	db $db                                           ; $6be2: $db
	rst $38                                          ; $6be3: $ff
	sub [hl]                                         ; $6be4: $96
	ld b, b                                          ; $6be5: $40
	ld a, [hl+]                                      ; $6be6: $2a
	add [hl]                                         ; $6be7: $86
	xor [hl]                                         ; $6be8: $ae
	xor h                                            ; $6be9: $ac
	cp [hl]                                          ; $6bea: $be
	xor [hl]                                         ; $6beb: $ae
	or [hl]                                          ; $6bec: $b6
	cp a                                             ; $6bed: $bf

jr_03e_6bee:
	jp c, $97ff                                      ; $6bee: $da $ff $97

	rst SubAFromBC                                          ; $6bf1: $e7
	db $eb                                           ; $6bf2: $eb
	rst SubAFromBC                                          ; $6bf3: $e7
	db $eb                                           ; $6bf4: $eb
	push hl                                          ; $6bf5: $e5
	db $eb                                           ; $6bf6: $eb
	push hl                                          ; $6bf7: $e5
	db $e3                                           ; $6bf8: $e3
	reti                                             ; $6bf9: $d9


	ldh [$7e], a                                     ; $6bfa: $e0 $7e
	add $6f                                          ; $6bfc: $c6 $6f
	cp $7e                                           ; $6bfe: $fe $7e
	add $6f                                          ; $6c00: $c6 $6f
	cp $9e                                           ; $6c02: $fe $9e
	rst GetHLinHL                                          ; $6c04: $cf
	db $dd                                           ; $6c05: $dd
	ld bc, $a39b                                     ; $6c06: $01 $9b $a3
	inc bc                                           ; $6c09: $03

jr_03e_6c0a:
	inc bc                                           ; $6c0a: $03
	jr nc, jr_03e_6c0a                               ; $6c0b: $30 $fd

	ld a, l                                          ; $6c0d: $7d
	ld [$0095], sp                                   ; $6c0e: $08 $95 $00
	db $fc                                           ; $6c11: $fc
	ld hl, sp-$71                                    ; $6c12: $f8 $8f
	rst SubAFromDE                                          ; $6c14: $df
	sbc a                                            ; $6c15: $9f
	rst $38                                          ; $6c16: $ff
	rst AddAOntoHL                                          ; $6c17: $ef
	ld a, a                                          ; $6c18: $7f
	inc bc                                           ; $6c19: $03
	ld [hl], d                                       ; $6c1a: $72
	ld a, [hl]                                       ; $6c1b: $7e
	ld a, [hl]                                       ; $6c1c: $7e
	ld l, c                                          ; $6c1d: $69
	sbc d                                            ; $6c1e: $9a
	rst AddAOntoHL                                          ; $6c1f: $ef
	inc de                                           ; $6c20: $13
	sbc l                                            ; $6c21: $9d
	push de                                          ; $6c22: $d5
	rla                                              ; $6c23: $17
	ld a, e                                          ; $6c24: $7b
	or e                                             ; $6c25: $b3

jr_03e_6c26:
	sbc d                                            ; $6c26: $9a
	db $10                                           ; $6c27: $10
	db $ec                                           ; $6c28: $ec
	ld h, d                                          ; $6c29: $62
	ld [hl+], a                                      ; $6c2a: $22
	ldh [$7b], a                                     ; $6c2b: $e0 $7b
	ld c, l                                          ; $6c2d: $4d
	sbc [hl]                                         ; $6c2e: $9e
	sub a                                            ; $6c2f: $97
	db $dd                                           ; $6c30: $dd
	sub b                                            ; $6c31: $90
	sbc $98                                          ; $6c32: $de $98
	sbc [hl]                                         ; $6c34: $9e
	ld l, b                                          ; $6c35: $68
	jp c, Jump_03e_7b60                              ; $6c36: $da $60 $7b

	ld [bc], a                                       ; $6c39: $02
	ld [hl], e                                       ; $6c3a: $73
	cp $9c                                           ; $6c3b: $fe $9c
	xor $0d                                          ; $6c3d: $ee $0d
	ld c, $73                                        ; $6c3f: $0e $73
	cp $6a                                           ; $6c41: $fe $6a
	ret                                              ; $6c43: $c9


	rst SubAFromDE                                          ; $6c44: $df
	xor d                                            ; $6c45: $aa
	ld l, e                                          ; $6c46: $6b
	rst FarCall                                          ; $6c47: $f7
	sbc l                                            ; $6c48: $9d
	ld a, h                                          ; $6c49: $7c
	ld c, h                                          ; $6c4a: $4c
	sbc $0c                                          ; $6c4b: $de $0c
	sbc h                                            ; $6c4d: $9c
	call z, $1c1c                                    ; $6c4e: $cc $1c $1c
	db $db                                           ; $6c51: $db
	ld [$48df], sp                                   ; $6c52: $08 $df $48
	sbc $87                                          ; $6c55: $de $87
	sbc [hl]                                         ; $6c57: $9e
	rst JumpTable                                          ; $6c58: $c7
	ld a, d                                          ; $6c59: $7a
	cp a                                             ; $6c5a: $bf
	adc c                                            ; $6c5b: $89
	ret nz                                           ; $6c5c: $c0

	ld [hl], e                                       ; $6c5d: $73
	ld [hl], a                                       ; $6c5e: $77
	ld h, a                                          ; $6c5f: $67
	inc hl                                           ; $6c60: $23
	inc hl                                           ; $6c61: $23
	nop                                              ; $6c62: $00
	ld b, b                                          ; $6c63: $40
	jr nc, jr_03e_6c26                               ; $6c64: $30 $c0

	ret nz                                           ; $6c66: $c0

	ldh [c], a                                       ; $6c67: $e2
	ret nc                                           ; $6c68: $d0

	rrca                                             ; $6c69: $0f
	ld c, $05                                        ; $6c6a: $0e $05
	ld [$f0e0], sp                                   ; $6c6c: $08 $e0 $f0
	ldh a, [$e6]                                     ; $6c6f: $f0 $e6
	add $de                                          ; $6c71: $c6 $de
	rrca                                             ; $6c73: $0f
	add a                                            ; $6c74: $87
	ld a, [hl]                                       ; $6c75: $7e
	db $fc                                           ; $6c76: $fc
	cp $fc                                           ; $6c77: $fe $fc
	add b                                            ; $6c79: $80
	ldh a, [$7c]                                     ; $6c7a: $f0 $7c
	ld a, l                                          ; $6c7c: $7d
	db $fd                                           ; $6c7d: $fd
	rst $38                                          ; $6c7e: $ff
	db $fd                                           ; $6c7f: $fd
	ld a, e                                          ; $6c80: $7b
	ld a, a                                          ; $6c81: $7f
	rrca                                             ; $6c82: $0f
	add e                                            ; $6c83: $83
	add e                                            ; $6c84: $83
	push af                                          ; $6c85: $f5
	xor d                                            ; $6c86: $aa
	cp a                                             ; $6c87: $bf
	dec sp                                           ; $6c88: $3b
	dec [hl]                                         ; $6c89: $35
	ld a, [bc]                                       ; $6c8a: $0a
	rra                                              ; $6c8b: $1f
	xor a                                            ; $6c8c: $af
	call c, Call_03e_7bc0                            ; $6c8d: $dc $c0 $7b
	ld b, c                                          ; $6c90: $41
	sub e                                            ; $6c91: $93
	db $fc                                           ; $6c92: $fc
	ld a, l                                          ; $6c93: $7d
	rst $38                                          ; $6c94: $ff
	ld l, a                                          ; $6c95: $6f
	sub d                                            ; $6c96: $92
	and b                                            ; $6c97: $a0
	ld bc, $0182                                     ; $6c98: $01 $82 $01
	add e                                            ; $6c9b: $83
	rlca                                             ; $6c9c: $07
	sbc a                                            ; $6c9d: $9f
	halt                                             ; $6c9e: $76
	dec sp                                           ; $6c9f: $3b
	sub a                                            ; $6ca0: $97
	xor e                                            ; $6ca1: $ab
	rst FarCall                                          ; $6ca2: $f7
	ld hl, sp+$08                                    ; $6ca3: $f8 $08
	nop                                              ; $6ca5: $00
	ld hl, $2844                                     ; $6ca6: $21 $44 $28
	sbc $ff                                          ; $6ca9: $de $ff
	ld a, c                                          ; $6cab: $79
	db $fc                                           ; $6cac: $fc
	ld a, a                                          ; $6cad: $7f
	ld c, d                                          ; $6cae: $4a
	sbc d                                            ; $6caf: $9a
	ld b, c                                          ; $6cb0: $41
	xor d                                            ; $6cb1: $aa
	sbc l                                            ; $6cb2: $9d
	dec bc                                           ; $6cb3: $0b
	rra                                              ; $6cb4: $1f
	ld [hl], b                                       ; $6cb5: $70
	ld l, b                                          ; $6cb6: $68
	rst SubAFromDE                                          ; $6cb7: $df
	ccf                                              ; $6cb8: $3f
	ld a, l                                          ; $6cb9: $7d
	or d                                             ; $6cba: $b2
	rst SubAFromDE                                          ; $6cbb: $df
	rst $38                                          ; $6cbc: $ff
	ld a, [hl]                                       ; $6cbd: $7e
	add $97                                          ; $6cbe: $c6 $97
	rla                                              ; $6cc0: $17
	dec sp                                           ; $6cc1: $3b
	jr jr_03e_6cfc                                   ; $6cc2: $18 $38

	jr @+$3a                                         ; $6cc4: $18 $38

	adc d                                            ; $6cc6: $8a
	adc d                                            ; $6cc7: $8a
	db $db                                           ; $6cc8: $db
	adc b                                            ; $6cc9: $88
	sbc c                                            ; $6cca: $99
	rst SubAFromHL                                          ; $6ccb: $d7
	add e                                            ; $6ccc: $83
	sub $c8                                          ; $6ccd: $d6 $c8
	rra                                              ; $6ccf: $1f
	inc c                                            ; $6cd0: $0c
	ld [hl], l                                       ; $6cd1: $75
	add h                                            ; $6cd2: $84
	sbc h                                            ; $6cd3: $9c
	add hl, sp                                       ; $6cd4: $39
	ccf                                              ; $6cd5: $3f
	ccf                                              ; $6cd6: $3f
	ld a, b                                          ; $6cd7: $78
	add a                                            ; $6cd8: $87
	rst SubAFromDE                                          ; $6cd9: $df
	rst $38                                          ; $6cda: $ff
	sbc c                                            ; $6cdb: $99
	ld e, a                                          ; $6cdc: $5f
	dec hl                                           ; $6cdd: $2b
	cp $7f                                           ; $6cde: $fe $7f
	cp a                                             ; $6ce0: $bf
	inc bc                                           ; $6ce1: $03
	db $db                                           ; $6ce2: $db
	rst $38                                          ; $6ce3: $ff
	ld a, [hl]                                       ; $6ce4: $7e
	ld c, d                                          ; $6ce5: $4a
	sub a                                            ; $6ce6: $97
	xor [hl]                                         ; $6ce7: $ae
	cp [hl]                                          ; $6ce8: $be
	xor [hl]                                         ; $6ce9: $ae
	and [hl]                                         ; $6cea: $a6
	nop                                              ; $6ceb: $00
	rst $38                                          ; $6cec: $ff
	ldh [$f0], a                                     ; $6ced: $e0 $f0
	jp c, $9aff                                      ; $6cef: $da $ff $9a

	ldh [$e5], a                                     ; $6cf2: $e0 $e5
	db $e3                                           ; $6cf4: $e3
	push hl                                          ; $6cf5: $e5
	ldh [c], a                                       ; $6cf6: $e2
	ld a, e                                          ; $6cf7: $7b
	cp $7c                                           ; $6cf8: $fe $7c
	ld [hl], c                                       ; $6cfa: $71
	ld l, [hl]                                       ; $6cfb: $6e

Call_03e_6cfc:
jr_03e_6cfc:
	jp nz, $c67d                                     ; $6cfc: $c2 $7d $c6

	ld a, [hl]                                       ; $6cff: $7e
	call nz, $e09a                                   ; $6d00: $c4 $9a $e0
	ret nc                                           ; $6d03: $d0

	add sp, $74                                      ; $6d04: $e8 $74
	xor b                                            ; $6d06: $a8
	ld a, d                                          ; $6d07: $7a
	call nz, $1c9a                                   ; $6d08: $c4 $9a $1c
	inc l                                            ; $6d0b: $2c
	inc d                                            ; $6d0c: $14
	ld [$dd14], sp                                   ; $6d0d: $08 $14 $dd
	inc bc                                           ; $6d10: $03
	sbc h                                            ; $6d11: $9c
	rst GetHLinHL                                          ; $6d12: $cf
	ei                                               ; $6d13: $fb
	ld [bc], a                                       ; $6d14: $02
	ld [hl], b                                       ; $6d15: $70
	dec a                                            ; $6d16: $3d
	halt                                             ; $6d17: $76
	ret nz                                           ; $6d18: $c0

	ld a, b                                          ; $6d19: $78
	or c                                             ; $6d1a: $b1
	rst SubAFromDE                                          ; $6d1b: $df
	ret c                                            ; $6d1c: $d8

	sbc h                                            ; $6d1d: $9c
	ld bc, $cecc                                     ; $6d1e: $01 $cc $ce
	ld a, c                                          ; $6d21: $79
	rla                                              ; $6d22: $17
	rst SubAFromDE                                          ; $6d23: $df
	rlca                                             ; $6d24: $07
	add a                                            ; $6d25: $87
	cp $03                                           ; $6d26: $fe $03
	ld bc, $3133                                     ; $6d28: $01 $33 $31
	db $e3                                           ; $6d2b: $e3
	ld h, a                                          ; $6d2c: $67
	inc bc                                           ; $6d2d: $03
	rst $38                                          ; $6d2e: $ff
	add d                                            ; $6d2f: $82
	rrca                                             ; $6d30: $0f
	call z, $1cce                                    ; $6d31: $cc $ce $1c
	sbc b                                            ; $6d34: $98
	db $fc                                           ; $6d35: $fc
	nop                                              ; $6d36: $00
	ld a, h                                          ; $6d37: $7c
	ldh a, [$9e]                                     ; $6d38: $f0 $9e
	adc h                                            ; $6d3a: $8c
	ret z                                            ; $6d3b: $c8

	ld c, b                                          ; $6d3c: $48
	ld c, b                                          ; $6d3d: $48
	sbc $4c                                          ; $6d3e: $de $4c
	ld a, l                                          ; $6d40: $7d
	call nz, $30db                                   ; $6d41: $c4 $db $30
	ld a, [hl]                                       ; $6d44: $7e
	add $db                                          ; $6d45: $c6 $db
	inc bc                                           ; $6d47: $03
	sbc l                                            ; $6d48: $9d
	sbc $1d                                          ; $6d49: $de $1d
	db $db                                           ; $6d4b: $db
	inc c                                            ; $6d4c: $0c
	ld a, c                                          ; $6d4d: $79
	add [hl]                                         ; $6d4e: $86
	call c, Call_03e_7eff                            ; $6d4f: $dc $ff $7e
	add $fb                                          ; $6d52: $c6 $fb
	ld a, l                                          ; $6d54: $7d
	dec de                                           ; $6d55: $1b
	sbc l                                            ; $6d56: $9d
	db $fc                                           ; $6d57: $fc
	call z, $e8de                                    ; $6d58: $cc $de $e8
	sbc [hl]                                         ; $6d5b: $9e
	db $ec                                           ; $6d5c: $ec
	ld a, d                                          ; $6d5d: $7a
	push bc                                          ; $6d5e: $c5
	sbc [hl]                                         ; $6d5f: $9e
	ld a, b                                          ; $6d60: $78
	sbc $5c                                          ; $6d61: $de $5c
	sub c                                            ; $6d63: $91
	ld e, b                                          ; $6d64: $58
	ret nz                                           ; $6d65: $c0

	call nc, $c8c7                                   ; $6d66: $d4 $c7 $c8
	ldh [$f2], a                                     ; $6d69: $e0 $f2
	ld sp, hl                                        ; $6d6b: $f9
	ld hl, sp+$1c                                    ; $6d6c: $f8 $1c
	ld c, $12                                        ; $6d6e: $0e $12
	inc de                                           ; $6d70: $13
	dec de                                           ; $6d71: $1b
	ld a, b                                          ; $6d72: $78
	db $ec                                           ; $6d73: $ec
	rst SubAFromDE                                          ; $6d74: $df
	ld bc, $cd7c                                     ; $6d75: $01 $7c $cd
	sbc e                                            ; $6d78: $9b
	cp b                                             ; $6d79: $b8
	rra                                              ; $6d7a: $1f
	and b                                            ; $6d7b: $a0
	ld c, [hl]                                       ; $6d7c: $4e
	ld [hl], h                                       ; $6d7d: $74
	ld h, b                                          ; $6d7e: $60
	adc [hl]                                         ; $6d7f: $8e
	ld b, a                                          ; $6d80: $47
	ldh [$5f], a                                     ; $6d81: $e0 $5f
	ld sp, $7b3b                                     ; $6d83: $31 $3b $7b
	pop hl                                           ; $6d86: $e1
	ld bc, $4406                                     ; $6d87: $01 $06 $44
	jr nz, jr_03e_6d8e                               ; $6d8a: $20 $02

	rlca                                             ; $6d8c: $07
	rlca                                             ; $6d8d: $07

jr_03e_6d8e:
	rra                                              ; $6d8e: $1f
	rst $38                                          ; $6d8f: $ff
	rst $38                                          ; $6d90: $ff
	ld a, d                                          ; $6d91: $7a
	ld c, b                                          ; $6d92: $48
	sbc l                                            ; $6d93: $9d
	cp a                                             ; $6d94: $bf
	scf                                              ; $6d95: $37
	ld a, d                                          ; $6d96: $7a
	ld sp, hl                                        ; $6d97: $f9
	sbc h                                            ; $6d98: $9c
	ld d, l                                          ; $6d99: $55
	cp d                                             ; $6d9a: $ba
	rst $38                                          ; $6d9b: $ff
	ld [hl], l                                       ; $6d9c: $75
	ld c, e                                          ; $6d9d: $4b
	ld l, h                                          ; $6d9e: $6c
	and e                                            ; $6d9f: $a3
	db $db                                           ; $6da0: $db
	rst $38                                          ; $6da1: $ff
	sbc [hl]                                         ; $6da2: $9e
	nop                                              ; $6da3: $00
	ld [hl], h                                       ; $6da4: $74
	ld l, $fe                                        ; $6da5: $2e $fe
	add b                                            ; $6da7: $80
	rla                                              ; $6da8: $17
	rra                                              ; $6da9: $1f
	rst AddAOntoHL                                          ; $6daa: $ef
	ldh [$f0], a                                     ; $6dab: $e0 $f0
	ld sp, hl                                        ; $6dad: $f9
	ld hl, sp-$08                                    ; $6dae: $f8 $f8
	ld [$10e0], sp                                   ; $6db0: $08 $e0 $10
	rra                                              ; $6db3: $1f
	rrca                                             ; $6db4: $0f
	ld b, $07                                        ; $6db5: $06 $07
	rlca                                             ; $6db7: $07
	ldh a, [$f8]                                     ; $6db8: $f0 $f8
	sbc a                                            ; $6dba: $9f
	rra                                              ; $6dbb: $1f
	inc a                                            ; $6dbc: $3c
	cpl                                              ; $6dbd: $2f
	dec sp                                           ; $6dbe: $3b
	inc [hl]                                         ; $6dbf: $34
	nop                                              ; $6dc0: $00
	nop                                              ; $6dc1: $00
	ld h, b                                          ; $6dc2: $60
	ldh [$e3], a                                     ; $6dc3: $e0 $e3
	rst FarCall                                          ; $6dc5: $f7
	or $9d                                           ; $6dc6: $f6 $9d
	ei                                               ; $6dc8: $fb
	ld [$d07b], sp                                   ; $6dc9: $08 $7b $d0
	sbc e                                            ; $6dcc: $9b
	ld b, b                                          ; $6dcd: $40
	rst $38                                          ; $6dce: $ff
	rla                                              ; $6dcf: $17
	rst $38                                          ; $6dd0: $ff
	ld [hl], h                                       ; $6dd1: $74
	ld b, a                                          ; $6dd2: $47
	ld [hl], e                                       ; $6dd3: $73
	ret z                                            ; $6dd4: $c8

	adc b                                            ; $6dd5: $88
	ld a, [bc]                                       ; $6dd6: $0a
	ret nc                                           ; $6dd7: $d0

	rst $38                                          ; $6dd8: $ff
	ld sp, $d0f0                                     ; $6dd9: $31 $f0 $d0
	ld hl, sp+$00                                    ; $6ddc: $f8 $00
	rrca                                             ; $6dde: $0f
	rrca                                             ; $6ddf: $0f
	nop                                              ; $6de0: $00
	ret nz                                           ; $6de1: $c0

	ldh a, [$f8]                                     ; $6de2: $f0 $f8
	ld hl, sp+$2f                                    ; $6de4: $f8 $2f
	xor l                                            ; $6de6: $ad
	ld [bc], a                                       ; $6de7: $02
	cp b                                             ; $6de8: $b8
	or l                                             ; $6de9: $b5
	ld a, [bc]                                       ; $6dea: $0a
	ret                                              ; $6deb: $c9


	ld b, $7b                                        ; $6dec: $06 $7b
	sub d                                            ; $6dee: $92
	sbc [hl]                                         ; $6def: $9e
	ld b, a                                          ; $6df0: $47
	ld a, b                                          ; $6df1: $78
	add h                                            ; $6df2: $84
	adc a                                            ; $6df3: $8f
	jp $f0e0                                         ; $6df4: $c3 $e0 $f0


	or b                                             ; $6df7: $b0
	rra                                              ; $6df8: $1f
	ld b, b                                          ; $6df9: $40
	xor a                                            ; $6dfa: $af
	ld d, l                                          ; $6dfb: $55
	and e                                            ; $6dfc: $a3
	ldh [$e0], a                                     ; $6dfd: $e0 $e0
	ld hl, sp-$20                                    ; $6dff: $f8 $e0
	rst $38                                          ; $6e01: $ff
	ldh a, [$fa]                                     ; $6e02: $f0 $fa
	ld [hl], a                                       ; $6e04: $77
	adc l                                            ; $6e05: $8d
	sbc l                                            ; $6e06: $9d
	ldh [rP1], a                                     ; $6e07: $e0 $00
	sbc $f8                                          ; $6e09: $de $f8
	ld l, b                                          ; $6e0b: $68
	ld e, e                                          ; $6e0c: $5b
	sbc e                                            ; $6e0d: $9b
	ldh a, [$74]                                     ; $6e0e: $f0 $74
	cp b                                             ; $6e10: $b8
	ld a, h                                          ; $6e11: $7c
	ld a, e                                          ; $6e12: $7b
	cp $9b                                           ; $6e13: $fe $9b
	ld e, h                                          ; $6e15: $5c
	jr c, jr_03e_6e20                                ; $6e16: $38 $08

	inc b                                            ; $6e18: $04
	ld a, d                                          ; $6e19: $7a
	jp nc, $fe7b                                     ; $6e1a: $d2 $7b $fe

	ld [hl], b                                       ; $6e1d: $70
	ld d, c                                          ; $6e1e: $51
	rst SubAFromDE                                          ; $6e1f: $df

jr_03e_6e20:
	rlca                                             ; $6e20: $07
	ld a, d                                          ; $6e21: $7a
	add $fb                                          ; $6e22: $c6 $fb
	sub a                                            ; $6e24: $97
	sbc e                                            ; $6e25: $9b
	sub b                                            ; $6e26: $90
	and e                                            ; $6e27: $a3
	and a                                            ; $6e28: $a7
	inc hl                                           ; $6e29: $23
	ld [hl+], a                                      ; $6e2a: $22
	rst SubAFromBC                                          ; $6e2b: $e7
	ld h, [hl]                                       ; $6e2c: $66
	ld sp, hl                                        ; $6e2d: $f9
	sbc l                                            ; $6e2e: $9d
	db $e3                                           ; $6e2f: $e3
	sub b                                            ; $6e30: $90
	db $dd                                           ; $6e31: $dd
	add b                                            ; $6e32: $80
	sbc e                                            ; $6e33: $9b
	and b                                            ; $6e34: $a0
	jr nz, @+$1e                                     ; $6e35: $20 $1c

	ld l, a                                          ; $6e37: $6f
	db $dd                                           ; $6e38: $dd
	ld a, a                                          ; $6e39: $7f
	rst SubAFromDE                                          ; $6e3a: $df
	rra                                              ; $6e3b: $1f
	sub l                                            ; $6e3c: $95
	ld c, $c4                                        ; $6e3d: $0e $c4
	db $e4                                           ; $6e3f: $e4
	and h                                            ; $6e40: $a4
	db $e4                                           ; $6e41: $e4
	db $e4                                           ; $6e42: $e4
	ldh a, [$c2]                                     ; $6e43: $f0 $c2
	jr nc, @+$3d                                     ; $6e45: $30 $3b

	db $dd                                           ; $6e47: $dd
	jr jr_03e_6ec4                                   ; $6e48: $18 $7a

	ld c, $df                                        ; $6e4a: $0e $df
	inc bc                                           ; $6e4c: $03
	ld a, [hl]                                       ; $6e4d: $7e
	cp [hl]                                          ; $6e4e: $be
	sbc d                                            ; $6e4f: $9a
	ld [bc], a                                       ; $6e50: $02
	nop                                              ; $6e51: $00
	ld bc, $fcdc                                     ; $6e52: $01 $dc $fc
	db $db                                           ; $6e55: $db
	inc c                                            ; $6e56: $0c
	ld a, h                                          ; $6e57: $7c
	push af                                          ; $6e58: $f5
	sbc d                                            ; $6e59: $9a
	push de                                          ; $6e5a: $d5
	xor d                                            ; $6e5b: $aa
	ld d, h                                          ; $6e5c: $54
	and b                                            ; $6e5d: $a0
	nop                                              ; $6e5e: $00
	ld [hl], a                                       ; $6e5f: $77
	ld d, c                                          ; $6e60: $51
	ld [hl], d                                       ; $6e61: $72
	ld l, [hl]                                       ; $6e62: $6e
	sub b                                            ; $6e63: $90
	db $ec                                           ; $6e64: $ec
	ld a, h                                          ; $6e65: $7c
	db $fc                                           ; $6e66: $fc
	ld e, h                                          ; $6e67: $5c
	ld a, a                                          ; $6e68: $7f
	ld a, a                                          ; $6e69: $7f
	rst $38                                          ; $6e6a: $ff
	nop                                              ; $6e6b: $00
	ld e, b                                          ; $6e6c: $58
	ret c                                            ; $6e6d: $d8

	ld e, b                                          ; $6e6e: $58
	ld hl, sp-$34                                    ; $6e6f: $f8 $cc
	ret nz                                           ; $6e71: $c0

	ccf                                              ; $6e72: $3f
	ld l, [hl]                                       ; $6e73: $6e
	cp $9d                                           ; $6e74: $fe $9d
	db $eb                                           ; $6e76: $eb
	cp $6f                                           ; $6e77: $fe $6f
	ld [bc], a                                       ; $6e79: $02
	sub h                                            ; $6e7a: $94
	inc d                                            ; $6e7b: $14
	rst SubAFromBC                                          ; $6e7c: $e7
	ccf                                              ; $6e7d: $3f
	nop                                              ; $6e7e: $00
	add b                                            ; $6e7f: $80
	pop af                                           ; $6e80: $f1
	ldh a, [rAUD2LOW]                                ; $6e81: $f0 $18
	add sp, -$07                                     ; $6e83: $e8 $f9
	and $7b                                          ; $6e85: $e6 $7b
	push de                                          ; $6e87: $d5
	sub l                                            ; $6e88: $95
	rrca                                             ; $6e89: $0f
	db $e3                                           ; $6e8a: $e3
	dec d                                            ; $6e8b: $15
	db $e3                                           ; $6e8c: $e3

jr_03e_6e8d:
	reti                                             ; $6e8d: $d9


	add hl, bc                                       ; $6e8e: $09
	rlca                                             ; $6e8f: $07
	rra                                              ; $6e90: $1f
	sbc a                                            ; $6e91: $9f
	ccf                                              ; $6e92: $3f
	ld a, e                                          ; $6e93: $7b
	cp $97                                           ; $6e94: $fe $97
	ld a, [hl]                                       ; $6e96: $7e
	ld a, b                                          ; $6e97: $78
	ldh [$e0], a                                     ; $6e98: $e0 $e0
	add b                                            ; $6e9a: $80
	rst $38                                          ; $6e9b: $ff
	cp b                                             ; $6e9c: $b8

Jump_03e_6e9d:
	cp $fd                                           ; $6e9d: $fe $fd
	sbc h                                            ; $6e9f: $9c
	db $fc                                           ; $6ea0: $fc
	rst $38                                          ; $6ea1: $ff
	ld a, [hl]                                       ; $6ea2: $7e
	ld l, d                                          ; $6ea3: $6a
	push bc                                          ; $6ea4: $c5
	ld h, [hl]                                       ; $6ea5: $66
	jp nz, $f87a                                     ; $6ea6: $c2 $7a $f8

	ld a, [$f8df]                                    ; $6ea9: $fa $df $f8
	db $db                                           ; $6eac: $db
	db $fc                                           ; $6ead: $fc
	ld a, e                                          ; $6eae: $7b
	jr c, jr_03e_6e8d                                ; $6eaf: $38 $dc

	inc bc                                           ; $6eb1: $03
	sbc h                                            ; $6eb2: $9c
	ld e, $1f                                        ; $6eb3: $1e $1f
	ld e, $78                                        ; $6eb5: $1e $78
	ld sp, hl                                        ; $6eb7: $f9
	ld a, [hl]                                       ; $6eb8: $7e
	or $9b                                           ; $6eb9: $f6 $9b
	ei                                               ; $6ebb: $fb
	ld sp, hl                                        ; $6ebc: $f9
	db $fd                                           ; $6ebd: $fd
	db $fd                                           ; $6ebe: $fd
	sbc $fe                                          ; $6ebf: $de $fe
	ld a, c                                          ; $6ec1: $79
	xor l                                            ; $6ec2: $ad
	sbc c                                            ; $6ec3: $99

jr_03e_6ec4:
	cp a                                             ; $6ec4: $bf
	ld a, a                                          ; $6ec5: $7f
	cp a                                             ; $6ec6: $bf
	ld e, a                                          ; $6ec7: $5f
	cp a                                             ; $6ec8: $bf
	sbc a                                            ; $6ec9: $9f
	ld l, c                                          ; $6eca: $69
	and b                                            ; $6ecb: $a0
	sbc [hl]                                         ; $6ecc: $9e
	ld a, a                                          ; $6ecd: $7f
	ld a, e                                          ; $6ece: $7b
	pop de                                           ; $6ecf: $d1
	sbc b                                            ; $6ed0: $98
	or $fa                                           ; $6ed1: $f6 $fa
	rst FarCall                                          ; $6ed3: $f7
	ei                                               ; $6ed4: $fb
	db $fd                                           ; $6ed5: $fd
	db $fc                                           ; $6ed6: $fc
	db $fc                                           ; $6ed7: $fc
	ld [hl], a                                       ; $6ed8: $77
	db $e3                                           ; $6ed9: $e3
	rst SubAFromDE                                          ; $6eda: $df
	rst $38                                          ; $6edb: $ff
	sub l                                            ; $6edc: $95
	ld [hl], c                                       ; $6edd: $71
	ld [hl], d                                       ; $6ede: $72
	ld [bc], a                                       ; $6edf: $02
	ld bc, $406a                                     ; $6ee0: $01 $6a $40
	jr nz, @-$4e                                     ; $6ee3: $20 $b0

	jp Jump_03e_7a61                                 ; $6ee5: $c3 $61 $7a


	inc sp                                           ; $6ee8: $33
	sub h                                            ; $6ee9: $94
	jr nz, jr_03e_6f1c                               ; $6eea: $20 $30

	or b                                             ; $6eec: $b0
	ld d, l                                          ; $6eed: $55
	xor a                                            ; $6eee: $af
	ld d, b                                          ; $6eef: $50
	add e                                            ; $6ef0: $83
	jp $2181                                         ; $6ef1: $c3 $81 $21


	ld h, b                                          ; $6ef4: $60
	ld a, e                                          ; $6ef5: $7b
	ret nz                                           ; $6ef6: $c0

	sub d                                            ; $6ef7: $92
	db $fc                                           ; $6ef8: $fc
	ld a, h                                          ; $6ef9: $7c
	ld a, [hl]                                       ; $6efa: $7e
	ld a, [hl]                                       ; $6efb: $7e
	ccf                                              ; $6efc: $3f
	db $f4                                           ; $6efd: $f4
	db $fc                                           ; $6efe: $fc
	db $fc                                           ; $6eff: $fc
	ld a, [$cfe2]                                    ; $6f00: $fa $e2 $cf
	ccf                                              ; $6f03: $3f
	cp a                                             ; $6f04: $bf
	sbc $f8                                          ; $6f05: $de $f8
	rst SubAFromDE                                          ; $6f07: $df
	db $fc                                           ; $6f08: $fc
	sub h                                            ; $6f09: $94
	nop                                              ; $6f0a: $00
	ld a, [hl]                                       ; $6f0b: $7e

jr_03e_6f0c:
	ld a, [hl]                                       ; $6f0c: $7e
	ld e, h                                          ; $6f0d: $5c
	jr z, jr_03e_6f2c                                ; $6f0e: $28 $1c

	jr z, jr_03e_6f26                                ; $6f10: $28 $14

	inc l                                            ; $6f12: $2c
	inc d                                            ; $6f13: $14
	xor d                                            ; $6f14: $aa
	ld [hl], d                                       ; $6f15: $72
	jp nz, $027f                                     ; $6f16: $c2 $7f $02

	ld sp, hl                                        ; $6f19: $f9
	sbc c                                            ; $6f1a: $99
	xor d                                            ; $6f1b: $aa

jr_03e_6f1c:
	inc c                                            ; $6f1c: $0c
	rlca                                             ; $6f1d: $07

jr_03e_6f1e:
	add hl, bc                                       ; $6f1e: $09
	ei                                               ; $6f1f: $fb
	add c                                            ; $6f20: $81
	ld l, d                                          ; $6f21: $6a
	ld e, $77                                        ; $6f22: $1e $77
	ldh a, [$9a]                                     ; $6f24: $f0 $9a

jr_03e_6f26:
	cp $38                                           ; $6f26: $fe $38
	jr nc, jr_03e_6f0c                               ; $6f28: $30 $e2

	ld [bc], a                                       ; $6f2a: $02
	ld a, e                                          ; $6f2b: $7b

jr_03e_6f2c:
	ld c, a                                          ; $6f2c: $4f
	sbc $0f                                          ; $6f2d: $de $0f
	sbc [hl]                                         ; $6f2f: $9e
	ld c, $79                                        ; $6f30: $0e $79
	ld de, $aa98                                     ; $6f32: $11 $98 $aa
	jr nc, jr_03e_6f47                               ; $6f35: $30 $10

	db $10                                           ; $6f37: $10
	ld de, $1c13                                     ; $6f38: $11 $13 $1c
	ld e, a                                          ; $6f3b: $5f

Jump_03e_6f3c:
	ldh [$98], a                                     ; $6f3c: $e0 $98
	ldh [c], a                                       ; $6f3e: $e2
	ldh [$e0], a                                     ; $6f3f: $e0 $e0
	ret c                                            ; $6f41: $d8

	add b                                            ; $6f42: $80
	ld b, b                                          ; $6f43: $40
	rst $38                                          ; $6f44: $ff
	ld a, c                                          ; $6f45: $79
	ret nz                                           ; $6f46: $c0

jr_03e_6f47:
	ld a, e                                          ; $6f47: $7b
	adc b                                            ; $6f48: $88
	sbc [hl]                                         ; $6f49: $9e
	db $10                                           ; $6f4a: $10
	ld a, e                                          ; $6f4b: $7b
	ret nz                                           ; $6f4c: $c0

	db $dd                                           ; $6f4d: $dd
	inc c                                            ; $6f4e: $0c
	adc e                                            ; $6f4f: $8b
	inc l                                            ; $6f50: $2c
	db $fc                                           ; $6f51: $fc
	nop                                              ; $6f52: $00
	rst AddAOntoHL                                          ; $6f53: $ef
	rst GetHLinHL                                          ; $6f54: $cf
	and [hl]                                         ; $6f55: $a6
	pop de                                           ; $6f56: $d1
	ld h, b                                          ; $6f57: $60
	ld h, d                                          ; $6f58: $62
	ld h, c                                          ; $6f59: $61
	ld h, a                                          ; $6f5a: $67
	rlca                                             ; $6f5b: $07
	inc bc                                           ; $6f5c: $03
	add hl, de                                       ; $6f5d: $19
	jr nz, @+$03                                     ; $6f5e: $20 $01

	ld bc, $0303                                     ; $6f60: $01 $03 $03
	add c                                            ; $6f63: $81
	call c, $9dff                                    ; $6f64: $dc $ff $9d
	cp l                                             ; $6f67: $bd
	cp [hl]                                          ; $6f68: $be
	ld [hl], e                                       ; $6f69: $73
	ld d, e                                          ; $6f6a: $53
	ld a, [hl]                                       ; $6f6b: $7e
	and e                                            ; $6f6c: $a3
	add b                                            ; $6f6d: $80
	dec e                                            ; $6f6e: $1d
	db $10                                           ; $6f6f: $10
	or c                                             ; $6f70: $b1
	push af                                          ; $6f71: $f5
	db $ec                                           ; $6f72: $ec
	xor l                                            ; $6f73: $ad
	ld c, [hl]                                       ; $6f74: $4e
	rst FarCall                                          ; $6f75: $f7
	db $e4                                           ; $6f76: $e4
	rrca                                             ; $6f77: $0f
	cp $fb                                           ; $6f78: $fe $fb
	pop af                                           ; $6f7a: $f1
	sbc $9f                                          ; $6f7b: $de $9f
	rst GetHLinHL                                          ; $6f7d: $cf
	di                                               ; $6f7e: $f3
	add d                                            ; $6f7f: $82
	ld l, d                                          ; $6f80: $6a
	push af                                          ; $6f81: $f5
	nop                                              ; $6f82: $00
	db $10                                           ; $6f83: $10
	add sp, -$0a                                     ; $6f84: $e8 $f6
	ld hl, sp-$07                                    ; $6f86: $f8 $f9
	sbc l                                            ; $6f88: $9d
	ld a, [$20f0]                                    ; $6f89: $fa $f0 $20
	ld de, $0983                                     ; $6f8c: $11 $83 $09
	ld bc, $a10e                                     ; $6f8f: $01 $0e $a1
	ld a, a                                          ; $6f92: $7f
	jr nc, jr_03e_6f1e                               ; $6f93: $30 $89

	inc sp                                           ; $6f95: $33
	ld c, h                                          ; $6f96: $4c
	ld e, $ff                                        ; $6f97: $1e $ff
	ret nz                                           ; $6f99: $c0

	ccf                                              ; $6f9a: $3f
	ld a, a                                          ; $6f9b: $7f
	ld [hl], a                                       ; $6f9c: $77

Jump_03e_6f9d:
	rst $38                                          ; $6f9d: $ff
	di                                               ; $6f9e: $f3
	pop hl                                           ; $6f9f: $e1
	ccf                                              ; $6fa0: $3f
	pop bc                                           ; $6fa1: $c1
	rst SubAFromDE                                          ; $6fa2: $df
	call z, Call_03e_64e6                            ; $6fa3: $cc $e6 $64
	inc e                                            ; $6fa6: $1c
	sbc b                                            ; $6fa7: $98
	ret nz                                           ; $6fa8: $c0

	ccf                                              ; $6fa9: $3f
	db $dd                                           ; $6faa: $dd
	rst $38                                          ; $6fab: $ff
	sbc [hl]                                         ; $6fac: $9e
	rst AddAOntoHL                                          ; $6fad: $ef
	ld [hl], h                                       ; $6fae: $74
	ld l, l                                          ; $6faf: $6d
	ld d, d                                          ; $6fb0: $52
	ret nz                                           ; $6fb1: $c0

	ld a, [hl]                                       ; $6fb2: $7e
	ld sp, hl                                        ; $6fb3: $f9
	ld a, d                                          ; $6fb4: $7a
	or $9b                                           ; $6fb5: $f6 $9b
	db $fd                                           ; $6fb7: $fd
	rst $38                                          ; $6fb8: $ff
	rst $38                                          ; $6fb9: $ff
	inc bc                                           ; $6fba: $03
	ld a, e                                          ; $6fbb: $7b
	sub h                                            ; $6fbc: $94
	ld a, h                                          ; $6fbd: $7c
	db $f4                                           ; $6fbe: $f4
	ld a, b                                          ; $6fbf: $78
	set 3, [hl]                                      ; $6fc0: $cb $de
	inc bc                                           ; $6fc2: $03
	db $dd                                           ; $6fc3: $dd
	ld bc, $ffd9                                     ; $6fc4: $01 $d9 $ff
	add h                                            ; $6fc7: $84
	xor a                                            ; $6fc8: $af
	rla                                              ; $6fc9: $17
	xor e                                            ; $6fca: $ab
	xor a                                            ; $6fcb: $af
	push af                                          ; $6fcc: $f5
	ldh [$c0], a                                     ; $6fcd: $e0 $c0

jr_03e_6fcf:
	ldh a, [$7f]                                     ; $6fcf: $f0 $7f
	cp a                                             ; $6fd1: $bf
	sbc a                                            ; $6fd2: $9f
	rst SubAFromDE                                          ; $6fd3: $df
	adc $c0                                          ; $6fd4: $ce $c0
	ldh [$e8], a                                     ; $6fd6: $e0 $e8
	ei                                               ; $6fd8: $fb
	push af                                          ; $6fd9: $f5
	cp $c8                                           ; $6fda: $fe $c8
	add b                                            ; $6fdc: $80
	ld [$08c8], sp                                   ; $6fdd: $08 $c8 $08
	db $fc                                           ; $6fe0: $fc
	rst $38                                          ; $6fe1: $ff
	rst $38                                          ; $6fe2: $ff
	ld a, c                                          ; $6fe3: $79
	or c                                             ; $6fe4: $b1
	sbc e                                            ; $6fe5: $9b
	nop                                              ; $6fe6: $00
	inc c                                            ; $6fe7: $0c
	cp e                                             ; $6fe8: $bb
	cp e                                             ; $6fe9: $bb
	cp $80                                           ; $6fea: $fe $80
	ld b, e                                          ; $6fec: $43
	db $e3                                           ; $6fed: $e3
	ld hl, $dc9f                                     ; $6fee: $21 $9f $dc
	add b                                            ; $6ff1: $80
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	ld [bc], a                                       ; $6ff4: $02
	ld b, b                                          ; $6ff5: $40
	ld b, b                                          ; $6ff6: $40
	nop                                              ; $6ff7: $00
	jr nc, jr_03e_7002                               ; $6ff8: $30 $08

	nop                                              ; $6ffa: $00
	jr nz, jr_03e_7069                               ; $6ffb: $20 $6c

	ld b, $26                                        ; $6ffd: $06 $26
	ccf                                              ; $6fff: $3f
	rra                                              ; $7000: $1f
	rra                                              ; $7001: $1f

jr_03e_7002:
	rrca                                             ; $7002: $0f
	ld c, a                                          ; $7003: $4f
	rlca                                             ; $7004: $07
	inc bc                                           ; $7005: $03
	dec de                                           ; $7006: $1b
	cp a                                             ; $7007: $bf
	cp a                                             ; $7008: $bf
	ld a, a                                          ; $7009: $7f
	ld d, e                                          ; $700a: $53
	add b                                            ; $700b: $80
	inc hl                                           ; $700c: $23
	ld e, $39                                        ; $700d: $1e $39
	ld [bc], a                                       ; $700f: $02
	ld a, a                                          ; $7010: $7f
	ld a, a                                          ; $7011: $7f
	cp a                                             ; $7012: $bf
	cp h                                             ; $7013: $bc
	ret nz                                           ; $7014: $c0

	pop hl                                           ; $7015: $e1
	ldh [$fc], a                                     ; $7016: $e0 $fc
	add b                                            ; $7018: $80
	ret nz                                           ; $7019: $c0

	ld b, b                                          ; $701a: $40
	ret nz                                           ; $701b: $c0

	ldh [$bd], a                                     ; $701c: $e0 $bd
	ld [$00bc], a                                    ; $701e: $ea $bc $00
	nop                                              ; $7021: $00
	add b                                            ; $7022: $80
	nop                                              ; $7023: $00
	rra                                              ; $7024: $1f
	jp Jump_03e_7efd                                 ; $7025: $c3 $fd $7e


	ld d, l                                          ; $7028: $55
	ld a, [hl+]                                      ; $7029: $2a
	dec b                                            ; $702a: $05
	halt                                             ; $702b: $76
	dec hl                                           ; $702c: $2b
	ld a, l                                          ; $702d: $7d
	ld e, h                                          ; $702e: $5c
	ld l, l                                          ; $702f: $6d
	jr nz, jr_03e_6fcf                               ; $7030: $20 $9d

	rra                                              ; $7032: $1f
	ld d, l                                          ; $7033: $55
	ld [hl], h                                       ; $7034: $74
	add a                                            ; $7035: $87
	ld l, e                                          ; $7036: $6b
	ld h, c                                          ; $7037: $61
	db $dd                                           ; $7038: $dd
	rst $38                                          ; $7039: $ff
	rlca                                             ; $703a: $07
	ldh a, [$9c]                                     ; $703b: $f0 $9c
	ld d, h                                          ; $703d: $54
	xor b                                            ; $703e: $a8
	ld d, b                                          ; $703f: $50
	ld d, e                                          ; $7040: $53
	ldh a, [$97]                                     ; $7041: $f0 $97
	daa                                              ; $7043: $27
	ld [hl+], a                                      ; $7044: $22
	ld h, $26                                        ; $7045: $26 $26
	ld b, $cf                                        ; $7047: $06 $cf
	rst GetHLinHL                                          ; $7049: $cf
	ld c, $75                                        ; $704a: $0e $75
	ld a, [hl+]                                      ; $704c: $2a
	db $dd                                           ; $704d: $dd
	rst SubAFromBC                                          ; $704e: $e7
	add d                                            ; $704f: $82
	jr @+$0b                                         ; $7050: $18 $09

	ld [de], a                                       ; $7052: $12
	rlca                                             ; $7053: $07
	ld bc, $e5f3                                     ; $7054: $01 $f3 $e5
	inc d                                            ; $7057: $14
	dec e                                            ; $7058: $1d
	inc e                                            ; $7059: $1c
	ld [$f303], sp                                   ; $705a: $08 $03 $f3
	ld sp, hl                                        ; $705d: $f9
	ld hl, sp-$1a                                    ; $705e: $f8 $e6
	ei                                               ; $7060: $fb
	db $fd                                           ; $7061: $fd
	inc a                                            ; $7062: $3c
	db $10                                           ; $7063: $10
	rst SubAFromDE                                          ; $7064: $df
	db $fc                                           ; $7065: $fc
	rst $38                                          ; $7066: $ff

Call_03e_7067:
	cp h                                             ; $7067: $bc
	db $fc                                           ; $7068: $fc

jr_03e_7069:
	cp $7e                                           ; $7069: $fe $7e
	adc [hl]                                         ; $706b: $8e
	ldh [$79], a                                     ; $706c: $e0 $79
	rst AddAOntoHL                                          ; $706e: $ef
	ld a, h                                          ; $706f: $7c
	rst SubAFromBC                                          ; $7070: $e7
	sub h                                            ; $7071: $94
	ld sp, wPtrToDataCopyStruct+1                                     ; $7072: $31 $09 $c1
	ld bc, $19f9                                     ; $7075: $01 $f9 $19
	nop                                              ; $7078: $00
	ld hl, sp+$08                                    ; $7079: $f8 $08
	nop                                              ; $707b: $00
	jr c, @-$20                                      ; $707c: $38 $de

	ld hl, sp-$6e                                    ; $707e: $f8 $92
	jr nc, jr_03e_7083                               ; $7080: $30 $01

	db $10                                           ; $7082: $10

jr_03e_7083:
	inc a                                            ; $7083: $3c
	dec c                                            ; $7084: $0d
	nop                                              ; $7085: $00
	ld a, [hl]                                       ; $7086: $7e
	ld e, [hl]                                       ; $7087: $5e
	rst GetHLinHL                                          ; $7088: $cf
	rst $38                                          ; $7089: $ff
	db $e3                                           ; $708a: $e3
	jp $76f0                                         ; $708b: $c3 $f0 $76


	adc [hl]                                         ; $708e: $8e
	sub d                                            ; $708f: $92
	add b                                            ; $7090: $80
	ld [bc], a                                       ; $7091: $02
	dec e                                            ; $7092: $1d
	rst SubAFromBC                                          ; $7093: $e7
	ld d, d                                          ; $7094: $52
	add c                                            ; $7095: $81
	ld b, d                                          ; $7096: $42
	rst $38                                          ; $7097: $ff
	rst $38                                          ; $7098: $ff
	db $fd                                           ; $7099: $fd
	db $e3                                           ; $709a: $e3
	rra                                              ; $709b: $1f
	rst $38                                          ; $709c: $ff
	halt                                             ; $709d: $76
	sub $df                                          ; $709e: $d6 $df
	rst $38                                          ; $70a0: $ff
	sbc h                                            ; $70a1: $9c
	rrca                                             ; $70a2: $0f
	ei                                               ; $70a3: $fb
	ei                                               ; $70a4: $fb
	ld [hl], e                                       ; $70a5: $73
	adc a                                            ; $70a6: $8f
	sbc e                                            ; $70a7: $9b
	ldh a, [$fc]                                     ; $70a8: $f0 $fc
	db $fc                                           ; $70aa: $fc
	ld hl, sp+$46                                    ; $70ab: $f8 $46
	or b                                             ; $70ad: $b0
	call c, Call_03e_7f80                            ; $70ae: $dc $80 $7f
	ld e, $9e                                        ; $70b1: $1e $9e
	ret nz                                           ; $70b3: $c0

	call c, Call_03e_7e7f                            ; $70b4: $dc $7f $7e
	ei                                               ; $70b7: $fb
	add b                                            ; $70b8: $80
	ccf                                              ; $70b9: $3f
	db $ec                                           ; $70ba: $ec
	call nz, $115c                                   ; $70bb: $c4 $5c $11
	dec de                                           ; $70be: $1b
	dec bc                                           ; $70bf: $0b
	dec b                                            ; $70c0: $05
	nop                                              ; $70c1: $00
	pop af                                           ; $70c2: $f1
	ldh a, [$f0]                                     ; $70c3: $f0 $f0
	ld a, [$fcf9]                                    ; $70c5: $fa $f9 $fc
	cp $ff                                           ; $70c8: $fe $ff
	adc h                                            ; $70ca: $8c
	add c                                            ; $70cb: $81
	rrca                                             ; $70cc: $0f
	db $fd                                           ; $70cd: $fd
	ret z                                            ; $70ce: $c8

	add b                                            ; $70cf: $80
	cp c                                             ; $70d0: $b9
	dec e                                            ; $70d1: $1d
	add b                                            ; $70d2: $80
	nop                                              ; $70d3: $00
	ld bc, $f0fe                                     ; $70d4: $01 $fe $f0
	nop                                              ; $70d7: $00
	sub d                                            ; $70d8: $92
	db $10                                           ; $70d9: $10
	cp $0a                                           ; $70da: $fe $0a
	pop af                                           ; $70dc: $f1
	jr nc, jr_03e_70df                               ; $70dd: $30 $00

jr_03e_70df:
	inc b                                            ; $70df: $04
	ld c, b                                          ; $70e0: $48
	cp h                                             ; $70e1: $bc
	dec l                                            ; $70e2: $2d
	dec b                                            ; $70e3: $05
	adc $c0                                          ; $70e4: $ce $c0
	db $fc                                           ; $70e6: $fc
	sub a                                            ; $70e7: $97
	jr nc, @-$7e                                     ; $70e8: $30 $80

	inc d                                            ; $70ea: $14
	nop                                              ; $70eb: $00
	ld bc, $ee4f                                     ; $70ec: $01 $4f $ee
	cpl                                              ; $70ef: $2f
	ld l, a                                          ; $70f0: $6f
	ldh a, [c]                                       ; $70f1: $f2
	add b                                            ; $70f2: $80
	ld de, $80f7                                     ; $70f3: $11 $f7 $80
	jr nc, jr_03e_70fc                               ; $70f6: $30 $04

	add l                                            ; $70f8: $85
	ret c                                            ; $70f9: $d8

	or $b0                                           ; $70fa: $f6 $b0

jr_03e_70fc:
	add $7f                                          ; $70fc: $c6 $7f
	rrca                                             ; $70fe: $0f
	inc bc                                           ; $70ff: $03
	nop                                              ; $7100: $00
	inc a                                            ; $7101: $3c
	ld h, c                                          ; $7102: $61
	rst GetHLinHL                                          ; $7103: $cf
	ld hl, sp-$6d                                    ; $7104: $f8 $93
	nop                                              ; $7106: $00
	dec c                                            ; $7107: $0d
	sub a                                            ; $7108: $97
	and a                                            ; $7109: $a7
	daa                                              ; $710a: $27
	ldh [c], a                                       ; $710b: $e2
	rst SubAFromBC                                          ; $710c: $e7
	inc c                                            ; $710d: $0c
	jp $78f2                                         ; $710e: $c3 $f2 $78


	ld a, b                                          ; $7111: $78
	adc l                                            ; $7112: $8d
	ld hl, sp+$3d                                    ; $7113: $f8 $3d
	ccf                                              ; $7115: $3f
	jr nc, jr_03e_7118                               ; $7116: $30 $00

jr_03e_7118:
	ld d, b                                          ; $7118: $50
	cpl                                              ; $7119: $2f
	ld c, a                                          ; $711a: $4f
	rrca                                             ; $711b: $0f
	sub $a8                                          ; $711c: $d6 $a8
	ret nz                                           ; $711e: $c0

	ldh [$a0], a                                     ; $711f: $e0 $a0
	ret nc                                           ; $7121: $d0

	or b                                             ; $7122: $b0
	ldh a, [$fd]                                     ; $7123: $f0 $fd
	ld [hl], a                                       ; $7125: $77
	ld a, b                                          ; $7126: $78
	sbc e                                            ; $7127: $9b
	or $ca                                           ; $7128: $f6 $ca
	or a                                             ; $712a: $b7
	sbc b                                            ; $712b: $98
	ld [hl], d                                       ; $712c: $72
	or b                                             ; $712d: $b0
	sbc l                                            ; $712e: $9d
	ld b, $0e                                        ; $712f: $06 $0e
	ld a, b                                          ; $7131: $78
	add a                                            ; $7132: $87
	ld l, a                                          ; $7133: $6f
	ld l, d                                          ; $7134: $6a
	ld l, a                                          ; $7135: $6f
	or c                                             ; $7136: $b1
	halt                                             ; $7137: $76
	adc e                                            ; $7138: $8b
	ldh [c], a                                       ; $7139: $e2
	sbc [hl]                                         ; $713a: $9e
	inc l                                            ; $713b: $2c
	jp c, Jump_03e_7f24                              ; $713c: $da $24 $7f

	call nz, $0edb                                   ; $713f: $c4 $db $0e
	add l                                            ; $7142: $85
	scf                                              ; $7143: $37
	ld e, $05                                        ; $7144: $1e $05
	inc sp                                           ; $7146: $33
	cpl                                              ; $7147: $2f
	ld l, $42                                        ; $7148: $2e $42
	dec bc                                           ; $714a: $0b
	rlca                                             ; $714b: $07
	inc bc                                           ; $714c: $03
	ld [$0f08], sp                                   ; $714d: $08 $08 $0f
	inc b                                            ; $7150: $04
	inc b                                            ; $7151: $04
	db $10                                           ; $7152: $10
	ldh [$df], a                                     ; $7153: $e0 $df
	add e                                            ; $7155: $83
	db $10                                           ; $7156: $10
	ldh a, [$1f]                                     ; $7157: $f0 $1f
	nop                                              ; $7159: $00
	add b                                            ; $715a: $80
	rra                                              ; $715b: $1f
	jr nz, jr_03e_71d7                               ; $715c: $20 $79

	dec h                                            ; $715e: $25
	cp $80                                           ; $715f: $fe $80
	add hl, de                                       ; $7161: $19
	ldh [rP1], a                                     ; $7162: $e0 $00
	jr c, jr_03e_7166                                ; $7164: $38 $00

jr_03e_7166:
	ldh a, [rAUD3LEVEL]                              ; $7166: $f0 $1c
	add c                                            ; $7168: $81
	ldh [rAUD2HIGH], a                               ; $7169: $e0 $19
	ld sp, hl                                        ; $716b: $f9
	pop bc                                           ; $716c: $c1
	ld sp, hl                                        ; $716d: $f9
	add hl, bc                                       ; $716e: $09
	inc bc                                           ; $716f: $03
	ld a, a                                          ; $7170: $7f
	ld b, b                                          ; $7171: $40
	ld a, [hl]                                       ; $7172: $7e
	rra                                              ; $7173: $1f
	and h                                            ; $7174: $a4
	rrca                                             ; $7175: $0f
	add e                                            ; $7176: $83
	inc b                                            ; $7177: $04
	add d                                            ; $7178: $82
	cp a                                             ; $7179: $bf
	add c                                            ; $717a: $81
	ldh [$c3], a                                     ; $717b: $e0 $c3
	ldh a, [$fc]                                     ; $717d: $f0 $fc
	ld hl, sp-$70                                    ; $717f: $f8 $90
	db $fc                                           ; $7181: $fc
	ld [de], a                                       ; $7182: $12
	inc b                                            ; $7183: $04
	ld b, c                                          ; $7184: $41
	ld b, $00                                        ; $7185: $06 $00
	jp nz, $0000                                    ; $7187: $c2 $00 $00

	rst AddAOntoHL                                          ; $718a: $ef
	ei                                               ; $718b: $fb
	nop                                              ; $718c: $00
	ld sp, hl                                        ; $718d: $f9
	rst $38                                          ; $718e: $ff
	inc a                                            ; $718f: $3c
	ld a, b                                          ; $7190: $78
	ld d, b                                          ; $7191: $50
	rst SubAFromDE                                          ; $7192: $df
	di                                               ; $7193: $f3
	sbc e                                            ; $7194: $9b
	db $eb                                           ; $7195: $eb
	ld b, e                                          ; $7196: $43
	add a                                            ; $7197: $87
	sbc c                                            ; $7198: $99
	ld [hl], l                                       ; $7199: $75
	add hl, hl                                       ; $719a: $29
	adc l                                            ; $719b: $8d
	rst FarCall                                          ; $719c: $f7
	rst $38                                          ; $719d: $ff
	rst AddAOntoHL                                          ; $719e: $ef
	rst SubAFromBC                                          ; $719f: $e7
	rst $38                                          ; $71a0: $ff
	rst $38                                          ; $71a1: $ff
	cp a                                             ; $71a2: $bf
	rst $38                                          ; $71a3: $ff
	sbc $e0                                          ; $71a4: $de $e0
	ld a, [$f8fe]                                    ; $71a6: $fa $fe $f8
	nop                                              ; $71a9: $00
	ret nz                                           ; $71aa: $c0

	ret nz                                           ; $71ab: $c0

	pop hl                                           ; $71ac: $e1
	rst $38                                          ; $71ad: $ff
	sbc $fc                                          ; $71ae: $de $fc
	adc a                                            ; $71b0: $8f
	ldh a, [$f8]                                     ; $71b1: $f0 $f8
	ldh a, [rP1]                                     ; $71b3: $f0 $00
	inc l                                            ; $71b5: $2c
	ld [hl], $1b                                     ; $71b6: $36 $1b
	cp h                                             ; $71b8: $bc
	rrca                                             ; $71b9: $0f
	rlca                                             ; $71ba: $07
	rrca                                             ; $71bb: $0f
	rst $38                                          ; $71bc: $ff
	db $d3                                           ; $71bd: $d3
	add hl, bc                                       ; $71be: $09
	ld a, h                                          ; $71bf: $7c
	ld a, a                                          ; $71c0: $7f
	ei                                               ; $71c1: $fb
	sbc l                                            ; $71c2: $9d
	ld hl, sp+$02                                    ; $71c3: $f8 $02
	db $db                                           ; $71c5: $db
	rst $38                                          ; $71c6: $ff
	sbc e                                            ; $71c7: $9b
	rlca                                             ; $71c8: $07
	db $fd                                           ; $71c9: $fd
	dec bc                                           ; $71ca: $0b
	ld b, $fb                                        ; $71cb: $06 $fb
	reti                                             ; $71cd: $d9


	rst $38                                          ; $71ce: $ff
	sub d                                            ; $71cf: $92
	reti                                             ; $71d0: $d9


	ld l, a                                          ; $71d1: $6f
	dec c                                            ; $71d2: $0d
	inc e                                            ; $71d3: $1c
	ld a, [hl+]                                      ; $71d4: $2a
	ld d, d                                          ; $71d5: $52
	xor e                                            ; $71d6: $ab

jr_03e_71d7:
	ld d, a                                          ; $71d7: $57
	add a                                            ; $71d8: $87
	cp $f0                                           ; $71d9: $fe $f0
	di                                               ; $71db: $f3
	rst $38                                          ; $71dc: $ff
	ld a, b                                          ; $71dd: $78
	dec l                                            ; $71de: $2d
	sub d                                            ; $71df: $92
	cp $24                                           ; $71e0: $fe $24
	ld [bc], a                                       ; $71e2: $02
	ld de, $39ce                                     ; $71e3: $11 $ce $39
	rst SubAFromBC                                          ; $71e6: $e7
	sbc [hl]                                         ; $71e7: $9e
	rst $38                                          ; $71e8: $ff
	dec de                                           ; $71e9: $1b
	db $fc                                           ; $71ea: $fc
	ldh [rTAC], a                                    ; $71eb: $e0 $07
	ld a, c                                          ; $71ed: $79
	inc c                                            ; $71ee: $0c
	sub h                                            ; $71ef: $94
	sub e                                            ; $71f0: $93
	adc [hl]                                         ; $71f1: $8e
	ld [hl], l                                       ; $71f2: $75
	rst GetHLinHL                                          ; $71f3: $cf
	dec a                                            ; $71f4: $3d
	ld [$a9d5], a                                    ; $71f5: $ea $d5 $a9
	ld h, c                                          ; $71f8: $61

jr_03e_71f9:
	rlca                                             ; $71f9: $07
	dec sp                                           ; $71fa: $3b
	ld [hl], b                                       ; $71fb: $70
	cp a                                             ; $71fc: $bf
	add h                                            ; $71fd: $84
	add l                                            ; $71fe: $85
	ld a, [$afd5]                                    ; $71ff: $fa $d5 $af
	ld d, a                                          ; $7202: $57
	sbc a                                            ; $7203: $9f
	ld l, h                                          ; $7204: $6c
	or c                                             ; $7205: $b1
	rst $38                                          ; $7206: $ff
	ld a, a                                          ; $7207: $7f
	rst $38                                          ; $7208: $ff
	db $fc                                           ; $7209: $fc
	ld sp, hl                                        ; $720a: $f9
	rst SubAFromBC                                          ; $720b: $e7
	sbc a                                            ; $720c: $9f
	ld a, a                                          ; $720d: $7f
	ld e, l                                          ; $720e: $5d
	or [hl]                                          ; $720f: $b6
	cp b                                             ; $7210: $b8
	di                                               ; $7211: $f3
	add [hl]                                         ; $7212: $86

jr_03e_7213:
	dec de                                           ; $7213: $1b
	ld l, a                                          ; $7214: $6f
	rst SubAFromDE                                          ; $7215: $df
	di                                               ; $7216: $f3
	rst GetHLinHL                                          ; $7217: $cf
	rra                                              ; $7218: $1f
	ld a, e                                          ; $7219: $7b
	xor $99                                          ; $721a: $ee $99
	ldh a, [$e0]                                     ; $721c: $f0 $e0
	adc h                                            ; $721e: $8c
	jr nc, jr_03e_71f9                               ; $721f: $30 $d8

	ld hl, sp+$77                                    ; $7221: $f8 $77
	cp $7b                                           ; $7223: $fe $7b
	ld h, c                                          ; $7225: $61
	sbc [hl]                                         ; $7226: $9e
	or a                                             ; $7227: $b7
	db $dd                                           ; $7228: $dd
	scf                                              ; $7229: $37
	sbc e                                            ; $722a: $9b
	ld h, b                                          ; $722b: $60
	db $10                                           ; $722c: $10
	ld [$fd04], sp                                   ; $722d: $08 $04 $fd
	ld a, [hl]                                       ; $7230: $7e
	and b                                            ; $7231: $a0

Call_03e_7232:
	ld a, a                                          ; $7232: $7f
	ld h, [hl]                                       ; $7233: $66
	ld [hl], h                                       ; $7234: $74
	ld a, h                                          ; $7235: $7c
	ld l, [hl]                                       ; $7236: $6e
	cp d                                             ; $7237: $ba
	sbc l                                            ; $7238: $9d
	ld b, b                                          ; $7239: $40
	jr nz, @+$4c                                     ; $723a: $20 $4a

	xor b                                            ; $723c: $a8
	ld hl, sp-$24                                    ; $723d: $f8 $dc
	ld h, $df                                        ; $723f: $26 $df
	ld h, [hl]                                       ; $7241: $66
	sbc [hl]                                         ; $7242: $9e
	ld h, h                                          ; $7243: $64
	jp c, $800c                                      ; $7244: $da $0c $80

	ld c, $36                                        ; $7247: $0e $36
	ld sp, $2816                                     ; $7249: $31 $16 $28
	jr nc, jr_03e_726f                               ; $724c: $30 $21

	dec sp                                           ; $724e: $3b
	ld a, [hl-]                                      ; $724f: $3a
	nop                                              ; $7250: $00
	inc bc                                           ; $7251: $03
	rrca                                             ; $7252: $0f
	inc c                                            ; $7253: $0c
	nop                                              ; $7254: $00
	ld e, $0c                                        ; $7255: $1e $0c
	ld bc, $01cc                                     ; $7257: $01 $cc $01
	sbc c                                            ; $725a: $99
	ld [$8249], sp                                   ; $725b: $08 $49 $82
	add e                                            ; $725e: $83
	dec d                                            ; $725f: $15
	inc bc                                           ; $7260: $03
	cp $00                                           ; $7261: $fe $00
	inc bc                                           ; $7263: $03
	ld [hl], $7c                                     ; $7264: $36 $7c
	add b                                            ; $7266: $80
	ld a, h                                          ; $7267: $7c
	db $e3                                           ; $7268: $e3
	ld bc, $03a6                                     ; $7269: $01 $a6 $03
	inc c                                            ; $726c: $0c
	sub c                                            ; $726d: $91
	pop bc                                           ; $726e: $c1

jr_03e_726f:
	ld hl, $ff43                                     ; $726f: $21 $43 $ff
	ld e, c                                          ; $7272: $59
	rst $38                                          ; $7273: $ff
	di                                               ; $7274: $f3
	ld l, a                                          ; $7275: $6f
	ld a, a                                          ; $7276: $7f
	rst GetHLinHL                                          ; $7277: $cf
	cp a                                             ; $7278: $bf
	sbc d                                            ; $7279: $9a
	ld b, $c1                                        ; $727a: $06 $c1
	ld h, b                                          ; $727c: $60
	ld bc, $60e7                                     ; $727d: $01 $e7 $60
	dec bc                                           ; $7280: $0b
	rst SubAFromBC                                          ; $7281: $e7
	ld sp, hl                                        ; $7282: $f9
	cp $9f                                           ; $7283: $fe $9f
	adc $80                                          ; $7285: $ce $80
	ld hl, sp-$63                                    ; $7287: $f8 $9d
	db $f4                                           ; $7289: $f4
	ld a, a                                          ; $728a: $7f
	jp Jump_03e_7838                                 ; $728b: $c3 $38 $78


	cp $1c                                           ; $728e: $fe $1c
	ld a, [de]                                       ; $7290: $1a
	jr nz, jr_03e_7213                               ; $7291: $20 $80

	rst $38                                          ; $7293: $ff
	rlca                                             ; $7294: $07
	add b                                            ; $7295: $80
	ld bc, $e103                                     ; $7296: $01 $03 $e1
	rst $38                                          ; $7299: $ff
	and e                                            ; $729a: $a3
	db $d3                                           ; $729b: $d3
	and a                                            ; $729c: $a7
	rst SubAFromDE                                          ; $729d: $df
	cp a                                             ; $729e: $bf
	sbc a                                            ; $729f: $9f
	sbc a                                            ; $72a0: $9f
	cp a                                             ; $72a1: $bf
	rst SubAFromDE                                          ; $72a2: $df
	xor a                                            ; $72a3: $af
	rst SubAFromDE                                          ; $72a4: $df
	cp a                                             ; $72a5: $bf
	sbc [hl]                                         ; $72a6: $9e
	rst SubAFromDE                                          ; $72a7: $df
	sbc $ff                                          ; $72a8: $de $ff
	ld a, a                                          ; $72aa: $7f
	ld c, [hl]                                       ; $72ab: $4e
	sub h                                            ; $72ac: $94
	ldh [$ef], a                                     ; $72ad: $e0 $ef
	push af                                          ; $72af: $f5
	ld [$e9eb], a                                    ; $72b0: $ea $eb $e9
	ld hl, sp-$20                                    ; $72b3: $f8 $e0
	ldh [$f8], a                                     ; $72b5: $e0 $f8
	rst AddAOntoHL                                          ; $72b7: $ef
	sbc $f7                                          ; $72b8: $de $f7
	sub e                                            ; $72ba: $93
	rst SubAFromHL                                          ; $72bb: $d7
	db $eb                                           ; $72bc: $eb
	ld [hl], b                                       ; $72bd: $70
	add c                                            ; $72be: $81
	ld a, a                                          ; $72bf: $7f
	add a                                            ; $72c0: $87
	set 0, a                                         ; $72c1: $cb $c7
	ccf                                              ; $72c3: $3f
	ccf                                              ; $72c4: $3f
	rrca                                             ; $72c5: $0f
	ld a, a                                          ; $72c6: $7f
	ld a, d                                          ; $72c7: $7a
	and e                                            ; $72c8: $a3
	sbc c                                            ; $72c9: $99
	cp a                                             ; $72ca: $bf
	cp $55                                           ; $72cb: $fe $55
	cp a                                             ; $72cd: $bf
	db $fc                                           ; $72ce: $fc
	rst $38                                          ; $72cf: $ff
	ld [hl], b                                       ; $72d0: $70
	db $dd                                           ; $72d1: $dd
	sub d                                            ; $72d2: $92
	ret nz                                           ; $72d3: $c0

	rst $38                                          ; $72d4: $ff
	rst $38                                          ; $72d5: $ff
	adc a                                            ; $72d6: $8f
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	xor d                                            ; $72d9: $aa
	rst $38                                          ; $72da: $ff
	sub l                                            ; $72db: $95
	ld l, a                                          ; $72dc: $6f
	ld hl, sp-$01                                    ; $72dd: $f8 $ff
	ld h, d                                          ; $72df: $62
	ld a, d                                          ; $72e0: $7a
	or b                                             ; $72e1: $b0
	sbc l                                            ; $72e2: $9d
	ld a, a                                          ; $72e3: $7f
	add b                                            ; $72e4: $80
	ld a, b                                          ; $72e5: $78
	sub c                                            ; $72e6: $91
	sub [hl]                                         ; $72e7: $96
	ld bc, $d528                                     ; $72e8: $01 $28 $d5
	rst $38                                          ; $72eb: $ff
	jp z, $fa79                                      ; $72ec: $ca $79 $fa

	rst $38                                          ; $72ef: $ff
	rra                                              ; $72f0: $1f
	sbc $ff                                          ; $72f1: $de $ff
	sbc [hl]                                         ; $72f3: $9e
	ccf                                              ; $72f4: $3f
	ld a, e                                          ; $72f5: $7b
	rst AddAOntoHL                                          ; $72f6: $ef
	sub a                                            ; $72f7: $97
	rst $38                                          ; $72f8: $ff
	ld a, l                                          ; $72f9: $7d
	ld [$aa55], a                                    ; $72fa: $ea $55 $aa
	cp $25                                           ; $72fd: $fe $25
	and $78                                          ; $72ff: $e6 $78
	ld hl, $ffdf                                     ; $7301: $21 $df $ff
	sub b                                            ; $7304: $90
	ld bc, $ffc3                                     ; $7305: $01 $c3 $ff
	rst $38                                          ; $7308: $ff
	ld d, a                                          ; $7309: $57
	cp e                                             ; $730a: $bb
	rst AddAOntoHL                                          ; $730b: $ef
	cp b                                             ; $730c: $b8
	pop hl                                           ; $730d: $e1
	add [hl]                                         ; $730e: $86
	dec e                                            ; $730f: $1d
	ld a, b                                          ; $7310: $78

jr_03e_7311:
	ld sp, hl                                        ; $7311: $f9
	rst SubAFromBC                                          ; $7312: $e7
	sbc [hl]                                         ; $7313: $9e
	ld a, e                                          ; $7314: $7b
	or b                                             ; $7315: $b0
	add b                                            ; $7316: $80
	cp $f7                                           ; $7317: $fe $f7
	jp $358d                                         ; $7319: $c3 $8d $35


	ld [hl], c                                       ; $731c: $71
	or b                                             ; $731d: $b0
	ld b, b                                          ; $731e: $40
	pop af                                           ; $731f: $f1
	halt                                             ; $7320: $76
	rst $38                                          ; $7321: $ff
	cp $fa                                           ; $7322: $fe $fa
	xor $cf                                          ; $7324: $ee $cf
	cp a                                             ; $7326: $bf
	ld c, $89                                        ; $7327: $0e $89
	ld l, a                                          ; $7329: $6f
	xor a                                            ; $732a: $af
	xor a                                            ; $732b: $af
	sbc [hl]                                         ; $732c: $9e
	sbc h                                            ; $732d: $9c
	or d                                             ; $732e: $b2
	add h                                            ; $732f: $84
	pop de                                           ; $7330: $d1
	sub b                                            ; $7331: $90
	ld d, b                                          ; $7332: $50
	ld d, b                                          ; $7333: $50
	ld h, c                                          ; $7334: $61
	ld h, e                                          ; $7335: $63
	adc h                                            ; $7336: $8c
	ld c, l                                          ; $7337: $4d
	ld a, e                                          ; $7338: $7b
	xor $d8                                          ; $7339: $ee $d8
	ld hl, sp-$68                                    ; $733b: $f8 $98
	ld a, b                                          ; $733d: $78
	sbc b                                            ; $733e: $98
	jr nc, jr_03e_7311                               ; $733f: $30 $d0

	ldh a, [$37]                                     ; $7341: $f0 $37
	scf                                              ; $7343: $37
	ld [hl], a                                       ; $7344: $77
	or a                                             ; $7345: $b7
	ld [hl], a                                       ; $7346: $77
	rst $38                                          ; $7347: $ff
	ccf                                              ; $7348: $3f
	ccf                                              ; $7349: $3f

jr_03e_734a:
	ld sp, hl                                        ; $734a: $f9
	reti                                             ; $734b: $d9


	rst $38                                          ; $734c: $ff
	ld a, d                                          ; $734d: $7a
	or c                                             ; $734e: $b1
	sbc l                                            ; $734f: $9d
	ld [bc], a                                       ; $7350: $02
	ld bc, $7afe                                     ; $7351: $01 $fe $7a
	or c                                             ; $7354: $b1
	ld a, b                                          ; $7355: $78
	ldh a, [c]                                       ; $7356: $f2
	halt                                             ; $7357: $76
	or b                                             ; $7358: $b0
	sbc $01                                          ; $7359: $de $01
	ld e, d                                          ; $735b: $5a
	or b                                             ; $735c: $b0
	sub [hl]                                         ; $735d: $96
	inc d                                            ; $735e: $14
	call c, $0e86                                    ; $735f: $dc $86 $0e
	inc b                                            ; $7362: $04
	sbc [hl]                                         ; $7363: $9e
	ld a, h                                          ; $7364: $7c
	xor $4e                                          ; $7365: $ee $4e
	db $dd                                           ; $7367: $dd
	ld c, $de                                        ; $7368: $0e $de
	ld a, h                                          ; $736a: $7c
	adc d                                            ; $736b: $8a
	jr nz, jr_03e_7385                               ; $736c: $20 $17

	ld [$0d1c], sp                                   ; $736e: $08 $1c $0d
	ld e, $0e                                        ; $7371: $1e $0e
	nop                                              ; $7373: $00

jr_03e_7374:
	rra                                              ; $7374: $1f
	jr @+$12                                         ; $7375: $18 $10

	nop                                              ; $7377: $00
	ld [de], a                                       ; $7378: $12
	ld bc, $0001                                     ; $7379: $01 $01 $00
	adc b                                            ; $737c: $88
	ldh a, [$d5]                                     ; $737d: $f0 $d5
	inc d                                            ; $737f: $14
	jr nz, jr_03e_73fd                               ; $7380: $20 $7b

	jp nc, $e17d                                     ; $7382: $d2 $7d $e1

jr_03e_7385:
	add b                                            ; $7385: $80
	ld l, $18                                        ; $7386: $2e $18
	jr nc, jr_03e_734a                               ; $7388: $30 $c0

	add b                                            ; $738a: $80
	nop                                              ; $738b: $00
	ld d, [hl]                                       ; $738c: $56
	ld c, l                                          ; $738d: $4d
	add hl, bc                                       ; $738e: $09

jr_03e_738f:
	ld [hl], $25                                     ; $738f: $36 $25
	dec bc                                           ; $7391: $0b
	inc e                                            ; $7392: $1c
	dec b                                            ; $7393: $05
	ld sp, hl                                        ; $7394: $f9
	add e                                            ; $7395: $83
	rlca                                             ; $7396: $07
	add hl, bc                                       ; $7397: $09
	add hl, de                                       ; $7398: $19
	rlca                                             ; $7399: $07
	inc bc                                           ; $739a: $03
	add hl, sp                                       ; $739b: $39
	jp nz, $0046                                     ; $739c: $c2 $46 $00

	sub b                                            ; $739f: $90
	sub b                                            ; $73a0: $90
	add b                                            ; $73a1: $80
	jr nz, jr_03e_7374                               ; $73a2: $20 $d0

	rst $38                                          ; $73a4: $ff
	sbc e                                            ; $73a5: $9b
	add e                                            ; $73a6: $83
	add c                                            ; $73a7: $81
	ldh [$e0], a                                     ; $73a8: $e0 $e0
	ld a, d                                          ; $73aa: $7a
	ld c, d                                          ; $73ab: $4a
	adc c                                            ; $73ac: $89
	ld [hl], b                                       ; $73ad: $70
	sbc h                                            ; $73ae: $9c
	ld c, a                                          ; $73af: $4f
	ld a, e                                          ; $73b0: $7b
	jr nz, jr_03e_73bb                               ; $73b1: $20 $08

	inc bc                                           ; $73b3: $03
	nop                                              ; $73b4: $00
	add e                                            ; $73b5: $83
	ld h, e                                          ; $73b6: $63
	or b                                             ; $73b7: $b0
	nop                                              ; $73b8: $00
	rra                                              ; $73b9: $1f
	rlca                                             ; $73ba: $07

jr_03e_73bb:
	nop                                              ; $73bb: $00
	nop                                              ; $73bc: $00
	cp a                                             ; $73bd: $bf
	cp a                                             ; $73be: $bf
	rst $38                                          ; $73bf: $ff
	ccf                                              ; $73c0: $3f
	ld c, a                                          ; $73c1: $4f
	cp $7b                                           ; $73c2: $fe $7b
	dec [hl]                                         ; $73c4: $35
	ld [hl], a                                       ; $73c5: $77
	rrca                                             ; $73c6: $0f
	ld a, a                                          ; $73c7: $7f
	add a                                            ; $73c8: $87
	sub a                                            ; $73c9: $97
	nop                                              ; $73ca: $00
	jp hl                                            ; $73cb: $e9


	rst $38                                          ; $73cc: $ff
	db $ec                                           ; $73cd: $ec
	db $e3                                           ; $73ce: $e3
	xor $07                                          ; $73cf: $ee $07
	cp b                                             ; $73d1: $b8
	ld a, c                                          ; $73d2: $79
	ld [hl], e                                       ; $73d3: $73
	sub d                                            ; $73d4: $92
	db $e3                                           ; $73d5: $e3
	ldh [$f1], a                                     ; $73d6: $e0 $f1
	rst $38                                          ; $73d8: $ff
	ld b, a                                          ; $73d9: $47
	nop                                              ; $73da: $00
	res 2, a                                         ; $73db: $cb $97
	dec hl                                           ; $73dd: $2b
	dec h                                            ; $73de: $25
	dec hl                                           ; $73df: $2b
	cp $00                                           ; $73e0: $fe $00
	ld [hl], a                                       ; $73e2: $77
	ld h, l                                          ; $73e3: $65
	halt                                             ; $73e4: $76
	and c                                            ; $73e5: $a1
	ld a, e                                          ; $73e6: $7b
	sbc $7f                                          ; $73e7: $de $7f
	cp $9c                                           ; $73e9: $fe $9c
	cp $0b                                           ; $73eb: $fe $0b
	ld d, [hl]                                       ; $73ed: $56
	ld [hl], a                                       ; $73ee: $77
	jr c, jr_03e_738f                                ; $73ef: $38 $9e

	add b                                            ; $73f1: $80
	ld [hl], l                                       ; $73f2: $75

jr_03e_73f3:
	ld c, e                                          ; $73f3: $4b
	sub l                                            ; $73f4: $95
	dec b                                            ; $73f5: $05
	dec bc                                           ; $73f6: $0b
	dec l                                            ; $73f7: $2d
	or e                                             ; $73f8: $b3
	rst GetHLinHL                                          ; $73f9: $cf
	ld a, $fa                                        ; $73fa: $3e $fa
	db $d3                                           ; $73fc: $d3

jr_03e_73fd:
	inc bc                                           ; $73fd: $03
	rlca                                             ; $73fe: $07
	ld a, c                                          ; $73ff: $79
	ret nc                                           ; $7400: $d0

	sub h                                            ; $7401: $94
	rst $38                                          ; $7402: $ff
	db $fd                                           ; $7403: $fd
	db $fc                                           ; $7404: $fc
	xor a                                            ; $7405: $af
	ld a, [$dfff]                                    ; $7406: $fa $ff $df
	xor a                                            ; $7409: $af
	sub a                                            ; $740a: $97
	xor a                                            ; $740b: $af
	sub a                                            ; $740c: $97
	ld [hl], a                                       ; $740d: $77
	db $d3                                           ; $740e: $d3
	db $dd                                           ; $740f: $dd
	ld a, a                                          ; $7410: $7f
	sub l                                            ; $7411: $95
	jp hl                                            ; $7412: $e9


	ld l, e                                          ; $7413: $6b
	sbc $b8                                          ; $7414: $de $b8
	ret nc                                           ; $7416: $d0

	and h                                            ; $7417: $a4
	db $f4                                           ; $7418: $f4
	add b                                            ; $7419: $80
	rst FarCall                                          ; $741a: $f7
	rst FarCall                                          ; $741b: $f7
	sbc $ff                                          ; $741c: $de $ff
	rst SubAFromDE                                          ; $741e: $df
	db $db                                           ; $741f: $db
	ld a, [hl]                                       ; $7420: $7e
	adc d                                            ; $7421: $8a

Call_03e_7422:
	ld c, e                                          ; $7422: $4b
	nop                                              ; $7423: $00
	add b                                            ; $7424: $80
	dec bc                                           ; $7425: $0b
	rla                                              ; $7426: $17

jr_03e_7427:
	ld e, l                                          ; $7427: $5d
	cp l                                             ; $7428: $bd
	db $fc                                           ; $7429: $fc
	add sp, $20                                      ; $742a: $e8 $20
	ld d, b                                          ; $742c: $50
	rst FarCall                                          ; $742d: $f7
	rst AddAOntoHL                                          ; $742e: $ef
	cp [hl]                                          ; $742f: $be
	ld a, e                                          ; $7430: $7b
	rst SubAFromBC                                          ; $7431: $e7
	rst SubAFromDE                                          ; $7432: $df
	rst $38                                          ; $7433: $ff
	rst AddAOntoHL                                          ; $7434: $ef
	and a                                            ; $7435: $a7
	xor a                                            ; $7436: $af
	rra                                              ; $7437: $1f
	rra                                              ; $7438: $1f
	ccf                                              ; $7439: $3f
	ld a, [hl]                                       ; $743a: $7e
	ld sp, hl                                        ; $743b: $f9
	ldh a, [c]                                       ; $743c: $f2
	ret c                                            ; $743d: $d8

	ld [hl], b                                       ; $743e: $70
	ldh [$e0], a                                     ; $743f: $e0 $e0
	ret nz                                           ; $7441: $c0

	add c                                            ; $7442: $81
	ld b, $8e                                        ; $7443: $06 $8e
	dec c                                            ; $7445: $0d
	ret nc                                           ; $7446: $d0

	db $fc                                           ; $7447: $fc
	call nc, $18f0                                   ; $7448: $d4 $f0 $18
	ld [hl], b                                       ; $744b: $70
	sub b                                            ; $744c: $90
	ld a, h                                          ; $744d: $7c
	ccf                                              ; $744e: $3f
	scf                                              ; $744f: $37
	ccf                                              ; $7450: $3f
	ccf                                              ; $7451: $3f
	rst FarCall                                          ; $7452: $f7
	cp a                                             ; $7453: $bf
	ld a, a                                          ; $7454: $7f
	or a                                             ; $7455: $b7
	ld b, [hl]                                       ; $7456: $46
	ret nz                                           ; $7457: $c0

	ld b, $b0                                        ; $7458: $06 $b0
	adc a                                            ; $745a: $8f
	or [hl]                                          ; $745b: $b6
	cp h                                             ; $745c: $bc
	jr jr_03e_7427                                   ; $745d: $18 $c8

	ld hl, sp+$30                                    ; $745f: $f8 $30
	jr jr_03e_73f3                                   ; $7461: $18 $90

	ld l, h                                          ; $7463: $6c
	ld l, h                                          ; $7464: $6c
	db $ec                                           ; $7465: $ec
	ld a, b                                          ; $7466: $78
	ld e, b                                          ; $7467: $58
	ret c                                            ; $7468: $d8

	ldh a, [$f0]                                     ; $7469: $f0 $f0
	ldh a, [c]                                       ; $746b: $f2
	ld [hl], a                                       ; $746c: $77
	push de                                          ; $746d: $d5
	cp $9e                                           ; $746e: $fe $9e
	ld [bc], a                                       ; $7470: $02
	ld a, [$3c80]                                    ; $7471: $fa $80 $3c
	rst $38                                          ; $7474: $ff
	db $10                                           ; $7475: $10
	inc [hl]                                         ; $7476: $34
	dec b                                            ; $7477: $05
	inc bc                                           ; $7478: $03
	inc e                                            ; $7479: $1c
	ld [hl+], a                                      ; $747a: $22
	add hl, bc                                       ; $747b: $09
	jr jr_03e_748d                                   ; $747c: $18 $0f

	dec bc                                           ; $747e: $0b
	dec sp                                           ; $747f: $3b
	rlca                                             ; $7480: $07
	inc bc                                           ; $7481: $03
	add hl, de                                       ; $7482: $19
	rlca                                             ; $7483: $07
	rlca                                             ; $7484: $07
	ld b, b                                          ; $7485: $40
	ret nc                                           ; $7486: $d0

	sub b                                            ; $7487: $90
	nop                                              ; $7488: $00
	and b                                            ; $7489: $a0
	ret nz                                           ; $748a: $c0

	ld [bc], a                                       ; $748b: $02
	inc b                                            ; $748c: $04

jr_03e_748d:
	add b                                            ; $748d: $80
	ldh [$e0], a                                     ; $748e: $e0 $e0
	add b                                            ; $7490: $80
	ret nz                                           ; $7491: $c0

	sbc h                                            ; $7492: $9c
	ldh [hLCDCIntHandlerIdx], a                                     ; $7493: $e0 $81
	jp $9efb                                         ; $7495: $c3 $fb $9e


	ld [$cf6b], sp                                   ; $7498: $08 $6b $cf
	ld a, h                                          ; $749b: $7c
	ld l, $50                                        ; $749c: $2e $50
	nop                                              ; $749e: $00
	sub l                                            ; $749f: $95
	ld b, h                                          ; $74a0: $44
	ld b, [hl]                                       ; $74a1: $46
	ld h, [hl]                                       ; $74a2: $66
	ld h, [hl]                                       ; $74a3: $66
	ld h, a                                          ; $74a4: $67
	ld [hl], a                                       ; $74a5: $77
	ld [hl], a                                       ; $74a6: $77
	ld [hl], e                                       ; $74a7: $73
	ld d, l                                          ; $74a8: $55
	ld d, h                                          ; $74a9: $54
	sbc $44                                          ; $74aa: $de $44
	sbc [hl]                                         ; $74ac: $9e
	ld b, [hl]                                       ; $74ad: $46
	ld [hl], a                                       ; $74ae: $77
	or $95                                           ; $74af: $f6 $95
	ld d, a                                          ; $74b1: $57
	ld [hl], l                                       ; $74b2: $75
	ld b, h                                          ; $74b3: $44
	ld b, h                                          ; $74b4: $44
	ld b, e                                          ; $74b5: $43
	ld [hl], $67                                     ; $74b6: $36 $67
	ld [hl], a                                       ; $74b8: $77
	halt                                             ; $74b9: $76
	ld h, e                                          ; $74ba: $63
	ld [hl], a                                       ; $74bb: $77
	or $77                                           ; $74bc: $f6 $77
	db $ec                                           ; $74be: $ec
	ld [hl], a                                       ; $74bf: $77
	or $de                                           ; $74c0: $f6 $de
	inc sp                                           ; $74c2: $33
	sbc [hl]                                         ; $74c3: $9e
	ld b, h                                          ; $74c4: $44
	ld [hl], a                                       ; $74c5: $77
	or $9d                                           ; $74c6: $f6 $9d
	dec [hl]                                         ; $74c8: $35
	ld d, e                                          ; $74c9: $53
	sbc $33                                          ; $74ca: $de $33
	sbc [hl]                                         ; $74cc: $9e
	inc [hl]                                         ; $74cd: $34
	sbc $66                                          ; $74ce: $de $66
	sbc $77                                          ; $74d0: $de $77
	db $dd                                           ; $74d2: $dd
	inc sp                                           ; $74d3: $33
	ld a, e                                          ; $74d4: $7b
	pop bc                                           ; $74d5: $c1
	ld l, e                                          ; $74d6: $6b
	or $9d                                           ; $74d7: $f6 $9d
	inc [hl]                                         ; $74d9: $34
	ld b, a                                          ; $74da: $47
	db $dd                                           ; $74db: $dd
	ld [hl], a                                       ; $74dc: $77
	sbc [hl]                                         ; $74dd: $9e
	ld [hl], e                                       ; $74de: $73
	ld h, e                                          ; $74df: $63
	push af                                          ; $74e0: $f5
	ld [hl], e                                       ; $74e1: $73
	or $9e                                           ; $74e2: $f6 $9e
	inc sp                                           ; $74e4: $33
	ld [hl], a                                       ; $74e5: $77
	or $db                                           ; $74e6: $f6 $db
	inc sp                                           ; $74e8: $33
	sbc [hl]                                         ; $74e9: $9e
	inc [hl]                                         ; $74ea: $34
	sbc $77                                          ; $74eb: $de $77

jr_03e_74ed:
	db $dd                                           ; $74ed: $dd
	adc c                                            ; $74ee: $89
	sbc [hl]                                         ; $74ef: $9e
	rst $38                                          ; $74f0: $ff
	sbc $fe                                          ; $74f1: $de $fe
	rst SubAFromDE                                          ; $74f3: $df
	db $fc                                           ; $74f4: $fc
	rst $38                                          ; $74f5: $ff
	db $db                                           ; $74f6: $db
	rst $38                                          ; $74f7: $ff
	sbc l                                            ; $74f8: $9d
	ld bc, $de00                                     ; $74f9: $01 $00 $de
	rst SubAFromDE                                          ; $74fc: $df
	sub e                                            ; $74fd: $93
	cp a                                             ; $74fe: $bf
	cp [hl]                                          ; $74ff: $be
	ld a, [hl]                                       ; $7500: $7e
	ld a, l                                          ; $7501: $7d
	nop                                              ; $7502: $00
	dec a                                            ; $7503: $3d
	dec a                                            ; $7504: $3d
	dec sp                                           ; $7505: $3b
	ld a, e                                          ; $7506: $7b
	ld a, e                                          ; $7507: $7b
	rst FarCall                                          ; $7508: $f7
	or $6b                                           ; $7509: $f6 $6b
	add sp, -$62                                     ; $750b: $e8 $9e
	rst $38                                          ; $750d: $ff
	ld h, a                                          ; $750e: $67
	ld hl, sp-$62                                    ; $750f: $f8 $9e
	ld a, a                                          ; $7511: $7f
	sbc $fe                                          ; $7512: $de $fe
	rst SubAFromDE                                          ; $7514: $df
	rst $38                                          ; $7515: $ff
	sbc h                                            ; $7516: $9c
	db $fd                                           ; $7517: $fd
	db $fc                                           ; $7518: $fc
	ldh a, [$d9]                                     ; $7519: $f0 $d9
	rst $38                                          ; $751b: $ff
	sbc $c8                                          ; $751c: $de $c8
	sbc l                                            ; $751e: $9d
	ld c, c                                          ; $751f: $49
	ld h, l                                          ; $7520: $65
	sbc $e4                                          ; $7521: $de $e4
	rst SubAFromDE                                          ; $7523: $df
	rst SubAFromHL                                          ; $7524: $d7
	sbc h                                            ; $7525: $9c
	rst SubAFromBC                                          ; $7526: $e7
	and $ea                                          ; $7527: $e6 $ea
	sbc $7b                                          ; $7529: $de $7b
	add a                                            ; $752b: $87
	db $ec                                           ; $752c: $ec
	rst $38                                          ; $752d: $ff
	db $fc                                           ; $752e: $fc
	adc $c7                                          ; $752f: $ce $c7
	call c, $fefc                                    ; $7531: $dc $fc $fe
	rst $38                                          ; $7534: $ff
	db $fc                                           ; $7535: $fc
	db $fc                                           ; $7536: $fc
	rst $38                                          ; $7537: $ff
	ld a, a                                          ; $7538: $7f
	ld a, a                                          ; $7539: $7f
	rst $38                                          ; $753a: $ff
	rst $38                                          ; $753b: $ff
	pop af                                           ; $753c: $f1
	ld a, l                                          ; $753d: $7d
	inc bc                                           ; $753e: $03
	add c                                            ; $753f: $81
	db $fd                                           ; $7540: $fd
	dec d                                            ; $7541: $15
	nop                                              ; $7542: $00
	ld a, [hl-]                                      ; $7543: $3a
	ld a, e                                          ; $7544: $7b
	and h                                            ; $7545: $a4
	sbc [hl]                                         ; $7546: $9e
	inc bc                                           ; $7547: $03
	db $dd                                           ; $7548: $dd
	rst $38                                          ; $7549: $ff
	sub a                                            ; $754a: $97
	db $fd                                           ; $754b: $fd
	db $ed                                           ; $754c: $ed
	db $ed                                           ; $754d: $ed
	cp l                                             ; $754e: $bd
	cp l                                             ; $754f: $bd
	add l                                            ; $7550: $85
	dec h                                            ; $7551: $25
	dec h                                            ; $7552: $25
	reti                                             ; $7553: $d9


jr_03e_7554:
	cp $80                                           ; $7554: $fe $80
	add sp, -$0b                                     ; $7556: $e8 $f5
	ld a, [$fafd]                                    ; $7558: $fa $fd $fa
	db $fc                                           ; $755b: $fc
	ld a, [$17fd]                                    ; $755c: $fa $fd $17
	ld a, [bc]                                       ; $755f: $0a
	dec b                                            ; $7560: $05
	ld [bc], a                                       ; $7561: $02
	dec b                                            ; $7562: $05
	inc bc                                           ; $7563: $03
	dec b                                            ; $7564: $05
	ld [bc], a                                       ; $7565: $02
	ld hl, $8041                                     ; $7566: $21 $41 $80
	ld b, b                                          ; $7569: $40
	add b                                            ; $756a: $80
	jr nz, jr_03e_74ed                               ; $756b: $20 $80

	ld b, b                                          ; $756d: $40
	sbc $be                                          ; $756e: $de $be
	ld a, a                                          ; $7570: $7f
	cp a                                             ; $7571: $bf
	ld a, a                                          ; $7572: $7f
	rst SubAFromDE                                          ; $7573: $df
	ld a, a                                          ; $7574: $7f
	adc [hl]                                         ; $7575: $8e
	cp a                                             ; $7576: $bf
	push bc                                          ; $7577: $c5
	set 2, a                                         ; $7578: $cb $d7
	ld [$ead5], a                                    ; $757a: $ea $d5 $ea
	db $dd                                           ; $757d: $dd
	ld [$343a], a                                    ; $757e: $ea $3a $34
	jr z, jr_03e_7597                                ; $7581: $28 $14

	jr z, jr_03e_7595                                ; $7583: $28 $10

	jr nz, jr_03e_7597                               ; $7585: $20 $10

	reti                                             ; $7587: $d9


	ld b, b                                          ; $7588: $40
	reti                                             ; $7589: $d9


	ccf                                              ; $758a: $3f
	sbc l                                            ; $758b: $9d
	rst $38                                          ; $758c: $ff
	add b                                            ; $758d: $80
	call c, $9e9f                                    ; $758e: $dc $9f $9e
	sbc d                                            ; $7591: $9a
	ret c                                            ; $7592: $d8

	rst $38                                          ; $7593: $ff
	ld [hl], e                                       ; $7594: $73

Jump_03e_7595:
jr_03e_7595:
	ld d, [hl]                                       ; $7595: $56
	sbc l                                            ; $7596: $9d

jr_03e_7597:
	db $fd                                           ; $7597: $fd
	xor d                                            ; $7598: $aa
	reti                                             ; $7599: $d9


	rst $38                                          ; $759a: $ff
	sbc [hl]                                         ; $759b: $9e
	cp $7b                                           ; $759c: $fe $7b
	ldh a, [$9c]                                     ; $759e: $f0 $9c
	push de                                          ; $75a0: $d5
	xor d                                            ; $75a1: $aa
	ld d, l                                          ; $75a2: $55
	ld h, e                                          ; $75a3: $63
	ldh a, [hDisp1_WY]                                     ; $75a4: $f0 $95
	rlca                                             ; $75a6: $07
	nop                                              ; $75a7: $00
	rst AddAOntoHL                                          ; $75a8: $ef
	xor b                                            ; $75a9: $a8
	jr z, jr_03e_7554                                ; $75aa: $28 $a8

	jr z, jr_03e_75d6                                ; $75ac: $28 $28

	ei                                               ; $75ae: $fb
	rst $38                                          ; $75af: $ff
	db $db                                           ; $75b0: $db
	rst FarCall                                          ; $75b1: $f7
	sbc h                                            ; $75b2: $9c
	ccf                                              ; $75b3: $3f
	nop                                              ; $75b4: $00
	rst $38                                          ; $75b5: $ff
	db $fc                                           ; $75b6: $fc
	ld e, e                                          ; $75b7: $5b
	ret nz                                           ; $75b8: $c0

	ld d, e                                          ; $75b9: $53
	ldh a, [$9a]                                     ; $75ba: $f0 $9a
	ld sp, hl                                        ; $75bc: $f9
	ld c, $f7                                        ; $75bd: $0e $f7
	ld d, $17                                        ; $75bf: $16 $17
	ld a, e                                          ; $75c1: $7b
	cp $7f                                           ; $75c2: $fe $7f
	cpl                                              ; $75c4: $2f
	ld l, a                                          ; $75c5: $6f
	cp $8f                                           ; $75c6: $fe $8f
	nop                                              ; $75c8: $00
	cp a                                             ; $75c9: $bf
	dec de                                           ; $75ca: $1b
	or l                                             ; $75cb: $b5
	ld e, d                                          ; $75cc: $5a
	or l                                             ; $75cd: $b5
	ret nc                                           ; $75ce: $d0

	ldh a, [rIE]                                     ; $75cf: $f0 $ff
	ld e, a                                          ; $75d1: $5f
	rst $38                                          ; $75d2: $ff
	ld e, a                                          ; $75d3: $5f
	cp a                                             ; $75d4: $bf
	ld e, a                                          ; $75d5: $5f

jr_03e_75d6:
	ccf                                              ; $75d6: $3f
	rra                                              ; $75d7: $1f
	ld a, e                                          ; $75d8: $7b
	pop de                                           ; $75d9: $d1
	sbc e                                            ; $75da: $9b
	db $10                                           ; $75db: $10
	ld e, $ce                                        ; $75dc: $1e $ce
	db $fd                                           ; $75de: $fd
	ld a, e                                          ; $75df: $7b
	ret z                                            ; $75e0: $c8

	cp $9e                                           ; $75e1: $fe $9e

jr_03e_75e3:
	jr nc, jr_03e_75e3                               ; $75e3: $30 $fe

	sbc l                                            ; $75e5: $9d
	add b                                            ; $75e6: $80
	rlca                                             ; $75e7: $07
	ld a, e                                          ; $75e8: $7b
	jp $819b                                         ; $75e9: $c3 $9b $81


	ld bc, $7fff                                     ; $75ec: $01 $ff $7f
	db $fd                                           ; $75ef: $fd
	sub d                                            ; $75f0: $92
	ld a, [hl]                                       ; $75f1: $7e
	cp $00                                           ; $75f2: $fe $00
	nop                                              ; $75f4: $00
	ldh a, [rP1]                                     ; $75f5: $f0 $00
	nop                                              ; $75f7: $00
	rst SubAFromDE                                          ; $75f8: $df
	ld hl, sp-$80                                    ; $75f9: $f8 $80
	rst $38                                          ; $75fb: $ff
	rst $38                                          ; $75fc: $ff
	rrca                                             ; $75fd: $0f
	cp $9d                                           ; $75fe: $fe $9d
	rlca                                             ; $7600: $07
	ld a, a                                          ; $7601: $7f
	ld a, e                                          ; $7602: $7b
	ldh [c], a                                       ; $7603: $e2
	ld a, a                                          ; $7604: $7f
	and $9d                                          ; $7605: $e6 $9d
	rst AddAOntoHL                                          ; $7607: $ef
	ld a, a                                          ; $7608: $7f
	halt                                             ; $7609: $76
	db $f4                                           ; $760a: $f4
	ld [hl], a                                       ; $760b: $77
	db $d3                                           ; $760c: $d3
	ld a, [hl]                                       ; $760d: $7e
	db $db                                           ; $760e: $db
	ld a, [hl]                                       ; $760f: $7e
	adc l                                            ; $7610: $8d
	sbc e                                            ; $7611: $9b
	ldh [rIF], a                                     ; $7612: $e0 $0f
	add b                                            ; $7614: $80
	ret nz                                           ; $7615: $c0

	db $dd                                           ; $7616: $dd
	rst $38                                          ; $7617: $ff
	ld a, a                                          ; $7618: $7f
	or h                                             ; $7619: $b4
	ld [hl], e                                       ; $761a: $73
	adc b                                            ; $761b: $88
	cp $9c                                           ; $761c: $fe $9c
	ld a, $01                                        ; $761e: $3e $01
	push bc                                          ; $7620: $c5
	ld l, d                                          ; $7621: $6a
	ld [hl], c                                       ; $7622: $71
	sub [hl]                                         ; $7623: $96
	nop                                              ; $7624: $00
	inc a                                            ; $7625: $3c
	dec e                                            ; $7626: $1d
	dec c                                            ; $7627: $0d
	nop                                              ; $7628: $00
	ld bc, $0e06                                     ; $7629: $01 $06 $0e
	ld b, $7a                                        ; $762c: $06 $7a
	add l                                            ; $762e: $85
	rst SubAFromDE                                          ; $762f: $df
	ccf                                              ; $7630: $3f
	sbc $1f                                          ; $7631: $de $1f
	sbc [hl]                                         ; $7633: $9e
	push hl                                          ; $7634: $e5
	sbc $ed                                          ; $7635: $de $ed
	sbc e                                            ; $7637: $9b
	db $dd                                           ; $7638: $dd
	push bc                                          ; $7639: $c5
	db $ed                                           ; $763a: $ed
	push hl                                          ; $763b: $e5
	call c, $9cfe                                    ; $763c: $dc $fe $9c
	xor $e6                                          ; $763f: $ee $e6
	and $67                                          ; $7641: $e6 $67
	ld l, b                                          ; $7643: $68
	ld a, a                                          ; $7644: $7f
	push de                                          ; $7645: $d5
	ld l, a                                          ; $7646: $6f
	cp $9d                                           ; $7647: $fe $9d
	and b                                            ; $7649: $a0
	ld b, b                                          ; $764a: $40
	ld a, d                                          ; $764b: $7a
	ret nz                                           ; $764c: $c0

	ld a, a                                          ; $764d: $7f
	xor b                                            ; $764e: $a8
	sbc h                                            ; $764f: $9c
	nop                                              ; $7650: $00
	ld e, a                                          ; $7651: $5f
	cp a                                             ; $7652: $bf
	ld a, d                                          ; $7653: $7a
	ret nz                                           ; $7654: $c0

	ld a, a                                          ; $7655: $7f
	call z, $047f                                    ; $7656: $cc $7f $04
	sub e                                            ; $7659: $93
	ld [$f8d4], a                                    ; $765a: $ea $d4 $f8
	call nc, $f0e8                                   ; $765d: $d4 $e8 $f0
	add sp, $20                                      ; $7660: $e8 $20
	db $10                                           ; $7662: $10
	jr nz, jr_03e_7665                               ; $7663: $20 $00

jr_03e_7665:
	jr nz, jr_03e_7665                               ; $7665: $20 $fe

	sbc $40                                          ; $7667: $de $40
	sbc d                                            ; $7669: $9a
	ld h, b                                          ; $766a: $60
	ld d, b                                          ; $766b: $50
	ld l, d                                          ; $766c: $6a
	ld d, l                                          ; $766d: $55
	ld a, [hl+]                                      ; $766e: $2a
	sbc $3f                                          ; $766f: $de $3f
	sub [hl]                                         ; $7671: $96
	rra                                              ; $7672: $1f
	cpl                                              ; $7673: $2f
	dec d                                            ; $7674: $15
	ld a, [hl+]                                      ; $7675: $2a
	dec d                                            ; $7676: $15
	sbc a                                            ; $7677: $9f
	add b                                            ; $7678: $80
	ld hl, sp-$01                                    ; $7679: $f8 $ff
	db $dd                                           ; $767b: $dd
	add b                                            ; $767c: $80
	sbc $ff                                          ; $767d: $de $ff
	ld [hl], a                                       ; $767f: $77
	db $fc                                           ; $7680: $fc
	ld [hl], a                                       ; $7681: $77
	add c                                            ; $7682: $81
	ld a, a                                          ; $7683: $7f
	db $fd                                           ; $7684: $fd
	sbc l                                            ; $7685: $9d
	ld bc, $730a                                     ; $7686: $01 $0a $73
	ld h, b                                          ; $7689: $60
	ld a, a                                          ; $768a: $7f
	xor c                                            ; $768b: $a9
	sbc [hl]                                         ; $768c: $9e
	push af                                          ; $768d: $f5
	ld [hl], e                                       ; $768e: $73
	ldh a, [$9b]                                     ; $768f: $f0 $9b
	ld a, [hl+]                                      ; $7691: $2a
	ld d, a                                          ; $7692: $57
	xor d                                            ; $7693: $aa
	inc b                                            ; $7694: $04
	ld [hl], a                                       ; $7695: $77
	ldh a, [$8e]                                     ; $7696: $f0 $8e
	push de                                          ; $7698: $d5
	xor b                                            ; $7699: $a8
	ld d, l                                          ; $769a: $55
	rst $38                                          ; $769b: $ff
	db $eb                                           ; $769c: $eb
	db $10                                           ; $769d: $10
	dec b                                            ; $769e: $05
	rst $38                                          ; $769f: $ff
	cp a                                             ; $76a0: $bf
	rst $38                                          ; $76a1: $ff
	rst $38                                          ; $76a2: $ff
	or b                                             ; $76a3: $b0
	rst FarCall                                          ; $76a4: $f7
	rst AddAOntoHL                                          ; $76a5: $ef
	ld a, [rRAMB]                                    ; $76a6: $fa $00 $40
	ld [hl], e                                       ; $76a9: $73
	ld d, c                                          ; $76aa: $51
	ld a, a                                          ; $76ab: $7f
	db $ec                                           ; $76ac: $ec
	ld l, [hl]                                       ; $76ad: $6e
	adc d                                            ; $76ae: $8a
	sbc [hl]                                         ; $76af: $9e
	xor d                                            ; $76b0: $aa
	ld [hl], e                                       ; $76b1: $73
	ld b, c                                          ; $76b2: $41
	sbc [hl]                                         ; $76b3: $9e
	ldh [rWX], a                                     ; $76b4: $e0 $4b
	ldh a, [$9c]                                     ; $76b6: $f0 $9c
	rla                                              ; $76b8: $17
	rlca                                             ; $76b9: $07
	ld e, a                                          ; $76ba: $5f
	db $dd                                           ; $76bb: $dd
	rst $38                                          ; $76bc: $ff
	sbc e                                            ; $76bd: $9b
	dec e                                            ; $76be: $1d
	cp $fe                                           ; $76bf: $fe $fe
	xor [hl]                                         ; $76c1: $ae
	db $fd                                           ; $76c2: $fd
	rst SubAFromDE                                          ; $76c3: $df
	cp $9a                                           ; $76c4: $fe $9a
	ldh a, [$ef]                                     ; $76c6: $f0 $ef
	rst $38                                          ; $76c8: $ff
	rst $38                                          ; $76c9: $ff
	db $fc                                           ; $76ca: $fc
	ld a, e                                          ; $76cb: $7b
	inc de                                           ; $76cc: $13
	sbc l                                            ; $76cd: $9d
	rra                                              ; $76ce: $1f
	db $10                                           ; $76cf: $10
	db $fd                                           ; $76d0: $fd
	sbc h                                            ; $76d1: $9c
	rra                                              ; $76d2: $1f
	db $f4                                           ; $76d3: $f4
	add b                                            ; $76d4: $80
	ei                                               ; $76d5: $fb
	sbc [hl]                                         ; $76d6: $9e
	dec bc                                           ; $76d7: $0b
	ld a, c                                          ; $76d8: $79
	call nc, $816f                                   ; $76d9: $d4 $6f $81
	sbc d                                            ; $76dc: $9a
	ld bc, $b170                                     ; $76dd: $01 $70 $b1
	ret nz                                           ; $76e0: $c0

	sbc e                                            ; $76e1: $9b
	ld a, e                                          ; $76e2: $7b
	db $10                                           ; $76e3: $10
	sub b                                            ; $76e4: $90
	cp $80                                           ; $76e5: $fe $80
	nop                                              ; $76e7: $00
	inc sp                                           ; $76e8: $33
	ld h, a                                          ; $76e9: $67
	rst $38                                          ; $76ea: $ff
	ld h, b                                          ; $76eb: $60
	ld hl, sp-$40                                    ; $76ec: $f8 $c0
	nop                                              ; $76ee: $00
	ldh [rLCDC], a                                   ; $76ef: $e0 $40
	ld d, b                                          ; $76f1: $50
	pop af                                           ; $76f2: $f1
	sbc a                                            ; $76f3: $9f
	db $fd                                           ; $76f4: $fd
	add e                                            ; $76f5: $83
	add b                                            ; $76f6: $80
	and b                                            ; $76f7: $a0

jr_03e_76f8:
	nop                                              ; $76f8: $00
	ld sp, hl                                        ; $76f9: $f9
	inc c                                            ; $76fa: $0c
	db $10                                           ; $76fb: $10
	ld [bc], a                                       ; $76fc: $02
	inc l                                            ; $76fd: $2c
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	db $e3                                           ; $7700: $e3
	ld b, $03                                        ; $7701: $06 $03
	rrca                                             ; $7703: $0f
	rra                                              ; $7704: $1f
	rra                                              ; $7705: $1f
	ccf                                              ; $7706: $3f
	inc bc                                           ; $7707: $03
	ld bc, $00e5                                     ; $7708: $01 $e5 $00
	nop                                              ; $770b: $00
	ld hl, $c73c                                     ; $770c: $21 $3c $c7
	inc d                                            ; $770f: $14
	add e                                            ; $7710: $83
	ld a, [de]                                       ; $7711: $1a
	sbc $ff                                          ; $7712: $de $ff
	sub c                                            ; $7714: $91
	di                                               ; $7715: $f3
	jr nc, jr_03e_76f8                               ; $7716: $30 $e0

	db $fc                                           ; $7718: $fc
	db $fd                                           ; $7719: $fd
	ld c, $86                                        ; $771a: $0e $86
	add [hl]                                         ; $771c: $86
	call nz, $2068                                   ; $771d: $c4 $68 $20
	inc [hl]                                         ; $7720: $34
	nop                                              ; $7721: $00
	ldh a, [$de]                                     ; $7722: $f0 $de
	ld hl, sp-$6e                                    ; $7724: $f8 $92
	sub b                                            ; $7726: $90
	jr jr_03e_7731                                   ; $7727: $18 $08

	ld b, $06                                        ; $7729: $06 $06
	add a                                            ; $772b: $87
	add a                                            ; $772c: $87
	add [hl]                                         ; $772d: $86
	add h                                            ; $772e: $84
	ld b, [hl]                                       ; $772f: $46
	ld b, b                                          ; $7730: $40

jr_03e_7731:
	rra                                              ; $7731: $1f
	rra                                              ; $7732: $1f
	db $dd                                           ; $7733: $dd
	rrca                                             ; $7734: $0f
	rst SubAFromDE                                          ; $7735: $df
	rlca                                             ; $7736: $07
	sbc $e5                                          ; $7737: $de $e5
	call c, $de0d                                    ; $7739: $dc $0d $de
	and $d9                                          ; $773c: $e6 $d9
	cp $9a                                           ; $773e: $fe $9a
	ld sp, hl                                        ; $7740: $f9
	ld e, $fd                                        ; $7741: $1e $fd
	cp $66                                           ; $7743: $fe $66
	sbc $01                                          ; $7745: $de $01
	sbc l                                            ; $7747: $9d
	ld b, $e1                                        ; $7748: $06 $e1
	ld a, c                                          ; $774a: $79
	dec h                                            ; $774b: $25
	ld a, [hl]                                       ; $774c: $7e
	ld b, [hl]                                       ; $774d: $46
	db $dd                                           ; $774e: $dd
	ld bc, $81df                                     ; $774f: $01 $df $81
	ld a, [hl]                                       ; $7752: $7e
	ld b, [hl]                                       ; $7753: $46
	db $dd                                           ; $7754: $dd
	cp $df                                           ; $7755: $fe $df
	ld a, [hl]                                       ; $7757: $7e
	sbc d                                            ; $7758: $9a
	ret nc                                           ; $7759: $d0

	ldh [$d0], a                                     ; $775a: $e0 $d0
	and b                                            ; $775c: $a0

jr_03e_775d:
	ret nz                                           ; $775d: $c0

	halt                                             ; $775e: $76
	xor l                                            ; $775f: $ad
	ld a, [$5595]                                    ; $7760: $fa $95 $55
	dec hl                                           ; $7763: $2b
	ld e, a                                          ; $7764: $5f

jr_03e_7765:
	ccf                                              ; $7765: $3f
	ld a, a                                          ; $7766: $7f
	ccf                                              ; $7767: $3f
	ld [hl], a                                       ; $7768: $77
	cpl                                              ; $7769: $2f
	ld a, [hl+]                                      ; $776a: $2a
	inc d                                            ; $776b: $14
	halt                                             ; $776c: $76
	or d                                             ; $776d: $b2
	ld a, d                                          ; $776e: $7a
	inc sp                                           ; $776f: $33
	jp c, $db7f                                      ; $7770: $da $7f $db

	add b                                            ; $7773: $80
	rst SubAFromDE                                          ; $7774: $df
	add e                                            ; $7775: $83
	ld h, c                                          ; $7776: $61
	cp c                                             ; $7777: $b9
	ld c, l                                          ; $7778: $4d
	xor d                                            ; $7779: $aa
	ld l, e                                          ; $777a: $6b
	ldh a, [$df]                                     ; $777b: $f0 $df
	ld hl, sp-$27                                    ; $777d: $f8 $d9
	rst SubAFromDE                                          ; $777f: $df
	reti                                             ; $7780: $d9


	jr nc, jr_03e_775d                               ; $7781: $30 $da

	rst $38                                          ; $7783: $ff
	sbc [hl]                                         ; $7784: $9e
	db $fd                                           ; $7785: $fd
	ei                                               ; $7786: $fb
	ld a, c                                          ; $7787: $79
	jr nc, jr_03e_7765                               ; $7788: $30 $db

	rst $38                                          ; $778a: $ff
	sbc [hl]                                         ; $778b: $9e
	ld e, a                                          ; $778c: $5f
	ld h, a                                          ; $778d: $67
	ret nz                                           ; $778e: $c0

	ld a, h                                          ; $778f: $7c
	sub l                                            ; $7790: $95
	db $dd                                           ; $7791: $dd
	db $fc                                           ; $7792: $fc
	rst SubAFromDE                                          ; $7793: $df
	ld a, h                                          ; $7794: $7c
	db $db                                           ; $7795: $db
	ld b, $df                                        ; $7796: $06 $df
	add [hl]                                         ; $7798: $86
	sbc h                                            ; $7799: $9c
	xor a                                            ; $779a: $af
	cpl                                              ; $779b: $2f
	inc l                                            ; $779c: $2c
	call c, $d928                                    ; $779d: $dc $28 $d9
	db $10                                           ; $77a0: $10
	add a                                            ; $77a1: $87
	ld [$c80e], sp                                   ; $77a2: $08 $0e $c8
	jp nz, $d3c7                                     ; $77a5: $c2 $c7 $d3

	and e                                            ; $77a8: $a3
	sub a                                            ; $77a9: $97
	rst FarCall                                          ; $77aa: $f7
	pop af                                           ; $77ab: $f1
	rst FarCall                                          ; $77ac: $f7
	rst $38                                          ; $77ad: $ff
	rst $38                                          ; $77ae: $ff
	rst AddAOntoHL                                          ; $77af: $ef
	rst SubAFromDE                                          ; $77b0: $df
	rst $38                                          ; $77b1: $ff
	add h                                            ; $77b2: $84
	ret                                              ; $77b3: $c9


	pop hl                                           ; $77b4: $e1
	ld e, a                                          ; $77b5: $5f
	sub l                                            ; $77b6: $95
	di                                               ; $77b7: $f3
	and d                                            ; $77b8: $a2
	ld [hl], $78                                     ; $77b9: $36 $78
	jr z, @-$6a                                      ; $77bb: $28 $94

	ldh [$e2], a                                     ; $77bd: $e0 $e2
	ldh [$c1], a                                     ; $77bf: $e0 $c1
	pop bc                                           ; $77c1: $c1
	add sp, -$22                                     ; $77c2: $e8 $de
	add sp, -$2f                                     ; $77c4: $e8 $d1
	rst SubAFromBC                                          ; $77c6: $e7
	ld c, a                                          ; $77c7: $4f
	ld a, d                                          ; $77c8: $7a
	cp e                                             ; $77c9: $bb
	sbc e                                            ; $77ca: $9b
	ld bc, $0f07                                     ; $77cb: $01 $07 $0f
	rra                                              ; $77ce: $1f
	ld [hl], a                                       ; $77cf: $77
	ld a, b                                          ; $77d0: $78
	add b                                            ; $77d1: $80
	cp l                                             ; $77d2: $bd
	ld l, e                                          ; $77d3: $6b
	adc e                                            ; $77d4: $8b
	rst JumpTable                                          ; $77d5: $c7
	or l                                             ; $77d6: $b5
	ld c, b                                          ; $77d7: $48
	ldh a, [rSB]                                     ; $77d8: $f0 $01
	inc bc                                           ; $77da: $03
	add a                                            ; $77db: $87
	rst JumpTable                                          ; $77dc: $c7
	rst $38                                          ; $77dd: $ff
	ei                                               ; $77de: $fb
	or a                                             ; $77df: $b7
	rrca                                             ; $77e0: $0f
	cp e                                             ; $77e1: $bb
	ei                                               ; $77e2: $fb
	dec e                                            ; $77e3: $1d
	db $eb                                           ; $77e4: $eb
	rra                                              ; $77e5: $1f
	db $e3                                           ; $77e6: $e3
	rst AddAOntoHL                                          ; $77e7: $ef
	ld l, h                                          ; $77e8: $6c
	db $fc                                           ; $77e9: $fc
	db $fc                                           ; $77ea: $fc
	cp $1c                                           ; $77eb: $fe $1c
	ldh [$f0], a                                     ; $77ed: $e0 $f0
	ldh a, [c]                                       ; $77ef: $f2
	cp $80                                           ; $77f0: $fe $80
	add d                                            ; $77f2: $82
	halt                                             ; $77f3: $76
	ld e, [hl]                                       ; $77f4: $5e
	ret z                                            ; $77f5: $c8

	sub l                                            ; $77f6: $95
	jr nz, jr_03e_7865                               ; $77f7: $20 $6c

	add hl, hl                                       ; $77f9: $29
	ld a, h                                          ; $77fa: $7c
	ld hl, sp-$50                                    ; $77fb: $f8 $b0
	ld b, $6e                                        ; $77fd: $06 $6e
	rst $38                                          ; $77ff: $ff
	rra                                              ; $7800: $1f
	ld e, $0f                                        ; $7801: $1e $0f
	cpl                                              ; $7803: $2f
	daa                                              ; $7804: $27
	daa                                              ; $7805: $27
	inc hl                                           ; $7806: $23
	rlca                                             ; $7807: $07
	ld de, $7711                                     ; $7808: $11 $11 $77
	rla                                              ; $780b: $17
	dec de                                           ; $780c: $1b
	dec de                                           ; $780d: $1b
	rra                                              ; $780e: $1f
	add hl, de                                       ; $780f: $19
	rrca                                             ; $7810: $0f
	sbc h                                            ; $7811: $9c
	rrca                                             ; $7812: $0f
	dec c                                            ; $7813: $0d
	dec c                                            ; $7814: $0d
	sbc $05                                          ; $7815: $de $05
	sbc h                                            ; $7817: $9c
	db $fd                                           ; $7818: $fd
	ld sp, hl                                        ; $7819: $f9
	ld bc, $fedc                                     ; $781a: $01 $dc $fe
	rst SubAFromDE                                          ; $781d: $df
	ld b, $80                                        ; $781e: $06 $80
	cp $21                                           ; $7820: $fe $21
	jr nz, jr_03e_7846                               ; $7822: $20 $22

	inc hl                                           ; $7824: $23
	di                                               ; $7825: $f3
	and e                                            ; $7826: $a3
	db $e3                                           ; $7827: $e3
	db $e3                                           ; $7828: $e3
	cp $fa                                           ; $7829: $fe $fa
	ld a, a                                          ; $782b: $7f
	rst $38                                          ; $782c: $ff
	ei                                               ; $782d: $fb
	ei                                               ; $782e: $fb
	cp e                                             ; $782f: $bb
	cp e                                             ; $7830: $bb

jr_03e_7831:
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	inc c                                            ; $7833: $0c
	inc c                                            ; $7834: $0c
	ret z                                            ; $7835: $c8

	jr z, jr_03e_78a2                                ; $7836: $28 $6a

Jump_03e_7838:
	ld l, [hl]                                       ; $7838: $6e
	ld hl, sp+$4c                                    ; $7839: $f8 $4c
	jp nc, $f3d2                                     ; $783b: $d2 $d2 $f3

	pop hl                                           ; $783e: $e1
	sbc l                                            ; $783f: $9d
	and c                                            ; $7840: $a1
	ld hl, $7371                                     ; $7841: $21 $71 $73
	rst SubAFromDE                                          ; $7844: $df
	add b                                            ; $7845: $80

jr_03e_7846:
	ld sp, hl                                        ; $7846: $f9
	sub [hl]                                         ; $7847: $96
	add b                                            ; $7848: $80
	ld [hl], a                                       ; $7849: $77
	dec hl                                           ; $784a: $2b
	ld d, l                                          ; $784b: $55
	dec hl                                           ; $784c: $2b
	ld b, c                                          ; $784d: $41
	inc hl                                           ; $784e: $23
	ld b, c                                          ; $784f: $41
	ld hl, $def9                                     ; $7850: $21 $f9 $de
	ld a, a                                          ; $7853: $7f
	rst SubAFromDE                                          ; $7854: $df
	ld a, [hl]                                       ; $7855: $7e
	ld a, a                                          ; $7856: $7f
	db $fd                                           ; $7857: $fd
	sbc [hl]                                         ; $7858: $9e
	ld a, h                                          ; $7859: $7c
	reti                                             ; $785a: $d9


	add e                                            ; $785b: $83
	sbc e                                            ; $785c: $9b
	xor e                                            ; $785d: $ab
	ld d, a                                          ; $785e: $57
	ld a, [hl+]                                      ; $785f: $2a
	dec b                                            ; $7860: $05
	cp $9e                                           ; $7861: $fe $9e
	and b                                            ; $7863: $a0
	ld h, [hl]                                       ; $7864: $66

jr_03e_7865:
	ld hl, sp-$21                                    ; $7865: $f8 $df
	rst $38                                          ; $7867: $ff
	sbc h                                            ; $7868: $9c
	xor a                                            ; $7869: $af
	ld e, a                                          ; $786a: $5f
	xor a                                            ; $786b: $af
	ld a, d                                          ; $786c: $7a
	ld b, h                                          ; $786d: $44
	reti                                             ; $786e: $d9


	ld hl, sp+$46                                    ; $786f: $f8 $46
	ret nz                                           ; $7871: $c0

	sub a                                            ; $7872: $97
	ld a, [$e8f5]                                    ; $7873: $fa $f5 $e8
	ldh a, [$e0]                                     ; $7876: $f0 $e0
	ldh [$c0], a                                     ; $7878: $e0 $c0
	ret nz                                           ; $787a: $c0

	reti                                             ; $787b: $d9


	ccf                                              ; $787c: $3f
	sbc b                                            ; $787d: $98
	xor a                                            ; $787e: $af
	ld d, l                                          ; $787f: $55
	dec hl                                           ; $7880: $2b
	dec d                                            ; $7881: $15
	inc bc                                           ; $7882: $03
	ld bc, $7501                                     ; $7883: $01 $01 $75
	ld b, b                                          ; $7886: $40
	call c, $deff                                    ; $7887: $dc $ff $de
	ld a, [hl]                                       ; $788a: $7e
	db $dd                                           ; $788b: $dd
	ld a, d                                          ; $788c: $7a
	sbc [hl]                                         ; $788d: $9e
	ld [hl], d                                       ; $788e: $72
	reti                                             ; $788f: $d9


	add h                                            ; $7890: $84
	db $db                                           ; $7891: $db
	jr nc, jr_03e_7831                               ; $7892: $30 $9d

	ld [hl], $34                                     ; $7894: $36 $34
	db $db                                           ; $7896: $db
	db $10                                           ; $7897: $10
	rst SubAFromDE                                          ; $7898: $df
	ld [de], a                                       ; $7899: $12
	sub a                                            ; $789a: $97
	ld a, a                                          ; $789b: $7f
	ld a, $0f                                        ; $789c: $3e $0f
	ld c, $05                                        ; $789e: $0e $05
	add l                                            ; $78a0: $85
	db $dd                                           ; $78a1: $dd

jr_03e_78a2:
	sbc a                                            ; $78a2: $9f
	ld a, c                                          ; $78a3: $79
	inc l                                            ; $78a4: $2c

jr_03e_78a5:
	ld a, d                                          ; $78a5: $7a
	call $fedf                                       ; $78a6: $cd $df $fe
	sub h                                            ; $78a9: $94
	add b                                            ; $78aa: $80
	cp [hl]                                          ; $78ab: $be
	jr c, jr_03e_78a5                                ; $78ac: $38 $f7

	rst $38                                          ; $78ae: $ff
	rst FarCall                                          ; $78af: $f7
	rst SubAFromDE                                          ; $78b0: $df
	rst SubAFromDE                                          ; $78b1: $df
	rst $38                                          ; $78b2: $ff
	rst JumpTable                                          ; $78b3: $c7
	rst JumpTable                                          ; $78b4: $c7
	db $fc                                           ; $78b5: $fc
	sbc [hl]                                         ; $78b6: $9e
	sbc a                                            ; $78b7: $9f
	ld l, [hl]                                       ; $78b8: $6e
	ld l, l                                          ; $78b9: $6d
	sbc [hl]                                         ; $78ba: $9e
	db $fc                                           ; $78bb: $fc
	ld a, e                                          ; $78bc: $7b
	sbc l                                            ; $78bd: $9d
	db $fc                                           ; $78be: $fc
	sub a                                            ; $78bf: $97
	add sp, -$1f                                     ; $78c0: $e8 $e1
	ret nz                                           ; $78c2: $c0

	rst AddAOntoHL                                          ; $78c3: $ef
	rst $38                                          ; $78c4: $ff
	rst FarCall                                          ; $78c5: $f7
	inc hl                                           ; $78c6: $23
	nop                                              ; $78c7: $00
	ld a, c                                          ; $78c8: $79
	add e                                            ; $78c9: $83
	ld [hl], c                                       ; $78ca: $71
	ccf                                              ; $78cb: $3f
	add l                                            ; $78cc: $85
	inc h                                            ; $78cd: $24
	and b                                            ; $78ce: $a0
	nop                                              ; $78cf: $00
	add $bc                                          ; $78d0: $c6 $bc
	call $fac9                                       ; $78d2: $cd $c9 $fa
	ld hl, sp-$02                                    ; $78d5: $f8 $fe
	cp $38                                           ; $78d7: $fe $38
	ld b, b                                          ; $78d9: $40
	nop                                              ; $78da: $00
	ld b, $07                                        ; $78db: $06 $07
	jr nz, jr_03e_7920                               ; $78dd: $20 $41

	db $ec                                           ; $78df: $ec
	sub c                                            ; $78e0: $91
	add b                                            ; $78e1: $80
	ld a, [hl]                                       ; $78e2: $7e
	or c                                             ; $78e3: $b1
	inc bc                                           ; $78e4: $03
	rra                                              ; $78e5: $1f
	ld a, $7b                                        ; $78e6: $3e $7b
	add hl, hl                                       ; $78e8: $29
	sub b                                            ; $78e9: $90
	dec c                                            ; $78ea: $0d
	ld c, a                                          ; $78eb: $4f
	rst $38                                          ; $78ec: $ff
	ld de, $0b01                                     ; $78ed: $11 $01 $0b
	ld [$4848], sp                                   ; $78f0: $08 $48 $48
	ret z                                            ; $78f3: $c8

	ld h, h                                          ; $78f4: $64
	rrca                                             ; $78f5: $0f
	rrca                                             ; $78f6: $0f
	dec b                                            ; $78f7: $05
	rlca                                             ; $78f8: $07
	sbc $87                                          ; $78f9: $de $87
	sbc d                                            ; $78fb: $9a
	add e                                            ; $78fc: $83
	db $e3                                           ; $78fd: $e3
	db $fd                                           ; $78fe: $fd
	db $fd                                           ; $78ff: $fd
	add l                                            ; $7900: $85
	sbc $05                                          ; $7901: $de $05
	sbc l                                            ; $7903: $9d
	add l                                            ; $7904: $85
	inc e                                            ; $7905: $1c
	ld a, c                                          ; $7906: $79
	and e                                            ; $7907: $a3
	ld [hl], l                                       ; $7908: $75
	sbc a                                            ; $7909: $9f
	sbc l                                            ; $790a: $9d
	di                                               ; $790b: $f3
	sub e                                            ; $790c: $93
	db $dd                                           ; $790d: $dd
	db $d3                                           ; $790e: $d3
	rst SubAFromDE                                          ; $790f: $df
	sub a                                            ; $7910: $97
	sbc h                                            ; $7911: $9c
	cp e                                             ; $7912: $bb
	cp a                                             ; $7913: $bf
	cp a                                             ; $7914: $bf
	ld [hl], a                                       ; $7915: $77
	db $fd                                           ; $7916: $fd
	adc [hl]                                         ; $7917: $8e
	cp e                                             ; $7918: $bb
	ld l, h                                          ; $7919: $6c
	ld l, h                                          ; $791a: $6c
	dec h                                            ; $791b: $25
	inc b                                            ; $791c: $04
	nop                                              ; $791d: $00
	ret nz                                           ; $791e: $c0

	sub b                                            ; $791f: $90

jr_03e_7920:
	or b                                             ; $7920: $b0
	and e                                            ; $7921: $a3
	and e                                            ; $7922: $a3
	ldh [c], a                                       ; $7923: $e2
	and e                                            ; $7924: $a3
	or a                                             ; $7925: $b7
	or a                                             ; $7926: $b7
	rst FarCall                                          ; $7927: $f7
	rst SubAFromHL                                          ; $7928: $d7
	ld a, b                                          ; $7929: $78
	ld c, a                                          ; $792a: $4f
	sbc d                                            ; $792b: $9a
	add b                                            ; $792c: $80
	ret nz                                           ; $792d: $c0

	ret nz                                           ; $792e: $c0

	add b                                            ; $792f: $80
	ret nz                                           ; $7930: $c0

	sbc $80                                          ; $7931: $de $80
	ld a, e                                          ; $7933: $7b
	db $fc                                           ; $7934: $fc
	sbc d                                            ; $7935: $9a
	ret nz                                           ; $7936: $c0

	ld b, b                                          ; $7937: $40
	ld b, c                                          ; $7938: $41

jr_03e_7939:
	ld bc, $dc41                                     ; $7939: $01 $41 $dc
	ld bc, $ddf9                                     ; $793c: $01 $f9 $dd
	ld a, l                                          ; $793f: $7d
	sbc e                                            ; $7940: $9b
	ld a, h                                          ; $7941: $7c
	ld a, [hl]                                       ; $7942: $7e
	ld a, l                                          ; $7943: $7d
	ld l, d                                          ; $7944: $6a
	db $dd                                           ; $7945: $dd
	add d                                            ; $7946: $82
	sbc [hl]                                         ; $7947: $9e
	add e                                            ; $7948: $83
	sbc $80                                          ; $7949: $de $80
	sub e                                            ; $794b: $93
	ld d, b                                          ; $794c: $50
	add sp, -$2c                                     ; $794d: $e8 $d4
	ld [$ff00], a                                    ; $794f: $ea $00 $ff
	ld [hl], l                                       ; $7952: $75
	xor d                                            ; $7953: $aa
	xor a                                            ; $7954: $af
	rla                                              ; $7955: $17
	dec hl                                           ; $7956: $2b
	dec d                                            ; $7957: $15
	ld [hl], l                                       ; $7958: $75
	adc e                                            ; $7959: $8b
	ld a, d                                          ; $795a: $7a
	ld c, [hl]                                       ; $795b: $4e
	sbc d                                            ; $795c: $9a
	ld b, $05                                        ; $795d: $06 $05
	ld [$a055], a                                    ; $795f: $ea $55 $a0
	call c, $fef8                                    ; $7962: $dc $f8 $fe
	sub l                                            ; $7965: $95
	rst GetHLinHL                                          ; $7966: $cf
	add a                                            ; $7967: $87
	ld e, a                                          ; $7968: $5f
	sub l                                            ; $7969: $95
	ld e, d                                          ; $796a: $5a
	sub h                                            ; $796b: $94
	db $10                                           ; $796c: $10
	db $10                                           ; $796d: $10
	jr nc, jr_03e_79a0                               ; $796e: $30 $30

	db $db                                           ; $7970: $db
	jr nz, @-$20                                     ; $7971: $20 $de

	ret nz                                           ; $7973: $c0

	sbc e                                            ; $7974: $9b
	ld b, b                                          ; $7975: $40
	rst $38                                          ; $7976: $ff
	ld d, l                                          ; $7977: $55

jr_03e_7978:
	xor d                                            ; $7978: $aa
	ld a, c                                          ; $7979: $79
	add [hl]                                         ; $797a: $86
	rst SubAFromDE                                          ; $797b: $df
	ccf                                              ; $797c: $3f
	db $fd                                           ; $797d: $fd
	db $dd                                           ; $797e: $dd
	ld bc, $f07f                                     ; $797f: $01 $7f $f0
	sbc [hl]                                         ; $7982: $9e
	xor b                                            ; $7983: $a8
	ld [hl], c                                       ; $7984: $71
	ld b, [hl]                                       ; $7985: $46
	db $fd                                           ; $7986: $fd
	sub a                                            ; $7987: $97
	ld l, d                                          ; $7988: $6a
	ld d, e                                          ; $7989: $53
	dec hl                                           ; $798a: $2b
	ld d, e                                          ; $798b: $53
	xor e                                            ; $798c: $ab
	dec bc                                           ; $798d: $0b
	inc bc                                           ; $798e: $03
	ld [bc], a                                       ; $798f: $02
	db $dd                                           ; $7990: $dd
	add h                                            ; $7991: $84
	db $dd                                           ; $7992: $dd
	inc b                                            ; $7993: $04
	sbc l                                            ; $7994: $9d
	inc [hl]                                         ; $7995: $34
	or [hl]                                          ; $7996: $b6
	sbc $f0                                          ; $7997: $de $f0
	sbc $d0                                          ; $7999: $de $d0
	sbc [hl]                                         ; $799b: $9e
	ld [de], a                                       ; $799c: $12
	sbc $10                                          ; $799d: $de $10
	db $dd                                           ; $799f: $dd

jr_03e_79a0:
	jr nc, jr_03e_7939                               ; $79a0: $30 $97

	adc a                                            ; $79a2: $8f
	adc [hl]                                         ; $79a3: $8e
	adc $ed                                          ; $79a4: $ce $ed
	xor $fe                                          ; $79a6: $ee $fe
	cp $ff                                           ; $79a8: $fe $ff
	ld a, b                                          ; $79aa: $78
	push bc                                          ; $79ab: $c5
	ld a, e                                          ; $79ac: $7b
	ld a, [$ffdf]                                    ; $79ad: $fa $df $ff
	sub a                                            ; $79b0: $97
	ret nz                                           ; $79b1: $c0

	and b                                            ; $79b2: $a0
	ld h, b                                          ; $79b3: $60
	inc a                                            ; $79b4: $3c
	sbc h                                            ; $79b5: $9c
	xor $47                                          ; $79b6: $ee $47
	sbc c                                            ; $79b8: $99
	db $fd                                           ; $79b9: $fd
	sub c                                            ; $79ba: $91
	ld a, [hl]                                       ; $79bb: $7e
	rst $38                                          ; $79bc: $ff
	rst $38                                          ; $79bd: $ff
	rst SubAFromBC                                          ; $79be: $e7
	db $10                                           ; $79bf: $10
	rlca                                             ; $79c0: $07
	rrca                                             ; $79c1: $0f
	rrca                                             ; $79c2: $0f
	rra                                              ; $79c3: $1f
	inc e                                            ; $79c4: $1c
	sbc h                                            ; $79c5: $9c
	stop                                             ; $79c6: $10 $00
	inc bc                                           ; $79c8: $03
	ld a, e                                          ; $79c9: $7b
	rst FarCall                                          ; $79ca: $f7
	ld a, [hl]                                       ; $79cb: $7e
	sub l                                            ; $79cc: $95
	sbc c                                            ; $79cd: $99
	adc [hl]                                         ; $79ce: $8e
	ld sp, hl                                        ; $79cf: $f9
	db $e3                                           ; $79d0: $e3
	cp $16                                           ; $79d1: $fe $16
	or b                                             ; $79d3: $b0
	ld a, c                                          ; $79d4: $79
	pop af                                           ; $79d5: $f1
	sbc d                                            ; $79d6: $9a
	ld b, $ff                                        ; $79d7: $06 $ff
	rst $38                                          ; $79d9: $ff
	adc h                                            ; $79da: $8c
	ld [$7dfe], sp                                   ; $79db: $08 $fe $7d
	jr nz, jr_03e_7978                               ; $79de: $20 $98

	cp [hl]                                          ; $79e0: $be
	cp $4e                                           ; $79e1: $fe $4e
	ld a, h                                          ; $79e3: $7c
	cp h                                             ; $79e4: $bc
	ccf                                              ; $79e5: $3f
	inc bc                                           ; $79e6: $03
	ld a, d                                          ; $79e7: $7a
	ld c, e                                          ; $79e8: $4b
	ld a, [hl]                                       ; $79e9: $7e
	ld c, d                                          ; $79ea: $4a
	add b                                            ; $79eb: $80
	inc bc                                           ; $79ec: $03
	nop                                              ; $79ed: $00
	rst GetHLinHL                                          ; $79ee: $cf
	rst $38                                          ; $79ef: $ff
	rst $38                                          ; $79f0: $ff

jr_03e_79f1:
	ld sp, hl                                        ; $79f1: $f9
	reti                                             ; $79f2: $d9


	db $db                                           ; $79f3: $db
	ld [hl], e                                       ; $79f4: $73
	ld [hl], a                                       ; $79f5: $77
	rst $38                                          ; $79f6: $ff
	rst $38                                          ; $79f7: $ff
	ei                                               ; $79f8: $fb
	rst $38                                          ; $79f9: $ff
	db $fd                                           ; $79fa: $fd
	ld l, l                                          ; $79fb: $6d
	rst $38                                          ; $79fc: $ff
	cp $05                                           ; $79fd: $fe $05
	sub h                                            ; $79ff: $94
	and [hl]                                         ; $7a00: $a6
	and d                                            ; $7a01: $a2
	jp nc, $0a82                                     ; $7a02: $d2 $82 $0a

	jp nc, $e3e2                                     ; $7a05: $d2 $e2 $e3

	pop bc                                           ; $7a08: $c1
	pop bc                                           ; $7a09: $c1
	pop hl                                           ; $7a0a: $e1
	rst SubAFromDE                                          ; $7a0b: $df
	pop af                                           ; $7a0c: $f1
	sbc d                                            ; $7a0d: $9a
	ld h, c                                          ; $7a0e: $61
	add l                                            ; $7a0f: $85
	and l                                            ; $7a10: $a5
	add l                                            ; $7a11: $85
	dec b                                            ; $7a12: $05
	sbc $45                                          ; $7a13: $de $45
	sbc [hl]                                         ; $7a15: $9e
	dec b                                            ; $7a16: $05
	db $dd                                           ; $7a17: $dd
	ld a, [hl]                                       ; $7a18: $7e
	db $dd                                           ; $7a19: $dd
	ld a, $98                                        ; $7a1a: $3e $98
	sub l                                            ; $7a1c: $95
	push de                                          ; $7a1d: $d5
	sub l                                            ; $7a1e: $95
	sub a                                            ; $7a1f: $97
	rst FarCall                                          ; $7a20: $f7
	push de                                          ; $7a21: $d5
	push hl                                          ; $7a22: $e5
	ld a, d                                          ; $7a23: $7a
	add $7d                                          ; $7a24: $c6 $7d
	ld [hl], $7d                                     ; $7a26: $36 $7d
	add c                                            ; $7a28: $81
	sbc l                                            ; $7a29: $9d
	sbc e                                            ; $7a2a: $9b
	rst $38                                          ; $7a2b: $ff
	sbc $b0                                          ; $7a2c: $de $b0
	add d                                            ; $7a2e: $82
	ret nc                                           ; $7a2f: $d0

	ret z                                            ; $7a30: $c8

	ret c                                            ; $7a31: $d8

	reti                                             ; $7a32: $d9


	ld sp, hl                                        ; $7a33: $f9
	rst SubAFromHL                                          ; $7a34: $d7
	rst SubAFromHL                                          ; $7a35: $d7
	db $db                                           ; $7a36: $db
	ei                                               ; $7a37: $fb
	ei                                               ; $7a38: $fb
	db $eb                                           ; $7a39: $eb
	ld [$c0fa], a                                    ; $7a3a: $ea $fa $c0
	ld b, b                                          ; $7a3d: $40
	ldh [$60], a                                     ; $7a3e: $e0 $60
	ld b, b                                          ; $7a40: $40
	jr nc, @-$06                                     ; $7a41: $30 $f8

	ldh a, [rLCDC]                                   ; $7a43: $f0 $40
	ret nz                                           ; $7a45: $c0

	ld b, b                                          ; $7a46: $40
	ld b, b                                          ; $7a47: $40
	jr nz, jr_03e_7aaa                               ; $7a48: $20 $60

	ld [hl], b                                       ; $7a4a: $70
	jr nc, @-$24                                     ; $7a4b: $30 $da

	ld bc, $977f                                     ; $7a4d: $01 $7f $97
	ld h, h                                          ; $7a50: $64
	jr nc, jr_03e_79f1                               ; $7a51: $30 $9e

	ld a, [hl+]                                      ; $7a53: $2a
	call c, $7960                                    ; $7a54: $dc $60 $79
	ld e, l                                          ; $7a57: $5d
	ld a, d                                          ; $7a58: $7a
	sbc c                                            ; $7a59: $99
	ld a, d                                          ; $7a5a: $7a
	sbc [hl]                                         ; $7a5b: $9e
	sbc [hl]                                         ; $7a5c: $9e
	ld d, h                                          ; $7a5d: $54
	ei                                               ; $7a5e: $fb
	sbc [hl]                                         ; $7a5f: $9e
	ld a, [bc]                                       ; $7a60: $0a

Jump_03e_7a61:
	jp hl                                            ; $7a61: $e9


	db $db                                           ; $7a62: $db
	db $10                                           ; $7a63: $10
	sbc l                                            ; $7a64: $9d
	jr jr_03e_7a7c                                   ; $7a65: $18 $15

	reti                                             ; $7a67: $d9


	jr nz, jr_03e_7ad1                               ; $7a68: $20 $67

	cp c                                             ; $7a6a: $b9
	db $f4                                           ; $7a6b: $f4
	sbc l                                            ; $7a6c: $9d
	ld bc, $630a                                     ; $7a6d: $01 $0a $63
	ldh a, [hDisp1_BGP]                                     ; $7a70: $f0 $92
	ld [bc], a                                       ; $7a72: $02
	ld a, [de]                                       ; $7a73: $1a
	ld a, [hl-]                                      ; $7a74: $3a
	ld a, [de]                                       ; $7a75: $1a
	inc a                                            ; $7a76: $3c
	ld e, b                                          ; $7a77: $58
	xor b                                            ; $7a78: $a8
	ld e, b                                          ; $7a79: $58
	inc b                                            ; $7a7a: $04
	inc b                                            ; $7a7b: $04

jr_03e_7a7c:
	inc c                                            ; $7a7c: $0c
	dec c                                            ; $7a7d: $0d
	dec bc                                           ; $7a7e: $0b
	sbc $07                                          ; $7a7f: $de $07
	sub a                                            ; $7a81: $97
	jr nz, jr_03e_7b03                               ; $7a82: $20 $7f

	rst $38                                          ; $7a84: $ff
	db $ed                                           ; $7a85: $ed
	rst $38                                          ; $7a86: $ff
	di                                               ; $7a87: $f3
	pop af                                           ; $7a88: $f1
	or $fe                                           ; $7a89: $f6 $fe
	sbc [hl]                                         ; $7a8b: $9e
	rra                                              ; $7a8c: $1f
	db $fd                                           ; $7a8d: $fd
	pop de                                           ; $7a8e: $d1
	rst $38                                          ; $7a8f: $ff
	sub h                                            ; $7a90: $94
	and b                                            ; $7a91: $a0
	ldh a, [$ef]                                     ; $7a92: $f0 $ef
	rst GetHLinHL                                          ; $7a94: $cf
	rst SubAFromDE                                          ; $7a95: $df
	rst SubAFromDE                                          ; $7a96: $df
	rst SubAFromBC                                          ; $7a97: $e7

Call_03e_7a98:
	ldh [c], a                                       ; $7a98: $e2
	rst SubAFromDE                                          ; $7a99: $df
	rst GetHLinHL                                          ; $7a9a: $cf
	ret nc                                           ; $7a9b: $d0

	ld a, c                                          ; $7a9c: $79
	jr z, @-$70                                      ; $7a9d: $28 $8e

	ld hl, sp-$03                                    ; $7a9f: $f8 $fd
	rla                                              ; $7aa1: $17
	add e                                            ; $7aa2: $83
	add e                                            ; $7aa3: $83
	adc h                                            ; $7aa4: $8c
	sbc b                                            ; $7aa5: $98
	cp h                                             ; $7aa6: $bc
	or h                                             ; $7aa7: $b4
	ld e, b                                          ; $7aa8: $58
	adc b                                            ; $7aa9: $88

jr_03e_7aaa:
	inc c                                            ; $7aaa: $0c
	inc c                                            ; $7aab: $0c
	inc bc                                           ; $7aac: $03
	ld bc, $787c                                     ; $7aad: $01 $7c $78
	ld [hl], h                                       ; $7ab0: $74
	or a                                             ; $7ab1: $b7
	rst SubAFromDE                                          ; $7ab2: $df
	add b                                            ; $7ab3: $80
	sbc [hl]                                         ; $7ab4: $9e
	inc c                                            ; $7ab5: $0c
	rst FarCall                                          ; $7ab6: $f7
	sub h                                            ; $7ab7: $94
	ccf                                              ; $7ab8: $3f
	ld a, [hl]                                       ; $7ab9: $7e
	ld a, l                                          ; $7aba: $7d
	ld a, a                                          ; $7abb: $7f
	ld b, $0e                                        ; $7abc: $06 $0e
	ld e, $3d                                        ; $7abe: $1e $3d
	nop                                              ; $7ac0: $00
	ld bc, $7602                                     ; $7ac1: $01 $02 $76
	ld b, h                                          ; $7ac4: $44
	add [hl]                                         ; $7ac5: $86
	inc bc                                           ; $7ac6: $03
	ld a, l                                          ; $7ac7: $7d
	ld a, d                                          ; $7ac8: $7a

jr_03e_7ac9:
	db $fd                                           ; $7ac9: $fd
	ld a, e                                          ; $7aca: $7b
	rst SubAFromBC                                          ; $7acb: $e7
	rst JumpTable                                          ; $7acc: $c7
	adc e                                            ; $7acd: $8b
	adc a                                            ; $7ace: $8f
	cp $fd                                           ; $7acf: $fe $fd

jr_03e_7ad1:
	ld [hl], e                                       ; $7ad1: $73
	rst FarCall                                          ; $7ad2: $f7
	rst $38                                          ; $7ad3: $ff
	rst AddAOntoHL                                          ; $7ad4: $ef
	rst SubAFromBC                                          ; $7ad5: $e7
	rst SubAFromBC                                          ; $7ad6: $e7
	ld h, c                                          ; $7ad7: $61
	jp hl                                            ; $7ad8: $e9


	db $ed                                           ; $7ad9: $ed
	sbc h                                            ; $7ada: $9c
	call c, $ccbc                                    ; $7adb: $dc $bc $cc
	call c, $f0de                                    ; $7ade: $dc $de $f0
	ld a, b                                          ; $7ae1: $78
	reti                                             ; $7ae2: $d9


	ld a, a                                          ; $7ae3: $7f
	db $fc                                           ; $7ae4: $fc
	sub a                                            ; $7ae5: $97
	ld h, l                                          ; $7ae6: $65
	dec h                                            ; $7ae7: $25
	dec [hl]                                         ; $7ae8: $35
	dec c                                            ; $7ae9: $0d
	dec d                                            ; $7aea: $15
	sub l                                            ; $7aeb: $95
	add l                                            ; $7aec: $85
	sub l                                            ; $7aed: $95
	sbc $3e                                          ; $7aee: $de $3e
	sbc [hl]                                         ; $7af0: $9e
	ld c, $dd                                        ; $7af1: $0e $dd
	ld b, $80                                        ; $7af3: $06 $80
	add hl, de                                       ; $7af5: $19
	ld h, $02                                        ; $7af6: $26 $02
	ld h, d                                          ; $7af8: $62
	ld d, e                                          ; $7af9: $53
	ldh a, [hDisp0_OBP0]                                     ; $7afa: $f0 $86
	ld h, h                                          ; $7afc: $64
	rst $38                                          ; $7afd: $ff
	sbc c                                            ; $7afe: $99
	ld sp, hl                                        ; $7aff: $f9
	sbc c                                            ; $7b00: $99
	cp a                                             ; $7b01: $bf
	rst $38                                          ; $7b02: $ff

jr_03e_7b03:
	ld sp, hl                                        ; $7b03: $f9
	sbc c                                            ; $7b04: $99
	ret c                                            ; $7b05: $d8

	ret c                                            ; $7b06: $d8

	call c, Call_03e_6cfc                            ; $7b07: $dc $fc $6c
	ld d, h                                          ; $7b0a: $54
	ld a, h                                          ; $7b0b: $7c
	db $f4                                           ; $7b0c: $f4
	jp hl                                            ; $7b0d: $e9


	db $ed                                           ; $7b0e: $ed
	db $ed                                           ; $7b0f: $ed
	rst $38                                          ; $7b10: $ff
	db $fd                                           ; $7b11: $fd
	db $ed                                           ; $7b12: $ed
	db $e4                                           ; $7b13: $e4
	sub d                                            ; $7b14: $92
	xor $30                                          ; $7b15: $ee $30
	jr nc, jr_03e_7ac9                               ; $7b17: $30 $b0

	sub b                                            ; $7b19: $90
	cp b                                             ; $7b1a: $b8
	cp b                                             ; $7b1b: $b8
	add b                                            ; $7b1c: $80
	adc b                                            ; $7b1d: $88
	jr nz, jr_03e_7b40                               ; $7b1e: $20 $20

	jr nc, jr_03e_7b52                               ; $7b20: $30 $30

	ld a, e                                          ; $7b22: $7b
	ld [$1897], sp                                   ; $7b23: $08 $97 $18
	ld bc, $450b                                     ; $7b26: $01 $0b $45
	dec hl                                           ; $7b29: $2b
	ld d, l                                          ; $7b2a: $55
	ccf                                              ; $7b2b: $3f
	ld e, a                                          ; $7b2c: $5f
	ld [hl], c                                       ; $7b2d: $71
	call nc, $9dfc                                   ; $7b2e: $d4 $fc $9d
	ld a, [hl+]                                      ; $7b31: $2a
	ld d, l                                          ; $7b32: $55
	ld a, e                                          ; $7b33: $7b
	cp $9d                                           ; $7b34: $fe $9d
	ld e, a                                          ; $7b36: $5f
	ld a, a                                          ; $7b37: $7f
	reti                                             ; $7b38: $d9


	add b                                            ; $7b39: $80
	ld a, l                                          ; $7b3a: $7d
	or l                                             ; $7b3b: $b5
	ld a, a                                          ; $7b3c: $7f
	cp $78                                           ; $7b3d: $fe $78
	ld c, e                                          ; $7b3f: $4b

jr_03e_7b40:
	ld [hl], c                                       ; $7b40: $71
	call nz, $9efd                                   ; $7b41: $c4 $fd $9e
	ld b, c                                          ; $7b44: $41
	ld a, e                                          ; $7b45: $7b
	ldh a, [$9d]                                     ; $7b46: $f0 $9d
	push af                                          ; $7b48: $f5
	ld a, [$f05f]                                    ; $7b49: $fa $5f $f0
	sbc l                                            ; $7b4c: $9d
	ld e, d                                          ; $7b4d: $5a
	sub l                                            ; $7b4e: $95
	ld a, e                                          ; $7b4f: $7b
	cp $9c                                           ; $7b50: $fe $9c

jr_03e_7b52:
	rst SubAFromHL                                          ; $7b52: $d7
	rst SubAFromDE                                          ; $7b53: $df
	rst SubAFromDE                                          ; $7b54: $df
	reti                                             ; $7b55: $d9


	jr nz, @+$7d                                     ; $7b56: $20 $7b

	pop hl                                           ; $7b58: $e1
	ld a, a                                          ; $7b59: $7f
	cp $9d                                           ; $7b5a: $fe $9d
	push de                                          ; $7b5c: $d5
	ld a, [$e063]                                    ; $7b5d: $fa $63 $e0

Jump_03e_7b60:
	ld [hl], e                                       ; $7b60: $73
	ldh a, [$9d]                                     ; $7b61: $f0 $9d
	ld d, l                                          ; $7b63: $55
	xor a                                            ; $7b64: $af
	ld h, e                                          ; $7b65: $63
	ldh a, [hDisp1_OBP1]                                     ; $7b66: $f0 $94
	xor h                                            ; $7b68: $ac
	ld e, h                                          ; $7b69: $5c
	cp h                                             ; $7b6a: $bc
	ld e, h                                          ; $7b6b: $5c
	db $ec                                           ; $7b6c: $ec
	ld l, h                                          ; $7b6d: $6c
	db $ec                                           ; $7b6e: $ec
	db $ec                                           ; $7b6f: $ec
	rlca                                             ; $7b70: $07
	rrca                                             ; $7b71: $0f
	rra                                              ; $7b72: $1f
	call c, $9a3f                                    ; $7b73: $dc $3f $9a
	ld d, b                                          ; $7b76: $50
	and b                                            ; $7b77: $a0
	ld d, b                                          ; $7b78: $50
	ldh [$50], a                                     ; $7b79: $e0 $50
	sbc $40                                          ; $7b7b: $de $40
	ld a, a                                          ; $7b7d: $7f
	ld sp, hl                                        ; $7b7e: $f9
	sbc h                                            ; $7b7f: $9c
	and b                                            ; $7b80: $a0
	db $10                                           ; $7b81: $10
	and b                                            ; $7b82: $a0
	sbc $b0                                          ; $7b83: $de $b0
	pop de                                           ; $7b85: $d1
	rst $38                                          ; $7b86: $ff
	sbc l                                            ; $7b87: $9d
	di                                               ; $7b88: $f3
	db $fd                                           ; $7b89: $fd
	ld [hl], l                                       ; $7b8a: $75
	ld a, d                                          ; $7b8b: $7a
	ld a, b                                          ; $7b8c: $78
	ld c, a                                          ; $7b8d: $4f
	ld l, a                                          ; $7b8e: $6f
	ld sp, hl                                        ; $7b8f: $f9
	add [hl]                                         ; $7b90: $86
	rst $38                                          ; $7b91: $ff
	ld h, b                                          ; $7b92: $60
	sub e                                            ; $7b93: $93
	ld a, [bc]                                       ; $7b94: $0a
	inc e                                            ; $7b95: $1c
	db $e4                                           ; $7b96: $e4
	add sp, -$11                                     ; $7b97: $e8 $ef
	rst $38                                          ; $7b99: $ff
	sub e                                            ; $7b9a: $93
	ld a, h                                          ; $7b9b: $7c
	pop af                                           ; $7b9c: $f1
	cp $f8                                           ; $7b9d: $fe $f8
	ldh a, [$f0]                                     ; $7b9f: $f0 $f0
	ld hl, sp-$20                                    ; $7ba1: $f8 $e0
	pop bc                                           ; $7ba3: $c1
	add e                                            ; $7ba4: $83
	inc bc                                           ; $7ba5: $03
	rlca                                             ; $7ba6: $07
	dec c                                            ; $7ba7: $0d
	rst FarCall                                          ; $7ba8: $f7
	rst SubAFromDE                                          ; $7ba9: $df
	db $fc                                           ; $7baa: $fc
	sub h                                            ; $7bab: $94
	inc bc                                           ; $7bac: $03
	rrca                                             ; $7bad: $0f
	ccf                                              ; $7bae: $3f
	dec sp                                           ; $7baf: $3b
	or $ee                                           ; $7bb0: $f6 $ee
	cp $74                                           ; $7bb2: $fe $74
	db $f4                                           ; $7bb4: $f4
	ld [$7bca], a                                    ; $7bb5: $ea $ca $7b
	and b                                            ; $7bb8: $a0
	sub a                                            ; $7bb9: $97
	dec a                                            ; $7bba: $3d
	ld sp, hl                                        ; $7bbb: $f9
	ld sp, hl                                        ; $7bbc: $f9
	pop af                                           ; $7bbd: $f1
	pop af                                           ; $7bbe: $f1
	ccf                                              ; $7bbf: $3f

Call_03e_7bc0:
	ld e, a                                          ; $7bc0: $5f
	ld a, a                                          ; $7bc1: $7f
	call c, $9dff                                    ; $7bc2: $dc $ff $9d
	rst GetHLinHL                                          ; $7bc5: $cf
	ccf                                              ; $7bc6: $3f
	db $db                                           ; $7bc7: $db
	rst $38                                          ; $7bc8: $ff
	sub h                                            ; $7bc9: $94
	db $ec                                           ; $7bca: $ec
	db $e4                                           ; $7bcb: $e4
	db $ec                                           ; $7bcc: $ec
	call nz, $c7c5                                   ; $7bcd: $c4 $c5 $c7
	add e                                            ; $7bd0: $83
	jp $f8f0                                         ; $7bd1: $c3 $f0 $f8


	ldh a, [$de]                                     ; $7bd4: $f0 $de
	ld hl, sp-$21                                    ; $7bd6: $f8 $df
	db $fc                                           ; $7bd8: $fc
	sbc h                                            ; $7bd9: $9c
	sub l                                            ; $7bda: $95
	dec c                                            ; $7bdb: $0d
	dec b                                            ; $7bdc: $05
	ld [hl], c                                       ; $7bdd: $71
	add b                                            ; $7bde: $80
	call c, $de0e                                    ; $7bdf: $dc $0e $de
	ld b, $df                                        ; $7be2: $06 $df
	ld h, c                                          ; $7be4: $61
	sbc c                                            ; $7be5: $99
	ld h, e                                          ; $7be6: $63
	ld [hl], c                                       ; $7be7: $71
	ld [hl], c                                       ; $7be8: $71
	ld h, c                                          ; $7be9: $61
	ld h, c                                          ; $7bea: $61
	ld [hl], b                                       ; $7beb: $70
	sbc $9c                                          ; $7bec: $de $9c
	sub d                                            ; $7bee: $92
	adc [hl]                                         ; $7bef: $8e
	adc d                                            ; $7bf0: $8a
	sbc d                                            ; $7bf1: $9a
	sbc d                                            ; $7bf2: $9a
	adc a                                            ; $7bf3: $8f
	db $e4                                           ; $7bf4: $e4
	db $e4                                           ; $7bf5: $e4
	ld h, h                                          ; $7bf6: $64
	ld h, [hl]                                       ; $7bf7: $66
	ld l, [hl]                                       ; $7bf8: $6e
	xor $2e                                          ; $7bf9: $ee $2e
	ld a, $de                                        ; $7bfb: $3e $de
	cp $8a                                           ; $7bfd: $fe $8a

Jump_03e_7bff:
	rst $38                                          ; $7bff: $ff
	or $77                                           ; $7c00: $f6 $77
	rst FarCall                                          ; $7c02: $f7
	rst $38                                          ; $7c03: $ff
	adc b                                            ; $7c04: $88
	ret z                                            ; $7c05: $c8

	inc e                                            ; $7c06: $1c
	jr @-$26                                         ; $7c07: $18 $d8

	ld hl, sp+$7c                                    ; $7c09: $f8 $7c
	rst $38                                          ; $7c0b: $ff
	jr jr_03e_7c26                                   ; $7c0c: $18 $18

	ld [$040c], sp                                   ; $7c0e: $08 $0c $04
	inc b                                            ; $7c11: $04
	adc a                                            ; $7c12: $8f
	rst $38                                          ; $7c13: $ff
	sbc $7f                                          ; $7c14: $de $7f
	sbc e                                            ; $7c16: $9b
	cp a                                             ; $7c17: $bf
	cp l                                             ; $7c18: $bd
	cp a                                             ; $7c19: $bf
	ld a, a                                          ; $7c1a: $7f
	ld [hl], a                                       ; $7c1b: $77
	jr nz, @-$20                                     ; $7c1c: $20 $de

	ld b, b                                          ; $7c1e: $40
	sbc [hl]                                         ; $7c1f: $9e
	sbc a                                            ; $7c20: $9f
	ld [hl], a                                       ; $7c21: $77
	ldh a, [$dc]                                     ; $7c22: $f0 $dc
	ld a, a                                          ; $7c24: $7f
	reti                                             ; $7c25: $d9


jr_03e_7c26:
	add b                                            ; $7c26: $80
	reti                                             ; $7c27: $d9


	rst $38                                          ; $7c28: $ff
	ld sp, hl                                        ; $7c29: $f9
	ld b, a                                          ; $7c2a: $47
	ldh a, [$da]                                     ; $7c2b: $f0 $da
	rst SubAFromDE                                          ; $7c2d: $df
	sbc [hl]                                         ; $7c2e: $9e
	rst $38                                          ; $7c2f: $ff
	reti                                             ; $7c30: $d9


	jr nz, @+$09                                     ; $7c31: $20 $07

	ret nc                                           ; $7c33: $d0

	sbc $ac                                          ; $7c34: $de $ac
	sbc l                                            ; $7c36: $9d
	adc h                                            ; $7c37: $8c
	xor h                                            ; $7c38: $ac
	sbc $bc                                          ; $7c39: $de $bc
	reti                                             ; $7c3b: $d9


	ld a, a                                          ; $7c3c: $7f
	sbc $40                                          ; $7c3d: $de $40
	cp $9a                                           ; $7c3f: $fe $9a
	dec d                                            ; $7c41: $15
	ld a, [hl+]                                      ; $7c42: $2a
	or b                                             ; $7c43: $b0
	or b                                             ; $7c44: $b0
	cp a                                             ; $7c45: $bf
	sbc $ff                                          ; $7c46: $de $ff
	sbc l                                            ; $7c48: $9d
	ld [$dbd5], a                                    ; $7c49: $ea $d5 $db
	rst $38                                          ; $7c4c: $ff
	sbc l                                            ; $7c4d: $9d
	db $fc                                           ; $7c4e: $fc
	adc $da                                          ; $7c4f: $ce $da
	rst $38                                          ; $7c51: $ff
	sbc [hl]                                         ; $7c52: $9e
	pop af                                           ; $7c53: $f1
	db $dd                                           ; $7c54: $dd
	rst $38                                          ; $7c55: $ff
	sbc e                                            ; $7c56: $9b
	ld sp, hl                                        ; $7c57: $f9
	adc a                                            ; $7c58: $8f
	ld de, $dd03                                     ; $7c59: $11 $03 $dd
	rst $38                                          ; $7c5c: $ff
	sub e                                            ; $7c5d: $93
	cp $f0                                           ; $7c5e: $fe $f0
	xor $fc                                          ; $7c60: $ee $fc
	rst $38                                          ; $7c62: $ff
	rst AddAOntoHL                                          ; $7c63: $ef
	xor a                                            ; $7c64: $af
	rst SubAFromBC                                          ; $7c65: $e7
	db $eb                                           ; $7c66: $eb
	ldh a, [$f1]                                     ; $7c67: $f0 $f1
	ldh a, [$de]                                     ; $7c69: $f0 $de
	rst SubAFromDE                                          ; $7c6b: $df
	rst SubAFromDE                                          ; $7c6c: $df
	rra                                              ; $7c6d: $1f
	sbc $0f                                          ; $7c6e: $de $0f
	ld a, e                                          ; $7c70: $7b
	ld [$fc9a], a                                    ; $7c71: $ea $9a $fc
	pop af                                           ; $7c74: $f1
	inc bc                                           ; $7c75: $03
	ld b, $0c                                        ; $7c76: $06 $0c
	ld [hl], e                                       ; $7c78: $73
	ldh [$8e], a                                     ; $7c79: $e0 $8e
	db $fc                                           ; $7c7b: $fc
	ld hl, sp-$10                                    ; $7c7c: $f8 $f0
	sub [hl]                                         ; $7c7e: $96
	ld h, $47                                        ; $7c7f: $26 $47
	rst JumpTable                                          ; $7c81: $c7
	adc l                                            ; $7c82: $8d
	ld [$1000], sp                                   ; $7c83: $08 $00 $10
	pop hl                                           ; $7c86: $e1
	pop bc                                           ; $7c87: $c1
	add b                                            ; $7c88: $80
	nop                                              ; $7c89: $00
	ld [bc], a                                       ; $7c8a: $02
	rlca                                             ; $7c8b: $07
	ld [hl], a                                       ; $7c8c: $77
	ldh [$7f], a                                     ; $7c8d: $e0 $7f
	dec l                                            ; $7c8f: $2d
	sbc e                                            ; $7c90: $9b
	cp a                                             ; $7c91: $bf
	rst SubAFromDE                                          ; $7c92: $df
	sub a                                            ; $7c93: $97
	add l                                            ; $7c94: $85
	db $dd                                           ; $7c95: $dd
	rst $38                                          ; $7c96: $ff
	sub l                                            ; $7c97: $95
	ld a, a                                          ; $7c98: $7f
	ccf                                              ; $7c99: $3f
	rrca                                             ; $7c9a: $0f
	inc bc                                           ; $7c9b: $03
	pop hl                                           ; $7c9c: $e1

Call_03e_7c9d:
	ldh [$f0], a                                     ; $7c9d: $e0 $f0
	pop af                                           ; $7c9f: $f1
	ld sp, hl                                        ; $7ca0: $f9
	db $fd                                           ; $7ca1: $fd
	halt                                             ; $7ca2: $76
	ldh a, [c]                                       ; $7ca3: $f2
	ld a, a                                          ; $7ca4: $7f
	pop de                                           ; $7ca5: $d1
	ld [hl], a                                       ; $7ca6: $77
	ei                                               ; $7ca7: $fb
	rst SubAFromDE                                          ; $7ca8: $df
	add a                                            ; $7ca9: $87
	sbc $d3                                          ; $7caa: $de $d3
	sbc h                                            ; $7cac: $9c
	ld l, e                                          ; $7cad: $6b
	ld e, e                                          ; $7cae: $5b
	reti                                             ; $7caf: $d9


	call c, $9b3f                                    ; $7cb0: $dc $3f $9b
	sbc a                                            ; $7cb3: $9f
	adc a                                            ; $7cb4: $8f
	rrca                                             ; $7cb5: $0f
	or e                                             ; $7cb6: $b3
	sbc $fb                                          ; $7cb7: $de $fb
	sbc d                                            ; $7cb9: $9a
	di                                               ; $7cba: $f3
	ei                                               ; $7cbb: $fb
	rst $38                                          ; $7cbc: $ff
	db $fc                                           ; $7cbd: $fc
	rst SubAFromDE                                          ; $7cbe: $df
	sbc $ff                                          ; $7cbf: $de $ff
	ld a, a                                          ; $7cc1: $7f
	ld sp, hl                                        ; $7cc2: $f9
	ret c                                            ; $7cc3: $d8

	rst $38                                          ; $7cc4: $ff
	ld h, e                                          ; $7cc5: $63
	jr c, @-$6b                                      ; $7cc6: $38 $93

	ld a, [$bdfd]                                    ; $7cc8: $fa $fd $bd
	ld h, $ff                                        ; $7ccb: $26 $ff
	rst $38                                          ; $7ccd: $ff
	add c                                            ; $7cce: $81
	inc bc                                           ; $7ccf: $03
	ld a, c                                          ; $7cd0: $79
	ld a, b                                          ; $7cd1: $78
	ld a, h                                          ; $7cd2: $7c
	ld a, l                                          ; $7cd3: $7d
	ld a, d                                          ; $7cd4: $7a
	xor e                                            ; $7cd5: $ab
	ld a, a                                          ; $7cd6: $7f
	ld [hl], b                                       ; $7cd7: $70
	ld a, a                                          ; $7cd8: $7f
	jp c, Jump_03e_667e                              ; $7cd9: $da $7e $66

	ld [hl], e                                       ; $7cdc: $73
	or [hl]                                          ; $7cdd: $b6
	sbc l                                            ; $7cde: $9d
	db $fc                                           ; $7cdf: $fc
	ret nz                                           ; $7ce0: $c0

	ld [hl], l                                       ; $7ce1: $75
	rrca                                             ; $7ce2: $0f
	sub l                                            ; $7ce3: $95
	ld a, a                                          ; $7ce4: $7f
	nop                                              ; $7ce5: $00
	ret nz                                           ; $7ce6: $c0

	stop                                             ; $7ce7: $10 $00
	jr nc, @+$3a                                     ; $7ce9: $30 $38

	nop                                              ; $7ceb: $00
	add b                                            ; $7cec: $80
	rst $38                                          ; $7ced: $ff
	ld l, d                                          ; $7cee: $6a
	ld c, a                                          ; $7cef: $4f
	ld a, a                                          ; $7cf0: $7f
	db $eb                                           ; $7cf1: $eb
	ld l, d                                          ; $7cf2: $6a
	rst FarCall                                          ; $7cf3: $f7
	ld l, c                                          ; $7cf4: $69
	rst $38                                          ; $7cf5: $ff
	ld a, a                                          ; $7cf6: $7f
	rst FarCall                                          ; $7cf7: $f7
	ld a, h                                          ; $7cf8: $7c
	sub a                                            ; $7cf9: $97
	sbc [hl]                                         ; $7cfa: $9e
	ld b, $77                                        ; $7cfb: $06 $77
	ldh a, [$7f]                                     ; $7cfd: $f0 $7f
	cp $9a                                           ; $7cff: $fe $9a
	ldh [$f9], a                                     ; $7d01: $e0 $f9
	rst $38                                          ; $7d03: $ff
	rst $38                                          ; $7d04: $ff
	rst SubAFromDE                                          ; $7d05: $df
	ld [hl], a                                       ; $7d06: $77
	and [hl]                                         ; $7d07: $a6
	sbc e                                            ; $7d08: $9b
	ld a, a                                          ; $7d09: $7f
	inc bc                                           ; $7d0a: $03
	rst $38                                          ; $7d0b: $ff
	jr nz, jr_03e_7d84                               ; $7d0c: $20 $76

	sbc $9b                                          ; $7d0e: $de $9b
	add b                                            ; $7d10: $80
	db $fc                                           ; $7d11: $fc
	nop                                              ; $7d12: $00
	ldh a, [rWY]                                     ; $7d13: $f0 $4a
	ret nc                                           ; $7d15: $d0

	sbc b                                            ; $7d16: $98
	rlca                                             ; $7d17: $07
	nop                                              ; $7d18: $00
	adc b                                            ; $7d19: $88
	ret nz                                           ; $7d1a: $c0

	nop                                              ; $7d1b: $00
	adc [hl]                                         ; $7d1c: $8e
	add [hl]                                         ; $7d1d: $86
	ld [hl], h                                       ; $7d1e: $74
	sbc b                                            ; $7d1f: $98
	db $fc                                           ; $7d20: $fc
	sub l                                            ; $7d21: $95
	add $7b                                          ; $7d22: $c6 $7b
	rra                                              ; $7d24: $1f
	inc bc                                           ; $7d25: $03
	ld bc, $030f                                     ; $7d26: $01 $0f $03
	inc bc                                           ; $7d29: $03
	ccf                                              ; $7d2a: $3f
	rlca                                             ; $7d2b: $07
	ld sp, hl                                        ; $7d2c: $f9
	sbc h                                            ; $7d2d: $9c
	ld a, $81                                        ; $7d2e: $3e $81
	adc l                                            ; $7d30: $8d
	ld a, c                                          ; $7d31: $79
	sbc h                                            ; $7d32: $9c
	ld a, e                                          ; $7d33: $7b
	xor a                                            ; $7d34: $af
	adc [hl]                                         ; $7d35: $8e
	ld a, a                                          ; $7d36: $7f
	ld [hl], e                                       ; $7d37: $73
	inc bc                                           ; $7d38: $03
	ld bc, $f800                                     ; $7d39: $01 $00 $f8
	pop hl                                           ; $7d3c: $e1
	add e                                            ; $7d3d: $83
	rra                                              ; $7d3e: $1f
	ld a, a                                          ; $7d3f: $7f
	rst $38                                          ; $7d40: $ff
	ld hl, sp-$80                                    ; $7d41: $f8 $80
	rlca                                             ; $7d43: $07
	ld e, $7c                                        ; $7d44: $1e $7c
	ldh [rPCM34], a                                  ; $7d46: $e0 $77
	res 2, [hl]                                      ; $7d48: $cb $96
	rra                                              ; $7d4a: $1f
	cp $fc                                           ; $7d4b: $fe $fc
	ld a, b                                          ; $7d4d: $78
	ldh a, [rSC]                                     ; $7d4e: $f0 $02
	nop                                              ; $7d50: $00
	nop                                              ; $7d51: $00
	ldh [$7b], a                                     ; $7d52: $e0 $7b
	and d                                            ; $7d54: $a2
	db $fd                                           ; $7d55: $fd
	sbc d                                            ; $7d56: $9a

jr_03e_7d57:
	rst SubAFromHL                                          ; $7d57: $d7
	dec d                                            ; $7d58: $15
	inc a                                            ; $7d59: $3c
	ld a, e                                          ; $7d5a: $7b
	inc sp                                           ; $7d5b: $33
	ld a, e                                          ; $7d5c: $7b
	ldh a, [$df]                                     ; $7d5d: $f0 $df
	rrca                                             ; $7d5f: $0f
	sbc [hl]                                         ; $7d60: $9e
	inc bc                                           ; $7d61: $03
	db $fc                                           ; $7d62: $fc
	sub l                                            ; $7d63: $95

jr_03e_7d64:
	inc e                                            ; $7d64: $1c
	jr c, jr_03e_7d57                                ; $7d65: $38 $f0

	ret nz                                           ; $7d67: $c0

	add b                                            ; $7d68: $80
	nop                                              ; $7d69: $00
	ld bc, $e007                                     ; $7d6a: $01 $07 $e0
	ret nz                                           ; $7d6d: $c0

	ei                                               ; $7d6e: $fb
	rst SubAFromDE                                          ; $7d6f: $df
	db $10                                           ; $7d70: $10
	sbc $20                                          ; $7d71: $de $20
	sbc d                                            ; $7d73: $9a
	db $10                                           ; $7d74: $10
	ld [de], a                                       ; $7d75: $12
	sub [hl]                                         ; $7d76: $96
	rrca                                             ; $7d77: $0f
	rrca                                             ; $7d78: $0f
	sbc $1f                                          ; $7d79: $de $1f
	sbc $0f                                          ; $7d7b: $de $0f
	add [hl]                                         ; $7d7d: $86
	ld hl, $0710                                     ; $7d7e: $21 $10 $07
	rla                                              ; $7d81: $17
	rrca                                             ; $7d82: $0f
	ccf                                              ; $7d83: $3f

jr_03e_7d84:
	rra                                              ; $7d84: $1f
	rst $38                                          ; $7d85: $ff
	ret nz                                           ; $7d86: $c0

	ldh [$f8], a                                     ; $7d87: $e0 $f8
	add sp, -$10                                     ; $7d89: $e8 $f0
	ret nz                                           ; $7d8b: $c0

	ldh [rP1], a                                     ; $7d8c: $e0 $00
	cp a                                             ; $7d8e: $bf
	dec de                                           ; $7d8f: $1b
	ld bc, $c080                                     ; $7d90: $01 $80 $c0
	ldh [$e0], a                                     ; $7d93: $e0 $e0
	ldh a, [$7f]                                     ; $7d95: $f0 $7f
	ld l, e                                          ; $7d97: $6b
	add b                                            ; $7d98: $80
	sub e                                            ; $7d99: $93
	ld sp, $f1b1                                     ; $7d9a: $31 $b1 $f1
	jr jr_03e_7dd7                                   ; $7d9d: $18 $38

	jr jr_03e_7da9                                   ; $7d9f: $18 $08

	inc b                                            ; $7da1: $04
	adc a                                            ; $7da2: $8f
	rst GetHLinHL                                          ; $7da3: $cf
	rst GetHLinHL                                          ; $7da4: $cf
	ld h, a                                          ; $7da5: $67
	sbc $07                                          ; $7da6: $de $07
	ld [hl], d                                       ; $7da8: $72

jr_03e_7da9:
	ld e, b                                          ; $7da9: $58
	adc $ff                                          ; $7daa: $ce $ff
	sbc [hl]                                         ; $7dac: $9e
	rst JumpTable                                          ; $7dad: $c7
	reti                                             ; $7dae: $d9


	rst $38                                          ; $7daf: $ff
	rst SubAFromDE                                          ; $7db0: $df
	db $fc                                           ; $7db1: $fc
	db $dd                                           ; $7db2: $dd
	cp $df                                           ; $7db3: $fe $df
	db $fc                                           ; $7db5: $fc
	reti                                             ; $7db6: $d9


	rst $38                                          ; $7db7: $ff
	sbc l                                            ; $7db8: $9d
	cp $7a                                           ; $7db9: $fe $7a
	sbc $fe                                          ; $7dbb: $de $fe
	sbc d                                            ; $7dbd: $9a
	ld a, h                                          ; $7dbe: $7c
	cp $ff                                           ; $7dbf: $fe $ff
	ld bc, $de85                                     ; $7dc1: $01 $85 $de
	ld bc, $839e                                     ; $7dc4: $01 $9e $83
	ld l, d                                          ; $7dc7: $6a
	call nc, $c83d                                   ; $7dc8: $d4 $3d $c8
	sbc [hl]                                         ; $7dcb: $9e
	add hl, bc                                       ; $7dcc: $09
	jp c, $9eff                                      ; $7dcd: $da $ff $9e

	or $6f                                           ; $7dd0: $f6 $6f
	ld c, e                                          ; $7dd2: $4b
	sbc [hl]                                         ; $7dd3: $9e
	ld bc, $c267                                     ; $7dd4: $01 $67 $c2

jr_03e_7dd7:
	ld a, a                                          ; $7dd7: $7f
	ret c                                            ; $7dd8: $d8

	sbc e                                            ; $7dd9: $9b
	rst JumpTable                                          ; $7dda: $c7
	ld a, a                                          ; $7ddb: $7f
	db $e3                                           ; $7ddc: $e3
	ld a, a                                          ; $7ddd: $7f
	ld a, b                                          ; $7dde: $78
	db $dd                                           ; $7ddf: $dd
	sbc d                                            ; $7de0: $9a
	nop                                              ; $7de1: $00
	jr c, jr_03e_7d64                                ; $7de2: $38 $80

	inc e                                            ; $7de4: $1c
	add b                                            ; $7de5: $80
	ld a, e                                          ; $7de6: $7b
	ld e, $7f                                        ; $7de7: $1e $7f
	and a                                            ; $7de9: $a7
	sbc e                                            ; $7dea: $9b
	ldh a, [$e0]                                     ; $7deb: $f0 $e0
	ret nz                                           ; $7ded: $c0

	rst $38                                          ; $7dee: $ff
	ld [hl], a                                       ; $7def: $77
	or $eb                                           ; $7df0: $f6 $eb
	sbc $03                                          ; $7df2: $de $03
	rst SubAFromDE                                          ; $7df4: $df
	ld bc, $d87a                                     ; $7df5: $01 $7a $d8
	ld h, e                                          ; $7df8: $63
	sbc b                                            ; $7df9: $98
	ld a, a                                          ; $7dfa: $7f
	dec [hl]                                         ; $7dfb: $35
	sbc e                                            ; $7dfc: $9b
	ld hl, sp-$01                                    ; $7dfd: $f8 $ff
	ld hl, sp-$03                                    ; $7dff: $f8 $fd
	ld a, d                                          ; $7e01: $7a
	ld l, e                                          ; $7e02: $6b
	sub l                                            ; $7e03: $95
	rrca                                             ; $7e04: $0f
	rlca                                             ; $7e05: $07
	nop                                              ; $7e06: $00
	rlca                                             ; $7e07: $07
	ld [bc], a                                       ; $7e08: $02
	nop                                              ; $7e09: $00
	db $10                                           ; $7e0a: $10
	sub b                                            ; $7e0b: $90
	nop                                              ; $7e0c: $00
	add hl, sp                                       ; $7e0d: $39
	ld d, [hl]                                       ; $7e0e: $56
	add b                                            ; $7e0f: $80
	ld h, a                                          ; $7e10: $67
	ld [hl], e                                       ; $7e11: $73
	ld h, e                                          ; $7e12: $63
	ret nz                                           ; $7e13: $c0

	ld a, l                                          ; $7e14: $7d
	xor h                                            ; $7e15: $ac
	sbc e                                            ; $7e16: $9b
	ld a, [hl]                                       ; $7e17: $7e
	inc bc                                           ; $7e18: $03
	ld h, b                                          ; $7e19: $60
	db $fc                                           ; $7e1a: $fc
	ld [hl], a                                       ; $7e1b: $77
	ldh a, [$73]                                     ; $7e1c: $f0 $73
	cp e                                             ; $7e1e: $bb
	sub e                                            ; $7e1f: $93
	rlca                                             ; $7e20: $07
	add [hl]                                         ; $7e21: $86
	call nz, $e364                                   ; $7e22: $c4 $64 $e3
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	add a                                            ; $7e27: $87
	nop                                              ; $7e28: $00
	ld bc, $8303                                     ; $7e29: $01 $03 $83
	db $fd                                           ; $7e2c: $fd
	sbc d                                            ; $7e2d: $9a
	sub a                                            ; $7e2e: $97
	add [hl]                                         ; $7e2f: $86
	adc e                                            ; $7e30: $8b
	rra                                              ; $7e31: $1f
	db $10                                           ; $7e32: $10
	ld a, d                                          ; $7e33: $7a
	sub c                                            ; $7e34: $91
	rst SubAFromDE                                          ; $7e35: $df
	rrca                                             ; $7e36: $0f
	halt                                             ; $7e37: $76
	dec de                                           ; $7e38: $1b
	ld a, e                                          ; $7e39: $7b
	ld [hl], b                                       ; $7e3a: $70
	ld c, e                                          ; $7e3b: $4b
	halt                                             ; $7e3c: $76
	ld [hl], l                                       ; $7e3d: $75
	ld [de], a                                       ; $7e3e: $12
	sbc [hl]                                         ; $7e3f: $9e
	inc b                                            ; $7e40: $04
	sbc $0c                                          ; $7e41: $de $0c
	ld sp, hl                                        ; $7e43: $f9
	rst SubAFromDE                                          ; $7e44: $df
	inc b                                            ; $7e45: $04
	sbc c                                            ; $7e46: $99
	jr nc, jr_03e_7ec1                               ; $7e47: $30 $78

	ld a, [hl]                                       ; $7e49: $7e
	ld [hl], d                                       ; $7e4a: $72
	ldh a, [$e1]                                     ; $7e4b: $f0 $e1
	db $dd                                           ; $7e4d: $dd
	inc bc                                           ; $7e4e: $03
	sbc e                                            ; $7e4f: $9b
	ld bc, $0f0d                                     ; $7e50: $01 $0d $0f
	rra                                              ; $7e53: $1f
	ld [hl], b                                       ; $7e54: $70
	ld a, a                                          ; $7e55: $7f
	sbc $3f                                          ; $7e56: $de $3f
	ld h, a                                          ; $7e58: $67
	ld hl, sp-$62                                    ; $7e59: $f8 $9e
	pop hl                                           ; $7e5b: $e1
	jp nc, Jump_03e_7eff                             ; $7e5c: $d2 $ff $7e

	pop bc                                           ; $7e5f: $c1
	ld a, d                                          ; $7e60: $7a
	cp [hl]                                          ; $7e61: $be
	ld a, d                                          ; $7e62: $7a
	cp h                                             ; $7e63: $bc
	ret c                                            ; $7e64: $d8

	rst $38                                          ; $7e65: $ff
	sbc h                                            ; $7e66: $9c
	ld a, [hl]                                       ; $7e67: $7e
	db $fc                                           ; $7e68: $fc
	rra                                              ; $7e69: $1f
	ld a, e                                          ; $7e6a: $7b
	ld h, d                                          ; $7e6b: $62
	sbc e                                            ; $7e6c: $9b
	rla                                              ; $7e6d: $17
	nop                                              ; $7e6e: $00
	add c                                            ; $7e6f: $81
	inc bc                                           ; $7e70: $03
	ld a, d                                          ; $7e71: $7a
	dec e                                            ; $7e72: $1d
	sbc l                                            ; $7e73: $9d
	rst $38                                          ; $7e74: $ff
	add sp, $7b                                      ; $7e75: $e8 $7b
	sub c                                            ; $7e77: $91
	sbc e                                            ; $7e78: $9b
	add b                                            ; $7e79: $80
	and a                                            ; $7e7a: $a7
	rst $38                                          ; $7e7b: $ff
	ld bc, $2e78                                     ; $7e7c: $01 $78 $2e

Call_03e_7e7f:
	ld a, a                                          ; $7e7f: $7f
	cp [hl]                                          ; $7e80: $be
	sbc d                                            ; $7e81: $9a
	ld e, b                                          ; $7e82: $58
	nop                                              ; $7e83: $00
	cp $40                                           ; $7e84: $fe $40
	rrca                                             ; $7e86: $0f
	ld a, d                                          ; $7e87: $7a
	dec d                                            ; $7e88: $15
	sbc [hl]                                         ; $7e89: $9e
	rst FarCall                                          ; $7e8a: $f7
	ld a, c                                          ; $7e8b: $79
	sub h                                            ; $7e8c: $94
	ld a, c                                          ; $7e8d: $79
	xor b                                            ; $7e8e: $a8
	sbc l                                            ; $7e8f: $9d
	ldh a, [$08]                                     ; $7e90: $f0 $08
	ld [hl], l                                       ; $7e92: $75
	adc e                                            ; $7e93: $8b
	ld [hl], d                                       ; $7e94: $72
	ld e, [hl]                                       ; $7e95: $5e
	sbc e                                            ; $7e96: $9b
	inc de                                           ; $7e97: $13
	rst $38                                          ; $7e98: $ff
	nop                                              ; $7e99: $00
	db $fc                                           ; $7e9a: $fc
	db $fd                                           ; $7e9b: $fd
	sbc e                                            ; $7e9c: $9b
	db $ec                                           ; $7e9d: $ec
	nop                                              ; $7e9e: $00
	rst $38                                          ; $7e9f: $ff
	add a                                            ; $7ea0: $87
	db $dd                                           ; $7ea1: $dd
	rst $38                                          ; $7ea2: $ff
	sbc e                                            ; $7ea3: $9b
	rlca                                             ; $7ea4: $07
	rst $38                                          ; $7ea5: $ff
	nop                                              ; $7ea6: $00
	ld a, b                                          ; $7ea7: $78
	db $fd                                           ; $7ea8: $fd
	sbc c                                            ; $7ea9: $99
	ld hl, sp+$00                                    ; $7eaa: $f8 $00
	ret nz                                           ; $7eac: $c0

	rst $38                                          ; $7ead: $ff
	rst $38                                          ; $7eae: $ff
	ld hl, sp+$53                                    ; $7eaf: $f8 $53
	nop                                              ; $7eb1: $00
	sbc l                                            ; $7eb2: $9d
	sub b                                            ; $7eb3: $90
	rst $38                                          ; $7eb4: $ff
	ld a, c                                          ; $7eb5: $79
	rst JumpTable                                          ; $7eb6: $c7
	ld e, a                                          ; $7eb7: $5f
	ldh a, [$df]                                     ; $7eb8: $f0 $df
	ld bc, $879e                                     ; $7eba: $01 $9e $87
	sbc $01                                          ; $7ebd: $de $01
	sbc [hl]                                         ; $7ebf: $9e
	adc a                                            ; $7ec0: $8f

jr_03e_7ec1:
	ld h, e                                          ; $7ec1: $63
	ldh a, [$da]                                     ; $7ec2: $f0 $da
	rst $38                                          ; $7ec4: $ff
	sbc [hl]                                         ; $7ec5: $9e
	add c                                            ; $7ec6: $81
	ld a, [$7e9e]                                    ; $7ec7: $fa $9e $7e
	inc h                                            ; $7eca: $24
	nop                                              ; $7ecb: $00
	sbc c                                            ; $7ecc: $99
	ld b, [hl]                                       ; $7ecd: $46
	ld b, h                                          ; $7ece: $44
	ld h, h                                          ; $7ecf: $64
	ld b, h                                          ; $7ed0: $44
	ld [hl], a                                       ; $7ed1: $77
	ld [hl], a                                       ; $7ed2: $77

jr_03e_7ed3:
	db $dd                                           ; $7ed3: $dd
	ld d, l                                          ; $7ed4: $55
	sbc $33                                          ; $7ed5: $de $33
	scf                                              ; $7ed7: $37
	or $9d                                           ; $7ed8: $f6 $9d
	inc [hl]                                         ; $7eda: $34
	ld h, [hl]                                       ; $7edb: $66
	inc bc                                           ; $7edc: $03
	or $4b                                           ; $7edd: $f6 $4b
	or $98                                           ; $7edf: $f6 $98
	inc sp                                           ; $7ee1: $33
	ld h, [hl]                                       ; $7ee2: $66
	ld h, h                                          ; $7ee3: $64
	ld b, h                                          ; $7ee4: $44
	ld b, h                                          ; $7ee5: $44
	ld h, [hl]                                       ; $7ee6: $66
	ld h, h                                          ; $7ee7: $64
	db $dd                                           ; $7ee8: $dd
	inc sp                                           ; $7ee9: $33
	db $dd                                           ; $7eea: $dd
	ld b, h                                          ; $7eeb: $44
	ld d, a                                          ; $7eec: $57

jr_03e_7eed:
	or $b2                                           ; $7eed: $f6 $b2
	ld b, $9d                                        ; $7eef: $06 $9d
	nop                                              ; $7ef1: $00
	rst $38                                          ; $7ef2: $ff
	ld [hl], a                                       ; $7ef3: $77
	cp $9d                                           ; $7ef4: $fe $9d
	inc bc                                           ; $7ef6: $03
	db $fc                                           ; $7ef7: $fc
	ld h, a                                          ; $7ef8: $67
	cp $6f                                           ; $7ef9: $fe $6f
	ldh a, [$9d]                                     ; $7efb: $f0 $9d

Jump_03e_7efd:
	add b                                            ; $7efd: $80
	ld a, a                                          ; $7efe: $7f

Call_03e_7eff:
Jump_03e_7eff:
	ld l, a                                          ; $7eff: $6f
	cp $95                                           ; $7f00: $fe $95
	ret nz                                           ; $7f02: $c0

	ccf                                              ; $7f03: $3f
	jr jr_03e_7eed                                   ; $7f04: $18 $e7

	ld [hl], b                                       ; $7f06: $70
	adc a                                            ; $7f07: $8f
	ld a, b                                          ; $7f08: $78
	add a                                            ; $7f09: $87
	jr c, jr_03e_7ed3                                ; $7f0a: $38 $c7

	ld [hl], a                                       ; $7f0c: $77
	ld a, [$fe77]                                    ; $7f0d: $fa $77 $fe
	sbc l                                            ; $7f10: $9d
	ld e, $e1                                        ; $7f11: $1e $e1
	ld [hl], a                                       ; $7f13: $77
	cp $9d                                           ; $7f14: $fe $9d
	ld a, $c1                                        ; $7f16: $3e $c1
	ld h, a                                          ; $7f18: $67
	cp $9b                                           ; $7f19: $fe $9b
	rrca                                             ; $7f1b: $0f
	ldh a, [$1f]                                     ; $7f1c: $f0 $1f
	ldh [$57], a                                     ; $7f1e: $e0 $57
	cp $7f                                           ; $7f20: $fe $7f
	adc $67                                          ; $7f22: $ce $67

Jump_03e_7f24:
	cp $6f                                           ; $7f24: $fe $6f
	rst SubAFromDE                                          ; $7f26: $df
	ld l, a                                          ; $7f27: $6f
	or b                                             ; $7f28: $b0
	ld [hl], a                                       ; $7f29: $77
	cp $9b                                           ; $7f2a: $fe $9b
	ld b, b                                          ; $7f2c: $40
	cp a                                             ; $7f2d: $bf
	ld h, b                                          ; $7f2e: $60
	sbc a                                            ; $7f2f: $9f
	ld a, e                                          ; $7f30: $7b
	rst SubAFromDE                                          ; $7f31: $df
	sbc [hl]                                         ; $7f32: $9e
	jr @+$51                                         ; $7f33: $18 $4f

	cp $63                                           ; $7f35: $fe $63
	pop hl                                           ; $7f37: $e1
	ld l, e                                          ; $7f38: $6b
	cp $9e                                           ; $7f39: $fe $9e
	cp $4b                                           ; $7f3b: $fe $4b
	cp $96                                           ; $7f3d: $fe $96
	ret nz                                           ; $7f3f: $c0

	ldh [$c0], a                                     ; $7f40: $e0 $c0
	ldh [$c3], a                                     ; $7f42: $e0 $c3
	rst SubAFromBC                                          ; $7f44: $e7
	add $e7                                          ; $7f45: $c6 $e7
	rst JumpTable                                          ; $7f47: $c7
	ld l, e                                          ; $7f48: $6b
	cp $fd                                           ; $7f49: $fe $fd
	sub e                                            ; $7f4b: $93
	ld b, b                                          ; $7f4c: $40
	rst $38                                          ; $7f4d: $ff
	xor d                                            ; $7f4e: $aa
	rst $38                                          ; $7f4f: $ff
	ld [hl], l                                       ; $7f50: $75
	rst $38                                          ; $7f51: $ff
	jp z, $83ff                                      ; $7f52: $ca $ff $83

	ret nz                                           ; $7f55: $c0

	ld a, a                                          ; $7f56: $7f
	add b                                            ; $7f57: $80
	db $fc                                           ; $7f58: $fc
	ld a, e                                          ; $7f59: $7b
	rst JumpTable                                          ; $7f5a: $c7
	sub l                                            ; $7f5b: $95
	ld d, b                                          ; $7f5c: $50
	rst $38                                          ; $7f5d: $ff
	xor b                                            ; $7f5e: $a8
	rst $38                                          ; $7f5f: $ff
	inc d                                            ; $7f60: $14
	ccf                                              ; $7f61: $3f
	ld a, [hl+]                                      ; $7f62: $2a
	sbc a                                            ; $7f63: $9f
	inc bc                                           ; $7f64: $03
	rlca                                             ; $7f65: $07

jr_03e_7f66:
	ld a, e                                          ; $7f66: $7b
	cp $9e                                           ; $7f67: $fe $9e
	rst SubAFromBC                                          ; $7f69: $e7
	ld h, a                                          ; $7f6a: $67
	cp $9e                                           ; $7f6b: $fe $9e
	and e                                            ; $7f6d: $a3
	ld [hl], e                                       ; $7f6e: $73
	ret nc                                           ; $7f6f: $d0

	ldh [$d5], a                                     ; $7f70: $e0 $d5
	ld [hl], a                                       ; $7f72: $77
	sub b                                            ; $7f73: $90
	sbc h                                            ; $7f74: $9c
	ret nz                                           ; $7f75: $c0

	db $e3                                           ; $7f76: $e3
	jp $fe63                                         ; $7f77: $c3 $63 $fe


	ld l, a                                          ; $7f7a: $6f
	and b                                            ; $7f7b: $a0
	db $dd                                           ; $7f7c: $dd
	rst $38                                          ; $7f7d: $ff
	sbc c                                            ; $7f7e: $99
	db $fc                                           ; $7f7f: $fc

Call_03e_7f80:
	rst $38                                          ; $7f80: $ff
	ldh a, [$f8]                                     ; $7f81: $f0 $f8
	and $e0                                          ; $7f83: $e6 $e0
	ld e, a                                          ; $7f85: $5f
	ldh a, [$99]                                     ; $7f86: $f0 $99
	rra                                              ; $7f88: $1f
	ccf                                              ; $7f89: $3f
	rla                                              ; $7f8a: $17
	rrca                                             ; $7f8b: $0f
	dec sp                                           ; $7f8c: $3b
	rlca                                             ; $7f8d: $07
	ld e, [hl]                                       ; $7f8e: $5e
	add $6f                                          ; $7f8f: $c6 $6f
	cp $77                                           ; $7f91: $fe $77
	ld b, $56                                        ; $7f93: $06 $56
	rst AddAOntoHL                                          ; $7f95: $ef
	halt                                             ; $7f96: $76
	call nz, Call_03e_7c9d                           ; $7f97: $c4 $9d $7c
	add e                                            ; $7f9a: $83
	halt                                             ; $7f9b: $76
	add $7f                                          ; $7f9c: $c6 $7f
	db $e3                                           ; $7f9e: $e3
	ld a, a                                          ; $7f9f: $7f
	ld hl, sp+$7f                                    ; $7fa0: $f8 $7f
	cp $5e                                           ; $7fa2: $fe $5e
	add $6f                                          ; $7fa4: $c6 $6f
	cp $67                                           ; $7fa6: $fe $67
	rst SubAFromHL                                          ; $7fa8: $d7
	ld l, [hl]                                       ; $7fa9: $6e
	cp b                                             ; $7faa: $b8
	ld a, a                                          ; $7fab: $7f
	ld a, [$c39d]                                    ; $7fac: $fa $9d $c3
	inc a                                            ; $7faf: $3c
	ld c, a                                          ; $7fb0: $4f
	cp $7e                                           ; $7fb1: $fe $7e
	sub e                                            ; $7fb3: $93
	sbc l                                            ; $7fb4: $9d
	db $e3                                           ; $7fb5: $e3
	inc e                                            ; $7fb6: $1c
	ld d, a                                          ; $7fb7: $57
	cp $02                                           ; $7fb8: $fe $02
	ret nz                                           ; $7fba: $c0

	ld [hl], e                                       ; $7fbb: $73
	cp $7e                                           ; $7fbc: $fe $7e
	add hl, sp                                       ; $7fbe: $39
	sbc h                                            ; $7fbf: $9c
	ld a, [$f400]                                    ; $7fc0: $fa $00 $f4
	ld a, e                                          ; $7fc3: $7b
	db $fc                                           ; $7fc4: $fc
	ld a, a                                          ; $7fc5: $7f
	ld hl, sp+$66                                    ; $7fc6: $f8 $66
	ret z                                            ; $7fc8: $c8

	ld a, [hl]                                       ; $7fc9: $7e
	cp [hl]                                          ; $7fca: $be
	ld a, d                                          ; $7fcb: $7a
	cp h                                             ; $7fcc: $bc
	add b                                            ; $7fcd: $80
	and $c6                                          ; $7fce: $e6 $c6
	rst SubAFromBC                                          ; $7fd0: $e7
	ld a, [$1204]                                    ; $7fd1: $fa $04 $12
	xor h                                            ; $7fd4: $ac
	ld b, d                                          ; $7fd5: $42
	cp h                                             ; $7fd6: $bc
	push hl                                          ; $7fd7: $e5
	ld a, [de]                                       ; $7fd8: $1a
	ld h, [hl]                                       ; $7fd9: $66
	jr jr_03e_7f66                                   ; $7fda: $18 $8a

	ld [hl], h                                       ; $7fdc: $74
	inc c                                            ; $7fdd: $0c
	cp $1f                                           ; $7fde: $fe $1f
	rst AddAOntoHL                                          ; $7fe0: $ef
	dec l                                            ; $7fe1: $2d
	rra                                              ; $7fe2: $1f
	ld l, $1f                                        ; $7fe3: $2e $1f
	cpl                                              ; $7fe5: $2f
	rra                                              ; $7fe6: $1f
	rst AddAOntoHL                                          ; $7fe7: $ef
	rra                                              ; $7fe8: $1f
	sbc a                                            ; $7fe9: $9f
	cpl                                              ; $7fea: $2f
	ld e, a                                          ; $7feb: $5f
	daa                                              ; $7fec: $27
	sbc d                                            ; $7fed: $9a
	adc a                                            ; $7fee: $8f
	ld [hl], a                                       ; $7fef: $77
	rrca                                             ; $7ff0: $0f
	or a                                             ; $7ff1: $b7
	ld b, e                                          ; $7ff2: $43
	ld a, d                                          ; $7ff3: $7a
	call z, $fc7f                                    ; $7ff4: $cc $7f $fc
	sbc [hl]                                         ; $7ff7: $9e
	db $e3                                           ; $7ff8: $e3
	ld h, e                                          ; $7ff9: $63
	cp $e0                                           ; $7ffa: $fe $e0
	pop de                                           ; $7ffc: $d1
	ld e, [hl]                                       ; $7ffd: $5e
	add $6f                                          ; $7ffe: $c6 $6f
