; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $06d", ROMX[$4000], BANK[$6d]

	ldh a, [$f0]                                     ; $4000: $f0 $f0
	ld hl, sp+$2b                                    ; $4002: $f8 $2b
	add b                                            ; $4004: $80
	ld a, a                                          ; $4005: $7f
	ldh [$9d], a                                     ; $4006: $e0 $9d
	rra                                              ; $4008: $1f
	ld [bc], a                                       ; $4009: $02
	rla                                              ; $400a: $17
	add b                                            ; $400b: $80
	ld a, a                                          ; $400c: $7f
	cp $99                                           ; $400d: $fe $99
	cp $f1                                           ; $400f: $fe $f1
	rst $38                                          ; $4011: $ff
	rrca                                             ; $4012: $0f
	rst $38                                          ; $4013: $ff
	db $fd                                           ; $4014: $fd
	ld [hl], a                                       ; $4015: $77
	add b                                            ; $4016: $80
	ei                                               ; $4017: $fb
	ld a, l                                          ; $4018: $7d
	di                                               ; $4019: $f3
	rst SubAFromDE                                          ; $401a: $df
	ld [bc], a                                       ; $401b: $02
	adc [hl]                                         ; $401c: $8e
	inc bc                                           ; $401d: $03
	ld bc, $80c0                                     ; $401e: $01 $c0 $80
	ldh a, [$e0]                                     ; $4021: $f0 $e0
	sbc h                                            ; $4023: $9c
	ld hl, sp-$01                                    ; $4024: $f8 $ff
	add [hl]                                         ; $4026: $86
	db $e3                                           ; $4027: $e3
	add c                                            ; $4028: $81
	ld h, b                                          ; $4029: $60
	add b                                            ; $402a: $80
	ld h, b                                          ; $402b: $60
	add b                                            ; $402c: $80
	and b                                            ; $402d: $a0
	cp [hl]                                          ; $402e: $be
	or b                                             ; $402f: $b0
	db $10                                           ; $4030: $10
	ld [hl], b                                       ; $4031: $70
	sbc e                                            ; $4032: $9b
	ld b, b                                          ; $4033: $40
	jr nz, jr_06d_4076                               ; $4034: $20 $40

	nop                                              ; $4036: $00
	cp a                                             ; $4037: $bf
	ldh a, [rAUD2LOW]                                ; $4038: $f0 $18
	sbc e                                            ; $403a: $9b
	ld [$f0f8], sp                                   ; $403b: $08 $f8 $f0
	nop                                              ; $403e: $00
	cp a                                             ; $403f: $bf
	pop hl                                           ; $4040: $e1
	ld bc, $0395                                     ; $4041: $01 $95 $03
	rla                                              ; $4044: $17
	rrca                                             ; $4045: $0f
	ld e, a                                          ; $4046: $5f
	cp a                                             ; $4047: $bf
	rst $38                                          ; $4048: $ff
	rst $38                                          ; $4049: $ff
	rlca                                             ; $404a: $07
	inc bc                                           ; $404b: $03
	rrca                                             ; $404c: $0f
	cp d                                             ; $404d: $ba
	rra                                              ; $404e: $1f
	ld a, $00                                        ; $404f: $3e $00
	nop                                              ; $4051: $00
	nop                                              ; $4052: $00
	ld bc, $7b00                                     ; $4053: $01 $00 $7b
	cp a                                             ; $4056: $bf
	sbc l                                            ; $4057: $9d
	pop bc                                           ; $4058: $c1
	add c                                            ; $4059: $81
	rra                                              ; $405a: $1f
	ret nz                                           ; $405b: $c0

	sbc l                                            ; $405c: $9d
	nop                                              ; $405d: $00
	ld [$bf7b], sp                                   ; $405e: $08 $7b $bf

jr_06d_4061:
	sbc e                                            ; $4061: $9b
	ldh a, [rSB]                                     ; $4062: $f0 $01
	nop                                              ; $4064: $00
	pop hl                                           ; $4065: $e1
	dec de                                           ; $4066: $1b
	ret nz                                           ; $4067: $c0

	sbc h                                            ; $4068: $9c
	jp $f181                                         ; $4069: $c3 $81 $f1


	inc de                                           ; $406c: $13
	ret nz                                           ; $406d: $c0

	sbc e                                            ; $406e: $9b
	jr jr_06d_4061                                   ; $406f: $18 $f0

	pop af                                           ; $4071: $f1
	ldh [rBGP], a                                    ; $4072: $e0 $47
	add b                                            ; $4074: $80
	rlca                                             ; $4075: $07

jr_06d_4076:
	ldh [$da], a                                     ; $4076: $e0 $da
	add d                                            ; $4078: $82
	xor $df                                          ; $4079: $ee $df
	ld bc, $03de                                     ; $407b: $01 $de $03
	ld [hl], e                                       ; $407e: $73
	ld hl, sp-$22                                    ; $407f: $f8 $de
	ld [bc], a                                       ; $4081: $02
	add b                                            ; $4082: $80
	inc b                                            ; $4083: $04
	dec b                                            ; $4084: $05
	dec b                                            ; $4085: $05
	rlca                                             ; $4086: $07
	dec bc                                           ; $4087: $0b
	add hl, bc                                       ; $4088: $09
	ld [de], a                                       ; $4089: $12
	inc de                                           ; $408a: $13
	rlca                                             ; $408b: $07
	ld b, $06                                        ; $408c: $06 $06
	inc b                                            ; $408e: $04
	inc c                                            ; $408f: $0c
	rrca                                             ; $4090: $0f
	rra                                              ; $4091: $1f
	ld e, $25                                        ; $4092: $1e $25
	dec h                                            ; $4094: $25
	dec hl                                           ; $4095: $2b
	ld d, e                                          ; $4096: $53
	ld d, e                                          ; $4097: $53
	sub a                                            ; $4098: $97
	and [hl]                                         ; $4099: $a6
	and [hl]                                         ; $409a: $a6
	ld a, $3e                                        ; $409b: $3e $3e
	inc a                                            ; $409d: $3c
	ld a, h                                          ; $409e: $7c
	ld a, h                                          ; $409f: $7c
	ld hl, sp-$07                                    ; $40a0: $f8 $f9
	sbc [hl]                                         ; $40a2: $9e
	ld sp, hl                                        ; $40a3: $f9
	ld b, e                                          ; $40a4: $43
	jp $028e                                         ; $40a5: $c3 $8e $02


	dec b                                            ; $40a8: $05
	dec bc                                           ; $40a9: $0b
	rla                                              ; $40aa: $17
	rla                                              ; $40ab: $17
	inc de                                           ; $40ac: $13
	ld c, $01                                        ; $40ad: $0e $01
	inc bc                                           ; $40af: $03
	ld b, $0c                                        ; $40b0: $06 $0c
	jr jr_06d_40cc                                   ; $40b2: $18 $18

	inc e                                            ; $40b4: $1c
	rrca                                             ; $40b5: $0f
	inc bc                                           ; $40b6: $03
	ld bc, $eb6f                                     ; $40b7: $01 $6f $eb
	ld l, a                                          ; $40ba: $6f
	ld hl, sp+$7f                                    ; $40bb: $f8 $7f
	db $eb                                           ; $40bd: $eb
	ld a, a                                          ; $40be: $7f
	ld [$1999], a                                    ; $40bf: $ea $99 $19
	inc de                                           ; $40c2: $13
	ld h, $2a                                        ; $40c3: $26 $2a
	inc h                                            ; $40c5: $24
	ld b, l                                          ; $40c6: $45
	ld a, e                                          ; $40c7: $7b
	jp c, $1f91                                      ; $40c8: $da $91 $1f

	ccf                                              ; $40cb: $3f

jr_06d_40cc:
	dec sp                                           ; $40cc: $3b
	scf                                              ; $40cd: $37
	ld h, a                                          ; $40ce: $67
	ld h, l                                          ; $40cf: $65
	ld b, [hl]                                       ; $40d0: $46
	ld b, [hl]                                       ; $40d1: $46
	ld b, h                                          ; $40d2: $44
	ld b, h                                          ; $40d3: $44
	inc b                                            ; $40d4: $04
	inc bc                                           ; $40d5: $03
	rra                                              ; $40d6: $1f
	ld h, a                                          ; $40d7: $67
	ld l, a                                          ; $40d8: $6f
	ld hl, sp-$64                                    ; $40d9: $f8 $9c
	inc e                                            ; $40db: $1c
	ccf                                              ; $40dc: $3f
	ld a, a                                          ; $40dd: $7f
	db $db                                           ; $40de: $db
	rst $38                                          ; $40df: $ff
	sub e                                            ; $40e0: $93
	jr nz, jr_06d_4123                               ; $40e1: $20 $40

	add b                                            ; $40e3: $80
	ret nz                                           ; $40e4: $c0

	jr nz, jr_06d_40f7                               ; $40e5: $20 $10

	ld [$f70c], sp                                   ; $40e7: $08 $0c $f7
	rst FarCall                                          ; $40ea: $f7
	rst $38                                          ; $40eb: $ff
	db $fd                                           ; $40ec: $fd
	sbc $ed                                          ; $40ed: $de $ed
	sbc d                                            ; $40ef: $9a
	db $dd                                           ; $40f0: $dd
	ld a, [bc]                                       ; $40f1: $0a
	ld a, [bc]                                       ; $40f2: $0a
	ld bc, $de03                                     ; $40f3: $01 $03 $de
	inc de                                           ; $40f6: $13

jr_06d_40f7:
	adc [hl]                                         ; $40f7: $8e
	inc hl                                           ; $40f8: $23
	reti                                             ; $40f9: $d9


	ld sp, hl                                        ; $40fa: $f9
	ei                                               ; $40fb: $fb
	di                                               ; $40fc: $f3
	or $f6                                           ; $40fd: $f6 $f6
	db $f4                                           ; $40ff: $f4
	db $e4                                           ; $4100: $e4
	daa                                              ; $4101: $27
	daa                                              ; $4102: $27
	ld b, a                                          ; $4103: $47
	ld c, a                                          ; $4104: $4f
	ld c, a                                          ; $4105: $4f
	adc l                                            ; $4106: $8d
	adc a                                            ; $4107: $8f
	sbc a                                            ; $4108: $9f
	ld a, e                                          ; $4109: $7b
	xor l                                            ; $410a: $ad
	ld a, a                                          ; $410b: $7f
	ld l, d                                          ; $410c: $6a
	ld a, e                                          ; $410d: $7b
	bit 7, a                                         ; $410e: $cb $7f
	ld hl, sp-$67                                    ; $4110: $f8 $99
	rlca                                             ; $4112: $07
	inc c                                            ; $4113: $0c
	jr @+$32                                         ; $4114: $18 $30

	ld h, b                                          ; $4116: $60
	ret nz                                           ; $4117: $c0

	db $dd                                           ; $4118: $dd
	rst $38                                          ; $4119: $ff
	sbc d                                            ; $411a: $9a
	db $fd                                           ; $411b: $fd
	or $7a                                           ; $411c: $f6 $7a
	push de                                          ; $411e: $d5
	add b                                            ; $411f: $80
	cp $9b                                           ; $4120: $fe $9b
	inc bc                                           ; $4122: $03

jr_06d_4123:
	rrca                                             ; $4123: $0f
	db $fd                                           ; $4124: $fd
	xor d                                            ; $4125: $aa
	ldh [$c1], a                                     ; $4126: $e0 $c1
	rst SubAFromDE                                          ; $4128: $df
	rst SubAFromDE                                          ; $4129: $df
	add c                                            ; $412a: $81
	rst $38                                          ; $412b: $ff
	or a                                             ; $412c: $b7
	ld a, a                                          ; $412d: $7f
	ld [hl], a                                       ; $412e: $77
	ld a, e                                          ; $412f: $7b
	push af                                          ; $4130: $f5
	jr c, @+$32                                      ; $4131: $38 $30

	jr nz, jr_06d_419d                               ; $4133: $20 $68

	and b                                            ; $4135: $a0
	ret z                                            ; $4136: $c8

	call nz, $eb8a                                   ; $4137: $c4 $8a $eb
	push bc                                          ; $413a: $c5
	xor e                                            ; $413b: $ab
	rst SubAFromHL                                          ; $413c: $d7
	rst $38                                          ; $413d: $ff
	rra                                              ; $413e: $1f
	dec e                                            ; $413f: $1d
	rrca                                             ; $4140: $0f
	add h                                            ; $4141: $84
	ld [de], a                                       ; $4142: $12
	inc b                                            ; $4143: $04
	nop                                              ; $4144: $00
	ldh [$fe], a                                     ; $4145: $e0 $fe
	db $e3                                           ; $4147: $e3
	ldh a, [$3e]                                     ; $4148: $f0 $3e
	jp nz, $0797                                     ; $414a: $c2 $97 $07

	rrca                                             ; $414d: $0f
	rra                                              ; $414e: $1f
	inc sp                                           ; $414f: $33
	ld h, e                                          ; $4150: $63
	jp Boot                                          ; $4151: $c3 $00 $01


	ld a, e                                          ; $4154: $7b
	nop                                              ; $4155: $00
	ld a, [hl]                                       ; $4156: $7e
	db $dd                                           ; $4157: $dd
	sbc h                                            ; $4158: $9c
	db $fc                                           ; $4159: $fc
	add a                                            ; $415a: $87
	rrca                                             ; $415b: $0f
	sbc $ff                                          ; $415c: $de $ff
	rst SubAFromDE                                          ; $415e: $df
	cp $9d                                           ; $415f: $fe $9d
	db $fc                                           ; $4161: $fc
	ld hl, sp+$77                                    ; $4162: $f8 $77
	sub $7a                                          ; $4164: $d6 $7a
	and [hl]                                         ; $4166: $a6
	sub b                                            ; $4167: $90
	ld sp, hl                                        ; $4168: $f9
	cp $d8                                           ; $4169: $fe $d8
	ld h, c                                          ; $416b: $61
	add e                                            ; $416c: $83
	rla                                              ; $416d: $17
	xor a                                            ; $416e: $af
	ld d, l                                          ; $416f: $55
	rlca                                             ; $4170: $07
	rrca                                             ; $4171: $0f
	ccf                                              ; $4172: $3f
	cp $fc                                           ; $4173: $fe $fc
	add sp, $50                                      ; $4175: $e8 $50
	inc bc                                           ; $4177: $03
	ld h, b                                          ; $4178: $60
	pop hl                                           ; $4179: $e1
	adc a                                            ; $417a: $8f
	call c, $eede                                    ; $417b: $dc $de $ee
	rst FarCall                                          ; $417e: $f7
	rst FarCall                                          ; $417f: $f7
	ei                                               ; $4180: $fb
	rst $38                                          ; $4181: $ff
	rst $38                                          ; $4182: $ff
	ld [hl], a                                       ; $4183: $77
	ld [hl], e                                       ; $4184: $73
	inc sp                                           ; $4185: $33
	add hl, de                                       ; $4186: $19

jr_06d_4187:
	jr @+$0e                                         ; $4187: $18 $0c

	inc b                                            ; $4189: $04
	nop                                              ; $418a: $00
	reti                                             ; $418b: $d9


	rst $38                                          ; $418c: $ff
	ld a, d                                          ; $418d: $7a
	ld b, h                                          ; $418e: $44
	sbc d                                            ; $418f: $9a
	inc b                                            ; $4190: $04
	ld [$f008], sp                                   ; $4191: $08 $08 $f0
	jr nz, jr_06d_4187                               ; $4194: $20 $f1

	sbc [hl]                                         ; $4196: $9e
	ccf                                              ; $4197: $3f
	db $db                                           ; $4198: $db
	rst $38                                          ; $4199: $ff
	sbc h                                            ; $419a: $9c
	cp $3f                                           ; $419b: $fe $3f

jr_06d_419d:
	ret nz                                           ; $419d: $c0

	ld l, a                                          ; $419e: $6f
	ld d, d                                          ; $419f: $52
	add l                                            ; $41a0: $85
	ldh a, [$c0]                                     ; $41a1: $f0 $c0
	add b                                            ; $41a3: $80
	add b                                            ; $41a4: $80
	inc bc                                           ; $41a5: $03
	dec b                                            ; $41a6: $05
	ld a, [hl-]                                      ; $41a7: $3a
	ld c, [hl]                                       ; $41a8: $4e
	rrca                                             ; $41a9: $0f
	ccf                                              ; $41aa: $3f
	ld a, a                                          ; $41ab: $7f
	ld a, a                                          ; $41ac: $7f
	rst $38                                          ; $41ad: $ff
	cp $fd                                           ; $41ae: $fe $fd
	pop af                                           ; $41b0: $f1
	cp h                                             ; $41b1: $bc
	ld hl, sp-$08                                    ; $41b2: $f8 $f8

jr_06d_41b4:
	ldh a, [$e0]                                     ; $41b4: $f0 $e0
	ret nz                                           ; $41b6: $c0

	add b                                            ; $41b7: $80
	rra                                              ; $41b8: $1f
	jp Jump_06d_7b07                                 ; $41b9: $c3 $07 $7b


	jr c, jr_06d_4238                                ; $41bc: $38 $7a

	xor b                                            ; $41be: $a8
	ldh [$c1], a                                     ; $41bf: $e0 $c1
	sbc d                                            ; $41c1: $9a
	ldh [c], a                                       ; $41c2: $e2
	ld [hl], d                                       ; $41c3: $72
	ld a, d                                          ; $41c4: $7a
	ld a, l                                          ; $41c5: $7d
	cp l                                             ; $41c6: $bd
	sbc $ff                                          ; $41c7: $de $ff
	sub a                                            ; $41c9: $97
	cp [hl]                                          ; $41ca: $be
	sbc $ce                                          ; $41cb: $de $ce
	rst AddAOntoHL                                          ; $41cd: $ef
	rst FarCall                                          ; $41ce: $f7
	db $eb                                           ; $41cf: $eb
	and a                                            ; $41d0: $a7
	sub c                                            ; $41d1: $91
	sbc $ff                                          ; $41d2: $de $ff
	sbc d                                            ; $41d4: $9a
	rst AddAOntoHL                                          ; $41d5: $ef
	rst SubAFromHL                                          ; $41d6: $d7
	xor a                                            ; $41d7: $af
	rst SubAFromHL                                          ; $41d8: $d7
	xor e                                            ; $41d9: $ab
	ldh a, [c]                                       ; $41da: $f2
	ld h, a                                          ; $41db: $67
	sbc b                                            ; $41dc: $98
	sbc h                                            ; $41dd: $9c
	rst $38                                          ; $41de: $ff
	ldh a, [$f8]                                     ; $41df: $f0 $f8
	db $dd                                           ; $41e1: $dd
	rst $38                                          ; $41e2: $ff
	sbc e                                            ; $41e3: $9b
	ld hl, sp+$01                                    ; $41e4: $f8 $01
	rrca                                             ; $41e6: $0f
	rlca                                             ; $41e7: $07
	db $fd                                           ; $41e8: $fd
	sbc c                                            ; $41e9: $99
	rlca                                             ; $41ea: $07
	rst $38                                          ; $41eb: $ff
	rlca                                             ; $41ec: $07
	inc e                                            ; $41ed: $1c
	ld [hl], b                                       ; $41ee: $70
	ret nz                                           ; $41ef: $c0

	halt                                             ; $41f0: $76
	inc [hl]                                         ; $41f1: $34
	reti                                             ; $41f2: $d9


	rst $38                                          ; $41f3: $ff
	ld [hl], d                                       ; $41f4: $72
	sbc [hl]                                         ; $41f5: $9e
	ld h, a                                          ; $41f6: $67
	dec sp                                           ; $41f7: $3b
	sbc h                                            ; $41f8: $9c
	ld sp, hl                                        ; $41f9: $f9
	ret nz                                           ; $41fa: $c0

	and b                                            ; $41fb: $a0
	ldh [$c1], a                                     ; $41fc: $e0 $c1
	sbc l                                            ; $41fe: $9d
	adc h                                            ; $41ff: $8c
	ld e, b                                          ; $4200: $58
	ld a, d                                          ; $4201: $7a
	ld l, e                                          ; $4202: $6b
	ld a, [hl]                                       ; $4203: $7e
	push de                                          ; $4204: $d5
	sbc [hl]                                         ; $4205: $9e
	adc b                                            ; $4206: $88
	ld l, l                                          ; $4207: $6d
	add hl, bc                                       ; $4208: $09
	sub h                                            ; $4209: $94
	rlca                                             ; $420a: $07
	adc a                                            ; $420b: $8f
	sub c                                            ; $420c: $91
	ldh [c], a                                       ; $420d: $e2
	add h                                            ; $420e: $84
	adc b                                            ; $420f: $88
	ld d, b                                          ; $4210: $50
	ld h, b                                          ; $4211: $60
	ld b, b                                          ; $4212: $40
	jr nz, jr_06d_41b4                               ; $4213: $20 $9f

	ld e, a                                          ; $4215: $5f
	sub b                                            ; $4216: $90
	db $fd                                           ; $4217: $fd
	sbc [hl]                                         ; $4218: $9e
	db $fc                                           ; $4219: $fc
	ld h, a                                          ; $421a: $67
	ld hl, sp+$7c                                    ; $421b: $f8 $7c
	rst SubAFromBC                                          ; $421d: $e7
	adc c                                            ; $421e: $89
	ret nz                                           ; $421f: $c0

	ld sp, hl                                        ; $4220: $f9
	di                                               ; $4221: $f3
	sbc l                                            ; $4222: $9d
	halt                                             ; $4223: $76
	ret c                                            ; $4224: $d8

	rst $38                                          ; $4225: $ff
	rst $38                                          ; $4226: $ff
	ccf                                              ; $4227: $3f
	rlca                                             ; $4228: $07
	rrca                                             ; $4229: $0f
	ld a, [hl]                                       ; $422a: $7e
	ld sp, hl                                        ; $422b: $f9
	rst SubAFromBC                                          ; $422c: $e7
	nop                                              ; $422d: $00
	nop                                              ; $422e: $00
	ld b, $19                                        ; $422f: $06 $19
	ld h, c                                          ; $4231: $61
	add c                                            ; $4232: $81
	add d                                            ; $4233: $82
	adc h                                            ; $4234: $8c
	sbc $ff                                          ; $4235: $de $ff
	sub a                                            ; $4237: $97

jr_06d_4238:
	ld sp, hl                                        ; $4238: $f9
	pop hl                                           ; $4239: $e1
	add c                                            ; $423a: $81
	add e                                            ; $423b: $83
	adc a                                            ; $423c: $8f
	ld [hl], b                                       ; $423d: $70
	nop                                              ; $423e: $00
	rra                                              ; $423f: $1f
	reti                                             ; $4240: $d9


	rst $38                                          ; $4241: $ff
	sbc d                                            ; $4242: $9a
	db $e4                                           ; $4243: $e4
	ld [hl-], a                                      ; $4244: $32
	add hl, bc                                       ; $4245: $09
	add h                                            ; $4246: $84
	ld b, d                                          ; $4247: $42
	ldh [$c1], a                                     ; $4248: $e0 $c1
	sub a                                            ; $424a: $97
	rst FarCall                                          ; $424b: $f7
	ldh [c], a                                       ; $424c: $e2
	push bc                                          ; $424d: $c5
	adc c                                            ; $424e: $89
	ld de, $4121                                     ; $424f: $11 $21 $41
	add d                                            ; $4252: $82
	reti                                             ; $4253: $d9


	rst $38                                          ; $4254: $ff
	adc a                                            ; $4255: $8f
	ld [bc], a                                       ; $4256: $02
	ld a, [bc]                                       ; $4257: $0a
	ld de, $5f2f                                     ; $4258: $11 $2f $5f
	cpl                                              ; $425b: $2f
	ld d, a                                          ; $425c: $57
	dec hl                                           ; $425d: $2b
	rst $38                                          ; $425e: $ff
	rst FarCall                                          ; $425f: $f7
	rst AddAOntoHL                                          ; $4260: $ef
	pop de                                           ; $4261: $d1
	and c                                            ; $4262: $a1
	pop de                                           ; $4263: $d1
	xor c                                            ; $4264: $a9
	call nc, $99f0                                   ; $4265: $d4 $f0 $99
	ldh [$d0], a                                     ; $4268: $e0 $d0
	ret nc                                           ; $426a: $d0

	adc b                                            ; $426b: $88
	ld [$7908], sp                                   ; $426c: $08 $08 $79
	ld h, e                                          ; $426f: $63
	sbc c                                            ; $4270: $99
	ldh a, [$b0]                                     ; $4271: $f0 $b0
	ld a, b                                          ; $4273: $78
	ld hl, sp-$08                                    ; $4274: $f8 $f8
	db $fc                                           ; $4276: $fc
	db $db                                           ; $4277: $db
	inc b                                            ; $4278: $04
	rst SubAFromDE                                          ; $4279: $df
	ld [$fcdb], sp                                   ; $427a: $08 $db $fc
	rst SubAFromDE                                          ; $427d: $df
	ld hl, sp-$21                                    ; $427e: $f8 $df
	ld [$f8de], sp                                   ; $4280: $08 $de $f8
	sbc h                                            ; $4283: $9c
	db $fc                                           ; $4284: $fc
	cp $ff                                           ; $4285: $fe $ff
	sbc $f8                                          ; $4287: $de $f8
	adc l                                            ; $4289: $8d
	jr @+$2a                                         ; $428a: $18 $28

	inc d                                            ; $428c: $14
	adc d                                            ; $428d: $8a
	ld b, l                                          ; $428e: $45
	ld h, h                                          ; $428f: $64
	or d                                             ; $4290: $b2
	ld c, c                                          ; $4291: $49
	and l                                            ; $4292: $a5
	ld d, h                                          ; $4293: $54
	ld a, [bc]                                       ; $4294: $0a
	ld b, [hl]                                       ; $4295: $46
	cp l                                             ; $4296: $bd
	cp a                                             ; $4297: $bf
	rst SubAFromDE                                          ; $4298: $df
	rst $38                                          ; $4299: $ff
	ld a, a                                          ; $429a: $7f
	cp a                                             ; $429b: $bf
	sbc $ff                                          ; $429c: $de $ff
	sbc l                                            ; $429e: $9d
	ld d, c                                          ; $429f: $51
	call z, $aade                                    ; $42a0: $cc $de $aa
	sbc d                                            ; $42a3: $9a
	set 1, c                                         ; $42a4: $cb $c9
	ret                                              ; $42a6: $c9


	rst $38                                          ; $42a7: $ff
	ei                                               ; $42a8: $fb
	sbc $dd                                          ; $42a9: $de $dd
	sbc h                                            ; $42ab: $9c
	cp h                                             ; $42ac: $bc
	cp [hl]                                          ; $42ad: $be
	cp [hl]                                          ; $42ae: $be
	call c, $debf                                    ; $42af: $dc $bf $de
	rst $38                                          ; $42b2: $ff
	sbc $90                                          ; $42b3: $de $90
	rst SubAFromDE                                          ; $42b5: $df
	jr nz, jr_06d_4337                               ; $42b6: $20 $7f

	ld a, b                                          ; $42b8: $78
	sbc [hl]                                         ; $42b9: $9e
	ld b, c                                          ; $42ba: $41
	reti                                             ; $42bb: $d9


	rst $38                                          ; $42bc: $ff
	adc a                                            ; $42bd: $8f
	ld b, d                                          ; $42be: $42
	add d                                            ; $42bf: $82
	add h                                            ; $42c0: $84
	adc h                                            ; $42c1: $8c
	ld [$2111], sp                                   ; $42c2: $08 $11 $21
	ld h, e                                          ; $42c5: $63
	sbc a                                            ; $42c6: $9f
	nop                                              ; $42c7: $00
	nop                                              ; $42c8: $00
	add b                                            ; $42c9: $80
	ld b, b                                          ; $42ca: $40
	jr nz, jr_06d_42e5                               ; $42cb: $20 $18

	inc b                                            ; $42cd: $04
	reti                                             ; $42ce: $d9


	rst $38                                          ; $42cf: $ff
	ld a, [hl]                                       ; $42d0: $7e
	ldh [$7e], a                                     ; $42d1: $e0 $7e
	ld c, e                                          ; $42d3: $4b
	ld a, l                                          ; $42d4: $7d
	rst JumpTable                                          ; $42d5: $c7
	sbc l                                            ; $42d6: $9d
	sbc a                                            ; $42d7: $9f
	adc a                                            ; $42d8: $8f
	halt                                             ; $42d9: $76
	dec sp                                           ; $42da: $3b
	ld a, l                                          ; $42db: $7d
	or a                                             ; $42dc: $b7
	ld a, a                                          ; $42dd: $7f
	ld a, e                                          ; $42de: $7b
	ld a, h                                          ; $42df: $7c
	ld a, [hl-]                                      ; $42e0: $3a
	ld a, a                                          ; $42e1: $7f
	db $fc                                           ; $42e2: $fc
	ld a, [hl]                                       ; $42e3: $7e
	inc l                                            ; $42e4: $2c

jr_06d_42e5:
	ld a, a                                          ; $42e5: $7f
	adc [hl]                                         ; $42e6: $8e
	ld a, e                                          ; $42e7: $7b
	db $db                                           ; $42e8: $db
	sub a                                            ; $42e9: $97
	db $10                                           ; $42ea: $10
	sub b                                            ; $42eb: $90
	ret z                                            ; $42ec: $c8

	ld c, b                                          ; $42ed: $48
	inc h                                            ; $42ee: $24
	db $fc                                           ; $42ef: $fc
	cp $fe                                           ; $42f0: $fe $fe
	ld a, b                                          ; $42f2: $78
	ld e, a                                          ; $42f3: $5f
	rst SubAFromDE                                          ; $42f4: $df
	db $fc                                           ; $42f5: $fc
	sub l                                            ; $42f6: $95
	inc [hl]                                         ; $42f7: $34
	sub d                                            ; $42f8: $92
	adc d                                            ; $42f9: $8a
	call $65c7                                       ; $42fa: $cd $c7 $65
	ld h, h                                          ; $42fd: $64
	or h                                             ; $42fe: $b4
	cp $fe                                           ; $42ff: $fe $fe
	call c, $9cee                                    ; $4301: $dc $ee $9c
	db $ec                                           ; $4304: $ec
	or d                                             ; $4305: $b2
	or d                                             ; $4306: $b2
	sbc $aa                                          ; $4307: $de $aa
	adc [hl]                                         ; $4309: $8e
	ld a, [hl+]                                      ; $430a: $2a
	ld [hl+], a                                      ; $430b: $22
	ld h, h                                          ; $430c: $64
	db $ec                                           ; $430d: $ec
	call z, $d8cc                                    ; $430e: $cc $cc $d8
	sbc b                                            ; $4311: $98
	or b                                             ; $4312: $b0

jr_06d_4313:
	jr nz, jr_06d_4315                               ; $4313: $20 $00

jr_06d_4315:
	ld h, h                                          ; $4315: $64
	ld b, h                                          ; $4316: $44
	call nz, $88c8                                   ; $4317: $c4 $c8 $88
	sub b                                            ; $431a: $90
	ld a, c                                          ; $431b: $79
	ld b, c                                          ; $431c: $41
	sbc b                                            ; $431d: $98
	add b                                            ; $431e: $80
	ldh [$d8], a                                     ; $431f: $e0 $d8
	ld b, [hl]                                       ; $4321: $46
	ld b, c                                          ; $4322: $41
	ld b, b                                          ; $4323: $40
	jr nz, @+$7d                                     ; $4324: $20 $7b

	ld hl, sp-$62                                    ; $4326: $f8 $9e
	ld hl, sp+$7b                                    ; $4328: $f8 $7b
	add $8e                                          ; $432a: $c6 $8e
	rst $38                                          ; $432c: $ff
	jr nz, jr_06d_4313                               ; $432d: $20 $e4

	and h                                            ; $432f: $a4
	ld d, h                                          ; $4330: $54
	xor b                                            ; $4331: $a8
	reti                                             ; $4332: $d9


	ld [$ffcc], a                                    ; $4333: $ea $cc $ff
	rst $38                                          ; $4336: $ff

jr_06d_4337:
	ld e, a                                          ; $4337: $5f
	xor a                                            ; $4338: $af
	ld e, a                                          ; $4339: $5f
	cpl                                              ; $433a: $2f
	rra                                              ; $433b: $1f
	ccf                                              ; $433c: $3f
	ei                                               ; $433d: $fb
	ld a, a                                          ; $433e: $7f
	and d                                            ; $433f: $a2
	ld l, e                                          ; $4340: $6b
	ld hl, sp-$62                                    ; $4341: $f8 $9e
	ret nz                                           ; $4343: $c0

	sbc $20                                          ; $4344: $de $20
	sbc l                                            ; $4346: $9d
	ld d, b                                          ; $4347: $50
	sub b                                            ; $4348: $90
	sbc $08                                          ; $4349: $de $08
	sbc $e0                                          ; $434b: $de $e0
	ld [hl], a                                       ; $434d: $77
	adc b                                            ; $434e: $88
	sbc [hl]                                         ; $434f: $9e
	ld hl, sp+$26                                    ; $4350: $f8 $26
	nop                                              ; $4352: $00
	sub b                                            ; $4353: $90
	adc b                                            ; $4354: $88
	rst $38                                          ; $4355: $ff
	xor d                                            ; $4356: $aa
	sbc c                                            ; $4357: $99
	adc b                                            ; $4358: $88
	ld [hl], a                                       ; $4359: $77
	xor d                                            ; $435a: $aa
	sbc c                                            ; $435b: $99
	sbc c                                            ; $435c: $99
	ld [hl], a                                       ; $435d: $77
	xor d                                            ; $435e: $aa
	ld [hl+], a                                      ; $435f: $22
	sbc c                                            ; $4360: $99
	sbc c                                            ; $4361: $99
	nop                                              ; $4362: $00
	ld l, a                                          ; $4363: $6f
	ei                                               ; $4364: $fb
	sbc e                                            ; $4365: $9b
	ld b, h                                          ; $4366: $44
	sbc c                                            ; $4367: $99
	sbc c                                            ; $4368: $99
	ld h, [hl]                                       ; $4369: $66
	ld [hl], a                                       ; $436a: $77
	ei                                               ; $436b: $fb
	ld a, a                                          ; $436c: $7f
	db $ec                                           ; $436d: $ec
	sub a                                            ; $436e: $97
	call z, Call_06d_4411                            ; $436f: $cc $11 $44
	ld [hl], a                                       ; $4372: $77
	call z, $ffcc                                    ; $4373: $cc $cc $ff
	rst $38                                          ; $4376: $ff
	db $e4                                           ; $4377: $e4
	ld bc, $ffdf                                     ; $4378: $01 $df $ff
	add b                                            ; $437b: $80
	cp $ff                                           ; $437c: $fe $ff
	sub d                                            ; $437e: $92
	rst $38                                          ; $437f: $ff
	sub [hl]                                         ; $4380: $96
	or d                                             ; $4381: $b2
	xor l                                            ; $4382: $ad
	or [hl]                                          ; $4383: $b6
	or $2d                                           ; $4384: $f6 $2d
	xor b                                            ; $4386: $a8
	ld a, a                                          ; $4387: $7f
	ld d, c                                          ; $4388: $51
	rst $38                                          ; $4389: $ff
	and e                                            ; $438a: $a3
	cp $a7                                           ; $438b: $fe $a7
	rst $38                                          ; $438d: $ff
	ld c, e                                          ; $438e: $4b
	rst $38                                          ; $438f: $ff
	ld d, d                                          ; $4390: $52
	rst $38                                          ; $4391: $ff
	ld l, d                                          ; $4392: $6a
	rst $38                                          ; $4393: $ff
	ld c, d                                          ; $4394: $4a
	rst $38                                          ; $4395: $ff
	adc d                                            ; $4396: $8a
	rst $38                                          ; $4397: $ff
	ld a, [bc]                                       ; $4398: $0a
	rst $38                                          ; $4399: $ff
	ld [de], a                                       ; $439a: $12
	ld a, e                                          ; $439b: $7b
	ldh [c], a                                       ; $439c: $e2
	ld l, a                                          ; $439d: $6f
	cp $99                                           ; $439e: $fe $99
	ld a, [$feff]                                    ; $43a0: $fa $ff $fe
	rlca                                             ; $43a3: $07
	rst $38                                          ; $43a4: $ff
	ld bc, $fe7b                                     ; $43a5: $01 $7b $fe
	sub [hl]                                         ; $43a8: $96
	inc bc                                           ; $43a9: $03
	rst $38                                          ; $43aa: $ff
	dec b                                            ; $43ab: $05
	rst $38                                          ; $43ac: $ff
	add hl, bc                                       ; $43ad: $09
	rst $38                                          ; $43ae: $ff
	db $10                                           ; $43af: $10
	rst $38                                          ; $43b0: $ff
	jr nz, jr_06d_442e                               ; $43b1: $20 $7b

	cp $7f                                           ; $43b3: $fe $7f
	ld a, [$ff81]                                    ; $43b5: $fa $81 $ff
	dec e                                            ; $43b8: $1d
	rst $38                                          ; $43b9: $ff
	ld e, $75                                        ; $43ba: $1e $75
	cp h                                             ; $43bc: $bc
	ld h, a                                          ; $43bd: $67
	ld [hl], l                                       ; $43be: $75
	rst AddAOntoHL                                          ; $43bf: $ef
	ld c, a                                          ; $43c0: $4f
	ld a, [$f0ff]                                    ; $43c1: $fa $ff $f0
	rst $38                                          ; $43c4: $ff
	ld c, $ff                                        ; $43c5: $0e $ff
	rra                                              ; $43c7: $1f
	ei                                               ; $43c8: $fb
	ld a, c                                          ; $43c9: $79
	di                                               ; $43ca: $f3
	inc sp                                           ; $43cb: $33
	xor a                                            ; $43cc: $af
	xor a                                            ; $43cd: $af
	adc e                                            ; $43ce: $8b
	adc a                                            ; $43cf: $8f
	add l                                            ; $43d0: $85
	add [hl]                                         ; $43d1: $86
	ld c, e                                          ; $43d2: $4b
	rst JumpTable                                          ; $43d3: $c7
	ld b, b                                          ; $43d4: $40
	sbc $c0                                          ; $43d5: $de $c0
	add b                                            ; $43d7: $80
	ld h, b                                          ; $43d8: $60
	ldh [$60], a                                     ; $43d9: $e0 $60
	ldh [$b0], a                                     ; $43db: $e0 $b0
	ld [hl], b                                       ; $43dd: $70
	or b                                             ; $43de: $b0
	ld a, b                                          ; $43df: $78
	cp h                                             ; $43e0: $bc
	ld a, h                                          ; $43e1: $7c
	xor $3e                                          ; $43e2: $ee $3e
	or l                                             ; $43e4: $b5
	cpl                                              ; $43e5: $2f
	inc a                                            ; $43e6: $3c
	and a                                            ; $43e7: $a7
	ld a, [hl+]                                      ; $43e8: $2a
	or a                                             ; $43e9: $b7
	ld l, d                                          ; $43ea: $6a
	or a                                             ; $43eb: $b7
	ld a, [hl]                                       ; $43ec: $7e
	sub e                                            ; $43ed: $93
	or l                                             ; $43ee: $b5
	db $db                                           ; $43ef: $db
	sbc l                                            ; $43f0: $9d
	ei                                               ; $43f1: $fb
	sbc b                                            ; $43f2: $98
	rst $38                                          ; $43f3: $ff
	sbc h                                            ; $43f4: $9c
	rst $38                                          ; $43f5: $ff
	db $ed                                           ; $43f6: $ed
	adc h                                            ; $43f7: $8c
	or $ec                                           ; $43f8: $f6 $ec
	or a                                             ; $43fa: $b7
	db $ec                                           ; $43fb: $ec
	or a                                             ; $43fc: $b7
	and [hl]                                         ; $43fd: $a6
	rst $38                                          ; $43fe: $ff
	rst SubAFromHL                                          ; $43ff: $d7
	db $fd                                           ; $4400: $fd
	rst SubAFromHL                                          ; $4401: $d7
	ld a, h                                          ; $4402: $7c
	cp [hl]                                          ; $4403: $be
	ld l, h                                          ; $4404: $6c
	rst FarCall                                          ; $4405: $f7
	inc l                                            ; $4406: $2c
	ld a, l                                          ; $4407: $7d
	ld h, $b7                                        ; $4408: $26 $b7
	ld [bc], a                                       ; $440a: $02
	db $dd                                           ; $440b: $dd
	add b                                            ; $440c: $80
	add b                                            ; $440d: $80
	rrca                                             ; $440e: $0f
	add b                                            ; $440f: $80
	sbc a                                            ; $4410: $9f

Call_06d_4411:
	add b                                            ; $4411: $80
	scf                                              ; $4412: $37
	ld [$18f7], sp                                   ; $4413: $08 $f7 $18
	di                                               ; $4416: $f3
	sbc h                                            ; $4417: $9c
	ld hl, sp-$72                                    ; $4418: $f8 $8e
	sbc h                                            ; $441a: $9c
	rst SubAFromBC                                          ; $441b: $e7
	ld h, d                                          ; $441c: $62
	rst $38                                          ; $441d: $ff
	ld a, a                                          ; $441e: $7f
	rst SubAFromDE                                          ; $441f: $df
	rst $38                                          ; $4420: $ff
	ret nz                                           ; $4421: $c0

	xor $5f                                          ; $4422: $ee $5f
	ld a, a                                          ; $4424: $7f
	ccf                                              ; $4425: $3f
	ld a, e                                          ; $4426: $7b
	ld a, c                                          ; $4427: $79
	or e                                             ; $4428: $b3
	inc de                                           ; $4429: $13
	adc a                                            ; $442a: $8f
	rrca                                             ; $442b: $0f
	dec bc                                           ; $442c: $0b
	add b                                            ; $442d: $80

jr_06d_442e:
	rrca                                             ; $442e: $0f
	ld b, $05                                        ; $442f: $06 $05
	rlc a                                            ; $4431: $cb $07
	ldh a, [rP1]                                     ; $4433: $f0 $00
	add b                                            ; $4435: $80
	nop                                              ; $4436: $00
	dec l                                            ; $4437: $2d
	di                                               ; $4438: $f3
	sub [hl]                                         ; $4439: $96
	ld a, c                                          ; $443a: $79
	ld d, e                                          ; $443b: $53
	inc a                                            ; $443c: $3c
	ld l, c                                          ; $443d: $69
	sbc [hl]                                         ; $443e: $9e
	inc [hl]                                         ; $443f: $34
	rst GetHLinHL                                          ; $4440: $cf
	sub d                                            ; $4441: $92
	rst AddAOntoHL                                          ; $4442: $ef
	pop hl                                           ; $4443: $e1
	ld a, a                                          ; $4444: $7f
	ldh a, [$df]                                     ; $4445: $f0 $df
	db $fc                                           ; $4447: $fc
	rst AddAOntoHL                                          ; $4448: $ef
	ei                                               ; $4449: $fb
	xor a                                            ; $444a: $af
	ld hl, sp-$71                                    ; $444b: $f8 $8f
	sbc b                                            ; $444d: $98
	ld a, d                                          ; $444e: $7a
	adc l                                            ; $444f: $8d
	ld a, [$7a8d]                                    ; $4450: $fa $8d $7a
	dec c                                            ; $4453: $0d
	ld a, [hl-]                                      ; $4454: $3a
	ld l, e                                          ; $4455: $6b
	cp $92                                           ; $4456: $fe $92
	ld a, d                                          ; $4458: $7a
	dec e                                            ; $4459: $1d
	ld a, e                                          ; $445a: $7b
	dec a                                            ; $445b: $3d
	rst FarCall                                          ; $445c: $f7
	ld a, c                                          ; $445d: $79
	rst FarCall                                          ; $445e: $f7
	ld sp, hl                                        ; $445f: $f9
	push af                                          ; $4460: $f5
	ei                                               ; $4461: $fb
	push af                                          ; $4462: $f5
	ei                                               ; $4463: $fb
	jp nc, $2e7b                                     ; $4464: $d2 $7b $2e

	sub h                                            ; $4467: $94
	call nc, $d43f                                   ; $4468: $d4 $3f $d4
	ccf                                              ; $446b: $3f
	push hl                                          ; $446c: $e5
	ccf                                              ; $446d: $3f
	db $eb                                           ; $446e: $eb
	ccf                                              ; $446f: $3f
	jp z, Jump_06d_5c7f                              ; $4470: $ca $7f $5c

	sbc $ff                                          ; $4473: $de $ff
	ld d, e                                          ; $4475: $53
	ld b, b                                          ; $4476: $40
	adc [hl]                                         ; $4477: $8e
	nop                                              ; $4478: $00
	cp $00                                           ; $4479: $fe $00
	rst $38                                          ; $447b: $ff
	ld e, $ff                                        ; $447c: $1e $ff
	ld a, e                                          ; $447e: $7b
	or e                                             ; $447f: $b3
	or e                                             ; $4480: $b3
	sbc [hl]                                         ; $4481: $9e
	sbc a                                            ; $4482: $9f
	adc c                                            ; $4483: $89
	adc e                                            ; $4484: $8b
	ld b, [hl]                                       ; $4485: $46
	call nz, $c040                                   ; $4486: $c4 $40 $c0
	ccf                                              ; $4489: $3f
	ld h, b                                          ; $448a: $60
	sub l                                            ; $448b: $95
	scf                                              ; $448c: $37
	ld [bc], a                                       ; $448d: $02
	add b                                            ; $448e: $80
	nop                                              ; $448f: $00
	add b                                            ; $4490: $80
	add b                                            ; $4491: $80
	adc a                                            ; $4492: $8f
	add b                                            ; $4493: $80
	sbc a                                            ; $4494: $9f
	nop                                              ; $4495: $00
	ld b, a                                          ; $4496: $47
	ld h, b                                          ; $4497: $60
	adc a                                            ; $4498: $8f
	rst $38                                          ; $4499: $ff
	ld b, b                                          ; $449a: $40
	ld a, a                                          ; $449b: $7f
	nop                                              ; $449c: $00
	ccf                                              ; $449d: $3f
	rrca                                             ; $449e: $0f
	cp a                                             ; $449f: $bf
	rra                                              ; $44a0: $1f
	cp c                                             ; $44a1: $b9
	add hl, sp                                       ; $44a2: $39
	ccf                                              ; $44a3: $3f
	dec bc                                           ; $44a4: $0b
	dec c                                            ; $44a5: $0d
	ld c, $cf                                        ; $44a6: $0e $cf
	dec b                                            ; $44a8: $05
	dec sp                                           ; $44a9: $3b
	ld h, b                                          ; $44aa: $60
	sub h                                            ; $44ab: $94
	rra                                              ; $44ac: $1f
	db $fc                                           ; $44ad: $fc
	rrca                                             ; $44ae: $0f
	ei                                               ; $44af: $fb
	adc a                                            ; $44b0: $8f
	ld hl, sp-$31                                    ; $44b1: $f8 $cf
	ld a, d                                          ; $44b3: $7a
	db $ed                                           ; $44b4: $ed
	ld a, [$6fcd]                                    ; $44b5: $fa $cd $6f
	ld h, b                                          ; $44b8: $60
	ccf                                              ; $44b9: $3f
	add b                                            ; $44ba: $80
	ld [hl], e                                       ; $44bb: $73
	ld a, [hl]                                       ; $44bc: $7e
	sbc b                                            ; $44bd: $98
	ei                                               ; $44be: $fb
	or e                                             ; $44bf: $b3
	or e                                             ; $44c0: $b3
	sbc c                                            ; $44c1: $99
	sbc a                                            ; $44c2: $9f
	ld b, a                                          ; $44c3: $47
	add $2f                                          ; $44c4: $c6 $2f
	add b                                            ; $44c6: $80
	rst $38                                          ; $44c7: $ff
	ld a, a                                          ; $44c8: $7f
	xor b                                            ; $44c9: $a8
	ld a, e                                          ; $44ca: $7b
	add b                                            ; $44cb: $80
	ld b, d                                          ; $44cc: $42
	ldh [$73], a                                     ; $44cd: $e0 $73
	add b                                            ; $44cf: $80
	sbc l                                            ; $44d0: $9d
	nop                                              ; $44d1: $00
	cp a                                             ; $44d2: $bf
	ld a, e                                          ; $44d3: $7b
	ld a, [hl]                                       ; $44d4: $7e
	rst SubAFromDE                                          ; $44d5: $df
	add hl, sp                                       ; $44d6: $39
	sbc h                                            ; $44d7: $9c
	ld a, $0b                                        ; $44d8: $3e $0b
	rst GetHLinHL                                          ; $44da: $cf
	ld [hl], $e0                                     ; $44db: $36 $e0
	ld [hl], a                                       ; $44dd: $77
	add b                                            ; $44de: $80
	sbc b                                            ; $44df: $98
	rrca                                             ; $44e0: $0f
	ld hl, sp-$71                                    ; $44e1: $f8 $8f
	ld a, [$facd]                                    ; $44e3: $fa $cd $fa
	db $ed                                           ; $44e6: $ed
	dec de                                           ; $44e7: $1b
	add b                                            ; $44e8: $80
	ld a, a                                          ; $44e9: $7f
	cp $98                                           ; $44ea: $fe $98
	sbc [hl]                                         ; $44ec: $9e
	rst $38                                          ; $44ed: $ff
	add b                                            ; $44ee: $80
	cp a                                             ; $44ef: $bf
	cp a                                             ; $44f0: $bf
	ld e, a                                          ; $44f1: $5f
	rst GetHLinHL                                          ; $44f2: $cf
	inc bc                                           ; $44f3: $03
	add b                                            ; $44f4: $80
	scf                                              ; $44f5: $37
	add b                                            ; $44f6: $80
	ld a, e                                          ; $44f7: $7b
	ld a, [hl]                                       ; $44f8: $7e
	ld a, a                                          ; $44f9: $7f
	ld a, [$3f9b]                                    ; $44fa: $fa $9b $3f
	rra                                              ; $44fd: $1f
	rst $38                                          ; $44fe: $ff
	rrca                                             ; $44ff: $0f
	dec de                                           ; $4500: $1b
	add b                                            ; $4501: $80
	sbc [hl]                                         ; $4502: $9e
	dec c                                            ; $4503: $0d
	ld h, a                                          ; $4504: $67
	add b                                            ; $4505: $80
	sub h                                            ; $4506: $94
	inc e                                            ; $4507: $1c
	stop                                             ; $4508: $10 $00
	nop                                              ; $450a: $00
	ld e, $11                                        ; $450b: $1e $11
	rlca                                             ; $450d: $07
	rrca                                             ; $450e: $0f
	nop                                              ; $450f: $00
	nop                                              ; $4510: $00
	ld b, $fd                                        ; $4511: $06 $fd
	adc [hl]                                         ; $4513: $8e
	add b                                            ; $4514: $80
	ret nz                                           ; $4515: $c0

	ldh [rSVBK], a                                   ; $4516: $e0 $70
	ld hl, sp+$1e                                    ; $4518: $f8 $1e
	db $fd                                           ; $451a: $fd
	rrca                                             ; $451b: $0f
	rst $38                                          ; $451c: $ff
	ld [$08fc], sp                                   ; $451d: $08 $fc $08
	db $fc                                           ; $4520: $fc
	add h                                            ; $4521: $84
	db $fc                                           ; $4522: $fc
	add $fc                                          ; $4523: $c6 $fc
	db $fc                                           ; $4525: $fc
	ld a, a                                          ; $4526: $7f
	cp c                                             ; $4527: $b9
	cp $92                                           ; $4528: $fe $92
	ld bc, $0300                                     ; $452a: $01 $00 $03
	ld bc, $0703                                     ; $452d: $01 $03 $07
	rrca                                             ; $4530: $0f
	rra                                              ; $4531: $1f
	ccf                                              ; $4532: $3f
	ld a, a                                          ; $4533: $7f
	db $dd                                           ; $4534: $dd
	cp $ff                                           ; $4535: $fe $ff
	ld a, e                                          ; $4537: $7b
	sbc b                                            ; $4538: $98
	sbc [hl]                                         ; $4539: $9e
	rlca                                             ; $453a: $07
	db $fc                                           ; $453b: $fc
	inc bc                                           ; $453c: $03
	ret nz                                           ; $453d: $c0

	inc bc                                           ; $453e: $03
	ret nz                                           ; $453f: $c0

	ld [hl], a                                       ; $4540: $77
	ret nz                                           ; $4541: $c0

	sbc h                                            ; $4542: $9c
	add hl, bc                                       ; $4543: $09
	rrca                                             ; $4544: $0f
	rrca                                             ; $4545: $0f
	ld a, e                                          ; $4546: $7b
	pop bc                                           ; $4547: $c1
	ld a, e                                          ; $4548: $7b
	db $fd                                           ; $4549: $fd
	dec hl                                           ; $454a: $2b
	ret nz                                           ; $454b: $c0

	ld [hl], a                                       ; $454c: $77
	cp a                                             ; $454d: $bf
	rrca                                             ; $454e: $0f
	ret nz                                           ; $454f: $c0

	sbc l                                            ; $4550: $9d
	ld c, $07                                        ; $4551: $0e $07
	ld [hl], a                                       ; $4553: $77
	add b                                            ; $4554: $80
	sbc [hl]                                         ; $4555: $9e
	ld b, $03                                        ; $4556: $06 $03
	ret nz                                           ; $4558: $c0

	ld b, a                                          ; $4559: $47
	ret nz                                           ; $455a: $c0

	jp hl                                            ; $455b: $e9


	ld bc, $ffdf                                     ; $455c: $01 $df $ff
	add b                                            ; $455f: $80
	cp $ff                                           ; $4560: $fe $ff
	sub d                                            ; $4562: $92
	rst $38                                          ; $4563: $ff
	sub [hl]                                         ; $4564: $96
	or d                                             ; $4565: $b2
	xor l                                            ; $4566: $ad
	or [hl]                                          ; $4567: $b6
	or $2d                                           ; $4568: $f6 $2d
	xor b                                            ; $456a: $a8
	ld a, a                                          ; $456b: $7f
	ld d, c                                          ; $456c: $51
	rst $38                                          ; $456d: $ff
	and e                                            ; $456e: $a3
	cp $a7                                           ; $456f: $fe $a7
	rst $38                                          ; $4571: $ff
	ld c, e                                          ; $4572: $4b
	rst $38                                          ; $4573: $ff
	ld d, d                                          ; $4574: $52
	rst $38                                          ; $4575: $ff
	ld l, d                                          ; $4576: $6a
	rst $38                                          ; $4577: $ff
	ld c, d                                          ; $4578: $4a
	rst $38                                          ; $4579: $ff
	adc d                                            ; $457a: $8a
	rst $38                                          ; $457b: $ff
	ld a, [bc]                                       ; $457c: $0a
	rst $38                                          ; $457d: $ff
	ld [de], a                                       ; $457e: $12
	ld a, e                                          ; $457f: $7b
	ldh [c], a                                       ; $4580: $e2
	ld l, a                                          ; $4581: $6f
	cp $99                                           ; $4582: $fe $99
	ld a, [$feff]                                    ; $4584: $fa $ff $fe
	rlca                                             ; $4587: $07
	rst $38                                          ; $4588: $ff
	ld bc, $fe7b                                     ; $4589: $01 $7b $fe
	sub [hl]                                         ; $458c: $96
	inc bc                                           ; $458d: $03
	rst $38                                          ; $458e: $ff
	dec b                                            ; $458f: $05
	rst $38                                          ; $4590: $ff
	add hl, bc                                       ; $4591: $09
	rst $38                                          ; $4592: $ff
	db $10                                           ; $4593: $10
	rst $38                                          ; $4594: $ff
	jr nz, jr_06d_4612                               ; $4595: $20 $7b

	cp $7f                                           ; $4597: $fe $7f
	ld a, [$ff81]                                    ; $4599: $fa $81 $ff
	dec e                                            ; $459c: $1d
	rst $38                                          ; $459d: $ff
	ld e, $75                                        ; $459e: $1e $75
	xor h                                            ; $45a0: $ac
	ld a, a                                          ; $45a1: $7f
	ld a, l                                          ; $45a2: $7d
	rst FarCall                                          ; $45a3: $f7
	ld a, a                                          ; $45a4: $7f
	ldh [c], a                                       ; $45a5: $e2
	rst $38                                          ; $45a6: $ff
	add b                                            ; $45a7: $80
	rst AddAOntoHL                                          ; $45a8: $ef
	ld e, $db                                        ; $45a9: $1e $db
	add hl, sp                                       ; $45ab: $39
	di                                               ; $45ac: $f3
	ld [hl], e                                       ; $45ad: $73
	rst $38                                          ; $45ae: $ff
	ccf                                              ; $45af: $3f
	xor e                                            ; $45b0: $ab
	xor a                                            ; $45b1: $af
	adc e                                            ; $45b2: $8b
	adc a                                            ; $45b3: $8f
	add l                                            ; $45b4: $85
	add [hl]                                         ; $45b5: $86
	ld c, e                                          ; $45b6: $4b
	rst JumpTable                                          ; $45b7: $c7
	ld b, b                                          ; $45b8: $40
	sbc $c0                                          ; $45b9: $de $c0
	add b                                            ; $45bb: $80
	ld h, b                                          ; $45bc: $60
	ldh [$60], a                                     ; $45bd: $e0 $60
	ldh [$b0], a                                     ; $45bf: $e0 $b0
	ld [hl], b                                       ; $45c1: $70
	or b                                             ; $45c2: $b0
	ld a, b                                          ; $45c3: $78
	cp h                                             ; $45c4: $bc
	ld a, h                                          ; $45c5: $7c
	xor $3e                                          ; $45c6: $ee $3e
	or l                                             ; $45c8: $b5
	cpl                                              ; $45c9: $2f
	inc a                                            ; $45ca: $3c
	and a                                            ; $45cb: $a7
	ld a, [hl+]                                      ; $45cc: $2a
	or a                                             ; $45cd: $b7
	ld l, d                                          ; $45ce: $6a
	or a                                             ; $45cf: $b7
	ld a, [hl]                                       ; $45d0: $7e
	sub e                                            ; $45d1: $93
	or l                                             ; $45d2: $b5
	db $db                                           ; $45d3: $db
	sbc l                                            ; $45d4: $9d
	ei                                               ; $45d5: $fb
	sbc b                                            ; $45d6: $98
	rst $38                                          ; $45d7: $ff
	sbc h                                            ; $45d8: $9c
	rst $38                                          ; $45d9: $ff
	db $ed                                           ; $45da: $ed
	adc h                                            ; $45db: $8c
	or $ec                                           ; $45dc: $f6 $ec
	or a                                             ; $45de: $b7
	db $ec                                           ; $45df: $ec
	or a                                             ; $45e0: $b7
	and [hl]                                         ; $45e1: $a6
	rst $38                                          ; $45e2: $ff
	rst SubAFromHL                                          ; $45e3: $d7
	db $fd                                           ; $45e4: $fd
	rst SubAFromHL                                          ; $45e5: $d7
	ld a, h                                          ; $45e6: $7c
	cp [hl]                                          ; $45e7: $be
	ld l, h                                          ; $45e8: $6c
	rst FarCall                                          ; $45e9: $f7
	inc l                                            ; $45ea: $2c
	ld a, l                                          ; $45eb: $7d
	ld h, $b7                                        ; $45ec: $26 $b7
	ld [bc], a                                       ; $45ee: $02
	db $dd                                           ; $45ef: $dd
	add b                                            ; $45f0: $80
	add b                                            ; $45f1: $80
	nop                                              ; $45f2: $00
	add b                                            ; $45f3: $80
	add h                                            ; $45f4: $84
	add b                                            ; $45f5: $80
	ld b, $08                                        ; $45f6: $06 $08
	ld d, $18                                        ; $45f8: $16 $18
	di                                               ; $45fa: $f3
	sbc h                                            ; $45fb: $9c
	adc b                                            ; $45fc: $88
	cp $f4                                           ; $45fd: $fe $f4
	rst $38                                          ; $45ff: $ff
	ld a, [hl]                                       ; $4600: $7e
	rst GetHLinHL                                          ; $4601: $cf
	ld a, a                                          ; $4602: $7f
	pop bc                                           ; $4603: $c1
	rst $38                                          ; $4604: $ff
	ret nz                                           ; $4605: $c0

	rst AddAOntoHL                                          ; $4606: $ef
	ld e, a                                          ; $4607: $5f
	ld a, e                                          ; $4608: $7b
	add hl, sp                                       ; $4609: $39
	ld [hl], e                                       ; $460a: $73
	ld [hl], e                                       ; $460b: $73
	cp a                                             ; $460c: $bf
	rra                                              ; $460d: $1f
	adc e                                            ; $460e: $8b
	rrca                                             ; $460f: $0f
	dec bc                                           ; $4610: $0b
	sbc d                                            ; $4611: $9a

jr_06d_4612:
	rrca                                             ; $4612: $0f
	ld b, $05                                        ; $4613: $06 $05
	dec bc                                           ; $4615: $0b
	rlca                                             ; $4616: $07
	db $fd                                           ; $4617: $fd
	add d                                            ; $4618: $82
	dec l                                            ; $4619: $2d
	di                                               ; $461a: $f3
	sub [hl]                                         ; $461b: $96
	ld a, c                                          ; $461c: $79
	ld d, e                                          ; $461d: $53
	inc a                                            ; $461e: $3c
	ld l, c                                          ; $461f: $69
	sbc [hl]                                         ; $4620: $9e
	inc [hl]                                         ; $4621: $34
	rst GetHLinHL                                          ; $4622: $cf
	sub d                                            ; $4623: $92
	rst AddAOntoHL                                          ; $4624: $ef
	pop hl                                           ; $4625: $e1
	ld a, a                                          ; $4626: $7f
	ldh a, [$df]                                     ; $4627: $f0 $df
	db $fc                                           ; $4629: $fc
	rst AddAOntoHL                                          ; $462a: $ef
	ei                                               ; $462b: $fb
	xor a                                            ; $462c: $af
	ld a, b                                          ; $462d: $78
	adc a                                            ; $462e: $8f
	ld a, d                                          ; $462f: $7a
	adc l                                            ; $4630: $8d
	ld a, [$7a8d]                                    ; $4631: $fa $8d $7a
	dec c                                            ; $4634: $0d
	ld a, [hl-]                                      ; $4635: $3a
	ld l, e                                          ; $4636: $6b
	cp $92                                           ; $4637: $fe $92
	ld a, d                                          ; $4639: $7a
	dec e                                            ; $463a: $1d
	ld a, e                                          ; $463b: $7b
	dec a                                            ; $463c: $3d
	rst FarCall                                          ; $463d: $f7
	ld a, c                                          ; $463e: $79
	rst FarCall                                          ; $463f: $f7
	ld sp, hl                                        ; $4640: $f9
	push af                                          ; $4641: $f5
	ei                                               ; $4642: $fb
	push af                                          ; $4643: $f5
	ei                                               ; $4644: $fb
	jp nc, $2e7b                                     ; $4645: $d2 $7b $2e

	sub h                                            ; $4648: $94
	call nc, $d43f                                   ; $4649: $d4 $3f $d4
	ccf                                              ; $464c: $3f
	push hl                                          ; $464d: $e5
	ccf                                              ; $464e: $3f
	db $eb                                           ; $464f: $eb
	ccf                                              ; $4650: $3f
	jp z, Jump_06d_5c7f                              ; $4651: $ca $7f $5c

	sbc $ff                                          ; $4654: $de $ff
	ld d, a                                          ; $4656: $57
	ld b, b                                          ; $4657: $40
	adc l                                            ; $4658: $8d
	rst $38                                          ; $4659: $ff
	nop                                              ; $465a: $00
	cp $00                                           ; $465b: $fe $00
	rst $38                                          ; $465d: $ff
	ld e, $ff                                        ; $465e: $1e $ff
	ld a, e                                          ; $4660: $7b
	or e                                             ; $4661: $b3
	or e                                             ; $4662: $b3
	sbc [hl]                                         ; $4663: $9e
	sbc a                                            ; $4664: $9f
	adc c                                            ; $4665: $89
	adc e                                            ; $4666: $8b
	ld b, [hl]                                       ; $4667: $46
	call nz, $c040                                   ; $4668: $c4 $40 $c0
	ccf                                              ; $466b: $3f
	ld h, b                                          ; $466c: $60
	sbc l                                            ; $466d: $9d
	scf                                              ; $466e: $37
	ld [bc], a                                       ; $466f: $02
	ld a, e                                          ; $4670: $7b
	ld h, e                                          ; $4671: $63
	sbc $80                                          ; $4672: $de $80
	sbc l                                            ; $4674: $9d
	add h                                            ; $4675: $84
	nop                                              ; $4676: $00
	ld b, a                                          ; $4677: $47
	ld h, b                                          ; $4678: $60
	adc a                                            ; $4679: $8f
	rst $38                                          ; $467a: $ff
	ld b, b                                          ; $467b: $40
	ld a, a                                          ; $467c: $7f
	nop                                              ; $467d: $00
	ccf                                              ; $467e: $3f
	rrca                                             ; $467f: $0f
	cp a                                             ; $4680: $bf
	rra                                              ; $4681: $1f
	cp c                                             ; $4682: $b9
	add hl, sp                                       ; $4683: $39
	ccf                                              ; $4684: $3f
	dec bc                                           ; $4685: $0b
	dec c                                            ; $4686: $0d
	ld c, $0f                                        ; $4687: $0e $0f
	dec b                                            ; $4689: $05
	dec sp                                           ; $468a: $3b
	ld h, b                                          ; $468b: $60
	sub h                                            ; $468c: $94
	rra                                              ; $468d: $1f
	db $fc                                           ; $468e: $fc
	rrca                                             ; $468f: $0f
	ei                                               ; $4690: $fb
	adc a                                            ; $4691: $8f
	ld hl, sp-$31                                    ; $4692: $f8 $cf
	ld a, d                                          ; $4694: $7a
	db $ed                                           ; $4695: $ed
	ld a, [$6fcd]                                    ; $4696: $fa $cd $6f
	ld h, b                                          ; $4699: $60
	ccf                                              ; $469a: $3f
	add b                                            ; $469b: $80
	ld [hl], e                                       ; $469c: $73
	ld a, [hl]                                       ; $469d: $7e
	sbc b                                            ; $469e: $98
	ei                                               ; $469f: $fb
	or e                                             ; $46a0: $b3
	or e                                             ; $46a1: $b3
	sbc c                                            ; $46a2: $99
	sbc a                                            ; $46a3: $9f
	ld b, a                                          ; $46a4: $47
	add $2f                                          ; $46a5: $c6 $2f
	add b                                            ; $46a7: $80
	rst $38                                          ; $46a8: $ff
	ld [hl], a                                       ; $46a9: $77
	ld a, [hl]                                       ; $46aa: $7e
	ld a, $e0                                        ; $46ab: $3e $e0
	ld [hl], e                                       ; $46ad: $73
	add b                                            ; $46ae: $80
	sbc l                                            ; $46af: $9d
	nop                                              ; $46b0: $00
	cp a                                             ; $46b1: $bf
	ld a, e                                          ; $46b2: $7b
	ld a, [hl]                                       ; $46b3: $7e
	rst SubAFromDE                                          ; $46b4: $df
	add hl, sp                                       ; $46b5: $39
	sbc h                                            ; $46b6: $9c
	ld a, $0b                                        ; $46b7: $3e $0b
	rrca                                             ; $46b9: $0f
	ld [hl], $e0                                     ; $46ba: $36 $e0
	ld [hl], a                                       ; $46bc: $77
	add b                                            ; $46bd: $80
	sbc b                                            ; $46be: $98
	rrca                                             ; $46bf: $0f
	ld hl, sp-$71                                    ; $46c0: $f8 $8f
	ld a, [$facd]                                    ; $46c2: $fa $cd $fa
	db $ed                                           ; $46c5: $ed
	dec de                                           ; $46c6: $1b
	add b                                            ; $46c7: $80
	ld a, a                                          ; $46c8: $7f
	cp $98                                           ; $46c9: $fe $98
	sbc [hl]                                         ; $46cb: $9e
	rst $38                                          ; $46cc: $ff
	add b                                            ; $46cd: $80
	cp a                                             ; $46ce: $bf
	cp a                                             ; $46cf: $bf
	ld e, a                                          ; $46d0: $5f
	rst GetHLinHL                                          ; $46d1: $cf
	inc bc                                           ; $46d2: $03
	add b                                            ; $46d3: $80
	scf                                              ; $46d4: $37
	add b                                            ; $46d5: $80
	ld a, e                                          ; $46d6: $7b
	ld a, [hl]                                       ; $46d7: $7e
	ld a, a                                          ; $46d8: $7f
	ld a, [$3f9b]                                    ; $46d9: $fa $9b $3f
	rra                                              ; $46dc: $1f
	rra                                              ; $46dd: $1f
	rrca                                             ; $46de: $0f
	dec de                                           ; $46df: $1b
	add b                                            ; $46e0: $80
	sbc [hl]                                         ; $46e1: $9e
	dec c                                            ; $46e2: $0d
	ld h, a                                          ; $46e3: $67
	add b                                            ; $46e4: $80
	sbc c                                            ; $46e5: $99
	inc e                                            ; $46e6: $1c
	stop                                             ; $46e7: $10 $00
	nop                                              ; $46e9: $00
	rra                                              ; $46ea: $1f
	rra                                              ; $46eb: $1f
	sbc $10                                          ; $46ec: $de $10
	adc b                                            ; $46ee: $88
	rrca                                             ; $46ef: $0f
	ld [$070f], sp                                   ; $46f0: $08 $0f $07
	rlca                                             ; $46f3: $07
	nop                                              ; $46f4: $00
	add b                                            ; $46f5: $80
	add $e0                                          ; $46f6: $c6 $e0
	ld [hl], b                                       ; $46f8: $70
	ld hl, sp+$1e                                    ; $46f9: $f8 $1e
	db $fd                                           ; $46fb: $fd
	rrca                                             ; $46fc: $0f
	rst $38                                          ; $46fd: $ff
	ld [$08fc], sp                                   ; $46fe: $08 $fc $08
	db $fc                                           ; $4701: $fc
	add h                                            ; $4702: $84
	db $fc                                           ; $4703: $fc
	add $fc                                          ; $4704: $c6 $fc
	db $fd                                           ; $4706: $fd
	sbc $c0                                          ; $4707: $de $c0
	rst SubAFromDE                                          ; $4709: $df
	ld b, b                                          ; $470a: $40
	sub c                                            ; $470b: $91
	ret nz                                           ; $470c: $c0

	add c                                            ; $470d: $81
	add b                                            ; $470e: $80
	inc bc                                           ; $470f: $03
	ld bc, $0703                                     ; $4710: $01 $03 $07
	rrca                                             ; $4713: $0f
	rra                                              ; $4714: $1f
	ccf                                              ; $4715: $3f
	ld a, a                                          ; $4716: $7f
	db $dd                                           ; $4717: $dd
	cp $ff                                           ; $4718: $fe $ff
	ld a, e                                          ; $471a: $7b
	sbc b                                            ; $471b: $98
	ld [hl], e                                       ; $471c: $73
	ld hl, $009e                                     ; $471d: $21 $9e $00
	ld h, a                                          ; $4720: $67
	ret nz                                           ; $4721: $c0

	ld [hl], e                                       ; $4722: $73
	jp nz, Jump_06d_6e7e                             ; $4723: $c2 $7e $6e

	sbc l                                            ; $4726: $9d
	add b                                            ; $4727: $80
	ret nz                                           ; $4728: $c0

	inc sp                                           ; $4729: $33
	ret nz                                           ; $472a: $c0

	rst SubAFromDE                                          ; $472b: $df
	ld b, b                                          ; $472c: $40
	rst SubAFromDE                                          ; $472d: $df
	add b                                            ; $472e: $80
	sbc l                                            ; $472f: $9d
	ld bc, $1700                                     ; $4730: $01 $00 $17
	ret nz                                           ; $4733: $c0

	rst SubAFromDE                                          ; $4734: $df
	rrca                                             ; $4735: $0f
	ld a, e                                          ; $4736: $7b
	jp nz, $277b                                     ; $4737: $c2 $7b $27

	cpl                                              ; $473a: $2f
	ret nz                                           ; $473b: $c0

	ld a, a                                          ; $473c: $7f
	cp a                                             ; $473d: $bf
	inc bc                                           ; $473e: $03
	ret nz                                           ; $473f: $c0

	inc bc                                           ; $4740: $03
	ret nz                                           ; $4741: $c0

	cpl                                              ; $4742: $2f
	ret nz                                           ; $4743: $c0

	db $e3                                           ; $4744: $e3
	ld bc, $ffdf                                     ; $4745: $01 $df $ff
	add b                                            ; $4748: $80
	cp $ff                                           ; $4749: $fe $ff
	sub d                                            ; $474b: $92
	rst $38                                          ; $474c: $ff
	sub [hl]                                         ; $474d: $96
	or d                                             ; $474e: $b2
	xor l                                            ; $474f: $ad
	or [hl]                                          ; $4750: $b6
	or $2d                                           ; $4751: $f6 $2d
	xor b                                            ; $4753: $a8
	ld a, a                                          ; $4754: $7f
	ld d, c                                          ; $4755: $51
	rst $38                                          ; $4756: $ff
	and e                                            ; $4757: $a3
	cp $a7                                           ; $4758: $fe $a7
	rst $38                                          ; $475a: $ff
	ld c, e                                          ; $475b: $4b
	rst $38                                          ; $475c: $ff
	ld d, d                                          ; $475d: $52
	rst $38                                          ; $475e: $ff
	ld l, d                                          ; $475f: $6a
	rst $38                                          ; $4760: $ff
	ld c, d                                          ; $4761: $4a
	rst $38                                          ; $4762: $ff
	adc d                                            ; $4763: $8a
	rst $38                                          ; $4764: $ff
	ld a, [bc]                                       ; $4765: $0a
	rst $38                                          ; $4766: $ff
	ld [de], a                                       ; $4767: $12
	ld a, e                                          ; $4768: $7b
	ldh [c], a                                       ; $4769: $e2
	ld l, a                                          ; $476a: $6f
	cp $99                                           ; $476b: $fe $99
	ld a, [$feff]                                    ; $476d: $fa $ff $fe
	rlca                                             ; $4770: $07
	rst $38                                          ; $4771: $ff
	ld bc, $fe7b                                     ; $4772: $01 $7b $fe
	sub [hl]                                         ; $4775: $96
	inc bc                                           ; $4776: $03
	rst $38                                          ; $4777: $ff
	dec b                                            ; $4778: $05
	rst $38                                          ; $4779: $ff
	add hl, bc                                       ; $477a: $09
	rst $38                                          ; $477b: $ff
	db $10                                           ; $477c: $10
	rst $38                                          ; $477d: $ff
	jr nz, jr_06d_47fb                               ; $477e: $20 $7b

	cp $7f                                           ; $4780: $fe $7f
	ld a, [$ff81]                                    ; $4782: $fa $81 $ff
	dec e                                            ; $4785: $1d
	rst $38                                          ; $4786: $ff
	ld e, $75                                        ; $4787: $1e $75
	and h                                            ; $4789: $a4
	ld a, a                                          ; $478a: $7f

Jump_06d_478b:
	ld a, l                                          ; $478b: $7d
	rst $38                                          ; $478c: $ff
	ld a, a                                          ; $478d: $7f
	jp nz, $80ff                                     ; $478e: $c2 $ff $80

	rst $38                                          ; $4791: $ff
	ld c, $ff                                        ; $4792: $0e $ff
	rra                                              ; $4794: $1f
	ei                                               ; $4795: $fb
	ld a, c                                          ; $4796: $79
	di                                               ; $4797: $f3
	inc sp                                           ; $4798: $33
	xor a                                            ; $4799: $af
	xor a                                            ; $479a: $af
	adc e                                            ; $479b: $8b
	adc a                                            ; $479c: $8f
	add l                                            ; $479d: $85
	add [hl]                                         ; $479e: $86
	ld c, e                                          ; $479f: $4b
	rst JumpTable                                          ; $47a0: $c7
	ld b, b                                          ; $47a1: $40
	sbc $c0                                          ; $47a2: $de $c0
	add b                                            ; $47a4: $80
	ld h, b                                          ; $47a5: $60
	ldh [$60], a                                     ; $47a6: $e0 $60
	ldh [$b0], a                                     ; $47a8: $e0 $b0
	ld [hl], b                                       ; $47aa: $70
	or b                                             ; $47ab: $b0
	ld a, b                                          ; $47ac: $78
	cp h                                             ; $47ad: $bc
	ld a, h                                          ; $47ae: $7c
	xor $3e                                          ; $47af: $ee $3e
	or l                                             ; $47b1: $b5
	cpl                                              ; $47b2: $2f
	inc a                                            ; $47b3: $3c
	and a                                            ; $47b4: $a7
	ld a, [hl+]                                      ; $47b5: $2a
	or a                                             ; $47b6: $b7
	ld l, d                                          ; $47b7: $6a
	or a                                             ; $47b8: $b7
	ld a, [hl]                                       ; $47b9: $7e
	sub e                                            ; $47ba: $93
	or l                                             ; $47bb: $b5
	db $db                                           ; $47bc: $db
	sbc l                                            ; $47bd: $9d
	ei                                               ; $47be: $fb
	sbc b                                            ; $47bf: $98

Call_06d_47c0:
	rst $38                                          ; $47c0: $ff
	sbc h                                            ; $47c1: $9c
	rst $38                                          ; $47c2: $ff
	db $ed                                           ; $47c3: $ed
	adc h                                            ; $47c4: $8c
	or $ec                                           ; $47c5: $f6 $ec
	or a                                             ; $47c7: $b7
	db $ec                                           ; $47c8: $ec
	or a                                             ; $47c9: $b7
	and [hl]                                         ; $47ca: $a6
	rst $38                                          ; $47cb: $ff
	rst SubAFromHL                                          ; $47cc: $d7
	db $fd                                           ; $47cd: $fd
	rst SubAFromHL                                          ; $47ce: $d7
	ld a, h                                          ; $47cf: $7c
	cp [hl]                                          ; $47d0: $be
	ld l, h                                          ; $47d1: $6c
	rst FarCall                                          ; $47d2: $f7
	inc l                                            ; $47d3: $2c
	ld a, l                                          ; $47d4: $7d
	ld h, $b7                                        ; $47d5: $26 $b7
	ld [bc], a                                       ; $47d7: $02
	db $dd                                           ; $47d8: $dd
	add b                                            ; $47d9: $80
	add b                                            ; $47da: $80
	nop                                              ; $47db: $00
	add b                                            ; $47dc: $80
	add h                                            ; $47dd: $84
	add b                                            ; $47de: $80
	ld b, $08                                        ; $47df: $06 $08
	ld d, $18                                        ; $47e1: $16 $18
	di                                               ; $47e3: $f3
	sbc h                                            ; $47e4: $9c
	ld hl, sp-$72                                    ; $47e5: $f8 $8e
	add h                                            ; $47e7: $84
	rst $38                                          ; $47e8: $ff
	ld a, [hl]                                       ; $47e9: $7e
	rst $38                                          ; $47ea: $ff
	ld a, a                                          ; $47eb: $7f
	pop bc                                           ; $47ec: $c1
	rst $38                                          ; $47ed: $ff
	ret nz                                           ; $47ee: $c0

	xor $5f                                          ; $47ef: $ee $5f
	ld a, a                                          ; $47f1: $7f
	ccf                                              ; $47f2: $3f
	ld a, e                                          ; $47f3: $7b
	ld a, c                                          ; $47f4: $79
	or e                                             ; $47f5: $b3
	inc de                                           ; $47f6: $13
	adc a                                            ; $47f7: $8f
	rrca                                             ; $47f8: $0f
	dec bc                                           ; $47f9: $0b
	sbc d                                            ; $47fa: $9a

jr_06d_47fb:
	rrca                                             ; $47fb: $0f
	ld b, $05                                        ; $47fc: $06 $05
	dec bc                                           ; $47fe: $0b
	rlca                                             ; $47ff: $07
	db $fd                                           ; $4800: $fd
	add d                                            ; $4801: $82
	dec l                                            ; $4802: $2d
	di                                               ; $4803: $f3
	sub [hl]                                         ; $4804: $96
	ld a, c                                          ; $4805: $79
	ld d, e                                          ; $4806: $53
	inc a                                            ; $4807: $3c
	ld l, c                                          ; $4808: $69
	sbc [hl]                                         ; $4809: $9e
	inc [hl]                                         ; $480a: $34
	rst GetHLinHL                                          ; $480b: $cf
	sub d                                            ; $480c: $92
	rst AddAOntoHL                                          ; $480d: $ef
	pop hl                                           ; $480e: $e1
	ld a, a                                          ; $480f: $7f
	ldh a, [$df]                                     ; $4810: $f0 $df
	db $fc                                           ; $4812: $fc
	rst AddAOntoHL                                          ; $4813: $ef
	ei                                               ; $4814: $fb
	xor a                                            ; $4815: $af
	ld a, b                                          ; $4816: $78
	adc a                                            ; $4817: $8f
	ld a, d                                          ; $4818: $7a
	adc l                                            ; $4819: $8d
	ld a, [$7a8d]                                    ; $481a: $fa $8d $7a
	dec c                                            ; $481d: $0d
	ld a, [hl-]                                      ; $481e: $3a
	ld l, e                                          ; $481f: $6b
	cp $92                                           ; $4820: $fe $92
	ld a, d                                          ; $4822: $7a
	dec e                                            ; $4823: $1d
	ld a, e                                          ; $4824: $7b
	dec a                                            ; $4825: $3d
	rst FarCall                                          ; $4826: $f7
	ld a, c                                          ; $4827: $79
	rst FarCall                                          ; $4828: $f7
	ld sp, hl                                        ; $4829: $f9
	push af                                          ; $482a: $f5
	ei                                               ; $482b: $fb
	push af                                          ; $482c: $f5
	ei                                               ; $482d: $fb
	jp nc, $2e7b                                     ; $482e: $d2 $7b $2e

	sub h                                            ; $4831: $94
	call nc, $d43f                                   ; $4832: $d4 $3f $d4
	ccf                                              ; $4835: $3f
	push hl                                          ; $4836: $e5
	ccf                                              ; $4837: $3f
	db $eb                                           ; $4838: $eb
	ccf                                              ; $4839: $3f
	jp z, Jump_06d_5c7f                              ; $483a: $ca $7f $5c

	sbc $ff                                          ; $483d: $de $ff
	ld d, e                                          ; $483f: $53
	ld b, b                                          ; $4840: $40
	cp a                                             ; $4841: $bf
	cp $ff                                           ; $4842: $fe $ff
	sub d                                            ; $4844: $92
	ld e, $ff                                        ; $4845: $1e $ff
	ld a, e                                          ; $4847: $7b
	or e                                             ; $4848: $b3
	or e                                             ; $4849: $b3
	sbc [hl]                                         ; $484a: $9e
	sbc a                                            ; $484b: $9f
	adc c                                            ; $484c: $89
	adc e                                            ; $484d: $8b
	ld b, [hl]                                       ; $484e: $46
	call nz, $c040                                   ; $484f: $c4 $40 $c0
	ccf                                              ; $4852: $3f
	ld h, b                                          ; $4853: $60
	sbc l                                            ; $4854: $9d
	scf                                              ; $4855: $37
	ld [bc], a                                       ; $4856: $02
	ld a, e                                          ; $4857: $7b
	ld h, e                                          ; $4858: $63
	sbc $80                                          ; $4859: $de $80
	sbc l                                            ; $485b: $9d
	add h                                            ; $485c: $84
	nop                                              ; $485d: $00
	ld b, a                                          ; $485e: $47
	ld h, b                                          ; $485f: $60
	adc a                                            ; $4860: $8f
	rst $38                                          ; $4861: $ff
	ld b, b                                          ; $4862: $40
	ld a, a                                          ; $4863: $7f
	nop                                              ; $4864: $00
	ccf                                              ; $4865: $3f
	rrca                                             ; $4866: $0f
	cp a                                             ; $4867: $bf
	rra                                              ; $4868: $1f
	cp c                                             ; $4869: $b9
	add hl, sp                                       ; $486a: $39
	ccf                                              ; $486b: $3f
	dec bc                                           ; $486c: $0b
	dec c                                            ; $486d: $0d
	ld c, $0f                                        ; $486e: $0e $0f
	dec b                                            ; $4870: $05
	dec sp                                           ; $4871: $3b
	ld h, b                                          ; $4872: $60
	sub h                                            ; $4873: $94
	rra                                              ; $4874: $1f
	db $fc                                           ; $4875: $fc
	rrca                                             ; $4876: $0f
	ei                                               ; $4877: $fb
	adc a                                            ; $4878: $8f
	ld hl, sp-$31                                    ; $4879: $f8 $cf
	ld a, d                                          ; $487b: $7a
	db $ed                                           ; $487c: $ed
	ld a, [$6fcd]                                    ; $487d: $fa $cd $6f
	ld h, b                                          ; $4880: $60
	ccf                                              ; $4881: $3f
	add b                                            ; $4882: $80
	ld [hl], e                                       ; $4883: $73
	ld a, [hl]                                       ; $4884: $7e
	sbc b                                            ; $4885: $98
	ei                                               ; $4886: $fb
	or e                                             ; $4887: $b3
	or e                                             ; $4888: $b3
	sbc c                                            ; $4889: $99
	sbc a                                            ; $488a: $9f
	ld b, a                                          ; $488b: $47
	add $2f                                          ; $488c: $c6 $2f
	add b                                            ; $488e: $80
	rst $38                                          ; $488f: $ff
	ld [hl], a                                       ; $4890: $77
	ld a, [hl]                                       ; $4891: $7e
	ld a, $e0                                        ; $4892: $3e $e0
	ld [hl], e                                       ; $4894: $73
	add b                                            ; $4895: $80
	sbc l                                            ; $4896: $9d
	nop                                              ; $4897: $00
	cp a                                             ; $4898: $bf
	ld a, e                                          ; $4899: $7b
	ld a, [hl]                                       ; $489a: $7e
	rst SubAFromDE                                          ; $489b: $df
	add hl, sp                                       ; $489c: $39
	sbc h                                            ; $489d: $9c
	ld a, $0b                                        ; $489e: $3e $0b
	rrca                                             ; $48a0: $0f
	ld [hl], $e0                                     ; $48a1: $36 $e0
	ld [hl], a                                       ; $48a3: $77
	add b                                            ; $48a4: $80
	sbc b                                            ; $48a5: $98
	rrca                                             ; $48a6: $0f
	ld hl, sp-$71                                    ; $48a7: $f8 $8f
	ld a, [$facd]                                    ; $48a9: $fa $cd $fa
	db $ed                                           ; $48ac: $ed
	dec de                                           ; $48ad: $1b
	add b                                            ; $48ae: $80
	ld a, a                                          ; $48af: $7f
	cp $98                                           ; $48b0: $fe $98
	sbc [hl]                                         ; $48b2: $9e
	rst $38                                          ; $48b3: $ff
	add b                                            ; $48b4: $80
	cp a                                             ; $48b5: $bf
	cp a                                             ; $48b6: $bf
	ld e, a                                          ; $48b7: $5f
	rst GetHLinHL                                          ; $48b8: $cf
	inc bc                                           ; $48b9: $03
	add b                                            ; $48ba: $80
	scf                                              ; $48bb: $37
	add b                                            ; $48bc: $80
	ld a, e                                          ; $48bd: $7b
	ld a, [hl]                                       ; $48be: $7e
	ld a, a                                          ; $48bf: $7f
	ld a, [$3f9b]                                    ; $48c0: $fa $9b $3f
	rra                                              ; $48c3: $1f
	rra                                              ; $48c4: $1f
	rrca                                             ; $48c5: $0f
	dec de                                           ; $48c6: $1b
	add b                                            ; $48c7: $80
	sbc [hl]                                         ; $48c8: $9e
	dec c                                            ; $48c9: $0d
	ld h, a                                          ; $48ca: $67
	add b                                            ; $48cb: $80
	sub h                                            ; $48cc: $94
	inc e                                            ; $48cd: $1c
	stop                                             ; $48ce: $10 $00
	nop                                              ; $48d0: $00
	rra                                              ; $48d1: $1f
	rra                                              ; $48d2: $1f
	db $10                                           ; $48d3: $10
	db $10                                           ; $48d4: $10
	ld [$070f], sp                                   ; $48d5: $08 $0f $07
	ld a, e                                          ; $48d8: $7b
	ld d, b                                          ; $48d9: $50
	adc l                                            ; $48da: $8d
	ld b, $80                                        ; $48db: $06 $80
	ret nz                                           ; $48dd: $c0

	ldh [rSVBK], a                                   ; $48de: $e0 $70
	ld hl, sp+$1e                                    ; $48e0: $f8 $1e
	db $fd                                           ; $48e2: $fd
	rrca                                             ; $48e3: $0f
	rst $38                                          ; $48e4: $ff
	ld [$08fc], sp                                   ; $48e5: $08 $fc $08
	db $fc                                           ; $48e8: $fc
	add h                                            ; $48e9: $84
	db $fc                                           ; $48ea: $fc
	add $fc                                          ; $48eb: $c6 $fc
	db $fd                                           ; $48ed: $fd
	rst SubAFromDE                                          ; $48ee: $df
	ret nz                                           ; $48ef: $c0

	rst SubAFromDE                                          ; $48f0: $df
	ld b, b                                          ; $48f1: $40
	rst SubAFromDE                                          ; $48f2: $df
	add b                                            ; $48f3: $80
	sub d                                            ; $48f4: $92
	ld bc, $0300                                     ; $48f5: $01 $00 $03
	ld bc, $0703                                     ; $48f8: $01 $03 $07
	rrca                                             ; $48fb: $0f
	rra                                              ; $48fc: $1f
	ccf                                              ; $48fd: $3f
	ld a, a                                          ; $48fe: $7f
	db $dd                                           ; $48ff: $dd
	cp $ff                                           ; $4900: $fe $ff
	cp h                                             ; $4902: $bc
	ccf                                              ; $4903: $3f
	rlca                                             ; $4904: $07
	nop                                              ; $4905: $00
	nop                                              ; $4906: $00
	inc e                                            ; $4907: $1c
	ld l, e                                          ; $4908: $6b
	ret nz                                           ; $4909: $c0

	rst SubAFromDE                                          ; $490a: $df
	rrca                                             ; $490b: $0f
	ld a, e                                          ; $490c: $7b
	jp nz, Jump_06d_677b                             ; $490d: $c2 $7b $67

	cpl                                              ; $4910: $2f
	ret nz                                           ; $4911: $c0

	ld a, a                                          ; $4912: $7f
	cp a                                             ; $4913: $bf
	rrca                                             ; $4914: $0f
	ret nz                                           ; $4915: $c0

	rst SubAFromDE                                          ; $4916: $df
	rrca                                             ; $4917: $0f
	ld [hl], a                                       ; $4918: $77
	ldh a, [c]                                       ; $4919: $f2
	daa                                              ; $491a: $27
	ret nz                                           ; $491b: $c0

	ld a, a                                          ; $491c: $7f
	db $eb                                           ; $491d: $eb
	cp a                                             ; $491e: $bf
	add b                                            ; $491f: $80
	nop                                              ; $4920: $00
	inc bc                                           ; $4921: $03
	ret nz                                           ; $4922: $c0

	inc bc                                           ; $4923: $03
	ret nz                                           ; $4924: $c0

	scf                                              ; $4925: $37
	ret nz                                           ; $4926: $c0

	push hl                                          ; $4927: $e5
	add c                                            ; $4928: $81
	sub a                                            ; $4929: $97
	rst $38                                          ; $492a: $ff
	cp $92                                           ; $492b: $fe $92
	sub [hl]                                         ; $492d: $96
	xor l                                            ; $492e: $ad
	or $a8                                           ; $492f: $f6 $a8
	ld d, c                                          ; $4931: $51
	sbc $ff                                          ; $4932: $de $ff
	sub c                                            ; $4934: $91
	or d                                             ; $4935: $b2
	or [hl]                                          ; $4936: $b6
	dec l                                            ; $4937: $2d
	ld a, a                                          ; $4938: $7f
	rst $38                                          ; $4939: $ff
	and e                                            ; $493a: $a3
	and a                                            ; $493b: $a7
	ld c, e                                          ; $493c: $4b
	ld d, d                                          ; $493d: $52
	ld l, d                                          ; $493e: $6a
	ld c, d                                          ; $493f: $4a
	adc d                                            ; $4940: $8a
	ld a, [bc]                                       ; $4941: $0a
	cp $da                                           ; $4942: $fe $da
	rst $38                                          ; $4944: $ff
	sbc [hl]                                         ; $4945: $9e
	ld [de], a                                       ; $4946: $12
	db $dd                                           ; $4947: $dd
	sub d                                            ; $4948: $92
	sbc [hl]                                         ; $4949: $9e
	ld a, [$f267]                                    ; $494a: $fa $67 $f2
	sbc l                                            ; $494d: $9d
	rlca                                             ; $494e: $07
	ld bc, $ffd9                                     ; $494f: $01 $d9 $ff
	sub c                                            ; $4952: $91
	ld bc, $0503                                     ; $4953: $01 $03 $05
	add hl, bc                                       ; $4956: $09
	db $10                                           ; $4957: $10
	jr nz, jr_06d_497a                               ; $4958: $20 $20

	db $10                                           ; $495a: $10
	rst $38                                          ; $495b: $ff
	dec e                                            ; $495c: $1d
	ld e, $ac                                        ; $495d: $1e $ac
	ld [hl], l                                       ; $495f: $75
	ld a, [hl]                                       ; $4960: $7e
	db $dd                                           ; $4961: $dd
	rst $38                                          ; $4962: $ff
	add b                                            ; $4963: $80
	ld [hl], l                                       ; $4964: $75
	ld [hl], a                                       ; $4965: $77
	rst $38                                          ; $4966: $ff
	rst GetHLinHL                                          ; $4967: $cf
	add c                                            ; $4968: $81
	nop                                              ; $4969: $00
	rst $38                                          ; $496a: $ff
	ld sp, hl                                        ; $496b: $f9
	rst FarCall                                          ; $496c: $f7
	xor a                                            ; $496d: $af
	adc e                                            ; $496e: $8b
	add l                                            ; $496f: $85
	ld c, e                                          ; $4970: $4b
	ld b, b                                          ; $4971: $40
	ld e, $79                                        ; $4972: $1e $79
	inc sp                                           ; $4974: $33
	xor a                                            ; $4975: $af
	adc a                                            ; $4976: $8f
	add [hl]                                         ; $4977: $86
	rst JumpTable                                          ; $4978: $c7
	ret nz                                           ; $4979: $c0

jr_06d_497a:
	ret nz                                           ; $497a: $c0

	ld h, b                                          ; $497b: $60
	ld h, b                                          ; $497c: $60
	or b                                             ; $497d: $b0
	or b                                             ; $497e: $b0
	cp h                                             ; $497f: $bc
	xor $b5                                          ; $4980: $ee $b5
	ret nz                                           ; $4982: $c0

	rst SubAFromDE                                          ; $4983: $df
	ldh [$80], a                                     ; $4984: $e0 $80
	ld [hl], b                                       ; $4986: $70
	ld a, b                                          ; $4987: $78
	ld a, h                                          ; $4988: $7c
	ld a, $2f                                        ; $4989: $3e $2f
	inc a                                            ; $498b: $3c
	ld a, [hl+]                                      ; $498c: $2a
	ld l, d                                          ; $498d: $6a
	ld a, [hl]                                       ; $498e: $7e
	or l                                             ; $498f: $b5
	sbc l                                            ; $4990: $9d
	sbc b                                            ; $4991: $98
	sbc h                                            ; $4992: $9c
	and a                                            ; $4993: $a7
	or a                                             ; $4994: $b7
	or a                                             ; $4995: $b7
	sub e                                            ; $4996: $93
	db $db                                           ; $4997: $db
	ei                                               ; $4998: $fb
	rst $38                                          ; $4999: $ff
	rst $38                                          ; $499a: $ff
	db $ed                                           ; $499b: $ed
	db $ec                                           ; $499c: $ec
	db $ec                                           ; $499d: $ec
	and [hl]                                         ; $499e: $a6
	rst SubAFromHL                                          ; $499f: $d7
	ld d, a                                          ; $49a0: $57
	cp [hl]                                          ; $49a1: $be
	rst FarCall                                          ; $49a2: $f7
	or $b7                                           ; $49a3: $f6 $b7
	adc a                                            ; $49a5: $8f
	or a                                             ; $49a6: $b7
	rst $38                                          ; $49a7: $ff
	db $fd                                           ; $49a8: $fd
	db $fc                                           ; $49a9: $fc
	db $ec                                           ; $49aa: $ec
	inc l                                            ; $49ab: $2c
	db $fd                                           ; $49ac: $fd
	or a                                             ; $49ad: $b7
	add b                                            ; $49ae: $80
	add b                                            ; $49af: $80
	nop                                              ; $49b0: $00
	add h                                            ; $49b1: $84
	ld b, $16                                        ; $49b2: $06 $16
	ld h, $02                                        ; $49b4: $26 $02
	db $dd                                           ; $49b6: $dd
	add b                                            ; $49b7: $80
	add b                                            ; $49b8: $80
	ld [$f318], sp                                   ; $49b9: $08 $18 $f3
	ld hl, sp-$04                                    ; $49bc: $f8 $fc
	ld [hl], d                                       ; $49be: $72
	ld c, a                                          ; $49bf: $4f
	rst $38                                          ; $49c0: $ff
	rst $38                                          ; $49c1: $ff
	ld a, a                                          ; $49c2: $7f
	sbc h                                            ; $49c3: $9c
	adc [hl]                                         ; $49c4: $8e
	add a                                            ; $49c5: $87
	rst GetHLinHL                                          ; $49c6: $cf
	rst $38                                          ; $49c7: $ff
	ldh a, [rBGP]                                    ; $49c8: $f0 $47
	rra                                              ; $49ca: $1f
	ld a, e                                          ; $49cb: $7b
	or e                                             ; $49cc: $b3
	adc a                                            ; $49cd: $8f
	dec bc                                           ; $49ce: $0b
	ld b, $0b                                        ; $49cf: $06 $0b
	nop                                              ; $49d1: $00
	nop                                              ; $49d2: $00
	add hl, sp                                       ; $49d3: $39
	inc de                                           ; $49d4: $13
	rrca                                             ; $49d5: $0f
	rrca                                             ; $49d6: $0f
	dec b                                            ; $49d7: $05
	add b                                            ; $49d8: $80
	rlca                                             ; $49d9: $07
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	dec l                                            ; $49dc: $2d
	sub [hl]                                         ; $49dd: $96
	ld d, e                                          ; $49de: $53
	ld l, c                                          ; $49df: $69
	inc [hl]                                         ; $49e0: $34
	sub d                                            ; $49e1: $92
	pop hl                                           ; $49e2: $e1
	ldh a, [$f3]                                     ; $49e3: $f0 $f3
	ld a, c                                          ; $49e5: $79
	inc a                                            ; $49e6: $3c
	sbc [hl]                                         ; $49e7: $9e
	rst GetHLinHL                                          ; $49e8: $cf
	rst AddAOntoHL                                          ; $49e9: $ef
	ld a, a                                          ; $49ea: $7f
	rst SubAFromDE                                          ; $49eb: $df
	db $fc                                           ; $49ec: $fc
	ei                                               ; $49ed: $fb
	ld hl, sp+$7a                                    ; $49ee: $f8 $7a
	ld a, [$3a7a]                                    ; $49f0: $fa $7a $3a
	ld a, [hl-]                                      ; $49f3: $3a
	rst AddAOntoHL                                          ; $49f4: $ef
	xor a                                            ; $49f5: $af
	adc a                                            ; $49f6: $8f
	adc l                                            ; $49f7: $8d
	sbc [hl]                                         ; $49f8: $9e
	adc l                                            ; $49f9: $8d
	sbc $0d                                          ; $49fa: $de $0d
	rst SubAFromDE                                          ; $49fc: $df
	ld a, [hl-]                                      ; $49fd: $3a
	add a                                            ; $49fe: $87
	ld a, d                                          ; $49ff: $7a
	ld a, e                                          ; $4a00: $7b
	rst FarCall                                          ; $4a01: $f7
	rst FarCall                                          ; $4a02: $f7
	push af                                          ; $4a03: $f5
	push af                                          ; $4a04: $f5
	dec c                                            ; $4a05: $0d
	dec c                                            ; $4a06: $0d
	dec e                                            ; $4a07: $1d
	dec a                                            ; $4a08: $3d
	ld a, c                                          ; $4a09: $79
	ld sp, hl                                        ; $4a0a: $f9
	ei                                               ; $4a0b: $fb
	ei                                               ; $4a0c: $fb
	jp nc, $d412                                     ; $4a0d: $d2 $12 $d4

	call nc, $ebe5                                   ; $4a10: $d4 $e5 $eb
	jp z, $ff5c                                      ; $4a13: $ca $5c $ff

	rst $38                                          ; $4a16: $ff
	db $dd                                           ; $4a17: $dd
	ccf                                              ; $4a18: $3f
	ld a, a                                          ; $4a19: $7f
	db $10                                           ; $4a1a: $10
	ld b, a                                          ; $4a1b: $47
	ld b, b                                          ; $4a1c: $40
	ld a, e                                          ; $4a1d: $7b
	ld d, $92                                        ; $4a1e: $16 $92
	or e                                             ; $4a20: $b3
	sbc [hl]                                         ; $4a21: $9e
	adc c                                            ; $4a22: $89
	ld b, [hl]                                       ; $4a23: $46
	ld b, b                                          ; $4a24: $40
	nop                                              ; $4a25: $00
	ld e, $7b                                        ; $4a26: $1e $7b
	or e                                             ; $4a28: $b3
	sbc a                                            ; $4a29: $9f
	adc e                                            ; $4a2a: $8b
	call nz, Call_06d_47c0                           ; $4a2b: $c4 $c0 $47
	ld h, b                                          ; $4a2e: $60
	sbc l                                            ; $4a2f: $9d
	ld a, l                                          ; $4a30: $7d
	scf                                              ; $4a31: $37
	sbc $80                                          ; $4a32: $de $80
	ld [hl], e                                       ; $4a34: $73
	ld h, b                                          ; $4a35: $60
	sbc [hl]                                         ; $4a36: $9e
	nop                                              ; $4a37: $00
	ld a, e                                          ; $4a38: $7b
	ld d, a                                          ; $4a39: $57
	ld b, a                                          ; $4a3a: $47
	ld h, b                                          ; $4a3b: $60
	ld a, a                                          ; $4a3c: $7f
	ret                                              ; $4a3d: $c9


	sub c                                            ; $4a3e: $91
	ccf                                              ; $4a3f: $3f
	cp a                                             ; $4a40: $bf
	cp c                                             ; $4a41: $b9
	ccf                                              ; $4a42: $3f
	dec c                                            ; $4a43: $0d
	rrca                                             ; $4a44: $0f
	nop                                              ; $4a45: $00
	nop                                              ; $4a46: $00
	rrca                                             ; $4a47: $0f
	rra                                              ; $4a48: $1f
	add hl, sp                                       ; $4a49: $39
	dec bc                                           ; $4a4a: $0b
	ld c, $05                                        ; $4a4b: $0e $05
	ld b, e                                          ; $4a4d: $43
	ld h, b                                          ; $4a4e: $60
	sbc [hl]                                         ; $4a4f: $9e
	rra                                              ; $4a50: $1f
	ld h, a                                          ; $4a51: $67
	ld h, b                                          ; $4a52: $60
	sbc d                                            ; $4a53: $9a
	rrca                                             ; $4a54: $0f
	adc a                                            ; $4a55: $8f
	rst GetHLinHL                                          ; $4a56: $cf
	db $ed                                           ; $4a57: $ed
	call $0dde                                       ; $4a58: $cd $de $0d
	ld b, e                                          ; $4a5b: $43
	add b                                            ; $4a5c: $80
	ld [hl], a                                       ; $4a5d: $77
	ld a, a                                          ; $4a5e: $7f
	sub l                                            ; $4a5f: $95
	sbc c                                            ; $4a60: $99
	ld b, a                                          ; $4a61: $47
	ld b, b                                          ; $4a62: $40
	nop                                              ; $4a63: $00
	nop                                              ; $4a64: $00
	ld e, $fb                                        ; $4a65: $1e $fb
	or e                                             ; $4a67: $b3
	sbc a                                            ; $4a68: $9f
	add $3b                                          ; $4a69: $c6 $3b
	add b                                            ; $4a6b: $80
	ld a, e                                          ; $4a6c: $7b
	adc b                                            ; $4a6d: $88
	ld l, a                                          ; $4a6e: $6f
	add b                                            ; $4a6f: $80
	ld a, e                                          ; $4a70: $7b
	rst FarCall                                          ; $4a71: $f7
	scf                                              ; $4a72: $37
	add b                                            ; $4a73: $80
	sbc h                                            ; $4a74: $9c
	cp a                                             ; $4a75: $bf
	add hl, sp                                       ; $4a76: $39
	ld a, $7b                                        ; $4a77: $3e $7b
	add b                                            ; $4a79: $80
	ld [hl], e                                       ; $4a7a: $73
	ld a, a                                          ; $4a7b: $7f
	ld a, $e0                                        ; $4a7c: $3e $e0
	ld [hl], a                                       ; $4a7e: $77
	add b                                            ; $4a7f: $80
	rst SubAFromDE                                          ; $4a80: $df
	ld a, [$8077]                                    ; $4a81: $fa $77 $80
	ld a, a                                          ; $4a84: $7f
	ld a, a                                          ; $4a85: $7f
	sbc l                                            ; $4a86: $9d
	call $2bed                                       ; $4a87: $cd $ed $2b
	add b                                            ; $4a8a: $80
	sbc h                                            ; $4a8b: $9c
	rst $38                                          ; $4a8c: $ff
	cp a                                             ; $4a8d: $bf
	ld e, a                                          ; $4a8e: $5f
	ld a, e                                          ; $4a8f: $7b
	add b                                            ; $4a90: $80
	sbc d                                            ; $4a91: $9a
	nop                                              ; $4a92: $00
	sbc [hl]                                         ; $4a93: $9e
	add b                                            ; $4a94: $80
	cp a                                             ; $4a95: $bf
	rst GetHLinHL                                          ; $4a96: $cf
	inc bc                                           ; $4a97: $03
	add b                                            ; $4a98: $80
	dec sp                                           ; $4a99: $3b
	add b                                            ; $4a9a: $80
	rst SubAFromDE                                          ; $4a9b: $df
	ccf                                              ; $4a9c: $3f
	sbc [hl]                                         ; $4a9d: $9e
	rra                                              ; $4a9e: $1f
	db $fd                                           ; $4a9f: $fd
	ld a, a                                          ; $4aa0: $7f
	ld a, e                                          ; $4aa1: $7b
	sbc [hl]                                         ; $4aa2: $9e
	rra                                              ; $4aa3: $1f
	ld a, e                                          ; $4aa4: $7b
	ld a, b                                          ; $4aa5: $78
	dec de                                           ; $4aa6: $1b
	add b                                            ; $4aa7: $80
	sbc [hl]                                         ; $4aa8: $9e
	dec c                                            ; $4aa9: $0d
	ld [hl], a                                       ; $4aaa: $77
	add b                                            ; $4aab: $80
	sub [hl]                                         ; $4aac: $96
	inc e                                            ; $4aad: $1c
	nop                                              ; $4aae: $00
	rrca                                             ; $4aaf: $0f
	db $10                                           ; $4ab0: $10
	rla                                              ; $4ab1: $17
	nop                                              ; $4ab2: $00
	ld b, $00                                        ; $4ab3: $06 $00
	db $10                                           ; $4ab5: $10
	ld a, e                                          ; $4ab6: $7b
	ld hl, sp+$7b                                    ; $4ab7: $f8 $7b
	pop de                                           ; $4ab9: $d1
	sub d                                            ; $4aba: $92
	add b                                            ; $4abb: $80
	ret nz                                           ; $4abc: $c0

	ld [hl], b                                       ; $4abd: $70
	ld e, $0f                                        ; $4abe: $1e $0f
	ld [$8408], sp                                   ; $4ac0: $08 $08 $84
	add $e0                                          ; $4ac3: $c6 $e0
	ld hl, sp-$03                                    ; $4ac5: $f8 $fd
	rst $38                                          ; $4ac7: $ff
	db $dd                                           ; $4ac8: $dd
	db $fc                                           ; $4ac9: $fc
	ld a, e                                          ; $4aca: $7b
	db $ed                                           ; $4acb: $ed
	rst SubAFromDE                                          ; $4acc: $df
	ld b, b                                          ; $4acd: $40
	ld a, l                                          ; $4ace: $7d
	sub e                                            ; $4acf: $93
	sbc [hl]                                         ; $4ad0: $9e
	inc bc                                           ; $4ad1: $03
	ld [hl], a                                       ; $4ad2: $77
	ld hl, sp+$7e                                    ; $4ad3: $f8 $7e
	sub b                                            ; $4ad5: $90
	sbc b                                            ; $4ad6: $98
	ld bc, $0f07                                     ; $4ad7: $01 $07 $0f
	ccf                                              ; $4ada: $3f
	db $dd                                           ; $4adb: $dd
	rst $38                                          ; $4adc: $ff
	ccf                                              ; $4add: $3f
	ld a, e                                          ; $4ade: $7b
	jr z, @-$62                                      ; $4adf: $28 $9c

	rra                                              ; $4ae1: $1f
	ld a, a                                          ; $4ae2: $7f
	cp $fc                                           ; $4ae3: $fe $fc
	ld [hl], a                                       ; $4ae5: $77
	ret nz                                           ; $4ae6: $c0

	sbc e                                            ; $4ae7: $9b
	jr jr_06d_4af9                                   ; $4ae8: $18 $0f

	nop                                              ; $4aea: $00
	ld b, $73                                        ; $4aeb: $06 $73
	ret nz                                           ; $4aed: $c0

	ld a, a                                          ; $4aee: $7f
	add sp, $33                                      ; $4aef: $e8 $33
	ret nz                                           ; $4af1: $c0

	sbc l                                            ; $4af2: $9d
	ret nz                                           ; $4af3: $c0

	add c                                            ; $4af4: $81
	rrca                                             ; $4af5: $0f
	ret nz                                           ; $4af6: $c0

	ld a, a                                          ; $4af7: $7f
	rst GetHLinHL                                          ; $4af8: $cf

jr_06d_4af9:
	ld a, a                                          ; $4af9: $7f
	rst AddAOntoHL                                          ; $4afa: $ef
	ld [hl], a                                       ; $4afb: $77
	ret nz                                           ; $4afc: $c0

	ld a, e                                          ; $4afd: $7b
	cp a                                             ; $4afe: $bf

Jump_06d_4aff:
	sbc l                                            ; $4aff: $9d
	add b                                            ; $4b00: $80
	add $1b                                          ; $4b01: $c6 $1b
	ret nz                                           ; $4b03: $c0

	ld a, a                                          ; $4b04: $7f
	cp a                                             ; $4b05: $bf
	inc bc                                           ; $4b06: $03
	ret nz                                           ; $4b07: $c0

	inc bc                                           ; $4b08: $03
	ret nz                                           ; $4b09: $c0

	ld b, a                                          ; $4b0a: $47
	ret nz                                           ; $4b0b: $c0

	jp hl                                            ; $4b0c: $e9


	ld bc, $ffdf                                     ; $4b0d: $01 $df $ff
	add b                                            ; $4b10: $80
	cp $ff                                           ; $4b11: $fe $ff
	sub d                                            ; $4b13: $92
	rst $38                                          ; $4b14: $ff
	sub [hl]                                         ; $4b15: $96
	or d                                             ; $4b16: $b2
	xor l                                            ; $4b17: $ad
	or [hl]                                          ; $4b18: $b6
	or $2d                                           ; $4b19: $f6 $2d
	xor b                                            ; $4b1b: $a8
	ld a, a                                          ; $4b1c: $7f
	ld d, c                                          ; $4b1d: $51
	rst $38                                          ; $4b1e: $ff
	and e                                            ; $4b1f: $a3
	cp $a7                                           ; $4b20: $fe $a7
	rst $38                                          ; $4b22: $ff
	ld c, e                                          ; $4b23: $4b
	rst $38                                          ; $4b24: $ff
	ld d, d                                          ; $4b25: $52
	rst $38                                          ; $4b26: $ff
	ld l, d                                          ; $4b27: $6a
	rst $38                                          ; $4b28: $ff
	ld c, d                                          ; $4b29: $4a
	rst $38                                          ; $4b2a: $ff
	adc d                                            ; $4b2b: $8a
	rst $38                                          ; $4b2c: $ff
	ld a, [bc]                                       ; $4b2d: $0a
	rst $38                                          ; $4b2e: $ff
	ld [de], a                                       ; $4b2f: $12
	ld a, e                                          ; $4b30: $7b
	ldh [c], a                                       ; $4b31: $e2
	ld l, a                                          ; $4b32: $6f
	cp $99                                           ; $4b33: $fe $99
	ld a, [$feff]                                    ; $4b35: $fa $ff $fe
	rlca                                             ; $4b38: $07
	rst $38                                          ; $4b39: $ff
	ld bc, $fe7b                                     ; $4b3a: $01 $7b $fe
	sub [hl]                                         ; $4b3d: $96
	inc bc                                           ; $4b3e: $03
	rst $38                                          ; $4b3f: $ff
	dec b                                            ; $4b40: $05
	rst $38                                          ; $4b41: $ff
	add hl, bc                                       ; $4b42: $09
	rst $38                                          ; $4b43: $ff
	db $10                                           ; $4b44: $10
	rst $38                                          ; $4b45: $ff
	jr nz, jr_06d_4bc3                               ; $4b46: $20 $7b

	cp $7f                                           ; $4b48: $fe $7f
	ld a, [$ff81]                                    ; $4b4a: $fa $81 $ff
	dec e                                            ; $4b4d: $1d
	rst $38                                          ; $4b4e: $ff
	ld e, $75                                        ; $4b4f: $1e $75
	and h                                            ; $4b51: $a4
	ld a, a                                          ; $4b52: $7f
	ld [hl], l                                       ; $4b53: $75
	rst $38                                          ; $4b54: $ff
	ld a, e                                          ; $4b55: $7b
	rst GetHLinHL                                          ; $4b56: $cf
	rst $38                                          ; $4b57: $ff
	add l                                            ; $4b58: $85
	rst $38                                          ; $4b59: $ff
	nop                                              ; $4b5a: $00
	rst $38                                          ; $4b5b: $ff
	ld e, $f9                                        ; $4b5c: $1e $f9
	ld a, c                                          ; $4b5e: $79
	rst FarCall                                          ; $4b5f: $f7
	inc sp                                           ; $4b60: $33
	xor a                                            ; $4b61: $af
	xor a                                            ; $4b62: $af
	adc e                                            ; $4b63: $8b
	adc a                                            ; $4b64: $8f
	add l                                            ; $4b65: $85
	add [hl]                                         ; $4b66: $86
	ld c, e                                          ; $4b67: $4b
	rst JumpTable                                          ; $4b68: $c7
	ld b, b                                          ; $4b69: $40
	sbc $c0                                          ; $4b6a: $de $c0
	add b                                            ; $4b6c: $80
	ld h, b                                          ; $4b6d: $60
	ldh [$60], a                                     ; $4b6e: $e0 $60
	ldh [$b0], a                                     ; $4b70: $e0 $b0
	ld [hl], b                                       ; $4b72: $70
	or b                                             ; $4b73: $b0
	ld a, b                                          ; $4b74: $78
	cp h                                             ; $4b75: $bc
	ld a, h                                          ; $4b76: $7c
	xor $3e                                          ; $4b77: $ee $3e
	or l                                             ; $4b79: $b5
	cpl                                              ; $4b7a: $2f
	inc a                                            ; $4b7b: $3c
	and a                                            ; $4b7c: $a7
	ld a, [hl+]                                      ; $4b7d: $2a
	or a                                             ; $4b7e: $b7
	ld l, d                                          ; $4b7f: $6a
	or a                                             ; $4b80: $b7
	ld a, [hl]                                       ; $4b81: $7e
	sub e                                            ; $4b82: $93
	or l                                             ; $4b83: $b5
	db $db                                           ; $4b84: $db
	sbc l                                            ; $4b85: $9d
	ei                                               ; $4b86: $fb
	sbc b                                            ; $4b87: $98
	rst $38                                          ; $4b88: $ff
	sbc h                                            ; $4b89: $9c
	rst $38                                          ; $4b8a: $ff
	db $ed                                           ; $4b8b: $ed
	adc h                                            ; $4b8c: $8c
	or $ec                                           ; $4b8d: $f6 $ec
	or a                                             ; $4b8f: $b7
	db $ec                                           ; $4b90: $ec
	or a                                             ; $4b91: $b7
	and [hl]                                         ; $4b92: $a6
	rst $38                                          ; $4b93: $ff
	rst SubAFromHL                                          ; $4b94: $d7
	db $fd                                           ; $4b95: $fd
	rst SubAFromHL                                          ; $4b96: $d7
	ld a, h                                          ; $4b97: $7c
	ld a, [hl]                                       ; $4b98: $7e
	xor h                                            ; $4b99: $ac
	rst FarCall                                          ; $4b9a: $f7
	xor h                                            ; $4b9b: $ac
	db $fd                                           ; $4b9c: $fd
	ld h, $b7                                        ; $4b9d: $26 $b7
	ld [bc], a                                       ; $4b9f: $02
	db $dd                                           ; $4ba0: $dd
	add b                                            ; $4ba1: $80
	add b                                            ; $4ba2: $80
	nop                                              ; $4ba3: $00
	add b                                            ; $4ba4: $80
	add h                                            ; $4ba5: $84
	add b                                            ; $4ba6: $80
	ld b, $08                                        ; $4ba7: $06 $08
	ld d, $18                                        ; $4ba9: $16 $18
	di                                               ; $4bab: $f3
	sbc h                                            ; $4bac: $9c
	ld hl, sp-$72                                    ; $4bad: $f8 $8e
	db $fc                                           ; $4baf: $fc
	add a                                            ; $4bb0: $87
	ld a, d                                          ; $4bb1: $7a
	rst JumpTable                                          ; $4bb2: $c7
	ld [hl], a                                       ; $4bb3: $77
	call $d8ef                                       ; $4bb4: $cd $ef $d8
	rst SubAFromDE                                          ; $4bb7: $df
	ld [hl], a                                       ; $4bb8: $77
	cp a                                             ; $4bb9: $bf
	rst $38                                          ; $4bba: $ff
	dec sp                                           ; $4bbb: $3b
	add hl, sp                                       ; $4bbc: $39
	or e                                             ; $4bbd: $b3
	inc de                                           ; $4bbe: $13
	adc a                                            ; $4bbf: $8f
	rrca                                             ; $4bc0: $0f
	dec bc                                           ; $4bc1: $0b
	sbc d                                            ; $4bc2: $9a

jr_06d_4bc3:
	rrca                                             ; $4bc3: $0f
	ld b, $05                                        ; $4bc4: $06 $05
	dec bc                                           ; $4bc6: $0b
	rlca                                             ; $4bc7: $07
	db $fd                                           ; $4bc8: $fd
	add d                                            ; $4bc9: $82
	dec l                                            ; $4bca: $2d
	di                                               ; $4bcb: $f3
	sub [hl]                                         ; $4bcc: $96
	ld a, c                                          ; $4bcd: $79
	ld d, e                                          ; $4bce: $53
	inc a                                            ; $4bcf: $3c
	ld l, c                                          ; $4bd0: $69
	sbc [hl]                                         ; $4bd1: $9e
	inc [hl]                                         ; $4bd2: $34
	rst GetHLinHL                                          ; $4bd3: $cf
	sub d                                            ; $4bd4: $92
	rst AddAOntoHL                                          ; $4bd5: $ef
	pop hl                                           ; $4bd6: $e1
	ld a, a                                          ; $4bd7: $7f
	ldh a, [$df]                                     ; $4bd8: $f0 $df
	db $fc                                           ; $4bda: $fc
	rst AddAOntoHL                                          ; $4bdb: $ef
	ei                                               ; $4bdc: $fb
	xor a                                            ; $4bdd: $af
	ld hl, sp-$71                                    ; $4bde: $f8 $8f
	ld a, d                                          ; $4be0: $7a
	adc l                                            ; $4be1: $8d
	ld a, [$7a8d]                                    ; $4be2: $fa $8d $7a
	dec c                                            ; $4be5: $0d
	ld a, [hl-]                                      ; $4be6: $3a
	ld l, e                                          ; $4be7: $6b
	cp $92                                           ; $4be8: $fe $92
	ld a, d                                          ; $4bea: $7a
	dec e                                            ; $4beb: $1d
	ld a, e                                          ; $4bec: $7b
	dec a                                            ; $4bed: $3d
	rst FarCall                                          ; $4bee: $f7
	ld a, c                                          ; $4bef: $79
	rst FarCall                                          ; $4bf0: $f7
	ld sp, hl                                        ; $4bf1: $f9
	push af                                          ; $4bf2: $f5
	ei                                               ; $4bf3: $fb
	push af                                          ; $4bf4: $f5
	ei                                               ; $4bf5: $fb
	jp nc, $2e7b                                     ; $4bf6: $d2 $7b $2e

	sub h                                            ; $4bf9: $94
	call nc, $d43f                                   ; $4bfa: $d4 $3f $d4
	ccf                                              ; $4bfd: $3f
	push hl                                          ; $4bfe: $e5
	ccf                                              ; $4bff: $3f
	db $eb                                           ; $4c00: $eb
	ccf                                              ; $4c01: $3f
	jp z, Jump_06d_5c7f                              ; $4c02: $ca $7f $5c

	sbc $ff                                          ; $4c05: $de $ff
	ld c, a                                          ; $4c07: $4f
	ld b, b                                          ; $4c08: $40
	sbc [hl]                                         ; $4c09: $9e
	cp $7b                                           ; $4c0a: $fe $7b
	ld a, $7f                                        ; $4c0c: $3e $7f
	push af                                          ; $4c0e: $f5
	rst SubAFromDE                                          ; $4c0f: $df
	or e                                             ; $4c10: $b3
	sub a                                            ; $4c11: $97
	sbc [hl]                                         ; $4c12: $9e
	sbc a                                            ; $4c13: $9f
	adc c                                            ; $4c14: $89
	adc e                                            ; $4c15: $8b
	ld b, [hl]                                       ; $4c16: $46
	call nz, $c040                                   ; $4c17: $c4 $40 $c0
	ld b, a                                          ; $4c1a: $47
	ld h, b                                          ; $4c1b: $60
	sbc e                                            ; $4c1c: $9b
	ld a, l                                          ; $4c1d: $7d
	ld h, $37                                        ; $4c1e: $26 $37
	ld [bc], a                                       ; $4c20: $02
	ld a, e                                          ; $4c21: $7b
	ld h, e                                          ; $4c22: $63
	sbc $80                                          ; $4c23: $de $80
	sbc l                                            ; $4c25: $9d
	add h                                            ; $4c26: $84
	nop                                              ; $4c27: $00
	ld b, e                                          ; $4c28: $43
	ld h, b                                          ; $4c29: $60
	sub b                                            ; $4c2a: $90
	ld [hl], b                                       ; $4c2b: $70
	cp a                                             ; $4c2c: $bf
	ldh [$3f], a                                     ; $4c2d: $e0 $3f
	rrca                                             ; $4c2f: $0f
	cp a                                             ; $4c30: $bf
	rra                                              ; $4c31: $1f
	cp c                                             ; $4c32: $b9
	add hl, sp                                       ; $4c33: $39
	ccf                                              ; $4c34: $3f
	dec bc                                           ; $4c35: $0b
	dec c                                            ; $4c36: $0d
	ld c, $0f                                        ; $4c37: $0e $0f
	dec b                                            ; $4c39: $05
	dec sp                                           ; $4c3a: $3b
	ld h, b                                          ; $4c3b: $60
	sub h                                            ; $4c3c: $94
	rra                                              ; $4c3d: $1f
	db $fc                                           ; $4c3e: $fc
	rrca                                             ; $4c3f: $0f
	ei                                               ; $4c40: $fb
	adc a                                            ; $4c41: $8f
	ld hl, sp-$31                                    ; $4c42: $f8 $cf
	ld a, d                                          ; $4c44: $7a
	db $ed                                           ; $4c45: $ed
	ld a, [$6fcd]                                    ; $4c46: $fa $cd $6f
	ld h, b                                          ; $4c49: $60
	ccf                                              ; $4c4a: $3f
	add b                                            ; $4c4b: $80
	ld [hl], e                                       ; $4c4c: $73
	ld a, [hl]                                       ; $4c4d: $7e
	sbc b                                            ; $4c4e: $98
	ei                                               ; $4c4f: $fb
	or e                                             ; $4c50: $b3
	or e                                             ; $4c51: $b3
	sbc c                                            ; $4c52: $99
	sbc a                                            ; $4c53: $9f
	ld b, a                                          ; $4c54: $47
	add $2f                                          ; $4c55: $c6 $2f
	add b                                            ; $4c57: $80
	rst $38                                          ; $4c58: $ff
	ld [hl], a                                       ; $4c59: $77
	ld a, [hl]                                       ; $4c5a: $7e
	ld a, [hl-]                                      ; $4c5b: $3a
	ldh [rPCM34], a                                  ; $4c5c: $e0 $77
	add b                                            ; $4c5e: $80
	sbc l                                            ; $4c5f: $9d
	nop                                              ; $4c60: $00
	cp a                                             ; $4c61: $bf
	ld a, e                                          ; $4c62: $7b
	ld a, [hl]                                       ; $4c63: $7e
	rst SubAFromDE                                          ; $4c64: $df
	add hl, sp                                       ; $4c65: $39
	sbc h                                            ; $4c66: $9c
	ld a, $0b                                        ; $4c67: $3e $0b
	rrca                                             ; $4c69: $0f
	ld [hl], $e0                                     ; $4c6a: $36 $e0
	ld [hl], a                                       ; $4c6c: $77
	add b                                            ; $4c6d: $80
	sbc b                                            ; $4c6e: $98
	rrca                                             ; $4c6f: $0f
	ld hl, sp-$71                                    ; $4c70: $f8 $8f
	ld a, [$facd]                                    ; $4c72: $fa $cd $fa
	db $ed                                           ; $4c75: $ed
	dec de                                           ; $4c76: $1b
	add b                                            ; $4c77: $80
	ld a, a                                          ; $4c78: $7f
	cp $98                                           ; $4c79: $fe $98
	sbc [hl]                                         ; $4c7b: $9e
	rst $38                                          ; $4c7c: $ff
	add b                                            ; $4c7d: $80
	cp a                                             ; $4c7e: $bf
	cp a                                             ; $4c7f: $bf
	ld e, a                                          ; $4c80: $5f
	rst GetHLinHL                                          ; $4c81: $cf
	inc bc                                           ; $4c82: $03
	add b                                            ; $4c83: $80
	scf                                              ; $4c84: $37
	add b                                            ; $4c85: $80
	ld a, e                                          ; $4c86: $7b
	ld a, [hl]                                       ; $4c87: $7e
	ld a, a                                          ; $4c88: $7f
	ld a, [$3f9b]                                    ; $4c89: $fa $9b $3f
	rra                                              ; $4c8c: $1f
	rra                                              ; $4c8d: $1f
	rrca                                             ; $4c8e: $0f
	dec de                                           ; $4c8f: $1b
	add b                                            ; $4c90: $80
	sbc [hl]                                         ; $4c91: $9e
	dec c                                            ; $4c92: $0d
	ld h, a                                          ; $4c93: $67
	add b                                            ; $4c94: $80
	sub a                                            ; $4c95: $97
	inc e                                            ; $4c96: $1c
	stop                                             ; $4c97: $10 $00
	nop                                              ; $4c99: $00
	rrca                                             ; $4c9a: $0f
	rrca                                             ; $4c9b: $0f
	jr @+$12                                         ; $4c9c: $18 $10

	ld [hl], a                                       ; $4c9e: $77
	jp nc, $4f7b                                     ; $4c9f: $d2 $7b $4f

	adc [hl]                                         ; $4ca2: $8e
	add b                                            ; $4ca3: $80
	ret nz                                           ; $4ca4: $c0

	ldh [rSVBK], a                                   ; $4ca5: $e0 $70
	ld hl, sp+$1e                                    ; $4ca7: $f8 $1e
	db $fd                                           ; $4ca9: $fd
	rrca                                             ; $4caa: $0f
	rst $38                                          ; $4cab: $ff
	ld [$08fc], sp                                   ; $4cac: $08 $fc $08
	db $fc                                           ; $4caf: $fc
	add h                                            ; $4cb0: $84
	db $fc                                           ; $4cb1: $fc
	add $fc                                          ; $4cb2: $c6 $fc
	db $fd                                           ; $4cb4: $fd
	rst SubAFromDE                                          ; $4cb5: $df
	add b                                            ; $4cb6: $80
	adc h                                            ; $4cb7: $8c
	ret nz                                           ; $4cb8: $c0

	ld b, b                                          ; $4cb9: $40
	ret nz                                           ; $4cba: $c0

	add b                                            ; $4cbb: $80
	ld bc, $0300                                     ; $4cbc: $01 $00 $03
	ld bc, $0703                                     ; $4cbf: $01 $03 $07
	rrca                                             ; $4cc2: $0f
	rra                                              ; $4cc3: $1f
	ccf                                              ; $4cc4: $3f
	ld a, a                                          ; $4cc5: $7f
	db $dd                                           ; $4cc6: $dd
	cp $ff                                           ; $4cc7: $fe $ff
	nop                                              ; $4cc9: $00
	ccf                                              ; $4cca: $3f
	ld [hl], a                                       ; $4ccb: $77
	jp nc, $6ffe                                     ; $4ccc: $d2 $fe $6f

	ret nz                                           ; $4ccf: $c0

	sbc $10                                          ; $4cd0: $de $10
	ld a, a                                          ; $4cd2: $7f
	cp a                                             ; $4cd3: $bf
	ld [hl], a                                       ; $4cd4: $77
	cp [hl]                                          ; $4cd5: $be
	dec hl                                           ; $4cd6: $2b
	ret nz                                           ; $4cd7: $c0

	sbc $40                                          ; $4cd8: $de $40
	sbc h                                            ; $4cda: $9c
	ret nz                                           ; $4cdb: $c0

	pop bc                                           ; $4cdc: $c1
	add b                                            ; $4cdd: $80
	rrca                                             ; $4cde: $0f
	ret nz                                           ; $4cdf: $c0

	sbc b                                            ; $4ce0: $98
	ld [$070f], sp                                   ; $4ce1: $08 $0f $07
	rlca                                             ; $4ce4: $07
	nop                                              ; $4ce5: $00
	add b                                            ; $4ce6: $80
	rst JumpTable                                          ; $4ce7: $c7
	inc hl                                           ; $4ce8: $23
	ret nz                                           ; $4ce9: $c0

	sbc e                                            ; $4cea: $9b
	ld b, c                                          ; $4ceb: $41
	ret nz                                           ; $4cec: $c0

	add e                                            ; $4ced: $83
	add c                                            ; $4cee: $81
	inc bc                                           ; $4cef: $03
	ret nz                                           ; $4cf0: $c0

	inc bc                                           ; $4cf1: $03
	ret nz                                           ; $4cf2: $c0

	ld b, a                                          ; $4cf3: $47
	ret nz                                           ; $4cf4: $c0

	inc [hl]                                         ; $4cf5: $34
	inc bc                                           ; $4cf6: $03
	rst $38                                          ; $4cf7: $ff
	rst SubAFromDE                                          ; $4cf8: $df
	ld bc, $0383                                     ; $4cf9: $01 $83 $03
	ld [bc], a                                       ; $4cfc: $02
	rrca                                             ; $4cfd: $0f
	inc c                                            ; $4cfe: $0c
	rra                                              ; $4cff: $1f
	ld de, $233e                                     ; $4d00: $11 $3e $23
	ld a, h                                          ; $4d03: $7c
	ld b, a                                          ; $4d04: $47
	ld a, b                                          ; $4d05: $78
	ld c, a                                          ; $4d06: $4f
	jr nc, jr_06d_4d48                               ; $4d07: $30 $3f

	jr nz, jr_06d_4d4a                               ; $4d09: $20 $3f

	jr z, jr_06d_4d44                                ; $4d0b: $28 $37

	ld [hl], l                                       ; $4d0d: $75
	ld l, e                                          ; $4d0e: $6b
	ld c, c                                          ; $4d0f: $49
	ld [hl], a                                       ; $4d10: $77
	sub l                                            ; $4d11: $95
	db $eb                                           ; $4d12: $eb
	xor c                                            ; $4d13: $a9
	rst SubAFromHL                                          ; $4d14: $d7
	ld sp, hl                                        ; $4d15: $f9
	add a                                            ; $4d16: $87
	ld [hl], a                                       ; $4d17: $77
	ldh [hDisp0_BGP], a                                     ; $4d18: $e0 $85
	ld [bc], a                                       ; $4d1a: $02
	inc bc                                           ; $4d1b: $03
	inc b                                            ; $4d1c: $04
	rlca                                             ; $4d1d: $07
	add hl, bc                                       ; $4d1e: $09
	rrca                                             ; $4d1f: $0f
	ld de, $221f                                     ; $4d20: $11 $1f $22
	ccf                                              ; $4d23: $3f
	ld b, [hl]                                       ; $4d24: $46
	ld a, a                                          ; $4d25: $7f
	ld c, d                                          ; $4d26: $4a
	ld a, e                                          ; $4d27: $7b
	sub h                                            ; $4d28: $94
	rst FarCall                                          ; $4d29: $f7
	sub l                                            ; $4d2a: $95
	rst FarCall                                          ; $4d2b: $f7
	and l                                            ; $4d2c: $a5
	rst SubAFromBC                                          ; $4d2d: $e7
	and l                                            ; $4d2e: $a5
	rst SubAFromBC                                          ; $4d2f: $e7
	and [hl]                                         ; $4d30: $a6
	and $a6                                          ; $4d31: $e6 $a6
	and $dd                                          ; $4d33: $e6 $dd
	ld h, [hl]                                       ; $4d35: $66
	rst SubAFromDE                                          ; $4d36: $df
	ld [hl+], a                                      ; $4d37: $22
	ld [hl], a                                       ; $4d38: $77
	sbc $7f                                          ; $4d39: $de $7f
	cp h                                             ; $4d3b: $bc
	add b                                            ; $4d3c: $80
	dec b                                            ; $4d3d: $05
	ld b, $09                                        ; $4d3e: $06 $09
	ld c, $09                                        ; $4d40: $0e $09
	ld c, $0b                                        ; $4d42: $0e $0b

jr_06d_4d44:
	inc c                                            ; $4d44: $0c
	dec bc                                           ; $4d45: $0b
	inc c                                            ; $4d46: $0c
	rla                                              ; $4d47: $17

jr_06d_4d48:
	jr jr_06d_4d61                                   ; $4d48: $18 $17

jr_06d_4d4a:
	jr jr_06d_4d61                                   ; $4d4a: $18 $15

	ld a, [de]                                       ; $4d4c: $1a
	dec e                                            ; $4d4d: $1d
	ld [de], a                                       ; $4d4e: $12
	add hl, de                                       ; $4d4f: $19
	ld d, $79                                        ; $4d50: $16 $79
	ld h, [hl]                                       ; $4d52: $66
	ei                                               ; $4d53: $fb
	and h                                            ; $4d54: $a4
	ei                                               ; $4d55: $fb
	ld h, h                                          ; $4d56: $64
	di                                               ; $4d57: $f3
	ld l, h                                          ; $4d58: $6c
	di                                               ; $4d59: $f3
	call z, $91f3                                    ; $4d5a: $cc $f3 $91
	call z, $ccfb                                    ; $4d5d: $cc $fb $cc
	cp e                                             ; $4d60: $bb

jr_06d_4d61:
	call z, $ceb9                                    ; $4d61: $cc $b9 $ce
	cp c                                             ; $4d64: $b9
	adc $9c                                          ; $4d65: $ce $9c
	rst SubAFromBC                                          ; $4d67: $e7
	sbc h                                            ; $4d68: $9c
	rst SubAFromBC                                          ; $4d69: $e7
	inc e                                            ; $4d6a: $1c
	ld a, e                                          ; $4d6b: $7b
	cp $99                                           ; $4d6c: $fe $99
	ld c, $f3                                        ; $4d6e: $0e $f3
	ld c, $f3                                        ; $4d70: $0e $f3
	rlca                                             ; $4d72: $07
	ld sp, hl                                        ; $4d73: $f9
	db $fd                                           ; $4d74: $fd
	ld [hl], a                                       ; $4d75: $77
	ret nz                                           ; $4d76: $c0

	ld a, a                                          ; $4d77: $7f
	cp $7f                                           ; $4d78: $fe $7f
	ret nz                                           ; $4d7a: $c0

	ld [hl], a                                       ; $4d7b: $77
	sbc d                                            ; $4d7c: $9a
	add b                                            ; $4d7d: $80
	ld [de], a                                       ; $4d7e: $12
	rra                                              ; $4d7f: $1f
	dec d                                            ; $4d80: $15
	ld e, $25                                        ; $4d81: $1e $25
	ld a, $2b                                        ; $4d83: $3e $2b
	inc a                                            ; $4d85: $3c
	dec hl                                           ; $4d86: $2b
	inc a                                            ; $4d87: $3c
	ld d, a                                          ; $4d88: $57
	ld a, c                                          ; $4d89: $79
	ld l, e                                          ; $4d8a: $6b
	ld [hl], a                                       ; $4d8b: $77
	call z, $97ff                                    ; $4d8c: $cc $ff $97
	rst $38                                          ; $4d8f: $ff
	ld d, $ed                                        ; $4d90: $16 $ed
	ld a, [hl+]                                      ; $4d92: $2a
	db $dd                                           ; $4d93: $dd
	push de                                          ; $4d94: $d5
	cp e                                             ; $4d95: $bb
	ld e, e                                          ; $4d96: $5b
	or a                                             ; $4d97: $b7
	or h                                             ; $4d98: $b4
	ld l, a                                          ; $4d99: $6f
	push de                                          ; $4d9a: $d5
	ld l, a                                          ; $4d9b: $6f
	ld l, c                                          ; $4d9c: $69
	sbc b                                            ; $4d9d: $98
	rst SubAFromDE                                          ; $4d9e: $df
	jp hl                                            ; $4d9f: $e9


	rst SubAFromDE                                          ; $4da0: $df
	jp z, Jump_06d_4aff                              ; $4da1: $ca $ff $4a

	ld a, a                                          ; $4da4: $7f
	ld [hl], a                                       ; $4da5: $77
	cp $8d                                           ; $4da6: $fe $8d
	ld a, [hl+]                                      ; $4da8: $2a
	ccf                                              ; $4da9: $3f
	add hl, hl                                       ; $4daa: $29
	ccf                                              ; $4dab: $3f
	dec a                                            ; $4dac: $3d
	ccf                                              ; $4dad: $3f
	rst SubAFromBC                                          ; $4dae: $e7
	rst $38                                          ; $4daf: $ff
	adc e                                            ; $4db0: $8b
	rst FarCall                                          ; $4db1: $f7
	ld a, e                                          ; $4db2: $7b
	add a                                            ; $4db3: $87
	ld a, l                                          ; $4db4: $7d
	add e                                            ; $4db5: $83
	db $fd                                           ; $4db6: $fd
	inc bc                                           ; $4db7: $03
	rst $38                                          ; $4db8: $ff
	ld bc, $fe73                                     ; $4db9: $01 $73 $fe
	adc a                                            ; $4dbc: $8f
	nop                                              ; $4dbd: $00
	cp a                                             ; $4dbe: $bf
	ld [$08ff], sp                                   ; $4dbf: $08 $ff $08
	cp a                                             ; $4dc2: $bf
	ld [$087f], sp                                   ; $4dc3: $08 $7f $08
	cp a                                             ; $4dc6: $bf
	inc b                                            ; $4dc7: $04
	ld e, l                                          ; $4dc8: $5d
	ld b, $bd                                        ; $4dc9: $06 $bd
	ld b, $dd                                        ; $4dcb: $06 $dd
	ld [hl], e                                       ; $4dcd: $73
	db $fc                                           ; $4dce: $fc
	sbc l                                            ; $4dcf: $9d
	ld a, [$6f07]                                    ; $4dd0: $fa $07 $6f
	cp $7f                                           ; $4dd3: $fe $7f
	jp c, $fe7f                                      ; $4dd5: $da $7f $fe

	sbc [hl]                                         ; $4dd8: $9e
	db $fc                                           ; $4dd9: $fc
	ld a, e                                          ; $4dda: $7b
	cp $95                                           ; $4ddb: $fe $95
	ld a, h                                          ; $4ddd: $7c
	add e                                            ; $4dde: $83
	ld a, [hl]                                       ; $4ddf: $7e
	add c                                            ; $4de0: $81
	inc a                                            ; $4de1: $3c
	jp $eb15                                         ; $4de2: $c3 $15 $eb


	dec bc                                           ; $4de5: $0b
	push af                                          ; $4de6: $f5
	rst AddAOntoHL                                          ; $4de7: $ef
	ld [hl], a                                       ; $4de8: $77
	ld [hl], d                                       ; $4de9: $72
	add b                                            ; $4dea: $80
	rlca                                             ; $4deb: $07
	inc b                                            ; $4dec: $04
	inc c                                            ; $4ded: $0c
	dec bc                                           ; $4dee: $0b
	dec de                                           ; $4def: $1b
	inc d                                            ; $4df0: $14
	ld h, $39                                        ; $4df1: $26 $39
	ld c, l                                          ; $4df3: $4d
	ld [hl], d                                       ; $4df4: $72
	sbc d                                            ; $4df5: $9a
	db $e4                                           ; $4df6: $e4

jr_06d_4df7:
	or h                                             ; $4df7: $b4
	ret z                                            ; $4df8: $c8

	ld l, c                                          ; $4df9: $69
	sub b                                            ; $4dfa: $90
	jp nc, $a421                                     ; $4dfb: $d2 $21 $a4

	ld b, d                                          ; $4dfe: $42
	ld [$55c4], sp                                   ; $4dff: $08 $c4 $55
	adc b                                            ; $4e02: $88
	ldh [c], a                                       ; $4e03: $e2
	add hl, de                                       ; $4e04: $19
	call z, $d937                                    ; $4e05: $cc $37 $d9
	ld l, $b3                                        ; $4e08: $2e $b3
	sub h                                            ; $4e0a: $94
	ld e, h                                          ; $4e0b: $5c
	ld h, $f9                                        ; $4e0c: $26 $f9
	ret                                              ; $4e0e: $c9


	rst FarCall                                          ; $4e0f: $f7
	add [hl]                                         ; $4e10: $86
	rst $38                                          ; $4e11: $ff
	dec c                                            ; $4e12: $0d
	cp $18                                           ; $4e13: $fe $18
	rst $38                                          ; $4e15: $ff
	ldh [$c1], a                                     ; $4e16: $e0 $c1
	adc a                                            ; $4e18: $8f
	add $46                                          ; $4e19: $c6 $46
	jp nz, $c242                                     ; $4e1b: $c2 $42 $c2

	ld b, d                                          ; $4e1e: $42
	ret nz                                           ; $4e1f: $c0

	ld b, b                                          ; $4e20: $40
	sbc $5e                                          ; $4e21: $de $5e
	rst $38                                          ; $4e23: $ff
	ld h, c                                          ; $4e24: $61
	rst $38                                          ; $4e25: $ff
	ld e, [hl]                                       ; $4e26: $5e
	pop hl                                           ; $4e27: $e1
	and c                                            ; $4e28: $a1
	ld [hl], a                                       ; $4e29: $77
	cp $97                                           ; $4e2a: $fe $97
	rst $38                                          ; $4e2c: $ff
	sbc $bf                                          ; $4e2d: $de $bf
	and c                                            ; $4e2f: $a1
	sbc a                                            ; $4e30: $9f
	sbc a                                            ; $4e31: $9f
	add b                                            ; $4e32: $80
	add b                                            ; $4e33: $80
	db $dd                                           ; $4e34: $dd
	ld bc, $dff3                                     ; $4e35: $01 $f3 $df
	rrca                                             ; $4e38: $0f
	add b                                            ; $4e39: $80
	ld [hl], b                                       ; $4e3a: $70
	ld a, a                                          ; $4e3b: $7f
	cp a                                             ; $4e3c: $bf
	ret nz                                           ; $4e3d: $c0

	db $fc                                           ; $4e3e: $fc
	inc bc                                           ; $4e3f: $03
	ld sp, $cfce                                     ; $4e40: $31 $ce $cf
	jr nc, @-$42                                     ; $4e43: $30 $bc

	ld b, e                                          ; $4e45: $43
	di                                               ; $4e46: $f3
	inc c                                            ; $4e47: $0c
	rst AddAOntoHL                                          ; $4e48: $ef
	db $10                                           ; $4e49: $10
	ld e, [hl]                                       ; $4e4a: $5e
	ld hl, $47a8                                     ; $4e4b: $21 $a8 $47
	ld [de], a                                       ; $4e4e: $12
	adc h                                            ; $4e4f: $8c
	jr nz, jr_06d_4e6a                               ; $4e50: $20 $18

	ld d, c                                          ; $4e52: $51
	jr nz, jr_06d_4df7                               ; $4e53: $20 $a2

	ld b, c                                          ; $4e55: $41
	ld l, h                                          ; $4e56: $6c
	add e                                            ; $4e57: $83
	ld b, a                                          ; $4e58: $47
	adc a                                            ; $4e59: $8f
	sbc h                                            ; $4e5a: $9c
	rst GetHLinHL                                          ; $4e5b: $cf
	jr c, @-$5f                                      ; $4e5c: $38 $9f

	ld [hl], c                                       ; $4e5e: $71
	ld a, e                                          ; $4e5f: $7b
	rst SubAFromBC                                          ; $4e60: $e7
	or [hl]                                          ; $4e61: $b6
	rst GetHLinHL                                          ; $4e62: $cf
	ld l, h                                          ; $4e63: $6c
	sbc a                                            ; $4e64: $9f
	ret c                                            ; $4e65: $d8

	ccf                                              ; $4e66: $3f
	or b                                             ; $4e67: $b0
	ld a, a                                          ; $4e68: $7f
	ld h, c                                          ; $4e69: $61

jr_06d_4e6a:
	inc bc                                           ; $4e6a: $03
	ld h, b                                          ; $4e6b: $60
	pop hl                                           ; $4e6c: $e1
	adc d                                            ; $4e6d: $8a
	cp a                                             ; $4e6e: $bf
	push bc                                          ; $4e6f: $c5
	sbc a                                            ; $4e70: $9f
	db $e4                                           ; $4e71: $e4
	adc a                                            ; $4e72: $8f
	ldh a, [c]                                       ; $4e73: $f2
	adc a                                            ; $4e74: $8f
	ldh a, [c]                                       ; $4e75: $f2
	add [hl]                                         ; $4e76: $86
	ei                                               ; $4e77: $fb
	add a                                            ; $4e78: $87
	ld sp, hl                                        ; $4e79: $f9
	add a                                            ; $4e7a: $87
	ld sp, hl                                        ; $4e7b: $f9
	ld b, [hl]                                       ; $4e7c: $46
	ld sp, hl                                        ; $4e7d: $f9
	ld b, a                                          ; $4e7e: $47
	ld hl, sp+$4f                                    ; $4e7f: $f8 $4f
	ldh a, [hDisp1_LCDC]                                     ; $4e81: $f0 $8f
	ld a, e                                          ; $4e83: $7b
	cp $97                                           ; $4e84: $fe $97
	sbc a                                            ; $4e86: $9f
	ldh [$bf], a                                     ; $4e87: $e0 $bf
	ret nz                                           ; $4e89: $c0

	ccf                                              ; $4e8a: $3f
	ret nz                                           ; $4e8b: $c0

	ld a, a                                          ; $4e8c: $7f
	add b                                            ; $4e8d: $80
	di                                               ; $4e8e: $f3
	rst SubAFromDE                                          ; $4e8f: $df
	pop af                                           ; $4e90: $f1
	add b                                            ; $4e91: $80
	dec c                                            ; $4e92: $0d
	db $fd                                           ; $4e93: $fd
	rlca                                             ; $4e94: $07
	rst $38                                          ; $4e95: $ff
	ld a, a                                          ; $4e96: $7f
	rst $38                                          ; $4e97: $ff
	di                                               ; $4e98: $f3
	rrca                                             ; $4e99: $0f
	add b                                            ; $4e9a: $80
	ld a, a                                          ; $4e9b: $7f
	ld [hl], a                                       ; $4e9c: $77
	adc a                                            ; $4e9d: $8f
	sbc $39                                          ; $4e9e: $de $39
	sbc l                                            ; $4ea0: $9d
	ld h, d                                          ; $4ea1: $62
	ld [hl], d                                       ; $4ea2: $72
	adc h                                            ; $4ea3: $8c
	pop hl                                           ; $4ea4: $e1
	jr jr_06d_4ee9                                   ; $4ea5: $18 $42

	ld sp, $6280                                     ; $4ea7: $31 $80 $62
	inc b                                            ; $4eaa: $04
	ret nz                                           ; $4eab: $c0

	ld de, $2288                                     ; $4eac: $11 $88 $22
	ld de, $8e84                                     ; $4eaf: $11 $84 $8e
	ld h, e                                          ; $4eb2: $63
	adc c                                            ; $4eb3: $89
	rst JumpTable                                          ; $4eb4: $c7
	di                                               ; $4eb5: $f3
	adc a                                            ; $4eb6: $8f
	and $1f                                          ; $4eb7: $e6 $1f
	adc d                                            ; $4eb9: $8a
	ld a, a                                          ; $4eba: $7f
	ld e, $f3                                        ; $4ebb: $1e $f3
	ld a, $e3                                        ; $4ebd: $3e $e3
	db $f4                                           ; $4ebf: $f4
	rst JumpTable                                          ; $4ec0: $c7
	db $e4                                           ; $4ec1: $e4
	rlca                                             ; $4ec2: $07
	ldh [$c1], a                                     ; $4ec3: $e0 $c1
	add b                                            ; $4ec5: $80
	cp h                                             ; $4ec6: $bc
	rst $38                                          ; $4ec7: $ff
	adc a                                            ; $4ec8: $8f
	rst $38                                          ; $4ec9: $ff
	ret nz                                           ; $4eca: $c0

	rst $38                                          ; $4ecb: $ff
	and b                                            ; $4ecc: $a0
	cp a                                             ; $4ecd: $bf
	ld sp, hl                                        ; $4ece: $f9
	ld e, a                                          ; $4ecf: $5f
	sub $56                                          ; $4ed0: $d6 $56
	ldh a, [c]                                       ; $4ed2: $f2
	ld [hl-], a                                      ; $4ed3: $32
	rst AddAOntoHL                                          ; $4ed4: $ef
	cp [hl]                                          ; $4ed5: $be
	pop af                                           ; $4ed6: $f1
	sbc a                                            ; $4ed7: $9f
	ldh a, [$9f]                                     ; $4ed8: $f0 $9f
	ld hl, sp+$4f                                    ; $4eda: $f8 $4f
	db $fc                                           ; $4edc: $fc
	ld c, a                                          ; $4edd: $4f
	db $fc                                           ; $4ede: $fc
	daa                                              ; $4edf: $27
	db $fc                                           ; $4ee0: $fc
	daa                                              ; $4ee1: $27
	cp $27                                           ; $4ee2: $fe $27
	cp $9e                                           ; $4ee4: $fe $9e
	inc de                                           ; $4ee6: $13
	rst FarCall                                          ; $4ee7: $f7
	rst SubAFromDE                                          ; $4ee8: $df

jr_06d_4ee9:
	ld h, b                                          ; $4ee9: $60
	add b                                            ; $4eea: $80
	add b                                            ; $4eeb: $80
	ret nz                                           ; $4eec: $c0

	ld b, b                                          ; $4eed: $40
	ret nz                                           ; $4eee: $c0

	ld e, a                                          ; $4eef: $5f
	rst SubAFromDE                                          ; $4ef0: $df
	ld h, b                                          ; $4ef1: $60
	rst $38                                          ; $4ef2: $ff
	ld c, [hl]                                       ; $4ef3: $4e
	pop af                                           ; $4ef4: $f1
	sbc c                                            ; $4ef5: $99
	and $a7                                          ; $4ef6: $e6 $a7
	ret c                                            ; $4ef8: $d8

	call z, $c7f3                                    ; $4ef9: $cc $f3 $c7
	db $fc                                           ; $4efc: $fc
	xor $79                                          ; $4efd: $ee $79
	cp h                                             ; $4eff: $bc
	ld [hl], e                                       ; $4f00: $73
	ld [hl], l                                       ; $4f01: $75
	cp $99                                           ; $4f02: $fe $99
	ld a, a                                          ; $4f04: $7f
	cp e                                             ; $4f05: $bb
	ld a, [hl]                                       ; $4f06: $7e
	ret c                                            ; $4f07: $d8

	ld a, a                                          ; $4f08: $7f
	ret z                                            ; $4f09: $c8

	adc e                                            ; $4f0a: $8b
	ld a, a                                          ; $4f0b: $7f
	sbc e                                            ; $4f0c: $9b
	db $ed                                           ; $4f0d: $ed
	db $db                                           ; $4f0e: $db
	xor l                                            ; $4f0f: $ad
	ld c, l                                          ; $4f10: $4d
	xor d                                            ; $4f11: $aa
	db $ed                                           ; $4f12: $ed
	ld a, [hl+]                                      ; $4f13: $2a
	dec a                                            ; $4f14: $3d
	ld l, d                                          ; $4f15: $6a

jr_06d_4f16:
	ld e, l                                          ; $4f16: $5d
	ld l, d                                          ; $4f17: $6a
	db $eb                                           ; $4f18: $eb
	ld e, [hl]                                       ; $4f19: $5e
	ld l, d                                          ; $4f1a: $6a
	rst SubAFromDE                                          ; $4f1b: $df
	ld c, d                                          ; $4f1c: $4a
	rst $38                                          ; $4f1d: $ff
	sub d                                            ; $4f1e: $92
	ld [bc], a                                       ; $4f1f: $02
	ret nz                                           ; $4f20: $c0

	pop hl                                           ; $4f21: $e1
	add b                                            ; $4f22: $80
	ld [hl], d                                       ; $4f23: $72
	cp $83                                           ; $4f24: $fe $83
	cp $07                                           ; $4f26: $fe $07
	db $fd                                           ; $4f28: $fd
	dec b                                            ; $4f29: $05
	db $fd                                           ; $4f2a: $fd
	adc a                                            ; $4f2b: $8f
	rst $38                                          ; $4f2c: $ff
	rst FarCall                                          ; $4f2d: $f7
	halt                                             ; $4f2e: $76
	ld c, e                                          ; $4f2f: $4b
	adc $77                                          ; $4f30: $ce $77
	ld a, h                                          ; $4f32: $7c
	add a                                            ; $4f33: $87
	db $fd                                           ; $4f34: $fd
	rlca                                             ; $4f35: $07
	db $fd                                           ; $4f36: $fd
	rrca                                             ; $4f37: $0f
	ld a, [$fa0f]                                    ; $4f38: $fa $0f $fa
	rra                                              ; $4f3b: $1f
	ldh a, [c]                                       ; $4f3c: $f2
	rra                                              ; $4f3d: $1f
	db $f4                                           ; $4f3e: $f4
	rra                                              ; $4f3f: $1f
	db $f4                                           ; $4f40: $f4
	ccf                                              ; $4f41: $3f
	sbc [hl]                                         ; $4f42: $9e
	db $f4                                           ; $4f43: $f4
	rst AddAOntoHL                                          ; $4f44: $ef
	rst SubAFromDE                                          ; $4f45: $df
	ret nz                                           ; $4f46: $c0

	add b                                            ; $4f47: $80
	jr nc, @-$0e                                     ; $4f48: $30 $f0

	call z, $f23c                                    ; $4f4a: $cc $3c $f2
	ld c, $1d                                        ; $4f4d: $0e $1d
	db $e3                                           ; $4f4f: $e3
	and $19                                          ; $4f50: $e6 $19
	dec de                                           ; $4f52: $1b
	db $e4                                           ; $4f53: $e4
	db $fd                                           ; $4f54: $fd
	ld [bc], a                                       ; $4f55: $02
	ld a, a                                          ; $4f56: $7f
	push hl                                          ; $4f57: $e5
	rst SubAFromDE                                          ; $4f58: $df
	ld [hl-], a                                      ; $4f59: $32
	ld l, a                                          ; $4f5a: $6f
	ld a, [de]                                       ; $4f5b: $1a
	ld l, $19                                        ; $4f5c: $2e $19
	and a                                            ; $4f5e: $a7
	dec e                                            ; $4f5f: $1d
	sub a                                            ; $4f60: $97
	dec c                                            ; $4f61: $0d
	ld d, l                                          ; $4f62: $55
	adc [hl]                                         ; $4f63: $8e
	db $d3                                           ; $4f64: $d3
	adc [hl]                                         ; $4f65: $8e
	di                                               ; $4f66: $f3
	sub d                                            ; $4f67: $92
	adc [hl]                                         ; $4f68: $8e
	ld a, [$fac7]                                    ; $4f69: $fa $c7 $fa
	rst JumpTable                                          ; $4f6c: $c7
	ld sp, hl                                        ; $4f6d: $f9
	rst SubAFromBC                                          ; $4f6e: $e7
	xor l                                            ; $4f6f: $ad
	di                                               ; $4f70: $f3
	db $ed                                           ; $4f71: $ed
	or e                                             ; $4f72: $b3
	call nc, $e0bb                                   ; $4f73: $d4 $bb $e0
	pop bc                                           ; $4f76: $c1
	sub e                                            ; $4f77: $93
	xor $f1                                          ; $4f78: $ee $f1
	adc $f1                                          ; $4f7a: $ce $f1
	sbc $e1                                          ; $4f7c: $de $e1
	ld e, [hl]                                       ; $4f7e: $5e
	pop hl                                           ; $4f7f: $e1
	sbc $61                                          ; $4f80: $de $61
	or a                                             ; $4f82: $b7
	ret z                                            ; $4f83: $c8

	halt                                             ; $4f84: $76
	jr z, jr_06d_4f16                                ; $4f85: $28 $8f

	rra                                              ; $4f87: $1f
	ldh [$3f], a                                     ; $4f88: $e0 $3f
	ret nz                                           ; $4f8a: $c0

	cp $01                                           ; $4f8b: $fe $01
	cp $01                                           ; $4f8d: $fe $01
	db $fc                                           ; $4f8f: $fc
	inc bc                                           ; $4f90: $03
	ld hl, sp+$07                                    ; $4f91: $f8 $07
	ldh [$1f], a                                     ; $4f93: $e0 $1f
	ret nz                                           ; $4f95: $c0

	ccf                                              ; $4f96: $3f
	push hl                                          ; $4f97: $e5
	rst SubAFromDE                                          ; $4f98: $df
	add b                                            ; $4f99: $80
	ld a, [hl]                                       ; $4f9a: $7e
	xor a                                            ; $4f9b: $af
	add b                                            ; $4f9c: $80
	and b                                            ; $4f9d: $a0
	ld h, b                                          ; $4f9e: $60
	ld d, b                                          ; $4f9f: $50
	or b                                             ; $4fa0: $b0
	or b                                             ; $4fa1: $b0
	ret nc                                           ; $4fa2: $d0

	cp b                                             ; $4fa3: $b8
	ret z                                            ; $4fa4: $c8

	call nc, $dc6c                                   ; $4fa5: $d4 $6c $dc
	ld h, h                                          ; $4fa8: $64
	ld a, [hl+]                                      ; $4fa9: $2a
	or $ad                                           ; $4faa: $f6 $ad
	di                                               ; $4fac: $f3
	and [hl]                                         ; $4fad: $a6
	ld sp, hl                                        ; $4fae: $f9
	sub d                                            ; $4faf: $92
	rst $38                                          ; $4fb0: $ff
	pop de                                           ; $4fb1: $d1
	ld a, a                                          ; $4fb2: $7f
	ret                                              ; $4fb3: $c9


	ld a, a                                          ; $4fb4: $7f
	ld c, b                                          ; $4fb5: $48
	rst $38                                          ; $4fb6: $ff
	ld b, h                                          ; $4fb7: $44
	rst $38                                          ; $4fb8: $ff
	inc h                                            ; $4fb9: $24
	rst $38                                          ; $4fba: $ff
	and h                                            ; $4fbb: $a4
	sbc l                                            ; $4fbc: $9d
	rst $38                                          ; $4fbd: $ff
	and d                                            ; $4fbe: $a2
	ld a, d                                          ; $4fbf: $7a
	cp h                                             ; $4fc0: $bc
	sbc e                                            ; $4fc1: $9b
	sub c                                            ; $4fc2: $91
	rst $38                                          ; $4fc3: $ff
	ld c, c                                          ; $4fc4: $49
	rst $38                                          ; $4fc5: $ff
	ld [hl], a                                       ; $4fc6: $77
	ldh a, [$9a]                                     ; $4fc7: $f0 $9a
	ld h, $ff                                        ; $4fc9: $26 $ff
	inc hl                                           ; $4fcb: $23
	rst $38                                          ; $4fcc: $ff
	add hl, de                                       ; $4fcd: $19
	ld a, b                                          ; $4fce: $78
	ld l, $93                                        ; $4fcf: $2e $93
	ld c, d                                          ; $4fd1: $4a
	cp $3a                                           ; $4fd2: $fe $3a
	cp $12                                           ; $4fd4: $fe $12
	cp $1a                                           ; $4fd6: $fe $1a
	cp $a9                                           ; $4fd8: $fe $a9
	rst AddAOntoHL                                          ; $4fda: $ef
	and l                                            ; $4fdb: $a5
	rst SubAFromBC                                          ; $4fdc: $e7
	ld [hl], a                                       ; $4fdd: $77
	cp $9d                                           ; $4fde: $fe $9d
	push bc                                          ; $4fe0: $c5
	rst JumpTable                                          ; $4fe1: $c7
	db $dd                                           ; $4fe2: $dd
	add [hl]                                         ; $4fe3: $86
	rst SubAFromDE                                          ; $4fe4: $df
	inc b                                            ; $4fe5: $04
	rst SubAFromDE                                          ; $4fe6: $df
	ld [$80df], sp                                   ; $4fe7: $08 $df $80
	rst SubAFromDE                                          ; $4fea: $df
	ldh [$97], a                                     ; $4feb: $e0 $97
	ldh a, [hDisp1_SCY]                                     ; $4fed: $f0 $90
	ldh a, [hDisp1_SCY]                                     ; $4fef: $f0 $90
	ld hl, sp+$08                                    ; $4ff1: $f8 $08
	ld hl, sp-$78                                    ; $4ff3: $f8 $88
	ld [hl], a                                       ; $4ff5: $77
	cp $9a                                           ; $4ff6: $fe $9a
	db $fc                                           ; $4ff8: $fc
	add h                                            ; $4ff9: $84

jr_06d_4ffa:
	add h                                            ; $4ffa: $84
	db $fc                                           ; $4ffb: $fc
	ld b, h                                          ; $4ffc: $44
	ld a, e                                          ; $4ffd: $7b
	cp $93                                           ; $4ffe: $fe $93
	ld d, h                                          ; $5000: $54
	db $fc                                           ; $5001: $fc
	ld h, h                                          ; $5002: $64
	db $fc                                           ; $5003: $fc
	ld h, d                                          ; $5004: $62
	cp $42                                           ; $5005: $fe $42
	cp $c2                                           ; $5007: $fe $c2
	ld a, [hl]                                       ; $5009: $7e
	ld [hl+], a                                      ; $500a: $22
	cp $77                                           ; $500b: $fe $77
	cp $9d                                           ; $500d: $fe $9d
	ld hl, $67ff                                     ; $500f: $21 $ff $67
	cp $3f                                           ; $5012: $fe $3f
	ld l, h                                          ; $5014: $6c
	ld a, [hl]                                       ; $5015: $7e
	inc e                                            ; $5016: $1c
	sbc c                                            ; $5017: $99
	jr nz, jr_06d_4ffa                               ; $5018: $20 $e0

	ret nc                                           ; $501a: $d0

	ldh a, [$b8]                                     ; $501b: $f0 $b8
	cp b                                             ; $501d: $b8
	ld [hl], a                                       ; $501e: $77
	or $5f                                           ; $501f: $f6 $5f
	cp $6f                                           ; $5021: $fe $6f
	ldh a, [c]                                       ; $5023: $f2
	ld a, a                                          ; $5024: $7f
	and $df                                          ; $5025: $e6 $df
	ld [hl], b                                       ; $5027: $70
	di                                               ; $5028: $f3
	jr nz, jr_06d_502b                               ; $5029: $20 $00

jr_06d_502b:
	sub d                                            ; $502b: $92
	adc b                                            ; $502c: $88
	sbc c                                            ; $502d: $99
	xor d                                            ; $502e: $aa
	xor d                                            ; $502f: $aa
	sbc c                                            ; $5030: $99
	sbc c                                            ; $5031: $99
	ld [hl+], a                                      ; $5032: $22
	ld [hl+], a                                      ; $5033: $22
	sbc c                                            ; $5034: $99
	ld de, $9999                                     ; $5035: $11 $99 $99
	ld b, h                                          ; $5038: $44
	ld [hl], a                                       ; $5039: $77
	ei                                               ; $503a: $fb
	ld [hl], e                                       ; $503b: $73
	or $9e                                           ; $503c: $f6 $9e
	inc sp                                           ; $503e: $33
	ld h, e                                          ; $503f: $63
	ei                                               ; $5040: $fb
	ld a, a                                          ; $5041: $7f
	pop af                                           ; $5042: $f1
	rst SubAFromDE                                          ; $5043: $df
	sbc c                                            ; $5044: $99
	sbc [hl]                                         ; $5045: $9e
	call z, $de7b                                    ; $5046: $cc $7b $de
	db $ec                                           ; $5049: $ec
	ld bc, $e084                                     ; $504a: $01 $84 $e0
	rst $38                                          ; $504d: $ff
	ld b, c                                          ; $504e: $41
	rst $38                                          ; $504f: $ff
	add e                                            ; $5050: $83
	rst $38                                          ; $5051: $ff
	inc c                                            ; $5052: $0c
	rst $38                                          ; $5053: $ff
	pop af                                           ; $5054: $f1
	rst $38                                          ; $5055: $ff
	cp a                                             ; $5056: $bf
	rst $38                                          ; $5057: $ff
	inc hl                                           ; $5058: $23
	rst $38                                          ; $5059: $ff
	dec [hl]                                         ; $505a: $35
	db $eb                                           ; $505b: $eb
	dec h                                            ; $505c: $25
	db $eb                                           ; $505d: $eb
	ld b, l                                          ; $505e: $45
	db $eb                                           ; $505f: $eb
	ld b, c                                          ; $5060: $41
	db $eb                                           ; $5061: $eb
	ld b, d                                          ; $5062: $42
	jp hl                                            ; $5063: $e9


	ld b, d                                          ; $5064: $42
	jp hl                                            ; $5065: $e9


	ld d, [hl]                                       ; $5066: $56
	ld a, e                                          ; $5067: $7b
	cp $96                                           ; $5068: $fe $96
	ld d, d                                          ; $506a: $52
	db $ed                                           ; $506b: $ed
	ret z                                            ; $506c: $c8

	rst $38                                          ; $506d: $ff
	ret z                                            ; $506e: $c8

	rst $38                                          ; $506f: $ff
	ld b, b                                          ; $5070: $40
	ld a, a                                          ; $5071: $7f
	ld c, b                                          ; $5072: $48
	ld l, e                                          ; $5073: $6b
	cp $9b                                           ; $5074: $fe $9b
	add hl, hl                                       ; $5076: $29
	ccf                                              ; $5077: $3f
	xor c                                            ; $5078: $a9
	cp a                                             ; $5079: $bf
	ld [hl], a                                       ; $507a: $77
	cp $9e                                           ; $507b: $fe $9e
	and l                                            ; $507d: $a5
	ld a, e                                          ; $507e: $7b
	cp $80                                           ; $507f: $fe $80
	sub a                                            ; $5081: $97
	sbc a                                            ; $5082: $9f
	sub e                                            ; $5083: $93
	sbc a                                            ; $5084: $9f
	adc d                                            ; $5085: $8a
	adc [hl]                                         ; $5086: $8e
	jp $87fe                                         ; $5087: $c3 $fe $87


	db $fc                                           ; $508a: $fc
	jr @+$01                                         ; $508b: $18 $ff

	ld a, a                                          ; $508d: $7f
	rst $38                                          ; $508e: $ff
	ldh a, [$80]                                     ; $508f: $f0 $80
	rst SubAFromBC                                          ; $5091: $e7
	rlca                                             ; $5092: $07
	adc a                                            ; $5093: $8f
	rrca                                             ; $5094: $0f
	cp h                                             ; $5095: $bc
	inc a                                            ; $5096: $3c
	sbc l                                            ; $5097: $9d
	dec d                                            ; $5098: $15
	add a                                            ; $5099: $87
	rlca                                             ; $509a: $07
	add [hl]                                         ; $509b: $86
	rlca                                             ; $509c: $07
	add a                                            ; $509d: $87
	add h                                            ; $509e: $84
	add e                                            ; $509f: $83
	sbc [hl]                                         ; $50a0: $9e
	add e                                            ; $50a1: $83
	reti                                             ; $50a2: $d9


	add b                                            ; $50a3: $80
	db $dd                                           ; $50a4: $dd
	ret nz                                           ; $50a5: $c0

	rst SubAFromDE                                          ; $50a6: $df
	ldh [$80], a                                     ; $50a7: $e0 $80
	or b                                             ; $50a9: $b0
	ldh a, [$b8]                                     ; $50aa: $f0 $b8
	ld hl, sp-$14                                    ; $50ac: $f8 $ec
	cp $eb                                           ; $50ae: $fe $eb
	cp a                                             ; $50b0: $bf
	ldh a, [$9d]                                     ; $50b1: $f0 $9d
	ldh a, [$5b]                                     ; $50b3: $f0 $5b
	ld sp, hl                                        ; $50b5: $f9
	ld c, a                                          ; $50b6: $4f
	ld a, [$fc2f]                                    ; $50b7: $fa $2f $fc
	ld h, $fc                                        ; $50ba: $26 $fc
	sub a                                            ; $50bc: $97
	cp $93                                           ; $50bd: $fe $93
	rst $38                                          ; $50bf: $ff
	adc c                                            ; $50c0: $89
	db $e4                                           ; $50c1: $e4
	rlca                                             ; $50c2: $07
	add h                                            ; $50c3: $84
	ld a, a                                          ; $50c4: $7f
	ld a, c                                          ; $50c5: $79
	rst $38                                          ; $50c6: $ff
	ei                                               ; $50c7: $fb
	adc l                                            ; $50c8: $8d
	sbc [hl]                                         ; $50c9: $9e
	halt                                             ; $50ca: $76

jr_06d_50cb:
	dec e                                            ; $50cb: $1d
	rst $38                                          ; $50cc: $ff
	reti                                             ; $50cd: $d9


	rst $38                                          ; $50ce: $ff
	pop hl                                           ; $50cf: $e1
	ld a, [hl]                                       ; $50d0: $7e
	ld [hl], c                                       ; $50d1: $71
	cp $d0                                           ; $50d2: $fe $d0
	ret nz                                           ; $50d4: $c0

	ret nz                                           ; $50d5: $c0

	ld b, b                                          ; $50d6: $40
	ret nz                                           ; $50d7: $c0

	add b                                            ; $50d8: $80
	add b                                            ; $50d9: $80
	jp $0fbd                                         ; $50da: $c3 $bd $0f


	ld e, $00                                        ; $50dd: $1e $00
	sub d                                            ; $50df: $92
	add b                                            ; $50e0: $80
	rst $38                                          ; $50e1: $ff
	sub d                                            ; $50e2: $92
	rst $38                                          ; $50e3: $ff
	or l                                             ; $50e4: $b5
	rst $38                                          ; $50e5: $ff
	push de                                          ; $50e6: $d5
	rst $38                                          ; $50e7: $ff
	or a                                             ; $50e8: $b7
	sbc $ff                                          ; $50e9: $de $ff
	sbc [hl]                                         ; $50eb: $9e
	sbc a                                            ; $50ec: $9f
	ld a, [de]                                       ; $50ed: $1a
	rla                                              ; $50ee: $17
	ld de, $1317                                     ; $50ef: $11 $17 $13
	ld c, $04                                        ; $50f2: $0e $04
	dec c                                            ; $50f4: $0d
	dec b                                            ; $50f5: $05
	rlca                                             ; $50f6: $07
	rlca                                             ; $50f7: $07
	add $07                                          ; $50f8: $c6 $07
	rst $38                                          ; $50fa: $ff
	inc b                                            ; $50fb: $04
	ccf                                              ; $50fc: $3f
	ld b, e                                          ; $50fd: $43
	ld e, b                                          ; $50fe: $58
	ld h, b                                          ; $50ff: $60
	add b                                            ; $5100: $80
	call nc, $f4bb                                   ; $5101: $d4 $bb $f4
	sbc e                                            ; $5104: $9b
	ld a, [$7a0d]                                    ; $5105: $fa $0d $7a
	adc l                                            ; $5108: $8d
	cp h                                             ; $5109: $bc
	rst JumpTable                                          ; $510a: $c7
	call c, $ee67                                    ; $510b: $dc $67 $ee
	inc sp                                           ; $510e: $33
	ldh a, [c]                                       ; $510f: $f2
	sbc a                                            ; $5110: $9f
	rst $38                                          ; $5111: $ff
	rst GetHLinHL                                          ; $5112: $cf
	ld a, [$fee7]                                    ; $5113: $fa $e7 $fe
	rst FarCall                                          ; $5116: $f7
	ld e, [hl]                                       ; $5117: $5e
	rst SubAFromDE                                          ; $5118: $df
	ld a, [$f9cf]                                    ; $5119: $fa $cf $f9
	adc a                                            ; $511c: $8f
	push af                                          ; $511d: $f5
	rra                                              ; $511e: $1f
	ld [hl], h                                       ; $511f: $74
	sub [hl]                                         ; $5120: $96
	rra                                              ; $5121: $1f
	inc h                                            ; $5122: $24
	ccf                                              ; $5123: $3f
	inc h                                            ; $5124: $24
	ccf                                              ; $5125: $3f
	ld b, h                                          ; $5126: $44
	ld a, a                                          ; $5127: $7f
	ld b, h                                          ; $5128: $44
	ld a, a                                          ; $5129: $7f
	ld [hl], a                                       ; $512a: $77
	jr c, jr_06d_50cb                                ; $512b: $38 $9e

	ld c, c                                          ; $512d: $49
	ld a, e                                          ; $512e: $7b
	cp $8f                                           ; $512f: $fe $8f
	adc e                                            ; $5131: $8b
	rst $38                                          ; $5132: $ff
	sub e                                            ; $5133: $93
	cp $93                                           ; $5134: $fe $93
	cp $97                                           ; $5136: $fe $97
	cp $a7                                           ; $5138: $fe $a7
	db $fc                                           ; $513a: $fc
	daa                                              ; $513b: $27
	db $fc                                           ; $513c: $fc
	cpl                                              ; $513d: $2f
	ld hl, sp+$4f                                    ; $513e: $f8 $4f
	ld hl, sp+$5f                                    ; $5140: $f8 $5f
	ld b, b                                          ; $5142: $40
	sbc h                                            ; $5143: $9c
	ldh [rP1], a                                     ; $5144: $e0 $00
	add a                                            ; $5146: $87
	ld h, e                                          ; $5147: $63
	ld a, $5f                                        ; $5148: $3e $5f
	ld b, b                                          ; $514a: $40
	ld e, a                                          ; $514b: $5f
	ld h, b                                          ; $514c: $60
	sub l                                            ; $514d: $95
	ccf                                              ; $514e: $3f
	add hl, de                                       ; $514f: $19
	rst $38                                          ; $5150: $ff
	pop bc                                           ; $5151: $c1
	cp $e1                                           ; $5152: $fe $e1
	ld a, [hl]                                       ; $5154: $7e
	ld [hl], b                                       ; $5155: $70
	ldh a, [$d0]                                     ; $5156: $f0 $d0
	dec de                                           ; $5158: $1b
	ld h, b                                          ; $5159: $60
	ld a, e                                          ; $515a: $7b
	ld e, [hl]                                       ; $515b: $5e
	sbc l                                            ; $515c: $9d
	rlca                                             ; $515d: $07
	inc bc                                           ; $515e: $03
	ld [hl], a                                       ; $515f: $77
	ld e, [hl]                                       ; $5160: $5e
	sbc e                                            ; $5161: $9b
	rst JumpTable                                          ; $5162: $c7
	rlca                                             ; $5163: $07
	or $05                                           ; $5164: $f6 $05
	dec sp                                           ; $5166: $3b
	ld h, b                                          ; $5167: $60
	sub l                                            ; $5168: $95
	rra                                              ; $5169: $1f
	rst $38                                          ; $516a: $ff
	adc a                                            ; $516b: $8f
	ld a, [$fec7]                                    ; $516c: $fa $c7 $fe
	rst SubAFromBC                                          ; $516f: $e7
	or $ff                                           ; $5170: $f6 $ff
	ld a, d                                          ; $5172: $7a
	ld l, e                                          ; $5173: $6b
	ld h, b                                          ; $5174: $60
	ld d, a                                          ; $5175: $57
	add b                                            ; $5176: $80
	sbc [hl]                                         ; $5177: $9e
	add b                                            ; $5178: $80
	ld e, a                                          ; $5179: $5f
	ld a, [hl]                                       ; $517a: $7e
	sbc [hl]                                         ; $517b: $9e
	add a                                            ; $517c: $87
	scf                                              ; $517d: $37
	add b                                            ; $517e: $80
	sbc b                                            ; $517f: $98
	ccf                                              ; $5180: $3f
	ld bc, $c1de                                     ; $5181: $01 $de $c1
	xor $e0                                          ; $5184: $ee $e0
	ld [hl], b                                       ; $5186: $70
	ld [hl], e                                       ; $5187: $73
	ld a, [hl]                                       ; $5188: $7e
	sbc l                                            ; $5189: $9d
	jp $2b80                                         ; $518a: $c3 $80 $2b


	add b                                            ; $518d: $80
	sbc e                                            ; $518e: $9b
	db $10                                           ; $518f: $10
	rlca                                             ; $5190: $07
	ld bc, $7b0f                                     ; $5191: $01 $0f $7b
	ld a, [hl]                                       ; $5194: $7e
	sbc e                                            ; $5195: $9b
	push bc                                          ; $5196: $c5
	dec b                                            ; $5197: $05
	rst $38                                          ; $5198: $ff
	rlca                                             ; $5199: $07
	inc sp                                           ; $519a: $33
	add b                                            ; $519b: $80
	sub d                                            ; $519c: $92
	rrca                                             ; $519d: $0f
	ld a, [$fe87]                                    ; $519e: $fa $87 $fe
	rst JumpTable                                          ; $51a1: $c7
	or $ff                                           ; $51a2: $f6 $ff
	ld a, [$79ef]                                    ; $51a4: $fa $ef $79
	rst GetHLinHL                                          ; $51a7: $cf
	push af                                          ; $51a8: $f5
	sbc a                                            ; $51a9: $9f
	ld b, a                                          ; $51aa: $47
	add b                                            ; $51ab: $80
	ld a, a                                          ; $51ac: $7f
	cp $99                                           ; $51ad: $fe $99
	add [hl]                                         ; $51af: $86
	ld b, $99                                        ; $51b0: $06 $99
	add hl, de                                       ; $51b2: $19
	adc h                                            ; $51b3: $8c
	inc c                                            ; $51b4: $0c
	daa                                              ; $51b5: $27
	add b                                            ; $51b6: $80
	sbc b                                            ; $51b7: $98
	ld e, $01                                        ; $51b8: $1e $01
	ld c, $00                                        ; $51ba: $0e $00
	ldh [$e0], a                                     ; $51bc: $e0 $e0
	nop                                              ; $51be: $00
	ld a, e                                          ; $51bf: $7b
	db $fc                                           ; $51c0: $fc
	sbc l                                            ; $51c1: $9d
	jp $23c0                                         ; $51c2: $c3 $c0 $23


	add b                                            ; $51c5: $80
	ld a, [hl]                                       ; $51c6: $7e
	and $9a                                          ; $51c7: $e6 $9a
	inc bc                                           ; $51c9: $03
	rrca                                             ; $51ca: $0f
	nop                                              ; $51cb: $00
	rst JumpTable                                          ; $51cc: $c7
	inc b                                            ; $51cd: $04
	inc hl                                           ; $51ce: $23
	add b                                            ; $51cf: $80
	sbc [hl]                                         ; $51d0: $9e
	rlca                                             ; $51d1: $07
	ld a, e                                          ; $51d2: $7b
	add b                                            ; $51d3: $80
	ld a, a                                          ; $51d4: $7f
	ld a, [$6f9d]                                    ; $51d5: $fa $9d $6f
	ld sp, hl                                        ; $51d8: $f9
	ld [hl], e                                       ; $51d9: $73
	add b                                            ; $51da: $80
	db $fd                                           ; $51db: $fd
	sbc d                                            ; $51dc: $9a
	rrca                                             ; $51dd: $0f
	ld [$0707], sp                                   ; $51de: $08 $07 $07
	nop                                              ; $51e1: $00
	cp l                                             ; $51e2: $bd
	inc bc                                           ; $51e3: $03
	nop                                              ; $51e4: $00
	add b                                            ; $51e5: $80
	ldh [$80], a                                     ; $51e6: $e0 $80
	ret nz                                           ; $51e8: $c0

	ld a, c                                          ; $51e9: $79
	ldh a, [$1f]                                     ; $51ea: $f0 $1f
	rst $38                                          ; $51ec: $ff
	rst GetHLinHL                                          ; $51ed: $cf
	cp $3f                                           ; $51ee: $fe $3f
	ld a, l                                          ; $51f0: $7d
	ld h, $7f                                        ; $51f1: $26 $7f
	ld b, d                                          ; $51f3: $42
	rst AddAOntoHL                                          ; $51f4: $ef
	ld b, d                                          ; $51f5: $42
	db $eb                                           ; $51f6: $eb
	ld h, b                                          ; $51f7: $60
	ld b, b                                          ; $51f8: $40
	nop                                              ; $51f9: $00
	nop                                              ; $51fa: $00
	ret nz                                           ; $51fb: $c0

	ld b, b                                          ; $51fc: $40
	add b                                            ; $51fd: $80
	add b                                            ; $51fe: $80
	ld bc, $0300                                     ; $51ff: $01 $00 $03
	ld bc, $0307                                     ; $5202: $01 $07 $03
	inc e                                            ; $5205: $1c
	rrca                                             ; $5206: $0f
	adc a                                            ; $5207: $8f
	ld a, d                                          ; $5208: $7a
	ccf                                              ; $5209: $3f
	pop af                                           ; $520a: $f1
	rst SubAFromDE                                          ; $520b: $df
	rst SubAFromBC                                          ; $520c: $e7
	cp a                                             ; $520d: $bf
	reti                                             ; $520e: $d9


	ld a, a                                          ; $520f: $7f
	jp hl                                            ; $5210: $e9


	db $fd                                           ; $5211: $fd
	ld b, l                                          ; $5212: $45
	rst FarCall                                          ; $5213: $f7
	dec h                                            ; $5214: $25
	ld [hl], a                                       ; $5215: $77
	daa                                              ; $5216: $27
	ld a, a                                          ; $5217: $7f
	ld h, a                                          ; $5218: $67
	ret nz                                           ; $5219: $c0

	rst SubAFromDE                                          ; $521a: $df
	inc bc                                           ; $521b: $03
	ld [hl], a                                       ; $521c: $77
	cp [hl]                                          ; $521d: $be
	inc bc                                           ; $521e: $03
	ret nz                                           ; $521f: $c0

	dec hl                                           ; $5220: $2b
	ret nz                                           ; $5221: $c0

	rst SubAFromDE                                          ; $5222: $df
	rrca                                             ; $5223: $0f
	ld l, a                                          ; $5224: $6f
	cp [hl]                                          ; $5225: $be
	sbc [hl]                                         ; $5226: $9e
	add e                                            ; $5227: $83
	dec hl                                           ; $5228: $2b
	ret nz                                           ; $5229: $c0

	rst SubAFromDE                                          ; $522a: $df
	ret nz                                           ; $522b: $c0

	sbc l                                            ; $522c: $9d
	add c                                            ; $522d: $81
	add b                                            ; $522e: $80
	inc bc                                           ; $522f: $03
	ret nz                                           ; $5230: $c0

	inc bc                                           ; $5231: $03
	ret nz                                           ; $5232: $c0

	scf                                              ; $5233: $37
	ret nz                                           ; $5234: $c0

	ld hl, sp+$01                                    ; $5235: $f8 $01
	add h                                            ; $5237: $84
	ldh [rIE], a                                     ; $5238: $e0 $ff
	ld b, c                                          ; $523a: $41
	rst $38                                          ; $523b: $ff
	add e                                            ; $523c: $83
	rst $38                                          ; $523d: $ff
	inc c                                            ; $523e: $0c
	rst $38                                          ; $523f: $ff
	pop af                                           ; $5240: $f1
	rst $38                                          ; $5241: $ff
	cp a                                             ; $5242: $bf
	rst $38                                          ; $5243: $ff
	inc hl                                           ; $5244: $23
	rst $38                                          ; $5245: $ff
	dec [hl]                                         ; $5246: $35
	db $eb                                           ; $5247: $eb
	dec h                                            ; $5248: $25
	db $eb                                           ; $5249: $eb
	ld b, l                                          ; $524a: $45
	db $eb                                           ; $524b: $eb
	ld b, c                                          ; $524c: $41
	db $eb                                           ; $524d: $eb
	ld b, d                                          ; $524e: $42
	jp hl                                            ; $524f: $e9


	ld b, d                                          ; $5250: $42
	jp hl                                            ; $5251: $e9


	ld d, [hl]                                       ; $5252: $56
	ld a, e                                          ; $5253: $7b
	cp $96                                           ; $5254: $fe $96
	ld d, d                                          ; $5256: $52
	db $ed                                           ; $5257: $ed
	ret z                                            ; $5258: $c8

	rst $38                                          ; $5259: $ff
	ret z                                            ; $525a: $c8

	rst $38                                          ; $525b: $ff
	ld b, b                                          ; $525c: $40
	ld a, a                                          ; $525d: $7f
	ld c, b                                          ; $525e: $48
	ld l, e                                          ; $525f: $6b
	cp $9b                                           ; $5260: $fe $9b
	add hl, hl                                       ; $5262: $29
	ccf                                              ; $5263: $3f
	xor c                                            ; $5264: $a9
	cp a                                             ; $5265: $bf
	ld [hl], a                                       ; $5266: $77
	cp $9e                                           ; $5267: $fe $9e
	and l                                            ; $5269: $a5
	ld a, e                                          ; $526a: $7b
	cp $80                                           ; $526b: $fe $80
	sub a                                            ; $526d: $97
	sbc a                                            ; $526e: $9f
	sub e                                            ; $526f: $93
	sbc a                                            ; $5270: $9f
	adc d                                            ; $5271: $8a
	adc [hl]                                         ; $5272: $8e
	jp nz, $84ff                                     ; $5273: $c2 $ff $84

	rst $38                                          ; $5276: $ff
	rra                                              ; $5277: $1f
	rst $38                                          ; $5278: $ff
	ld a, a                                          ; $5279: $7f
	ld hl, sp-$10                                    ; $527a: $f8 $f0
	add b                                            ; $527c: $80
	rst SubAFromBC                                          ; $527d: $e7
	rlca                                             ; $527e: $07
	adc a                                            ; $527f: $8f
	rrca                                             ; $5280: $0f
	cp h                                             ; $5281: $bc
	inc a                                            ; $5282: $3c
	sbc l                                            ; $5283: $9d
	dec d                                            ; $5284: $15
	add a                                            ; $5285: $87
	rlca                                             ; $5286: $07
	add [hl]                                         ; $5287: $86
	rlca                                             ; $5288: $07
	add a                                            ; $5289: $87
	add h                                            ; $528a: $84
	add e                                            ; $528b: $83
	sbc [hl]                                         ; $528c: $9e
	add e                                            ; $528d: $83
	reti                                             ; $528e: $d9


	add b                                            ; $528f: $80
	db $dd                                           ; $5290: $dd
	ret nz                                           ; $5291: $c0

	rst SubAFromDE                                          ; $5292: $df
	ldh [$80], a                                     ; $5293: $e0 $80
	or b                                             ; $5295: $b0
	ldh a, [$b8]                                     ; $5296: $f0 $b8
	ld hl, sp-$14                                    ; $5298: $f8 $ec
	cp $eb                                           ; $529a: $fe $eb
	cp a                                             ; $529c: $bf
	ldh a, [$9d]                                     ; $529d: $f0 $9d
	ldh a, [$5b]                                     ; $529f: $f0 $5b
	ld sp, hl                                        ; $52a1: $f9
	ld c, a                                          ; $52a2: $4f
	ld a, [$fc2f]                                    ; $52a3: $fa $2f $fc
	ld h, $fc                                        ; $52a6: $26 $fc
	sub a                                            ; $52a8: $97
	cp $93                                           ; $52a9: $fe $93
	rst $38                                          ; $52ab: $ff
	adc c                                            ; $52ac: $89
	inc b                                            ; $52ad: $04
	rst SubAFromBC                                          ; $52ae: $e7
	db $e4                                           ; $52af: $e4
	rst $38                                          ; $52b0: $ff
	ld sp, hl                                        ; $52b1: $f9
	rra                                              ; $52b2: $1f

jr_06d_52b3:
	ei                                               ; $52b3: $fb
	sub b                                            ; $52b4: $90
	ld c, $76                                        ; $52b5: $0e $76
	dec e                                            ; $52b7: $1d
	rst $38                                          ; $52b8: $ff
	reti                                             ; $52b9: $d9


	rst $38                                          ; $52ba: $ff
	pop hl                                           ; $52bb: $e1
	ld a, [hl]                                       ; $52bc: $7e
	ld [hl], c                                       ; $52bd: $71
	cp $d0                                           ; $52be: $fe $d0
	ret nz                                           ; $52c0: $c0

	ret nz                                           ; $52c1: $c0

	ld b, b                                          ; $52c2: $40
	ret nz                                           ; $52c3: $c0

	ld a, e                                          ; $52c4: $7b
	jp z, $80fa                                      ; $52c5: $ca $fa $80

	sub d                                            ; $52c8: $92
	rst $38                                          ; $52c9: $ff
	sub d                                            ; $52ca: $92
	rst $38                                          ; $52cb: $ff
	or l                                             ; $52cc: $b5
	rst $38                                          ; $52cd: $ff
	push de                                          ; $52ce: $d5
	rst $38                                          ; $52cf: $ff
	or [hl]                                          ; $52d0: $b6
	rst SubAFromDE                                          ; $52d1: $df
	rst $38                                          ; $52d2: $ff
	sbc a                                            ; $52d3: $9f
	sbc a                                            ; $52d4: $9f
	ld a, [de]                                       ; $52d5: $1a
	rla                                              ; $52d6: $17
	add hl, de                                       ; $52d7: $19
	rla                                              ; $52d8: $17
	inc de                                           ; $52d9: $13
	ld b, $04                                        ; $52da: $06 $04
	dec c                                            ; $52dc: $0d
	dec b                                            ; $52dd: $05
	rrca                                             ; $52de: $0f
	rlca                                             ; $52df: $07
	ld b, $07                                        ; $52e0: $06 $07
	ld h, a                                          ; $52e2: $67
	inc b                                            ; $52e3: $04
	inc sp                                           ; $52e4: $33
	ld b, e                                          ; $52e5: $43
	ld d, b                                          ; $52e6: $50
	add b                                            ; $52e7: $80
	ld h, b                                          ; $52e8: $60
	call nc, $f4bb                                   ; $52e9: $d4 $bb $f4
	sbc e                                            ; $52ec: $9b
	ld a, [$1a0d]                                    ; $52ed: $fa $0d $1a
	db $ed                                           ; $52f0: $ed
	db $e4                                           ; $52f1: $e4
	rst $38                                          ; $52f2: $ff
	db $f4                                           ; $52f3: $f4
	rra                                              ; $52f4: $1f
	cp $0f                                           ; $52f5: $fe $0f
	cp $87                                           ; $52f7: $fe $87
	ei                                               ; $52f9: $fb
	rst JumpTable                                          ; $52fa: $c7
	ld a, [$fee7]                                    ; $52fb: $fa $e7 $fe
	rst FarCall                                          ; $52fe: $f7
	ld e, [hl]                                       ; $52ff: $5e
	rst GetHLinHL                                          ; $5300: $cf
	ld a, [$f9cf]                                    ; $5301: $fa $cf $f9
	adc a                                            ; $5304: $8f
	push af                                          ; $5305: $f5
	rra                                              ; $5306: $1f
	sub l                                            ; $5307: $95
	ld [hl], h                                       ; $5308: $74
	rra                                              ; $5309: $1f
	inc h                                            ; $530a: $24
	ccf                                              ; $530b: $3f
	inc h                                            ; $530c: $24
	ccf                                              ; $530d: $3f
	ld b, h                                          ; $530e: $44
	ld a, a                                          ; $530f: $7f
	ld b, h                                          ; $5310: $44
	ld a, a                                          ; $5311: $7f
	ld [hl], a                                       ; $5312: $77
	jr c, jr_06d_52b3                                ; $5313: $38 $9e

	ld c, c                                          ; $5315: $49
	ld a, e                                          ; $5316: $7b
	cp $8f                                           ; $5317: $fe $8f
	adc e                                            ; $5319: $8b
	rst $38                                          ; $531a: $ff
	sub e                                            ; $531b: $93
	cp $93                                           ; $531c: $fe $93
	cp $97                                           ; $531e: $fe $97
	cp $a7                                           ; $5320: $fe $a7
	db $fc                                           ; $5322: $fc
	daa                                              ; $5323: $27
	db $fc                                           ; $5324: $fc
	cpl                                              ; $5325: $2f
	ld hl, sp+$4f                                    ; $5326: $f8 $4f
	ld hl, sp+$5f                                    ; $5328: $f8 $5f
	ld b, b                                          ; $532a: $40
	sbc h                                            ; $532b: $9c
	ldh [rP1], a                                     ; $532c: $e0 $00
	add a                                            ; $532e: $87
	ld h, e                                          ; $532f: $63
	ld a, $5f                                        ; $5330: $3e $5f
	ld b, b                                          ; $5332: $40
	ld e, a                                          ; $5333: $5f
	ld h, b                                          ; $5334: $60
	sub l                                            ; $5335: $95
	ccf                                              ; $5336: $3f
	add hl, de                                       ; $5337: $19
	rst $38                                          ; $5338: $ff
	pop bc                                           ; $5339: $c1
	cp $e1                                           ; $533a: $fe $e1
	ld a, [hl]                                       ; $533c: $7e
	ld [hl], b                                       ; $533d: $70
	ldh a, [$d0]                                     ; $533e: $f0 $d0
	dec de                                           ; $5340: $1b
	ld h, b                                          ; $5341: $60
	ld a, a                                          ; $5342: $7f
	cp $9b                                           ; $5343: $fe $9b
	ld de, $0307                                     ; $5345: $11 $07 $03
	ld c, $7b                                        ; $5348: $0e $7b
	ld e, [hl]                                       ; $534a: $5e
	rst SubAFromDE                                          ; $534b: $df
	rlca                                             ; $534c: $07
	sbc d                                            ; $534d: $9a
	ld h, [hl]                                       ; $534e: $66
	dec b                                            ; $534f: $05
	ld [hl], e                                       ; $5350: $73
	inc bc                                           ; $5351: $03
	ld [hl], b                                       ; $5352: $70
	ld b, a                                          ; $5353: $47
	ld h, b                                          ; $5354: $60
	sub l                                            ; $5355: $95
	rlca                                             ; $5356: $07
	ei                                               ; $5357: $fb
	add a                                            ; $5358: $87
	ld a, [$fec7]                                    ; $5359: $fa $c7 $fe
	rst SubAFromBC                                          ; $535c: $e7
	or $ff                                           ; $535d: $f6 $ff
	ld a, d                                          ; $535f: $7a
	ld l, e                                          ; $5360: $6b
	ld h, b                                          ; $5361: $60
	ld d, a                                          ; $5362: $57
	add b                                            ; $5363: $80
	sbc [hl]                                         ; $5364: $9e
	add b                                            ; $5365: $80
	ld e, a                                          ; $5366: $5f
	ld a, [hl]                                       ; $5367: $7e
	sbc [hl]                                         ; $5368: $9e
	add a                                            ; $5369: $87
	scf                                              ; $536a: $37
	add b                                            ; $536b: $80
	sbc b                                            ; $536c: $98
	ccf                                              ; $536d: $3f
	ld bc, $c1fe                                     ; $536e: $01 $fe $c1
	cp $e0                                           ; $5371: $fe $e0
	ld [hl], b                                       ; $5373: $70
	ld [hl], e                                       ; $5374: $73
	ld a, [hl]                                       ; $5375: $7e
	ld a, a                                          ; $5376: $7f
	ld a, l                                          ; $5377: $7d
	dec hl                                           ; $5378: $2b
	add b                                            ; $5379: $80
	sbc e                                            ; $537a: $9b
	db $10                                           ; $537b: $10
	rlca                                             ; $537c: $07
	ld bc, $7b0f                                     ; $537d: $01 $0f $7b
	ld a, [hl]                                       ; $5380: $7e
	rst SubAFromDE                                          ; $5381: $df
	dec b                                            ; $5382: $05
	sbc l                                            ; $5383: $9d
	ld h, a                                          ; $5384: $67
	rlca                                             ; $5385: $07
	ld a, [hl-]                                      ; $5386: $3a
	ldh [$7f], a                                     ; $5387: $e0 $7f
	add b                                            ; $5389: $80
	sub d                                            ; $538a: $92
	rlca                                             ; $538b: $07
	ld a, [$fe87]                                    ; $538c: $fa $87 $fe
	rst JumpTable                                          ; $538f: $c7
	or $ff                                           ; $5390: $f6 $ff
	ld a, [$79ef]                                    ; $5392: $fa $ef $79
	rst GetHLinHL                                          ; $5395: $cf
	push af                                          ; $5396: $f5
	sbc a                                            ; $5397: $9f
	ld b, a                                          ; $5398: $47
	add b                                            ; $5399: $80
	ld a, a                                          ; $539a: $7f
	cp $99                                           ; $539b: $fe $99
	add [hl]                                         ; $539d: $86
	ld b, $99                                        ; $539e: $06 $99
	add hl, de                                       ; $53a0: $19
	adc h                                            ; $53a1: $8c
	inc c                                            ; $53a2: $0c
	daa                                              ; $53a3: $27
	add b                                            ; $53a4: $80
	sbc b                                            ; $53a5: $98
	ld e, $01                                        ; $53a6: $1e $01
	ld c, $00                                        ; $53a8: $0e $00
	ldh [$e0], a                                     ; $53aa: $e0 $e0
	nop                                              ; $53ac: $00
	ld a, e                                          ; $53ad: $7b
	db $fc                                           ; $53ae: $fc
	rst SubAFromDE                                          ; $53af: $df
	ret nz                                           ; $53b0: $c0

	inc hl                                           ; $53b1: $23
	add b                                            ; $53b2: $80
	sbc b                                            ; $53b3: $98
	nop                                              ; $53b4: $00
	rrca                                             ; $53b5: $0f
	inc bc                                           ; $53b6: $03
	rrca                                             ; $53b7: $0f
	nop                                              ; $53b8: $00
	rlca                                             ; $53b9: $07
	inc b                                            ; $53ba: $04
	inc hl                                           ; $53bb: $23
	add b                                            ; $53bc: $80
	sbc [hl]                                         ; $53bd: $9e
	rlca                                             ; $53be: $07
	ld a, e                                          ; $53bf: $7b
	add b                                            ; $53c0: $80
	sbc e                                            ; $53c1: $9b
	rrca                                             ; $53c2: $0f
	ld a, [$f96f]                                    ; $53c3: $fa $6f $f9
	ld [hl], e                                       ; $53c6: $73
	add b                                            ; $53c7: $80
	db $fd                                           ; $53c8: $fd
	sbc d                                            ; $53c9: $9a
	rrca                                             ; $53ca: $0f
	ld [$0c0c], sp                                   ; $53cb: $08 $0c $0c
	rrca                                             ; $53ce: $0f
	sbc $07                                          ; $53cf: $de $07
	rst SubAFromDE                                          ; $53d1: $df
	inc bc                                           ; $53d2: $03
	ld a, a                                          ; $53d3: $7f
	add b                                            ; $53d4: $80
	ld a, a                                          ; $53d5: $7f
	and a                                            ; $53d6: $a7
	adc a                                            ; $53d7: $8f
	ld a, c                                          ; $53d8: $79
	ldh a, [$1f]                                     ; $53d9: $f0 $1f
	rst $38                                          ; $53db: $ff
	rst GetHLinHL                                          ; $53dc: $cf
	cp $3f                                           ; $53dd: $fe $3f
	ld a, l                                          ; $53df: $7d
	ld h, $7f                                        ; $53e0: $26 $7f
	ld b, d                                          ; $53e2: $42
	rst AddAOntoHL                                          ; $53e3: $ef
	ld b, d                                          ; $53e4: $42
	db $eb                                           ; $53e5: $eb
	ld h, b                                          ; $53e6: $60
	ld b, b                                          ; $53e7: $40
	ld a, e                                          ; $53e8: $7b
	sub d                                            ; $53e9: $92
	add h                                            ; $53ea: $84
	jr nz, @+$62                                     ; $53eb: $20 $60

	ld b, b                                          ; $53ed: $40
	pop bc                                           ; $53ee: $c1
	ret nz                                           ; $53ef: $c0

	add e                                            ; $53f0: $83
	add c                                            ; $53f1: $81
	rlca                                             ; $53f2: $07
	inc bc                                           ; $53f3: $03
	inc e                                            ; $53f4: $1c
	rrca                                             ; $53f5: $0f
	ld a, d                                          ; $53f6: $7a
	ccf                                              ; $53f7: $3f
	pop af                                           ; $53f8: $f1
	rst SubAFromDE                                          ; $53f9: $df
	rst SubAFromBC                                          ; $53fa: $e7
	cp a                                             ; $53fb: $bf
	reti                                             ; $53fc: $d9


	ld a, a                                          ; $53fd: $7f
	jp hl                                            ; $53fe: $e9


	db $fd                                           ; $53ff: $fd
	ld b, l                                          ; $5400: $45
	rst FarCall                                          ; $5401: $f7
	dec h                                            ; $5402: $25
	ld [hl], a                                       ; $5403: $77
	daa                                              ; $5404: $27
	ld a, a                                          ; $5405: $7f
	ld e, a                                          ; $5406: $5f
	ret nz                                           ; $5407: $c0

	rst SubAFromDE                                          ; $5408: $df
	inc bc                                           ; $5409: $03
	rst $38                                          ; $540a: $ff
	sbc [hl]                                         ; $540b: $9e
	add e                                            ; $540c: $83
	rra                                              ; $540d: $1f
	ret nz                                           ; $540e: $c0

	sbc h                                            ; $540f: $9c
	add b                                            ; $5410: $80
	inc bc                                           ; $5411: $03
	ld bc, $c01f                                     ; $5412: $01 $1f $c0
	rst SubAFromDE                                          ; $5415: $df
	inc b                                            ; $5416: $04
	ld [hl], a                                       ; $5417: $77
	jp nz, $fd7f                                     ; $5418: $c2 $7f $fd

	dec de                                           ; $541b: $1b
	add b                                            ; $541c: $80
	inc de                                           ; $541d: $13
	ret nz                                           ; $541e: $c0

	rst SubAFromDE                                          ; $541f: $df
	rlca                                             ; $5420: $07
	ld [hl], a                                       ; $5421: $77
	jp nz, $27ff                                     ; $5422: $c2 $ff $27

	ret nz                                           ; $5425: $c0

	rst SubAFromDE                                          ; $5426: $df
	ret nz                                           ; $5427: $c0

	sbc l                                            ; $5428: $9d
	ld bc, $2f00                                     ; $5429: $01 $00 $2f
	ret nz                                           ; $542c: $c0

	db $ec                                           ; $542d: $ec
	ld bc, $e084                                     ; $542e: $01 $84 $e0
	rst $38                                          ; $5431: $ff
	ld b, c                                          ; $5432: $41
	rst $38                                          ; $5433: $ff
	add e                                            ; $5434: $83
	rst $38                                          ; $5435: $ff
	inc c                                            ; $5436: $0c
	rst $38                                          ; $5437: $ff
	pop af                                           ; $5438: $f1
	rst $38                                          ; $5439: $ff
	cp a                                             ; $543a: $bf
	rst $38                                          ; $543b: $ff
	inc hl                                           ; $543c: $23
	rst $38                                          ; $543d: $ff
	dec [hl]                                         ; $543e: $35
	db $eb                                           ; $543f: $eb
	dec h                                            ; $5440: $25
	db $eb                                           ; $5441: $eb
	ld b, l                                          ; $5442: $45
	db $eb                                           ; $5443: $eb
	ld b, c                                          ; $5444: $41
	db $eb                                           ; $5445: $eb
	ld b, d                                          ; $5446: $42
	jp hl                                            ; $5447: $e9


	ld b, d                                          ; $5448: $42
	jp hl                                            ; $5449: $e9


	ld d, [hl]                                       ; $544a: $56
	ld a, e                                          ; $544b: $7b
	cp $96                                           ; $544c: $fe $96
	ld d, d                                          ; $544e: $52
	db $ed                                           ; $544f: $ed
	ret z                                            ; $5450: $c8

	rst $38                                          ; $5451: $ff
	ret z                                            ; $5452: $c8

	rst $38                                          ; $5453: $ff
	ld b, b                                          ; $5454: $40
	ld a, a                                          ; $5455: $7f
	ld c, b                                          ; $5456: $48
	ld l, e                                          ; $5457: $6b
	cp $9b                                           ; $5458: $fe $9b
	add hl, hl                                       ; $545a: $29
	ccf                                              ; $545b: $3f
	xor c                                            ; $545c: $a9
	cp a                                             ; $545d: $bf
	ld [hl], a                                       ; $545e: $77
	cp $9e                                           ; $545f: $fe $9e
	and l                                            ; $5461: $a5
	ld a, e                                          ; $5462: $7b
	cp $80                                           ; $5463: $fe $80
	sub a                                            ; $5465: $97
	sbc a                                            ; $5466: $9f
	sub e                                            ; $5467: $93
	sbc a                                            ; $5468: $9f
	adc d                                            ; $5469: $8a
	adc [hl]                                         ; $546a: $8e
	jp $84fe                                         ; $546b: $c3 $fe $84


	rst $38                                          ; $546e: $ff
	rra                                              ; $546f: $1f
	rst $38                                          ; $5470: $ff
	ld a, a                                          ; $5471: $7f
	ldh a, [$f0]                                     ; $5472: $f0 $f0
	add b                                            ; $5474: $80
	rst SubAFromBC                                          ; $5475: $e7
	rlca                                             ; $5476: $07
	adc a                                            ; $5477: $8f
	rrca                                             ; $5478: $0f
	cp h                                             ; $5479: $bc
	inc a                                            ; $547a: $3c
	sbc l                                            ; $547b: $9d
	dec d                                            ; $547c: $15
	add a                                            ; $547d: $87
	rlca                                             ; $547e: $07
	add [hl]                                         ; $547f: $86
	rlca                                             ; $5480: $07
	add a                                            ; $5481: $87
	add h                                            ; $5482: $84
	add e                                            ; $5483: $83
	sbc [hl]                                         ; $5484: $9e
	add e                                            ; $5485: $83
	reti                                             ; $5486: $d9


	add b                                            ; $5487: $80
	db $dd                                           ; $5488: $dd
	ret nz                                           ; $5489: $c0

	rst SubAFromDE                                          ; $548a: $df
	ldh [$80], a                                     ; $548b: $e0 $80
	or b                                             ; $548d: $b0
	ldh a, [$b8]                                     ; $548e: $f0 $b8
	ld hl, sp-$14                                    ; $5490: $f8 $ec
	cp $eb                                           ; $5492: $fe $eb
	cp a                                             ; $5494: $bf
	ldh a, [$9d]                                     ; $5495: $f0 $9d
	ldh a, [$5b]                                     ; $5497: $f0 $5b
	ld sp, hl                                        ; $5499: $f9
	ld c, a                                          ; $549a: $4f
	ld a, [$fc2f]                                    ; $549b: $fa $2f $fc
	ld h, $fc                                        ; $549e: $26 $fc
	sub a                                            ; $54a0: $97
	cp $93                                           ; $54a1: $fe $93
	rst $38                                          ; $54a3: $ff
	adc c                                            ; $54a4: $89
	db $e4                                           ; $54a5: $e4
	rlca                                             ; $54a6: $07
	inc e                                            ; $54a7: $1c
	rst SubAFromBC                                          ; $54a8: $e7
	jp hl                                            ; $54a9: $e9


	rst $38                                          ; $54aa: $ff

jr_06d_54ab:
	ei                                               ; $54ab: $fb
	sub b                                            ; $54ac: $90
	ld e, $76                                        ; $54ad: $1e $76
	dec e                                            ; $54af: $1d
	rst $38                                          ; $54b0: $ff
	reti                                             ; $54b1: $d9


	rst $38                                          ; $54b2: $ff
	pop hl                                           ; $54b3: $e1
	ld a, [hl]                                       ; $54b4: $7e
	ld [hl], c                                       ; $54b5: $71
	cp $d0                                           ; $54b6: $fe $d0
	ret nz                                           ; $54b8: $c0

	ret nz                                           ; $54b9: $c0

	ld b, b                                          ; $54ba: $40
	ret nz                                           ; $54bb: $c0

	ld a, e                                          ; $54bc: $7b
	jp z, $80fa                                      ; $54bd: $ca $fa $80

	sub d                                            ; $54c0: $92
	rst $38                                          ; $54c1: $ff
	sub d                                            ; $54c2: $92
	rst $38                                          ; $54c3: $ff
	or l                                             ; $54c4: $b5
	rst $38                                          ; $54c5: $ff
	push de                                          ; $54c6: $d5
	rst $38                                          ; $54c7: $ff
	or [hl]                                          ; $54c8: $b6
	rst SubAFromDE                                          ; $54c9: $df
	rst $38                                          ; $54ca: $ff
	sbc a                                            ; $54cb: $9f
	sbc a                                            ; $54cc: $9f
	ld a, [de]                                       ; $54cd: $1a
	rla                                              ; $54ce: $17
	add hl, de                                       ; $54cf: $19
	rla                                              ; $54d0: $17
	inc de                                           ; $54d1: $13
	ld b, $04                                        ; $54d2: $06 $04
	dec c                                            ; $54d4: $0d
	dec b                                            ; $54d5: $05
	rrca                                             ; $54d6: $0f
	rlca                                             ; $54d7: $07
	ld b, $07                                        ; $54d8: $06 $07
	ld h, a                                          ; $54da: $67
	inc b                                            ; $54db: $04
	inc sp                                           ; $54dc: $33
	ld b, e                                          ; $54dd: $43
	ld d, b                                          ; $54de: $50
	add b                                            ; $54df: $80
	ld h, b                                          ; $54e0: $60
	call nc, $f4bb                                   ; $54e1: $d4 $bb $f4
	sbc e                                            ; $54e4: $9b
	ld a, [$fa0d]                                    ; $54e5: $fa $0d $fa
	dec c                                            ; $54e8: $0d
	inc e                                            ; $54e9: $1c
	rst SubAFromBC                                          ; $54ea: $e7
	db $e4                                           ; $54eb: $e4
	rst $38                                          ; $54ec: $ff
	cp $1f                                           ; $54ed: $fe $1f
	cp $87                                           ; $54ef: $fe $87
	ei                                               ; $54f1: $fb
	rst JumpTable                                          ; $54f2: $c7
	ld a, [$fee7]                                    ; $54f3: $fa $e7 $fe
	rst FarCall                                          ; $54f6: $f7
	ld e, [hl]                                       ; $54f7: $5e
	rst GetHLinHL                                          ; $54f8: $cf
	ld a, [$f9cf]                                    ; $54f9: $fa $cf $f9
	adc a                                            ; $54fc: $8f
	push af                                          ; $54fd: $f5
	rra                                              ; $54fe: $1f
	sub l                                            ; $54ff: $95
	ld [hl], h                                       ; $5500: $74
	rra                                              ; $5501: $1f
	inc h                                            ; $5502: $24
	ccf                                              ; $5503: $3f
	inc h                                            ; $5504: $24
	ccf                                              ; $5505: $3f
	ld b, h                                          ; $5506: $44
	ld a, a                                          ; $5507: $7f
	ld b, h                                          ; $5508: $44
	ld a, a                                          ; $5509: $7f
	ld [hl], a                                       ; $550a: $77
	jr c, jr_06d_54ab                                ; $550b: $38 $9e

	ld c, c                                          ; $550d: $49
	ld a, e                                          ; $550e: $7b
	cp $8f                                           ; $550f: $fe $8f
	adc e                                            ; $5511: $8b
	rst $38                                          ; $5512: $ff
	sub e                                            ; $5513: $93
	cp $93                                           ; $5514: $fe $93
	cp $97                                           ; $5516: $fe $97
	cp $a7                                           ; $5518: $fe $a7
	db $fc                                           ; $551a: $fc
	daa                                              ; $551b: $27
	db $fc                                           ; $551c: $fc
	cpl                                              ; $551d: $2f
	ld hl, sp+$4f                                    ; $551e: $f8 $4f
	ld hl, sp+$5f                                    ; $5520: $f8 $5f
	ld b, b                                          ; $5522: $40
	sbc h                                            ; $5523: $9c
	ldh [rP1], a                                     ; $5524: $e0 $00
	add a                                            ; $5526: $87
	ld h, e                                          ; $5527: $63
	ld a, $5f                                        ; $5528: $3e $5f
	ld b, b                                          ; $552a: $40
	ld e, a                                          ; $552b: $5f
	ld h, b                                          ; $552c: $60
	sub l                                            ; $552d: $95
	ccf                                              ; $552e: $3f
	add hl, de                                       ; $552f: $19
	rst $38                                          ; $5530: $ff
	pop bc                                           ; $5531: $c1
	cp $e1                                           ; $5532: $fe $e1
	ld a, [hl]                                       ; $5534: $7e
	ld [hl], b                                       ; $5535: $70
	ldh a, [$d0]                                     ; $5536: $f0 $d0
	dec de                                           ; $5538: $1b
	ld h, b                                          ; $5539: $60
	ld a, a                                          ; $553a: $7f
	cp $9b                                           ; $553b: $fe $9b
	ld de, $0307                                     ; $553d: $11 $07 $03
	ld c, $7b                                        ; $5540: $0e $7b
	ld e, [hl]                                       ; $5542: $5e
	rst SubAFromDE                                          ; $5543: $df
	rlca                                             ; $5544: $07
	sbc l                                            ; $5545: $9d
	ld h, [hl]                                       ; $5546: $66
	dec b                                            ; $5547: $05
	dec sp                                           ; $5548: $3b
	ld h, b                                          ; $5549: $60
	sub l                                            ; $554a: $95
	rlca                                             ; $554b: $07
	ei                                               ; $554c: $fb
	add a                                            ; $554d: $87
	ld a, [$fec7]                                    ; $554e: $fa $c7 $fe
	rst SubAFromBC                                          ; $5551: $e7
	or $ff                                           ; $5552: $f6 $ff
	ld a, d                                          ; $5554: $7a
	ld l, e                                          ; $5555: $6b
	ld h, b                                          ; $5556: $60
	ld d, a                                          ; $5557: $57
	add b                                            ; $5558: $80
	sbc [hl]                                         ; $5559: $9e
	add b                                            ; $555a: $80
	ld e, a                                          ; $555b: $5f
	ld a, [hl]                                       ; $555c: $7e
	sbc [hl]                                         ; $555d: $9e
	add a                                            ; $555e: $87
	scf                                              ; $555f: $37
	add b                                            ; $5560: $80
	sbc b                                            ; $5561: $98
	ccf                                              ; $5562: $3f
	ld bc, $c1fe                                     ; $5563: $01 $fe $c1
	cp $e0                                           ; $5566: $fe $e0
	ld [hl], b                                       ; $5568: $70
	ld [hl], e                                       ; $5569: $73
	ld a, [hl]                                       ; $556a: $7e
	ld a, a                                          ; $556b: $7f
	ld a, l                                          ; $556c: $7d
	dec hl                                           ; $556d: $2b
	add b                                            ; $556e: $80
	sbc e                                            ; $556f: $9b
	db $10                                           ; $5570: $10
	rlca                                             ; $5571: $07
	ld bc, $7b0f                                     ; $5572: $01 $0f $7b
	ld a, [hl]                                       ; $5575: $7e
	rst SubAFromDE                                          ; $5576: $df
	dec b                                            ; $5577: $05
	sbc l                                            ; $5578: $9d
	ld h, a                                          ; $5579: $67
	rlca                                             ; $557a: $07
	inc sp                                           ; $557b: $33
	add b                                            ; $557c: $80
	sub d                                            ; $557d: $92
	rlca                                             ; $557e: $07
	ld a, [$fe87]                                    ; $557f: $fa $87 $fe
	rst JumpTable                                          ; $5582: $c7
	or $ff                                           ; $5583: $f6 $ff
	ld a, [$79ef]                                    ; $5585: $fa $ef $79
	rst GetHLinHL                                          ; $5588: $cf
	push af                                          ; $5589: $f5
	sbc a                                            ; $558a: $9f
	ld b, a                                          ; $558b: $47
	add b                                            ; $558c: $80
	ld a, a                                          ; $558d: $7f
	cp $99                                           ; $558e: $fe $99
	add [hl]                                         ; $5590: $86
	ld b, $99                                        ; $5591: $06 $99
	add hl, de                                       ; $5593: $19
	adc h                                            ; $5594: $8c
	inc c                                            ; $5595: $0c
	daa                                              ; $5596: $27
	add b                                            ; $5597: $80
	sbc b                                            ; $5598: $98
	ld e, $01                                        ; $5599: $1e $01
	ld c, $00                                        ; $559b: $0e $00
	ldh [$e0], a                                     ; $559d: $e0 $e0
	nop                                              ; $559f: $00
	ld a, e                                          ; $55a0: $7b
	db $fc                                           ; $55a1: $fc
	rst SubAFromDE                                          ; $55a2: $df
	ret nz                                           ; $55a3: $c0

	inc hl                                           ; $55a4: $23
	add b                                            ; $55a5: $80
	sbc b                                            ; $55a6: $98
	nop                                              ; $55a7: $00
	rrca                                             ; $55a8: $0f
	inc bc                                           ; $55a9: $03
	rrca                                             ; $55aa: $0f
	nop                                              ; $55ab: $00
	rlca                                             ; $55ac: $07
	inc b                                            ; $55ad: $04
	inc hl                                           ; $55ae: $23
	add b                                            ; $55af: $80
	sbc [hl]                                         ; $55b0: $9e
	rlca                                             ; $55b1: $07
	ld a, e                                          ; $55b2: $7b
	add b                                            ; $55b3: $80
	sbc e                                            ; $55b4: $9b
	rrca                                             ; $55b5: $0f
	ld a, [$f96f]                                    ; $55b6: $fa $6f $f9
	ld [hl], e                                       ; $55b9: $73
	add b                                            ; $55ba: $80
	db $fd                                           ; $55bb: $fd
	add c                                            ; $55bc: $81
	rrca                                             ; $55bd: $0f
	ld [$0c0c], sp                                   ; $55be: $08 $0c $0c
	rrca                                             ; $55c1: $0f
	rlca                                             ; $55c2: $07
	inc bc                                           ; $55c3: $03
	inc bc                                           ; $55c4: $03
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	add e                                            ; $55c7: $83
	nop                                              ; $55c8: $00
	ldh [$c0], a                                     ; $55c9: $e0 $c0
	ld a, c                                          ; $55cb: $79
	ldh a, [$1f]                                     ; $55cc: $f0 $1f
	rst $38                                          ; $55ce: $ff
	rst GetHLinHL                                          ; $55cf: $cf
	cp $3f                                           ; $55d0: $fe $3f
	ld a, l                                          ; $55d2: $7d
	ld h, $7f                                        ; $55d3: $26 $7f
	ld b, d                                          ; $55d5: $42
	rst AddAOntoHL                                          ; $55d6: $ef
	ld b, d                                          ; $55d7: $42
	db $eb                                           ; $55d8: $eb
	ld h, b                                          ; $55d9: $60
	ld b, b                                          ; $55da: $40
	ld a, e                                          ; $55db: $7b
	sub d                                            ; $55dc: $92
	add h                                            ; $55dd: $84
	jr nz, jr_06d_5640                               ; $55de: $20 $60

	ld b, b                                          ; $55e0: $40
	pop bc                                           ; $55e1: $c1
	add b                                            ; $55e2: $80
	inc bc                                           ; $55e3: $03
	ld bc, $0307                                     ; $55e4: $01 $07 $03
	inc e                                            ; $55e7: $1c
	rrca                                             ; $55e8: $0f
	ld a, d                                          ; $55e9: $7a
	ccf                                              ; $55ea: $3f
	pop af                                           ; $55eb: $f1
	rst SubAFromDE                                          ; $55ec: $df
	rst SubAFromBC                                          ; $55ed: $e7
	cp a                                             ; $55ee: $bf
	reti                                             ; $55ef: $d9


	ld a, a                                          ; $55f0: $7f
	jp hl                                            ; $55f1: $e9


	db $fd                                           ; $55f2: $fd
	ld b, l                                          ; $55f3: $45
	rst FarCall                                          ; $55f4: $f7
	dec h                                            ; $55f5: $25
	ld [hl], a                                       ; $55f6: $77
	daa                                              ; $55f7: $27
	ld a, a                                          ; $55f8: $7f
	ld l, a                                          ; $55f9: $6f
	ret nz                                           ; $55fa: $c0

	rst SubAFromDE                                          ; $55fb: $df
	inc b                                            ; $55fc: $04
	ld [hl], a                                       ; $55fd: $77
	jp nz, $fd7f                                     ; $55fe: $c2 $7f $fd

	ld a, a                                          ; $5601: $7f
	ld b, b                                          ; $5602: $40
	inc bc                                           ; $5603: $03
	ret nz                                           ; $5604: $c0

	inc sp                                           ; $5605: $33
	ret nz                                           ; $5606: $c0

	rst SubAFromDE                                          ; $5607: $df
	rlca                                             ; $5608: $07
	ld [hl], a                                       ; $5609: $77
	jp nz, $27ff                                     ; $560a: $c2 $ff $27

	ret nz                                           ; $560d: $c0

	rst SubAFromDE                                          ; $560e: $df
	ret nz                                           ; $560f: $c0

	sbc l                                            ; $5610: $9d
	ld bc, $0300                                     ; $5611: $01 $00 $03
	ret nz                                           ; $5614: $c0

	inc bc                                           ; $5615: $03
	ret nz                                           ; $5616: $c0

	scf                                              ; $5617: $37
	ret nz                                           ; $5618: $c0

	db $ed                                           ; $5619: $ed
	ld bc, $e084                                     ; $561a: $01 $84 $e0
	rst $38                                          ; $561d: $ff
	ld b, c                                          ; $561e: $41
	rst $38                                          ; $561f: $ff
	add e                                            ; $5620: $83
	rst $38                                          ; $5621: $ff
	inc c                                            ; $5622: $0c
	rst $38                                          ; $5623: $ff
	pop af                                           ; $5624: $f1
	rst $38                                          ; $5625: $ff
	cp a                                             ; $5626: $bf
	rst $38                                          ; $5627: $ff
	inc hl                                           ; $5628: $23
	rst $38                                          ; $5629: $ff
	dec [hl]                                         ; $562a: $35
	db $eb                                           ; $562b: $eb
	dec h                                            ; $562c: $25
	db $eb                                           ; $562d: $eb
	ld b, l                                          ; $562e: $45
	db $eb                                           ; $562f: $eb
	ld b, c                                          ; $5630: $41
	db $eb                                           ; $5631: $eb
	ld b, d                                          ; $5632: $42
	jp hl                                            ; $5633: $e9


	ld b, d                                          ; $5634: $42
	jp hl                                            ; $5635: $e9


	ld d, [hl]                                       ; $5636: $56
	ld a, e                                          ; $5637: $7b
	cp $96                                           ; $5638: $fe $96
	ld d, d                                          ; $563a: $52
	db $ed                                           ; $563b: $ed
	ret z                                            ; $563c: $c8

	rst $38                                          ; $563d: $ff
	ret z                                            ; $563e: $c8

	rst $38                                          ; $563f: $ff

jr_06d_5640:
	ld b, b                                          ; $5640: $40
	ld a, a                                          ; $5641: $7f
	ld c, b                                          ; $5642: $48
	ld l, e                                          ; $5643: $6b
	cp $9b                                           ; $5644: $fe $9b
	add hl, hl                                       ; $5646: $29
	ccf                                              ; $5647: $3f
	xor c                                            ; $5648: $a9
	cp a                                             ; $5649: $bf
	ld [hl], a                                       ; $564a: $77
	cp $9e                                           ; $564b: $fe $9e
	and l                                            ; $564d: $a5
	ld a, e                                          ; $564e: $7b
	cp $80                                           ; $564f: $fe $80
	sub a                                            ; $5651: $97
	sbc a                                            ; $5652: $9f
	sub e                                            ; $5653: $93
	sbc a                                            ; $5654: $9f
	adc d                                            ; $5655: $8a
	adc [hl]                                         ; $5656: $8e
	jp $84ff                                         ; $5657: $c3 $ff $84


	rst $38                                          ; $565a: $ff
	rra                                              ; $565b: $1f
	rst $38                                          ; $565c: $ff
	ld a, a                                          ; $565d: $7f
	ld hl, sp-$10                                    ; $565e: $f8 $f0
	add b                                            ; $5660: $80
	rst SubAFromBC                                          ; $5661: $e7
	rlca                                             ; $5662: $07
	adc a                                            ; $5663: $8f
	rrca                                             ; $5664: $0f
	cp h                                             ; $5665: $bc
	inc a                                            ; $5666: $3c
	sbc l                                            ; $5667: $9d
	dec d                                            ; $5668: $15
	add a                                            ; $5669: $87
	rlca                                             ; $566a: $07
	add [hl]                                         ; $566b: $86
	rlca                                             ; $566c: $07
	add a                                            ; $566d: $87
	add h                                            ; $566e: $84
	add e                                            ; $566f: $83
	sbc [hl]                                         ; $5670: $9e
	add e                                            ; $5671: $83
	reti                                             ; $5672: $d9


	add b                                            ; $5673: $80
	db $dd                                           ; $5674: $dd
	ret nz                                           ; $5675: $c0

	rst SubAFromDE                                          ; $5676: $df
	ldh [$80], a                                     ; $5677: $e0 $80
	or b                                             ; $5679: $b0
	ldh a, [$b8]                                     ; $567a: $f0 $b8
	ld hl, sp-$14                                    ; $567c: $f8 $ec
	cp $eb                                           ; $567e: $fe $eb
	cp a                                             ; $5680: $bf
	ldh a, [$9d]                                     ; $5681: $f0 $9d
	ldh a, [$5b]                                     ; $5683: $f0 $5b
	ld sp, hl                                        ; $5685: $f9
	ld c, a                                          ; $5686: $4f
	ld a, [$fc2f]                                    ; $5687: $fa $2f $fc
	ld h, $fc                                        ; $568a: $26 $fc
	sub a                                            ; $568c: $97
	cp $93                                           ; $568d: $fe $93
	rst $38                                          ; $568f: $ff
	adc c                                            ; $5690: $89
	db $e4                                           ; $5691: $e4
	rlca                                             ; $5692: $07
	inc l                                            ; $5693: $2c
	rst JumpTable                                          ; $5694: $c7
	adc c                                            ; $5695: $89
	rst AddAOntoHL                                          ; $5696: $ef

jr_06d_5697:
	db $eb                                           ; $5697: $eb
	sub b                                            ; $5698: $90
	ld a, [hl]                                       ; $5699: $7e
	or $3d                                           ; $569a: $f6 $3d
	rst $38                                          ; $569c: $ff
	db $dd                                           ; $569d: $dd
	rst $38                                          ; $569e: $ff
	pop hl                                           ; $569f: $e1
	ld a, [hl]                                       ; $56a0: $7e
	ld [hl], c                                       ; $56a1: $71
	cp $d0                                           ; $56a2: $fe $d0
	ret nz                                           ; $56a4: $c0

	ret nz                                           ; $56a5: $c0

	ld b, b                                          ; $56a6: $40
	ret nz                                           ; $56a7: $c0

	ld a, e                                          ; $56a8: $7b
	jp z, $80fa                                      ; $56a9: $ca $fa $80

	sub d                                            ; $56ac: $92
	rst $38                                          ; $56ad: $ff
	sub d                                            ; $56ae: $92
	rst $38                                          ; $56af: $ff
	or l                                             ; $56b0: $b5
	rst $38                                          ; $56b1: $ff
	push de                                          ; $56b2: $d5
	rst $38                                          ; $56b3: $ff
	or a                                             ; $56b4: $b7
	sbc $fa                                          ; $56b5: $de $fa
	sbc a                                            ; $56b7: $9f
	sbc a                                            ; $56b8: $9f
	rra                                              ; $56b9: $1f
	rla                                              ; $56ba: $17
	ld a, [de]                                       ; $56bb: $1a
	rla                                              ; $56bc: $17
	inc de                                           ; $56bd: $13
	ld b, $04                                        ; $56be: $06 $04
	dec c                                            ; $56c0: $0d
	dec b                                            ; $56c1: $05
	rrca                                             ; $56c2: $0f
	rlca                                             ; $56c3: $07
	ld b, $07                                        ; $56c4: $06 $07
	ld h, a                                          ; $56c6: $67
	inc b                                            ; $56c7: $04
	inc sp                                           ; $56c8: $33
	ld b, e                                          ; $56c9: $43
	ld d, b                                          ; $56ca: $50
	add b                                            ; $56cb: $80
	ld h, b                                          ; $56cc: $60
	call nc, $f4bb                                   ; $56cd: $d4 $bb $f4
	sbc e                                            ; $56d0: $9b
	ld a, [$fa0d]                                    ; $56d1: $fa $0d $fa
	dec c                                            ; $56d4: $0d
	add h                                            ; $56d5: $84
	ld a, a                                          ; $56d6: $7f
	ld a, h                                          ; $56d7: $7c
	rst $38                                          ; $56d8: $ff
	ld a, [$fe87]                                    ; $56d9: $fa $87 $fe
	inc bc                                           ; $56dc: $03
	rst $38                                          ; $56dd: $ff
	jp $e7fa                                         ; $56de: $c3 $fa $e7


	cp $ff                                           ; $56e1: $fe $ff
	ld e, [hl]                                       ; $56e3: $5e
	rst GetHLinHL                                          ; $56e4: $cf
	ld a, [$f9cf]                                    ; $56e5: $fa $cf $f9
	adc a                                            ; $56e8: $8f
	push af                                          ; $56e9: $f5
	rra                                              ; $56ea: $1f
	sub l                                            ; $56eb: $95
	ld [hl], h                                       ; $56ec: $74
	rra                                              ; $56ed: $1f
	inc h                                            ; $56ee: $24
	ccf                                              ; $56ef: $3f
	inc h                                            ; $56f0: $24
	ccf                                              ; $56f1: $3f
	ld b, h                                          ; $56f2: $44
	ld a, a                                          ; $56f3: $7f
	ld b, h                                          ; $56f4: $44
	ld a, a                                          ; $56f5: $7f
	ld [hl], a                                       ; $56f6: $77
	jr c, jr_06d_5697                                ; $56f7: $38 $9e

	ld c, c                                          ; $56f9: $49
	ld a, e                                          ; $56fa: $7b
	cp $8f                                           ; $56fb: $fe $8f
	adc e                                            ; $56fd: $8b
	rst $38                                          ; $56fe: $ff
	sub e                                            ; $56ff: $93
	cp $93                                           ; $5700: $fe $93
	cp $97                                           ; $5702: $fe $97
	cp $a7                                           ; $5704: $fe $a7
	db $fc                                           ; $5706: $fc
	daa                                              ; $5707: $27
	db $fc                                           ; $5708: $fc
	cpl                                              ; $5709: $2f
	ld hl, sp+$4f                                    ; $570a: $f8 $4f
	ld hl, sp+$5f                                    ; $570c: $f8 $5f
	ld b, b                                          ; $570e: $40
	sbc h                                            ; $570f: $9c
	ldh [rP1], a                                     ; $5710: $e0 $00
	add a                                            ; $5712: $87
	ld h, e                                          ; $5713: $63
	ld a, $5f                                        ; $5714: $3e $5f
	ld b, b                                          ; $5716: $40
	ld e, a                                          ; $5717: $5f
	ld h, b                                          ; $5718: $60
	sub l                                            ; $5719: $95
	ld a, a                                          ; $571a: $7f
	dec e                                            ; $571b: $1d
	rst $38                                          ; $571c: $ff
	pop bc                                           ; $571d: $c1
	cp $e1                                           ; $571e: $fe $e1
	ld a, [hl]                                       ; $5720: $7e
	ld [hl], b                                       ; $5721: $70
	ldh a, [$d0]                                     ; $5722: $f0 $d0
	inc de                                           ; $5724: $13
	ld h, b                                          ; $5725: $60
	sbc e                                            ; $5726: $9b
	ld de, $0307                                     ; $5727: $11 $07 $03
	ld c, $7b                                        ; $572a: $0e $7b
	ld e, [hl]                                       ; $572c: $5e
	rst SubAFromDE                                          ; $572d: $df
	rlca                                             ; $572e: $07
	sbc l                                            ; $572f: $9d
	ld h, [hl]                                       ; $5730: $66
	dec b                                            ; $5731: $05
	inc sp                                           ; $5732: $33
	ld h, b                                          ; $5733: $60
	sbc e                                            ; $5734: $9b
	add e                                            ; $5735: $83
	ld a, [$fec7]                                    ; $5736: $fa $c7 $fe
	ld a, e                                          ; $5739: $7b
	ld e, [hl]                                       ; $573a: $5e
	sub a                                            ; $573b: $97
	ld a, d                                          ; $573c: $7a
	rst GetHLinHL                                          ; $573d: $cf
	ld a, c                                          ; $573e: $79
	rst GetHLinHL                                          ; $573f: $cf
	push af                                          ; $5740: $f5
	sbc a                                            ; $5741: $9f
	ld [hl], h                                       ; $5742: $74
	rra                                              ; $5743: $1f
	ld d, a                                          ; $5744: $57
	add b                                            ; $5745: $80
	sbc [hl]                                         ; $5746: $9e
	add b                                            ; $5747: $80
	ld e, a                                          ; $5748: $5f
	ld a, [hl]                                       ; $5749: $7e
	sbc [hl]                                         ; $574a: $9e
	add a                                            ; $574b: $87
	scf                                              ; $574c: $37
	add b                                            ; $574d: $80
	sbc b                                            ; $574e: $98
	ccf                                              ; $574f: $3f
	ld bc, $c1fe                                     ; $5750: $01 $fe $c1
	cp $e0                                           ; $5753: $fe $e0
	ld [hl], b                                       ; $5755: $70
	ld [hl], e                                       ; $5756: $73
	ld a, [hl]                                       ; $5757: $7e
	ld a, a                                          ; $5758: $7f
	ld a, l                                          ; $5759: $7d
	ld b, a                                          ; $575a: $47
	add b                                            ; $575b: $80
	sbc [hl]                                         ; $575c: $9e
	cp $6f                                           ; $575d: $fe $6f
	add b                                            ; $575f: $80
	sbc e                                            ; $5760: $9b
	db $10                                           ; $5761: $10
	rlca                                             ; $5762: $07
	ld bc, $7b0f                                     ; $5763: $01 $0f $7b
	ld a, [hl]                                       ; $5766: $7e
	rst SubAFromDE                                          ; $5767: $df
	dec b                                            ; $5768: $05
	sbc l                                            ; $5769: $9d
	ld h, a                                          ; $576a: $67
	rlca                                             ; $576b: $07
	inc sp                                           ; $576c: $33
	add b                                            ; $576d: $80
	sbc [hl]                                         ; $576e: $9e
	inc bc                                           ; $576f: $03
	ld a, e                                          ; $5770: $7b
	ld a, [$7e7f]                                    ; $5771: $fa $7f $7e
	sbc h                                            ; $5774: $9c
	rst AddAOntoHL                                          ; $5775: $ef
	ld a, [$37ff]                                    ; $5776: $fa $ff $37
	add b                                            ; $5779: $80
	ld a, a                                          ; $577a: $7f
	cp $99                                           ; $577b: $fe $99
	add [hl]                                         ; $577d: $86
	ld b, $99                                        ; $577e: $06 $99
	add hl, de                                       ; $5780: $19
	adc h                                            ; $5781: $8c
	inc c                                            ; $5782: $0c
	daa                                              ; $5783: $27
	add b                                            ; $5784: $80
	sbc b                                            ; $5785: $98
	ld e, $01                                        ; $5786: $1e $01
	ld c, $00                                        ; $5788: $0e $00
	ldh [$e0], a                                     ; $578a: $e0 $e0
	nop                                              ; $578c: $00
	ld a, e                                          ; $578d: $7b
	db $fc                                           ; $578e: $fc
	rst SubAFromDE                                          ; $578f: $df
	ret nz                                           ; $5790: $c0

	inc hl                                           ; $5791: $23
	add b                                            ; $5792: $80
	sbc b                                            ; $5793: $98
	nop                                              ; $5794: $00
	rrca                                             ; $5795: $0f
	inc bc                                           ; $5796: $03
	rrca                                             ; $5797: $0f
	nop                                              ; $5798: $00
	rlca                                             ; $5799: $07
	inc b                                            ; $579a: $04
	inc hl                                           ; $579b: $23
	add b                                            ; $579c: $80
	sbc [hl]                                         ; $579d: $9e
	rlca                                             ; $579e: $07
	ld a, e                                          ; $579f: $7b
	add b                                            ; $57a0: $80
	sbc e                                            ; $57a1: $9b
	rrca                                             ; $57a2: $0f
	ld a, [$f97f]                                    ; $57a3: $fa $7f $f9
	ld [hl], e                                       ; $57a6: $73
	add b                                            ; $57a7: $80
	db $fd                                           ; $57a8: $fd
	sbc c                                            ; $57a9: $99
	inc bc                                           ; $57aa: $03
	nop                                              ; $57ab: $00
	inc b                                            ; $57ac: $04
	inc b                                            ; $57ad: $04
	inc bc                                           ; $57ae: $03
	inc bc                                           ; $57af: $03
	ld [hl], a                                       ; $57b0: $77
	ld hl, sp+$7f                                    ; $57b1: $f8 $7f
	add b                                            ; $57b3: $80
	ld a, a                                          ; $57b4: $7f
	and a                                            ; $57b5: $a7
	add b                                            ; $57b6: $80
	ld a, c                                          ; $57b7: $79
	ldh a, [$1f]                                     ; $57b8: $f0 $1f
	rst $38                                          ; $57ba: $ff
	rst GetHLinHL                                          ; $57bb: $cf
	cp $3f                                           ; $57bc: $fe $3f
	ld a, l                                          ; $57be: $7d
	ld h, $7f                                        ; $57bf: $26 $7f
	ld b, d                                          ; $57c1: $42
	rst AddAOntoHL                                          ; $57c2: $ef
	ld b, d                                          ; $57c3: $42
	db $eb                                           ; $57c4: $eb
	ld h, b                                          ; $57c5: $60
	ld b, b                                          ; $57c6: $40
	nop                                              ; $57c7: $00
	nop                                              ; $57c8: $00
	ret nz                                           ; $57c9: $c0

	nop                                              ; $57ca: $00
	ld b, b                                          ; $57cb: $40
	ld b, b                                          ; $57cc: $40
	pop bc                                           ; $57cd: $c1
	add b                                            ; $57ce: $80
	inc bc                                           ; $57cf: $03
	ld bc, $0307                                     ; $57d0: $01 $07 $03
	inc e                                            ; $57d3: $1c
	rrca                                             ; $57d4: $0f
	ld a, d                                          ; $57d5: $7a
	sub b                                            ; $57d6: $90
	ccf                                              ; $57d7: $3f
	pop af                                           ; $57d8: $f1
	rst SubAFromDE                                          ; $57d9: $df
	rst SubAFromBC                                          ; $57da: $e7
	cp a                                             ; $57db: $bf
	reti                                             ; $57dc: $d9


	ld a, a                                          ; $57dd: $7f
	jp hl                                            ; $57de: $e9


	db $fd                                           ; $57df: $fd
	ld b, l                                          ; $57e0: $45
	rst FarCall                                          ; $57e1: $f7
	dec h                                            ; $57e2: $25
	ld [hl], a                                       ; $57e3: $77
	daa                                              ; $57e4: $27
	ld a, a                                          ; $57e5: $7f
	inc bc                                           ; $57e6: $03
	ret nz                                           ; $57e7: $c0

	inc bc                                           ; $57e8: $03
	ret nz                                           ; $57e9: $c0

	ld l, a                                          ; $57ea: $6f
	ret nz                                           ; $57eb: $c0

	sbc $07                                          ; $57ec: $de $07
	ld a, e                                          ; $57ee: $7b
	cp [hl]                                          ; $57ef: $be
	sbc [hl]                                         ; $57f0: $9e
	add e                                            ; $57f1: $83
	rra                                              ; $57f2: $1f
	ret nz                                           ; $57f3: $c0

	sbc h                                            ; $57f4: $9c
	ret nz                                           ; $57f5: $c0

	add e                                            ; $57f6: $83
	add c                                            ; $57f7: $81
	dec bc                                           ; $57f8: $0b
	ret nz                                           ; $57f9: $c0

	ld a, e                                          ; $57fa: $7b
	cp [hl]                                          ; $57fb: $be
	ld a, a                                          ; $57fc: $7f
	add b                                            ; $57fd: $80
	sbc [hl]                                         ; $57fe: $9e
	db $e3                                           ; $57ff: $e3
	dec de                                           ; $5800: $1b
	ret nz                                           ; $5801: $c0

	sbc [hl]                                         ; $5802: $9e
	add a                                            ; $5803: $87
	dec sp                                           ; $5804: $3b
	ret nz                                           ; $5805: $c0

	jp hl                                            ; $5806: $e9


	ld bc, $e084                                     ; $5807: $01 $84 $e0
	rst $38                                          ; $580a: $ff
	ld b, c                                          ; $580b: $41
	rst $38                                          ; $580c: $ff
	add e                                            ; $580d: $83
	rst $38                                          ; $580e: $ff
	inc c                                            ; $580f: $0c
	rst $38                                          ; $5810: $ff
	pop af                                           ; $5811: $f1
	rst $38                                          ; $5812: $ff
	cp a                                             ; $5813: $bf
	rst $38                                          ; $5814: $ff
	inc hl                                           ; $5815: $23
	rst $38                                          ; $5816: $ff
	dec [hl]                                         ; $5817: $35
	db $eb                                           ; $5818: $eb
	dec h                                            ; $5819: $25
	db $eb                                           ; $581a: $eb
	ld b, l                                          ; $581b: $45
	db $eb                                           ; $581c: $eb
	ld b, c                                          ; $581d: $41
	db $eb                                           ; $581e: $eb
	ld b, d                                          ; $581f: $42
	jp hl                                            ; $5820: $e9


	ld b, d                                          ; $5821: $42
	jp hl                                            ; $5822: $e9


	ld d, [hl]                                       ; $5823: $56
	ld a, e                                          ; $5824: $7b
	cp $96                                           ; $5825: $fe $96
	ld d, d                                          ; $5827: $52
	db $ed                                           ; $5828: $ed
	ret z                                            ; $5829: $c8

	rst $38                                          ; $582a: $ff
	ret z                                            ; $582b: $c8

	rst $38                                          ; $582c: $ff
	ld b, b                                          ; $582d: $40
	ld a, a                                          ; $582e: $7f
	ld c, b                                          ; $582f: $48
	ld l, e                                          ; $5830: $6b
	cp $9b                                           ; $5831: $fe $9b
	add hl, hl                                       ; $5833: $29
	ccf                                              ; $5834: $3f
	xor c                                            ; $5835: $a9
	cp a                                             ; $5836: $bf
	ld [hl], a                                       ; $5837: $77
	cp $9e                                           ; $5838: $fe $9e
	and l                                            ; $583a: $a5
	ld a, e                                          ; $583b: $7b
	cp $80                                           ; $583c: $fe $80
	sub a                                            ; $583e: $97
	sbc a                                            ; $583f: $9f
	sub e                                            ; $5840: $93
	sbc a                                            ; $5841: $9f
	adc d                                            ; $5842: $8a
	adc [hl]                                         ; $5843: $8e
	jp nz, $87ff                                     ; $5844: $c2 $ff $87

	rst $38                                          ; $5847: $ff

Call_06d_5848:
	rra                                              ; $5848: $1f
	db $fc                                           ; $5849: $fc
	ld a, a                                          ; $584a: $7f
	ld hl, sp-$10                                    ; $584b: $f8 $f0
	add b                                            ; $584d: $80
	rst SubAFromBC                                          ; $584e: $e7
	rlca                                             ; $584f: $07
	adc a                                            ; $5850: $8f
	rrca                                             ; $5851: $0f
	cp h                                             ; $5852: $bc
	inc a                                            ; $5853: $3c
	sbc l                                            ; $5854: $9d
	dec d                                            ; $5855: $15
	add a                                            ; $5856: $87
	rlca                                             ; $5857: $07
	add [hl]                                         ; $5858: $86
	rlca                                             ; $5859: $07
	sbc a                                            ; $585a: $9f
	add h                                            ; $585b: $84
	add a                                            ; $585c: $87
	sbc [hl]                                         ; $585d: $9e
	add e                                            ; $585e: $83
	reti                                             ; $585f: $d9


	add b                                            ; $5860: $80
	db $dd                                           ; $5861: $dd
	ret nz                                           ; $5862: $c0

	rst SubAFromDE                                          ; $5863: $df
	ldh [$80], a                                     ; $5864: $e0 $80
	or b                                             ; $5866: $b0
	ldh a, [$b8]                                     ; $5867: $f0 $b8
	ld hl, sp-$14                                    ; $5869: $f8 $ec
	cp $eb                                           ; $586b: $fe $eb
	cp a                                             ; $586d: $bf
	ldh a, [$9d]                                     ; $586e: $f0 $9d
	ldh a, [$5b]                                     ; $5870: $f0 $5b
	ld sp, hl                                        ; $5872: $f9
	ld c, a                                          ; $5873: $4f
	ld a, [$fc2f]                                    ; $5874: $fa $2f $fc
	ld h, $fc                                        ; $5877: $26 $fc
	sub a                                            ; $5879: $97
	cp $93                                           ; $587a: $fe $93
	rst $38                                          ; $587c: $ff
	adc c                                            ; $587d: $89
	ld h, h                                          ; $587e: $64
	add a                                            ; $587f: $87
	inc l                                            ; $5880: $2c
	rst JumpTable                                          ; $5881: $c7
	adc c                                            ; $5882: $89
	rst AddAOntoHL                                          ; $5883: $ef
	res 1, e                                         ; $5884: $cb $8b
	ld a, [hl]                                       ; $5886: $7e

jr_06d_5887:
	xor $3d                                          ; $5887: $ee $3d
	di                                               ; $5889: $f3
	sbc l                                            ; $588a: $9d
	rst $38                                          ; $588b: $ff
	pop bc                                           ; $588c: $c1
	ld a, [hl]                                       ; $588d: $7e
	ld h, c                                          ; $588e: $61
	cp $f0                                           ; $588f: $fe $f0
	ret nz                                           ; $5891: $c0

	ret nz                                           ; $5892: $c0

	ld b, b                                          ; $5893: $40
	ret nz                                           ; $5894: $c0

	add b                                            ; $5895: $80
	add b                                            ; $5896: $80
	ldh [rP1], a                                     ; $5897: $e0 $00
	ld [hl], b                                       ; $5899: $70
	db $fc                                           ; $589a: $fc
	add b                                            ; $589b: $80
	sub d                                            ; $589c: $92
	rst $38                                          ; $589d: $ff
	sub d                                            ; $589e: $92
	rst $38                                          ; $589f: $ff
	or l                                             ; $58a0: $b5
	rst $38                                          ; $58a1: $ff
	push de                                          ; $58a2: $d5
	rst $38                                          ; $58a3: $ff
	or a                                             ; $58a4: $b7
	sbc $ff                                          ; $58a5: $de $ff
	sbc [hl]                                         ; $58a7: $9e
	sbc [hl]                                         ; $58a8: $9e
	dec de                                           ; $58a9: $1b
	inc de                                           ; $58aa: $13
	rra                                              ; $58ab: $1f
	rla                                              ; $58ac: $17
	ld de, $060e                                     ; $58ad: $11 $0e $06
	dec c                                            ; $58b0: $0d
	dec b                                            ; $58b1: $05
	rlca                                             ; $58b2: $07
	rlca                                             ; $58b3: $07
	ld b, $07                                        ; $58b4: $06 $07
	ld h, a                                          ; $58b6: $67
	inc b                                            ; $58b7: $04
	inc sp                                           ; $58b8: $33
	ld b, e                                          ; $58b9: $43
	ld d, b                                          ; $58ba: $50
	add b                                            ; $58bb: $80
	ld h, b                                          ; $58bc: $60
	call nc, $f4bb                                   ; $58bd: $d4 $bb $f4
	sbc e                                            ; $58c0: $9b
	ld a, [$fa0d]                                    ; $58c1: $fa $0d $fa
	dec c                                            ; $58c4: $0d
	call nz, $3c3f                                   ; $58c5: $c4 $3f $3c
	rst $38                                          ; $58c8: $ff
	ld a, [$fec7]                                    ; $58c9: $fa $c7 $fe
	inc bc                                           ; $58cc: $03
	rst $38                                          ; $58cd: $ff
	jp $e7fa                                         ; $58ce: $c3 $fa $e7


	cp $ff                                           ; $58d1: $fe $ff
	ld e, [hl]                                       ; $58d3: $5e
	rst GetHLinHL                                          ; $58d4: $cf
	ld a, [$f9cf]                                    ; $58d5: $fa $cf $f9
	adc a                                            ; $58d8: $8f
	push af                                          ; $58d9: $f5
	rra                                              ; $58da: $1f
	sub l                                            ; $58db: $95
	ld [hl], h                                       ; $58dc: $74
	rra                                              ; $58dd: $1f
	inc h                                            ; $58de: $24
	ccf                                              ; $58df: $3f
	inc h                                            ; $58e0: $24
	ccf                                              ; $58e1: $3f
	ld b, h                                          ; $58e2: $44
	ld a, a                                          ; $58e3: $7f
	ld b, h                                          ; $58e4: $44
	ld a, a                                          ; $58e5: $7f
	ld [hl], a                                       ; $58e6: $77
	jr c, jr_06d_5887                                ; $58e7: $38 $9e

	ld c, c                                          ; $58e9: $49
	ld a, e                                          ; $58ea: $7b
	cp $8f                                           ; $58eb: $fe $8f
	adc e                                            ; $58ed: $8b
	rst $38                                          ; $58ee: $ff

Call_06d_58ef:
	sub e                                            ; $58ef: $93
	cp $93                                           ; $58f0: $fe $93
	cp $97                                           ; $58f2: $fe $97
	cp $a7                                           ; $58f4: $fe $a7
	db $fc                                           ; $58f6: $fc
	daa                                              ; $58f7: $27
	db $fc                                           ; $58f8: $fc
	cpl                                              ; $58f9: $2f
	ld hl, sp+$4f                                    ; $58fa: $f8 $4f
	ld hl, sp+$5f                                    ; $58fc: $f8 $5f
	ld b, b                                          ; $58fe: $40
	ld a, a                                          ; $58ff: $7f
	adc [hl]                                         ; $5900: $8e
	ld a, a                                          ; $5901: $7f
	ld b, [hl]                                       ; $5902: $46
	ld h, a                                          ; $5903: $67
	ld a, $5f                                        ; $5904: $3e $5f
	ld b, b                                          ; $5906: $40
	ld e, a                                          ; $5907: $5f
	ld h, b                                          ; $5908: $60
	sub l                                            ; $5909: $95
	ld [hl], e                                       ; $590a: $73
	dec e                                            ; $590b: $1d
	cp a                                             ; $590c: $bf
	add c                                            ; $590d: $81
	cp $e1                                           ; $590e: $fe $e1
	ld a, [hl]                                       ; $5910: $7e
	ld [hl], b                                       ; $5911: $70
	ldh a, [$d0]                                     ; $5912: $f0 $d0
	inc de                                           ; $5914: $13
	ld h, b                                          ; $5915: $60
	sbc h                                            ; $5916: $9c
	db $10                                           ; $5917: $10
	rlca                                             ; $5918: $07
	ld bc, $5e6f                                     ; $5919: $01 $6f $5e
	sbc l                                            ; $591c: $9d
	ld h, [hl]                                       ; $591d: $66
	dec b                                            ; $591e: $05
	inc sp                                           ; $591f: $33
	ld h, b                                          ; $5920: $60
	sbc [hl]                                         ; $5921: $9e
	inc bc                                           ; $5922: $03
	ld a, e                                          ; $5923: $7b
	ld a, [$5e7b]                                    ; $5924: $fa $7b $5e
	sbc [hl]                                         ; $5927: $9e
	ld a, d                                          ; $5928: $7a
	ld l, e                                          ; $5929: $6b
	ld h, b                                          ; $592a: $60
	ld d, a                                          ; $592b: $57
	add b                                            ; $592c: $80
	sbc [hl]                                         ; $592d: $9e
	add b                                            ; $592e: $80
	ld h, e                                          ; $592f: $63
	ld a, [hl]                                       ; $5930: $7e
	sbc l                                            ; $5931: $9d
	sbc a                                            ; $5932: $9f
	add a                                            ; $5933: $87
	scf                                              ; $5934: $37
	add b                                            ; $5935: $80
	sbc b                                            ; $5936: $98
	ccf                                              ; $5937: $3f
	ld bc, $81be                                     ; $5938: $01 $be $81
	cp $c0                                           ; $593b: $fe $c0
	ld [hl], b                                       ; $593d: $70
	ld [hl], e                                       ; $593e: $73
	ld a, [hl]                                       ; $593f: $7e
	sbc l                                            ; $5940: $9d
	ldh [$80], a                                     ; $5941: $e0 $80
	inc hl                                           ; $5943: $23
	add b                                            ; $5944: $80
	sbc l                                            ; $5945: $9d
	nop                                              ; $5946: $00
	rrca                                             ; $5947: $0f
	ld a, e                                          ; $5948: $7b
	ld a, [hl]                                       ; $5949: $7e
	rst SubAFromDE                                          ; $594a: $df
	dec b                                            ; $594b: $05
	sbc l                                            ; $594c: $9d
	ld h, a                                          ; $594d: $67
	rlca                                             ; $594e: $07
	dec hl                                           ; $594f: $2b
	add b                                            ; $5950: $80
	sub h                                            ; $5951: $94
	rlca                                             ; $5952: $07
	cp $c7                                           ; $5953: $fe $c7
	cp $ff                                           ; $5955: $fe $ff
	ld a, [$79ef]                                    ; $5957: $fa $ef $79
	rst GetHLinHL                                          ; $595a: $cf
	push af                                          ; $595b: $f5
	sbc a                                            ; $595c: $9f
	ld b, a                                          ; $595d: $47
	add b                                            ; $595e: $80
	ld a, a                                          ; $595f: $7f
	cp $99                                           ; $5960: $fe $99
	add [hl]                                         ; $5962: $86
	ld b, $99                                        ; $5963: $06 $99
	add hl, de                                       ; $5965: $19
	sbc h                                            ; $5966: $9c
	inc c                                            ; $5967: $0c
	daa                                              ; $5968: $27
	add b                                            ; $5969: $80
	sbc b                                            ; $596a: $98
	ld e, $01                                        ; $596b: $1e $01
	ld c, $00                                        ; $596d: $0e $00
	ldh [$e0], a                                     ; $596f: $e0 $e0
	nop                                              ; $5971: $00
	ld a, e                                          ; $5972: $7b
	db $fc                                           ; $5973: $fc
	sbc l                                            ; $5974: $9d
	ldh [$c0], a                                     ; $5975: $e0 $c0
	dec de                                           ; $5977: $1b
	add b                                            ; $5978: $80
	sbc d                                            ; $5979: $9a
	inc bc                                           ; $597a: $03
	rrca                                             ; $597b: $0f
	nop                                              ; $597c: $00
	rlca                                             ; $597d: $07
	inc b                                            ; $597e: $04
	inc de                                           ; $597f: $13
	add b                                            ; $5980: $80
	sbc e                                            ; $5981: $9b
	rrca                                             ; $5982: $0f
	ld a, [$f97f]                                    ; $5983: $fa $7f $f9
	ld [hl], e                                       ; $5986: $73
	add b                                            ; $5987: $80
	db $fd                                           ; $5988: $fd
	sbc c                                            ; $5989: $99
	inc bc                                           ; $598a: $03
	nop                                              ; $598b: $00
	inc b                                            ; $598c: $04
	inc b                                            ; $598d: $04
	inc bc                                           ; $598e: $03
	inc bc                                           ; $598f: $03
	ld [hl], a                                       ; $5990: $77
	ld hl, sp+$7f                                    ; $5991: $f8 $7f
	add b                                            ; $5993: $80
	ld a, a                                          ; $5994: $7f
	xor b                                            ; $5995: $a8
	add b                                            ; $5996: $80
	ld a, c                                          ; $5997: $79
	ldh a, [$1f]                                     ; $5998: $f0 $1f
	rst $38                                          ; $599a: $ff
	rst GetHLinHL                                          ; $599b: $cf
	cp $3f                                           ; $599c: $fe $3f
	ld a, l                                          ; $599e: $7d
	ld h, $7f                                        ; $599f: $26 $7f
	ld b, d                                          ; $59a1: $42
	rst AddAOntoHL                                          ; $59a2: $ef
	ld b, d                                          ; $59a3: $42
	db $eb                                           ; $59a4: $eb
	ld h, b                                          ; $59a5: $60
	ld b, b                                          ; $59a6: $40
	nop                                              ; $59a7: $00
	nop                                              ; $59a8: $00
	ret nz                                           ; $59a9: $c0

	nop                                              ; $59aa: $00
	ld b, b                                          ; $59ab: $40
	ld b, b                                          ; $59ac: $40
	pop bc                                           ; $59ad: $c1
	add b                                            ; $59ae: $80
	inc bc                                           ; $59af: $03
	ld bc, $0307                                     ; $59b0: $01 $07 $03
	inc e                                            ; $59b3: $1c
	rrca                                             ; $59b4: $0f
	ld a, d                                          ; $59b5: $7a
	sub b                                            ; $59b6: $90
	ccf                                              ; $59b7: $3f
	pop af                                           ; $59b8: $f1
	rst SubAFromDE                                          ; $59b9: $df
	rst SubAFromBC                                          ; $59ba: $e7
	cp a                                             ; $59bb: $bf
	reti                                             ; $59bc: $d9


	ld a, a                                          ; $59bd: $7f
	jp hl                                            ; $59be: $e9


	db $fd                                           ; $59bf: $fd
	ld b, l                                          ; $59c0: $45
	rst FarCall                                          ; $59c1: $f7
	dec h                                            ; $59c2: $25
	ld [hl], a                                       ; $59c3: $77
	daa                                              ; $59c4: $27
	ld a, a                                          ; $59c5: $7f
	ld l, a                                          ; $59c6: $6f
	ret nz                                           ; $59c7: $c0

	sbc l                                            ; $59c8: $9d
	inc c                                            ; $59c9: $0c
	inc b                                            ; $59ca: $04
	sbc $0f                                          ; $59cb: $de $0f
	ld a, a                                          ; $59cd: $7f
	add a                                            ; $59ce: $87
	ld a, a                                          ; $59cf: $7f
	ld b, d                                          ; $59d0: $42
	daa                                              ; $59d1: $27
	ret nz                                           ; $59d2: $c0

	sbc d                                            ; $59d3: $9a
	nop                                              ; $59d4: $00
	pop bc                                           ; $59d5: $c1
	ret nz                                           ; $59d6: $c0

	add e                                            ; $59d7: $83
	add c                                            ; $59d8: $81
	dec bc                                           ; $59d9: $0b
	ret nz                                           ; $59da: $c0

	ld a, a                                          ; $59db: $7f
	cp a                                             ; $59dc: $bf
	sbc e                                            ; $59dd: $9b
	rlca                                             ; $59de: $07
	add b                                            ; $59df: $80
	nop                                              ; $59e0: $00
	and $23                                          ; $59e1: $e6 $23
	ret nz                                           ; $59e3: $c0

	sbc e                                            ; $59e4: $9b
	jp $87c1                                         ; $59e5: $c3 $c1 $87


	add e                                            ; $59e8: $83
	inc bc                                           ; $59e9: $03
	ret nz                                           ; $59ea: $c0

	inc bc                                           ; $59eb: $03
	ret nz                                           ; $59ec: $c0

	ld b, a                                          ; $59ed: $47
	ret nz                                           ; $59ee: $c0

	pop hl                                           ; $59ef: $e1
	ld [bc], a                                       ; $59f0: $02
	pop af                                           ; $59f1: $f1
	db $db                                           ; $59f2: $db
	ld bc, $029d                                     ; $59f3: $01 $9d $02
	inc bc                                           ; $59f6: $03
	ld [hl], a                                       ; $59f7: $77
	cp $9b                                           ; $59f8: $fe $9b
	inc b                                            ; $59fa: $04
	rlca                                             ; $59fb: $07
	inc b                                            ; $59fc: $04
	rlca                                             ; $59fd: $07
	rst SubAFromBC                                          ; $59fe: $e7
	ld [hl], a                                       ; $59ff: $77
	jp c, $07df                                      ; $5a00: $da $df $07

	sbc [hl]                                         ; $5a03: $9e
	ld [$0fde], sp                                   ; $5a04: $08 $de $0f
	add e                                            ; $5a07: $83
	rra                                              ; $5a08: $1f
	db $10                                           ; $5a09: $10
	ccf                                              ; $5a0a: $3f
	jr nz, @+$81                                     ; $5a0b: $20 $7f

	ld b, b                                          ; $5a0d: $40
	ld a, a                                          ; $5a0e: $7f
	ld b, b                                          ; $5a0f: $40
	rst $38                                          ; $5a10: $ff
	ldh [$9f], a                                     ; $5a11: $e0 $9f
	ld hl, sp+$67                                    ; $5a13: $f8 $67
	cp $19                                           ; $5a15: $fe $19
	rst $38                                          ; $5a17: $ff
	ld b, $ff                                        ; $5a18: $06 $ff
	ld b, c                                          ; $5a1a: $41
	cp a                                             ; $5a1b: $bf
	ld h, b                                          ; $5a1c: $60
	sbc a                                            ; $5a1d: $9f
	jr c, @-$37                                      ; $5a1e: $38 $c7

	adc l                                            ; $5a20: $8d
	ld [hl], e                                       ; $5a21: $73
	ld b, a                                          ; $5a22: $47
	cp c                                             ; $5a23: $b9
	rla                                              ; $5a24: $17
	ret nz                                           ; $5a25: $c0

	ld l, a                                          ; $5a26: $6f
	sbc b                                            ; $5a27: $98
	ld a, a                                          ; $5a28: $7f
	sbc h                                            ; $5a29: $9c
	add [hl]                                         ; $5a2a: $86
	dec b                                            ; $5a2b: $05
	rlca                                             ; $5a2c: $07
	dec b                                            ; $5a2d: $05
	rrca                                             ; $5a2e: $0f
	add hl, bc                                       ; $5a2f: $09
	rrca                                             ; $5a30: $0f
	ld [de], a                                       ; $5a31: $12
	rra                                              ; $5a32: $1f
	ld d, $1f                                        ; $5a33: $16 $1f
	ld a, [hl+]                                      ; $5a35: $2a
	dec sp                                           ; $5a36: $3b
	dec hl                                           ; $5a37: $2b
	ld a, [hl-]                                      ; $5a38: $3a
	ld b, l                                          ; $5a39: $45
	halt                                             ; $5a3a: $76
	ld d, [hl]                                       ; $5a3b: $56
	ld [hl], l                                       ; $5a3c: $75
	ld d, a                                          ; $5a3d: $57
	ld [hl], l                                       ; $5a3e: $75
	xor e                                            ; $5a3f: $ab
	db $ed                                           ; $5a40: $ed
	xor c                                            ; $5a41: $a9
	rst AddAOntoHL                                          ; $5a42: $ef
	xor d                                            ; $5a43: $aa
	ld a, e                                          ; $5a44: $7b
	cp $7f                                           ; $5a45: $fe $7f
	db $fd                                           ; $5a47: $fd

jr_06d_5a48:
	sub a                                            ; $5a48: $97
	ld l, a                                          ; $5a49: $6f
	ld l, d                                          ; $5a4a: $6a
	ld l, l                                          ; $5a4b: $6d
	ld l, c                                          ; $5a4c: $69
	ld l, l                                          ; $5a4d: $6d
	dec l                                            ; $5a4e: $2d
	dec l                                            ; $5a4f: $2d
	dec h                                            ; $5a50: $25
	db $dd                                           ; $5a51: $dd
	inc h                                            ; $5a52: $24
	rst SubAFromDE                                          ; $5a53: $df
	inc b                                            ; $5a54: $04
	rst $38                                          ; $5a55: $ff
	rst SubAFromDE                                          ; $5a56: $df
	inc bc                                           ; $5a57: $03
	rst SubAFromDE                                          ; $5a58: $df
	rlca                                             ; $5a59: $07
	adc [hl]                                         ; $5a5a: $8e
	inc c                                            ; $5a5b: $0c
	rrca                                             ; $5a5c: $0f
	ld [hl], b                                       ; $5a5d: $70
	ld a, a                                          ; $5a5e: $7f
	add c                                            ; $5a5f: $81
	rst $38                                          ; $5a60: $ff
	ld bc, $81ff                                     ; $5a61: $01 $ff $81
	rst $38                                          ; $5a64: $ff
	rst $38                                          ; $5a65: $ff
	ld a, c                                          ; $5a66: $79
	cp $87                                           ; $5a67: $fe $87
	ld a, l                                          ; $5a69: $7d
	ld a, a                                          ; $5a6a: $7f
	add hl, bc                                       ; $5a6b: $09
	ld a, e                                          ; $5a6c: $7b
	ret nz                                           ; $5a6d: $c0

	adc c                                            ; $5a6e: $89
	ld d, $1e                                        ; $5a6f: $16 $1e
	inc d                                            ; $5a71: $14
	ld e, $28                                        ; $5a72: $1e $28
	jr c, jr_06d_5a9e                                ; $5a74: $38 $28

	jr c, jr_06d_5a48                                ; $5a76: $38 $d0

	ldh a, [$d0]                                     ; $5a78: $f0 $d0
	ld [hl], b                                       ; $5a7a: $70
	ldh [rSVBK], a                                   ; $5a7b: $e0 $70
	and b                                            ; $5a7d: $a0
	db $fc                                           ; $5a7e: $fc
	cp h                                             ; $5a7f: $bc
	rst $38                                          ; $5a80: $ff
	ccf                                              ; $5a81: $3f
	db $e3                                           ; $5a82: $e3
	ld a, a                                          ; $5a83: $7f
	ret nz                                           ; $5a84: $c0

	push hl                                          ; $5a85: $e5
	rst SubAFromDE                                          ; $5a86: $df
	ld bc, $817f                                     ; $5a87: $01 $7f $81
	add b                                            ; $5a8a: $80
	ld b, $05                                        ; $5a8b: $06 $05
	dec c                                            ; $5a8d: $0d
	ld a, [bc]                                       ; $5a8e: $0a
	inc de                                           ; $5a8f: $13
	inc e                                            ; $5a90: $1c
	ld d, $19                                        ; $5a91: $16 $19
	dec h                                            ; $5a93: $25
	ld a, [hl-]                                      ; $5a94: $3a
	add hl, hl                                       ; $5a95: $29
	ld [hl], $3a                                     ; $5a96: $36 $3a
	dec h                                            ; $5a98: $25
	ld d, d                                          ; $5a99: $52
	ld l, l                                          ; $5a9a: $6d
	ld d, l                                          ; $5a9b: $55
	ld l, d                                          ; $5a9c: $6a
	ld l, c                                          ; $5a9d: $69

jr_06d_5a9e:
	ld d, [hl]                                       ; $5a9e: $56
	xor e                                            ; $5a9f: $ab
	call nc, $ed93                                   ; $5aa0: $d4 $93 $ed
	sub l                                            ; $5aa3: $95
	db $eb                                           ; $5aa4: $eb
	ld h, [hl]                                       ; $5aa5: $66
	db $db                                           ; $5aa6: $db
	ld a, d                                          ; $5aa7: $7a
	rst SubAFromHL                                          ; $5aa8: $d7
	jp z, $b786                                      ; $5aa9: $ca $86 $b7

	db $f4                                           ; $5aac: $f4
	xor a                                            ; $5aad: $af
	or l                                             ; $5aae: $b5
	rst AddAOntoHL                                          ; $5aaf: $ef
	ld a, [hl-]                                      ; $5ab0: $3a
	rst AddAOntoHL                                          ; $5ab1: $ef
	ld l, h                                          ; $5ab2: $6c
	rst SubAFromDE                                          ; $5ab3: $df
	ld a, a                                          ; $5ab4: $7f
	rst SubAFromDE                                          ; $5ab5: $df
	ld [hl], d                                       ; $5ab6: $72
	rst SubAFromDE                                          ; $5ab7: $df
	sub $bb                                          ; $5ab8: $d6 $bb
	sub $bb                                          ; $5aba: $d6 $bb
	ld [$eab7], a                                    ; $5abc: $ea $b7 $ea
	or a                                             ; $5abf: $b7
	db $ec                                           ; $5ac0: $ec
	or a                                             ; $5ac1: $b7
	ld l, l                                          ; $5ac2: $6d
	or [hl]                                          ; $5ac3: $b6
	ld [hl], a                                       ; $5ac4: $77
	cp $96                                           ; $5ac5: $fe $96
	dec l                                            ; $5ac7: $2d
	or $2d                                           ; $5ac8: $f6 $2d
	rst FarCall                                          ; $5aca: $f7
	dec h                                            ; $5acb: $25
	rst $38                                          ; $5acc: $ff
	dec h                                            ; $5acd: $25
	rst $38                                          ; $5ace: $ff
	dec d                                            ; $5acf: $15
	ld [hl], e                                       ; $5ad0: $73
	cp $80                                           ; $5ad1: $fe $80
	sub l                                            ; $5ad3: $95
	rst $38                                          ; $5ad4: $ff
	sbc h                                            ; $5ad5: $9c
	rst $38                                          ; $5ad6: $ff
	xor [hl]                                         ; $5ad7: $ae
	rst SubAFromBC                                          ; $5ad8: $e7
	sbc $c3                                          ; $5ad9: $de $c3
	sbc $c3                                          ; $5adb: $de $c3
	cp [hl]                                          ; $5add: $be
	add e                                            ; $5ade: $83
	cp a                                             ; $5adf: $bf
	add c                                            ; $5ae0: $81
	cp a                                             ; $5ae1: $bf
	add c                                            ; $5ae2: $81
	ld a, a                                          ; $5ae3: $7f
	ld sp, $486f                                     ; $5ae4: $31 $6f $48
	ld a, a                                          ; $5ae7: $7f
	ld c, b                                          ; $5ae8: $48
	ld a, a                                          ; $5ae9: $7f
	ld sp, $c2fe                                     ; $5aea: $31 $fe $c2
	ccf                                              ; $5aed: $3f
	rst $38                                          ; $5aee: $ff
	ld [hl], b                                       ; $5aef: $70
	rst $38                                          ; $5af0: $ff
	ldh [$9a], a                                     ; $5af1: $e0 $9a
	rst $38                                          ; $5af3: $ff
	inc a                                            ; $5af4: $3c
	rra                                              ; $5af5: $1f
	rlca                                             ; $5af6: $07
	inc bc                                           ; $5af7: $03

jr_06d_5af8:
	ld d, e                                          ; $5af8: $53
	add d                                            ; $5af9: $82
	cp a                                             ; $5afa: $bf
	ldh [c], a                                       ; $5afb: $e2
	db $fd                                           ; $5afc: $fd
	sbc [hl]                                         ; $5afd: $9e
	ldh [$ed], a                                     ; $5afe: $e0 $ed
	rst SubAFromDE                                          ; $5b00: $df
	inc bc                                           ; $5b01: $03
	add b                                            ; $5b02: $80
	inc e                                            ; $5b03: $1c
	rra                                              ; $5b04: $1f
	cpl                                              ; $5b05: $2f
	jr nc, jr_06d_5af8                               ; $5b06: $30 $f0

	rst GetHLinHL                                          ; $5b08: $cf
	rst GetHLinHL                                          ; $5b09: $cf
	jr nc, @+$35                                     ; $5b0a: $30 $33

	call z, $b344                                    ; $5b0c: $cc $44 $b3
	xor b                                            ; $5b0f: $a8
	ld b, h                                          ; $5b10: $44
	ld b, b                                          ; $5b11: $40
	sbc c                                            ; $5b12: $99
	sub b                                            ; $5b13: $90
	ld h, $a1                                        ; $5b14: $26 $a1
	ld c, h                                          ; $5b16: $4c
	ld b, d                                          ; $5b17: $42
	sbc c                                            ; $5b18: $99
	dec d                                            ; $5b19: $15
	or d                                             ; $5b1a: $b2
	cp e                                             ; $5b1b: $bb
	inc h                                            ; $5b1c: $24
	db $d3                                           ; $5b1d: $d3
	ld l, l                                          ; $5b1e: $6d
	ld h, l                                          ; $5b1f: $65
	db $db                                           ; $5b20: $db
	res 2, h                                         ; $5b21: $cb $94
	or [hl]                                          ; $5b23: $b6
	ld b, a                                          ; $5b24: $47
	cp h                                             ; $5b25: $bc
	adc d                                            ; $5b26: $8a
	ld a, l                                          ; $5b27: $7d
	dec d                                            ; $5b28: $15
	ei                                               ; $5b29: $fb
	ld l, $f3                                        ; $5b2a: $2e $f3
	ld e, l                                          ; $5b2c: $5d
	and $e0                                          ; $5b2d: $e6 $e0
	pop bc                                           ; $5b2f: $c1
	rst SubAFromDE                                          ; $5b30: $df
	ld [hl], b                                       ; $5b31: $70
	adc b                                            ; $5b32: $88
	inc e                                            ; $5b33: $1c
	inc c                                            ; $5b34: $0c
	rst JumpTable                                          ; $5b35: $c7
	add d                                            ; $5b36: $82
	ld [hl], c                                       ; $5b37: $71
	pop hl                                           ; $5b38: $e1
	inc e                                            ; $5b39: $1c
	ld hl, sp+$04                                    ; $5b3a: $f8 $04
	db $fc                                           ; $5b3c: $fc
	ld [bc], a                                       ; $5b3d: $02
	cp $e1                                           ; $5b3e: $fe $e1
	rst $38                                          ; $5b40: $ff
	dec de                                           ; $5b41: $1b
	ld e, $07                                        ; $5b42: $1e $07
	dec b                                            ; $5b44: $05
	inc bc                                           ; $5b45: $03
	inc bc                                           ; $5b46: $03
	rla                                              ; $5b47: $17
	ld bc, $be2b                                     ; $5b48: $01 $2b $be
	ld d, a                                          ; $5b4b: $57
	xor a                                            ; $5b4c: $af
	rst SubAFromHL                                          ; $5b4d: $d7
	ld a, a                                          ; $5b4e: $7f
	ld e, e                                          ; $5b4f: $5b
	ld a, [hl-]                                      ; $5b50: $3a
	ld a, [bc]                                       ; $5b51: $0a
	add b                                            ; $5b52: $80
	ld a, [$e4fb]                                    ; $5b53: $fa $fb $e4
	rra                                              ; $5b56: $1f
	rrca                                             ; $5b57: $0f
	rst $38                                          ; $5b58: $ff
	db $fc                                           ; $5b59: $fc
	inc bc                                           ; $5b5a: $03
	pop hl                                           ; $5b5b: $e1
	rra                                              ; $5b5c: $1f
	ld a, [de]                                       ; $5b5d: $1a
	rst SubAFromBC                                          ; $5b5e: $e7
	ld a, $04                                        ; $5b5f: $3e $04
	ld [$290c], sp                                   ; $5b61: $08 $0c $29
	jr @+$3a                                         ; $5b64: $18 $38

	ld d, c                                          ; $5b66: $51
	ld [hl], b                                       ; $5b67: $70
	and b                                            ; $5b68: $a0
	adc b                                            ; $5b69: $88
	ld h, h                                          ; $5b6a: $64
	ld d, c                                          ; $5b6b: $51
	call z, $99ee                                    ; $5b6c: $cc $ee $99
	ld e, l                                          ; $5b6f: $5d
	or e                                             ; $5b70: $b3
	xor l                                            ; $5b71: $ad
	sub d                                            ; $5b72: $92
	ld [hl], e                                       ; $5b73: $73
	db $db                                           ; $5b74: $db
	ld h, [hl]                                       ; $5b75: $66
	ld [hl], l                                       ; $5b76: $75
	adc $a7                                          ; $5b77: $ce $a7
	call c, $bc4b                                    ; $5b79: $dc $4b $bc
	sub $39                                          ; $5b7c: $d6 $39
	cp l                                             ; $5b7e: $bd
	ld [hl], e                                       ; $5b7f: $73
	ldh [$c1], a                                     ; $5b80: $e0 $c1
	add [hl]                                         ; $5b82: $86
	ld a, [$fb02]                                    ; $5b83: $fa $02 $fb
	inc bc                                           ; $5b86: $03
	ldh a, [c]                                       ; $5b87: $f2
	ld [bc], a                                       ; $5b88: $02
	ld b, [hl]                                       ; $5b89: $46
	add [hl]                                         ; $5b8a: $86
	add h                                            ; $5b8b: $84
	call nz, Call_06d_6fcf                           ; $5b8c: $c4 $cf $6f
	inc a                                            ; $5b8f: $3c
	ccf                                              ; $5b90: $3f
	and h                                            ; $5b91: $a4
	cp a                                             ; $5b92: $bf
	ldh [c], a                                       ; $5b93: $e2
	rst $38                                          ; $5b94: $ff
	add e                                            ; $5b95: $83
	rst $38                                          ; $5b96: $ff
	ld [bc], a                                       ; $5b97: $02
	rst $38                                          ; $5b98: $ff
	inc bc                                           ; $5b99: $03
	rst $38                                          ; $5b9a: $ff
	add d                                            ; $5b9b: $82
	ld a, e                                          ; $5b9c: $7b
	cp $9b                                           ; $5b9d: $fe $9b
	add h                                            ; $5b9f: $84
	rst $38                                          ; $5ba0: $ff
	inc b                                            ; $5ba1: $04
	rst $38                                          ; $5ba2: $ff
	pop af                                           ; $5ba3: $f1
	rst SubAFromDE                                          ; $5ba4: $df
	add b                                            ; $5ba5: $80
	rst $38                                          ; $5ba6: $ff
	rst SubAFromDE                                          ; $5ba7: $df
	ccf                                              ; $5ba8: $3f
	add b                                            ; $5ba9: $80
	rst JumpTable                                          ; $5baa: $c7
	ld hl, sp+$1c                                    ; $5bab: $f8 $1c
	db $e3                                           ; $5bad: $e3
	sub a                                            ; $5bae: $97
	db $ec                                           ; $5baf: $ec
	rst AddAOntoHL                                          ; $5bb0: $ef
	ld hl, sp+$1c                                    ; $5bb1: $f8 $1c
	ei                                               ; $5bb3: $fb
	ret                                              ; $5bb4: $c9


	ccf                                              ; $5bb5: $3f
	xor l                                            ; $5bb6: $ad
	ld e, a                                          ; $5bb7: $5f
	ld [hl], d                                       ; $5bb8: $72
	sbc a                                            ; $5bb9: $9f
	cp c                                             ; $5bba: $b9
	daa                                              ; $5bbb: $27
	ld bc, $e867                                     ; $5bbc: $01 $67 $e8
	ld b, a                                          ; $5bbf: $47
	inc c                                            ; $5bc0: $0c
	rst JumpTable                                          ; $5bc1: $c7
	sbc d                                            ; $5bc2: $9a
	adc l                                            ; $5bc3: $8d
	ld a, [hl+]                                      ; $5bc4: $2a
	sbc l                                            ; $5bc5: $9d
	ld c, l                                          ; $5bc6: $4d
	ld a, [hl-]                                      ; $5bc7: $3a
	ld d, c                                          ; $5bc8: $51
	sub h                                            ; $5bc9: $94
	ld a, [hl-]                                      ; $5bca: $3a
	sub l                                            ; $5bcb: $95
	ld a, d                                          ; $5bcc: $7a
	jr nc, @+$01                                     ; $5bcd: $30 $ff

	ld [hl], h                                       ; $5bcf: $74
	rst SubAFromDE                                          ; $5bd0: $df
	db $f4                                           ; $5bd1: $f4
	sbc a                                            ; $5bd2: $9f
	or h                                             ; $5bd3: $b4
	rra                                              ; $5bd4: $1f
	ldh [$c1], a                                     ; $5bd5: $e0 $c1
	add b                                            ; $5bd7: $80
	cp b                                             ; $5bd8: $b8

jr_06d_5bd9:
	sbc a                                            ; $5bd9: $9f
	sub b                                            ; $5bda: $90
	sbc a                                            ; $5bdb: $9f
	jr nz, jr_06d_5c1d                               ; $5bdc: $20 $3f

	ld h, c                                          ; $5bde: $61
	ld a, a                                          ; $5bdf: $7f
	ret nz                                           ; $5be0: $c0

	rst $38                                          ; $5be1: $ff
	rlca                                             ; $5be2: $07
	rst $38                                          ; $5be3: $ff
	jr @+$01                                         ; $5be4: $18 $ff

	daa                                              ; $5be6: $27
	rst $38                                          ; $5be7: $ff
	ret c                                            ; $5be8: $d8

	rst $38                                          ; $5be9: $ff
	jr nz, @+$01                                     ; $5bea: $20 $ff

	pop bc                                           ; $5bec: $c1
	rst $38                                          ; $5bed: $ff
	rlca                                             ; $5bee: $07
	cp $0f                                           ; $5bef: $fe $0f
	ld hl, sp+$1f                                    ; $5bf1: $f8 $1f
	ldh a, [$2f]                                     ; $5bf3: $f0 $2f
	ldh a, [$5f]                                     ; $5bf5: $f0 $5f
	ld [hl-], a                                      ; $5bf7: $32
	jr nz, jr_06d_5bd9                               ; $5bf8: $20 $df

	ret nz                                           ; $5bfa: $c0

	add b                                            ; $5bfb: $80
	cp b                                             ; $5bfc: $b8
	ld a, b                                          ; $5bfd: $78
	inc b                                            ; $5bfe: $04
	db $fc                                           ; $5bff: $fc
	ei                                               ; $5c00: $fb
	rlca                                             ; $5c01: $07
	ld [hl], b                                       ; $5c02: $70
	rst $38                                          ; $5c03: $ff
	sbc b                                            ; $5c04: $98
	rst AddAOntoHL                                          ; $5c05: $ef
	inc c                                            ; $5c06: $0c
	add a                                            ; $5c07: $87
	sub a                                            ; $5c08: $97

jr_06d_5c09:
	ld [hl+], a                                      ; $5c09: $22
	sub e                                            ; $5c0a: $93
	ld a, c                                          ; $5c0b: $79
	add hl, bc                                       ; $5c0c: $09
	call z, $c6a4                                    ; $5c0d: $cc $a4 $c6
	rst FarCall                                          ; $5c10: $f7
	add d                                            ; $5c11: $82
	ld [hl+], a                                      ; $5c12: $22
	db $d3                                           ; $5c13: $d3
	ld bc, $cbfb                                     ; $5c14: $01 $fb $cb
	cp c                                             ; $5c17: $b9
	res 5, l                                         ; $5c18: $cb $ad
	adc d                                            ; $5c1a: $8a
	sub l                                            ; $5c1b: $95
	xor l                                            ; $5c1c: $ad

jr_06d_5c1d:
	db $e4                                           ; $5c1d: $e4
	xor a                                            ; $5c1e: $af
	db $f4                                           ; $5c1f: $f4

jr_06d_5c20:
	xor a                                            ; $5c20: $af
	and h                                            ; $5c21: $a4
	rst $38                                          ; $5c22: $ff
	and h                                            ; $5c23: $a4
	rst $38                                          ; $5c24: $ff
	and [hl]                                         ; $5c25: $a6
	ld b, e                                          ; $5c26: $43
	jr nz, jr_06d_5c09                               ; $5c27: $20 $e0

	pop de                                           ; $5c29: $d1
	sub [hl]                                         ; $5c2a: $96
	db $ed                                           ; $5c2b: $ed
	rst $38                                          ; $5c2c: $ff
	ret                                              ; $5c2d: $c9


	rst $38                                          ; $5c2e: $ff
	add b                                            ; $5c2f: $80
	rst $38                                          ; $5c30: $ff
	nop                                              ; $5c31: $00
	rst $38                                          ; $5c32: $ff

jr_06d_5c33:
	ld a, a                                          ; $5c33: $7f
	ld a, e                                          ; $5c34: $7b
	ld a, [$ffdf]                                    ; $5c35: $fa $df $ff
	adc [hl]                                         ; $5c38: $8e
	ld c, l                                          ; $5c39: $4d
	ret                                              ; $5c3a: $c9


	ld hl, $1ee1                                     ; $5c3b: $21 $e1 $1e
	rst $38                                          ; $5c3e: $ff
	ret nz                                           ; $5c3f: $c0

	rst $38                                          ; $5c40: $ff
	db $e3                                           ; $5c41: $e3
	ccf                                              ; $5c42: $3f
	rst $38                                          ; $5c43: $ff
	ld e, $f3                                        ; $5c44: $1e $f3
	ld bc, $0f8e                                     ; $5c46: $01 $8e $0f
	sub c                                            ; $5c49: $91
	inc de                                           ; $5c4a: $13
	nop                                              ; $5c4b: $00

jr_06d_5c4c:
	rst SubAFromDE                                          ; $5c4c: $df
	add b                                            ; $5c4d: $80
	adc b                                            ; $5c4e: $88
	ld b, b                                          ; $5c4f: $40
	ret nz                                           ; $5c50: $c0

	jr nz, jr_06d_5c33                               ; $5c51: $20 $e0

	sub b                                            ; $5c53: $90
	ld [hl], b                                       ; $5c54: $70
	ret z                                            ; $5c55: $c8

	jr c, jr_06d_5c20                                ; $5c56: $38 $c8

	cp b                                             ; $5c58: $b8
	or h                                             ; $5c59: $b4
	call c, $df6b                                    ; $5c5a: $dc $6b $df
	sbc $6e                                          ; $5c5d: $de $6e
	or h                                             ; $5c5f: $b4
	ld l, h                                          ; $5c60: $6c
	ldh a, [c]                                       ; $5c61: $f2
	ld l, $6a                                        ; $5c62: $2e $6a
	or [hl]                                          ; $5c64: $b6
	jp c, $fe7b                                      ; $5c65: $da $7b $fe

	sbc d                                            ; $5c68: $9a
	pop de                                           ; $5c69: $d1
	cp a                                             ; $5c6a: $bf
	adc c                                            ; $5c6b: $89
	rst $38                                          ; $5c6c: $ff
	ld c, c                                          ; $5c6d: $49
	ld a, e                                          ; $5c6e: $7b
	cp $e0                                           ; $5c6f: $fe $e0
	pop bc                                           ; $5c71: $c1
	adc l                                            ; $5c72: $8d
	rst SubAFromDE                                          ; $5c73: $df
	rra                                              ; $5c74: $1f
	add [hl]                                         ; $5c75: $86
	ld bc, $838c                                     ; $5c76: $01 $8c $83
	ld sp, hl                                        ; $5c79: $f9
	add [hl]                                         ; $5c7a: $86
	ld [hl], b                                       ; $5c7b: $70
	call $c378                                       ; $5c7c: $cd $78 $c3

Jump_06d_5c7f:
	ldh a, [hDisp0_OBP1]                                     ; $5c7f: $f0 $87
	ld b, b                                          ; $5c81: $40
	rst GetHLinHL                                          ; $5c82: $cf
	ld d, a                                          ; $5c83: $57
	ret z                                            ; $5c84: $c8

	ld a, d                                          ; $5c85: $7a
	or l                                             ; $5c86: $b5
	sub h                                            ; $5c87: $94
	add e                                            ; $5c88: $83
	db $fc                                           ; $5c89: $fc
	rra                                              ; $5c8a: $1f
	db $e3                                           ; $5c8b: $e3
	rst $38                                          ; $5c8c: $ff
	rra                                              ; $5c8d: $1f
	db $fc                                           ; $5c8e: $fc
	ld a, a                                          ; $5c8f: $7f
	ldh [rIE], a                                     ; $5c90: $e0 $ff
	add c                                            ; $5c92: $81
	ld h, a                                          ; $5c93: $67
	ld a, d                                          ; $5c94: $7a
	rst SubAFromDE                                          ; $5c95: $df
	ldh a, [$d7]                                     ; $5c96: $f0 $d7
	add b                                            ; $5c98: $80
	ld a, a                                          ; $5c99: $7f
	ldh a, [rPCM34]                                  ; $5c9a: $f0 $77
	xor $77                                          ; $5c9c: $ee $77
	cp $9b                                           ; $5c9e: $fe $9b
	sub b                                            ; $5ca0: $90
	ldh a, [$50]                                     ; $5ca1: $f0 $50
	ld [hl], b                                       ; $5ca3: $70
	ld l, a                                          ; $5ca4: $6f
	cp $9d                                           ; $5ca5: $fe $9d
	jr nz, jr_06d_5d09                               ; $5ca7: $20 $60

	ld [hl], a                                       ; $5ca9: $77
	cp $9d                                           ; $5caa: $fe $9d
	and b                                            ; $5cac: $a0
	ldh [$dd], a                                     ; $5cad: $e0 $dd
	ret nz                                           ; $5caf: $c0

	db $dd                                           ; $5cb0: $dd
	add b                                            ; $5cb1: $80
	ld d, a                                          ; $5cb2: $57
	ld a, [hl-]                                      ; $5cb3: $3a
	ld a, a                                          ; $5cb4: $7f
	pop de                                           ; $5cb5: $d1
	ld a, a                                          ; $5cb6: $7f
	push de                                          ; $5cb7: $d5
	adc d                                            ; $5cb8: $8a
	ret nc                                           ; $5cb9: $d0

	jr nc, jr_06d_5c4c                               ; $5cba: $30 $90

	ld [hl], b                                       ; $5cbc: $70
	jr c, @-$26                                      ; $5cbd: $38 $d8

	add sp, $38                                      ; $5cbf: $e8 $38
	call c, $bc74                                    ; $5cc1: $dc $74 $bc
	db $e4                                           ; $5cc4: $e4
	ld a, [hl]                                       ; $5cc5: $7e
	jp nz, $c2fe                                     ; $5cc6: $c2 $fe $c2

	rst $38                                          ; $5cc9: $ff
	rrca                                             ; $5cca: $0f
	pop af                                           ; $5ccb: $f1
	ld a, a                                          ; $5ccc: $7f
	adc a                                            ; $5ccd: $8f
	ld a, b                                          ; $5cce: $78
	ld l, b                                          ; $5ccf: $68
	dec h                                            ; $5cd0: $25
	nop                                              ; $5cd1: $00
	rst SubAFromDE                                          ; $5cd2: $df
	rst $38                                          ; $5cd3: $ff
	sub c                                            ; $5cd4: $91
	adc b                                            ; $5cd5: $88
	sbc c                                            ; $5cd6: $99
	sbc c                                            ; $5cd7: $99
	rst $38                                          ; $5cd8: $ff
	ld [hl+], a                                      ; $5cd9: $22
	sbc c                                            ; $5cda: $99
	sbc c                                            ; $5cdb: $99
	ld de, $3333                                     ; $5cdc: $11 $33 $33
	sbc c                                            ; $5cdf: $99
	ld de, $9999                                     ; $5ce0: $11 $99 $99
	ld [hl], e                                       ; $5ce3: $73
	ei                                               ; $5ce4: $fb

jr_06d_5ce5:
	sbc [hl]                                         ; $5ce5: $9e
	ld b, h                                          ; $5ce6: $44
	ld [hl], a                                       ; $5ce7: $77
	ei                                               ; $5ce8: $fb
	sbc [hl]                                         ; $5ce9: $9e
	ld d, l                                          ; $5cea: $55
	ld [hl], a                                       ; $5ceb: $77
	ei                                               ; $5cec: $fb
	sbc [hl]                                         ; $5ced: $9e
	ld h, [hl]                                       ; $5cee: $66
	db $dd                                           ; $5cef: $dd
	sbc c                                            ; $5cf0: $99
	ld a, e                                          ; $5cf1: $7b
	ei                                               ; $5cf2: $fb
	sbc [hl]                                         ; $5cf3: $9e
	xor $bb                                          ; $5cf4: $ee $bb
	ld bc, $be86                                     ; $5cf6: $01 $86 $be
	call $bb5c                                       ; $5cf9: $cd $5c $bb
	add hl, sp                                       ; $5cfc: $39
	rst FarCall                                          ; $5cfd: $f7
	db $e3                                           ; $5cfe: $e3
	cp $4f                                           ; $5cff: $fe $4f
	db $fd                                           ; $5d01: $fd
	rst $38                                          ; $5d02: $ff
	ei                                               ; $5d03: $fb
	ld c, a                                          ; $5d04: $4f
	ld a, [$f94f]                                    ; $5d05: $fa $4f $f9
	ld l, a                                          ; $5d08: $6f

jr_06d_5d09:
	rst SubAFromDE                                          ; $5d09: $df
	ld l, e                                          ; $5d0a: $6b
	db $db                                           ; $5d0b: $db
	xor d                                            ; $5d0c: $aa
	jp c, $98e8                                      ; $5d0d: $da $e8 $98

	xor b                                            ; $5d10: $a8
	ld [hl], e                                       ; $5d11: $73
	cp $81                                           ; $5d12: $fe $81
	jr z, @-$66                                      ; $5d14: $28 $98

	adc b                                            ; $5d16: $88
	jr c, jr_06d_5ce5                                ; $5d17: $38 $cc

	inc a                                            ; $5d19: $3c
	adc $3c                                          ; $5d1a: $ce $3c
	db $d3                                           ; $5d1c: $d3
	ld a, $d1                                        ; $5d1d: $3e $d1
	ccf                                              ; $5d1f: $3f
	sub c                                            ; $5d20: $91
	ld a, a                                          ; $5d21: $7f
	and e                                            ; $5d22: $a3
	rst $38                                          ; $5d23: $ff
	and h                                            ; $5d24: $a4
	db $fc                                           ; $5d25: $fc
	xor b                                            ; $5d26: $a8
	ld hl, sp-$50                                    ; $5d27: $f8 $b0
	ldh a, [$a0]                                     ; $5d29: $f0 $a0
	ldh [$a0], a                                     ; $5d2b: $e0 $a0
	ldh [rLCDC], a                                   ; $5d2d: $e0 $40
	ret nz                                           ; $5d2f: $c0

	ld b, b                                          ; $5d30: $40
	ret nz                                           ; $5d31: $c0

	db $dd                                           ; $5d32: $dd
	add b                                            ; $5d33: $80
	add d                                            ; $5d34: $82
	ld l, e                                          ; $5d35: $6b
	or $e6                                           ; $5d36: $f6 $e6
	cp h                                             ; $5d38: $bc
	call z, $937b                                    ; $5d39: $cc $7b $93
	rst $38                                          ; $5d3c: $ff
	ccf                                              ; $5d3d: $3f
	db $fc                                           ; $5d3e: $fc
	rst $38                                          ; $5d3f: $ff
	ret nz                                           ; $5d40: $c0

jr_06d_5d41:
	rst $38                                          ; $5d41: $ff
	jr c, jr_06d_5d41                                ; $5d42: $38 $fd

	cp $df                                           ; $5d44: $fe $df
	adc $9d                                          ; $5d46: $ce $9d
	sbc h                                            ; $5d48: $9c
	ldh a, [$f8]                                     ; $5d49: $f0 $f8
	xor b                                            ; $5d4b: $a8
	ret c                                            ; $5d4c: $d8

	db $fc                                           ; $5d4d: $fc
	ld [hl], b                                       ; $5d4e: $70
	inc bc                                           ; $5d4f: $03
	nop                                              ; $5d50: $00
	rrca                                             ; $5d51: $0f
	cp $8a                                           ; $5d52: $fe $8a
	dec h                                            ; $5d54: $25
	ccf                                              ; $5d55: $3f
	add hl, hl                                       ; $5d56: $29
	ccf                                              ; $5d57: $3f
	add hl, hl                                       ; $5d58: $29
	rst $38                                          ; $5d59: $ff
	jp nc, $e6ff                                     ; $5d5a: $d2 $ff $e6

	ld a, a                                          ; $5d5d: $7f
	rst AddAOntoHL                                          ; $5d5e: $ef
	ld e, e                                          ; $5d5f: $5b
	or $9b                                           ; $5d60: $f6 $9b
	rst $38                                          ; $5d62: $ff
	ld [bc], a                                       ; $5d63: $02
	rst SubAFromBC                                          ; $5d64: $e7
	nop                                              ; $5d65: $00
	add d                                            ; $5d66: $82
	ld bc, $de03                                     ; $5d67: $01 $03 $de
	ld bc, $f980                                     ; $5d6a: $01 $80 $f9
	ld bc, $00fd                                     ; $5d6d: $01 $fd $00
	adc [hl]                                         ; $5d70: $8e
	nop                                              ; $5d71: $00
	dec bc                                           ; $5d72: $0b
	inc c                                            ; $5d73: $0c
	ld [hl], $ff                                     ; $5d74: $36 $ff
	ld [hl], a                                       ; $5d76: $77
	db $dd                                           ; $5d77: $dd
	ld a, a                                          ; $5d78: $7f
	reti                                             ; $5d79: $d9


	ld a, a                                          ; $5d7a: $7f
	pop de                                           ; $5d7b: $d1
	sbc a                                            ; $5d7c: $9f
	ldh a, [$e7]                                     ; $5d7d: $f0 $e7
	ld hl, sp-$07                                    ; $5d7f: $f8 $f9
	ld e, $ff                                        ; $5d81: $1e $ff
	ld [hl], a                                       ; $5d83: $77
	rst $38                                          ; $5d84: $ff
	ld hl, sp-$41                                    ; $5d85: $f8 $bf
	sbc [hl]                                         ; $5d87: $9e
	ccf                                              ; $5d88: $3f
	dec [hl]                                         ; $5d89: $35
	rst SubAFromHL                                          ; $5d8a: $d7
	add b                                            ; $5d8b: $80
	pop af                                           ; $5d8c: $f1
	xor l                                            ; $5d8d: $ad
	ld h, e                                          ; $5d8e: $63
	sbc $e3                                          ; $5d8f: $de $e3
	ld a, [bc]                                       ; $5d91: $0a
	rlca                                             ; $5d92: $07
	inc b                                            ; $5d93: $04
	rlca                                             ; $5d94: $07
	dec c                                            ; $5d95: $0d
	ld b, $0b                                        ; $5d96: $06 $0b
	inc c                                            ; $5d98: $0c

jr_06d_5d99:
	dec de                                           ; $5d99: $1b
	inc c                                            ; $5d9a: $0c
	ld sp, $711c                                     ; $5d9b: $31 $1c $71
	inc a                                            ; $5d9e: $3c
	ld d, d                                          ; $5d9f: $52
	ld sp, hl                                        ; $5da0: $f9

jr_06d_5da1:
	sub e                                            ; $5da1: $93
	ld sp, hl                                        ; $5da2: $f9
	daa                                              ; $5da3: $27
	ld sp, hl                                        ; $5da4: $f9
	dec l                                            ; $5da5: $2d
	di                                               ; $5da6: $f3

jr_06d_5da7:
	ld a, [hl+]                                      ; $5da7: $2a
	rst FarCall                                          ; $5da8: $f7
	ldh [c], a                                       ; $5da9: $e2
	ld a, a                                          ; $5daa: $7f
	add b                                            ; $5dab: $80
	db $e4                                           ; $5dac: $e4
	ld a, a                                          ; $5dad: $7f
	call nz, $487f                                   ; $5dae: $c4 $7f $48
	rst $38                                          ; $5db1: $ff
	ret                                              ; $5db2: $c9


	rst $38                                          ; $5db3: $ff
	db $db                                           ; $5db4: $db
	ld a, a                                          ; $5db5: $7f
	ld b, l                                          ; $5db6: $45
	rst $38                                          ; $5db7: $ff
	ld b, h                                          ; $5db8: $44
	rst $38                                          ; $5db9: $ff
	inc h                                            ; $5dba: $24
	rst $38                                          ; $5dbb: $ff
	inc hl                                           ; $5dbc: $23
	rst $38                                          ; $5dbd: $ff
	or d                                             ; $5dbe: $b2
	rst $38                                          ; $5dbf: $ff
	ld [$a5ff], a                                    ; $5dc0: $ea $ff $a5
	rst $38                                          ; $5dc3: $ff
	and h                                            ; $5dc4: $a4
	rst $38                                          ; $5dc5: $ff
	sub h                                            ; $5dc6: $94
	rst $38                                          ; $5dc7: $ff
	jp nc, $d2bf                                     ; $5dc8: $d2 $bf $d2

	sbc b                                            ; $5dcb: $98

jr_06d_5dcc:
	cp a                                             ; $5dcc: $bf
	jp z, $cbbf                                      ; $5dcd: $ca $bf $cb

	cp a                                             ; $5dd0: $bf
	xor l                                            ; $5dd1: $ad
	db $db                                           ; $5dd2: $db
	ld d, a                                          ; $5dd3: $57
	cp $87                                           ; $5dd4: $fe $87
	xor c                                            ; $5dd6: $a9
	rst SubAFromDE                                          ; $5dd7: $df
	or d                                             ; $5dd8: $b2
	sbc $52                                          ; $5dd9: $de $52
	cp [hl]                                          ; $5ddb: $be
	ld d, d                                          ; $5ddc: $52
	cp [hl]                                          ; $5ddd: $be
	sub h                                            ; $5dde: $94
	ld a, h                                          ; $5ddf: $7c
	xor h                                            ; $5de0: $ac
	ld l, h                                          ; $5de1: $6c
	jr z, jr_06d_5dcc                                ; $5de2: $28 $e8

	ld c, b                                          ; $5de4: $48
	ret z                                            ; $5de5: $c8

	ld c, b                                          ; $5de6: $48
	ret z                                            ; $5de7: $c8

	add b                                            ; $5de8: $80
	add b                                            ; $5de9: $80
	nop                                              ; $5dea: $00
	nop                                              ; $5deb: $00
	ldh [$e0], a                                     ; $5dec: $e0 $e0
	ld c, e                                          ; $5dee: $4b
	nop                                              ; $5def: $00
	sbc d                                            ; $5df0: $9a
	ld hl, sp+$6f                                    ; $5df1: $f8 $6f
	reti                                             ; $5df3: $d9


	ld l, a                                          ; $5df4: $6f
	rst SubAFromDE                                          ; $5df5: $df
	ld d, a                                          ; $5df6: $57
	nop                                              ; $5df7: $00
	ld d, e                                          ; $5df8: $53
	jr nz, jr_06d_5d99                               ; $5df9: $20 $9e

	nop                                              ; $5dfb: $00
	ld [hl], a                                       ; $5dfc: $77
	ld e, $9c                                        ; $5dfd: $1e $9c
	add a                                            ; $5dff: $87
	adc [hl]                                         ; $5e00: $8e
	db $fc                                           ; $5e01: $fc
	inc de                                           ; $5e02: $13
	jr nz, jr_06d_5da1                               ; $5e03: $20 $9c

	add e                                            ; $5e05: $83
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	rra                                              ; $5e08: $1f
	jr nz, jr_06d_5da7                               ; $5e09: $20 $9c

	rlca                                             ; $5e0b: $07
	rst $38                                          ; $5e0c: $ff
	ld [hl], b                                       ; $5e0d: $70
	ld a, e                                          ; $5e0e: $7b
	ld e, $9c                                        ; $5e0f: $1e $9c
	sbc a                                            ; $5e11: $9f
	ld d, a                                          ; $5e12: $57
	ld [hl], l                                       ; $5e13: $75
	ld h, a                                          ; $5e14: $67
	jr nz, jr_06d_5e5a                               ; $5e15: $20 $43

	add b                                            ; $5e17: $80
	sbc d                                            ; $5e18: $9a
	ret c                                            ; $5e19: $d8

	ld l, a                                          ; $5e1a: $6f
	reti                                             ; $5e1b: $d9


	xor a                                            ; $5e1c: $af
	rst SubAFromDE                                          ; $5e1d: $df
	inc hl                                           ; $5e1e: $23
	add b                                            ; $5e1f: $80
	ld [hl], e                                       ; $5e20: $73
	ld a, [hl]                                       ; $5e21: $7e
	sbc e                                            ; $5e22: $9b
	sbc [hl]                                         ; $5e23: $9e
	adc [hl]                                         ; $5e24: $8e
	xor b                                            ; $5e25: $a8
	ld hl, sp+$17                                    ; $5e26: $f8 $17
	add b                                            ; $5e28: $80
	sbc [hl]                                         ; $5e29: $9e
	ld bc, $7e7b                                     ; $5e2a: $01 $7b $7e
	ld a, e                                          ; $5e2d: $7b
	add b                                            ; $5e2e: $80
	sbc [hl]                                         ; $5e2f: $9e
	ld bc, $8033                                     ; $5e30: $01 $33 $80
	ld a, a                                          ; $5e33: $7f
	cp [hl]                                          ; $5e34: $be
	sub [hl]                                         ; $5e35: $96
	ld h, b                                          ; $5e36: $60
	rst $38                                          ; $5e37: $ff
	ld sp, hl                                        ; $5e38: $f9
	cp a                                             ; $5e39: $bf
	sbc l                                            ; $5e3a: $9d
	push af                                          ; $5e3b: $f5
	di                                               ; $5e3c: $f3
	xor $73                                          ; $5e3d: $ee $73
	dec hl                                           ; $5e3f: $2b
	add b                                            ; $5e40: $80
	sbc d                                            ; $5e41: $9a
	ret c                                            ; $5e42: $d8

	xor a                                            ; $5e43: $af
	rst SubAFromDE                                          ; $5e44: $df
	db $eb                                           ; $5e45: $eb
	sbc c                                            ; $5e46: $99
	inc hl                                           ; $5e47: $23
	add b                                            ; $5e48: $80
	ld a, a                                          ; $5e49: $7f
	cp $9c                                           ; $5e4a: $fe $9c
	ld hl, sp-$02                                    ; $5e4c: $f8 $fe
	ld b, $de                                        ; $5e4e: $06 $de
	db $fc                                           ; $5e50: $fc
	inc de                                           ; $5e51: $13
	add b                                            ; $5e52: $80
	ld a, a                                          ; $5e53: $7f
	cp $9e                                           ; $5e54: $fe $9e
	ei                                               ; $5e56: $fb
	daa                                              ; $5e57: $27
	nop                                              ; $5e58: $00
	ld [hl], a                                       ; $5e59: $77

jr_06d_5e5a:
	cp [hl]                                          ; $5e5a: $be
	sbc b                                            ; $5e5b: $98
	ld [hl], c                                       ; $5e5c: $71
	rst $38                                          ; $5e5d: $ff
	add hl, bc                                       ; $5e5e: $09
	db $fd                                           ; $5e5f: $fd
	ei                                               ; $5e60: $fb
	cp $f3                                           ; $5e61: $fe $f3
	ld [hl], a                                       ; $5e63: $77
	add b                                            ; $5e64: $80
	ld hl, sp-$69                                    ; $5e65: $f8 $97
	add b                                            ; $5e67: $80
	ldh [$e0], a                                     ; $5e68: $e0 $e0
	inc a                                            ; $5e6a: $3c
	jr @+$10                                         ; $5e6b: $18 $0e

	ld b, $03                                        ; $5e6d: $06 $03
	ld a, e                                          ; $5e6f: $7b
	ld b, e                                          ; $5e70: $43
	rst FarCall                                          ; $5e71: $f7
	sbc $04                                          ; $5e72: $de $04
	sub a                                            ; $5e74: $97
	ld [rRAMG], sp                                   ; $5e75: $08 $00 $00
	ld a, b                                          ; $5e78: $78
	ld c, b                                          ; $5e79: $48
	stop                                             ; $5e7a: $10 $00

jr_06d_5e7c:
	jr nz, jr_06d_5e7c                               ; $5e7c: $20 $fe

	ld a, a                                          ; $5e7e: $7f
	db $e4                                           ; $5e7f: $e4
	rst SubAFromDE                                          ; $5e80: $df
	rlca                                             ; $5e81: $07
	adc a                                            ; $5e82: $8f
	rrca                                             ; $5e83: $0f
	dec e                                            ; $5e84: $1d
	rst $38                                          ; $5e85: $ff
	pop af                                           ; $5e86: $f1
	ld a, [hl]                                       ; $5e87: $7e
	ld h, e                                          ; $5e88: $63
	dec l                                            ; $5e89: $2d
	ld a, $33                                        ; $5e8a: $3e $33
	jr nc, jr_06d_5ebf                               ; $5e8c: $30 $31

	jr nc, jr_06d_5ea3                               ; $5e8e: $30 $13

	ld de, $5757                                     ; $5e90: $11 $57 $57
	ld [hl], a                                       ; $5e93: $77
	ldh [$98], a                                     ; $5e94: $e0 $98
	ld hl, sp-$78                                    ; $5e96: $f8 $88
	ld [hl], b                                       ; $5e98: $70
	ld [hl], b                                       ; $5e99: $70
	nop                                              ; $5e9a: $00
	nop                                              ; $5e9b: $00
	ld h, b                                          ; $5e9c: $60
	inc de                                           ; $5e9d: $13
	ldh [$7f], a                                     ; $5e9e: $e0 $7f

jr_06d_5ea0:
	ldh [c], a                                       ; $5ea0: $e2
	rst $38                                          ; $5ea1: $ff
	sbc [hl]                                         ; $5ea2: $9e

jr_06d_5ea3:
	ld h, e                                          ; $5ea3: $63
	inc hl                                           ; $5ea4: $23
	ldh [$9e], a                                     ; $5ea5: $e0 $9e
	ld hl, sp+$73                                    ; $5ea7: $f8 $73
	rst SubAFromDE                                          ; $5ea9: $df
	ld a, a                                          ; $5eaa: $7f
	ret nz                                           ; $5eab: $c0

	sbc [hl]                                         ; $5eac: $9e
	ld h, a                                          ; $5ead: $67
	ld b, e                                          ; $5eae: $43
	ldh [$bc], a                                     ; $5eaf: $e0 $bc
	ld bc, $be86                                     ; $5eb1: $01 $86 $be
	call $bb5c                                       ; $5eb4: $cd $5c $bb
	add hl, sp                                       ; $5eb7: $39
	rst FarCall                                          ; $5eb8: $f7
	db $e3                                           ; $5eb9: $e3
	cp $4f                                           ; $5eba: $fe $4f
	db $fd                                           ; $5ebc: $fd
	cp $fb                                           ; $5ebd: $fe $fb

jr_06d_5ebf:
	ld c, a                                          ; $5ebf: $4f
	ei                                               ; $5ec0: $fb
	ld c, a                                          ; $5ec1: $4f
	rst $38                                          ; $5ec2: $ff
	ld l, d                                          ; $5ec3: $6a
	jp c, $d868                                      ; $5ec4: $da $68 $d8

	xor b                                            ; $5ec7: $a8
	ret c                                            ; $5ec8: $d8

	add sp, -$68                                     ; $5ec9: $e8 $98
	xor b                                            ; $5ecb: $a8
	ld [hl], e                                       ; $5ecc: $73
	cp $81                                           ; $5ecd: $fe $81
	jr z, @-$66                                      ; $5ecf: $28 $98

	adc b                                            ; $5ed1: $88
	jr c, jr_06d_5ea0                                ; $5ed2: $38 $cc

	inc a                                            ; $5ed4: $3c
	adc $3c                                          ; $5ed5: $ce $3c
	db $d3                                           ; $5ed7: $d3
	ld a, $d1                                        ; $5ed8: $3e $d1
	ccf                                              ; $5eda: $3f
	sub c                                            ; $5edb: $91
	ld a, a                                          ; $5edc: $7f
	and e                                            ; $5edd: $a3
	rst $38                                          ; $5ede: $ff
	and h                                            ; $5edf: $a4
	db $fc                                           ; $5ee0: $fc
	xor b                                            ; $5ee1: $a8
	ld hl, sp-$50                                    ; $5ee2: $f8 $b0
	ldh a, [$a0]                                     ; $5ee4: $f0 $a0
	ldh [$a0], a                                     ; $5ee6: $e0 $a0
	ldh [rLCDC], a                                   ; $5ee8: $e0 $40
	ret nz                                           ; $5eea: $c0

	ld b, b                                          ; $5eeb: $40
	ret nz                                           ; $5eec: $c0

	db $dd                                           ; $5eed: $dd
	add b                                            ; $5eee: $80
	add l                                            ; $5eef: $85
	ld l, e                                          ; $5ef0: $6b
	or $e4                                           ; $5ef1: $f6 $e4
	cp a                                             ; $5ef3: $bf
	rst GetHLinHL                                          ; $5ef4: $cf
	ld a, a                                          ; $5ef5: $7f
	sbc a                                            ; $5ef6: $9f
	ldh a, [$3f]                                     ; $5ef7: $f0 $3f
	ldh [rIE], a                                     ; $5ef9: $e0 $ff
	ld hl, sp-$03                                    ; $5efb: $f8 $fd
	cp $df                                           ; $5efd: $fe $df
	adc $9d                                          ; $5eff: $ce $9d
	sbc h                                            ; $5f01: $9c
	pop af                                           ; $5f02: $f1
	ld hl, sp-$18                                    ; $5f03: $f8 $e8
	ld hl, sp+$28                                    ; $5f05: $f8 $28
	ld e, b                                          ; $5f07: $58
	db $fc                                           ; $5f08: $fc
	ld [hl], b                                       ; $5f09: $70
	ei                                               ; $5f0a: $fb
	adc h                                            ; $5f0b: $8c
	dec h                                            ; $5f0c: $25
	ccf                                              ; $5f0d: $3f
	xor c                                            ; $5f0e: $a9
	ccf                                              ; $5f0f: $3f
	ld c, c                                          ; $5f10: $49
	rst $38                                          ; $5f11: $ff
	jp nc, $e6ff                                     ; $5f12: $d2 $ff $e6

	ld a, a                                          ; $5f15: $7f
	rst AddAOntoHL                                          ; $5f16: $ef
	ld e, e                                          ; $5f17: $5b
	rst FarCall                                          ; $5f18: $f7
	sbc d                                            ; $5f19: $9a
	rst $38                                          ; $5f1a: $ff
	ld [bc], a                                       ; $5f1b: $02
	and $01                                          ; $5f1c: $e6 $01
	add e                                            ; $5f1e: $83
	reti                                             ; $5f1f: $d9


	ld bc, $0080                                     ; $5f20: $01 $80 $00
	inc c                                            ; $5f23: $0c
	nop                                              ; $5f24: $00
	ld a, [bc]                                       ; $5f25: $0a
	inc c                                            ; $5f26: $0c
	ld [hl], $ff                                     ; $5f27: $36 $ff
	ld [hl], a                                       ; $5f29: $77
	db $dd                                           ; $5f2a: $dd
	ld a, e                                          ; $5f2b: $7b
	db $dd                                           ; $5f2c: $dd
	ld e, l                                          ; $5f2d: $5d
	rst $38                                          ; $5f2e: $ff
	cp [hl]                                          ; $5f2f: $be
	di                                               ; $5f30: $f3
	rst $38                                          ; $5f31: $ff
	ld d, c                                          ; $5f32: $51
	rst $38                                          ; $5f33: $ff
	ld [hl], b                                       ; $5f34: $70
	rst $38                                          ; $5f35: $ff
	ld hl, sp-$41                                    ; $5f36: $f8 $bf
	sbc [hl]                                         ; $5f38: $9e
	ccf                                              ; $5f39: $3f
	inc [hl]                                         ; $5f3a: $34
	rst SubAFromBC                                          ; $5f3b: $e7
	pop af                                           ; $5f3c: $f1
	rst SubAFromHL                                          ; $5f3d: $d7
	pop af                                           ; $5f3e: $f1
	xor l                                            ; $5f3f: $ad
	ld h, e                                          ; $5f40: $63
	add b                                            ; $5f41: $80
	sbc $e3                                          ; $5f42: $de $e3
	ld a, [bc]                                       ; $5f44: $0a
	rlca                                             ; $5f45: $07
	inc b                                            ; $5f46: $04
	rlca                                             ; $5f47: $07
	dec c                                            ; $5f48: $0d
	ld b, $0b                                        ; $5f49: $06 $0b
	inc c                                            ; $5f4b: $0c
	dec de                                           ; $5f4c: $1b
	inc c                                            ; $5f4d: $0c

jr_06d_5f4e:
	ld sp, $711c                                     ; $5f4e: $31 $1c $71
	inc a                                            ; $5f51: $3c
	ld d, d                                          ; $5f52: $52
	ld sp, hl                                        ; $5f53: $f9
	sub e                                            ; $5f54: $93
	ld sp, hl                                        ; $5f55: $f9
	daa                                              ; $5f56: $27
	ld sp, hl                                        ; $5f57: $f9
	dec l                                            ; $5f58: $2d

jr_06d_5f59:
	di                                               ; $5f59: $f3
	ld a, [hl+]                                      ; $5f5a: $2a
	rst FarCall                                          ; $5f5b: $f7
	ldh [c], a                                       ; $5f5c: $e2
	ld a, a                                          ; $5f5d: $7f
	db $e4                                           ; $5f5e: $e4
	ld a, a                                          ; $5f5f: $7f
	call nz, $7f80                                   ; $5f60: $c4 $80 $7f
	ld c, b                                          ; $5f63: $48
	rst $38                                          ; $5f64: $ff

jr_06d_5f65:
	ret                                              ; $5f65: $c9


	rst $38                                          ; $5f66: $ff
	db $db                                           ; $5f67: $db
	ld a, a                                          ; $5f68: $7f
	ld b, l                                          ; $5f69: $45
	rst $38                                          ; $5f6a: $ff
	ld b, h                                          ; $5f6b: $44
	rst $38                                          ; $5f6c: $ff
	inc h                                            ; $5f6d: $24
	rst $38                                          ; $5f6e: $ff
	inc hl                                           ; $5f6f: $23
	rst $38                                          ; $5f70: $ff
	or d                                             ; $5f71: $b2
	rst $38                                          ; $5f72: $ff
	ld [$a5ff], a                                    ; $5f73: $ea $ff $a5
	rst $38                                          ; $5f76: $ff
	and h                                            ; $5f77: $a4
	rst $38                                          ; $5f78: $ff
	sub h                                            ; $5f79: $94
	rst $38                                          ; $5f7a: $ff
	jp nc, $d2bf                                     ; $5f7b: $d2 $bf $d2

	cp a                                             ; $5f7e: $bf

jr_06d_5f7f:
	jp z, $9bbf                                      ; $5f7f: $ca $bf $9b

	res 7, a                                         ; $5f82: $cb $bf
	xor l                                            ; $5f84: $ad
	db $db                                           ; $5f85: $db
	ld d, a                                          ; $5f86: $57
	cp $87                                           ; $5f87: $fe $87
	xor c                                            ; $5f89: $a9
	rst SubAFromDE                                          ; $5f8a: $df
	or d                                             ; $5f8b: $b2
	sbc $52                                          ; $5f8c: $de $52
	cp [hl]                                          ; $5f8e: $be
	ld d, d                                          ; $5f8f: $52
	cp [hl]                                          ; $5f90: $be
	sub h                                            ; $5f91: $94
	ld a, h                                          ; $5f92: $7c
	xor h                                            ; $5f93: $ac
	ld l, h                                          ; $5f94: $6c
	jr z, jr_06d_5f7f                                ; $5f95: $28 $e8

	ld c, b                                          ; $5f97: $48
	ret z                                            ; $5f98: $c8

	ld c, b                                          ; $5f99: $48
	ret z                                            ; $5f9a: $c8

	add b                                            ; $5f9b: $80
	add b                                            ; $5f9c: $80
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	ldh [$e0], a                                     ; $5f9f: $e0 $e0
	ld d, e                                          ; $5fa1: $53
	nop                                              ; $5fa2: $00
	sub [hl]                                         ; $5fa3: $96
	ld a, [$f94f]                                    ; $5fa4: $fa $4f $f9
	ld l, a                                          ; $5fa7: $6f
	rst SubAFromDE                                          ; $5fa8: $df
	ld l, e                                          ; $5fa9: $6b
	db $db                                           ; $5faa: $db
	xor d                                            ; $5fab: $aa
	jp c, $005f                                      ; $5fac: $da $5f $00

	ld e, e                                          ; $5faf: $5b
	jr nz, jr_06d_5f4e                               ; $5fb0: $20 $9c

	ret nz                                           ; $5fb2: $c0

	rst $38                                          ; $5fb3: $ff
	jr c, jr_06d_6025                                ; $5fb4: $38 $6f

	ld e, $9b                                        ; $5fb6: $1e $9b
	ldh a, [$f8]                                     ; $5fb8: $f0 $f8
	xor b                                            ; $5fba: $a8
	ret c                                            ; $5fbb: $d8

	daa                                              ; $5fbc: $27
	jr nz, jr_06d_5f59                               ; $5fbd: $20 $9a

	rst SubAFromBC                                          ; $5fbf: $e7
	nop                                              ; $5fc0: $00
	add d                                            ; $5fc1: $82
	ld bc, $2703                                     ; $5fc2: $01 $03 $27
	jr nz, jr_06d_5f65                               ; $5fc5: $20 $9e

	nop                                              ; $5fc7: $00
	ld l, e                                          ; $5fc8: $6b
	ld e, $9e                                        ; $5fc9: $1e $9e
	dec [hl]                                         ; $5fcb: $35
	ld e, a                                          ; $5fcc: $5f
	jr nz, jr_06d_601a                               ; $5fcd: $20 $4b

	add b                                            ; $5fcf: $80
	sbc b                                            ; $5fd0: $98
	ld hl, sp+$6f                                    ; $5fd1: $f8 $6f
	ret c                                            ; $5fd3: $d8

	ld l, a                                          ; $5fd4: $6f
	reti                                             ; $5fd5: $d9


	xor a                                            ; $5fd6: $af
	rst SubAFromDE                                          ; $5fd7: $df
	dec hl                                           ; $5fd8: $2b
	add b                                            ; $5fd9: $80
	ld a, a                                          ; $5fda: $7f
	ret nz                                           ; $5fdb: $c0

	ld a, a                                          ; $5fdc: $7f
	cp $7b                                           ; $5fdd: $fe $7b
	ld a, h                                          ; $5fdf: $7c
	sbc e                                            ; $5fe0: $9b
	sbc [hl]                                         ; $5fe1: $9e
	adc [hl]                                         ; $5fe2: $8e
	xor b                                            ; $5fe3: $a8
	ld hl, sp+$1f                                    ; $5fe4: $f8 $1f
	add b                                            ; $5fe6: $80

Jump_06d_5fe7:
	sbc d                                            ; $5fe7: $9a
	add e                                            ; $5fe8: $83
	nop                                              ; $5fe9: $00
	ld bc, $0000                                     ; $5fea: $01 $00 $00
	call c, $3b01                                    ; $5fed: $dc $01 $3b
	add b                                            ; $5ff0: $80
	ld [hl], a                                       ; $5ff1: $77
	cp $96                                           ; $5ff2: $fe $96
	ld h, b                                          ; $5ff4: $60
	rst $38                                          ; $5ff5: $ff
	ld sp, hl                                        ; $5ff6: $f9
	cp a                                             ; $5ff7: $bf
	sbc l                                            ; $5ff8: $9d
	push af                                          ; $5ff9: $f5
	di                                               ; $5ffa: $f3
	xor $73                                          ; $5ffb: $ee $73
	dec hl                                           ; $5ffd: $2b
	add b                                            ; $5ffe: $80
	sbc d                                            ; $5fff: $9a
	ret c                                            ; $6000: $d8

	xor a                                            ; $6001: $af
	rst SubAFromDE                                          ; $6002: $df
	db $eb                                           ; $6003: $eb
	sbc c                                            ; $6004: $99
	inc hl                                           ; $6005: $23
	add b                                            ; $6006: $80
	ld a, a                                          ; $6007: $7f
	cp $9c                                           ; $6008: $fe $9c
	ld hl, sp-$02                                    ; $600a: $f8 $fe
	ld b, $de                                        ; $600c: $06 $de
	db $fc                                           ; $600e: $fc
	inc de                                           ; $600f: $13
	add b                                            ; $6010: $80
	ld a, a                                          ; $6011: $7f
	cp $7a                                           ; $6012: $fe $7a
	db $fc                                           ; $6014: $fc
	scf                                              ; $6015: $37
	nop                                              ; $6016: $00
	ld l, a                                          ; $6017: $6f
	cp $98                                           ; $6018: $fe $98

jr_06d_601a:
	ld [hl], c                                       ; $601a: $71
	rst $38                                          ; $601b: $ff
	add hl, bc                                       ; $601c: $09
	rst $38                                          ; $601d: $ff
	rst $38                                          ; $601e: $ff
	cp $f3                                           ; $601f: $fe $f3
	ld [hl], a                                       ; $6021: $77
	add b                                            ; $6022: $80
	ld hl, sp-$69                                    ; $6023: $f8 $97

jr_06d_6025:
	add b                                            ; $6025: $80
	ldh [$e0], a                                     ; $6026: $e0 $e0
	inc a                                            ; $6028: $3c
	jr jr_06d_6039                                   ; $6029: $18 $0e

	ld b, $03                                        ; $602b: $06 $03
	ld a, e                                          ; $602d: $7b
	ld b, e                                          ; $602e: $43
	rst FarCall                                          ; $602f: $f7
	sbc $04                                          ; $6030: $de $04
	add b                                            ; $6032: $80
	ld [rRAMG], sp                                   ; $6033: $08 $00 $00
	db $fc                                           ; $6036: $fc
	add h                                            ; $6037: $84
	db $fc                                           ; $6038: $fc

jr_06d_6039:
	ld hl, sp-$08                                    ; $6039: $f8 $f8
	ldh a, [rSVBK]                                   ; $603b: $f0 $70
	ld h, b                                          ; $603d: $60
	inc bc                                           ; $603e: $03
	ld bc, $0767                                     ; $603f: $01 $67 $07
	rrca                                             ; $6042: $0f
	dec e                                            ; $6043: $1d
	rst $38                                          ; $6044: $ff
	pop af                                           ; $6045: $f1
	ld a, [hl]                                       ; $6046: $7e
	ld h, e                                          ; $6047: $63
	dec l                                            ; $6048: $2d
	ld a, $33                                        ; $6049: $3e $33
	jr nc, @+$33                                     ; $604b: $30 $31

	jr nc, @+$15                                     ; $604d: $30 $13

	ld de, $5757                                     ; $604f: $11 $57 $57
	ld h, e                                          ; $6052: $63
	ldh [$df], a                                     ; $6053: $e0 $df
	ld [hl], b                                       ; $6055: $70
	ld a, e                                          ; $6056: $7b
	adc h                                            ; $6057: $8c
	daa                                              ; $6058: $27
	ldh [$9d], a                                     ; $6059: $e0 $9d
	ld hl, sp+$78                                    ; $605b: $f8 $78
	ld [hl], a                                       ; $605d: $77
	ld d, c                                          ; $605e: $51
	sbc h                                            ; $605f: $9c
	ld h, e                                          ; $6060: $63
	ld bc, $2307                                     ; $6061: $01 $07 $23
	ldh [rIE], a                                     ; $6064: $e0 $ff
	sbc [hl]                                         ; $6066: $9e
	ld h, b                                          ; $6067: $60
	ld a, e                                          ; $6068: $7b
	ret nz                                           ; $6069: $c0

	ccf                                              ; $606a: $3f
	ldh [$b8], a                                     ; $606b: $e0 $b8
	ld bc, $be86                                     ; $606d: $01 $86 $be
	call $bb5c                                       ; $6070: $cd $5c $bb
	add hl, sp                                       ; $6073: $39
	rst FarCall                                          ; $6074: $f7
	db $e3                                           ; $6075: $e3
	cp $4f                                           ; $6076: $fe $4f
	db $fd                                           ; $6078: $fd
	cp $fb                                           ; $6079: $fe $fb
	ld c, a                                          ; $607b: $4f
	ld a, [$f94f]                                    ; $607c: $fa $4f $f9
	ld l, a                                          ; $607f: $6f
	rst SubAFromDE                                          ; $6080: $df
	ld l, e                                          ; $6081: $6b
	db $db                                           ; $6082: $db
	xor d                                            ; $6083: $aa
	jp c, $98e8                                      ; $6084: $da $e8 $98

	xor b                                            ; $6087: $a8
	ld [hl], e                                       ; $6088: $73
	cp $81                                           ; $6089: $fe $81
	jr z, jr_06d_6025                                ; $608b: $28 $98

	adc b                                            ; $608d: $88
	jr c, @-$32                                      ; $608e: $38 $cc

	inc a                                            ; $6090: $3c
	adc $3c                                          ; $6091: $ce $3c
	db $d3                                           ; $6093: $d3
	ld a, $d1                                        ; $6094: $3e $d1
	ccf                                              ; $6096: $3f
	sub c                                            ; $6097: $91
	ld a, a                                          ; $6098: $7f
	and e                                            ; $6099: $a3
	rst $38                                          ; $609a: $ff
	and h                                            ; $609b: $a4
	db $fc                                           ; $609c: $fc
	xor b                                            ; $609d: $a8
	ld hl, sp-$50                                    ; $609e: $f8 $b0
	ldh a, [$a0]                                     ; $60a0: $f0 $a0
	ldh [$a0], a                                     ; $60a2: $e0 $a0
	ldh [rLCDC], a                                   ; $60a4: $e0 $40
	ret nz                                           ; $60a6: $c0

	ld b, b                                          ; $60a7: $40
	ret nz                                           ; $60a8: $c0

	db $dd                                           ; $60a9: $dd
	add b                                            ; $60aa: $80
	add l                                            ; $60ab: $85
	ld l, e                                          ; $60ac: $6b
	or $e6                                           ; $60ad: $f6 $e6
	cp h                                             ; $60af: $bc
	call z, $9078                                    ; $60b0: $cc $78 $90
	cp $3e                                           ; $60b3: $fe $3e
	rst $38                                          ; $60b5: $ff
	rst $38                                          ; $60b6: $ff
	pop bc                                           ; $60b7: $c1

jr_06d_60b8:
	rst $38                                          ; $60b8: $ff
	jr c, jr_06d_60b8                                ; $60b9: $38 $fd

	cp $df                                           ; $60bb: $fe $df
	adc $9d                                          ; $60bd: $ce $9d
	sbc h                                            ; $60bf: $9c
	ldh a, [$f8]                                     ; $60c0: $f0 $f8
	xor b                                            ; $60c2: $a8
	ret c                                            ; $60c3: $d8

	db $fc                                           ; $60c4: $fc
	ld [hl], b                                       ; $60c5: $70
	ei                                               ; $60c6: $fb
	adc d                                            ; $60c7: $8a
	dec h                                            ; $60c8: $25
	ccf                                              ; $60c9: $3f
	add hl, hl                                       ; $60ca: $29
	ccf                                              ; $60cb: $3f
	ld c, c                                          ; $60cc: $49
	ld a, a                                          ; $60cd: $7f
	ld d, d                                          ; $60ce: $52
	ld a, a                                          ; $60cf: $7f
	and $7f                                          ; $60d0: $e6 $7f
	rst AddAOntoHL                                          ; $60d2: $ef
	db $db                                           ; $60d3: $db
	or $9b                                           ; $60d4: $f6 $9b
	rst $38                                          ; $60d6: $ff
	ld [bc], a                                       ; $60d7: $02
	rst SubAFromBC                                          ; $60d8: $e7
	nop                                              ; $60d9: $00
	add d                                            ; $60da: $82
	ld bc, $db03                                     ; $60db: $01 $03 $db
	ld bc, $0080                                     ; $60de: $01 $80 $00
	inc c                                            ; $60e1: $0c
	nop                                              ; $60e2: $00
	ld a, [bc]                                       ; $60e3: $0a
	inc c                                            ; $60e4: $0c
	ld [hl], $ff                                     ; $60e5: $36 $ff
	ld [hl], a                                       ; $60e7: $77
	db $dd                                           ; $60e8: $dd
	ld a, a                                          ; $60e9: $7f
	reti                                             ; $60ea: $d9


	ld a, a                                          ; $60eb: $7f
	pop de                                           ; $60ec: $d1
	sub a                                            ; $60ed: $97
	ld hl, sp-$07                                    ; $60ee: $f8 $f9
	cp $fe                                           ; $60f0: $fe $fe
	rlca                                             ; $60f2: $07
	rst $38                                          ; $60f3: $ff
	ld [hl], c                                       ; $60f4: $71
	rst $38                                          ; $60f5: $ff
	ld hl, sp-$41                                    ; $60f6: $f8 $bf
	sbc [hl]                                         ; $60f8: $9e
	ccf                                              ; $60f9: $3f
	dec [hl]                                         ; $60fa: $35
	rst SubAFromHL                                          ; $60fb: $d7
	pop af                                           ; $60fc: $f1
	xor l                                            ; $60fd: $ad
	ld h, e                                          ; $60fe: $63
	add b                                            ; $60ff: $80
	sbc $e3                                          ; $6100: $de $e3
	ld a, [bc]                                       ; $6102: $0a
	rlca                                             ; $6103: $07
	inc b                                            ; $6104: $04
	rlca                                             ; $6105: $07
	dec c                                            ; $6106: $0d
	ld b, $0b                                        ; $6107: $06 $0b
	inc c                                            ; $6109: $0c

jr_06d_610a:
	dec de                                           ; $610a: $1b
	inc c                                            ; $610b: $0c
	ld sp, $711c                                     ; $610c: $31 $1c $71
	inc a                                            ; $610f: $3c
	ld d, d                                          ; $6110: $52
	ld sp, hl                                        ; $6111: $f9

jr_06d_6112:
	sub e                                            ; $6112: $93
	ld sp, hl                                        ; $6113: $f9
	daa                                              ; $6114: $27
	ld sp, hl                                        ; $6115: $f9
	dec l                                            ; $6116: $2d
	di                                               ; $6117: $f3

jr_06d_6118:
	ld a, [hl+]                                      ; $6118: $2a
	rst FarCall                                          ; $6119: $f7
	ldh [c], a                                       ; $611a: $e2
	ld a, a                                          ; $611b: $7f
	db $e4                                           ; $611c: $e4
	ld a, a                                          ; $611d: $7f
	call nz, $7f80                                   ; $611e: $c4 $80 $7f
	ld c, b                                          ; $6121: $48
	rst $38                                          ; $6122: $ff
	ret                                              ; $6123: $c9


	rst $38                                          ; $6124: $ff
	db $db                                           ; $6125: $db
	ld a, a                                          ; $6126: $7f
	ld b, l                                          ; $6127: $45
	rst $38                                          ; $6128: $ff
	ld b, h                                          ; $6129: $44
	rst $38                                          ; $612a: $ff
	inc h                                            ; $612b: $24
	rst $38                                          ; $612c: $ff
	inc hl                                           ; $612d: $23
	rst $38                                          ; $612e: $ff
	or d                                             ; $612f: $b2
	rst $38                                          ; $6130: $ff
	ld [$a5ff], a                                    ; $6131: $ea $ff $a5
	rst $38                                          ; $6134: $ff
	and h                                            ; $6135: $a4
	rst $38                                          ; $6136: $ff
	sub h                                            ; $6137: $94
	rst $38                                          ; $6138: $ff
	jp nc, $d2bf                                     ; $6139: $d2 $bf $d2

	cp a                                             ; $613c: $bf

jr_06d_613d:
	jp z, $9bbf                                      ; $613d: $ca $bf $9b

	res 7, a                                         ; $6140: $cb $bf
	xor l                                            ; $6142: $ad
	db $db                                           ; $6143: $db
	ld d, a                                          ; $6144: $57
	cp $87                                           ; $6145: $fe $87
	xor c                                            ; $6147: $a9
	rst SubAFromDE                                          ; $6148: $df
	or d                                             ; $6149: $b2
	sbc $52                                          ; $614a: $de $52
	cp [hl]                                          ; $614c: $be
	ld d, d                                          ; $614d: $52
	cp [hl]                                          ; $614e: $be
	sub h                                            ; $614f: $94
	ld a, h                                          ; $6150: $7c
	xor h                                            ; $6151: $ac
	ld l, h                                          ; $6152: $6c
	jr z, jr_06d_613d                                ; $6153: $28 $e8

	ld c, b                                          ; $6155: $48
	ret z                                            ; $6156: $c8

	ld c, b                                          ; $6157: $48
	ret z                                            ; $6158: $c8

	add b                                            ; $6159: $80
	add b                                            ; $615a: $80
	nop                                              ; $615b: $00
	nop                                              ; $615c: $00
	ldh [$e0], a                                     ; $615d: $e0 $e0
	ld c, e                                          ; $615f: $4b
	nop                                              ; $6160: $00
	sbc d                                            ; $6161: $9a
	ld hl, sp+$6f                                    ; $6162: $f8 $6f
	reti                                             ; $6164: $d9


	ld l, a                                          ; $6165: $6f
	rst SubAFromDE                                          ; $6166: $df
	ld d, a                                          ; $6167: $57
	nop                                              ; $6168: $00
	ld d, e                                          ; $6169: $53
	jr nz, jr_06d_610a                               ; $616a: $20 $9e

	nop                                              ; $616c: $00
	ld [hl], a                                       ; $616d: $77
	ld e, $9c                                        ; $616e: $1e $9c
	add a                                            ; $6170: $87
	adc [hl]                                         ; $6171: $8e
	db $fc                                           ; $6172: $fc
	inc de                                           ; $6173: $13
	jr nz, jr_06d_6112                               ; $6174: $20 $9c

	add e                                            ; $6176: $83
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	rra                                              ; $6179: $1f
	jr nz, jr_06d_6118                               ; $617a: $20 $9c

	ld bc, $70ff                                     ; $617c: $01 $ff $70
	ld a, e                                          ; $617f: $7b
	ld e, $9a                                        ; $6180: $1e $9a
	sbc a                                            ; $6182: $9f
	ld d, a                                          ; $6183: $57
	ld [hl], l                                       ; $6184: $75
	ld l, l                                          ; $6185: $6d
	db $e3                                           ; $6186: $e3
	ld l, a                                          ; $6187: $6f
	jr nz, jr_06d_61cd                               ; $6188: $20 $43

	add b                                            ; $618a: $80
	sbc d                                            ; $618b: $9a
	ret c                                            ; $618c: $d8

	ld l, a                                          ; $618d: $6f
	reti                                             ; $618e: $d9


	xor a                                            ; $618f: $af
	rst SubAFromDE                                          ; $6190: $df
	inc hl                                           ; $6191: $23
	add b                                            ; $6192: $80
	ld [hl], e                                       ; $6193: $73
	ld a, [hl]                                       ; $6194: $7e
	sbc e                                            ; $6195: $9b
	sbc [hl]                                         ; $6196: $9e
	adc [hl]                                         ; $6197: $8e
	xor b                                            ; $6198: $a8
	ld hl, sp+$17                                    ; $6199: $f8 $17
	add b                                            ; $619b: $80
	ld a, a                                          ; $619c: $7f
	add [hl]                                         ; $619d: $86
	ld l, a                                          ; $619e: $6f
	ld a, [hl]                                       ; $619f: $7e
	inc sp                                           ; $61a0: $33
	add b                                            ; $61a1: $80
	ld a, a                                          ; $61a2: $7f
	cp [hl]                                          ; $61a3: $be
	sub [hl]                                         ; $61a4: $96
	ld h, b                                          ; $61a5: $60
	rst $38                                          ; $61a6: $ff
	ld sp, hl                                        ; $61a7: $f9
	cp a                                             ; $61a8: $bf
	sbc l                                            ; $61a9: $9d
	push af                                          ; $61aa: $f5
	di                                               ; $61ab: $f3
	xor $73                                          ; $61ac: $ee $73
	dec hl                                           ; $61ae: $2b
	add b                                            ; $61af: $80
	sbc d                                            ; $61b0: $9a
	ret c                                            ; $61b1: $d8

	xor a                                            ; $61b2: $af
	rst SubAFromDE                                          ; $61b3: $df
	db $eb                                           ; $61b4: $eb
	sbc c                                            ; $61b5: $99
	inc hl                                           ; $61b6: $23
	add b                                            ; $61b7: $80
	ld a, a                                          ; $61b8: $7f
	cp $9c                                           ; $61b9: $fe $9c
	ld hl, sp-$02                                    ; $61bb: $f8 $fe
	ld b, $de                                        ; $61bd: $06 $de
	db $fc                                           ; $61bf: $fc
	inc de                                           ; $61c0: $13
	add b                                            ; $61c1: $80
	ld a, a                                          ; $61c2: $7f
	cp $7a                                           ; $61c3: $fe $7a
	inc e                                            ; $61c5: $1c
	cpl                                              ; $61c6: $2f
	nop                                              ; $61c7: $00
	ld [hl], a                                       ; $61c8: $77
	cp [hl]                                          ; $61c9: $be
	ld a, [hl]                                       ; $61ca: $7e
	ld a, [de]                                       ; $61cb: $1a
	sbc d                                            ; $61cc: $9a

jr_06d_61cd:
	add hl, bc                                       ; $61cd: $09
	rst $38                                          ; $61ce: $ff
	rst $38                                          ; $61cf: $ff
	cp $f3                                           ; $61d0: $fe $f3
	ld [hl], a                                       ; $61d2: $77
	add b                                            ; $61d3: $80
	ld hl, sp-$69                                    ; $61d4: $f8 $97
	add b                                            ; $61d6: $80
	ldh [$e0], a                                     ; $61d7: $e0 $e0
	inc a                                            ; $61d9: $3c
	jr jr_06d_61ea                                   ; $61da: $18 $0e

	ld b, $03                                        ; $61dc: $06 $03
	ld a, e                                          ; $61de: $7b
	ld b, e                                          ; $61df: $43
	rst FarCall                                          ; $61e0: $f7
	sbc $04                                          ; $61e1: $de $04
	sub l                                            ; $61e3: $95
	ld [rRAMG], sp                                   ; $61e4: $08 $00 $00
	db $fc                                           ; $61e7: $fc
	add h                                            ; $61e8: $84
	db $fc                                           ; $61e9: $fc

jr_06d_61ea:
	ld hl, sp-$08                                    ; $61ea: $f8 $f8
	ld [hl], b                                       ; $61ec: $70
	ld [hl], b                                       ; $61ed: $70
	ld a, e                                          ; $61ee: $7b
	xor h                                            ; $61ef: $ac
	adc l                                            ; $61f0: $8d
	ld h, a                                          ; $61f1: $67
	rlca                                             ; $61f2: $07
	rrca                                             ; $61f3: $0f
	dec e                                            ; $61f4: $1d
	rst $38                                          ; $61f5: $ff
	pop af                                           ; $61f6: $f1
	ld a, [hl]                                       ; $61f7: $7e
	ld h, e                                          ; $61f8: $63
	dec l                                            ; $61f9: $2d
	ld a, $33                                        ; $61fa: $3e $33
	jr nc, @+$33                                     ; $61fc: $30 $31

	jr nc, @+$15                                     ; $61fe: $30 $13

	ld de, $5757                                     ; $6200: $11 $57 $57
	ld l, a                                          ; $6203: $6f
	ldh [$9d], a                                     ; $6204: $e0 $9d
	ld hl, sp+$78                                    ; $6206: $f8 $78
	ld [hl], a                                       ; $6208: $77
	ld [hl], c                                       ; $6209: $71
	sbc h                                            ; $620a: $9c
	ld h, e                                          ; $620b: $63
	ld bc, $3307                                     ; $620c: $01 $07 $33
	ldh [$98], a                                     ; $620f: $e0 $98
	or h                                             ; $6211: $b4
	call z, $78f8                                    ; $6212: $cc $f8 $78
	nop                                              ; $6215: $00
	nop                                              ; $6216: $00
	ld h, b                                          ; $6217: $60
	ld a, e                                          ; $6218: $7b
	ret nz                                           ; $6219: $c0

	cpl                                              ; $621a: $2f
	ldh [$9d], a                                     ; $621b: $e0 $9d
	ld hl, sp-$78                                    ; $621d: $f8 $88
	ld [hl], a                                       ; $621f: $77
	ldh [c], a                                       ; $6220: $e2
	rst $38                                          ; $6221: $ff
	scf                                              ; $6222: $37
	ldh [$bb], a                                     ; $6223: $e0 $bb
	ld bc, $be86                                     ; $6225: $01 $86 $be
	call $bb5c                                       ; $6228: $cd $5c $bb
	add hl, sp                                       ; $622b: $39
	rst FarCall                                          ; $622c: $f7
	db $e3                                           ; $622d: $e3
	cp $4f                                           ; $622e: $fe $4f
	db $fd                                           ; $6230: $fd
	cp $fb                                           ; $6231: $fe $fb
	ld c, a                                          ; $6233: $4f
	ld a, [$f94f]                                    ; $6234: $fa $4f $f9
	ld l, a                                          ; $6237: $6f
	rst SubAFromDE                                          ; $6238: $df
	ld l, e                                          ; $6239: $6b
	db $db                                           ; $623a: $db
	xor d                                            ; $623b: $aa
	jp c, $98e8                                      ; $623c: $da $e8 $98

	xor b                                            ; $623f: $a8
	ld [hl], e                                       ; $6240: $73
	cp $81                                           ; $6241: $fe $81
	jr z, @-$66                                      ; $6243: $28 $98

	adc b                                            ; $6245: $88
	jr c, @-$32                                      ; $6246: $38 $cc

	inc a                                            ; $6248: $3c
	adc $3c                                          ; $6249: $ce $3c
	db $d3                                           ; $624b: $d3
	ld a, $d1                                        ; $624c: $3e $d1
	ccf                                              ; $624e: $3f
	sub c                                            ; $624f: $91
	ld a, a                                          ; $6250: $7f
	and e                                            ; $6251: $a3
	rst $38                                          ; $6252: $ff
	and h                                            ; $6253: $a4
	db $fc                                           ; $6254: $fc
	xor b                                            ; $6255: $a8
	ld hl, sp-$50                                    ; $6256: $f8 $b0
	ldh a, [$a0]                                     ; $6258: $f0 $a0
	ldh [$a0], a                                     ; $625a: $e0 $a0
	ldh [rLCDC], a                                   ; $625c: $e0 $40
	ret nz                                           ; $625e: $c0

	ld b, b                                          ; $625f: $40
	ret nz                                           ; $6260: $c0

	db $dd                                           ; $6261: $dd
	add b                                            ; $6262: $80
	add l                                            ; $6263: $85
	ld l, e                                          ; $6264: $6b
	or $e6                                           ; $6265: $f6 $e6
	cp h                                             ; $6267: $bc
	call z, $9478                                    ; $6268: $cc $78 $94
	ld hl, sp+$38                                    ; $626b: $f8 $38
	cp $fe                                           ; $626d: $fe $fe
	rst JumpTable                                          ; $626f: $c7
	rst $38                                          ; $6270: $ff
	add hl, sp                                       ; $6271: $39
	db $fd                                           ; $6272: $fd
	cp $d7                                           ; $6273: $fe $d7
	adc $9d                                          ; $6275: $ce $9d
	sbc h                                            ; $6277: $9c
	db $f4                                           ; $6278: $f4
	db $fc                                           ; $6279: $fc
	xor b                                            ; $627a: $a8
	ret c                                            ; $627b: $d8

	db $fc                                           ; $627c: $fc
	ld [hl], b                                       ; $627d: $70
	ei                                               ; $627e: $fb
	adc h                                            ; $627f: $8c
	dec h                                            ; $6280: $25
	ccf                                              ; $6281: $3f
	add hl, hl                                       ; $6282: $29
	ccf                                              ; $6283: $3f
	ld c, c                                          ; $6284: $49
	ld a, a                                          ; $6285: $7f
	ld d, d                                          ; $6286: $52
	ld a, a                                          ; $6287: $7f
	and $7f                                          ; $6288: $e6 $7f
	ld l, a                                          ; $628a: $6f
	db $db                                           ; $628b: $db
	or $9b                                           ; $628c: $f6 $9b
	rst $38                                          ; $628e: $ff
	ld [de], a                                       ; $628f: $12
	rst SubAFromBC                                          ; $6290: $e7
	nop                                              ; $6291: $00
	add d                                            ; $6292: $82
	reti                                             ; $6293: $d9


	ld bc, $0080                                     ; $6294: $01 $80 $00
	inc c                                            ; $6297: $0c
	nop                                              ; $6298: $00
	ld a, [bc]                                       ; $6299: $0a
	inc c                                            ; $629a: $0c
	ld [hl], $ff                                     ; $629b: $36 $ff
	ld [hl], a                                       ; $629d: $77
	db $dd                                           ; $629e: $dd
	ld a, a                                          ; $629f: $7f
	reti                                             ; $62a0: $d9


	ld a, c                                          ; $62a1: $79
	rst SubAFromHL                                          ; $62a2: $d7
	sub a                                            ; $62a3: $97
	rst $38                                          ; $62a4: $ff
	ld a, a                                          ; $62a5: $7f
	ld hl, sp-$01                                    ; $62a6: $f8 $ff
	add b                                            ; $62a8: $80
	rst $38                                          ; $62a9: $ff
	ld [hl], b                                       ; $62aa: $70
	rst $38                                          ; $62ab: $ff
	ld hl, sp-$41                                    ; $62ac: $f8 $bf
	sbc [hl]                                         ; $62ae: $9e
	ccf                                              ; $62af: $3f
	dec [hl]                                         ; $62b0: $35
	rst SubAFromHL                                          ; $62b1: $d7
	pop af                                           ; $62b2: $f1
	xor l                                            ; $62b3: $ad
	ld h, e                                          ; $62b4: $63
	add b                                            ; $62b5: $80
	sbc $e3                                          ; $62b6: $de $e3

jr_06d_62b8:
	ld a, [bc]                                       ; $62b8: $0a
	rlca                                             ; $62b9: $07
	inc b                                            ; $62ba: $04
	rlca                                             ; $62bb: $07
	dec c                                            ; $62bc: $0d
	ld b, $0b                                        ; $62bd: $06 $0b
	inc c                                            ; $62bf: $0c
	dec de                                           ; $62c0: $1b
	inc c                                            ; $62c1: $0c
	ld sp, $711c                                     ; $62c2: $31 $1c $71
	inc a                                            ; $62c5: $3c
	ld d, d                                          ; $62c6: $52
	ld sp, hl                                        ; $62c7: $f9
	sub e                                            ; $62c8: $93
	ld sp, hl                                        ; $62c9: $f9

jr_06d_62ca:
	daa                                              ; $62ca: $27
	ld sp, hl                                        ; $62cb: $f9
	dec l                                            ; $62cc: $2d
	di                                               ; $62cd: $f3
	ld a, [hl+]                                      ; $62ce: $2a
	rst FarCall                                          ; $62cf: $f7
	ldh [c], a                                       ; $62d0: $e2

jr_06d_62d1:
	ld a, a                                          ; $62d1: $7f
	db $e4                                           ; $62d2: $e4
	ld a, a                                          ; $62d3: $7f
	call nz, $7f80                                   ; $62d4: $c4 $80 $7f

jr_06d_62d7:
	ld c, b                                          ; $62d7: $48
	rst $38                                          ; $62d8: $ff
	ret                                              ; $62d9: $c9


	rst $38                                          ; $62da: $ff
	db $db                                           ; $62db: $db
	ld a, a                                          ; $62dc: $7f
	ld b, l                                          ; $62dd: $45
	rst $38                                          ; $62de: $ff
	ld b, h                                          ; $62df: $44
	rst $38                                          ; $62e0: $ff
	inc h                                            ; $62e1: $24
	rst $38                                          ; $62e2: $ff
	inc hl                                           ; $62e3: $23
	rst $38                                          ; $62e4: $ff
	or d                                             ; $62e5: $b2
	rst $38                                          ; $62e6: $ff
	ld [$a5ff], a                                    ; $62e7: $ea $ff $a5
	rst $38                                          ; $62ea: $ff
	and h                                            ; $62eb: $a4
	rst $38                                          ; $62ec: $ff
	sub h                                            ; $62ed: $94
	rst $38                                          ; $62ee: $ff
	jp nc, $d2bf                                     ; $62ef: $d2 $bf $d2

	cp a                                             ; $62f2: $bf

jr_06d_62f3:
	jp z, $9bbf                                      ; $62f3: $ca $bf $9b

	res 7, a                                         ; $62f6: $cb $bf
	xor l                                            ; $62f8: $ad
	db $db                                           ; $62f9: $db
	ld d, a                                          ; $62fa: $57
	cp $87                                           ; $62fb: $fe $87
	xor c                                            ; $62fd: $a9
	rst SubAFromDE                                          ; $62fe: $df
	or d                                             ; $62ff: $b2
	sbc $52                                          ; $6300: $de $52
	cp [hl]                                          ; $6302: $be
	ld d, d                                          ; $6303: $52
	cp [hl]                                          ; $6304: $be
	sub h                                            ; $6305: $94
	ld a, h                                          ; $6306: $7c
	xor h                                            ; $6307: $ac
	ld l, h                                          ; $6308: $6c
	jr z, jr_06d_62f3                                ; $6309: $28 $e8

	ld c, b                                          ; $630b: $48
	ret z                                            ; $630c: $c8

	ld c, b                                          ; $630d: $48
	ret z                                            ; $630e: $c8

	add b                                            ; $630f: $80
	add b                                            ; $6310: $80
	nop                                              ; $6311: $00
	nop                                              ; $6312: $00
	ldh [$e0], a                                     ; $6313: $e0 $e0
	ld c, e                                          ; $6315: $4b
	nop                                              ; $6316: $00
	sbc d                                            ; $6317: $9a
	ld hl, sp+$6f                                    ; $6318: $f8 $6f
	reti                                             ; $631a: $d9


	ld l, a                                          ; $631b: $6f
	rst SubAFromDE                                          ; $631c: $df
	ld d, a                                          ; $631d: $57
	nop                                              ; $631e: $00
	ld d, e                                          ; $631f: $53
	jr nz, jr_06d_62b8                               ; $6320: $20 $96

	ld bc, $38ff                                     ; $6322: $01 $ff $38
	db $fd                                           ; $6325: $fd
	cp $87                                           ; $6326: $fe $87
	adc [hl]                                         ; $6328: $8e
	db $fc                                           ; $6329: $fc
	ld hl, sp+$17                                    ; $632a: $f8 $17
	jr nz, jr_06d_62ca                               ; $632c: $20 $9c

	add e                                            ; $632e: $83
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00
	ld h, e                                          ; $6331: $63
	jr nz, jr_06d_62d1                               ; $6332: $20 $9d

	ld c, $08                                        ; $6334: $0e $08
	ld c, e                                          ; $6336: $4b
	jr nz, jr_06d_62d7                               ; $6337: $20 $9e

	nop                                              ; $6339: $00
	ld [hl], e                                       ; $633a: $73
	ld e, $9a                                        ; $633b: $1e $9a
	sbc a                                            ; $633d: $9f
	ld d, a                                          ; $633e: $57
	ld [hl], l                                       ; $633f: $75
	ld l, l                                          ; $6340: $6d
	db $e3                                           ; $6341: $e3
	ld l, a                                          ; $6342: $6f
	jr nz, jr_06d_6388                               ; $6343: $20 $43

	add b                                            ; $6345: $80
	sbc d                                            ; $6346: $9a
	ret c                                            ; $6347: $d8

	ld l, a                                          ; $6348: $6f
	reti                                             ; $6349: $d9


	xor a                                            ; $634a: $af
	rst SubAFromDE                                          ; $634b: $df
	inc hl                                           ; $634c: $23
	add b                                            ; $634d: $80
	ld a, a                                          ; $634e: $7f
	ret nz                                           ; $634f: $c0

	ld a, e                                          ; $6350: $7b
	ld a, [hl]                                       ; $6351: $7e
	sbc e                                            ; $6352: $9b
	sbc [hl]                                         ; $6353: $9e
	adc [hl]                                         ; $6354: $8e
	xor b                                            ; $6355: $a8
	ld hl, sp+$17                                    ; $6356: $f8 $17
	add b                                            ; $6358: $80
	ld a, a                                          ; $6359: $7f
	add [hl]                                         ; $635a: $86
	ld l, a                                          ; $635b: $6f
	ld a, [hl]                                       ; $635c: $7e
	ld a, [hl-]                                      ; $635d: $3a
	and b                                            ; $635e: $a0
	ld a, a                                          ; $635f: $7f
	ret nz                                           ; $6360: $c0

	ld a, a                                          ; $6361: $7f
	cp $96                                           ; $6362: $fe $96
	ld h, b                                          ; $6364: $60
	rst $38                                          ; $6365: $ff
	ld sp, hl                                        ; $6366: $f9
	cp a                                             ; $6367: $bf
	sbc l                                            ; $6368: $9d
	push af                                          ; $6369: $f5
	di                                               ; $636a: $f3
	xor $73                                          ; $636b: $ee $73
	dec hl                                           ; $636d: $2b
	add b                                            ; $636e: $80
	sbc d                                            ; $636f: $9a
	ret c                                            ; $6370: $d8

	xor a                                            ; $6371: $af
	rst SubAFromDE                                          ; $6372: $df
	db $eb                                           ; $6373: $eb
	sbc c                                            ; $6374: $99
	inc hl                                           ; $6375: $23
	add b                                            ; $6376: $80
	ld a, a                                          ; $6377: $7f
	cp $9c                                           ; $6378: $fe $9c
	ld hl, sp-$02                                    ; $637a: $f8 $fe
	ld b, $de                                        ; $637c: $06 $de
	db $fc                                           ; $637e: $fc
	inc de                                           ; $637f: $13
	add b                                            ; $6380: $80
	ld a, a                                          ; $6381: $7f
	cp $9e                                           ; $6382: $fe $9e
	inc bc                                           ; $6384: $03
	daa                                              ; $6385: $27
	nop                                              ; $6386: $00
	ld [hl], a                                       ; $6387: $77

jr_06d_6388:
	cp $98                                           ; $6388: $fe $98
	ld [hl], c                                       ; $638a: $71
	rst $38                                          ; $638b: $ff
	add hl, bc                                       ; $638c: $09
	rst $38                                          ; $638d: $ff
	rst $38                                          ; $638e: $ff
	cp $f3                                           ; $638f: $fe $f3
	ld [hl], a                                       ; $6391: $77
	add b                                            ; $6392: $80
	ld hl, sp-$69                                    ; $6393: $f8 $97
	add b                                            ; $6395: $80
	ldh [$e0], a                                     ; $6396: $e0 $e0

jr_06d_6398:
	inc a                                            ; $6398: $3c
	jr jr_06d_63a9                                   ; $6399: $18 $0e

	ld b, $03                                        ; $639b: $06 $03
	ld a, e                                          ; $639d: $7b
	ld b, e                                          ; $639e: $43
	rst FarCall                                          ; $639f: $f7
	sbc $04                                          ; $63a0: $de $04
	sub a                                            ; $63a2: $97
	ld [rRAMG], sp                                   ; $63a3: $08 $00 $00
	ld a, b                                          ; $63a6: $78
	nop                                              ; $63a7: $00
	adc h                                            ; $63a8: $8c

jr_06d_63a9:
	adc b                                            ; $63a9: $88
	ld hl, sp+$7b                                    ; $63aa: $f8 $7b
	sub b                                            ; $63ac: $90
	adc e                                            ; $63ad: $8b
	ld h, e                                          ; $63ae: $63
	ld bc, $0707                                     ; $63af: $01 $07 $07
	rrca                                             ; $63b2: $0f
	dec e                                            ; $63b3: $1d
	rst $38                                          ; $63b4: $ff
	pop af                                           ; $63b5: $f1
	ld a, [hl]                                       ; $63b6: $7e
	ld h, e                                          ; $63b7: $63
	dec l                                            ; $63b8: $2d
	ld a, $33                                        ; $63b9: $3e $33
	jr nc, jr_06d_63ee                               ; $63bb: $30 $31

	jr nc, jr_06d_63d2                               ; $63bd: $30 $13

	ld de, $5757                                     ; $63bf: $11 $57 $57
	ld h, e                                          ; $63c2: $63
	ldh [$7f], a                                     ; $63c3: $e0 $7f
	rst SubAFromDE                                          ; $63c5: $df
	sbc e                                            ; $63c6: $9b
	ld [hl], b                                       ; $63c7: $70
	inc bc                                           ; $63c8: $03
	ld bc, $2367                                     ; $63c9: $01 $67 $23
	ldh [$7e], a                                     ; $63cc: $e0 $7e
	ld c, h                                          ; $63ce: $4c

jr_06d_63cf:
	ld a, a                                          ; $63cf: $7f
	rst SubAFromDE                                          ; $63d0: $df
	sbc [hl]                                         ; $63d1: $9e

jr_06d_63d2:
	ld [hl], e                                       ; $63d2: $73
	ld a, e                                          ; $63d3: $7b
	ret nz                                           ; $63d4: $c0

	sbc [hl]                                         ; $63d5: $9e
	ld l, a                                          ; $63d6: $6f
	rra                                              ; $63d7: $1f
	ldh [$9c], a                                     ; $63d8: $e0 $9c
	ld hl, sp+$73                                    ; $63da: $f8 $73
	ld [hl], c                                       ; $63dc: $71
	ccf                                              ; $63dd: $3f

Jump_06d_63de:
	ldh [$bc], a                                     ; $63de: $e0 $bc
	ld bc, $be86                                     ; $63e0: $01 $86 $be
	call $bb5c                                       ; $63e3: $cd $5c $bb
	add hl, sp                                       ; $63e6: $39
	rst FarCall                                          ; $63e7: $f7
	db $e3                                           ; $63e8: $e3
	cp $4f                                           ; $63e9: $fe $4f
	db $fd                                           ; $63eb: $fd
	cp $fb                                           ; $63ec: $fe $fb

jr_06d_63ee:
	ld c, a                                          ; $63ee: $4f
	ld a, [$f94f]                                    ; $63ef: $fa $4f $f9
	ld l, a                                          ; $63f2: $6f
	rst SubAFromDE                                          ; $63f3: $df
	ld l, e                                          ; $63f4: $6b
	db $db                                           ; $63f5: $db
	xor d                                            ; $63f6: $aa
	jp c, $98e8                                      ; $63f7: $da $e8 $98

	xor b                                            ; $63fa: $a8
	ld [hl], e                                       ; $63fb: $73
	cp $81                                           ; $63fc: $fe $81
	jr z, jr_06d_6398                                ; $63fe: $28 $98

	adc b                                            ; $6400: $88
	jr c, jr_06d_63cf                                ; $6401: $38 $cc

	inc a                                            ; $6403: $3c
	adc $3c                                          ; $6404: $ce $3c
	db $d3                                           ; $6406: $d3
	ld a, $d1                                        ; $6407: $3e $d1
	ccf                                              ; $6409: $3f
	sub c                                            ; $640a: $91
	ld a, a                                          ; $640b: $7f
	and e                                            ; $640c: $a3
	rst $38                                          ; $640d: $ff
	and h                                            ; $640e: $a4
	db $fc                                           ; $640f: $fc
	xor b                                            ; $6410: $a8
	ld hl, sp-$50                                    ; $6411: $f8 $b0
	ldh a, [$a0]                                     ; $6413: $f0 $a0
	ldh [$a0], a                                     ; $6415: $e0 $a0
	ldh [rLCDC], a                                   ; $6417: $e0 $40
	ret nz                                           ; $6419: $c0

	ld b, b                                          ; $641a: $40
	ret nz                                           ; $641b: $c0

	db $dd                                           ; $641c: $dd
	add b                                            ; $641d: $80
	add h                                            ; $641e: $84
	ld l, e                                          ; $641f: $6b
	or $e6                                           ; $6420: $f6 $e6
	cp h                                             ; $6422: $bc
	call z, $9078                                    ; $6423: $cc $78 $90
	db $fc                                           ; $6426: $fc
	ld a, [hl-]                                      ; $6427: $3a
	db $fc                                           ; $6428: $fc
	db $fd                                           ; $6429: $fd
	add $fe                                          ; $642a: $c6 $fe
	ld [hl], e                                       ; $642c: $73
	rst $38                                          ; $642d: $ff
	db $fd                                           ; $642e: $fd
	rst SubAFromDE                                          ; $642f: $df
	adc $9d                                          ; $6430: $ce $9d
	sbc h                                            ; $6432: $9c
	pop af                                           ; $6433: $f1
	ld hl, sp-$58                                    ; $6434: $f8 $a8
	ret c                                            ; $6436: $d8

	cp $70                                           ; $6437: $fe $70
	ld bc, $8afc                                     ; $6439: $01 $fc $8a
	dec h                                            ; $643c: $25
	ccf                                              ; $643d: $3f
	add hl, hl                                       ; $643e: $29
	ccf                                              ; $643f: $3f
	ld c, c                                          ; $6440: $49
	ld a, a                                          ; $6441: $7f
	ld d, d                                          ; $6442: $52
	ld a, a                                          ; $6443: $7f
	and $7f                                          ; $6444: $e6 $7f
	rst AddAOntoHL                                          ; $6446: $ef
	ld e, e                                          ; $6447: $5b
	halt                                             ; $6448: $76
	sbc e                                            ; $6449: $9b
	rst $38                                          ; $644a: $ff
	sub e                                            ; $644b: $93
	rst SubAFromBC                                          ; $644c: $e7
	nop                                              ; $644d: $00
	jp nz, $8101                                     ; $644e: $c2 $01 $81

	db $db                                           ; $6451: $db
	ld bc, $0080                                     ; $6452: $01 $80 $00
	inc c                                            ; $6455: $0c
	nop                                              ; $6456: $00
	ld a, [bc]                                       ; $6457: $0a
	inc c                                            ; $6458: $0c
	ld [hl], $ff                                     ; $6459: $36 $ff
	ld [hl], a                                       ; $645b: $77
	db $dd                                           ; $645c: $dd
	ld a, l                                          ; $645d: $7d
	db $db                                           ; $645e: $db
	ld [hl], e                                       ; $645f: $73
	rst SubAFromDE                                          ; $6460: $df
	rst SubAFromHL                                          ; $6461: $d7
	cp l                                             ; $6462: $bd
	ccf                                              ; $6463: $3f
	ld hl, sp-$01                                    ; $6464: $f8 $ff
	ret nz                                           ; $6466: $c0

	rst $38                                          ; $6467: $ff
	jr c, @+$01                                      ; $6468: $38 $ff

	db $fc                                           ; $646a: $fc
	cp a                                             ; $646b: $bf
	sbc [hl]                                         ; $646c: $9e
	ccf                                              ; $646d: $3f
	dec [hl]                                         ; $646e: $35
	rst SubAFromHL                                          ; $646f: $d7
	pop af                                           ; $6470: $f1
	xor l                                            ; $6471: $ad

jr_06d_6472:
	ld h, e                                          ; $6472: $63
	add b                                            ; $6473: $80
	sbc $e3                                          ; $6474: $de $e3
	ld a, [bc]                                       ; $6476: $0a
	rlca                                             ; $6477: $07
	inc b                                            ; $6478: $04
	rlca                                             ; $6479: $07
	dec c                                            ; $647a: $0d
	ld b, $0b                                        ; $647b: $06 $0b
	inc c                                            ; $647d: $0c
	dec de                                           ; $647e: $1b
	inc c                                            ; $647f: $0c
	ld sp, $711c                                     ; $6480: $31 $1c $71
	inc a                                            ; $6483: $3c
	ld d, d                                          ; $6484: $52
	ld sp, hl                                        ; $6485: $f9
	sub e                                            ; $6486: $93
	ld sp, hl                                        ; $6487: $f9
	daa                                              ; $6488: $27
	ld sp, hl                                        ; $6489: $f9
	dec l                                            ; $648a: $2d
	di                                               ; $648b: $f3

jr_06d_648c:
	ld a, [hl+]                                      ; $648c: $2a
	rst FarCall                                          ; $648d: $f7
	ldh [c], a                                       ; $648e: $e2
	ld a, a                                          ; $648f: $7f
	db $e4                                           ; $6490: $e4
	ld a, a                                          ; $6491: $7f
	call nz, $7f80                                   ; $6492: $c4 $80 $7f
	ld c, b                                          ; $6495: $48
	rst $38                                          ; $6496: $ff
	ret                                              ; $6497: $c9


	rst $38                                          ; $6498: $ff

jr_06d_6499:
	db $db                                           ; $6499: $db
	ld a, a                                          ; $649a: $7f
	ld b, l                                          ; $649b: $45
	rst $38                                          ; $649c: $ff
	ld b, h                                          ; $649d: $44
	rst $38                                          ; $649e: $ff
	inc h                                            ; $649f: $24
	rst $38                                          ; $64a0: $ff
	inc hl                                           ; $64a1: $23
	rst $38                                          ; $64a2: $ff
	or d                                             ; $64a3: $b2
	rst $38                                          ; $64a4: $ff
	ld [$a5ff], a                                    ; $64a5: $ea $ff $a5
	rst $38                                          ; $64a8: $ff
	and h                                            ; $64a9: $a4
	rst $38                                          ; $64aa: $ff
	sub h                                            ; $64ab: $94
	rst $38                                          ; $64ac: $ff
	jp nc, $d2bf                                     ; $64ad: $d2 $bf $d2

	cp a                                             ; $64b0: $bf

jr_06d_64b1:
	jp z, $9bbf                                      ; $64b1: $ca $bf $9b

	res 7, a                                         ; $64b4: $cb $bf
	xor l                                            ; $64b6: $ad
	db $db                                           ; $64b7: $db
	ld d, a                                          ; $64b8: $57
	cp $87                                           ; $64b9: $fe $87
	xor c                                            ; $64bb: $a9
	rst SubAFromDE                                          ; $64bc: $df
	or d                                             ; $64bd: $b2
	sbc $52                                          ; $64be: $de $52
	cp [hl]                                          ; $64c0: $be
	ld d, d                                          ; $64c1: $52
	cp [hl]                                          ; $64c2: $be
	sub h                                            ; $64c3: $94
	ld a, h                                          ; $64c4: $7c
	xor h                                            ; $64c5: $ac
	ld l, h                                          ; $64c6: $6c
	jr z, jr_06d_64b1                                ; $64c7: $28 $e8

	ld c, b                                          ; $64c9: $48
	ret z                                            ; $64ca: $c8

	ld c, b                                          ; $64cb: $48
	ret z                                            ; $64cc: $c8

	add b                                            ; $64cd: $80
	add b                                            ; $64ce: $80
	nop                                              ; $64cf: $00
	nop                                              ; $64d0: $00
	ldh [$e0], a                                     ; $64d1: $e0 $e0
	ld c, e                                          ; $64d3: $4b
	nop                                              ; $64d4: $00
	sbc d                                            ; $64d5: $9a
	ld hl, sp+$6f                                    ; $64d6: $f8 $6f
	reti                                             ; $64d8: $d9


	ld l, a                                          ; $64d9: $6f
	rst SubAFromDE                                          ; $64da: $df
	ld d, a                                          ; $64db: $57
	nop                                              ; $64dc: $00
	ld d, e                                          ; $64dd: $53
	jr nz, jr_06d_6472                               ; $64de: $20 $92

	inc bc                                           ; $64e0: $03
	rst $38                                          ; $64e1: $ff
	ld [hl], c                                       ; $64e2: $71
	rst $38                                          ; $64e3: $ff
	db $fc                                           ; $64e4: $fc
	rst JumpTable                                          ; $64e5: $c7
	adc $dd                                          ; $64e6: $ce $dd
	cp h                                             ; $64e8: $bc
	db $f4                                           ; $64e9: $f4
	db $fc                                           ; $64ea: $fc
	cp $30                                           ; $64eb: $fe $30
	daa                                              ; $64ed: $27
	jr nz, jr_06d_648c                               ; $64ee: $20 $9c

	jp $8000                                         ; $64f0: $c3 $00 $80


	ld h, e                                          ; $64f3: $63
	jr nz, @-$61                                     ; $64f4: $20 $9d

	ld c, $08                                        ; $64f6: $0e $08
	ld c, e                                          ; $64f8: $4b
	jr nz, jr_06d_6499                               ; $64f9: $20 $9e

	nop                                              ; $64fb: $00
	ld [hl], e                                       ; $64fc: $73
	ld e, $99                                        ; $64fd: $1e $99
	sbc a                                            ; $64ff: $9f
	ld a, a                                          ; $6500: $7f
	push af                                          ; $6501: $f5
	push hl                                          ; $6502: $e5
	ld [hl], e                                       ; $6503: $73
	cp $73                                           ; $6504: $fe $73
	jr nz, jr_06d_654b                               ; $6506: $20 $43

	add b                                            ; $6508: $80
	sbc b                                            ; $6509: $98
	ret c                                            ; $650a: $d8

	ld l, a                                          ; $650b: $6f
	reti                                             ; $650c: $d9


	xor a                                            ; $650d: $af
	rst SubAFromDE                                          ; $650e: $df
	ld [$2b9a], a                                    ; $650f: $ea $9a $2b
	add b                                            ; $6512: $80
	sbc h                                            ; $6513: $9c
	ld bc, $70ff                                     ; $6514: $01 $ff $70
	ld a, e                                          ; $6517: $7b
	ld a, [hl]                                       ; $6518: $7e
	sbc h                                            ; $6519: $9c
	sbc [hl]                                         ; $651a: $9e
	call c, $1efc                                    ; $651b: $dc $fc $1e
	and b                                            ; $651e: $a0
	ld a, a                                          ; $651f: $7f
	add b                                            ; $6520: $80
	sbc h                                            ; $6521: $9c
	add c                                            ; $6522: $81
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	rra                                              ; $6525: $1f
	add b                                            ; $6526: $80
	ld [hl], a                                       ; $6527: $77
	ld a, [hl]                                       ; $6528: $7e
	sbc b                                            ; $6529: $98
	db $fd                                           ; $652a: $fd
	cp a                                             ; $652b: $bf
	sbc a                                            ; $652c: $9f
	ld l, l                                          ; $652d: $6d
	di                                               ; $652e: $f3
	cp $f3                                           ; $652f: $fe $f3
	dec hl                                           ; $6531: $2b
	add b                                            ; $6532: $80
	sbc c                                            ; $6533: $99
	ret c                                            ; $6534: $d8

	xor a                                            ; $6535: $af
	rst SubAFromDE                                          ; $6536: $df
	db $eb                                           ; $6537: $eb
	sbc c                                            ; $6538: $99
	xor c                                            ; $6539: $a9
	daa                                              ; $653a: $27
	add b                                            ; $653b: $80
	ld a, a                                          ; $653c: $7f
	ret nz                                           ; $653d: $c0

	ld a, a                                          ; $653e: $7f
	cp b                                             ; $653f: $b8
	sbc l                                            ; $6540: $9d
	ld b, $fc                                        ; $6541: $06 $fc
	rrca                                             ; $6543: $0f
	add b                                            ; $6544: $80
	ld a, e                                          ; $6545: $7b
	add h                                            ; $6546: $84
	sbc [hl]                                         ; $6547: $9e
	inc bc                                           ; $6548: $03
	rra                                              ; $6549: $1f
	add b                                            ; $654a: $80

jr_06d_654b:
	ld a, a                                          ; $654b: $7f
	cp $9a                                           ; $654c: $fe $9a
	ld sp, hl                                        ; $654e: $f9
	rst $38                                          ; $654f: $ff
	rlca                                             ; $6550: $07
	db $fd                                           ; $6551: $fd
	ei                                               ; $6552: $fb
	ld l, a                                          ; $6553: $6f
	add b                                            ; $6554: $80
	ld hl, sp-$69                                    ; $6555: $f8 $97
	add b                                            ; $6557: $80
	ldh [$e0], a                                     ; $6558: $e0 $e0
	inc a                                            ; $655a: $3c
	jr jr_06d_656b                                   ; $655b: $18 $0e

	ld b, $03                                        ; $655d: $06 $03
	ld l, a                                          ; $655f: $6f
	xor c                                            ; $6560: $a9
	ld a, [$04de]                                    ; $6561: $fa $de $04
	add b                                            ; $6564: $80
	ld [rRAMG], sp                                   ; $6565: $08 $00 $00
	ld [hl], b                                       ; $6568: $70
	ld [hl], b                                       ; $6569: $70
	adc b                                            ; $656a: $88

jr_06d_656b:
	adc b                                            ; $656b: $88
	ld hl, sp+$70                                    ; $656c: $f8 $70
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	ld h, e                                          ; $6570: $63
	ld bc, $0707                                     ; $6571: $01 $07 $07
	rrca                                             ; $6574: $0f
	dec e                                            ; $6575: $1d
	rst $38                                          ; $6576: $ff
	pop af                                           ; $6577: $f1
	ld a, [hl]                                       ; $6578: $7e
	ld h, e                                          ; $6579: $63
	dec l                                            ; $657a: $2d
	ld a, $33                                        ; $657b: $3e $33
	jr nc, jr_06d_65b0                               ; $657d: $30 $31

	jr nc, jr_06d_6594                               ; $657f: $30 $13

	ld de, $5757                                     ; $6581: $11 $57 $57
	ld h, e                                          ; $6584: $63
	ldh [$99], a                                     ; $6585: $e0 $99
	adc b                                            ; $6587: $88
	ld [hl], b                                       ; $6588: $70
	ld [hl], b                                       ; $6589: $70
	inc bc                                           ; $658a: $03
	ld bc, $1b67                                     ; $658b: $01 $67 $1b
	ldh [$98], a                                     ; $658e: $e0 $98
	ldh a, [hDisp1_SCY]                                     ; $6590: $f0 $90
	ld h, e                                          ; $6592: $63
	ld h, c                                          ; $6593: $61

jr_06d_6594:
	ld h, a                                          ; $6594: $67
	rlca                                             ; $6595: $07
	adc a                                            ; $6596: $8f
	inc bc                                           ; $6597: $03
	ldh [rVBK], a                                    ; $6598: $e0 $4f
	ldh [$d0], a                                     ; $659a: $e0 $d0
	ld [bc], a                                       ; $659c: $02
	db $fd                                           ; $659d: $fd
	db $db                                           ; $659e: $db
	ld bc, $029d                                     ; $659f: $01 $9d $02
	inc bc                                           ; $65a2: $03
	ld l, a                                          ; $65a3: $6f
	cp $9d                                           ; $65a4: $fe $9d
	inc b                                            ; $65a6: $04
	rlca                                             ; $65a7: $07
	ld d, a                                          ; $65a8: $57
	cp $96                                           ; $65a9: $fe $96
	ld [$090f], sp                                   ; $65ab: $08 $0f $09
	ld c, $09                                        ; $65ae: $0e $09

jr_06d_65b0:
	ld c, $12                                        ; $65b0: $0e $12
	dec e                                            ; $65b2: $1d
	inc de                                           ; $65b3: $13
	ld a, e                                          ; $65b4: $7b
	cp $98                                           ; $65b5: $fe $98
	inc hl                                           ; $65b7: $23
	dec a                                            ; $65b8: $3d
	inc hl                                           ; $65b9: $23
	dec a                                            ; $65ba: $3d
	ld b, l                                          ; $65bb: $45
	ld a, e                                          ; $65bc: $7b
	ld b, [hl]                                       ; $65bd: $46
	ld a, e                                          ; $65be: $7b
	cp $9b                                           ; $65bf: $fe $9b
	sub [hl]                                         ; $65c1: $96
	ei                                               ; $65c2: $fb
	sub d                                            ; $65c3: $92
	rst $38                                          ; $65c4: $ff
	ld h, a                                          ; $65c5: $67
	cp $8f                                           ; $65c6: $fe $8f
	sbc c                                            ; $65c8: $99
	rst $38                                          ; $65c9: $ff
	ld e, c                                          ; $65ca: $59
	ld a, a                                          ; $65cb: $7f
	ld e, c                                          ; $65cc: $59
	ld a, a                                          ; $65cd: $7f
	ld d, h                                          ; $65ce: $54
	ld [hl], a                                       ; $65cf: $77
	inc [hl]                                         ; $65d0: $34
	scf                                              ; $65d1: $37
	inc [hl]                                         ; $65d2: $34
	scf                                              ; $65d3: $37
	ld [de], a                                       ; $65d4: $12
	inc de                                           ; $65d5: $13
	ld [de], a                                       ; $65d6: $12
	inc de                                           ; $65d7: $13
	db $dd                                           ; $65d8: $dd
	ld bc, $dff7                                     ; $65d9: $01 $f7 $df
	inc bc                                           ; $65dc: $03
	ld [hl], a                                       ; $65dd: $77
	cp c                                             ; $65de: $b9
	add l                                            ; $65df: $85
	rrca                                             ; $65e0: $0f
	ld [$101f], sp                                   ; $65e1: $08 $1f $10
	ld e, $11                                        ; $65e4: $1e $11
	dec de                                           ; $65e6: $1b
	inc d                                            ; $65e7: $14
	dec a                                            ; $65e8: $3d
	ld h, $3f                                        ; $65e9: $26 $3f
	inc hl                                           ; $65eb: $23
	ccf                                              ; $65ec: $3f
	ld hl, $233c                                     ; $65ed: $21 $3c $23
	ld [hl], $29                                     ; $65f0: $36 $29
	ld a, e                                          ; $65f2: $7b
	ld b, h                                          ; $65f3: $44
	ld a, e                                          ; $65f4: $7b
	ld b, [hl]                                       ; $65f5: $46
	ld a, c                                          ; $65f6: $79
	ld b, a                                          ; $65f7: $47
	ld e, h                                          ; $65f8: $5c
	ld h, e                                          ; $65f9: $63
	db $eb                                           ; $65fa: $eb
	rst SubAFromDE                                          ; $65fb: $df
	inc bc                                           ; $65fc: $03
	add [hl]                                         ; $65fd: $86
	dec c                                            ; $65fe: $0d
	ld c, $13                                        ; $65ff: $0e $13
	inc e                                            ; $6601: $1c
	daa                                              ; $6602: $27
	jr c, jr_06d_6651                                ; $6603: $38 $4c

	ld [hl], e                                       ; $6605: $73
	sbc b                                            ; $6606: $98
	and $a0                                          ; $6607: $e6 $a0
	call c, $b840                                    ; $6609: $dc $40 $b8
	nop                                              ; $660c: $00
	ldh a, [$15]                                     ; $660d: $f0 $15
	ldh [$0a], a                                     ; $660f: $e0 $0a
	push hl                                          ; $6611: $e5
	ld [bc], a                                       ; $6612: $02
	db $ed                                           ; $6613: $ed
	dec h                                            ; $6614: $25
	jp c, Jump_06d_7b37                              ; $6615: $da $37 $7b

	cp $9a                                           ; $6618: $fe $9a
	ld e, e                                          ; $661a: $5b
	or [hl]                                          ; $661b: $b6
	ld l, e                                          ; $661c: $6b
	or [hl]                                          ; $661d: $b6
	ld l, l                                          ; $661e: $6d
	ld a, e                                          ; $661f: $7b
	cp $9c                                           ; $6620: $fe $9c
	or h                                             ; $6622: $b4
	ld l, a                                          ; $6623: $6f
	ret c                                            ; $6624: $d8

	ld a, e                                          ; $6625: $7b
	cp $86                                           ; $6626: $fe $86
	xor b                                            ; $6628: $a8
	rst SubAFromDE                                          ; $6629: $df
	or c                                             ; $662a: $b1
	rst SubAFromDE                                          ; $662b: $df
	pop de                                           ; $662c: $d1
	cp a                                             ; $662d: $bf
	ld h, d                                          ; $662e: $62
	cp a                                             ; $662f: $bf
	ld h, h                                          ; $6630: $64
	cp a                                             ; $6631: $bf
	call nz, $887f                                   ; $6632: $c4 $7f $88
	rst $38                                          ; $6635: $ff
	inc sp                                           ; $6636: $33
	rst $38                                          ; $6637: $ff
	db $ec                                           ; $6638: $ec
	rst $38                                          ; $6639: $ff
	ld h, a                                          ; $663a: $67
	cp e                                             ; $663b: $bb
	ld l, h                                          ; $663c: $6c
	or e                                             ; $663d: $b3
	push hl                                          ; $663e: $e5
	inc sp                                           ; $663f: $33
	ld h, l                                          ; $6640: $65
	ld a, e                                          ; $6641: $7b
	cp $7f                                           ; $6642: $fe $7f
	ld a, [$dd80]                                    ; $6644: $fa $80 $dd
	inc sp                                           ; $6647: $33
	ld e, l                                          ; $6648: $5d
	or e                                             ; $6649: $b3
	scf                                              ; $664a: $37
	reti                                             ; $664b: $d9


	dec hl                                           ; $664c: $2b
	db $dd                                           ; $664d: $dd
	sbc d                                            ; $664e: $9a
	db $ed                                           ; $664f: $ed
	sub h                                            ; $6650: $94

jr_06d_6651:
	rst AddAOntoHL                                          ; $6651: $ef
	add h                                            ; $6652: $84
	rst $38                                          ; $6653: $ff
	ld b, d                                          ; $6654: $42
	rst $38                                          ; $6655: $ff
	ld h, d                                          ; $6656: $62
	rst $38                                          ; $6657: $ff
	ld d, c                                          ; $6658: $51
	rst SubAFromDE                                          ; $6659: $df
	xor b                                            ; $665a: $a8
	rst AddAOntoHL                                          ; $665b: $ef
	and d                                            ; $665c: $a2
	db $e3                                           ; $665d: $e3
	ld d, c                                          ; $665e: $51
	ld [hl], c                                       ; $665f: $71
	jr nc, jr_06d_6692                               ; $6660: $30 $30

	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	ccf                                              ; $6664: $3f
	add b                                            ; $6665: $80
	ccf                                              ; $6666: $3f
	rst $38                                          ; $6667: $ff
	pop bc                                           ; $6668: $c1
	rst $38                                          ; $6669: $ff
	ld bc, $21df                                     ; $666a: $01 $df $21
	rst AddAOntoHL                                          ; $666d: $ef
	ld sp, $f817                                     ; $666e: $31 $17 $f8
	adc a                                            ; $6671: $8f
	ld hl, sp+$4f                                    ; $6672: $f8 $4f
	ld sp, hl                                        ; $6674: $f9
	xor a                                            ; $6675: $af
	ld a, l                                          ; $6676: $7d
	rst SubAFromDE                                          ; $6677: $df
	dec a                                            ; $6678: $3d
	adc a                                            ; $6679: $8f
	db $fc                                           ; $667a: $fc
	add a                                            ; $667b: $87
	db $fd                                           ; $667c: $fd
	ld b, a                                          ; $667d: $47
	db $fd                                           ; $667e: $fd
	dec h                                            ; $667f: $25
	rst $38                                          ; $6680: $ff
	sub l                                            ; $6681: $95
	ld a, a                                          ; $6682: $7f
	sbc l                                            ; $6683: $9d
	ld a, a                                          ; $6684: $7f
	sbc l                                            ; $6685: $9d
	adc l                                            ; $6686: $8d
	rst $38                                          ; $6687: $ff
	rst AddAOntoHL                                          ; $6688: $ef
	rst SubAFromDE                                          ; $6689: $df
	rrca                                             ; $668a: $0f
	add b                                            ; $668b: $80
	ld [hl], b                                       ; $668c: $70
	ld a, a                                          ; $668d: $7f
	inc a                                            ; $668e: $3c
	jp $0ff0                                         ; $668f: $c3 $f0 $0f


jr_06d_6692:
	rst GetHLinHL                                          ; $6692: $cf
	jr nc, jr_06d_66d4                               ; $6693: $30 $3f

	ret nz                                           ; $6695: $c0

	di                                               ; $6696: $f3
	inc c                                            ; $6697: $0c
	ld b, d                                          ; $6698: $42
	ld sp, $6205                                     ; $6699: $31 $05 $62
	add d                                            ; $669c: $82
	ld b, h                                          ; $669d: $44
	nop                                              ; $669e: $00
	adc h                                            ; $669f: $8c
	inc c                                            ; $66a0: $0c
	adc b                                            ; $66a1: $88
	ld bc, $1918                                     ; $66a2: $01 $18 $19
	db $10                                           ; $66a5: $10
	db $10                                           ; $66a6: $10
	ld sp, $3122                                     ; $66a7: $31 $22 $31
	pop af                                           ; $66aa: $f1
	sub d                                            ; $66ab: $92
	ld [hl+], a                                      ; $66ac: $22
	and h                                            ; $66ad: $a4
	ld h, d                                          ; $66ae: $62
	add $62                                          ; $66af: $c6 $62
	ld c, d                                          ; $66b1: $4a
	and $4c                                          ; $66b2: $e6 $4c
	and $8d                                          ; $66b4: $e6 $8d
	and $95                                          ; $66b6: $e6 $95
	xor $e0                                          ; $66b8: $ee $e0
	pop bc                                           ; $66ba: $c1
	add [hl]                                         ; $66bb: $86
	dec b                                            ; $66bc: $05
	rlca                                             ; $66bd: $07

jr_06d_66be:
	add [hl]                                         ; $66be: $86
	inc bc                                           ; $66bf: $03
	ld b, a                                          ; $66c0: $47
	inc bc                                           ; $66c1: $03
	add c                                            ; $66c2: $81
	ld bc, $80a3                                     ; $66c3: $01 $a3 $80
	pop bc                                           ; $66c6: $c1
	add b                                            ; $66c7: $80
	add c                                            ; $66c8: $81
	nop                                              ; $66c9: $00
	ld b, e                                          ; $66ca: $43
	ld bc, $0187                                     ; $66cb: $01 $87 $01
	rst $38                                          ; $66ce: $ff
	cp h                                             ; $66cf: $bc
	rst FarCall                                          ; $66d0: $f7
	ld h, d                                          ; $66d1: $62
	res 0, c                                         ; $66d2: $cb $81

jr_06d_66d4:
	rlca                                             ; $66d4: $07
	cp [hl]                                          ; $66d5: $be
	inc bc                                           ; $66d6: $03
	adc e                                            ; $66d7: $8b
	rst SubAFromHL                                          ; $66d8: $d7
	ld e, d                                          ; $66d9: $5a
	sub [hl]                                         ; $66da: $96
	rst $38                                          ; $66db: $ff
	rst SubAFromDE                                          ; $66dc: $df
	jr jr_06d_66be                                   ; $66dd: $18 $df

	ld [hl], b                                       ; $66df: $70
	add b                                            ; $66e0: $80
	and b                                            ; $66e1: $a0
	ldh [$bf], a                                     ; $66e2: $e0 $bf
	rst $38                                          ; $66e4: $ff
	jp z, $14fd                                      ; $66e5: $ca $fd $14

	ei                                               ; $66e8: $fb
	ld sp, $c5fe                                     ; $66e9: $31 $fe $c5
	ld a, $82                                        ; $66ec: $3e $82
	ld a, a                                          ; $66ee: $7f
	ld sp, $fccf                                     ; $66ef: $31 $cf $fc
	inc bc                                           ; $66f2: $03
	xor $01                                          ; $66f3: $ee $01
	call c, $d103                                    ; $66f5: $dc $03 $d1
	ld b, $a8                                        ; $66f8: $06 $a8
	ld b, $8c                                        ; $66fa: $06 $8c
	ld b, $06                                        ; $66fc: $06 $06
	inc c                                            ; $66fe: $0c
	inc d                                            ; $66ff: $14
	ld a, e                                          ; $6700: $7b
	cp $91                                           ; $6701: $fe $91
	ld [$2d1c], sp                                   ; $6703: $08 $1c $2d
	jr jr_06d_6730                                   ; $6706: $18 $28

	add hl, de                                       ; $6708: $19
	ld [hl], $19                                     ; $6709: $36 $19
	dec d                                            ; $670b: $15
	dec sp                                           ; $670c: $3b
	ld l, l                                          ; $670d: $6d
	inc sp                                           ; $670e: $33
	xor e                                            ; $670f: $ab
	halt                                             ; $6710: $76
	ldh [$c1], a                                     ; $6711: $e0 $c1
	add b                                            ; $6713: $80
	ldh [c], a                                       ; $6714: $e2
	add d                                            ; $6715: $82
	ldh [c], a                                       ; $6716: $e2
	add d                                            ; $6717: $82
	cp $42                                           ; $6718: $fe $42
	db $fc                                           ; $671a: $fc
	db $e4                                           ; $671b: $e4
	db $fc                                           ; $671c: $fc
	call c, $84dc                                    ; $671d: $dc $dc $84
	add [hl]                                         ; $6720: $86
	add h                                            ; $6721: $84
	ld b, $04                                        ; $6722: $06 $04
	ld [bc], a                                       ; $6724: $02
	ld [bc], a                                       ; $6725: $02
	add e                                            ; $6726: $83
	add d                                            ; $6727: $82
	add e                                            ; $6728: $83
	add d                                            ; $6729: $82
	add c                                            ; $672a: $81
	ld sp, hl                                        ; $672b: $f9
	add c                                            ; $672c: $81
	xor l                                            ; $672d: $ad
	pop bc                                           ; $672e: $c1
	rst JumpTable                                          ; $672f: $c7

jr_06d_6730:
	cp b                                             ; $6730: $b8
	ld hl, sp-$7a                                    ; $6731: $f8 $86
	sbc [hl]                                         ; $6733: $9e
	cp $ef                                           ; $6734: $fe $ef
	rst SubAFromDE                                          ; $6736: $df
	ret nz                                           ; $6737: $c0

	add b                                            ; $6738: $80
	ld a, $fe                                        ; $6739: $3e $fe
	ld a, l                                          ; $673b: $7d
	add e                                            ; $673c: $83
	ret nz                                           ; $673d: $c0

	ccf                                              ; $673e: $3f
	add a                                            ; $673f: $87
	ld a, b                                          ; $6740: $78
	rra                                              ; $6741: $1f
	ldh [$30], a                                     ; $6742: $e0 $30
	rst GetHLinHL                                          ; $6744: $cf
	xor d                                            ; $6745: $aa
	call c, $ff50                                    ; $6746: $dc $50 $ff
	daa                                              ; $6749: $27
	ld hl, sp-$74                                    ; $674a: $f8 $8c
	ld [hl], b                                       ; $674c: $70
	call z, $c432                                    ; $674d: $cc $32 $c4
	dec sp                                           ; $6750: $3b
	and [hl]                                         ; $6751: $a6
	ld a, c                                          ; $6752: $79
	db $e3                                           ; $6753: $e3
	ld e, h                                          ; $6754: $5c
	xor c                                            ; $6755: $a9
	sub $e9                                          ; $6756: $d6 $e9
	sub d                                            ; $6758: $92
	sub [hl]                                         ; $6759: $96
	and d                                            ; $675a: $a2
	sub l                                            ; $675b: $95
	or c                                             ; $675c: $b1
	sub l                                            ; $675d: $95
	ei                                               ; $675e: $fb
	sub l                                            ; $675f: $95
	ld sp, hl                                        ; $6760: $f9
	sub a                                            ; $6761: $97
	jp nc, $d2bf                                     ; $6762: $d2 $bf $d2

	cp a                                             ; $6765: $bf
	ldh [$c1], a                                     ; $6766: $e0 $c1
	sub e                                            ; $6768: $93
	ld c, a                                          ; $6769: $4f
	ld b, [hl]                                       ; $676a: $46
	sbc a                                            ; $676b: $9f
	add l                                            ; $676c: $85
	ld a, a                                          ; $676d: $7f
	ld a, $e7                                        ; $676e: $3e $e7
	ld b, c                                          ; $6770: $41
	rrca                                             ; $6771: $0f
	rrca                                             ; $6772: $0f
	db $10                                           ; $6773: $10
	db $10                                           ; $6774: $10
	ld a, c                                          ; $6775: $79
	xor b                                            ; $6776: $a8
	sbc d                                            ; $6777: $9a
	ld bc, $0307                                     ; $6778: $01 $07 $03

Jump_06d_677b:
	rlca                                             ; $677b: $07
	ld bc, $fe77                                     ; $677c: $01 $77 $fe
	ld a, [hl]                                       ; $677f: $7e

Jump_06d_6780:
	jp nz, $8399                                     ; $6780: $c2 $99 $83

	nop                                              ; $6783: $00
	add c                                            ; $6784: $81
	add b                                            ; $6785: $80
	add c                                            ; $6786: $81
	add b                                            ; $6787: $80
	db $eb                                           ; $6788: $eb
	rst SubAFromDE                                          ; $6789: $df
	add b                                            ; $678a: $80
	add b                                            ; $678b: $80
	ld h, b                                          ; $678c: $60
	ldh [hDisp1_SCY], a                                     ; $678d: $e0 $90
	ld [hl], b                                       ; $678f: $70
	db $fc                                           ; $6790: $fc
	inc c                                            ; $6791: $0c
	ld a, [de]                                       ; $6792: $1a
	and $0f                                          ; $6793: $e6 $0f
	inc sp                                           ; $6795: $33
	add h                                            ; $6796: $84
	dec de                                           ; $6797: $1b
	ld e, a                                          ; $6798: $5f
	adc c                                            ; $6799: $89
	ld a, [bc]                                       ; $679a: $0a
	call $4ce3                                       ; $679b: $cd $e3 $4c
	ld c, a                                          ; $679e: $4f
	ld h, h                                          ; $679f: $64
	dec a                                            ; $67a0: $3d
	and $3b                                          ; $67a1: $e6 $3b
	and $aa                                          ; $67a3: $e6 $aa
	rst FarCall                                          ; $67a5: $f7
	jp c, $dd77                                      ; $67a6: $da $77 $dd

	ld [hl], e                                       ; $67a9: $73
	push af                                          ; $67aa: $f5
	sub [hl]                                         ; $67ab: $96
	ld e, e                                          ; $67ac: $5b
	ld l, h                                          ; $67ad: $6c
	db $db                                           ; $67ae: $db
	ld l, b                                          ; $67af: $68
	rst SubAFromDE                                          ; $67b0: $df
	ld d, h                                          ; $67b1: $54
	rst AddAOntoHL                                          ; $67b2: $ef
	jp z, $e0f7                                      ; $67b3: $ca $f7 $e0

	pop bc                                           ; $67b6: $c1
	sbc e                                            ; $67b7: $9b
	ld hl, sp+$38                                    ; $67b8: $f8 $38
	ldh a, [rAUD1SWEEP]                              ; $67ba: $f0 $10
	sbc $f0                                          ; $67bc: $de $f0
	add a                                            ; $67be: $87
	db $10                                           ; $67bf: $10
	ld hl, sp-$78                                    ; $67c0: $f8 $88
	ld hl, sp+$48                                    ; $67c2: $f8 $48
	db $ec                                           ; $67c4: $ec
	inc l                                            ; $67c5: $2c
	db $e4                                           ; $67c6: $e4
	inc h                                            ; $67c7: $24
	and $a2                                          ; $67c8: $e6 $a2
	and $22                                          ; $67ca: $e6 $22
	pop bc                                           ; $67cc: $c1
	ld b, a                                          ; $67cd: $47
	pop bc                                           ; $67ce: $c1
	adc c                                            ; $67cf: $89
	add $b7                                          ; $67d0: $c6 $b7
	adc b                                            ; $67d2: $88
	rst GetHLinHL                                          ; $67d3: $cf
	sub b                                            ; $67d4: $90
	sbc a                                            ; $67d5: $9f
	ldh [$79], a                                     ; $67d6: $e0 $79
	add b                                            ; $67d8: $80
	rst SubAFromDE                                          ; $67d9: $df
	add b                                            ; $67da: $80
	sub a                                            ; $67db: $97
	ld b, b                                          ; $67dc: $40
	ret nz                                           ; $67dd: $c0

	and b                                            ; $67de: $a0
	ldh [hDisp1_SCY], a                                     ; $67df: $e0 $90
	ldh a, [rOBP0]                                   ; $67e1: $f0 $48
	ld hl, sp+$77                                    ; $67e3: $f8 $77
	cp $9d                                           ; $67e5: $fe $9d
	inc h                                            ; $67e7: $24
	db $fc                                           ; $67e8: $fc
	ld [hl], a                                       ; $67e9: $77
	cp $9a                                           ; $67ea: $fe $9a
	inc d                                            ; $67ec: $14
	db $fc                                           ; $67ed: $fc
	sub h                                            ; $67ee: $94
	db $fc                                           ; $67ef: $fc
	adc b                                            ; $67f0: $88
	ld [hl], a                                       ; $67f1: $77
	call $f89e                                       ; $67f2: $cd $9e $f8
	ldh [$c1], a                                     ; $67f5: $e0 $c1
	adc d                                            ; $67f7: $8a
	ldh [$3f], a                                     ; $67f8: $e0 $3f
	ld [hl], b                                       ; $67fa: $70
	rra                                              ; $67fb: $1f
	jr nc, jr_06d_681d                               ; $67fc: $30 $1f

	jr jr_06d_680f                                   ; $67fe: $18 $0f

	jr jr_06d_6811                                   ; $6800: $18 $0f

	inc c                                            ; $6802: $0c
	rlca                                             ; $6803: $07
	inc a                                            ; $6804: $3c
	ccf                                              ; $6805: $3f
	ld b, [hl]                                       ; $6806: $46
	ld b, e                                          ; $6807: $43
	adc a                                            ; $6808: $8f
	add c                                            ; $6809: $81
	add e                                            ; $680a: $83
	add b                                            ; $680b: $80
	inc bc                                           ; $680c: $03
	cp a                                             ; $680d: $bf

jr_06d_680e:
	dec d                                            ; $680e: $15

jr_06d_680f:
	xor e                                            ; $680f: $ab
	sbc b                                            ; $6810: $98

jr_06d_6811:
	add b                                            ; $6811: $80
	rst SubAFromDE                                          ; $6812: $df
	pop bc                                           ; $6813: $c1
	rst $38                                          ; $6814: $ff
	cp [hl]                                          ; $6815: $be
	rst FarCall                                          ; $6816: $f7
	ret nz                                           ; $6817: $c0

	ld e, [hl]                                       ; $6818: $5e
	ldh a, [$dd]                                     ; $6819: $f0 $dd
	add b                                            ; $681b: $80
	ld l, a                                          ; $681c: $6f

jr_06d_681d:
	db $f4                                           ; $681d: $f4
	ld [hl], a                                       ; $681e: $77
	ld l, [hl]                                       ; $681f: $6e
	ld a, a                                          ; $6820: $7f
	cp $dd                                           ; $6821: $fe $dd
	ret nz                                           ; $6823: $c0

	ld h, a                                          ; $6824: $67
	db $ec                                           ; $6825: $ec
	ld a, $c0                                        ; $6826: $3e $c0
	adc b                                            ; $6828: $88
	ld a, b                                          ; $6829: $78

jr_06d_682a:
	ld hl, sp+$04                                    ; $682a: $f8 $04

jr_06d_682c:
	db $fc                                           ; $682c: $fc
	ld [bc], a                                       ; $682d: $02
	cp $02                                           ; $682e: $fe $02
	cp $01                                           ; $6830: $fe $01
	rst $38                                          ; $6832: $ff
	pop bc                                           ; $6833: $c1
	ccf                                              ; $6834: $3f
	call nc, $f42f                                   ; $6835: $d4 $2f $f4
	rrca                                             ; $6838: $0f

jr_06d_6839:
	db $f4                                           ; $6839: $f4
	cpl                                              ; $683a: $2f
	db $f4                                           ; $683b: $f4
	cpl                                              ; $683c: $2f
	di                                               ; $683d: $f3
	inc l                                            ; $683e: $2c
	ei                                               ; $683f: $fb
	ld [hl], a                                       ; $6840: $77
	cp $9a                                           ; $6841: $fe $9a
	xor h                                            ; $6843: $ac
	ei                                               ; $6844: $fb
	sbc h                                            ; $6845: $9c
	rst FarCall                                          ; $6846: $f7
	sbc b                                            ; $6847: $98
	ld a, e                                          ; $6848: $7b
	cp $9a                                           ; $6849: $fe $9a
	jr @-$01                                         ; $684b: $18 $fd

	adc d                                            ; $684d: $8a
	ld a, [$6f8d]                                    ; $684e: $fa $8d $6f
	jp nc, $b077                                     ; $6851: $d2 $77 $b0

	ld a, a                                          ; $6854: $7f
	cp $9c                                           ; $6855: $fe $9c
	jr nz, jr_06d_6839                               ; $6857: $20 $e0

	jr nz, jr_06d_68d5                               ; $6859: $20 $7a

	adc d                                            ; $685b: $8a
	ld a, a                                          ; $685c: $7f
	cp $93                                           ; $685d: $fe $93
	ret nc                                           ; $685f: $d0

	jr nc, jr_06d_682a                               ; $6860: $30 $c8

	jr c, jr_06d_682c                                ; $6862: $38 $c8

	jr c, jr_06d_680e                                ; $6864: $38 $a8

	ld e, b                                          ; $6866: $58
	ld c, b                                          ; $6867: $48
	cp b                                             ; $6868: $b8
	adc b                                            ; $6869: $88
	ld a, b                                          ; $686a: $78
	dec e                                            ; $686b: $1d
	nop                                              ; $686c: $00
	sbc $99                                          ; $686d: $de $99
	sbc e                                            ; $686f: $9b
	cp e                                             ; $6870: $bb
	sbc c                                            ; $6871: $99
	ld de, $7711                                     ; $6872: $11 $11 $77
	ei                                               ; $6875: $fb
	rst SubAFromDE                                          ; $6876: $df
	sbc c                                            ; $6877: $99
	sbc [hl]                                         ; $6878: $9e
	ld h, [hl]                                       ; $6879: $66
	ld [hl], a                                       ; $687a: $77
	ei                                               ; $687b: $fb
	sbc [hl]                                         ; $687c: $9e
	nop                                              ; $687d: $00
	ld [hl], a                                       ; $687e: $77
	ei                                               ; $687f: $fb
	ld a, a                                          ; $6880: $7f
	db $fd                                           ; $6881: $fd
	ld [hl], e                                       ; $6882: $73
	or $77                                           ; $6883: $f6 $77
	db $ed                                           ; $6885: $ed
	sbc $bb                                          ; $6886: $de $bb
	adc $01                                          ; $6888: $ce $01
	add c                                            ; $688a: $81
	sub l                                            ; $688b: $95
	xor $ab                                          ; $688c: $ee $ab
	call c, $d92e                                    ; $688e: $dc $2e $d9
	inc d                                            ; $6891: $14
	ei                                               ; $6892: $fb
	dec l                                            ; $6893: $2d
	di                                               ; $6894: $f3
	ld d, e                                          ; $6895: $53
	rst AddAOntoHL                                          ; $6896: $ef
	add a                                            ; $6897: $87
	db $fd                                           ; $6898: $fd
	rrca                                             ; $6899: $0f
	ld sp, hl                                        ; $689a: $f9
	rra                                              ; $689b: $1f
	ld hl, sp+$6f                                    ; $689c: $f8 $6f
	ld sp, hl                                        ; $689e: $f9
	xor a                                            ; $689f: $af
	db $db                                           ; $68a0: $db
	xor a                                            ; $68a1: $af
	ret c                                            ; $68a2: $d8

	ld c, h                                          ; $68a3: $4c
	cp b                                             ; $68a4: $b8
	ld c, h                                          ; $68a5: $4c
	cp b                                             ; $68a6: $b8
	ld e, h                                          ; $68a7: $5c
	xor b                                            ; $68a8: $a8
	ld [hl], a                                       ; $68a9: $77
	cp $80                                           ; $68aa: $fe $80
	ld d, h                                          ; $68ac: $54
	xor h                                            ; $68ad: $ac
	ld b, $ac                                        ; $68ae: $06 $ac
	ld b, $af                                        ; $68b0: $06 $af
	adc e                                            ; $68b2: $8b
	and a                                            ; $68b3: $a7
	or d                                             ; $68b4: $b2
	add a                                            ; $68b5: $87
	jp nc, $8187                                     ; $68b6: $d2 $87 $81

	rst SubAFromHL                                          ; $68b9: $d7
	ld b, l                                          ; $68ba: $45
	db $db                                           ; $68bb: $db
	ld h, l                                          ; $68bc: $65
	db $db                                           ; $68bd: $db
	ld d, l                                          ; $68be: $55
	db $eb                                           ; $68bf: $eb
	or l                                             ; $68c0: $b5
	rst AddAOntoHL                                          ; $68c1: $ef
	and h                                            ; $68c2: $a4
	rst $38                                          ; $68c3: $ff
	db $f4                                           ; $68c4: $f4
	rst $38                                          ; $68c5: $ff
	sub d                                            ; $68c6: $92
	sbc a                                            ; $68c7: $9f
	ld a, [bc]                                       ; $68c8: $0a
	rrca                                             ; $68c9: $0f
	cpl                                              ; $68ca: $2f
	add e                                            ; $68cb: $83
	db $f4                                           ; $68cc: $f4
	ld d, a                                          ; $68cd: $57
	db $ec                                           ; $68ce: $ec
	adc h                                            ; $68cf: $8c
	ei                                               ; $68d0: $fb
	sbc e                                            ; $68d1: $9b
	rst $38                                          ; $68d2: $ff
	scf                                              ; $68d3: $37
	db $fc                                           ; $68d4: $fc

jr_06d_68d5:
	ld l, a                                          ; $68d5: $6f
	ret c                                            ; $68d6: $d8

	rst $38                                          ; $68d7: $ff
	add b                                            ; $68d8: $80
	rst $38                                          ; $68d9: $ff
	inc a                                            ; $68da: $3c
	rst $38                                          ; $68db: $ff
	ld a, [hl]                                       ; $68dc: $7e
	db $ed                                           ; $68dd: $ed
	call z, $dcdc                                    ; $68de: $cc $dc $dc
	db $f4                                           ; $68e1: $f4
	db $fc                                           ; $68e2: $fc
	ld d, h                                          ; $68e3: $54
	ld c, h                                          ; $68e4: $4c
	ccf                                              ; $68e5: $3f
	jr c, jr_06d_68f7                                ; $68e6: $38 $0f

	or $80                                           ; $68e8: $f6 $80
	ret nz                                           ; $68ea: $c0

	add b                                            ; $68eb: $80
	ldh [$c0], a                                     ; $68ec: $e0 $c0
	ld hl, sp+$30                                    ; $68ee: $f8 $30
	rst $38                                          ; $68f0: $ff
	inc c                                            ; $68f1: $0c
	rst AddAOntoHL                                          ; $68f2: $ef
	add e                                            ; $68f3: $83
	ld h, a                                          ; $68f4: $67
	ldh [$df], a                                     ; $68f5: $e0 $df

jr_06d_68f7:
	rst $38                                          ; $68f7: $ff
	xor b                                            ; $68f8: $a8
	rst $38                                          ; $68f9: $ff
	pop de                                           ; $68fa: $d1
	rst $38                                          ; $68fb: $ff
	jp hl                                            ; $68fc: $e9


	rst $38                                          ; $68fd: $ff
	sbc [hl]                                         ; $68fe: $9e
	sbc [hl]                                         ; $68ff: $9e
	adc [hl]                                         ; $6900: $8e
	add d                                            ; $6901: $82
	sub [hl]                                         ; $6902: $96
	db $fd                                           ; $6903: $fd
	or a                                             ; $6904: $b7
	db $ed                                           ; $6905: $ed
	or a                                             ; $6906: $b7
	db $ed                                           ; $6907: $ed
	cp a                                             ; $6908: $bf
	sub e                                            ; $6909: $93
	jp hl                                            ; $690a: $e9


	ld a, [hl]                                       ; $690b: $7e
	set 7, a                                         ; $690c: $cb $ff
	ret nc                                           ; $690e: $d0

	rst $38                                          ; $690f: $ff
	add c                                            ; $6910: $81
	di                                               ; $6911: $f3
	ld bc, $01c3                                     ; $6912: $01 $c3 $01
	add b                                            ; $6915: $80
	sbc $01                                          ; $6916: $de $01
	add b                                            ; $6918: $80
	rra                                              ; $6919: $1f
	nop                                              ; $691a: $00
	ld a, a                                          ; $691b: $7f
	nop                                              ; $691c: $00
	rst FarCall                                          ; $691d: $f7
	nop                                              ; $691e: $00
	jp $0102                                         ; $691f: $c3 $02 $01


	ld [bc], a                                       ; $6922: $02
	and $bb                                          ; $6923: $e6 $bb
	ld sp, $c8df                                     ; $6925: $31 $df $c8
	rst $38                                          ; $6928: $ff
	db $f4                                           ; $6929: $f4
	ccf                                              ; $692a: $3f
	cp $0f                                           ; $692b: $fe $0f
	ei                                               ; $692d: $fb
	rst SubAFromBC                                          ; $692e: $e7
	db $fd                                           ; $692f: $fd
	di                                               ; $6930: $f3
	cp [hl]                                          ; $6931: $be
	ccf                                              ; $6932: $3f
	ld a, [hl]                                       ; $6933: $7e
	ld l, e                                          ; $6934: $6b
	xor $e3                                          ; $6935: $ee $e3
	jp z, Jump_06d_6780                              ; $6937: $ca $80 $67

	ld a, [$fde7]                                    ; $693a: $fa $e7 $fd
	rlca                                             ; $693d: $07
	adc l                                            ; $693e: $8d
	rlca                                             ; $693f: $07
	dec c                                            ; $6940: $0d
	rlca                                             ; $6941: $07
	inc c                                            ; $6942: $0c
	rlca                                             ; $6943: $07
	inc h                                            ; $6944: $24
	db $fc                                           ; $6945: $fc
	ld [hl], $fe                                     ; $6946: $36 $fe
	adc c                                            ; $6948: $89
	rst $38                                          ; $6949: $ff
	ld b, h                                          ; $694a: $44
	rst $38                                          ; $694b: $ff
	inc hl                                           ; $694c: $23
	rst $38                                          ; $694d: $ff
	db $10                                           ; $694e: $10
	rst $38                                          ; $694f: $ff
	adc a                                            ; $6950: $8f
	rst $38                                          ; $6951: $ff
	ld a, c                                          ; $6952: $79
	rst $38                                          ; $6953: $ff
	add hl, hl                                       ; $6954: $29
	rst $38                                          ; $6955: $ff
	and h                                            ; $6956: $a4
	ld a, a                                          ; $6957: $7f
	add a                                            ; $6958: $87
	xor [hl]                                         ; $6959: $ae
	ld [hl], a                                       ; $695a: $77
	ld e, l                                          ; $695b: $5d
	or l                                             ; $695c: $b5
	ld e, h                                          ; $695d: $5c
	or h                                             ; $695e: $b4
	ld e, h                                          ; $695f: $5c
	or h                                             ; $6960: $b4
	ld d, h                                          ; $6961: $54
	cp h                                             ; $6962: $bc
	sub h                                            ; $6963: $94
	db $fc                                           ; $6964: $fc
	or h                                             ; $6965: $b4
	db $fc                                           ; $6966: $fc
	and h                                            ; $6967: $a4
	db $fc                                           ; $6968: $fc
	ret z                                            ; $6969: $c8

	ret c                                            ; $696a: $d8

	ret z                                            ; $696b: $c8

	ret c                                            ; $696c: $d8

	sub b                                            ; $696d: $90
	sub b                                            ; $696e: $90
	add b                                            ; $696f: $80
	add b                                            ; $6970: $80
	ld h, e                                          ; $6971: $63
	ld [hl], h                                       ; $6972: $74
	sub h                                            ; $6973: $94
	ret nz                                           ; $6974: $c0

	ccf                                              ; $6975: $3f
	rst $38                                          ; $6976: $ff
	nop                                              ; $6977: $00
	rst $38                                          ; $6978: $ff
	add b                                            ; $6979: $80
	ld a, a                                          ; $697a: $7f
	db $fc                                           ; $697b: $fc
	inc bc                                           ; $697c: $03
	cp $c1                                           ; $697d: $fe $c1
	dec sp                                           ; $697f: $3b
	nop                                              ; $6980: $00
	sbc c                                            ; $6981: $99
	ld hl, sp-$51                                    ; $6982: $f8 $af
	reti                                             ; $6984: $d9


	xor a                                            ; $6985: $af
	db $db                                           ; $6986: $db
	ld c, a                                          ; $6987: $4f
	ld l, e                                          ; $6988: $6b
	nop                                              ; $6989: $00
	ld c, e                                          ; $698a: $4b
	jr nz, jr_06d_6a0c                               ; $698b: $20 $7f

	ret                                              ; $698d: $c9


	sbc e                                            ; $698e: $9b
	inc e                                            ; $698f: $1c
	rst $38                                          ; $6990: $ff
	ld a, [hl]                                       ; $6991: $7e
	db $ec                                           ; $6992: $ec
	ld [hl], e                                       ; $6993: $73
	ld e, $6f                                        ; $6994: $1e $6f
	jr nz, jr_06d_69eb                               ; $6996: $20 $53

	ld b, b                                          ; $6998: $40
	sbc [hl]                                         ; $6999: $9e
	add b                                            ; $699a: $80
	ld [hl], a                                       ; $699b: $77
	ld b, b                                          ; $699c: $40
	sbc h                                            ; $699d: $9c
	add c                                            ; $699e: $81
	ld bc, $2f00                                     ; $699f: $01 $00 $2f
	ld b, b                                          ; $69a2: $40
	sbc e                                            ; $69a3: $9b
	rlca                                             ; $69a4: $07
	db $fd                                           ; $69a5: $fd
	db $e3                                           ; $69a6: $e3
	cp $73                                           ; $69a7: $fe $73
	ld a, $9d                                        ; $69a9: $3e $9d
	jp z, Jump_06d_5fe7                              ; $69ab: $ca $e7 $5f

	ld b, b                                          ; $69ae: $40
	inc sp                                           ; $69af: $33
	add b                                            ; $69b0: $80
	sbc d                                            ; $69b1: $9a
	ret c                                            ; $69b2: $d8

	xor a                                            ; $69b3: $af
	reti                                             ; $69b4: $d9


	ld c, a                                          ; $69b5: $4f
	cp e                                             ; $69b6: $bb
	dec hl                                           ; $69b7: $2b
	add b                                            ; $69b8: $80
	ld a, e                                          ; $69b9: $7b
	ld a, [hl]                                       ; $69ba: $7e
	sbc [hl]                                         ; $69bb: $9e
	cp $7b                                           ; $69bc: $fe $7b
	ld a, [hl]                                       ; $69be: $7e
	sbc h                                            ; $69bf: $9c
	sub h                                            ; $69c0: $94
	call c, $377f                                    ; $69c1: $dc $7f $37
	add b                                            ; $69c4: $80
	ld a, a                                          ; $69c5: $7f
	adc h                                            ; $69c6: $8c
	ld a, e                                          ; $69c7: $7b
	add b                                            ; $69c8: $80
	rst SubAFromDE                                          ; $69c9: $df
	ld bc, $1e9d                                     ; $69ca: $01 $9d $1e
	ld bc, $8033                                     ; $69cd: $01 $33 $80
	ld a, a                                          ; $69d0: $7f
	db $10                                           ; $69d1: $10
	ld [hl], e                                       ; $69d2: $73
	ld a, [hl]                                       ; $69d3: $7e
	sbc h                                            ; $69d4: $9c
	ld a, d                                          ; $69d5: $7a
	ld l, a                                          ; $69d6: $6f
	jp c, $8007                                      ; $69d7: $da $07 $80

	sbc [hl]                                         ; $69da: $9e
	ret c                                            ; $69db: $d8

	dec de                                           ; $69dc: $1b
	add b                                            ; $69dd: $80
	sub [hl]                                         ; $69de: $96
	inc c                                            ; $69df: $0c
	cp $72                                           ; $69e0: $fe $72
	db $fc                                           ; $69e2: $fc
	inc c                                            ; $69e3: $0c
	db $fc                                           ; $69e4: $fc
	db $fc                                           ; $69e5: $fc
	rst $38                                          ; $69e6: $ff
	ld a, b                                          ; $69e7: $78
	inc sp                                           ; $69e8: $33
	add b                                            ; $69e9: $80
	sbc [hl]                                         ; $69ea: $9e

jr_06d_69eb:
	nop                                              ; $69eb: $00
	ld a, e                                          ; $69ec: $7b
	add b                                            ; $69ed: $80
	sbc l                                            ; $69ee: $9d
	nop                                              ; $69ef: $00
	rra                                              ; $69f0: $1f
	daa                                              ; $69f1: $27
	add b                                            ; $69f2: $80
	ld a, a                                          ; $69f3: $7f
	cp $9a                                           ; $69f4: $fe $9a
	ld h, e                                          ; $69f6: $63
	cp $9f                                           ; $69f7: $fe $9f
	ld a, [$5f7f]                                    ; $69f9: $fa $7f $5f
	nop                                              ; $69fc: $00
	rst $38                                          ; $69fd: $ff
	rst SubAFromDE                                          ; $69fe: $df
	ld bc, $1a9a                                     ; $69ff: $01 $9a $1a
	stop                                             ; $6a02: $10 $00
	nop                                              ; $6a04: $00
	inc c                                            ; $6a05: $0c
	db $fc                                           ; $6a06: $fc
	add b                                            ; $6a07: $80
	inc bc                                           ; $6a08: $03
	ld bc, $83e7                                     ; $6a09: $01 $e7 $83

jr_06d_6a0c:
	rst $38                                          ; $6a0c: $ff
	rst $38                                          ; $6a0d: $ff
	db $dd                                           ; $6a0e: $dd
	rst JumpTable                                          ; $6a0f: $c7
	cp c                                             ; $6a10: $b9
	adc a                                            ; $6a11: $8f
	scf                                              ; $6a12: $37
	rra                                              ; $6a13: $1f
	ld l, c                                          ; $6a14: $69
	add hl, sp                                       ; $6a15: $39
	ld [hl], e                                       ; $6a16: $73
	jr nc, jr_06d_6a7c                               ; $6a17: $30 $63

	ld [hl+], a                                      ; $6a19: $22
	inc c                                            ; $6a1a: $0c
	rrca                                             ; $6a1b: $0f
	inc e                                            ; $6a1c: $1c
	rrca                                             ; $6a1d: $0f
	ld d, $1d                                        ; $6a1e: $16 $1d
	ld d, $3d                                        ; $6a20: $16 $3d
	ld h, $7d                                        ; $6a22: $26 $7d
	sub $6d                                          ; $6a24: $d6 $6d
	sbc e                                            ; $6a26: $9b
	adc h                                            ; $6a27: $8c
	db $ed                                           ; $6a28: $ed
	sbc l                                            ; $6a29: $9d
	db $eb                                           ; $6a2a: $eb
	dec a                                            ; $6a2b: $3d
	srl l                                            ; $6a2c: $cb $3d
	sra c                                            ; $6a2e: $cb $29
	rst SubAFromDE                                          ; $6a30: $df
	ld d, c                                          ; $6a31: $51
	cp a                                             ; $6a32: $bf
	ld d, d                                          ; $6a33: $52
	cp a                                             ; $6a34: $bf
	ld [de], a                                       ; $6a35: $12
	rst $38                                          ; $6a36: $ff
	and l                                            ; $6a37: $a5
	db $fd                                           ; $6a38: $fd
	add sp, $78                                      ; $6a39: $e8 $78
	ld [hl], a                                       ; $6a3b: $77
	ret nz                                           ; $6a3c: $c0

	sbc l                                            ; $6a3d: $9d
	ld e, $14                                        ; $6a3e: $1e $14
	rra                                              ; $6a40: $1f
	ret nz                                           ; $6a41: $c0

	ld [hl], a                                       ; $6a42: $77
	db $ec                                           ; $6a43: $ec
	sbc h                                            ; $6a44: $9c
	ld e, $12                                        ; $6a45: $1e $12
	inc c                                            ; $6a47: $0c
	ld a, e                                          ; $6a48: $7b
	pop hl                                           ; $6a49: $e1
	ld [hl], a                                       ; $6a4a: $77
	sbc $2b                                          ; $6a4b: $de $2b
	ldh [$df], a                                     ; $6a4d: $e0 $df
	ld e, $77                                        ; $6a4f: $1e $77
	rst SubAFromDE                                          ; $6a51: $df
	ld a, e                                          ; $6a52: $7b
	sbc $3f                                          ; $6a53: $de $3f
	ldh [$dd], a                                     ; $6a55: $e0 $dd
	ld bc, $9581                                     ; $6a57: $01 $81 $95
	xor $ab                                          ; $6a5a: $ee $ab
	call c, $d92e                                    ; $6a5c: $dc $2e $d9
	inc d                                            ; $6a5f: $14
	ei                                               ; $6a60: $fb
	dec l                                            ; $6a61: $2d
	di                                               ; $6a62: $f3
	ld d, e                                          ; $6a63: $53
	rst AddAOntoHL                                          ; $6a64: $ef
	add a                                            ; $6a65: $87
	db $fd                                           ; $6a66: $fd
	rrca                                             ; $6a67: $0f
	ld sp, hl                                        ; $6a68: $f9
	rra                                              ; $6a69: $1f
	ld sp, hl                                        ; $6a6a: $f9
	ld l, a                                          ; $6a6b: $6f
	ei                                               ; $6a6c: $fb
	xor a                                            ; $6a6d: $af
	jp c, $d8ac                                      ; $6a6e: $da $ac $d8

	ld c, h                                          ; $6a71: $4c
	cp b                                             ; $6a72: $b8
	ld c, h                                          ; $6a73: $4c
	cp b                                             ; $6a74: $b8
	ld e, h                                          ; $6a75: $5c
	xor b                                            ; $6a76: $a8
	ld [hl], a                                       ; $6a77: $77
	cp $80                                           ; $6a78: $fe $80
	ld d, h                                          ; $6a7a: $54
	xor h                                            ; $6a7b: $ac

jr_06d_6a7c:
	ld b, $ac                                        ; $6a7c: $06 $ac
	ld b, $af                                        ; $6a7e: $06 $af
	adc e                                            ; $6a80: $8b
	and a                                            ; $6a81: $a7
	or d                                             ; $6a82: $b2
	add a                                            ; $6a83: $87
	jp nc, $8187                                     ; $6a84: $d2 $87 $81

	rst SubAFromHL                                          ; $6a87: $d7
	ld b, l                                          ; $6a88: $45
	db $db                                           ; $6a89: $db
	ld h, l                                          ; $6a8a: $65
	db $db                                           ; $6a8b: $db
	ld d, l                                          ; $6a8c: $55
	db $eb                                           ; $6a8d: $eb
	or l                                             ; $6a8e: $b5
	rst AddAOntoHL                                          ; $6a8f: $ef
	and h                                            ; $6a90: $a4
	rst $38                                          ; $6a91: $ff
	db $f4                                           ; $6a92: $f4
	rst $38                                          ; $6a93: $ff
	sub d                                            ; $6a94: $92
	sbc a                                            ; $6a95: $9f
	ld a, [bc]                                       ; $6a96: $0a
	rrca                                             ; $6a97: $0f
	cpl                                              ; $6a98: $2f
	add h                                            ; $6a99: $84
	db $f4                                           ; $6a9a: $f4
	ld d, a                                          ; $6a9b: $57
	db $ec                                           ; $6a9c: $ec
	adc c                                            ; $6a9d: $89
	cp $9e                                           ; $6a9e: $fe $9e
	rst $38                                          ; $6aa0: $ff
	ccf                                              ; $6aa1: $3f
	pop hl                                           ; $6aa2: $e1
	ld a, a                                          ; $6aa3: $7f
	ret nz                                           ; $6aa4: $c0

	rst $38                                          ; $6aa5: $ff
	cp h                                             ; $6aa6: $bc
	rst $38                                          ; $6aa7: $ff
	ld a, [hl]                                       ; $6aa8: $7e
	db $eb                                           ; $6aa9: $eb
	call z, $9c9d                                    ; $6aaa: $cc $9d $9c
	db $f4                                           ; $6aad: $f4
	db $fc                                           ; $6aae: $fc
	inc [hl]                                         ; $6aaf: $34
	ld a, h                                          ; $6ab0: $7c
	ld d, h                                          ; $6ab1: $54
	ld c, h                                          ; $6ab2: $4c
	ld a, [hl]                                       ; $6ab3: $7e
	jr c, @-$09                                      ; $6ab4: $38 $f5

	add b                                            ; $6ab6: $80
	ret nz                                           ; $6ab7: $c0

	add b                                            ; $6ab8: $80
	ldh [$c0], a                                     ; $6ab9: $e0 $c0
	ld hl, sp+$30                                    ; $6abb: $f8 $30
	rst $38                                          ; $6abd: $ff
	inc c                                            ; $6abe: $0c
	rst AddAOntoHL                                          ; $6abf: $ef
	add e                                            ; $6ac0: $83
	ld h, a                                          ; $6ac1: $67
	ldh [$df], a                                     ; $6ac2: $e0 $df
	rst $38                                          ; $6ac4: $ff
	xor b                                            ; $6ac5: $a8
	rst $38                                          ; $6ac6: $ff
	pop de                                           ; $6ac7: $d1
	rst $38                                          ; $6ac8: $ff
	jp hl                                            ; $6ac9: $e9


	rst $38                                          ; $6aca: $ff
	sbc [hl]                                         ; $6acb: $9e
	sbc [hl]                                         ; $6acc: $9e
	adc [hl]                                         ; $6acd: $8e
	add d                                            ; $6ace: $82
	sub [hl]                                         ; $6acf: $96
	db $fd                                           ; $6ad0: $fd
	or a                                             ; $6ad1: $b7
	db $ed                                           ; $6ad2: $ed
	or a                                             ; $6ad3: $b7
	db $ed                                           ; $6ad4: $ed
	cp a                                             ; $6ad5: $bf
	sbc h                                            ; $6ad6: $9c
	jp hl                                            ; $6ad7: $e9


	ld a, a                                          ; $6ad8: $7f
	jp z, $ed7b                                      ; $6ad9: $ca $7b $ed

	sbc b                                            ; $6adc: $98
	add c                                            ; $6add: $81
	di                                               ; $6ade: $f3
	ld bc, $01c2                                     ; $6adf: $01 $c2 $01
	add c                                            ; $6ae2: $81
	ld bc, $9efd                                     ; $6ae3: $01 $fd $9e
	inc b                                            ; $6ae6: $04
	cp a                                             ; $6ae7: $bf
	rlca                                             ; $6ae8: $07
	inc bc                                           ; $6ae9: $03
	add c                                            ; $6aea: $81
	ld [bc], a                                       ; $6aeb: $02

jr_06d_6aec:
	ld bc, $e602                                     ; $6aec: $01 $02 $e6
	cp e                                             ; $6aef: $bb
	ld de, $e8ff                                     ; $6af0: $11 $ff $e8
	rst $38                                          ; $6af3: $ff
	db $f4                                           ; $6af4: $f4
	rra                                              ; $6af5: $1f
	cp $e7                                           ; $6af6: $fe $e7
	rst $38                                          ; $6af8: $ff
	di                                               ; $6af9: $f3
	cp l                                             ; $6afa: $bd
	ccf                                              ; $6afb: $3f
	ld a, [hl]                                       ; $6afc: $7e
	ld l, e                                          ; $6afd: $6b
	xor $e3                                          ; $6afe: $ee $e3
	adc $e3                                          ; $6b00: $ce $e3
	xor d                                            ; $6b02: $aa
	ld h, a                                          ; $6b03: $67
	jp c, $1de7                                      ; $6b04: $da $e7 $1d

	rlca                                             ; $6b07: $07
	dec c                                            ; $6b08: $0d
	ld a, e                                          ; $6b09: $7b
	cp $80                                           ; $6b0a: $fe $80
	inc c                                            ; $6b0c: $0c
	rlca                                             ; $6b0d: $07
	inc h                                            ; $6b0e: $24
	db $fc                                           ; $6b0f: $fc
	ld [hl], $fe                                     ; $6b10: $36 $fe
	adc c                                            ; $6b12: $89
	rst $38                                          ; $6b13: $ff
	ld b, h                                          ; $6b14: $44
	rst $38                                          ; $6b15: $ff
	inc hl                                           ; $6b16: $23
	rst $38                                          ; $6b17: $ff
	db $10                                           ; $6b18: $10
	rst $38                                          ; $6b19: $ff
	adc a                                            ; $6b1a: $8f
	rst $38                                          ; $6b1b: $ff
	ld a, c                                          ; $6b1c: $79
	rst $38                                          ; $6b1d: $ff
	add hl, hl                                       ; $6b1e: $29
	rst $38                                          ; $6b1f: $ff
	and h                                            ; $6b20: $a4
	ld a, a                                          ; $6b21: $7f
	xor [hl]                                         ; $6b22: $ae
	ld [hl], a                                       ; $6b23: $77
	ld e, l                                          ; $6b24: $5d
	or l                                             ; $6b25: $b5
	ld e, h                                          ; $6b26: $5c
	or h                                             ; $6b27: $b4
	ld e, h                                          ; $6b28: $5c
	or h                                             ; $6b29: $b4
	ld d, h                                          ; $6b2a: $54
	sub b                                            ; $6b2b: $90
	cp h                                             ; $6b2c: $bc
	sub h                                            ; $6b2d: $94
	db $fc                                           ; $6b2e: $fc
	or h                                             ; $6b2f: $b4
	db $fc                                           ; $6b30: $fc
	and h                                            ; $6b31: $a4
	db $fc                                           ; $6b32: $fc
	ret z                                            ; $6b33: $c8

	ret c                                            ; $6b34: $d8

	ret z                                            ; $6b35: $c8

	ret c                                            ; $6b36: $d8

	sub b                                            ; $6b37: $90
	sub b                                            ; $6b38: $90
	add b                                            ; $6b39: $80
	add b                                            ; $6b3a: $80
	ld h, e                                          ; $6b3b: $63
	ld [hl], h                                       ; $6b3c: $74
	sub h                                            ; $6b3d: $94
	ret nz                                           ; $6b3e: $c0

	ccf                                              ; $6b3f: $3f
	rst $38                                          ; $6b40: $ff
	nop                                              ; $6b41: $00
	rst $38                                          ; $6b42: $ff
	add b                                            ; $6b43: $80
	ld a, a                                          ; $6b44: $7f
	db $fc                                           ; $6b45: $fc
	inc bc                                           ; $6b46: $03
	cp $c1                                           ; $6b47: $fe $c1
	ld b, e                                          ; $6b49: $43
	nop                                              ; $6b4a: $00
	sbc b                                            ; $6b4b: $98
	ld hl, sp+$6f                                    ; $6b4c: $f8 $6f
	ld sp, hl                                        ; $6b4e: $f9
	xor a                                            ; $6b4f: $af
	db $db                                           ; $6b50: $db
	xor a                                            ; $6b51: $af
	jp c, $0067                                      ; $6b52: $da $67 $00

	ld d, e                                          ; $6b55: $53
	jr nz, jr_06d_6aec                               ; $6b56: $20 $94

	add b                                            ; $6b58: $80
	rst $38                                          ; $6b59: $ff
	inc a                                            ; $6b5a: $3c
	rst $38                                          ; $6b5b: $ff
	ld a, [hl]                                       ; $6b5c: $7e
	db $ed                                           ; $6b5d: $ed
	call z, $dcdc                                    ; $6b5e: $cc $dc $dc
	db $f4                                           ; $6b61: $f4
	db $fc                                           ; $6b62: $fc
	ld h, a                                          ; $6b63: $67
	jr nz, jr_06d_6bc1                               ; $6b64: $20 $5b

	ld b, b                                          ; $6b66: $40
	sbc [hl]                                         ; $6b67: $9e
	ret nc                                           ; $6b68: $d0

	ld [hl], a                                       ; $6b69: $77
	ld b, b                                          ; $6b6a: $40
	sbc h                                            ; $6b6b: $9c
	jp $8001                                         ; $6b6c: $c3 $01 $80


	sbc $01                                          ; $6b6f: $de $01
	dec sp                                           ; $6b71: $3b
	ld b, b                                          ; $6b72: $40
	sbc c                                            ; $6b73: $99
	rlca                                             ; $6b74: $07
	rst $38                                          ; $6b75: $ff
	db $e3                                           ; $6b76: $e3
	db $fd                                           ; $6b77: $fd
	di                                               ; $6b78: $f3
	cp [hl]                                          ; $6b79: $be
	ld a, e                                          ; $6b7a: $7b
	ld a, $4f                                        ; $6b7b: $3e $4f
	ld b, b                                          ; $6b7d: $40
	dec sp                                           ; $6b7e: $3b
	add b                                            ; $6b7f: $80
	sbc b                                            ; $6b80: $98
	ld hl, sp-$51                                    ; $6b81: $f8 $af
	ret c                                            ; $6b83: $d8

	xor a                                            ; $6b84: $af
	reti                                             ; $6b85: $d9


	ld c, a                                          ; $6b86: $4f
	cp e                                             ; $6b87: $bb
	inc sp                                           ; $6b88: $33
	add b                                            ; $6b89: $80
	cp a                                             ; $6b8a: $bf
	rst $38                                          ; $6b8b: $ff
	rst $38                                          ; $6b8c: $ff
	sbc b                                            ; $6b8d: $98
	inc e                                            ; $6b8e: $1c
	cp $7e                                           ; $6b8f: $fe $7e
	db $ec                                           ; $6b91: $ec
	call z, $dc94                                    ; $6b92: $cc $94 $dc
	dec sp                                           ; $6b95: $3b
	add b                                            ; $6b96: $80
	sbc e                                            ; $6b97: $9b
	add b                                            ; $6b98: $80
	di                                               ; $6b99: $f3
	nop                                              ; $6b9a: $00
	jp $c07a                                         ; $6b9b: $c3 $7a $c0


	ld a, e                                          ; $6b9e: $7b
	add b                                            ; $6b9f: $80
	sbc [hl]                                         ; $6ba0: $9e
	ld bc, $803b                                     ; $6ba1: $01 $3b $80
	sbc c                                            ; $6ba4: $99
	inc bc                                           ; $6ba5: $03
	db $fd                                           ; $6ba6: $fd
	inc bc                                           ; $6ba7: $03
	cp $e3                                           ; $6ba8: $fe $e3
	cp $7b                                           ; $6baa: $fe $7b
	ld a, h                                          ; $6bac: $7c
	sbc h                                            ; $6bad: $9c
	ld a, d                                          ; $6bae: $7a
	ld l, a                                          ; $6baf: $6f
	cp d                                             ; $6bb0: $ba
	rlca                                             ; $6bb1: $07
	add b                                            ; $6bb2: $80
	sbc [hl]                                         ; $6bb3: $9e
	ret c                                            ; $6bb4: $d8

	dec de                                           ; $6bb5: $1b
	add b                                            ; $6bb6: $80
	sub [hl]                                         ; $6bb7: $96
	inc c                                            ; $6bb8: $0c
	cp $72                                           ; $6bb9: $fe $72
	db $fc                                           ; $6bbb: $fc
	inc c                                            ; $6bbc: $0c
	db $fc                                           ; $6bbd: $fc
	db $fc                                           ; $6bbe: $fc
	cp $78                                           ; $6bbf: $fe $78

jr_06d_6bc1:
	inc sp                                           ; $6bc1: $33
	add b                                            ; $6bc2: $80
	sbc [hl]                                         ; $6bc3: $9e
	nop                                              ; $6bc4: $00
	ld a, e                                          ; $6bc5: $7b
	add b                                            ; $6bc6: $80
	ld a, a                                          ; $6bc7: $7f
	add [hl]                                         ; $6bc8: $86
	daa                                              ; $6bc9: $27
	add b                                            ; $6bca: $80
	ld a, a                                          ; $6bcb: $7f
	cp $99                                           ; $6bcc: $fe $99
	ld h, e                                          ; $6bce: $63
	cp $9f                                           ; $6bcf: $fe $9f
	ld a, [$fa7f]                                    ; $6bd1: $fa $7f $fa
	ld h, e                                          ; $6bd4: $63
	add b                                            ; $6bd5: $80
	rst $38                                          ; $6bd6: $ff
	sub [hl]                                         ; $6bd7: $96
	dec sp                                           ; $6bd8: $3b
	ld bc, $4243                                     ; $6bd9: $01 $43 $42
	ld a, $3e                                        ; $6bdc: $3e $3e
	inc e                                            ; $6bde: $1c
	inc e                                            ; $6bdf: $1c
	nop                                              ; $6be0: $00
	cp a                                             ; $6be1: $bf
	inc c                                            ; $6be2: $0c
	inc bc                                           ; $6be3: $03
	add b                                            ; $6be4: $80
	ld bc, $83e7                                     ; $6be5: $01 $e7 $83
	rst $38                                          ; $6be8: $ff
	rst $38                                          ; $6be9: $ff
	db $dd                                           ; $6bea: $dd
	rst JumpTable                                          ; $6beb: $c7
	cp c                                             ; $6bec: $b9
	adc a                                            ; $6bed: $8f
	scf                                              ; $6bee: $37
	rra                                              ; $6bef: $1f
	ld l, c                                          ; $6bf0: $69
	add hl, sp                                       ; $6bf1: $39
	ld [hl], e                                       ; $6bf2: $73
	jr nc, jr_06d_6c58                               ; $6bf3: $30 $63

	ld [hl+], a                                      ; $6bf5: $22
	inc c                                            ; $6bf6: $0c
	rrca                                             ; $6bf7: $0f
	inc e                                            ; $6bf8: $1c
	rrca                                             ; $6bf9: $0f
	ld d, $1d                                        ; $6bfa: $16 $1d
	ld d, $3d                                        ; $6bfc: $16 $3d
	ld h, $7d                                        ; $6bfe: $26 $7d
	sub $6d                                          ; $6c00: $d6 $6d
	sbc e                                            ; $6c02: $9b
	db $ed                                           ; $6c03: $ed
	adc [hl]                                         ; $6c04: $8e
	sbc l                                            ; $6c05: $9d
	db $eb                                           ; $6c06: $eb
	dec a                                            ; $6c07: $3d
	srl l                                            ; $6c08: $cb $3d
	sra c                                            ; $6c0a: $cb $29
	rst SubAFromDE                                          ; $6c0c: $df
	ld d, c                                          ; $6c0d: $51
	cp a                                             ; $6c0e: $bf
	ld d, d                                          ; $6c0f: $52
	cp a                                             ; $6c10: $bf
	ld [de], a                                       ; $6c11: $12
	rst $38                                          ; $6c12: $ff
	and l                                            ; $6c13: $a5
	db $fd                                           ; $6c14: $fd
	add sp, $7b                                      ; $6c15: $e8 $7b
	ld a, h                                          ; $6c17: $7c
	ld a, a                                          ; $6c18: $7f
	ret nz                                           ; $6c19: $c0

	sbc e                                            ; $6c1a: $9b
	ld h, e                                          ; $6c1b: $63
	ld b, d                                          ; $6c1c: $42
	ld a, $3c                                        ; $6c1d: $3e $3c
	ld [hl], a                                       ; $6c1f: $77
	jp nz, $3fff                                     ; $6c20: $c2 $ff $3f

	ret nz                                           ; $6c23: $c0

	rst $38                                          ; $6c24: $ff
	sbc d                                            ; $6c25: $9a
	rrca                                             ; $6c26: $0f
	nop                                              ; $6c27: $00
	ld [hl], e                                       ; $6c28: $73
	ld [hl+], a                                      ; $6c29: $22
	ld a, $73                                        ; $6c2a: $3e $73
	and d                                            ; $6c2c: $a2
	rla                                              ; $6c2d: $17
	ldh [rPCM34], a                                  ; $6c2e: $e0 $77
	ldh [c], a                                       ; $6c30: $e2
	scf                                              ; $6c31: $37
	add b                                            ; $6c32: $80
	db $d3                                           ; $6c33: $d3
	ld bc, $9581                                     ; $6c34: $01 $81 $95
	xor $ab                                          ; $6c37: $ee $ab
	call c, $d92e                                    ; $6c39: $dc $2e $d9
	inc d                                            ; $6c3c: $14
	ei                                               ; $6c3d: $fb
	dec l                                            ; $6c3e: $2d
	di                                               ; $6c3f: $f3
	ld d, e                                          ; $6c40: $53
	rst AddAOntoHL                                          ; $6c41: $ef
	add a                                            ; $6c42: $87
	db $fd                                           ; $6c43: $fd
	rrca                                             ; $6c44: $0f
	ld sp, hl                                        ; $6c45: $f9
	rra                                              ; $6c46: $1f
	ld hl, sp+$6f                                    ; $6c47: $f8 $6f
	ld sp, hl                                        ; $6c49: $f9
	xor a                                            ; $6c4a: $af
	db $db                                           ; $6c4b: $db
	xor a                                            ; $6c4c: $af
	jp c, $b84c                                      ; $6c4d: $da $4c $b8

	ld c, h                                          ; $6c50: $4c
	cp b                                             ; $6c51: $b8
	ld e, h                                          ; $6c52: $5c
	xor b                                            ; $6c53: $a8
	ld [hl], a                                       ; $6c54: $77
	cp $80                                           ; $6c55: $fe $80
	ld d, h                                          ; $6c57: $54

jr_06d_6c58:
	xor h                                            ; $6c58: $ac
	ld b, $ac                                        ; $6c59: $06 $ac
	ld b, $af                                        ; $6c5b: $06 $af
	adc e                                            ; $6c5d: $8b
	and a                                            ; $6c5e: $a7
	or d                                             ; $6c5f: $b2
	add a                                            ; $6c60: $87
	jp nc, $8187                                     ; $6c61: $d2 $87 $81

	rst SubAFromHL                                          ; $6c64: $d7
	ld b, l                                          ; $6c65: $45
	db $db                                           ; $6c66: $db
	ld h, l                                          ; $6c67: $65
	db $db                                           ; $6c68: $db
	ld d, l                                          ; $6c69: $55
	db $eb                                           ; $6c6a: $eb
	or l                                             ; $6c6b: $b5
	rst AddAOntoHL                                          ; $6c6c: $ef
	and h                                            ; $6c6d: $a4
	rst $38                                          ; $6c6e: $ff
	db $f4                                           ; $6c6f: $f4
	rst $38                                          ; $6c70: $ff
	sub d                                            ; $6c71: $92
	sbc a                                            ; $6c72: $9f
	ld a, [bc]                                       ; $6c73: $0a
	rrca                                             ; $6c74: $0f
	cpl                                              ; $6c75: $2f
	add h                                            ; $6c76: $84
	db $f4                                           ; $6c77: $f4
	ld d, a                                          ; $6c78: $57
	db $ec                                           ; $6c79: $ec
	adc a                                            ; $6c7a: $8f
	ld hl, sp-$6f                                    ; $6c7b: $f8 $91
	cp $2e                                           ; $6c7d: $fe $2e
	rst $38                                          ; $6c7f: $ff
	ld a, a                                          ; $6c80: $7f
	pop af                                           ; $6c81: $f1
	rst $38                                          ; $6c82: $ff
	add b                                            ; $6c83: $80
	rst $38                                          ; $6c84: $ff
	inc a                                            ; $6c85: $3c
	rst $38                                          ; $6c86: $ff
	ld a, [hl]                                       ; $6c87: $7e

jr_06d_6c88:
	db $eb                                           ; $6c88: $eb
	call z, $9cdc                                    ; $6c89: $cc $dc $9c
	db $f4                                           ; $6c8c: $f4
	db $fc                                           ; $6c8d: $fc
	ld [hl], h                                       ; $6c8e: $74
	ld l, h                                          ; $6c8f: $6c
	ld a, [hl]                                       ; $6c90: $7e
	jr c, jr_06d_6c88                                ; $6c91: $38 $f5

	add b                                            ; $6c93: $80
	ret nz                                           ; $6c94: $c0

	add b                                            ; $6c95: $80
	ldh [$c0], a                                     ; $6c96: $e0 $c0
	ld hl, sp+$30                                    ; $6c98: $f8 $30
	rst $38                                          ; $6c9a: $ff
	inc c                                            ; $6c9b: $0c
	rst AddAOntoHL                                          ; $6c9c: $ef
	add e                                            ; $6c9d: $83
	ld h, a                                          ; $6c9e: $67
	ldh [$df], a                                     ; $6c9f: $e0 $df
	rst $38                                          ; $6ca1: $ff
	xor b                                            ; $6ca2: $a8
	rst $38                                          ; $6ca3: $ff
	pop de                                           ; $6ca4: $d1
	rst $38                                          ; $6ca5: $ff
	jp hl                                            ; $6ca6: $e9


	rst $38                                          ; $6ca7: $ff
	sbc [hl]                                         ; $6ca8: $9e
	sbc [hl]                                         ; $6ca9: $9e
	adc [hl]                                         ; $6caa: $8e
	add d                                            ; $6cab: $82
	sub [hl]                                         ; $6cac: $96
	db $fd                                           ; $6cad: $fd
	or a                                             ; $6cae: $b7
	db $ed                                           ; $6caf: $ed
	or a                                             ; $6cb0: $b7
	db $ed                                           ; $6cb1: $ed
	cp a                                             ; $6cb2: $bf
	sub e                                            ; $6cb3: $93
	jp hl                                            ; $6cb4: $e9


	ld a, [hl]                                       ; $6cb5: $7e
	set 7, a                                         ; $6cb6: $cb $ff
	ret nc                                           ; $6cb8: $d0

	rst $38                                          ; $6cb9: $ff
	add c                                            ; $6cba: $81
	di                                               ; $6cbb: $f3
	ld bc, $01c3                                     ; $6cbc: $01 $c3 $01
	add b                                            ; $6cbf: $80
	sbc $01                                          ; $6cc0: $de $01
	rst $38                                          ; $6cc2: $ff
	sbc [hl]                                         ; $6cc3: $9e
	inc b                                            ; $6cc4: $04
	cp a                                             ; $6cc5: $bf
	rlca                                             ; $6cc6: $07
	inc bc                                           ; $6cc7: $03
	add c                                            ; $6cc8: $81
	ld [bc], a                                       ; $6cc9: $02
	ld bc, $e602                                     ; $6cca: $01 $02 $e6
	cp e                                             ; $6ccd: $bb
	pop af                                           ; $6cce: $f1
	rra                                              ; $6ccf: $1f
	adc b                                            ; $6cd0: $88
	ld a, a                                          ; $6cd1: $7f
	ld [hl], h                                       ; $6cd2: $74
	rst $38                                          ; $6cd3: $ff
	cp $07                                           ; $6cd4: $fe $07
	rst $38                                          ; $6cd6: $ff
	db $e3                                           ; $6cd7: $e3
	db $fd                                           ; $6cd8: $fd
	di                                               ; $6cd9: $f3
	cp [hl]                                          ; $6cda: $be
	ccf                                              ; $6cdb: $3f
	ld a, [hl]                                       ; $6cdc: $7e
	ld l, e                                          ; $6cdd: $6b
	adc $e3                                          ; $6cde: $ce $e3
	ld l, d                                          ; $6ce0: $6a
	and a                                            ; $6ce1: $a7
	jp c, $1de7                                      ; $6ce2: $da $e7 $1d

	rlca                                             ; $6ce5: $07
	dec c                                            ; $6ce6: $0d
	ld a, e                                          ; $6ce7: $7b
	cp $80                                           ; $6ce8: $fe $80
	inc c                                            ; $6cea: $0c
	rlca                                             ; $6ceb: $07
	inc h                                            ; $6cec: $24
	db $fc                                           ; $6ced: $fc
	ld [hl], $fe                                     ; $6cee: $36 $fe
	adc c                                            ; $6cf0: $89
	rst $38                                          ; $6cf1: $ff
	ld b, h                                          ; $6cf2: $44
	rst $38                                          ; $6cf3: $ff
	inc hl                                           ; $6cf4: $23
	rst $38                                          ; $6cf5: $ff
	db $10                                           ; $6cf6: $10
	rst $38                                          ; $6cf7: $ff
	adc a                                            ; $6cf8: $8f
	rst $38                                          ; $6cf9: $ff
	ld a, c                                          ; $6cfa: $79
	rst $38                                          ; $6cfb: $ff
	add hl, hl                                       ; $6cfc: $29
	rst $38                                          ; $6cfd: $ff
	and h                                            ; $6cfe: $a4
	ld a, a                                          ; $6cff: $7f
	xor [hl]                                         ; $6d00: $ae
	ld [hl], a                                       ; $6d01: $77
	ld e, l                                          ; $6d02: $5d
	or l                                             ; $6d03: $b5
	ld e, h                                          ; $6d04: $5c
	or h                                             ; $6d05: $b4
	ld e, h                                          ; $6d06: $5c
	or h                                             ; $6d07: $b4
	ld d, h                                          ; $6d08: $54
	sub b                                            ; $6d09: $90
	cp h                                             ; $6d0a: $bc
	sub h                                            ; $6d0b: $94
	db $fc                                           ; $6d0c: $fc
	or h                                             ; $6d0d: $b4
	db $fc                                           ; $6d0e: $fc
	and h                                            ; $6d0f: $a4
	db $fc                                           ; $6d10: $fc
	ret z                                            ; $6d11: $c8

	ret c                                            ; $6d12: $d8

	ret z                                            ; $6d13: $c8

	ret c                                            ; $6d14: $d8

	sub b                                            ; $6d15: $90
	sub b                                            ; $6d16: $90
	add b                                            ; $6d17: $80
	add b                                            ; $6d18: $80
	ld h, e                                          ; $6d19: $63
	ld [hl], h                                       ; $6d1a: $74
	sub h                                            ; $6d1b: $94
	ret nz                                           ; $6d1c: $c0

	ccf                                              ; $6d1d: $3f
	rst $38                                          ; $6d1e: $ff
	nop                                              ; $6d1f: $00
	rst $38                                          ; $6d20: $ff
	add b                                            ; $6d21: $80
	ld a, a                                          ; $6d22: $7f
	db $fc                                           ; $6d23: $fc
	inc bc                                           ; $6d24: $03
	cp $c1                                           ; $6d25: $fe $c1
	dec sp                                           ; $6d27: $3b
	nop                                              ; $6d28: $00
	sbc c                                            ; $6d29: $99
	ld hl, sp-$51                                    ; $6d2a: $f8 $af
	reti                                             ; $6d2c: $d9


	xor a                                            ; $6d2d: $af
	db $db                                           ; $6d2e: $db
	ld c, a                                          ; $6d2f: $4f
	ld l, e                                          ; $6d30: $6b
	nop                                              ; $6d31: $00
	ld c, e                                          ; $6d32: $4b
	jr nz, jr_06d_6db4                               ; $6d33: $20 $7f

	ret                                              ; $6d35: $c9


	sub l                                            ; $6d36: $95
	inc e                                            ; $6d37: $1c
	rst $38                                          ; $6d38: $ff
	ld a, [hl]                                       ; $6d39: $7e
	db $ec                                           ; $6d3a: $ec
	call z, $dcdc                                    ; $6d3b: $cc $dc $dc
	db $f4                                           ; $6d3e: $f4
	db $fc                                           ; $6d3f: $fc
	ld a, $73                                        ; $6d40: $3e $73
	jr nz, jr_06d_6d97                               ; $6d42: $20 $53

	ld b, b                                          ; $6d44: $40
	sbc [hl]                                         ; $6d45: $9e
	add b                                            ; $6d46: $80
	ld [hl], a                                       ; $6d47: $77
	ld b, b                                          ; $6d48: $40
	sbc h                                            ; $6d49: $9c
	add c                                            ; $6d4a: $81
	ld bc, $7b00                                     ; $6d4b: $01 $00 $7b
	ccf                                              ; $6d4e: $3f
	dec sp                                           ; $6d4f: $3b
	ld b, b                                          ; $6d50: $40
	sbc e                                            ; $6d51: $9b
	inc bc                                           ; $6d52: $03
	db $fd                                           ; $6d53: $fd
	db $e3                                           ; $6d54: $e3
	cp $73                                           ; $6d55: $fe $73
	ld a, $9c                                        ; $6d57: $3e $9c
	jp z, $fae7                                      ; $6d59: $ca $e7 $fa

	ld h, e                                          ; $6d5c: $63
	ld b, b                                          ; $6d5d: $40
	ccf                                              ; $6d5e: $3f
	add b                                            ; $6d5f: $80
	sbc h                                            ; $6d60: $9c
	ld a, a                                          ; $6d61: $7f
	ldh a, [$cf]                                     ; $6d62: $f0 $cf
	ld a, e                                          ; $6d64: $7b
	ld a, [hl]                                       ; $6d65: $7e
	sbc l                                            ; $6d66: $9d
	ld c, a                                          ; $6d67: $4f
	cp e                                             ; $6d68: $bb
	dec hl                                           ; $6d69: $2b
	add b                                            ; $6d6a: $80
	ld a, e                                          ; $6d6b: $7b
	ld a, [hl]                                       ; $6d6c: $7e
	sbc [hl]                                         ; $6d6d: $9e
	cp $7b                                           ; $6d6e: $fe $7b
	ld a, [hl]                                       ; $6d70: $7e
	sbc l                                            ; $6d71: $9d
	sub h                                            ; $6d72: $94
	call c, $a06e                                    ; $6d73: $dc $6e $a0
	ld c, e                                          ; $6d76: $4b
	add b                                            ; $6d77: $80
	sbc [hl]                                         ; $6d78: $9e
	nop                                              ; $6d79: $00
	ld [hl], a                                       ; $6d7a: $77
	add b                                            ; $6d7b: $80
	ld a, e                                          ; $6d7c: $7b
	add c                                            ; $6d7d: $81
	sbc [hl]                                         ; $6d7e: $9e
	ld bc, $8033                                     ; $6d7f: $01 $33 $80
	ld a, a                                          ; $6d82: $7f
	db $10                                           ; $6d83: $10
	ld [hl], e                                       ; $6d84: $73
	ld a, [hl]                                       ; $6d85: $7e
	sbc h                                            ; $6d86: $9c
	ld a, d                                          ; $6d87: $7a
	ld l, a                                          ; $6d88: $6f
	cp d                                             ; $6d89: $ba
	rlca                                             ; $6d8a: $07
	add b                                            ; $6d8b: $80
	sbc [hl]                                         ; $6d8c: $9e
	ret c                                            ; $6d8d: $d8

	dec de                                           ; $6d8e: $1b
	add b                                            ; $6d8f: $80
	sub [hl]                                         ; $6d90: $96
	inc c                                            ; $6d91: $0c
	cp $72                                           ; $6d92: $fe $72
	db $fc                                           ; $6d94: $fc
	inc c                                            ; $6d95: $0c
	db $fc                                           ; $6d96: $fc

jr_06d_6d97:
	db $fc                                           ; $6d97: $fc
	cp $78                                           ; $6d98: $fe $78
	inc sp                                           ; $6d9a: $33
	add b                                            ; $6d9b: $80
	sbc [hl]                                         ; $6d9c: $9e
	nop                                              ; $6d9d: $00
	ld a, e                                          ; $6d9e: $7b
	add b                                            ; $6d9f: $80
	ld a, d                                          ; $6da0: $7a
	rst $38                                          ; $6da1: $ff
	dec hl                                           ; $6da2: $2b
	add b                                            ; $6da3: $80
	ld a, a                                          ; $6da4: $7f
	cp $9a                                           ; $6da5: $fe $9a
	ld h, e                                          ; $6da7: $63
	cp $9f                                           ; $6da8: $fe $9f
	ld a, [$5f7f]                                    ; $6daa: $fa $7f $5f
	nop                                              ; $6dad: $00
	rst $38                                          ; $6dae: $ff
	sbc b                                            ; $6daf: $98
	dec de                                           ; $6db0: $1b
	ld bc, $4263                                     ; $6db1: $01 $63 $42

jr_06d_6db4:
	ld a, $3c                                        ; $6db4: $3e $3c
	inc e                                            ; $6db6: $1c
	cp [hl]                                          ; $6db7: $be
	nop                                              ; $6db8: $00
	inc c                                            ; $6db9: $0c
	inc bc                                           ; $6dba: $03
	add b                                            ; $6dbb: $80
	ld bc, $83e7                                     ; $6dbc: $01 $e7 $83
	rst $38                                          ; $6dbf: $ff
	rst $38                                          ; $6dc0: $ff
	db $dd                                           ; $6dc1: $dd
	rst JumpTable                                          ; $6dc2: $c7
	cp c                                             ; $6dc3: $b9
	adc a                                            ; $6dc4: $8f
	scf                                              ; $6dc5: $37
	rra                                              ; $6dc6: $1f
	ld l, c                                          ; $6dc7: $69
	add hl, sp                                       ; $6dc8: $39
	ld [hl], e                                       ; $6dc9: $73
	jr nc, @+$65                                     ; $6dca: $30 $63

	ld [hl+], a                                      ; $6dcc: $22
	inc c                                            ; $6dcd: $0c
	rrca                                             ; $6dce: $0f
	inc e                                            ; $6dcf: $1c
	rrca                                             ; $6dd0: $0f
	ld d, $1d                                        ; $6dd1: $16 $1d
	ld d, $3d                                        ; $6dd3: $16 $3d
	ld h, $7d                                        ; $6dd5: $26 $7d
	sub $6d                                          ; $6dd7: $d6 $6d
	sbc e                                            ; $6dd9: $9b
	db $ed                                           ; $6dda: $ed
	adc [hl]                                         ; $6ddb: $8e
	sbc l                                            ; $6ddc: $9d
	db $eb                                           ; $6ddd: $eb
	dec a                                            ; $6dde: $3d
	srl l                                            ; $6ddf: $cb $3d
	sra c                                            ; $6de1: $cb $29
	rst SubAFromDE                                          ; $6de3: $df
	ld d, c                                          ; $6de4: $51
	cp a                                             ; $6de5: $bf
	ld d, d                                          ; $6de6: $52
	cp a                                             ; $6de7: $bf
	ld [de], a                                       ; $6de8: $12
	rst $38                                          ; $6de9: $ff
	and l                                            ; $6dea: $a5
	db $fd                                           ; $6deb: $fd
	add sp, $7b                                      ; $6dec: $e8 $7b
	ld a, h                                          ; $6dee: $7c
	sbc b                                            ; $6def: $98
	rrca                                             ; $6df0: $0f
	nop                                              ; $6df1: $00
	ld [hl], e                                       ; $6df2: $73
	ld [hl+], a                                      ; $6df3: $22
	ld a, $1c                                        ; $6df4: $3e $1c
	inc c                                            ; $6df6: $0c
	dec hl                                           ; $6df7: $2b
	ret nz                                           ; $6df8: $c0

	rst $38                                          ; $6df9: $ff
	rst SubAFromDE                                          ; $6dfa: $df
	ld bc, $7c9d                                     ; $6dfb: $01 $9d $7c
	jr nc, jr_06d_6e77                               ; $6dfe: $30 $77

	db $e4                                           ; $6e00: $e4
	db $fd                                           ; $6e01: $fd
	inc bc                                           ; $6e02: $03
	ldh [rSCX], a                                    ; $6e03: $e0 $43
	ldh [$cf], a                                     ; $6e05: $e0 $cf
	ld bc, $9581                                     ; $6e07: $01 $81 $95
	xor $ab                                          ; $6e0a: $ee $ab
	call c, $d92e                                    ; $6e0c: $dc $2e $d9
	inc d                                            ; $6e0f: $14
	ei                                               ; $6e10: $fb
	dec l                                            ; $6e11: $2d
	di                                               ; $6e12: $f3
	ld d, e                                          ; $6e13: $53
	rst AddAOntoHL                                          ; $6e14: $ef
	add a                                            ; $6e15: $87
	db $fd                                           ; $6e16: $fd
	rrca                                             ; $6e17: $0f
	ld sp, hl                                        ; $6e18: $f9
	rra                                              ; $6e19: $1f
	ld hl, sp+$7f                                    ; $6e1a: $f8 $7f
	pop af                                           ; $6e1c: $f1
	rst GetHLinHL                                          ; $6e1d: $cf
	ei                                               ; $6e1e: $fb
	xor a                                            ; $6e1f: $af
	jp c, $b84c                                      ; $6e20: $da $4c $b8

	ld c, h                                          ; $6e23: $4c
	cp b                                             ; $6e24: $b8
	ld e, h                                          ; $6e25: $5c
	xor b                                            ; $6e26: $a8
	ld [hl], a                                       ; $6e27: $77
	cp $80                                           ; $6e28: $fe $80
	ld d, h                                          ; $6e2a: $54
	xor h                                            ; $6e2b: $ac
	ld b, $ac                                        ; $6e2c: $06 $ac
	ld b, $af                                        ; $6e2e: $06 $af
	adc e                                            ; $6e30: $8b
	and a                                            ; $6e31: $a7
	or d                                             ; $6e32: $b2
	add a                                            ; $6e33: $87
	jp nc, $8187                                     ; $6e34: $d2 $87 $81

	rst SubAFromHL                                          ; $6e37: $d7
	ld b, l                                          ; $6e38: $45
	db $db                                           ; $6e39: $db
	ld h, l                                          ; $6e3a: $65
	db $db                                           ; $6e3b: $db
	ld d, l                                          ; $6e3c: $55
	db $eb                                           ; $6e3d: $eb
	or l                                             ; $6e3e: $b5
	rst AddAOntoHL                                          ; $6e3f: $ef
	and h                                            ; $6e40: $a4
	rst $38                                          ; $6e41: $ff
	db $f4                                           ; $6e42: $f4
	rst $38                                          ; $6e43: $ff
	sub d                                            ; $6e44: $92
	sbc a                                            ; $6e45: $9f
	ld a, [bc]                                       ; $6e46: $0a
	rrca                                             ; $6e47: $0f
	cpl                                              ; $6e48: $2f
	add h                                            ; $6e49: $84
	db $f4                                           ; $6e4a: $f4
	ld d, a                                          ; $6e4b: $57
	db $ec                                           ; $6e4c: $ec
	adc a                                            ; $6e4d: $8f
	ld hl, sp-$61                                    ; $6e4e: $f8 $9f
	ldh a, [$38]                                     ; $6e50: $f0 $38
	rst $38                                          ; $6e52: $ff
	ld b, a                                          ; $6e53: $47
	rst $38                                          ; $6e54: $ff
	rst $38                                          ; $6e55: $ff
	add b                                            ; $6e56: $80
	rst $38                                          ; $6e57: $ff
	inc a                                            ; $6e58: $3c
	rst $38                                          ; $6e59: $ff
	ld a, [hl]                                       ; $6e5a: $7e
	db $ed                                           ; $6e5b: $ed
	call z, $dcdc                                    ; $6e5c: $cc $dc $dc
	db $f4                                           ; $6e5f: $f4
	db $fc                                           ; $6e60: $fc
	ld d, h                                          ; $6e61: $54
	ld c, h                                          ; $6e62: $4c
	ld a, $38                                        ; $6e63: $3e $38
	push af                                          ; $6e65: $f5
	add b                                            ; $6e66: $80
	ret nz                                           ; $6e67: $c0

	add b                                            ; $6e68: $80
	ldh [$c0], a                                     ; $6e69: $e0 $c0
	ld hl, sp+$30                                    ; $6e6b: $f8 $30
	rst $38                                          ; $6e6d: $ff
	inc c                                            ; $6e6e: $0c
	rst AddAOntoHL                                          ; $6e6f: $ef
	add e                                            ; $6e70: $83
	ld h, a                                          ; $6e71: $67
	ldh [$df], a                                     ; $6e72: $e0 $df
	rst $38                                          ; $6e74: $ff
	xor b                                            ; $6e75: $a8
	rst $38                                          ; $6e76: $ff

jr_06d_6e77:
	pop de                                           ; $6e77: $d1
	rst $38                                          ; $6e78: $ff
	jp hl                                            ; $6e79: $e9


	rst $38                                          ; $6e7a: $ff
	sbc [hl]                                         ; $6e7b: $9e
	sbc [hl]                                         ; $6e7c: $9e
	adc [hl]                                         ; $6e7d: $8e

Jump_06d_6e7e:
	add d                                            ; $6e7e: $82
	sub [hl]                                         ; $6e7f: $96
	db $fd                                           ; $6e80: $fd
	or a                                             ; $6e81: $b7
	db $ed                                           ; $6e82: $ed
	or a                                             ; $6e83: $b7
	db $ed                                           ; $6e84: $ed
	cp a                                             ; $6e85: $bf
	sub e                                            ; $6e86: $93
	jp hl                                            ; $6e87: $e9


	ld a, [hl]                                       ; $6e88: $7e
	set 7, a                                         ; $6e89: $cb $ff
	ret nc                                           ; $6e8b: $d0

	rst $38                                          ; $6e8c: $ff
	add c                                            ; $6e8d: $81
	di                                               ; $6e8e: $f3
	ld bc, $01e3                                     ; $6e8f: $01 $e3 $01
	ret nz                                           ; $6e92: $c0

	sbc $01                                          ; $6e93: $de $01
	rst $38                                          ; $6e95: $ff
	sub h                                            ; $6e96: $94
	inc b                                            ; $6e97: $04
	nop                                              ; $6e98: $00
	rlca                                             ; $6e99: $07
	nop                                              ; $6e9a: $00
	inc bc                                           ; $6e9b: $03
	ld [bc], a                                       ; $6e9c: $02
	ld bc, $e602                                     ; $6e9d: $01 $02 $e6
	cp e                                             ; $6ea0: $bb
	pop af                                           ; $6ea1: $f1
	ld a, e                                          ; $6ea2: $7b
	ld l, l                                          ; $6ea3: $6d
	adc d                                            ; $6ea4: $8a
	adc h                                            ; $6ea5: $8c
	rst $38                                          ; $6ea6: $ff
	cp $07                                           ; $6ea7: $fe $07
	rst $38                                          ; $6ea9: $ff
	db $e3                                           ; $6eaa: $e3
	db $fd                                           ; $6eab: $fd
	di                                               ; $6eac: $f3
	cp [hl]                                          ; $6ead: $be
	ccf                                              ; $6eae: $3f
	ld a, [hl]                                       ; $6eaf: $7e
	ld l, e                                          ; $6eb0: $6b
	xor $e3                                          ; $6eb1: $ee $e3
	jp z, $fa67                                      ; $6eb3: $ca $67 $fa

	rst SubAFromBC                                          ; $6eb6: $e7
	dec e                                            ; $6eb7: $1d
	rlca                                             ; $6eb8: $07
	dec c                                            ; $6eb9: $0d
	ld a, e                                          ; $6eba: $7b
	cp $80                                           ; $6ebb: $fe $80
	inc c                                            ; $6ebd: $0c
	rlca                                             ; $6ebe: $07
	inc h                                            ; $6ebf: $24
	db $fc                                           ; $6ec0: $fc
	ld [hl], $fe                                     ; $6ec1: $36 $fe
	adc c                                            ; $6ec3: $89
	rst $38                                          ; $6ec4: $ff
	ld b, h                                          ; $6ec5: $44
	rst $38                                          ; $6ec6: $ff
	inc hl                                           ; $6ec7: $23
	rst $38                                          ; $6ec8: $ff
	db $10                                           ; $6ec9: $10
	rst $38                                          ; $6eca: $ff
	adc a                                            ; $6ecb: $8f
	rst $38                                          ; $6ecc: $ff
	ld a, c                                          ; $6ecd: $79
	rst $38                                          ; $6ece: $ff
	add hl, hl                                       ; $6ecf: $29
	rst $38                                          ; $6ed0: $ff
	and h                                            ; $6ed1: $a4
	ld a, a                                          ; $6ed2: $7f
	xor [hl]                                         ; $6ed3: $ae
	ld [hl], a                                       ; $6ed4: $77
	ld e, l                                          ; $6ed5: $5d
	or l                                             ; $6ed6: $b5
	ld e, h                                          ; $6ed7: $5c
	or h                                             ; $6ed8: $b4
	ld e, h                                          ; $6ed9: $5c
	or h                                             ; $6eda: $b4
	ld d, h                                          ; $6edb: $54
	sub b                                            ; $6edc: $90
	cp h                                             ; $6edd: $bc
	sub h                                            ; $6ede: $94
	db $fc                                           ; $6edf: $fc
	db $fc                                           ; $6ee0: $fc
	or h                                             ; $6ee1: $b4
	db $fc                                           ; $6ee2: $fc
	and h                                            ; $6ee3: $a4
	ret c                                            ; $6ee4: $d8

	ret z                                            ; $6ee5: $c8

	ret c                                            ; $6ee6: $d8

	ret z                                            ; $6ee7: $c8

	sub b                                            ; $6ee8: $90
	sub b                                            ; $6ee9: $90
	add b                                            ; $6eea: $80
	add b                                            ; $6eeb: $80
	ld h, e                                          ; $6eec: $63
	ld [hl], h                                       ; $6eed: $74
	sub h                                            ; $6eee: $94
	ret nz                                           ; $6eef: $c0

	ccf                                              ; $6ef0: $3f
	rst $38                                          ; $6ef1: $ff
	nop                                              ; $6ef2: $00
	rst $38                                          ; $6ef3: $ff
	add b                                            ; $6ef4: $80
	ld a, a                                          ; $6ef5: $7f
	db $fc                                           ; $6ef6: $fc
	inc bc                                           ; $6ef7: $03
	cp $c1                                           ; $6ef8: $fe $c1
	dec sp                                           ; $6efa: $3b
	nop                                              ; $6efb: $00
	sbc c                                            ; $6efc: $99
	ldh a, [$cf]                                     ; $6efd: $f0 $cf
	ld sp, hl                                        ; $6eff: $f9
	xor a                                            ; $6f00: $af
	db $db                                           ; $6f01: $db
	ld c, a                                          ; $6f02: $4f
	ld l, e                                          ; $6f03: $6b
	nop                                              ; $6f04: $00
	ld c, e                                          ; $6f05: $4b
	jr nz, @+$81                                     ; $6f06: $20 $7f

	ret                                              ; $6f08: $c9


	sbc e                                            ; $6f09: $9b
	inc e                                            ; $6f0a: $1c
	rst $38                                          ; $6f0b: $ff
	ld a, [hl]                                       ; $6f0c: $7e
	db $ec                                           ; $6f0d: $ec
	ld [hl], e                                       ; $6f0e: $73
	ld e, $6f                                        ; $6f0f: $1e $6f
	jr nz, jr_06d_6f66                               ; $6f11: $20 $53

	ld b, b                                          ; $6f13: $40
	sbc [hl]                                         ; $6f14: $9e
	add b                                            ; $6f15: $80
	ld [hl], a                                       ; $6f16: $77
	ld b, b                                          ; $6f17: $40
	sbc h                                            ; $6f18: $9c
	pop bc                                           ; $6f19: $c1
	ld bc, $7b00                                     ; $6f1a: $01 $00 $7b
	ccf                                              ; $6f1d: $3f
	dec sp                                           ; $6f1e: $3b
	ld b, b                                          ; $6f1f: $40
	sbc e                                            ; $6f20: $9b
	inc bc                                           ; $6f21: $03
	db $fd                                           ; $6f22: $fd
	db $e3                                           ; $6f23: $e3
	cp $73                                           ; $6f24: $fe $73
	ld a, $9d                                        ; $6f26: $3e $9d
	jp z, Jump_06d_5fe7                              ; $6f28: $ca $e7 $5f

	ld b, b                                          ; $6f2b: $40
	inc sp                                           ; $6f2c: $33
	add b                                            ; $6f2d: $80
	sbc d                                            ; $6f2e: $9a
	ld hl, sp-$51                                    ; $6f2f: $f8 $af
	reti                                             ; $6f31: $d9


	ld c, a                                          ; $6f32: $4f
	cp e                                             ; $6f33: $bb
	dec hl                                           ; $6f34: $2b
	add b                                            ; $6f35: $80
	ld a, e                                          ; $6f36: $7b
	ld a, [hl]                                       ; $6f37: $7e
	sbc [hl]                                         ; $6f38: $9e
	cp $7b                                           ; $6f39: $fe $7b
	ld a, [hl]                                       ; $6f3b: $7e
	sbc h                                            ; $6f3c: $9c
	sub h                                            ; $6f3d: $94
	call c, $377e                                    ; $6f3e: $dc $7e $37
	add b                                            ; $6f41: $80
	sbc [hl]                                         ; $6f42: $9e
	nop                                              ; $6f43: $00
	ld [hl], a                                       ; $6f44: $77
	add b                                            ; $6f45: $80
	ld a, e                                          ; $6f46: $7b
	add c                                            ; $6f47: $81
	sbc [hl]                                         ; $6f48: $9e
	ld bc, $8033                                     ; $6f49: $01 $33 $80
	ld a, a                                          ; $6f4c: $7f
	db $10                                           ; $6f4d: $10
	ld [hl], e                                       ; $6f4e: $73
	ld a, [hl]                                       ; $6f4f: $7e
	sbc h                                            ; $6f50: $9c
	ld a, d                                          ; $6f51: $7a
	ld l, a                                          ; $6f52: $6f
	cp d                                             ; $6f53: $ba
	rlca                                             ; $6f54: $07
	add b                                            ; $6f55: $80
	sbc [hl]                                         ; $6f56: $9e
	ret c                                            ; $6f57: $d8

	dec de                                           ; $6f58: $1b
	add b                                            ; $6f59: $80
	sub [hl]                                         ; $6f5a: $96
	inc c                                            ; $6f5b: $0c
	cp $72                                           ; $6f5c: $fe $72
	db $fc                                           ; $6f5e: $fc
	inc c                                            ; $6f5f: $0c
	db $fc                                           ; $6f60: $fc
	db $fc                                           ; $6f61: $fc
	cp $78                                           ; $6f62: $fe $78
	inc sp                                           ; $6f64: $33
	add b                                            ; $6f65: $80

jr_06d_6f66:
	sbc [hl]                                         ; $6f66: $9e
	nop                                              ; $6f67: $00
	ld a, e                                          ; $6f68: $7b
	add b                                            ; $6f69: $80
	ld a, d                                          ; $6f6a: $7a
	rst $38                                          ; $6f6b: $ff
	dec hl                                           ; $6f6c: $2b
	add b                                            ; $6f6d: $80
	ld a, a                                          ; $6f6e: $7f
	cp $9a                                           ; $6f6f: $fe $9a
	ld h, e                                          ; $6f71: $63
	cp $9f                                           ; $6f72: $fe $9f
	ld a, [$5f7f]                                    ; $6f74: $fa $7f $5f
	nop                                              ; $6f77: $00
	rst $38                                          ; $6f78: $ff
	sbc b                                            ; $6f79: $98
	ld a, [de]                                       ; $6f7a: $1a
	nop                                              ; $6f7b: $00
	ld [hl+], a                                      ; $6f7c: $22
	ld [bc], a                                       ; $6f7d: $02
	ld a, $3c                                        ; $6f7e: $3e $3c
	inc e                                            ; $6f80: $1c
	cp $80                                           ; $6f81: $fe $80
	inc c                                            ; $6f83: $0c
	nop                                              ; $6f84: $00
	inc bc                                           ; $6f85: $03
	ld bc, $83e7                                     ; $6f86: $01 $e7 $83
	rst $38                                          ; $6f89: $ff
	rst $38                                          ; $6f8a: $ff
	db $dd                                           ; $6f8b: $dd
	rst JumpTable                                          ; $6f8c: $c7
	cp c                                             ; $6f8d: $b9
	adc a                                            ; $6f8e: $8f
	scf                                              ; $6f8f: $37
	rra                                              ; $6f90: $1f
	ld l, c                                          ; $6f91: $69
	add hl, sp                                       ; $6f92: $39
	ld [hl], e                                       ; $6f93: $73
	jr nc, jr_06d_6ff9                               ; $6f94: $30 $63

	ld [hl+], a                                      ; $6f96: $22
	inc c                                            ; $6f97: $0c
	rrca                                             ; $6f98: $0f
	inc e                                            ; $6f99: $1c
	rrca                                             ; $6f9a: $0f
	ld d, $1d                                        ; $6f9b: $16 $1d
	ld d, $3d                                        ; $6f9d: $16 $3d
	ld h, $7d                                        ; $6f9f: $26 $7d
	sub $8b                                          ; $6fa1: $d6 $8b
	ld l, l                                          ; $6fa3: $6d
	sbc e                                            ; $6fa4: $9b
	db $ed                                           ; $6fa5: $ed
	sbc l                                            ; $6fa6: $9d
	db $eb                                           ; $6fa7: $eb
	dec a                                            ; $6fa8: $3d
	srl l                                            ; $6fa9: $cb $3d
	sra c                                            ; $6fab: $cb $29
	rst SubAFromDE                                          ; $6fad: $df
	ld d, c                                          ; $6fae: $51
	cp a                                             ; $6faf: $bf
	ld d, d                                          ; $6fb0: $52
	cp a                                             ; $6fb1: $bf
	ld [de], a                                       ; $6fb2: $12
	rst $38                                          ; $6fb3: $ff
	and l                                            ; $6fb4: $a5
	db $fd                                           ; $6fb5: $fd
	add sp, $7b                                      ; $6fb6: $e8 $7b
	ld a, h                                          ; $6fb8: $7c
	sbc e                                            ; $6fb9: $9b
	ld e, $00                                        ; $6fba: $1e $00
	ld [hl+], a                                      ; $6fbc: $22
	ld [hl+], a                                      ; $6fbd: $22
	rra                                              ; $6fbe: $1f
	ret nz                                           ; $6fbf: $c0

	rst $38                                          ; $6fc0: $ff
	sbc h                                            ; $6fc1: $9c
	ld c, $00                                        ; $6fc2: $0e $00
	ld [hl-], a                                      ; $6fc4: $32
	ld [hl], a                                       ; $6fc5: $77
	ldh [$7b], a                                     ; $6fc6: $e0 $7b
	rst SubAFromDE                                          ; $6fc8: $df
	rla                                              ; $6fc9: $17
	ldh [$df], a                                     ; $6fca: $e0 $df
	inc a                                            ; $6fcc: $3c
	sbc d                                            ; $6fcd: $9a
	inc e                                            ; $6fce: $1c

Call_06d_6fcf:
	jr jr_06d_6fd1                                   ; $6fcf: $18 $00

jr_06d_6fd1:
	nop                                              ; $6fd1: $00
	rrca                                             ; $6fd2: $0f
	ld b, e                                          ; $6fd3: $43
	ldh [$c3], a                                     ; $6fd4: $e0 $c3
	ld bc, $9581                                     ; $6fd6: $01 $81 $95
	xor $ab                                          ; $6fd9: $ee $ab
	call c, $d92e                                    ; $6fdb: $dc $2e $d9
	inc d                                            ; $6fde: $14
	ei                                               ; $6fdf: $fb
	dec l                                            ; $6fe0: $2d
	di                                               ; $6fe1: $f3
	ld d, e                                          ; $6fe2: $53
	rst AddAOntoHL                                          ; $6fe3: $ef
	add a                                            ; $6fe4: $87
	db $fd                                           ; $6fe5: $fd
	rrca                                             ; $6fe6: $0f
	ld sp, hl                                        ; $6fe7: $f9
	rra                                              ; $6fe8: $1f
	ld hl, sp+$6f                                    ; $6fe9: $f8 $6f
	ld sp, hl                                        ; $6feb: $f9
	xor a                                            ; $6fec: $af
	db $db                                           ; $6fed: $db
	xor a                                            ; $6fee: $af
	jp c, $b84c                                      ; $6fef: $da $4c $b8

	ld c, h                                          ; $6ff2: $4c
	cp b                                             ; $6ff3: $b8
	ld e, h                                          ; $6ff4: $5c
	xor b                                            ; $6ff5: $a8
	ld [hl], a                                       ; $6ff6: $77
	cp $80                                           ; $6ff7: $fe $80

jr_06d_6ff9:
	ld d, h                                          ; $6ff9: $54
	xor h                                            ; $6ffa: $ac
	ld b, $ac                                        ; $6ffb: $06 $ac
	ld b, $af                                        ; $6ffd: $06 $af
	adc e                                            ; $6fff: $8b
	and a                                            ; $7000: $a7
	or d                                             ; $7001: $b2
	add a                                            ; $7002: $87
	jp nc, $8187                                     ; $7003: $d2 $87 $81

	rst SubAFromHL                                          ; $7006: $d7
	ld b, l                                          ; $7007: $45
	db $db                                           ; $7008: $db
	ld h, l                                          ; $7009: $65
	db $db                                           ; $700a: $db
	ld d, l                                          ; $700b: $55
	db $eb                                           ; $700c: $eb
	or l                                             ; $700d: $b5
	rst AddAOntoHL                                          ; $700e: $ef
	and h                                            ; $700f: $a4
	rst $38                                          ; $7010: $ff
	db $f4                                           ; $7011: $f4
	rst $38                                          ; $7012: $ff
	sub d                                            ; $7013: $92
	sbc a                                            ; $7014: $9f
	ld a, [bc]                                       ; $7015: $0a
	rrca                                             ; $7016: $0f
	cpl                                              ; $7017: $2f
	add h                                            ; $7018: $84
	db $f4                                           ; $7019: $f4
	ld d, a                                          ; $701a: $57
	db $ec                                           ; $701b: $ec
	adc a                                            ; $701c: $8f
	ld hl, sp-$61                                    ; $701d: $f8 $9f
	ldh a, [$27]                                     ; $701f: $f0 $27
	ld hl, sp+$7b                                    ; $7021: $f8 $7b
	call c, $86fd                                    ; $7023: $dc $fd $86
	cp $33                                           ; $7026: $fe $33
	rst $38                                          ; $7028: $ff
	ld a, h                                          ; $7029: $7c

jr_06d_702a:
	rst AddAOntoHL                                          ; $702a: $ef
	adc $dc                                          ; $702b: $ce $dc
	call c, $fcf4                                    ; $702d: $dc $f4 $fc
	ld d, [hl]                                       ; $7030: $56
	ld c, h                                          ; $7031: $4c
	rst $38                                          ; $7032: $ff
	jr c, jr_06d_702a                                ; $7033: $38 $f5

	add b                                            ; $7035: $80
	ret nz                                           ; $7036: $c0

	add b                                            ; $7037: $80
	ldh [$c0], a                                     ; $7038: $e0 $c0
	ld hl, sp+$30                                    ; $703a: $f8 $30
	rst $38                                          ; $703c: $ff
	inc c                                            ; $703d: $0c
	rst AddAOntoHL                                          ; $703e: $ef
	add e                                            ; $703f: $83
	ld h, a                                          ; $7040: $67
	ldh [$df], a                                     ; $7041: $e0 $df
	rst $38                                          ; $7043: $ff
	xor b                                            ; $7044: $a8
	rst $38                                          ; $7045: $ff
	pop de                                           ; $7046: $d1
	rst $38                                          ; $7047: $ff
	jp hl                                            ; $7048: $e9


	rst $38                                          ; $7049: $ff
	sbc [hl]                                         ; $704a: $9e
	sbc [hl]                                         ; $704b: $9e
	adc [hl]                                         ; $704c: $8e
	add d                                            ; $704d: $82
	sub [hl]                                         ; $704e: $96
	db $fd                                           ; $704f: $fd
	or a                                             ; $7050: $b7
	db $ed                                           ; $7051: $ed
	or a                                             ; $7052: $b7
	db $ed                                           ; $7053: $ed
	cp a                                             ; $7054: $bf
	sub e                                            ; $7055: $93
	jp hl                                            ; $7056: $e9


	ld a, [hl]                                       ; $7057: $7e
	set 7, l                                         ; $7058: $cb $fd
	db $d3                                           ; $705a: $d3
	rst $38                                          ; $705b: $ff
	add b                                            ; $705c: $80
	di                                               ; $705d: $f3
	ld bc, $01e3                                     ; $705e: $01 $e3 $01
	ret nz                                           ; $7061: $c0

	db $dd                                           ; $7062: $dd
	ld bc, $04be                                     ; $7063: $01 $be $04
	rlca                                             ; $7066: $07
	inc bc                                           ; $7067: $03
	add c                                            ; $7068: $81

jr_06d_7069:
	ld [bc], a                                       ; $7069: $02
	ld bc, $e602                                     ; $706a: $01 $02 $e6
	cp e                                             ; $706d: $bb
	pop de                                           ; $706e: $d1
	ccf                                              ; $706f: $3f
	cp b                                             ; $7070: $b8
	ld a, a                                          ; $7071: $7f
	ld a, h                                          ; $7072: $7c
	rst GetHLinHL                                          ; $7073: $cf
	cp $87                                           ; $7074: $fe $87
	rst $38                                          ; $7076: $ff
	ld [hl], e                                       ; $7077: $73
	db $fd                                           ; $7078: $fd
	ei                                               ; $7079: $fb
	cp [hl]                                          ; $707a: $be
	ccf                                              ; $707b: $3f
	ld a, [hl]                                       ; $707c: $7e
	ld l, e                                          ; $707d: $6b
	adc $e3                                          ; $707e: $ce $e3
	ld l, d                                          ; $7080: $6a
	and a                                            ; $7081: $a7
	jp c, $1de7                                      ; $7082: $da $e7 $1d

	rlca                                             ; $7085: $07
	dec c                                            ; $7086: $0d
	ld a, e                                          ; $7087: $7b
	cp $80                                           ; $7088: $fe $80
	inc c                                            ; $708a: $0c
	rlca                                             ; $708b: $07
	inc h                                            ; $708c: $24
	db $fc                                           ; $708d: $fc
	ld [hl], $fe                                     ; $708e: $36 $fe
	adc c                                            ; $7090: $89
	rst $38                                          ; $7091: $ff
	ld b, h                                          ; $7092: $44
	rst $38                                          ; $7093: $ff
	inc hl                                           ; $7094: $23
	rst $38                                          ; $7095: $ff
	db $10                                           ; $7096: $10
	rst $38                                          ; $7097: $ff
	adc a                                            ; $7098: $8f
	rst $38                                          ; $7099: $ff
	ld a, c                                          ; $709a: $79
	rst $38                                          ; $709b: $ff
	add hl, hl                                       ; $709c: $29
	rst $38                                          ; $709d: $ff
	and h                                            ; $709e: $a4
	ld a, a                                          ; $709f: $7f
	xor [hl]                                         ; $70a0: $ae
	ld [hl], a                                       ; $70a1: $77
	ld e, l                                          ; $70a2: $5d
	or l                                             ; $70a3: $b5
	ld e, h                                          ; $70a4: $5c
	or h                                             ; $70a5: $b4
	ld e, h                                          ; $70a6: $5c
	or h                                             ; $70a7: $b4
	ld d, h                                          ; $70a8: $54
	sub b                                            ; $70a9: $90
	cp h                                             ; $70aa: $bc
	sub h                                            ; $70ab: $94
	db $fc                                           ; $70ac: $fc
	or h                                             ; $70ad: $b4
	db $fc                                           ; $70ae: $fc
	and h                                            ; $70af: $a4
	db $fc                                           ; $70b0: $fc
	ret z                                            ; $70b1: $c8

	ret c                                            ; $70b2: $d8

	ret z                                            ; $70b3: $c8

	ret c                                            ; $70b4: $d8

	sub b                                            ; $70b5: $90
	sub b                                            ; $70b6: $90
	add b                                            ; $70b7: $80
	add b                                            ; $70b8: $80
	ld h, e                                          ; $70b9: $63
	ld [hl], h                                       ; $70ba: $74
	sub h                                            ; $70bb: $94
	ret nz                                           ; $70bc: $c0

	ccf                                              ; $70bd: $3f
	rst $38                                          ; $70be: $ff
	nop                                              ; $70bf: $00
	rst $38                                          ; $70c0: $ff
	add b                                            ; $70c1: $80
	ld a, a                                          ; $70c2: $7f
	db $fc                                           ; $70c3: $fc
	inc bc                                           ; $70c4: $03
	cp $c1                                           ; $70c5: $fe $c1
	dec sp                                           ; $70c7: $3b
	nop                                              ; $70c8: $00
	sbc c                                            ; $70c9: $99
	ld hl, sp-$51                                    ; $70ca: $f8 $af
	reti                                             ; $70cc: $d9


	xor a                                            ; $70cd: $af
	db $db                                           ; $70ce: $db
	ld c, a                                          ; $70cf: $4f
	ld l, e                                          ; $70d0: $6b
	nop                                              ; $70d1: $00
	ld c, e                                          ; $70d2: $4b
	jr nz, jr_06d_7069                               ; $70d3: $20 $94

	inc bc                                           ; $70d5: $03
	rst $38                                          ; $70d6: $ff
	jr c, @+$01                                      ; $70d7: $38 $ff

	ld a, [hl]                                       ; $70d9: $7e
	db $ec                                           ; $70da: $ec
	call z, $dcdc                                    ; $70db: $cc $dc $dc
	or $fc                                           ; $70de: $f6 $fc
	ld l, a                                          ; $70e0: $6f
	jr nz, @+$4d                                     ; $70e1: $20 $4b

	ld b, b                                          ; $70e3: $40
	sbc c                                            ; $70e4: $99
	nop                                              ; $70e5: $00
	db $e3                                           ; $70e6: $e3
	ld bc, $01c1                                     ; $70e7: $01 $c1 $01
	nop                                              ; $70ea: $00
	cpl                                              ; $70eb: $2f
	ld b, b                                          ; $70ec: $40
	sbc e                                            ; $70ed: $9b
	inc bc                                           ; $70ee: $03
	db $fd                                           ; $70ef: $fd
	ld [hl], e                                       ; $70f0: $73
	cp $73                                           ; $70f1: $fe $73
	ld a, $9c                                        ; $70f3: $3e $9c
	jp z, $fae7                                      ; $70f5: $ca $e7 $fa

	ld h, e                                          ; $70f8: $63
	ld b, b                                          ; $70f9: $40
	ccf                                              ; $70fa: $3f
	add b                                            ; $70fb: $80
	sbc h                                            ; $70fc: $9c
	ld a, a                                          ; $70fd: $7f
	ldh a, [$cf]                                     ; $70fe: $f0 $cf
	ld a, e                                          ; $7100: $7b
	ld a, [hl]                                       ; $7101: $7e
	sbc l                                            ; $7102: $9d
	ld c, a                                          ; $7103: $4f
	cp e                                             ; $7104: $bb
	dec hl                                           ; $7105: $2b
	add b                                            ; $7106: $80
	ld a, a                                          ; $7107: $7f
	ld b, a                                          ; $7108: $47
	sbc b                                            ; $7109: $98

jr_06d_710a:
	jr c, jr_06d_710a                                ; $710a: $38 $fe

	cp $ec                                           ; $710c: $fe $ec
	call z, $dc96                                    ; $710e: $cc $96 $dc
	rra                                              ; $7111: $1f
	add b                                            ; $7112: $80
	ld a, e                                          ; $7113: $7b
	add c                                            ; $7114: $81
	sbc [hl]                                         ; $7115: $9e
	ld bc, $8033                                     ; $7116: $01 $33 $80
	ld a, a                                          ; $7119: $7f
	db $10                                           ; $711a: $10
	ld [hl], e                                       ; $711b: $73
	ld a, [hl]                                       ; $711c: $7e
	sbc h                                            ; $711d: $9c
	ld a, d                                          ; $711e: $7a
	ld l, a                                          ; $711f: $6f
	cp d                                             ; $7120: $ba
	rlca                                             ; $7121: $07
	add b                                            ; $7122: $80
	sbc [hl]                                         ; $7123: $9e
	ret c                                            ; $7124: $d8

	dec de                                           ; $7125: $1b
	add b                                            ; $7126: $80
	sub [hl]                                         ; $7127: $96
	inc c                                            ; $7128: $0c
	cp $72                                           ; $7129: $fe $72
	db $fc                                           ; $712b: $fc
	inc c                                            ; $712c: $0c
	cp $fc                                           ; $712d: $fe $fc
	rst $38                                          ; $712f: $ff
	ld a, b                                          ; $7130: $78
	inc sp                                           ; $7131: $33
	add b                                            ; $7132: $80
	sbc [hl]                                         ; $7133: $9e
	nop                                              ; $7134: $00
	ld a, e                                          ; $7135: $7b
	add b                                            ; $7136: $80
	ld a, d                                          ; $7137: $7a
	rst $38                                          ; $7138: $ff
	dec hl                                           ; $7139: $2b
	add b                                            ; $713a: $80
	ld a, a                                          ; $713b: $7f
	cp $9a                                           ; $713c: $fe $9a
	ld h, e                                          ; $713e: $63
	cp $9f                                           ; $713f: $fe $9f
	ld a, [$5f7f]                                    ; $7141: $fa $7f $5f
	nop                                              ; $7144: $00
	rst $38                                          ; $7145: $ff
	sub [hl]                                         ; $7146: $96
	ld a, [de]                                       ; $7147: $1a
	nop                                              ; $7148: $00
	ld [hl+], a                                      ; $7149: $22
	ld [hl+], a                                      ; $714a: $22
	ld b, d                                          ; $714b: $42
	ld b, d                                          ; $714c: $42
	ld a, h                                          ; $714d: $7c
	ld a, h                                          ; $714e: $7c
	nop                                              ; $714f: $00
	cp a                                             ; $7150: $bf
	inc c                                            ; $7151: $0c
	inc bc                                           ; $7152: $03
	add b                                            ; $7153: $80
	ld bc, $83e7                                     ; $7154: $01 $e7 $83
	rst $38                                          ; $7157: $ff
	rst $38                                          ; $7158: $ff
	db $dd                                           ; $7159: $dd
	rst JumpTable                                          ; $715a: $c7
	cp c                                             ; $715b: $b9
	adc a                                            ; $715c: $8f
	scf                                              ; $715d: $37
	rra                                              ; $715e: $1f
	ld l, c                                          ; $715f: $69
	add hl, sp                                       ; $7160: $39
	ld [hl], e                                       ; $7161: $73
	jr nc, jr_06d_71c7                               ; $7162: $30 $63

	ld [hl+], a                                      ; $7164: $22
	inc c                                            ; $7165: $0c
	rrca                                             ; $7166: $0f
	inc e                                            ; $7167: $1c
	rrca                                             ; $7168: $0f
	ld d, $1d                                        ; $7169: $16 $1d
	ld d, $3d                                        ; $716b: $16 $3d
	ld h, $7d                                        ; $716d: $26 $7d
	sub $6d                                          ; $716f: $d6 $6d
	sbc e                                            ; $7171: $9b
	db $ed                                           ; $7172: $ed
	adc [hl]                                         ; $7173: $8e
	sbc l                                            ; $7174: $9d
	db $eb                                           ; $7175: $eb
	dec a                                            ; $7176: $3d
	srl l                                            ; $7177: $cb $3d
	sra c                                            ; $7179: $cb $29
	rst SubAFromDE                                          ; $717b: $df
	ld d, c                                          ; $717c: $51
	cp a                                             ; $717d: $bf
	ld d, d                                          ; $717e: $52
	cp a                                             ; $717f: $bf
	ld [de], a                                       ; $7180: $12
	rst $38                                          ; $7181: $ff
	and l                                            ; $7182: $a5
	db $fd                                           ; $7183: $fd
	add sp, $7b                                      ; $7184: $e8 $7b
	ld a, h                                          ; $7186: $7c
	rrca                                             ; $7187: $0f
	ret nz                                           ; $7188: $c0

	ld l, a                                          ; $7189: $6f
	ldh [$df], a                                     ; $718a: $e0 $df
	ld a, [hl]                                       ; $718c: $7e
	inc bc                                           ; $718d: $03
	ldh [$99], a                                     ; $718e: $e0 $99
	ld a, h                                          ; $7190: $7c
	ld a, b                                          ; $7191: $78
	jr nc, jr_06d_7194                               ; $7192: $30 $00

jr_06d_7194:
	nop                                              ; $7194: $00
	dec de                                           ; $7195: $1b
	ld b, e                                          ; $7196: $43
	ldh [$7f], a                                     ; $7197: $e0 $7f
	ld [bc], a                                       ; $7199: $02
	db $fd                                           ; $719a: $fd
	rst SubAFromDE                                          ; $719b: $df
	inc bc                                           ; $719c: $03
	sub a                                            ; $719d: $97
	rlca                                             ; $719e: $07
	inc b                                            ; $719f: $04
	rrca                                             ; $71a0: $0f
	ld a, [bc]                                       ; $71a1: $0a
	rrca                                             ; $71a2: $0f
	add hl, bc                                       ; $71a3: $09
	rra                                              ; $71a4: $1f
	db $10                                           ; $71a5: $10
	ld [hl], a                                       ; $71a6: $77
	cp $91                                           ; $71a7: $fe $91

jr_06d_71a9:
	dec sp                                           ; $71a9: $3b
	inc h                                            ; $71aa: $24
	dec sp                                           ; $71ab: $3b
	inc h                                            ; $71ac: $24
	ld a, e                                          ; $71ad: $7b
	ld b, h                                          ; $71ae: $44
	ld a, c                                          ; $71af: $79
	ld b, [hl]                                       ; $71b0: $46
	ld hl, sp-$79                                    ; $71b1: $f8 $87
	db $fc                                           ; $71b3: $fc
	add e                                            ; $71b4: $83
	db $fc                                           ; $71b5: $fc
	add e                                            ; $71b6: $83
	pop hl                                           ; $71b7: $e1
	db $dd                                           ; $71b8: $dd
	ld bc, $028e                                     ; $71b9: $01 $8e $02
	inc bc                                           ; $71bc: $03
	inc b                                            ; $71bd: $04
	rlca                                             ; $71be: $07
	inc b                                            ; $71bf: $04
	rlca                                             ; $71c0: $07
	add hl, bc                                       ; $71c1: $09
	rrca                                             ; $71c2: $0f
	ld de, $221f                                     ; $71c3: $11 $1f $22
	ccf                                              ; $71c6: $3f

jr_06d_71c7:
	ld h, $3f                                        ; $71c7: $26 $3f
	ld b, l                                          ; $71c9: $45
	ld a, [hl]                                       ; $71ca: $7e
	ld c, l                                          ; $71cb: $4d
	ld a, e                                          ; $71cc: $7b
	cp $8d                                           ; $71cd: $fe $8d
	ld d, l                                          ; $71cf: $55
	halt                                             ; $71d0: $76
	ld d, l                                          ; $71d1: $55
	halt                                             ; $71d2: $76
	ld d, h                                          ; $71d3: $54
	ld [hl], a                                       ; $71d4: $77
	inc [hl]                                         ; $71d5: $34
	scf                                              ; $71d6: $37
	inc [hl]                                         ; $71d7: $34
	scf                                              ; $71d8: $37
	ld [de], a                                       ; $71d9: $12
	inc de                                           ; $71da: $13
	ld [de], a                                       ; $71db: $12
	inc de                                           ; $71dc: $13
	inc bc                                           ; $71dd: $03
	inc bc                                           ; $71de: $03
	ld bc, $eb01                                     ; $71df: $01 $01 $eb
	rst SubAFromDE                                          ; $71e2: $df
	ld c, $81                                        ; $71e3: $0e $81
	ld a, a                                          ; $71e5: $7f
	ld [hl], c                                       ; $71e6: $71
	rst $38                                          ; $71e7: $ff
	add b                                            ; $71e8: $80
	rst $38                                          ; $71e9: $ff
	nop                                              ; $71ea: $00
	rst $38                                          ; $71eb: $ff
	nop                                              ; $71ec: $00
	adc a                                            ; $71ed: $8f
	ld [hl], b                                       ; $71ee: $70
	adc a                                            ; $71ef: $8f
	ldh a, [hDisp0_OBP1]                                     ; $71f0: $f0 $87
	ld hl, sp-$39                                    ; $71f2: $f8 $c7
	ld a, b                                          ; $71f4: $78
	rst GetHLinHL                                          ; $71f5: $cf
	ld a, b                                          ; $71f6: $78
	rst AddAOntoHL                                          ; $71f7: $ef
	jr c, jr_06d_71a9                                ; $71f8: $38 $af

	ld [hl], b                                       ; $71fa: $70
	cp a                                             ; $71fb: $bf
	ld [hl], b                                       ; $71fc: $70
	ccf                                              ; $71fd: $3f
	ldh [$3f], a                                     ; $71fe: $e0 $3f
	ldh [$7f], a                                     ; $7200: $e0 $7f
	ret nz                                           ; $7202: $c0

	ldh [$df], a                                     ; $7203: $e0 $df
	ld e, a                                          ; $7205: $5f
	add b                                            ; $7206: $80
	ld a, a                                          ; $7207: $7f
	cp $8d                                           ; $7208: $fe $8d
	ld [de], a                                       ; $720a: $12
	rra                                              ; $720b: $1f
	ld [de], a                                       ; $720c: $12
	rra                                              ; $720d: $1f
	inc h                                            ; $720e: $24
	ccf                                              ; $720f: $3f
	jr z, jr_06d_7251                                ; $7210: $28 $3f

	ld sp, $623f                                     ; $7212: $31 $3f $62
	ld a, a                                          ; $7215: $7f
	ld b, h                                          ; $7216: $44
	ld a, a                                          ; $7217: $7f
	ld hl, sp-$01                                    ; $7218: $f8 $ff
	rst JumpTable                                          ; $721a: $c7
	rst $38                                          ; $721b: $ff
	ldh [$c1], a                                     ; $721c: $e0 $c1
	adc a                                            ; $721e: $8f
	pop af                                           ; $721f: $f1
	rst $38                                          ; $7220: $ff
	ldh [$bf], a                                     ; $7221: $e0 $bf
	ld hl, sp-$61                                    ; $7223: $f8 $9f
	and $47                                          ; $7225: $e6 $47
	ld [hl], c                                       ; $7227: $71
	ld bc, $2038                                     ; $7228: $01 $38 $20
	ld e, $10                                        ; $722b: $1e $10
	rrca                                             ; $722d: $0f
	ld [$dde0], sp                                   ; $722e: $08 $e0 $dd
	rst SubAFromDE                                          ; $7231: $df
	add b                                            ; $7232: $80
	rst SubAFromDE                                          ; $7233: $df
	pop bc                                           ; $7234: $c1
	add b                                            ; $7235: $80
	cp [hl]                                          ; $7236: $be
	rst $38                                          ; $7237: $ff
	ld b, b                                          ; $7238: $40
	ld a, a                                          ; $7239: $7f
	dec sp                                           ; $723a: $3b
	ld [hl], $57                                     ; $723b: $36 $57
	ld l, h                                          ; $723d: $6c
	xor d                                            ; $723e: $aa
	reti                                             ; $723f: $d9


	ld e, l                                          ; $7240: $5d
	or d                                             ; $7241: $b2
	or b                                             ; $7242: $b0
	ld h, [hl]                                       ; $7243: $66
	ld h, c                                          ; $7244: $61
	call z, $dcaa                                    ; $7245: $cc $aa $dc
	ld d, a                                          ; $7248: $57
	cp b                                             ; $7249: $b8
	xor a                                            ; $724a: $af
	ld [hl], c                                       ; $724b: $71
	ld c, d                                          ; $724c: $4a
	rst FarCall                                          ; $724d: $f7
	ld d, e                                          ; $724e: $53
	xor $85                                          ; $724f: $ee $85

jr_06d_7251:
	cp $87                                           ; $7251: $fe $87
	db $fc                                           ; $7253: $fc
	ld [$ff96], sp                                   ; $7254: $08 $96 $ff
	db $10                                           ; $7257: $10
	rst $38                                          ; $7258: $ff
	ld h, c                                          ; $7259: $61
	rst $38                                          ; $725a: $ff
	jp $0ffe                                         ; $725b: $c3 $fe $0f


	db $fd                                           ; $725e: $fd
	ldh [$c1], a                                     ; $725f: $e0 $c1
	sbc d                                            ; $7261: $9a
	rst $38                                          ; $7262: $ff
	rst FarCall                                          ; $7263: $f7
	cp [hl]                                          ; $7264: $be
	ld hl, sp+$0f                                    ; $7265: $f8 $0f
	ld a, d                                          ; $7267: $7a
	pop bc                                           ; $7268: $c1
	sbc e                                            ; $7269: $9b
	ldh [rIE], a                                     ; $726a: $e0 $ff
	rra                                              ; $726c: $1f
	rra                                              ; $726d: $1f
	ld a, e                                          ; $726e: $7b
	add [hl]                                         ; $726f: $86
	sbc l                                            ; $7270: $9d
	nop                                              ; $7271: $00
	ld hl, sp+$66                                    ; $7272: $f8 $66
	ld [$2a7e], a                                    ; $7274: $ea $7e $2a

jr_06d_7277:
	sbc e                                            ; $7277: $9b
	nop                                              ; $7278: $00
	rrca                                             ; $7279: $0f

jr_06d_727a:
	nop                                              ; $727a: $00
	ld e, $ec                                        ; $727b: $1e $ec
	rst SubAFromDE                                          ; $727d: $df
	ld a, a                                          ; $727e: $7f
	ld a, [hl]                                       ; $727f: $7e
	adc a                                            ; $7280: $8f
	add b                                            ; $7281: $80
	ccf                                              ; $7282: $3f
	ret nz                                           ; $7283: $c0

	ld hl, sp+$07                                    ; $7284: $f8 $07
	rst JumpTable                                          ; $7286: $c7
	jr c, jr_06d_72c8                                ; $7287: $38 $3f

	ret nz                                           ; $7289: $c0

	or d                                             ; $728a: $b2
	ld bc, $060d                                     ; $728b: $01 $0d $06
	inc l                                            ; $728e: $2c
	jr jr_06d_72f4                                   ; $728f: $18 $63

	jr nc, jr_06d_727a                               ; $7291: $30 $e7

	ld b, b                                          ; $7293: $40
	call $1b83                                       ; $7294: $cd $83 $1b
	add [hl]                                         ; $7297: $86
	ld [hl], a                                       ; $7298: $77
	inc c                                            ; $7299: $0c
	rst AddAOntoHL                                          ; $729a: $ef
	jr jr_06d_7277                                   ; $729b: $18 $da

	dec a                                            ; $729d: $3d
	jr nc, @+$01                                     ; $729e: $30 $ff

	ld [hl], c                                       ; $72a0: $71
	sub [hl]                                         ; $72a1: $96
	rst SubAFromDE                                          ; $72a2: $df
	db $e3                                           ; $72a3: $e3
	cp a                                             ; $72a4: $bf
	rst JumpTable                                          ; $72a5: $c7
	ld a, l                                          ; $72a6: $7d
	sbc [hl]                                         ; $72a7: $9e
	ei                                               ; $72a8: $fb
	ld a, [hl]                                       ; $72a9: $7e
	db $e3                                           ; $72aa: $e3
	ldh [$c1], a                                     ; $72ab: $e0 $c1
	sbc d                                            ; $72ad: $9a
	ld sp, hl                                        ; $72ae: $f9
	ld hl, sp+$07                                    ; $72af: $f8 $07
	rlca                                             ; $72b1: $07
	ld hl, sp+$7b                                    ; $72b2: $f8 $7b
	ld h, b                                          ; $72b4: $60
	adc [hl]                                         ; $72b5: $8e
	inc bc                                           ; $72b6: $03
	rst $38                                          ; $72b7: $ff
	rst $38                                          ; $72b8: $ff
	db $fc                                           ; $72b9: $fc
	inc bc                                           ; $72ba: $03
	nop                                              ; $72bb: $00
	ld b, $00                                        ; $72bc: $06 $00
	inc c                                            ; $72be: $0c
	nop                                              ; $72bf: $00
	jr jr_06d_72c2                                   ; $72c0: $18 $00

jr_06d_72c2:
	ld [hl], b                                       ; $72c2: $70
	nop                                              ; $72c3: $00

jr_06d_72c4:
	ldh a, [rP1]                                     ; $72c4: $f0 $00
	ldh [$7b], a                                     ; $72c6: $e0 $7b

jr_06d_72c8:
	ld d, h                                          ; $72c8: $54

jr_06d_72c9:
	ld l, $32                                        ; $72c9: $2e $32
	rst $38                                          ; $72cb: $ff
	rst SubAFromDE                                          ; $72cc: $df
	ret nz                                           ; $72cd: $c0

	add b                                            ; $72ce: $80
	jr c, jr_06d_72c9                                ; $72cf: $38 $f8

	and $1e                                          ; $72d1: $e6 $1e
	add hl, de                                       ; $72d3: $19
	rst SubAFromBC                                          ; $72d4: $e7
	ldh [$3f], a                                     ; $72d5: $e0 $3f
	rst $38                                          ; $72d7: $ff
	rra                                              ; $72d8: $1f
	inc c                                            ; $72d9: $0c
	ei                                               ; $72da: $fb
	rst SubAFromDE                                          ; $72db: $df
	jr c, @+$01                                      ; $72dc: $38 $ff

	inc h                                            ; $72de: $24
	rst $38                                          ; $72df: $ff
	ld b, h                                          ; $72e0: $44
	ei                                               ; $72e1: $fb
	add a                                            ; $72e2: $87
	db $d3                                           ; $72e3: $d3
	inc c                                            ; $72e4: $0c
	and a                                            ; $72e5: $a7
	jr jr_06d_72c4                                   ; $72e6: $18 $dc

	inc sp                                           ; $72e8: $33
	dec [hl]                                         ; $72e9: $35
	ld [$d56a], a                                    ; $72ea: $ea $6a $d5
	sbc d                                            ; $72ed: $9a
	sub h                                            ; $72ee: $94
	and l                                            ; $72ef: $a5
	ld b, $a9                                        ; $72f0: $06 $a9
	ld b, c                                          ; $72f2: $41
	xor d                                            ; $72f3: $aa

jr_06d_72f4:
	ld d, b                                          ; $72f4: $50
	ld [$bacc], a                                    ; $72f5: $ea $cc $ba
	jp c, $e0b6                                      ; $72f8: $da $b6 $e0

	pop bc                                           ; $72fb: $c1
	adc b                                            ; $72fc: $88
	ret                                              ; $72fd: $c9


	ld a, a                                          ; $72fe: $7f
	sbc a                                            ; $72ff: $9f
	cp $9f                                           ; $7300: $fe $9f
	ldh a, [$bf]                                     ; $7302: $f0 $bf
	ldh [$bb], a                                     ; $7304: $e0 $bb
	ldh [$f3], a                                     ; $7306: $e0 $f3
	ret nz                                           ; $7308: $c0

	pop bc                                           ; $7309: $c1
	ret nz                                           ; $730a: $c0

	add c                                            ; $730b: $81
	add b                                            ; $730c: $80
	add e                                            ; $730d: $83
	add b                                            ; $730e: $80
	inc bc                                           ; $730f: $03
	nop                                              ; $7310: $00
	ld [bc], a                                       ; $7311: $02
	nop                                              ; $7312: $00
	inc b                                            ; $7313: $04
	ld a, e                                          ; $7314: $7b
	ld e, b                                          ; $7315: $58
	ld a, [hl]                                       ; $7316: $7e
	dec d                                            ; $7317: $15
	ld a, a                                          ; $7318: $7f
	ld d, [hl]                                       ; $7319: $56
	sbc [hl]                                         ; $731a: $9e
	jr nc, jr_06d_734f                               ; $731b: $30 $32

	ld [hl+], a                                      ; $731d: $22
	rst SubAFromDE                                          ; $731e: $df
	ret nz                                           ; $731f: $c0

	add b                                            ; $7320: $80
	and b                                            ; $7321: $a0
	ldh [$a0], a                                     ; $7322: $e0 $a0
	ldh [rAUD4LEN], a                                ; $7324: $e0 $20
	ldh [$7c], a                                     ; $7326: $e0 $7c
	db $fc                                           ; $7328: $fc
	ld b, e                                          ; $7329: $43
	rst $38                                          ; $732a: $ff
	db $fc                                           ; $732b: $fc
	jp $fc23                                         ; $732c: $c3 $23 $fc


	rst SubAFromDE                                          ; $732f: $df
	jr nc, @+$01                                     ; $7330: $30 $ff

	inc a                                            ; $7332: $3c
	rst $38                                          ; $7333: $ff
	jp nz, $21f2                                     ; $7334: $c2 $f2 $21

	jr c, jr_06d_734a                                ; $7337: $38 $11

	ld d, c                                          ; $7339: $51
	adc b                                            ; $733a: $88
	dec d                                            ; $733b: $15
	ret z                                            ; $733c: $c8

	sub l                                            ; $733d: $95
	ld c, b                                          ; $733e: $48
	sub l                                            ; $733f: $95
	sub h                                            ; $7340: $94
	ld c, b                                          ; $7341: $48
	inc d                                            ; $7342: $14
	ld c, c                                          ; $7343: $49
	inc e                                            ; $7344: $1c
	ld c, c                                          ; $7345: $49
	xor h                                            ; $7346: $ac
	ld e, c                                          ; $7347: $59
	ld l, $d9                                        ; $7348: $2e $d9

jr_06d_734a:
	xor l                                            ; $734a: $ad
	db $db                                           ; $734b: $db
	ldh [$c1], a                                     ; $734c: $e0 $c1
	adc d                                            ; $734e: $8a

jr_06d_734f:
	rst $38                                          ; $734f: $ff
	ret nz                                           ; $7350: $c0

	rst $38                                          ; $7351: $ff
	nop                                              ; $7352: $00
	ei                                               ; $7353: $fb
	nop                                              ; $7354: $00
	pop af                                           ; $7355: $f1
	nop                                              ; $7356: $00
	pop hl                                           ; $7357: $e1
	nop                                              ; $7358: $00
	jp $8100                                         ; $7359: $c3 $00 $81


	ld bc, $0181                                     ; $735c: $01 $81 $01
	add hl, bc                                       ; $735f: $09
	ld bc, $0105                                     ; $7360: $01 $05 $01
	dec b                                            ; $7363: $05
	ld a, e                                          ; $7364: $7b
	ld h, b                                          ; $7365: $60
	ld a, a                                          ; $7366: $7f
	ld e, h                                          ; $7367: $5c
	ld [hl], a                                       ; $7368: $77
	cp $9e                                           ; $7369: $fe $9e
	ldh a, [c]                                       ; $736b: $f2
	ld a, d                                          ; $736c: $7a
	call nc, Call_06d_787f                           ; $736d: $d4 $7f $78
	adc c                                            ; $7370: $89
	sub b                                            ; $7371: $90
	ld [hl], b                                       ; $7372: $70
	add sp, $18                                      ; $7373: $e8 $18
	or h                                             ; $7375: $b4
	ld c, h                                          ; $7376: $4c
	jp c, $cd26                                      ; $7377: $da $26 $cd

	inc sp                                           ; $737a: $33
	ld l, l                                          ; $737b: $6d
	sub e                                            ; $737c: $93
	ld h, [hl]                                       ; $737d: $66
	sbc c                                            ; $737e: $99
	ld h, [hl]                                       ; $737f: $66
	sbc c                                            ; $7380: $99
	ldh [c], a                                       ; $7381: $e2
	sbc l                                            ; $7382: $9d
	ldh [c], a                                       ; $7383: $e2
	sbc l                                            ; $7384: $9d
	db $eb                                           ; $7385: $eb
	sbc h                                            ; $7386: $9c
	ld [hl], a                                       ; $7387: $77
	cp $90                                           ; $7388: $fe $90
	ld c, e                                          ; $738a: $4b
	cp h                                             ; $738b: $bc
	ld c, e                                          ; $738c: $4b
	cp h                                             ; $738d: $bc
	jp nc, $923d                                     ; $738e: $d2 $3d $92

	ld a, l                                          ; $7391: $7d
	sub b                                            ; $7392: $90
	ld a, a                                          ; $7393: $7f
	sub b                                            ; $7394: $90
	ld a, a                                          ; $7395: $7f
	db $10                                           ; $7396: $10
	rst $38                                          ; $7397: $ff
	jr z, jr_06d_7405                                ; $7398: $28 $6b

	cp $99                                           ; $739a: $fe $99
	ld b, h                                          ; $739c: $44
	rst $38                                          ; $739d: $ff
	ld d, h                                          ; $739e: $54
	rst AddAOntoHL                                          ; $739f: $ef
	ld d, l                                          ; $73a0: $55
	xor $77                                          ; $73a1: $ee $77
	cp $7d                                           ; $73a3: $fe $7d
	ld [hl], b                                       ; $73a5: $70
	ld [hl], a                                       ; $73a6: $77
	cp $9e                                           ; $73a7: $fe $9e
	call $fe7b                                       ; $73a9: $cd $7b $fe
	add b                                            ; $73ac: $80
	ld l, l                                          ; $73ad: $6d
	rst FarCall                                          ; $73ae: $f7
	dec h                                            ; $73af: $25
	rst $38                                          ; $73b0: $ff
	dec h                                            ; $73b1: $25
	rst $38                                          ; $73b2: $ff
	ld h, l                                          ; $73b3: $65
	rst $38                                          ; $73b4: $ff
	ld l, l                                          ; $73b5: $6d
	rst $38                                          ; $73b6: $ff
	xor l                                            ; $73b7: $ad
	cp a                                             ; $73b8: $bf
	xor l                                            ; $73b9: $ad
	cp a                                             ; $73ba: $bf
	ld d, [hl]                                       ; $73bb: $56
	halt                                             ; $73bc: $76
	ld h, [hl]                                       ; $73bd: $66
	ld h, [hl]                                       ; $73be: $66
	call nz, $84c4                                   ; $73bf: $c4 $c4 $84
	add h                                            ; $73c2: $84
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	ld hl, sp-$08                                    ; $73c5: $f8 $f8
	db $f4                                           ; $73c7: $f4
	inc c                                            ; $73c8: $0c
	cp $02                                           ; $73c9: $fe $02
	cp a                                             ; $73cb: $bf
	add [hl]                                         ; $73cc: $86
	ld b, c                                          ; $73cd: $41
	rst SubAFromDE                                          ; $73ce: $df
	ld h, c                                          ; $73cf: $61
	cp [hl]                                          ; $73d0: $be
	pop hl                                           ; $73d1: $e1
	ld l, $f1                                        ; $73d2: $2e $f1
	rrca                                             ; $73d4: $0f
	ldh a, [$1f]                                     ; $73d5: $f0 $1f
	ldh [rAUD3HIGH], a                               ; $73d7: $e0 $1e
	pop hl                                           ; $73d9: $e1
	sbc l                                            ; $73da: $9d
	db $e3                                           ; $73db: $e3
	sbc l                                            ; $73dc: $9d
	db $e3                                           ; $73dd: $e3
	sbc e                                            ; $73de: $9b
	and $7b                                          ; $73df: $e6 $7b
	add $77                                          ; $73e1: $c6 $77
	call z, Call_06d_58ef                            ; $73e3: $cc $ef $58
	ld a, $e2                                        ; $73e6: $3e $e2
	db $db                                           ; $73e8: $db
	add b                                            ; $73e9: $80
	sbc l                                            ; $73ea: $9d
	ld b, b                                          ; $73eb: $40
	ret nz                                           ; $73ec: $c0

	ld c, a                                          ; $73ed: $4f
	cp $d3                                           ; $73ee: $fe $d3
	add b                                            ; $73f0: $80
	ld h, a                                          ; $73f1: $67
	ld [$fd7f], a                                    ; $73f2: $ea $7f $fd
	sbc e                                            ; $73f5: $9b
	and b                                            ; $73f6: $a0
	ld h, b                                          ; $73f7: $60
	and b                                            ; $73f8: $a0
	ld h, b                                          ; $73f9: $60
	ld a, e                                          ; $73fa: $7b
	db $fd                                           ; $73fb: $fd
	ld a, d                                          ; $73fc: $7a
	xor a                                            ; $73fd: $af
	sbc l                                            ; $73fe: $9d
	jr nz, jr_06d_7461                               ; $73ff: $20 $60

	ld [hl], a                                       ; $7401: $77
	cp $df                                           ; $7402: $fe $df
	ld h, b                                          ; $7404: $60

jr_06d_7405:
	db $db                                           ; $7405: $db
	ld b, b                                          ; $7406: $40
	ld [hl], $88                                     ; $7407: $36 $88
	ld l, a                                          ; $7409: $6f
	ret z                                            ; $740a: $c8

	ld a, a                                          ; $740b: $7f
	db $10                                           ; $740c: $10
	ld a, d                                          ; $740d: $7a
	add l                                            ; $740e: $85
	sbc [hl]                                         ; $740f: $9e
	jr nz, jr_06d_7489                               ; $7410: $20 $77

	ret z                                            ; $7412: $c8

	ld a, a                                          ; $7413: $7f
	di                                               ; $7414: $f3
	ld a, a                                          ; $7415: $7f
	ldh a, [c]                                       ; $7416: $f2
	add hl, de                                       ; $7417: $19
	nop                                              ; $7418: $00
	sbc [hl]                                         ; $7419: $9e
	call z, $99de                                    ; $741a: $cc $de $99
	ld [hl], a                                       ; $741d: $77
	db $fc                                           ; $741e: $fc
	sbc e                                            ; $741f: $9b
	sbc c                                            ; $7420: $99
	ld [hl+], a                                      ; $7421: $22
	sbc c                                            ; $7422: $99
	ld de, $fb57                                     ; $7423: $11 $57 $fb
	sbc [hl]                                         ; $7426: $9e
	ld h, [hl]                                       ; $7427: $66
	ld h, a                                          ; $7428: $67
	or $9e                                           ; $7429: $f6 $9e
	db $dd                                           ; $742b: $dd
	sbc $99                                          ; $742c: $de $99
	sbc [hl]                                         ; $742e: $9e
	db $dd                                           ; $742f: $dd
	or $01                                           ; $7430: $f6 $01
	add b                                            ; $7432: $80
	jr @+$01                                         ; $7433: $18 $ff

	ccf                                              ; $7435: $3f
	rst $38                                          ; $7436: $ff
	ld a, a                                          ; $7437: $7f
	db $e3                                           ; $7438: $e3
	ld l, d                                          ; $7439: $6a
	rst JumpTable                                          ; $743a: $c7
	sub a                                            ; $743b: $97
	adc l                                            ; $743c: $8d
	add hl, bc                                       ; $743d: $09
	sbc l                                            ; $743e: $9d
	dec sp                                           ; $743f: $3b
	add hl, de                                       ; $7440: $19
	ld [de], a                                       ; $7441: $12
	dec sp                                           ; $7442: $3b
	ld d, [hl]                                       ; $7443: $56
	inc sp                                           ; $7444: $33
	ld [hl+], a                                      ; $7445: $22
	ld [hl], a                                       ; $7446: $77
	or d                                             ; $7447: $b2
	ld h, a                                          ; $7448: $67
	xor l                                            ; $7449: $ad
	ld h, [hl]                                       ; $744a: $66
	ld l, l                                          ; $744b: $6d
	add $6b                                          ; $744c: $c6 $6b
	call z, $cd3a                                    ; $744e: $cc $3a $cd
	cp d                                             ; $7451: $ba
	add l                                            ; $7452: $85
	call $d9b6                                       ; $7453: $cd $b6 $d9
	or [hl]                                          ; $7456: $b6
	db $db                                           ; $7457: $db
	sub [hl]                                         ; $7458: $96
	ei                                               ; $7459: $fb
	sub [hl]                                         ; $745a: $96
	ei                                               ; $745b: $fb
	jp nc, $cbff                                     ; $745c: $d2 $ff $cb

	db $fd                                           ; $745f: $fd
	xor e                                            ; $7460: $ab

jr_06d_7461:
	cp l                                             ; $7461: $bd
	dec hl                                           ; $7462: $2b
	dec a                                            ; $7463: $3d
	dec de                                           ; $7464: $1b
	dec e                                            ; $7465: $1d
	add hl, bc                                       ; $7466: $09
	rrca                                             ; $7467: $0f
	dec c                                            ; $7468: $0d
	rrca                                             ; $7469: $0f
	dec b                                            ; $746a: $05
	rlca                                             ; $746b: $07
	inc b                                            ; $746c: $04
	ld a, e                                          ; $746d: $7b
	cp $84                                           ; $746e: $fe $84
	ld [bc], a                                       ; $7470: $02
	inc bc                                           ; $7471: $03
	ld c, $0f                                        ; $7472: $0e $0f
	ld a, e                                          ; $7474: $7b
	rst $38                                          ; $7475: $ff
	rst $38                                          ; $7476: $ff
	rst SubAFromBC                                          ; $7477: $e7
	cp a                                             ; $7478: $bf
	ret nz                                           ; $7479: $c0

	or b                                             ; $747a: $b0
	rst SubAFromDE                                          ; $747b: $df
	rst $38                                          ; $747c: $ff
	sbc a                                            ; $747d: $9f
	ei                                               ; $747e: $fb

jr_06d_747f:
	sbc d                                            ; $747f: $9a
	rst FarCall                                          ; $7480: $f7
	sub a                                            ; $7481: $97
	rst JumpTable                                          ; $7482: $c7
	add a                                            ; $7483: $87
	push bc                                          ; $7484: $c5
	add a                                            ; $7485: $87
	adc l                                            ; $7486: $8d
	add [hl]                                         ; $7487: $86
	add a                                            ; $7488: $87

jr_06d_7489:
	add e                                            ; $7489: $83
	add c                                            ; $748a: $81
	jp c, $8880                                      ; $748b: $da $80 $88

	ret nz                                           ; $748e: $c0

	add b                                            ; $748f: $80
	cp [hl]                                          ; $7490: $be
	jp $ff42                                         ; $7491: $c3 $42 $ff


	rst $38                                          ; $7494: $ff
	dec a                                            ; $7495: $3d
	ld a, a                                          ; $7496: $7f
	add c                                            ; $7497: $81
	rst $38                                          ; $7498: $ff
	ret nz                                           ; $7499: $c0

	rst $38                                          ; $749a: $ff
	ld h, b                                          ; $749b: $60
	ccf                                              ; $749c: $3f
	jr nz, jr_06d_747f                               ; $749d: $20 $e0

	ldh [$60], a                                     ; $749f: $e0 $60
	ret nz                                           ; $74a1: $c0

	ret nz                                           ; $74a2: $c0

	add b                                            ; $74a3: $80
	add b                                            ; $74a4: $80
	cp l                                             ; $74a5: $bd
	ld hl, sp-$02                                    ; $74a6: $f8 $fe
	ld a, a                                          ; $74a8: $7f
	rra                                              ; $74a9: $1f
	add b                                            ; $74aa: $80
	db $10                                           ; $74ab: $10
	rrca                                             ; $74ac: $0f
	db $10                                           ; $74ad: $10
	db $db                                           ; $74ae: $db
	or [hl]                                          ; $74af: $b6
	jp c, $f2b7                                      ; $74b0: $da $b7 $f2

	xor a                                            ; $74b3: $af
	ldh a, [c]                                       ; $74b4: $f2
	xor a                                            ; $74b5: $af
	or $bd                                           ; $74b6: $f6 $bd
	rst SubAFromBC                                          ; $74b8: $e7
	cp l                                             ; $74b9: $bd
	db $fd                                           ; $74ba: $fd
	rrca                                             ; $74bb: $0f
	rst FarCall                                          ; $74bc: $f7
	rrca                                             ; $74bd: $0f
	ld a, a                                          ; $74be: $7f
	ld bc, $1c23                                     ; $74bf: $01 $23 $1c
	ccf                                              ; $74c2: $3f
	ld e, $37                                        ; $74c3: $1e $37
	inc sp                                           ; $74c5: $33
	dec de                                           ; $74c6: $1b
	add hl, bc                                       ; $74c7: $09
	rra                                              ; $74c8: $1f
	rra                                              ; $74c9: $1f
	sbc b                                            ; $74ca: $98
	dec e                                            ; $74cb: $1d
	rra                                              ; $74cc: $1f
	sub $3a                                          ; $74cd: $d6 $3a
	db $fd                                           ; $74cf: $fd
	inc e                                            ; $74d0: $1c
	rlca                                             ; $74d1: $07
	cp [hl]                                          ; $74d2: $be
	inc bc                                           ; $74d3: $03
	rrca                                             ; $74d4: $0f
	ccf                                              ; $74d5: $3f
	add b                                            ; $74d6: $80
	ld bc, $037e                                     ; $74d7: $01 $7e $03
	db $f4                                           ; $74da: $f4
	rrca                                             ; $74db: $0f
	call c, $f83e                                    ; $74dc: $dc $3e $f8
	cp $e9                                           ; $74df: $fe $e9
	db $fc                                           ; $74e1: $fc
	db $f4                                           ; $74e2: $f4
	ld sp, hl                                        ; $74e3: $f9
	pop hl                                           ; $74e4: $e1
	cp e                                             ; $74e5: $bb
	jp hl                                            ; $74e6: $e9


	inc sp                                           ; $74e7: $33
	jp z, $d277                                      ; $74e8: $ca $77 $d2

	ld l, a                                          ; $74eb: $6f
	call nz, $edff                                   ; $74ec: $c4 $ff $ed
	sbc e                                            ; $74ef: $9b
	push af                                          ; $74f0: $f5
	sbc e                                            ; $74f1: $9b
	push de                                          ; $74f2: $d5
	cp e                                             ; $74f3: $bb
	push de                                          ; $74f4: $d5
	cp e                                             ; $74f5: $bb
	sbc e                                            ; $74f6: $9b
	sub d                                            ; $74f7: $92
	rst $38                                          ; $74f8: $ff
	sub e                                            ; $74f9: $93
	cp $77                                           ; $74fa: $fe $77
	cp $80                                           ; $74fc: $fe $80
	adc d                                            ; $74fe: $8a
	rst $38                                          ; $74ff: $ff
	jp z, $acff                                      ; $7500: $ca $ff $ac

	ld a, a                                          ; $7503: $7f
	db $fc                                           ; $7504: $fc
	scf                                              ; $7505: $37
	ld a, h                                          ; $7506: $7c
	sub a                                            ; $7507: $97
	db $fc                                           ; $7508: $fc
	sub a                                            ; $7509: $97
	cp $87                                           ; $750a: $fe $87
	ld a, [$d9cf]                                    ; $750c: $fa $cf $d9
	ccf                                              ; $750f: $3f
	xor c                                            ; $7510: $a9
	ld a, a                                          ; $7511: $7f
	ret z                                            ; $7512: $c8

	ld a, a                                          ; $7513: $7f
	adc h                                            ; $7514: $8c
	ei                                               ; $7515: $fb
	ld d, h                                          ; $7516: $54
	cp e                                             ; $7517: $bb
	sub $3b                                          ; $7518: $d6 $3b
	xor d                                            ; $751a: $aa
	ld [hl], a                                       ; $751b: $77
	or h                                             ; $751c: $b4
	adc [hl]                                         ; $751d: $8e
	ld l, a                                          ; $751e: $6f
	ld d, h                                          ; $751f: $54
	rst AddAOntoHL                                          ; $7520: $ef
	xor b                                            ; $7521: $a8
	rst SubAFromDE                                          ; $7522: $df
	xor b                                            ; $7523: $a8
	rst SubAFromDE                                          ; $7524: $df
	add hl, de                                       ; $7525: $19
	rst $38                                          ; $7526: $ff
	ld [hl-], a                                      ; $7527: $32
	cp $24                                           ; $7528: $fe $24
	db $fc                                           ; $752a: $fc
	ld c, c                                          ; $752b: $49
	ld sp, hl                                        ; $752c: $f9
	cp a                                             ; $752d: $bf
	rst $38                                          ; $752e: $ff
	ld l, a                                          ; $752f: $6f
	ld b, b                                          ; $7530: $40
	ld a, a                                          ; $7531: $7f
	cp $98                                           ; $7532: $fe $98
	rst $38                                          ; $7534: $ff
	sub a                                            ; $7535: $97
	rst $38                                          ; $7536: $ff
	sbc a                                            ; $7537: $9f
	rst $38                                          ; $7538: $ff
	adc [hl]                                         ; $7539: $8e
	bit 7, e                                         ; $753a: $cb $7b
	ld b, b                                          ; $753c: $40
	sbc l                                            ; $753d: $9d
	adc [hl]                                         ; $753e: $8e
	add l                                            ; $753f: $85
	ccf                                              ; $7540: $3f
	ld b, b                                          ; $7541: $40
	sbc e                                            ; $7542: $9b
	rst $38                                          ; $7543: $ff
	ld bc, $00ff                                     ; $7544: $01 $ff $00
	ld a, e                                          ; $7547: $7b
	ld a, $7f                                        ; $7548: $3e $7f
	ld b, d                                          ; $754a: $42
	ld a, e                                          ; $754b: $7b
	ld a, $9c                                        ; $754c: $3e $9c
	ldh [$c0], a                                     ; $754e: $e0 $c0
	add b                                            ; $7550: $80
	cp l                                             ; $7551: $bd
	db $fc                                           ; $7552: $fc
	cp $7f                                           ; $7553: $fe $7f
	rra                                              ; $7555: $1f
	scf                                              ; $7556: $37
	ld b, b                                          ; $7557: $40
	sbc l                                            ; $7558: $9d
	inc bc                                           ; $7559: $03
	ccf                                              ; $755a: $3f
	cp a                                             ; $755b: $bf
	ccf                                              ; $755c: $3f
	ccf                                              ; $755d: $3f
	ld a, a                                          ; $755e: $7f
	inc a                                            ; $755f: $3c
	sub [hl]                                         ; $7560: $96
	ld a, $2f                                        ; $7561: $3e $2f
	daa                                              ; $7563: $27
	ccf                                              ; $7564: $3f
	dec sp                                           ; $7565: $3b
	xor l                                            ; $7566: $ad
	ld [hl], a                                       ; $7567: $77
	rst $38                                          ; $7568: $ff
	ld e, $03                                        ; $7569: $1e $03
	ld b, b                                          ; $756b: $40
	inc sp                                           ; $756c: $33
	ld b, b                                          ; $756d: $40
	sub l                                            ; $756e: $95
	db $fc                                           ; $756f: $fc
	rla                                              ; $7570: $17
	db $fc                                           ; $7571: $fc
	rla                                              ; $7572: $17
	cp $07                                           ; $7573: $fe $07
	ld a, [$d98f]                                    ; $7575: $fa $8f $d9
	rst $38                                          ; $7578: $ff
	inc bc                                           ; $7579: $03
	ld b, b                                          ; $757a: $40
	ld l, a                                          ; $757b: $6f
	ld b, b                                          ; $757c: $40
	sbc [hl]                                         ; $757d: $9e
	add b                                            ; $757e: $80
	ld a, e                                          ; $757f: $7b
	cp $9d                                           ; $7580: $fe $9d
	sbc a                                            ; $7582: $9f
	rst SubAFromDE                                          ; $7583: $df
	ld a, e                                          ; $7584: $7b
	ld a, $23                                        ; $7585: $3e $23
	ld b, b                                          ; $7587: $40
	cp a                                             ; $7588: $bf
	rst $38                                          ; $7589: $ff
	ldh [$9e], a                                     ; $758a: $e0 $9e
	ret nz                                           ; $758c: $c0

	db $dd                                           ; $758d: $dd
	ldh [$03], a                                     ; $758e: $e0 $03
	ld b, b                                          ; $7590: $40
	cp a                                             ; $7591: $bf
	ccf                                              ; $7592: $3f
	ccf                                              ; $7593: $3f
	sub [hl]                                         ; $7594: $96
	jr c, jr_06d_75d6                                ; $7595: $38 $3f

jr_06d_7597:
	ld [hl], $3f                                     ; $7597: $36 $3f
	rra                                              ; $7599: $1f
	xor c                                            ; $759a: $a9
	ld [hl], a                                       ; $759b: $77
	rst $38                                          ; $759c: $ff
	rra                                              ; $759d: $1f
	inc bc                                           ; $759e: $03
	ld b, b                                          ; $759f: $40
	rla                                              ; $75a0: $17
	ld b, b                                          ; $75a1: $40
	sbc [hl]                                         ; $75a2: $9e
	rrca                                             ; $75a3: $0f
	inc bc                                           ; $75a4: $03
	ld b, b                                          ; $75a5: $40
	ld d, a                                          ; $75a6: $57
	ld b, b                                          ; $75a7: $40
	sub [hl]                                         ; $75a8: $96
	sub h                                            ; $75a9: $94
	rst SubAFromDE                                          ; $75aa: $df
	sbc e                                            ; $75ab: $9b
	rst SubAFromDE                                          ; $75ac: $df
	sbc h                                            ; $75ad: $9c
	adc a                                            ; $75ae: $8f
	adc a                                            ; $75af: $8f
	add a                                            ; $75b0: $87
	add a                                            ; $75b1: $87
	inc hl                                           ; $75b2: $23
	ld b, b                                          ; $75b3: $40
	sbc l                                            ; $75b4: $9d
	add b                                            ; $75b5: $80
	ldh [$7b], a                                     ; $75b6: $e0 $7b
	inc a                                            ; $75b8: $3c
	rst SubAFromDE                                          ; $75b9: $df
	add b                                            ; $75ba: $80
	inc bc                                           ; $75bb: $03
	ld b, b                                          ; $75bc: $40
	ld a, a                                          ; $75bd: $7f
	cp $94                                           ; $75be: $fe $94
	db $10                                           ; $75c0: $10
	ccf                                              ; $75c1: $3f
	ld [$273f], sp                                   ; $75c2: $08 $3f $27
	cp a                                             ; $75c5: $bf
	ld [hl], b                                       ; $75c6: $70
	rst $38                                          ; $75c7: $ff
	rra                                              ; $75c8: $1f
	rrca                                             ; $75c9: $0f
	rrca                                             ; $75ca: $0f
	inc bc                                           ; $75cb: $03
	ld b, b                                          ; $75cc: $40
	inc bc                                           ; $75cd: $03
	ld b, b                                          ; $75ce: $40
	rra                                              ; $75cf: $1f
	ld b, b                                          ; $75d0: $40
	add [hl]                                         ; $75d1: $86
	ld b, b                                          ; $75d2: $40
	ret nz                                           ; $75d3: $c0

	ldh [rLCDC], a                                   ; $75d4: $e0 $40

jr_06d_75d6:
	ldh [$60], a                                     ; $75d6: $e0 $60
	jr nc, jr_06d_763a                               ; $75d8: $30 $60

	jr nc, jr_06d_764c                               ; $75da: $30 $70

	ld a, b                                          ; $75dc: $78
	jr nc, jr_06d_7597                               ; $75dd: $30 $b8

	ld l, b                                          ; $75df: $68
	or h                                             ; $75e0: $b4
	ld l, h                                          ; $75e1: $6c
	sbc d                                            ; $75e2: $9a
	halt                                             ; $75e3: $76
	dec e                                            ; $75e4: $1d
	di                                               ; $75e5: $f3
	rra                                              ; $75e6: $1f
	ldh a, [rAUD3LEVEL]                              ; $75e7: $f0 $1c
	ldh a, [$98]                                     ; $75e9: $f0 $98
	ld [hl], e                                       ; $75eb: $73
	cp $96                                           ; $75ec: $fe $96
	ret c                                            ; $75ee: $d8

	ld hl, sp-$80                                    ; $75ef: $f8 $80
	add b                                            ; $75f1: $80
	ld h, b                                          ; $75f2: $60
	nop                                              ; $75f3: $00
	inc a                                            ; $75f4: $3c
	inc l                                            ; $75f5: $2c
	nop                                              ; $75f6: $00
	cp h                                             ; $75f7: $bc
	ld h, b                                          ; $75f8: $60
	nop                                              ; $75f9: $00
	ld bc, $1e03                                     ; $75fa: $01 $03 $1e
	ld a, a                                          ; $75fd: $7f
	ld [hl], $df                                     ; $75fe: $36 $df
	rst $38                                          ; $7600: $ff
	rst SubAFromDE                                          ; $7601: $df
	ccf                                              ; $7602: $3f
	sbc l                                            ; $7603: $9d
	rrca                                             ; $7604: $0f
	rra                                              ; $7605: $1f
	cp [hl]                                          ; $7606: $be
	rrca                                             ; $7607: $0f
	inc bc                                           ; $7608: $03
	rlca                                             ; $7609: $07
	sbc [hl]                                         ; $760a: $9e
	rlca                                             ; $760b: $07
	inc bc                                           ; $760c: $03
	ldh [$7b], a                                     ; $760d: $e0 $7b
	ldh [$9b], a                                     ; $760f: $e0 $9b
	ld a, h                                          ; $7611: $7c
	ld b, h                                          ; $7612: $44
	jr nc, @+$32                                     ; $7613: $30 $30

	ld [hl], a                                       ; $7615: $77
	sbc $2f                                          ; $7616: $de $2f
	ldh [$7e], a                                     ; $7618: $e0 $7e
	db $ec                                           ; $761a: $ec
	sbc e                                            ; $761b: $9b
	db $fc                                           ; $761c: $fc
	ld c, h                                          ; $761d: $4c
	ld a, b                                          ; $761e: $78
	ld [hl], b                                       ; $761f: $70
	ld [hl], a                                       ; $7620: $77
	ret nz                                           ; $7621: $c0

	sbc [hl]                                         ; $7622: $9e
	ld h, c                                          ; $7623: $61
	dec sp                                           ; $7624: $3b
	ldh [rDIV], a                                    ; $7625: $e0 $04
	ld [bc], a                                       ; $7627: $02
	add b                                            ; $7628: $80
	jr @+$01                                         ; $7629: $18 $ff

	ccf                                              ; $762b: $3f
	rst $38                                          ; $762c: $ff
	ld a, a                                          ; $762d: $7f
	db $e3                                           ; $762e: $e3
	ld l, d                                          ; $762f: $6a
	rst JumpTable                                          ; $7630: $c7
	sub a                                            ; $7631: $97
	adc l                                            ; $7632: $8d
	add hl, bc                                       ; $7633: $09
	sbc l                                            ; $7634: $9d
	dec sp                                           ; $7635: $3b
	add hl, de                                       ; $7636: $19
	ld [de], a                                       ; $7637: $12
	dec sp                                           ; $7638: $3b
	ld d, [hl]                                       ; $7639: $56

jr_06d_763a:
	inc sp                                           ; $763a: $33
	ld [hl+], a                                      ; $763b: $22
	ld [hl], a                                       ; $763c: $77
	or d                                             ; $763d: $b2
	ld h, a                                          ; $763e: $67
	xor l                                            ; $763f: $ad
	ld h, [hl]                                       ; $7640: $66
	ld l, l                                          ; $7641: $6d
	add $6b                                          ; $7642: $c6 $6b
	call z, $cd3a                                    ; $7644: $cc $3a $cd
	cp d                                             ; $7647: $ba
	add l                                            ; $7648: $85
	call $d9b6                                       ; $7649: $cd $b6 $d9

jr_06d_764c:
	or [hl]                                          ; $764c: $b6
	db $db                                           ; $764d: $db
	sub [hl]                                         ; $764e: $96
	ei                                               ; $764f: $fb
	sub [hl]                                         ; $7650: $96
	ei                                               ; $7651: $fb
	jp nc, $cbff                                     ; $7652: $d2 $ff $cb

	db $fd                                           ; $7655: $fd
	xor e                                            ; $7656: $ab
	cp l                                             ; $7657: $bd
	dec hl                                           ; $7658: $2b
	dec a                                            ; $7659: $3d
	dec de                                           ; $765a: $1b
	dec e                                            ; $765b: $1d
	add hl, bc                                       ; $765c: $09
	rrca                                             ; $765d: $0f
	dec c                                            ; $765e: $0d
	rrca                                             ; $765f: $0f
	dec b                                            ; $7660: $05
	rlca                                             ; $7661: $07
	inc b                                            ; $7662: $04
	ld a, e                                          ; $7663: $7b
	cp $85                                           ; $7664: $fe $85
	ld [bc], a                                       ; $7666: $02
	inc bc                                           ; $7667: $03
	ld c, $0f                                        ; $7668: $0e $0f
	ld a, e                                          ; $766a: $7b
	rst $38                                          ; $766b: $ff
	rst SubAFromBC                                          ; $766c: $e7
	ld hl, sp-$50                                    ; $766d: $f8 $b0
	rst SubAFromDE                                          ; $766f: $df
	cp a                                             ; $7670: $bf
	rst SubAFromDE                                          ; $7671: $df
	ei                                               ; $7672: $fb
	sbc d                                            ; $7673: $9a
	di                                               ; $7674: $f3
	sub e                                            ; $7675: $93
	rst SubAFromBC                                          ; $7676: $e7
	add a                                            ; $7677: $87
	rst JumpTable                                          ; $7678: $c7
	add a                                            ; $7679: $87
	push bc                                          ; $767a: $c5
	add a                                            ; $767b: $87
	adc l                                            ; $767c: $8d
	add [hl]                                         ; $767d: $86
	add a                                            ; $767e: $87
	add e                                            ; $767f: $83
	reti                                             ; $7680: $d9


	add b                                            ; $7681: $80
	adc b                                            ; $7682: $88
	ret nz                                           ; $7683: $c0

	add b                                            ; $7684: $80
	cp $f3                                           ; $7685: $fe $f3
	xor $1b                                          ; $7687: $ee $1b
	scf                                              ; $7689: $37
	ret                                              ; $768a: $c9


	rst SubAFromDE                                          ; $768b: $df
	pop hl                                           ; $768c: $e1
	rst $38                                          ; $768d: $ff
	ld h, b                                          ; $768e: $60
	ccf                                              ; $768f: $3f
	jr nz, @+$01                                     ; $7690: $20 $ff

	ldh [$b0], a                                     ; $7692: $e0 $b0
	ldh [$60], a                                     ; $7694: $e0 $60
	ret nz                                           ; $7696: $c0

	ret nz                                           ; $7697: $c0

	add b                                            ; $7698: $80
	add b                                            ; $7699: $80
	cp $80                                           ; $769a: $fe $80
	inc c                                            ; $769c: $0c
	nop                                              ; $769d: $00
	ld e, $00                                        ; $769e: $1e $00
	ld e, $10                                        ; $76a0: $1e $10
	ld c, $10                                        ; $76a2: $0e $10
	db $db                                           ; $76a4: $db
	or [hl]                                          ; $76a5: $b6
	jp c, $f2b7                                      ; $76a6: $da $b7 $f2

	xor a                                            ; $76a9: $af
	ldh a, [c]                                       ; $76aa: $f2
	xor a                                            ; $76ab: $af
	or $ad                                           ; $76ac: $f6 $ad
	rst FarCall                                          ; $76ae: $f7
	xor l                                            ; $76af: $ad
	db $fd                                           ; $76b0: $fd
	rra                                              ; $76b1: $1f
	rst SubAFromBC                                          ; $76b2: $e7
	rra                                              ; $76b3: $1f
	ld a, a                                          ; $76b4: $7f
	nop                                              ; $76b5: $00
	cpl                                              ; $76b6: $2f
	ld e, $37                                        ; $76b7: $1e $37
	inc sp                                           ; $76b9: $33
	dec de                                           ; $76ba: $1b
	add b                                            ; $76bb: $80
	add hl, bc                                       ; $76bc: $09
	rra                                              ; $76bd: $1f
	rra                                              ; $76be: $1f
	rrca                                             ; $76bf: $0f
	rra                                              ; $76c0: $1f
	dec c                                            ; $76c1: $0d
	rra                                              ; $76c2: $1f
	ld d, $3a                                        ; $76c3: $16 $3a
	dec e                                            ; $76c5: $1d
	inc c                                            ; $76c6: $0c
	rlca                                             ; $76c7: $07
	nop                                              ; $76c8: $00
	inc bc                                           ; $76c9: $03
	nop                                              ; $76ca: $00
	rrca                                             ; $76cb: $0f
	nop                                              ; $76cc: $00
	ccf                                              ; $76cd: $3f
	ld bc, $037e                                     ; $76ce: $01 $7e $03
	db $f4                                           ; $76d1: $f4
	rrca                                             ; $76d2: $0f
	call c, $f83e                                    ; $76d3: $dc $3e $f8
	cp $e9                                           ; $76d6: $fe $e9
	db $fc                                           ; $76d8: $fc
	db $f4                                           ; $76d9: $f4
	ld sp, hl                                        ; $76da: $f9
	adc c                                            ; $76db: $89
	pop hl                                           ; $76dc: $e1
	cp e                                             ; $76dd: $bb
	jp hl                                            ; $76de: $e9


	inc sp                                           ; $76df: $33
	jp z, $d277                                      ; $76e0: $ca $77 $d2

	ld l, a                                          ; $76e3: $6f
	call nz, $edff                                   ; $76e4: $c4 $ff $ed
	sbc e                                            ; $76e7: $9b
	push af                                          ; $76e8: $f5
	sbc e                                            ; $76e9: $9b
	push de                                          ; $76ea: $d5
	cp e                                             ; $76eb: $bb
	push de                                          ; $76ec: $d5
	cp e                                             ; $76ed: $bb
	sub d                                            ; $76ee: $92
	rst $38                                          ; $76ef: $ff
	sub e                                            ; $76f0: $93
	cp $77                                           ; $76f1: $fe $77
	cp $80                                           ; $76f3: $fe $80
	adc d                                            ; $76f5: $8a
	rst $38                                          ; $76f6: $ff
	jp z, $ec7f                                      ; $76f7: $ca $7f $ec

	ccf                                              ; $76fa: $3f
	ld a, h                                          ; $76fb: $7c
	or a                                             ; $76fc: $b7
	db $fc                                           ; $76fd: $fc
	sub a                                            ; $76fe: $97
	db $fc                                           ; $76ff: $fc
	rst SubAFromHL                                          ; $7700: $d7
	ld a, [hl]                                       ; $7701: $7e
	ld h, a                                          ; $7702: $67
	cp d                                             ; $7703: $ba
	rst GetHLinHL                                          ; $7704: $cf
	ld sp, hl                                        ; $7705: $f9
	rra                                              ; $7706: $1f
	jp hl                                            ; $7707: $e9


	ccf                                              ; $7708: $3f
	ret z                                            ; $7709: $c8

	ld a, a                                          ; $770a: $7f
	adc h                                            ; $770b: $8c
	ei                                               ; $770c: $fb
	ld d, h                                          ; $770d: $54
	cp e                                             ; $770e: $bb
	sub $3b                                          ; $770f: $d6 $3b
	xor d                                            ; $7711: $aa
	ld [hl], a                                       ; $7712: $77
	or h                                             ; $7713: $b4
	adc [hl]                                         ; $7714: $8e
	ld l, a                                          ; $7715: $6f
	ld d, h                                          ; $7716: $54
	rst AddAOntoHL                                          ; $7717: $ef
	xor b                                            ; $7718: $a8
	rst SubAFromDE                                          ; $7719: $df
	xor b                                            ; $771a: $a8
	rst SubAFromDE                                          ; $771b: $df
	add hl, de                                       ; $771c: $19
	rst $38                                          ; $771d: $ff
	ld [hl-], a                                      ; $771e: $32
	cp $24                                           ; $771f: $fe $24
	db $fc                                           ; $7721: $fc
	ld c, c                                          ; $7722: $49
	ld sp, hl                                        ; $7723: $f9
	cp a                                             ; $7724: $bf
	rst $38                                          ; $7725: $ff
	ld [hl], a                                       ; $7726: $77

jr_06d_7727:
	ld b, b                                          ; $7727: $40
	sub h                                            ; $7728: $94
	cp a                                             ; $7729: $bf
	ret nz                                           ; $772a: $c0

	cp a                                             ; $772b: $bf
	ret nz                                           ; $772c: $c0

	rst $38                                          ; $772d: $ff
	sub a                                            ; $772e: $97
	rst $38                                          ; $772f: $ff
	sbc a                                            ; $7730: $9f
	rst $38                                          ; $7731: $ff
	adc [hl]                                         ; $7732: $8e
	bit 7, e                                         ; $7733: $cb $7b
	ld b, b                                          ; $7735: $40
	sbc l                                            ; $7736: $9d
	adc [hl]                                         ; $7737: $8e
	add l                                            ; $7738: $85
	ld b, a                                          ; $7739: $47
	ld b, b                                          ; $773a: $40
	sub e                                            ; $773b: $93
	rst FarCall                                          ; $773c: $f7
	add hl, bc                                       ; $773d: $09
	rst $38                                          ; $773e: $ff
	ld bc, $00ff                                     ; $773f: $01 $ff $00
	rst $38                                          ; $7742: $ff
	ret nz                                           ; $7743: $c0

	rst $38                                          ; $7744: $ff
	ldh [rSVBK], a                                   ; $7745: $e0 $70
	jr nz, jr_06d_7727                               ; $7747: $20 $de

	ldh [$7f], a                                     ; $7749: $e0 $7f
	db $eb                                           ; $774b: $eb
	inc de                                           ; $774c: $13
	ld b, b                                          ; $774d: $40
	sbc [hl]                                         ; $774e: $9e
	ccf                                              ; $774f: $3f
	ld [hl], a                                       ; $7750: $77
	cp $94                                           ; $7751: $fe $94
	inc e                                            ; $7753: $1c
	ccf                                              ; $7754: $3f
	ld a, $2f                                        ; $7755: $3e $2f
	daa                                              ; $7757: $27
	ccf                                              ; $7758: $3f
	dec sp                                           ; $7759: $3b
	dec l                                            ; $775a: $2d
	scf                                              ; $775b: $37
	rra                                              ; $775c: $1f
	ld e, $03                                        ; $775d: $1e $03
	ld b, b                                          ; $775f: $40
	dec sp                                           ; $7760: $3b
	ld b, b                                          ; $7761: $40
	sub e                                            ; $7762: $93
	db $fc                                           ; $7763: $fc
	scf                                              ; $7764: $37
	db $fc                                           ; $7765: $fc
	rla                                              ; $7766: $17
	db $fc                                           ; $7767: $fc
	rla                                              ; $7768: $17
	cp $07                                           ; $7769: $fe $07
	ld a, [$f98f]                                    ; $776b: $fa $8f $f9
	rst SubAFromDE                                          ; $776e: $df
	inc bc                                           ; $776f: $03
	ld b, b                                          ; $7770: $40
	ld l, a                                          ; $7771: $6f
	ld b, b                                          ; $7772: $40
	sbc [hl]                                         ; $7773: $9e
	add b                                            ; $7774: $80
	ld a, e                                          ; $7775: $7b
	cp $9d                                           ; $7776: $fe $9d
	sbc a                                            ; $7778: $9f
	rst SubAFromDE                                          ; $7779: $df
	ld a, e                                          ; $777a: $7b
	ld a, $23                                        ; $777b: $3e $23
	ld b, b                                          ; $777d: $40
	ld a, e                                          ; $777e: $7b
	cp $9d                                           ; $777f: $fe $9d
	ldh a, [$c0]                                     ; $7781: $f0 $c0
	db $dd                                           ; $7783: $dd
	ldh [$03], a                                     ; $7784: $e0 $03
	ld b, b                                          ; $7786: $40
	ld [hl], a                                       ; $7787: $77
	cp $96                                           ; $7788: $fe $96
	jr c, jr_06d_77cb                                ; $778a: $38 $3f

	ld [hl], $3f                                     ; $778c: $36 $3f
	rra                                              ; $778e: $1f
	add hl, hl                                       ; $778f: $29

jr_06d_7790:
	scf                                              ; $7790: $37
	rra                                              ; $7791: $1f
	rra                                              ; $7792: $1f
	inc bc                                           ; $7793: $03
	ld b, b                                          ; $7794: $40
	rla                                              ; $7795: $17
	ld b, b                                          ; $7796: $40
	sbc [hl]                                         ; $7797: $9e
	rrca                                             ; $7798: $0f
	inc bc                                           ; $7799: $03
	ld b, b                                          ; $779a: $40
	ld d, a                                          ; $779b: $57
	ld b, b                                          ; $779c: $40
	sub [hl]                                         ; $779d: $96
	sub h                                            ; $779e: $94
	rst SubAFromDE                                          ; $779f: $df
	sbc e                                            ; $77a0: $9b
	rst SubAFromDE                                          ; $77a1: $df
	sbc h                                            ; $77a2: $9c
	adc a                                            ; $77a3: $8f
	adc a                                            ; $77a4: $8f
	add a                                            ; $77a5: $87
	add a                                            ; $77a6: $87
	inc hl                                           ; $77a7: $23
	ld b, b                                          ; $77a8: $40
	sbc h                                            ; $77a9: $9c
	add b                                            ; $77aa: $80
	ldh [rP1], a                                     ; $77ab: $e0 $00
	ld a, d                                          ; $77ad: $7a
	add b                                            ; $77ae: $80
	ld a, e                                          ; $77af: $7b
	ccf                                              ; $77b0: $3f
	inc bc                                           ; $77b1: $03
	ld b, b                                          ; $77b2: $40
	sbc b                                            ; $77b3: $98
	db $10                                           ; $77b4: $10
	ccf                                              ; $77b5: $3f
	ld [$273f], sp                                   ; $77b6: $08 $3f $27
	ccf                                              ; $77b9: $3f
	jr nc, jr_06d_7835                               ; $77ba: $30 $79

	cp b                                             ; $77bc: $b8
	sbc [hl]                                         ; $77bd: $9e
	rrca                                             ; $77be: $0f
	inc bc                                           ; $77bf: $03
	ld b, b                                          ; $77c0: $40
	dec de                                           ; $77c1: $1b
	ld b, b                                          ; $77c2: $40
	sbc e                                            ; $77c3: $9b
	reti                                             ; $77c4: $d9


	rst $38                                          ; $77c5: $ff
	xor c                                            ; $77c6: $a9
	ld a, a                                          ; $77c7: $7f
	rla                                              ; $77c8: $17
	ld b, b                                          ; $77c9: $40
	add [hl]                                         ; $77ca: $86

jr_06d_77cb:
	ld b, b                                          ; $77cb: $40
	ret nz                                           ; $77cc: $c0

	ldh [rLCDC], a                                   ; $77cd: $e0 $40
	ldh [$60], a                                     ; $77cf: $e0 $60
	jr nc, jr_06d_7833                               ; $77d1: $30 $60

	jr nc, jr_06d_7845                               ; $77d3: $30 $70

	ld a, b                                          ; $77d5: $78
	jr nc, jr_06d_7790                               ; $77d6: $30 $b8

	ld l, b                                          ; $77d8: $68
	or h                                             ; $77d9: $b4
	ld l, h                                          ; $77da: $6c
	sbc d                                            ; $77db: $9a
	halt                                             ; $77dc: $76
	dec e                                            ; $77dd: $1d
	di                                               ; $77de: $f3
	rra                                              ; $77df: $1f
	ldh a, [rAUD3LEVEL]                              ; $77e0: $f0 $1c
	ldh a, [$98]                                     ; $77e2: $f0 $98
	ld [hl], e                                       ; $77e4: $73
	cp $90                                           ; $77e5: $fe $90
	ret c                                            ; $77e7: $d8

	ld hl, sp-$40                                    ; $77e8: $f8 $c0
	add b                                            ; $77ea: $80
	or b                                             ; $77eb: $b0
	add b                                            ; $77ec: $80
	adc $c2                                          ; $77ed: $ce $c2
	db $fc                                           ; $77ef: $fc
	db $fc                                           ; $77f0: $fc
	ld a, b                                          ; $77f1: $78
	ld a, b                                          ; $77f2: $78
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00
	pop bc                                           ; $77f5: $c1
	ld a, d                                          ; $77f6: $7a
	or [hl]                                          ; $77f7: $b6
	sbc l                                            ; $77f8: $9d
	ld e, $01                                        ; $77f9: $1e $01
	sbc $ff                                          ; $77fb: $de $ff
	rst SubAFromDE                                          ; $77fd: $df
	ccf                                              ; $77fe: $3f
	ld a, l                                          ; $77ff: $7d
	inc hl                                           ; $7800: $23
	ld a, e                                          ; $7801: $7b
	ld l, h                                          ; $7802: $6c
	ld a, a                                          ; $7803: $7f
	ldh a, [c]                                       ; $7804: $f2
	rst SubAFromDE                                          ; $7805: $df
	rlca                                             ; $7806: $07
	ld [hl], a                                       ; $7807: $77
	ldh [$9a], a                                     ; $7808: $e0 $9a
	call z, $f8c4                                    ; $780a: $cc $c4 $f8
	ld a, b                                          ; $780d: $78
	ld [hl], b                                       ; $780e: $70
	cp $23                                           ; $780f: $fe $23
	ldh [$97], a                                     ; $7811: $e0 $97
	ld b, h                                          ; $7813: $44
	ld a, b                                          ; $7814: $78
	jr c, jr_06d_7817                                ; $7815: $38 $00

jr_06d_7817:
	nop                                              ; $7817: $00
	ret nz                                           ; $7818: $c0

	nop                                              ; $7819: $00
	ld bc, $e03b                                     ; $781a: $01 $3b $e0
	rst SubAFromDE                                          ; $781d: $df
	add b                                            ; $781e: $80
	sbc b                                            ; $781f: $98
	ld h, b                                          ; $7820: $60
	ld b, b                                          ; $7821: $40
	ld a, h                                          ; $7822: $7c
	inc a                                            ; $7823: $3c
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	ld h, b                                          ; $7826: $60
	cp $37                                           ; $7827: $fe $37
	ldh [$f9], a                                     ; $7829: $e0 $f9
	ld bc, $1880                                     ; $782b: $01 $80 $18
	rst $38                                          ; $782e: $ff
	ccf                                              ; $782f: $3f
	rst $38                                          ; $7830: $ff
	ld a, a                                          ; $7831: $7f
	db $e3                                           ; $7832: $e3

jr_06d_7833:
	ld l, d                                          ; $7833: $6a
	rst JumpTable                                          ; $7834: $c7

jr_06d_7835:
	sub a                                            ; $7835: $97
	adc l                                            ; $7836: $8d
	add hl, bc                                       ; $7837: $09
	sbc l                                            ; $7838: $9d
	dec sp                                           ; $7839: $3b
	add hl, de                                       ; $783a: $19
	ld [de], a                                       ; $783b: $12
	dec sp                                           ; $783c: $3b
	ld d, [hl]                                       ; $783d: $56
	inc sp                                           ; $783e: $33
	ld [hl+], a                                      ; $783f: $22
	ld [hl], a                                       ; $7840: $77
	or d                                             ; $7841: $b2
	ld h, a                                          ; $7842: $67
	xor l                                            ; $7843: $ad
	ld h, [hl]                                       ; $7844: $66

jr_06d_7845:
	ld l, l                                          ; $7845: $6d
	add $6b                                          ; $7846: $c6 $6b
	call z, $cd3a                                    ; $7848: $cc $3a $cd
	cp d                                             ; $784b: $ba
	add l                                            ; $784c: $85
	call $d9b6                                       ; $784d: $cd $b6 $d9
	or [hl]                                          ; $7850: $b6
	db $db                                           ; $7851: $db
	sub [hl]                                         ; $7852: $96
	ei                                               ; $7853: $fb
	sub [hl]                                         ; $7854: $96
	ei                                               ; $7855: $fb
	jp nc, $cbff                                     ; $7856: $d2 $ff $cb

	db $fd                                           ; $7859: $fd
	xor e                                            ; $785a: $ab
	cp l                                             ; $785b: $bd
	dec hl                                           ; $785c: $2b
	dec a                                            ; $785d: $3d
	dec de                                           ; $785e: $1b
	dec e                                            ; $785f: $1d
	add hl, bc                                       ; $7860: $09
	rrca                                             ; $7861: $0f
	dec c                                            ; $7862: $0d
	rrca                                             ; $7863: $0f
	dec b                                            ; $7864: $05
	rlca                                             ; $7865: $07
	inc b                                            ; $7866: $04
	ld a, e                                          ; $7867: $7b
	cp $85                                           ; $7868: $fe $85
	ld [bc], a                                       ; $786a: $02
	inc bc                                           ; $786b: $03
	ld c, $0f                                        ; $786c: $0e $0f
	ld a, e                                          ; $786e: $7b
	rst $38                                          ; $786f: $ff
	rst $38                                          ; $7870: $ff
	ldh [$bf], a                                     ; $7871: $e0 $bf
	ret nz                                           ; $7873: $c0

	or b                                             ; $7874: $b0
	rst SubAFromDE                                          ; $7875: $df
	rst $38                                          ; $7876: $ff
	sbc a                                            ; $7877: $9f

jr_06d_7878:
	ei                                               ; $7878: $fb
	sbc d                                            ; $7879: $9a
	rst FarCall                                          ; $787a: $f7
	sub a                                            ; $787b: $97
	rst JumpTable                                          ; $787c: $c7
	add a                                            ; $787d: $87
	push bc                                          ; $787e: $c5

Call_06d_787f:
	add a                                            ; $787f: $87
	adc l                                            ; $7880: $8d
	add [hl]                                         ; $7881: $86
	add a                                            ; $7882: $87
	add e                                            ; $7883: $83
	reti                                             ; $7884: $d9


	add b                                            ; $7885: $80
	adc b                                            ; $7886: $88
	ret nz                                           ; $7887: $c0

	add b                                            ; $7888: $80
	sbc [hl]                                         ; $7889: $9e
	db $e3                                           ; $788a: $e3
	xor $73                                          ; $788b: $ee $73
	rst FarCall                                          ; $788d: $f7
	add hl, de                                       ; $788e: $19
	ld a, a                                          ; $788f: $7f
	adc c                                            ; $7890: $89
	rst $38                                          ; $7891: $ff
	ret nz                                           ; $7892: $c0

	rst $38                                          ; $7893: $ff
	ld h, b                                          ; $7894: $60
	ccf                                              ; $7895: $3f
	jr nz, jr_06d_7878                               ; $7896: $20 $e0

	ldh [$60], a                                     ; $7898: $e0 $60
	ret nz                                           ; $789a: $c0

	ret nz                                           ; $789b: $c0

	add b                                            ; $789c: $80
	add b                                            ; $789d: $80
	cp $80                                           ; $789e: $fe $80
	inc c                                            ; $78a0: $0c
	nop                                              ; $78a1: $00
	ld e, $00                                        ; $78a2: $1e $00
	ld e, $10                                        ; $78a4: $1e $10
	ld c, $10                                        ; $78a6: $0e $10
	db $db                                           ; $78a8: $db
	or [hl]                                          ; $78a9: $b6
	jp c, $f2b7                                      ; $78aa: $da $b7 $f2

	xor a                                            ; $78ad: $af
	ldh a, [c]                                       ; $78ae: $f2
	xor a                                            ; $78af: $af
	or $ad                                           ; $78b0: $f6 $ad
	rst FarCall                                          ; $78b2: $f7
	xor l                                            ; $78b3: $ad
	db $fd                                           ; $78b4: $fd
	rra                                              ; $78b5: $1f
	rst SubAFromBC                                          ; $78b6: $e7
	rra                                              ; $78b7: $1f
	ld a, a                                          ; $78b8: $7f
	nop                                              ; $78b9: $00
	inc hl                                           ; $78ba: $23
	inc e                                            ; $78bb: $1c
	ccf                                              ; $78bc: $3f
	ld e, $37                                        ; $78bd: $1e $37
	add b                                            ; $78bf: $80
	inc sp                                           ; $78c0: $33
	dec de                                           ; $78c1: $1b
	add hl, bc                                       ; $78c2: $09
	rra                                              ; $78c3: $1f
	rra                                              ; $78c4: $1f
	dec e                                            ; $78c5: $1d
	rra                                              ; $78c6: $1f
	ld d, $3a                                        ; $78c7: $16 $3a
	dec e                                            ; $78c9: $1d
	dec c                                            ; $78ca: $0d
	rlca                                             ; $78cb: $07
	nop                                              ; $78cc: $00
	inc bc                                           ; $78cd: $03
	nop                                              ; $78ce: $00
	rrca                                             ; $78cf: $0f
	nop                                              ; $78d0: $00
	ccf                                              ; $78d1: $3f
	ld bc, $037e                                     ; $78d2: $01 $7e $03
	db $f4                                           ; $78d5: $f4
	rrca                                             ; $78d6: $0f
	call c, $f83e                                    ; $78d7: $dc $3e $f8
	cp $e9                                           ; $78da: $fe $e9
	db $fc                                           ; $78dc: $fc
	db $f4                                           ; $78dd: $f4
	ld sp, hl                                        ; $78de: $f9
	adc c                                            ; $78df: $89
	pop hl                                           ; $78e0: $e1
	cp e                                             ; $78e1: $bb
	jp hl                                            ; $78e2: $e9


	inc sp                                           ; $78e3: $33
	jp z, $d277                                      ; $78e4: $ca $77 $d2

	ld l, a                                          ; $78e7: $6f
	call nz, $edff                                   ; $78e8: $c4 $ff $ed
	sbc e                                            ; $78eb: $9b
	push af                                          ; $78ec: $f5
	sbc e                                            ; $78ed: $9b
	push de                                          ; $78ee: $d5
	cp e                                             ; $78ef: $bb
	push de                                          ; $78f0: $d5
	cp e                                             ; $78f1: $bb
	sub d                                            ; $78f2: $92
	rst $38                                          ; $78f3: $ff
	sub e                                            ; $78f4: $93
	cp $77                                           ; $78f5: $fe $77
	cp $80                                           ; $78f7: $fe $80
	adc d                                            ; $78f9: $8a
	rst $38                                          ; $78fa: $ff
	jp z, $ec7f                                      ; $78fb: $ca $7f $ec

	ccf                                              ; $78fe: $3f
	db $fc                                           ; $78ff: $fc
	scf                                              ; $7900: $37
	ld a, h                                          ; $7901: $7c
	sub a                                            ; $7902: $97
	db $fc                                           ; $7903: $fc
	sub a                                            ; $7904: $97
	cp $87                                           ; $7905: $fe $87
	ld a, [$79cf]                                    ; $7907: $fa $cf $79
	sbc a                                            ; $790a: $9f
	jp hl                                            ; $790b: $e9


	ccf                                              ; $790c: $3f
	ret z                                            ; $790d: $c8

	ld a, a                                          ; $790e: $7f
	adc h                                            ; $790f: $8c
	ei                                               ; $7910: $fb
	ld d, h                                          ; $7911: $54
	cp e                                             ; $7912: $bb
	sub $3b                                          ; $7913: $d6 $3b
	xor d                                            ; $7915: $aa
	ld [hl], a                                       ; $7916: $77
	or h                                             ; $7917: $b4
	adc [hl]                                         ; $7918: $8e
	ld l, a                                          ; $7919: $6f
	ld d, h                                          ; $791a: $54
	rst AddAOntoHL                                          ; $791b: $ef
	xor b                                            ; $791c: $a8
	rst SubAFromDE                                          ; $791d: $df
	xor b                                            ; $791e: $a8
	rst SubAFromDE                                          ; $791f: $df
	add hl, de                                       ; $7920: $19
	rst $38                                          ; $7921: $ff
	ld [hl-], a                                      ; $7922: $32
	cp $24                                           ; $7923: $fe $24
	db $fc                                           ; $7925: $fc
	ld c, c                                          ; $7926: $49
	ld sp, hl                                        ; $7927: $f9
	cp a                                             ; $7928: $bf
	rst $38                                          ; $7929: $ff
	ld l, a                                          ; $792a: $6f
	ld b, b                                          ; $792b: $40
	ld a, a                                          ; $792c: $7f
	cp $98                                           ; $792d: $fe $98
	rst $38                                          ; $792f: $ff
	sub a                                            ; $7930: $97
	rst $38                                          ; $7931: $ff
	sbc a                                            ; $7932: $9f
	rst $38                                          ; $7933: $ff
	adc [hl]                                         ; $7934: $8e
	bit 7, e                                         ; $7935: $cb $7b
	ld b, b                                          ; $7937: $40
	sbc l                                            ; $7938: $9d
	adc [hl]                                         ; $7939: $8e
	add l                                            ; $793a: $85
	ccf                                              ; $793b: $3f
	ld b, b                                          ; $793c: $40
	sbc e                                            ; $793d: $9b
	rst $38                                          ; $793e: $ff
	add hl, bc                                       ; $793f: $09
	rst $38                                          ; $7940: $ff
	nop                                              ; $7941: $00
	ld a, e                                          ; $7942: $7b
	ld a, $7f                                        ; $7943: $3e $7f
	ld b, d                                          ; $7945: $42
	ld a, e                                          ; $7946: $7b
	ld a, $9d                                        ; $7947: $3e $9d
	ldh [$c0], a                                     ; $7949: $e0 $c0
	rrca                                             ; $794b: $0f
	ld b, b                                          ; $794c: $40
	sbc [hl]                                         ; $794d: $9e
	ccf                                              ; $794e: $3f
	ld [hl], a                                       ; $794f: $77
	cp $7f                                           ; $7950: $fe $7f
	inc a                                            ; $7952: $3c
	sub [hl]                                         ; $7953: $96
	ld a, $2f                                        ; $7954: $3e $2f
	daa                                              ; $7956: $27
	ccf                                              ; $7957: $3f
	dec sp                                           ; $7958: $3b
	dec l                                            ; $7959: $2d
	scf                                              ; $795a: $37
	rra                                              ; $795b: $1f
	ld e, $03                                        ; $795c: $1e $03
	ld b, b                                          ; $795e: $40
	inc sp                                           ; $795f: $33
	ld b, b                                          ; $7960: $40
	sub l                                            ; $7961: $95
	db $fc                                           ; $7962: $fc
	rla                                              ; $7963: $17
	db $fc                                           ; $7964: $fc
	rla                                              ; $7965: $17
	cp $07                                           ; $7966: $fe $07
	ld a, [$f98f]                                    ; $7968: $fa $8f $f9
	rst SubAFromDE                                          ; $796b: $df
	inc bc                                           ; $796c: $03
	ld b, b                                          ; $796d: $40
	ld l, a                                          ; $796e: $6f
	ld b, b                                          ; $796f: $40
	sbc [hl]                                         ; $7970: $9e
	add b                                            ; $7971: $80
	ld a, e                                          ; $7972: $7b
	cp $9d                                           ; $7973: $fe $9d
	sbc a                                            ; $7975: $9f
	rst SubAFromDE                                          ; $7976: $df
	ld a, e                                          ; $7977: $7b
	ld a, $23                                        ; $7978: $3e $23
	ld b, b                                          ; $797a: $40
	ld a, e                                          ; $797b: $7b
	cp $9d                                           ; $797c: $fe $9d
	ldh a, [$c0]                                     ; $797e: $f0 $c0
	db $dd                                           ; $7980: $dd
	ldh [$03], a                                     ; $7981: $e0 $03
	ld b, b                                          ; $7983: $40
	ld [hl], a                                       ; $7984: $77
	cp $96                                           ; $7985: $fe $96
	jr c, @+$41                                      ; $7987: $38 $3f

	ld [hl], $3f                                     ; $7989: $36 $3f
	rra                                              ; $798b: $1f
	add hl, hl                                       ; $798c: $29
	scf                                              ; $798d: $37
	rra                                              ; $798e: $1f
	rra                                              ; $798f: $1f
	inc bc                                           ; $7990: $03
	ld b, b                                          ; $7991: $40
	rla                                              ; $7992: $17
	ld b, b                                          ; $7993: $40
	sbc [hl]                                         ; $7994: $9e
	rrca                                             ; $7995: $0f
	inc bc                                           ; $7996: $03
	ld b, b                                          ; $7997: $40
	ld d, a                                          ; $7998: $57
	ld b, b                                          ; $7999: $40
	sub [hl]                                         ; $799a: $96
	sub h                                            ; $799b: $94
	rst SubAFromDE                                          ; $799c: $df
	sbc e                                            ; $799d: $9b
	rst SubAFromDE                                          ; $799e: $df
	sbc h                                            ; $799f: $9c
	adc a                                            ; $79a0: $8f
	adc a                                            ; $79a1: $8f
	add a                                            ; $79a2: $87
	add a                                            ; $79a3: $87
	inc hl                                           ; $79a4: $23
	ld b, b                                          ; $79a5: $40
	sbc h                                            ; $79a6: $9c
	add b                                            ; $79a7: $80
	ldh [rP1], a                                     ; $79a8: $e0 $00
	ld a, d                                          ; $79aa: $7a
	add b                                            ; $79ab: $80
	ld a, e                                          ; $79ac: $7b
	ccf                                              ; $79ad: $3f
	inc bc                                           ; $79ae: $03
	ld b, b                                          ; $79af: $40
	sub h                                            ; $79b0: $94
	db $10                                           ; $79b1: $10
	ccf                                              ; $79b2: $3f
	ld [$273f], sp                                   ; $79b3: $08 $3f $27
	ccf                                              ; $79b6: $3f
	jr nc, jr_06d_79d8                               ; $79b7: $30 $1f

	rra                                              ; $79b9: $1f
	rrca                                             ; $79ba: $0f
	rrca                                             ; $79bb: $0f
	inc bc                                           ; $79bc: $03
	ld b, b                                          ; $79bd: $40
	inc bc                                           ; $79be: $03
	ld b, b                                          ; $79bf: $40
	rra                                              ; $79c0: $1f
	ld b, b                                          ; $79c1: $40
	add [hl]                                         ; $79c2: $86
	ld b, b                                          ; $79c3: $40
	ret nz                                           ; $79c4: $c0

	ldh [rLCDC], a                                   ; $79c5: $e0 $40
	ldh [$60], a                                     ; $79c7: $e0 $60
	jr nc, jr_06d_7a2b                               ; $79c9: $30 $60

	jr nc, jr_06d_7a3d                               ; $79cb: $30 $70

	ld a, b                                          ; $79cd: $78
	jr nc, @-$46                                     ; $79ce: $30 $b8

	ld l, b                                          ; $79d0: $68
	or h                                             ; $79d1: $b4
	ld l, h                                          ; $79d2: $6c
	sbc d                                            ; $79d3: $9a
	halt                                             ; $79d4: $76
	dec e                                            ; $79d5: $1d
	di                                               ; $79d6: $f3
	rra                                              ; $79d7: $1f

jr_06d_79d8:
	ldh a, [rAUD3LEVEL]                              ; $79d8: $f0 $1c
	ldh a, [$98]                                     ; $79da: $f0 $98
	ld [hl], e                                       ; $79dc: $73
	cp $90                                           ; $79dd: $fe $90
	ret c                                            ; $79df: $d8

	ld hl, sp-$40                                    ; $79e0: $f8 $c0
	add b                                            ; $79e2: $80
	or b                                             ; $79e3: $b0
	add b                                            ; $79e4: $80
	call z, $f8c4                                    ; $79e5: $cc $c4 $f8
	ld hl, sp+$70                                    ; $79e8: $f8 $70
	ld [hl], b                                       ; $79ea: $70
	nop                                              ; $79eb: $00
	nop                                              ; $79ec: $00
	pop bc                                           ; $79ed: $c1
	ld a, d                                          ; $79ee: $7a
	or [hl]                                          ; $79ef: $b6
	sbc l                                            ; $79f0: $9d
	ld e, $01                                        ; $79f1: $1e $01
	sbc $ff                                          ; $79f3: $de $ff
	rst SubAFromDE                                          ; $79f5: $df
	ccf                                              ; $79f6: $3f
	sbc l                                            ; $79f7: $9d
	rrca                                             ; $79f8: $0f
	rra                                              ; $79f9: $1f
	ld a, e                                          ; $79fa: $7b
	ld l, h                                          ; $79fb: $6c
	ld a, a                                          ; $79fc: $7f
	ldh a, [c]                                       ; $79fd: $f2
	rst SubAFromDE                                          ; $79fe: $df
	rlca                                             ; $79ff: $07
	ld [hl], e                                       ; $7a00: $73
	ldh [$97], a                                     ; $7a01: $e0 $97
	ld b, h                                          ; $7a03: $44
	ld [hl], b                                       ; $7a04: $70
	jr c, jr_06d_7a07                                ; $7a05: $38 $00

jr_06d_7a07:
	nop                                              ; $7a07: $00
	ret nz                                           ; $7a08: $c0

	nop                                              ; $7a09: $00
	ld bc, $e03b                                     ; $7a0a: $01 $3b $e0
	rst SubAFromDE                                          ; $7a0d: $df
	add b                                            ; $7a0e: $80
	sbc d                                            ; $7a0f: $9a
	ldh a, [rLCDC]                                   ; $7a10: $f0 $40
	db $f4                                           ; $7a12: $f4
	ld a, h                                          ; $7a13: $7c
	ld a, b                                          ; $7a14: $78
	cp $27                                           ; $7a15: $fe $27
	ldh [$98], a                                     ; $7a17: $e0 $98
	ld h, b                                          ; $7a19: $60
	ld b, b                                          ; $7a1a: $40
	ld l, h                                          ; $7a1b: $6c
	inc a                                            ; $7a1c: $3c
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	ld h, b                                          ; $7a1f: $60
	cp $37                                           ; $7a20: $fe $37
	ldh [$fc], a                                     ; $7a22: $e0 $fc
	ld bc, $1880                                     ; $7a24: $01 $80 $18
	rst $38                                          ; $7a27: $ff
	ccf                                              ; $7a28: $3f
	rst $38                                          ; $7a29: $ff
	ld a, a                                          ; $7a2a: $7f

jr_06d_7a2b:
	db $e3                                           ; $7a2b: $e3
	ld l, d                                          ; $7a2c: $6a
	rst JumpTable                                          ; $7a2d: $c7
	sub a                                            ; $7a2e: $97
	adc l                                            ; $7a2f: $8d
	add hl, bc                                       ; $7a30: $09
	sbc l                                            ; $7a31: $9d
	dec sp                                           ; $7a32: $3b
	add hl, de                                       ; $7a33: $19
	ld [de], a                                       ; $7a34: $12
	dec sp                                           ; $7a35: $3b
	ld d, [hl]                                       ; $7a36: $56
	inc sp                                           ; $7a37: $33
	ld [hl+], a                                      ; $7a38: $22
	ld [hl], a                                       ; $7a39: $77
	or d                                             ; $7a3a: $b2
	ld h, a                                          ; $7a3b: $67
	xor l                                            ; $7a3c: $ad

jr_06d_7a3d:
	ld h, [hl]                                       ; $7a3d: $66
	ld l, l                                          ; $7a3e: $6d
	add $6b                                          ; $7a3f: $c6 $6b
	call z, $cd3a                                    ; $7a41: $cc $3a $cd
	cp d                                             ; $7a44: $ba
	add l                                            ; $7a45: $85
	call $d9b6                                       ; $7a46: $cd $b6 $d9
	or [hl]                                          ; $7a49: $b6
	db $db                                           ; $7a4a: $db
	sub [hl]                                         ; $7a4b: $96
	ei                                               ; $7a4c: $fb
	sub [hl]                                         ; $7a4d: $96
	ei                                               ; $7a4e: $fb
	jp nc, $cbff                                     ; $7a4f: $d2 $ff $cb

	db $fd                                           ; $7a52: $fd
	xor e                                            ; $7a53: $ab
	cp l                                             ; $7a54: $bd
	dec hl                                           ; $7a55: $2b
	dec a                                            ; $7a56: $3d
	dec de                                           ; $7a57: $1b
	dec e                                            ; $7a58: $1d
	add hl, bc                                       ; $7a59: $09
	rrca                                             ; $7a5a: $0f
	dec c                                            ; $7a5b: $0d
	rrca                                             ; $7a5c: $0f
	dec b                                            ; $7a5d: $05
	rlca                                             ; $7a5e: $07
	inc b                                            ; $7a5f: $04
	ld a, e                                          ; $7a60: $7b
	cp $85                                           ; $7a61: $fe $85
	ld [bc], a                                       ; $7a63: $02
	inc bc                                           ; $7a64: $03
	ld c, $0f                                        ; $7a65: $0e $0f
	ld a, e                                          ; $7a67: $7b
	rst $38                                          ; $7a68: $ff
	rst $38                                          ; $7a69: $ff
	ldh [$bf], a                                     ; $7a6a: $e0 $bf
	ret nz                                           ; $7a6c: $c0

	or b                                             ; $7a6d: $b0
	rst SubAFromDE                                          ; $7a6e: $df
	rst $38                                          ; $7a6f: $ff
	sbc a                                            ; $7a70: $9f

jr_06d_7a71:
	ei                                               ; $7a71: $fb
	sbc d                                            ; $7a72: $9a
	rst FarCall                                          ; $7a73: $f7
	sub a                                            ; $7a74: $97
	rst JumpTable                                          ; $7a75: $c7
	add a                                            ; $7a76: $87
	push bc                                          ; $7a77: $c5
	add a                                            ; $7a78: $87
	adc l                                            ; $7a79: $8d
	add [hl]                                         ; $7a7a: $86
	add a                                            ; $7a7b: $87
	add e                                            ; $7a7c: $83
	reti                                             ; $7a7d: $d9


	add b                                            ; $7a7e: $80
	adc b                                            ; $7a7f: $88
	ret nz                                           ; $7a80: $c0

	add b                                            ; $7a81: $80
	cp [hl]                                          ; $7a82: $be
	jp $e3de                                         ; $7a83: $c3 $de $e3


	rst AddAOntoHL                                          ; $7a86: $ef
	ld sp, $b16f                                     ; $7a87: $31 $6f $b1
	rst FarCall                                          ; $7a8a: $f7
	ret c                                            ; $7a8b: $d8

	rst $38                                          ; $7a8c: $ff
	ld h, b                                          ; $7a8d: $60
	ccf                                              ; $7a8e: $3f
	jr nz, jr_06d_7a71                               ; $7a8f: $20 $e0

	ldh [$60], a                                     ; $7a91: $e0 $60
	ret nz                                           ; $7a93: $c0

	ret nz                                           ; $7a94: $c0

	add b                                            ; $7a95: $80
	add b                                            ; $7a96: $80
	cp $80                                           ; $7a97: $fe $80
	inc c                                            ; $7a99: $0c
	nop                                              ; $7a9a: $00
	ld e, $00                                        ; $7a9b: $1e $00
	ld e, $10                                        ; $7a9d: $1e $10
	ld c, $10                                        ; $7a9f: $0e $10
	db $db                                           ; $7aa1: $db
	or [hl]                                          ; $7aa2: $b6
	jp c, $f2b7                                      ; $7aa3: $da $b7 $f2

	xor a                                            ; $7aa6: $af
	ldh a, [c]                                       ; $7aa7: $f2
	xor a                                            ; $7aa8: $af
	or $ad                                           ; $7aa9: $f6 $ad
	rst FarCall                                          ; $7aab: $f7
	xor l                                            ; $7aac: $ad
	push hl                                          ; $7aad: $e5
	rra                                              ; $7aae: $1f
	rst $38                                          ; $7aaf: $ff
	ccf                                              ; $7ab0: $3f
	ld a, a                                          ; $7ab1: $7f
	nop                                              ; $7ab2: $00
	inc hl                                           ; $7ab3: $23
	inc e                                            ; $7ab4: $1c
	ccf                                              ; $7ab5: $3f
	ld e, $37                                        ; $7ab6: $1e $37
	add b                                            ; $7ab8: $80
	inc sp                                           ; $7ab9: $33
	dec de                                           ; $7aba: $1b
	add hl, bc                                       ; $7abb: $09
	rra                                              ; $7abc: $1f
	rra                                              ; $7abd: $1f
	dec e                                            ; $7abe: $1d
	rra                                              ; $7abf: $1f
	ld d, $3a                                        ; $7ac0: $16 $3a
	dec e                                            ; $7ac2: $1d
	dec c                                            ; $7ac3: $0d
	rlca                                             ; $7ac4: $07
	nop                                              ; $7ac5: $00
	inc bc                                           ; $7ac6: $03
	nop                                              ; $7ac7: $00
	rrca                                             ; $7ac8: $0f
	nop                                              ; $7ac9: $00
	ccf                                              ; $7aca: $3f
	ld bc, $037e                                     ; $7acb: $01 $7e $03
	db $f4                                           ; $7ace: $f4
	rrca                                             ; $7acf: $0f
	call c, $f83e                                    ; $7ad0: $dc $3e $f8
	cp $e9                                           ; $7ad3: $fe $e9
	db $fc                                           ; $7ad5: $fc
	db $f4                                           ; $7ad6: $f4
	ld sp, hl                                        ; $7ad7: $f9
	adc c                                            ; $7ad8: $89
	pop hl                                           ; $7ad9: $e1
	cp e                                             ; $7ada: $bb
	jp hl                                            ; $7adb: $e9


	inc sp                                           ; $7adc: $33
	jp z, $d277                                      ; $7add: $ca $77 $d2

	ld l, a                                          ; $7ae0: $6f
	call nz, $edff                                   ; $7ae1: $c4 $ff $ed
	sbc e                                            ; $7ae4: $9b
	push af                                          ; $7ae5: $f5
	sbc e                                            ; $7ae6: $9b
	push de                                          ; $7ae7: $d5
	cp e                                             ; $7ae8: $bb
	push de                                          ; $7ae9: $d5
	cp e                                             ; $7aea: $bb
	sub d                                            ; $7aeb: $92
	rst $38                                          ; $7aec: $ff
	sub e                                            ; $7aed: $93
	cp $77                                           ; $7aee: $fe $77
	cp $80                                           ; $7af0: $fe $80
	adc d                                            ; $7af2: $8a
	rst $38                                          ; $7af3: $ff
	jp z, $ec7f                                      ; $7af4: $ca $7f $ec

	ccf                                              ; $7af7: $3f
	db $fc                                           ; $7af8: $fc
	scf                                              ; $7af9: $37
	ld a, h                                          ; $7afa: $7c
	sub a                                            ; $7afb: $97
	db $fc                                           ; $7afc: $fc
	sub a                                            ; $7afd: $97
	cp $87                                           ; $7afe: $fe $87
	ld a, [$79cf]                                    ; $7b00: $fa $cf $79
	sbc a                                            ; $7b03: $9f
	jp hl                                            ; $7b04: $e9


	ccf                                              ; $7b05: $3f
	ret z                                            ; $7b06: $c8

Jump_06d_7b07:
	ld a, a                                          ; $7b07: $7f
	adc h                                            ; $7b08: $8c
	ei                                               ; $7b09: $fb
	ld d, h                                          ; $7b0a: $54
	cp e                                             ; $7b0b: $bb
	sub $3b                                          ; $7b0c: $d6 $3b
	xor d                                            ; $7b0e: $aa
	ld [hl], a                                       ; $7b0f: $77
	or h                                             ; $7b10: $b4
	adc [hl]                                         ; $7b11: $8e
	ld l, a                                          ; $7b12: $6f
	ld d, h                                          ; $7b13: $54
	rst AddAOntoHL                                          ; $7b14: $ef
	xor b                                            ; $7b15: $a8
	rst SubAFromDE                                          ; $7b16: $df
	xor b                                            ; $7b17: $a8
	rst SubAFromDE                                          ; $7b18: $df
	add hl, de                                       ; $7b19: $19
	rst $38                                          ; $7b1a: $ff
	ld [hl-], a                                      ; $7b1b: $32
	cp $24                                           ; $7b1c: $fe $24
	db $fc                                           ; $7b1e: $fc
	ld c, c                                          ; $7b1f: $49
	ld sp, hl                                        ; $7b20: $f9
	cp a                                             ; $7b21: $bf
	rst $38                                          ; $7b22: $ff
	ld l, a                                          ; $7b23: $6f
	ld b, b                                          ; $7b24: $40
	ld a, a                                          ; $7b25: $7f
	cp $98                                           ; $7b26: $fe $98
	rst $38                                          ; $7b28: $ff
	sub a                                            ; $7b29: $97
	rst $38                                          ; $7b2a: $ff
	sbc a                                            ; $7b2b: $9f
	rst $38                                          ; $7b2c: $ff
	adc [hl]                                         ; $7b2d: $8e
	bit 7, e                                         ; $7b2e: $cb $7b
	ld b, b                                          ; $7b30: $40
	sbc l                                            ; $7b31: $9d
	adc [hl]                                         ; $7b32: $8e
	add l                                            ; $7b33: $85
	ccf                                              ; $7b34: $3f
	ld b, b                                          ; $7b35: $40
	ld a, a                                          ; $7b36: $7f

Jump_06d_7b37:
	cp $98                                           ; $7b37: $fe $98
	rst FarCall                                          ; $7b39: $f7
	jr @+$01                                         ; $7b3a: $18 $ff

	ret nz                                           ; $7b3c: $c0

	rst $38                                          ; $7b3d: $ff
	ldh [$60], a                                     ; $7b3e: $e0 $60
	ld a, e                                          ; $7b40: $7b
	ld a, $9d                                        ; $7b41: $3e $9d
	ldh [$c0], a                                     ; $7b43: $e0 $c0
	rrca                                             ; $7b45: $0f
	ld b, b                                          ; $7b46: $40
	ld a, a                                          ; $7b47: $7f
	cp $91                                           ; $7b48: $fe $91
	ccf                                              ; $7b4a: $3f
	nop                                              ; $7b4b: $00
	ccf                                              ; $7b4c: $3f
	inc e                                            ; $7b4d: $1c
	ccf                                              ; $7b4e: $3f
	ld a, $2f                                        ; $7b4f: $3e $2f
	daa                                              ; $7b51: $27
	ccf                                              ; $7b52: $3f
	dec sp                                           ; $7b53: $3b
	dec d                                            ; $7b54: $15
	ccf                                              ; $7b55: $3f
	rra                                              ; $7b56: $1f
	ld e, $03                                        ; $7b57: $1e $03
	ld b, b                                          ; $7b59: $40
	inc sp                                           ; $7b5a: $33
	ld b, b                                          ; $7b5b: $40
	sub l                                            ; $7b5c: $95
	db $fc                                           ; $7b5d: $fc
	rla                                              ; $7b5e: $17
	db $fc                                           ; $7b5f: $fc
	rla                                              ; $7b60: $17
	cp $07                                           ; $7b61: $fe $07
	ld a, [$d98f]                                    ; $7b63: $fa $8f $d9
	rst $38                                          ; $7b66: $ff
	inc bc                                           ; $7b67: $03
	ld b, b                                          ; $7b68: $40
	ld l, a                                          ; $7b69: $6f
	ld b, b                                          ; $7b6a: $40
	sbc [hl]                                         ; $7b6b: $9e
	add b                                            ; $7b6c: $80
	ld a, e                                          ; $7b6d: $7b
	cp $9d                                           ; $7b6e: $fe $9d
	sbc a                                            ; $7b70: $9f
	rst SubAFromDE                                          ; $7b71: $df
	ld a, e                                          ; $7b72: $7b
	ld a, $23                                        ; $7b73: $3e $23
	ld b, b                                          ; $7b75: $40
	sbc d                                            ; $7b76: $9a
	nop                                              ; $7b77: $00
	rst $38                                          ; $7b78: $ff
	nop                                              ; $7b79: $00
	ldh a, [$c0]                                     ; $7b7a: $f0 $c0
	db $dd                                           ; $7b7c: $dd
	ldh [$03], a                                     ; $7b7d: $e0 $03
	ld b, b                                          ; $7b7f: $40
	ld [hl], a                                       ; $7b80: $77
	cp $96                                           ; $7b81: $fe $96
	jr c, jr_06d_7bc4                                ; $7b83: $38 $3f

	ld [hl], $3f                                     ; $7b85: $36 $3f

jr_06d_7b87:
	rra                                              ; $7b87: $1f
	add hl, hl                                       ; $7b88: $29
	scf                                              ; $7b89: $37
	rra                                              ; $7b8a: $1f
	rra                                              ; $7b8b: $1f
	inc bc                                           ; $7b8c: $03
	ld b, b                                          ; $7b8d: $40
	rla                                              ; $7b8e: $17
	ld b, b                                          ; $7b8f: $40
	sbc [hl]                                         ; $7b90: $9e
	rrca                                             ; $7b91: $0f
	inc bc                                           ; $7b92: $03
	ld b, b                                          ; $7b93: $40
	ld d, a                                          ; $7b94: $57
	ld b, b                                          ; $7b95: $40
	sub [hl]                                         ; $7b96: $96
	sub h                                            ; $7b97: $94
	rst SubAFromDE                                          ; $7b98: $df
	sbc e                                            ; $7b99: $9b
	rst SubAFromDE                                          ; $7b9a: $df
	sbc h                                            ; $7b9b: $9c
	adc a                                            ; $7b9c: $8f
	adc a                                            ; $7b9d: $8f
	add a                                            ; $7b9e: $87
	add a                                            ; $7b9f: $87
	inc hl                                           ; $7ba0: $23
	ld b, b                                          ; $7ba1: $40
	sbc h                                            ; $7ba2: $9c
	add b                                            ; $7ba3: $80
	ldh [rP1], a                                     ; $7ba4: $e0 $00
	ld a, d                                          ; $7ba6: $7a
	add b                                            ; $7ba7: $80
	ld a, e                                          ; $7ba8: $7b
	ccf                                              ; $7ba9: $3f
	inc bc                                           ; $7baa: $03
	ld b, b                                          ; $7bab: $40
	sub h                                            ; $7bac: $94
	db $10                                           ; $7bad: $10
	ccf                                              ; $7bae: $3f
	ld [$273f], sp                                   ; $7baf: $08 $3f $27
	ccf                                              ; $7bb2: $3f
	jr nc, jr_06d_7bf4                               ; $7bb3: $30 $3f

	rra                                              ; $7bb5: $1f
	rrca                                             ; $7bb6: $0f
	rrca                                             ; $7bb7: $0f
	inc bc                                           ; $7bb8: $03
	ld b, b                                          ; $7bb9: $40
	inc de                                           ; $7bba: $13
	ld b, b                                          ; $7bbb: $40
	sbc l                                            ; $7bbc: $9d
	xor c                                            ; $7bbd: $a9
	ld a, a                                          ; $7bbe: $7f
	rla                                              ; $7bbf: $17
	ld b, b                                          ; $7bc0: $40
	add [hl]                                         ; $7bc1: $86
	ld b, b                                          ; $7bc2: $40
	ret nz                                           ; $7bc3: $c0

jr_06d_7bc4:
	ldh [rLCDC], a                                   ; $7bc4: $e0 $40
	ldh [$60], a                                     ; $7bc6: $e0 $60
	jr nc, jr_06d_7c2a                               ; $7bc8: $30 $60

	jr nc, @+$72                                     ; $7bca: $30 $70

	ld a, b                                          ; $7bcc: $78
	jr nc, jr_06d_7b87                               ; $7bcd: $30 $b8

	ld l, b                                          ; $7bcf: $68
	or h                                             ; $7bd0: $b4
	ld l, h                                          ; $7bd1: $6c
	sbc d                                            ; $7bd2: $9a
	halt                                             ; $7bd3: $76
	dec e                                            ; $7bd4: $1d
	di                                               ; $7bd5: $f3
	rra                                              ; $7bd6: $1f
	ldh a, [rAUD3LEVEL]                              ; $7bd7: $f0 $1c
	ldh a, [$98]                                     ; $7bd9: $f0 $98
	ld [hl], e                                       ; $7bdb: $73
	cp $9c                                           ; $7bdc: $fe $9c
	ret c                                            ; $7bde: $d8

	ld hl, sp+$00                                    ; $7bdf: $f8 $00
	ld a, e                                          ; $7be1: $7b
	ld d, b                                          ; $7be2: $50
	sbc d                                            ; $7be3: $9a
	ld hl, sp+$30                                    ; $7be4: $f8 $30
	inc e                                            ; $7be6: $1c
	ld [$fe60], sp                                   ; $7be7: $08 $60 $fe
	sbc [hl]                                         ; $7bea: $9e
	ld bc, $b67a                                     ; $7beb: $01 $7a $b6
	sbc l                                            ; $7bee: $9d
	ld e, $01                                        ; $7bef: $1e $01
	sbc $ff                                          ; $7bf1: $de $ff
	rst SubAFromDE                                          ; $7bf3: $df

jr_06d_7bf4:
	ccf                                              ; $7bf4: $3f
	sbc l                                            ; $7bf5: $9d
	rrca                                             ; $7bf6: $0f
	rra                                              ; $7bf7: $1f
	ld a, e                                          ; $7bf8: $7b
	ld l, h                                          ; $7bf9: $6c
	ld a, a                                          ; $7bfa: $7f
	ldh a, [c]                                       ; $7bfb: $f2
	rst SubAFromDE                                          ; $7bfc: $df
	rlca                                             ; $7bfd: $07
	ld [hl], e                                       ; $7bfe: $73
	ldh [$99], a                                     ; $7bff: $e0 $99
	ld [hl], b                                       ; $7c01: $70
	ld a, h                                          ; $7c02: $7c
	jr c, jr_06d_7c05                                ; $7c03: $38 $00

jr_06d_7c05:
	nop                                              ; $7c05: $00
	ld h, b                                          ; $7c06: $60
	inc sp                                           ; $7c07: $33
	ldh [$7f], a                                     ; $7c08: $e0 $7f
	ld [$9094], a                                    ; $7c0a: $ea $94 $90
	add b                                            ; $7c0d: $80
	ret z                                            ; $7c0e: $c8

	ret z                                            ; $7c0f: $c8

	db $fc                                           ; $7c10: $fc
	ld hl, sp+$78                                    ; $7c11: $f8 $78
	ld [hl], b                                       ; $7c13: $70
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00
	ld h, c                                          ; $7c16: $61
	dec sp                                           ; $7c17: $3b
	ldh [$df], a                                     ; $7c18: $e0 $df
	ld b, b                                          ; $7c1a: $40
	sbc [hl]                                         ; $7c1b: $9e
	or b                                             ; $7c1c: $b0
	inc de                                           ; $7c1d: $13
	ldh [$fa], a                                     ; $7c1e: $e0 $fa
	ld bc, $1880                                     ; $7c20: $01 $80 $18
	rst $38                                          ; $7c23: $ff
	ccf                                              ; $7c24: $3f
	rst $38                                          ; $7c25: $ff
	ld a, a                                          ; $7c26: $7f
	db $e3                                           ; $7c27: $e3
	ld l, d                                          ; $7c28: $6a
	rst JumpTable                                          ; $7c29: $c7

jr_06d_7c2a:
	sub a                                            ; $7c2a: $97
	adc l                                            ; $7c2b: $8d
	add hl, bc                                       ; $7c2c: $09
	sbc l                                            ; $7c2d: $9d
	dec sp                                           ; $7c2e: $3b
	add hl, de                                       ; $7c2f: $19
	ld [de], a                                       ; $7c30: $12
	dec sp                                           ; $7c31: $3b
	ld d, [hl]                                       ; $7c32: $56
	inc sp                                           ; $7c33: $33
	ld [hl+], a                                      ; $7c34: $22
	ld [hl], a                                       ; $7c35: $77
	or d                                             ; $7c36: $b2
	ld h, a                                          ; $7c37: $67
	xor l                                            ; $7c38: $ad
	ld h, [hl]                                       ; $7c39: $66
	ld l, l                                          ; $7c3a: $6d
	add $6b                                          ; $7c3b: $c6 $6b
	call z, $cd3a                                    ; $7c3d: $cc $3a $cd
	cp d                                             ; $7c40: $ba
	add l                                            ; $7c41: $85
	call $d9b6                                       ; $7c42: $cd $b6 $d9
	or [hl]                                          ; $7c45: $b6
	db $db                                           ; $7c46: $db
	sub [hl]                                         ; $7c47: $96
	ei                                               ; $7c48: $fb
	sub [hl]                                         ; $7c49: $96
	ei                                               ; $7c4a: $fb
	jp nc, $cbff                                     ; $7c4b: $d2 $ff $cb

	db $fd                                           ; $7c4e: $fd
	xor e                                            ; $7c4f: $ab
	cp l                                             ; $7c50: $bd
	dec hl                                           ; $7c51: $2b
	dec a                                            ; $7c52: $3d
	dec de                                           ; $7c53: $1b
	dec e                                            ; $7c54: $1d
	add hl, bc                                       ; $7c55: $09
	rrca                                             ; $7c56: $0f
	dec c                                            ; $7c57: $0d
	rrca                                             ; $7c58: $0f
	dec b                                            ; $7c59: $05
	rlca                                             ; $7c5a: $07
	inc b                                            ; $7c5b: $04
	ld a, e                                          ; $7c5c: $7b
	cp $85                                           ; $7c5d: $fe $85
	ld [bc], a                                       ; $7c5f: $02
	inc bc                                           ; $7c60: $03
	ld c, $0f                                        ; $7c61: $0e $0f
	ld a, e                                          ; $7c63: $7b
	rst $38                                          ; $7c64: $ff
	rst $38                                          ; $7c65: $ff
	ldh [$bf], a                                     ; $7c66: $e0 $bf
	ret nz                                           ; $7c68: $c0

	cp h                                             ; $7c69: $bc
	db $d3                                           ; $7c6a: $d3
	rst $38                                          ; $7c6b: $ff
	sbc a                                            ; $7c6c: $9f
	rst $38                                          ; $7c6d: $ff
	sbc h                                            ; $7c6e: $9c
	ld a, [$c796]                                    ; $7c6f: $fa $96 $c7
	add a                                            ; $7c72: $87
	push bc                                          ; $7c73: $c5
	add a                                            ; $7c74: $87
	adc l                                            ; $7c75: $8d
	add [hl]                                         ; $7c76: $86
	add a                                            ; $7c77: $87
	add e                                            ; $7c78: $83
	reti                                             ; $7c79: $d9


	add b                                            ; $7c7a: $80
	adc b                                            ; $7c7b: $88
	ret nz                                           ; $7c7c: $c0

	add b                                            ; $7c7d: $80
	cp [hl]                                          ; $7c7e: $be
	jp Jump_06d_63de                                 ; $7c7f: $c3 $de $63


	rst AddAOntoHL                                          ; $7c82: $ef
	ld sp, $b16f                                     ; $7c83: $31 $6f $b1
	rst FarCall                                          ; $7c86: $f7
	ret c                                            ; $7c87: $d8

	rst $38                                          ; $7c88: $ff
	ld hl, sp-$01                                    ; $7c89: $f8 $ff
	ld h, b                                          ; $7c8b: $60
	ldh a, [$e0]                                     ; $7c8c: $f0 $e0
	ld h, b                                          ; $7c8e: $60
	ret nz                                           ; $7c8f: $c0

	ret nz                                           ; $7c90: $c0

	add b                                            ; $7c91: $80
	add b                                            ; $7c92: $80
	cp l                                             ; $7c93: $bd
	ret nz                                           ; $7c94: $c0

	inc c                                            ; $7c95: $0c
	ld e, $1e                                        ; $7c96: $1e $1e
	add b                                            ; $7c98: $80
	db $10                                           ; $7c99: $10
	ld c, $10                                        ; $7c9a: $0e $10
	db $db                                           ; $7c9c: $db
	or [hl]                                          ; $7c9d: $b6
	jp c, $f2b7                                      ; $7c9e: $da $b7 $f2

	xor a                                            ; $7ca1: $af
	ldh a, [c]                                       ; $7ca2: $f2
	xor a                                            ; $7ca3: $af
	or $ad                                           ; $7ca4: $f6 $ad
	rst FarCall                                          ; $7ca6: $f7
	xor l                                            ; $7ca7: $ad
	db $fd                                           ; $7ca8: $fd
	rrca                                             ; $7ca9: $0f
	ld b, a                                          ; $7caa: $47
	cp a                                             ; $7cab: $bf
	ld a, a                                          ; $7cac: $7f
	ld a, b                                          ; $7cad: $78
	ld a, a                                          ; $7cae: $7f
	nop                                              ; $7caf: $00
	ccf                                              ; $7cb0: $3f
	ld c, $3f                                        ; $7cb1: $0e $3f
	ccf                                              ; $7cb3: $3f
	inc sp                                           ; $7cb4: $33
	inc de                                           ; $7cb5: $13
	dec sp                                           ; $7cb6: $3b
	add hl, de                                       ; $7cb7: $19
	sbc b                                            ; $7cb8: $98
	dec e                                            ; $7cb9: $1d
	rra                                              ; $7cba: $1f
	ld d, $3a                                        ; $7cbb: $16 $3a
	dec e                                            ; $7cbd: $1d
	dec c                                            ; $7cbe: $0d
	rlca                                             ; $7cbf: $07
	cp [hl]                                          ; $7cc0: $be
	inc bc                                           ; $7cc1: $03
	rrca                                             ; $7cc2: $0f
	ccf                                              ; $7cc3: $3f
	add b                                            ; $7cc4: $80
	ld bc, $037e                                     ; $7cc5: $01 $7e $03
	db $f4                                           ; $7cc8: $f4
	rrca                                             ; $7cc9: $0f
	call c, $f83e                                    ; $7cca: $dc $3e $f8
	cp $e9                                           ; $7ccd: $fe $e9
	db $fc                                           ; $7ccf: $fc
	db $f4                                           ; $7cd0: $f4
	ld sp, hl                                        ; $7cd1: $f9
	pop hl                                           ; $7cd2: $e1
	cp e                                             ; $7cd3: $bb
	jp hl                                            ; $7cd4: $e9


	inc sp                                           ; $7cd5: $33
	jp z, $d277                                      ; $7cd6: $ca $77 $d2

	ld l, a                                          ; $7cd9: $6f
	call nz, $edff                                   ; $7cda: $c4 $ff $ed
	sbc e                                            ; $7cdd: $9b
	push af                                          ; $7cde: $f5
	sbc e                                            ; $7cdf: $9b
	push de                                          ; $7ce0: $d5
	cp e                                             ; $7ce1: $bb
	push de                                          ; $7ce2: $d5
	cp e                                             ; $7ce3: $bb
	sbc e                                            ; $7ce4: $9b
	sub d                                            ; $7ce5: $92
	rst $38                                          ; $7ce6: $ff
	sub e                                            ; $7ce7: $93
	cp $77                                           ; $7ce8: $fe $77
	cp $80                                           ; $7cea: $fe $80
	adc d                                            ; $7cec: $8a
	rst $38                                          ; $7ced: $ff
	jp z, $ec7f                                      ; $7cee: $ca $7f $ec

	ccf                                              ; $7cf1: $3f
	db $fc                                           ; $7cf2: $fc
	scf                                              ; $7cf3: $37
	db $fc                                           ; $7cf4: $fc
	sub a                                            ; $7cf5: $97
	db $fc                                           ; $7cf6: $fc
	sub a                                            ; $7cf7: $97
	cp $87                                           ; $7cf8: $fe $87
	ld a, [$79cf]                                    ; $7cfa: $fa $cf $79
	sbc a                                            ; $7cfd: $9f
	jp hl                                            ; $7cfe: $e9


	ccf                                              ; $7cff: $3f
	ret z                                            ; $7d00: $c8

	ld a, a                                          ; $7d01: $7f
	adc h                                            ; $7d02: $8c
	ei                                               ; $7d03: $fb
	ld d, h                                          ; $7d04: $54
	cp e                                             ; $7d05: $bb
	sub $3b                                          ; $7d06: $d6 $3b
	xor d                                            ; $7d08: $aa
	ld [hl], a                                       ; $7d09: $77
	or h                                             ; $7d0a: $b4
	adc [hl]                                         ; $7d0b: $8e
	ld l, a                                          ; $7d0c: $6f
	ld d, h                                          ; $7d0d: $54
	rst AddAOntoHL                                          ; $7d0e: $ef
	xor b                                            ; $7d0f: $a8
	rst SubAFromDE                                          ; $7d10: $df
	xor b                                            ; $7d11: $a8
	rst SubAFromDE                                          ; $7d12: $df
	add hl, de                                       ; $7d13: $19
	rst $38                                          ; $7d14: $ff
	ld [hl-], a                                      ; $7d15: $32
	cp $24                                           ; $7d16: $fe $24
	db $fc                                           ; $7d18: $fc
	ld c, c                                          ; $7d19: $49
	ld sp, hl                                        ; $7d1a: $f9
	cp a                                             ; $7d1b: $bf
	rst $38                                          ; $7d1c: $ff
	ld l, a                                          ; $7d1d: $6f
	ld b, b                                          ; $7d1e: $40
	ld a, a                                          ; $7d1f: $7f
	cp $9d                                           ; $7d20: $fe $9d
	rst $38                                          ; $7d22: $ff
	sub a                                            ; $7d23: $97
	ld a, e                                          ; $7d24: $7b
	ld a, $98                                        ; $7d25: $3e $98
	adc [hl]                                         ; $7d27: $8e
	res 0, a                                         ; $7d28: $cb $87
	call $8e87                                       ; $7d2a: $cd $87 $8e
	add l                                            ; $7d2d: $85
	ccf                                              ; $7d2e: $3f
	ld b, b                                          ; $7d2f: $40
	ld a, a                                          ; $7d30: $7f
	cp $97                                           ; $7d31: $fe $97
	rst FarCall                                          ; $7d33: $f7
	sbc b                                            ; $7d34: $98
	rst $38                                          ; $7d35: $ff
	ret c                                            ; $7d36: $d8

	rst $38                                          ; $7d37: $ff
	ldh [rSVBK], a                                   ; $7d38: $e0 $70
	ld h, b                                          ; $7d3a: $60
	sbc $e0                                          ; $7d3b: $de $e0
	ld a, a                                          ; $7d3d: $7f
	db $eb                                           ; $7d3e: $eb
	rlca                                             ; $7d3f: $07
	ld b, b                                          ; $7d40: $40
	ld a, a                                          ; $7d41: $7f
	cp $94                                           ; $7d42: $fe $94
	ld a, $3f                                        ; $7d44: $3e $3f
	ccf                                              ; $7d46: $3f
	scf                                              ; $7d47: $37
	inc de                                           ; $7d48: $13
	ccf                                              ; $7d49: $3f
	ccf                                              ; $7d4a: $3f
	ld l, c                                          ; $7d4b: $69
	scf                                              ; $7d4c: $37
	ccf                                              ; $7d4d: $3f
	ld e, $03                                        ; $7d4e: $1e $03
	ld b, b                                          ; $7d50: $40
	cpl                                              ; $7d51: $2f
	ld b, b                                          ; $7d52: $40
	sbc [hl]                                         ; $7d53: $9e
	rla                                              ; $7d54: $17
	ld [hl], e                                       ; $7d55: $73
	ld b, b                                          ; $7d56: $40
	sbc h                                            ; $7d57: $9c
	adc a                                            ; $7d58: $8f
	reti                                             ; $7d59: $d9


	rst $38                                          ; $7d5a: $ff
	inc bc                                           ; $7d5b: $03
	ld b, b                                          ; $7d5c: $40
	ld l, a                                          ; $7d5d: $6f
	ld b, b                                          ; $7d5e: $40
	sbc [hl]                                         ; $7d5f: $9e
	add b                                            ; $7d60: $80
	ld a, e                                          ; $7d61: $7b
	cp $9b                                           ; $7d62: $fe $9b
	sbc [hl]                                         ; $7d64: $9e
	rst SubAFromDE                                          ; $7d65: $df
	adc a                                            ; $7d66: $8f
	sla a                                            ; $7d67: $cb $27
	ld b, b                                          ; $7d69: $40
	ld a, [hl]                                       ; $7d6a: $7e
	rla                                              ; $7d6b: $17
	ld a, a                                          ; $7d6c: $7f
	cp $bf                                           ; $7d6d: $fe $bf
	ldh a, [$e0]                                     ; $7d6f: $f0 $e0
	sbc h                                            ; $7d71: $9c
	add b                                            ; $7d72: $80
	ldh [$e0], a                                     ; $7d73: $e0 $e0
	inc bc                                           ; $7d75: $03
	ld b, b                                          ; $7d76: $40
	cp [hl]                                          ; $7d77: $be
	ccf                                              ; $7d78: $3f
	ccf                                              ; $7d79: $3f
	ccf                                              ; $7d7a: $3f
	sbc e                                            ; $7d7b: $9b
	inc a                                            ; $7d7c: $3c
	ccf                                              ; $7d7d: $3f
	rra                                              ; $7d7e: $1f

jr_06d_7d7f:
	ld l, e                                          ; $7d7f: $6b

jr_06d_7d80:
	inc bc                                           ; $7d80: $03
	ld b, b                                          ; $7d81: $40
	dec de                                           ; $7d82: $1b
	ld b, b                                          ; $7d83: $40
	sbc h                                            ; $7d84: $9c
	rla                                              ; $7d85: $17
	cp $07                                           ; $7d86: $fe $07
	inc bc                                           ; $7d88: $03
	ld b, b                                          ; $7d89: $40
	ld c, a                                          ; $7d8a: $4f
	ld b, b                                          ; $7d8b: $40
	sub [hl]                                         ; $7d8c: $96
	sub h                                            ; $7d8d: $94
	rst SubAFromDE                                          ; $7d8e: $df
	sbc e                                            ; $7d8f: $9b
	rst SubAFromDE                                          ; $7d90: $df
	sbc h                                            ; $7d91: $9c
	sbc a                                            ; $7d92: $9f
	adc a                                            ; $7d93: $8f
	add a                                            ; $7d94: $87
	add a                                            ; $7d95: $87
	inc hl                                           ; $7d96: $23
	ld b, b                                          ; $7d97: $40
	ld a, a                                          ; $7d98: $7f
	ld b, d                                          ; $7d99: $42
	ld a, a                                          ; $7d9a: $7f
	ld a, $79                                        ; $7d9b: $3e $79
	cp [hl]                                          ; $7d9d: $be
	inc bc                                           ; $7d9e: $03
	ld b, b                                          ; $7d9f: $40
	ld a, a                                          ; $7da0: $7f
	cp $94                                           ; $7da1: $fe $94
	db $10                                           ; $7da3: $10
	ccf                                              ; $7da4: $3f
	ld [$273f], sp                                   ; $7da5: $08 $3f $27
	ld a, a                                          ; $7da8: $7f
	jr nc, @+$41                                     ; $7da9: $30 $3f

	rra                                              ; $7dab: $1f
	rrca                                             ; $7dac: $0f
	rrca                                             ; $7dad: $0f
	inc bc                                           ; $7dae: $03
	ld b, b                                          ; $7daf: $40
	rra                                              ; $7db0: $1f
	ld b, b                                          ; $7db1: $40
	sbc d                                            ; $7db2: $9a
	rrca                                             ; $7db3: $0f
	reti                                             ; $7db4: $d9


	rst $38                                          ; $7db5: $ff
	xor c                                            ; $7db6: $a9
	ld a, a                                          ; $7db7: $7f
	rla                                              ; $7db8: $17
	ld b, b                                          ; $7db9: $40
	add [hl]                                         ; $7dba: $86
	ld b, b                                          ; $7dbb: $40
	ret nz                                           ; $7dbc: $c0

	ldh [rLCDC], a                                   ; $7dbd: $e0 $40
	ldh [$60], a                                     ; $7dbf: $e0 $60
	jr nc, @+$62                                     ; $7dc1: $30 $60

	jr nc, jr_06d_7e35                               ; $7dc3: $30 $70

	ld a, b                                          ; $7dc5: $78
	jr nc, jr_06d_7d80                               ; $7dc6: $30 $b8

	ld l, b                                          ; $7dc8: $68
	or h                                             ; $7dc9: $b4
	ld l, h                                          ; $7dca: $6c
	sbc d                                            ; $7dcb: $9a
	halt                                             ; $7dcc: $76

jr_06d_7dcd:
	dec e                                            ; $7dcd: $1d
	di                                               ; $7dce: $f3
	rra                                              ; $7dcf: $1f
	ldh a, [rAUD3LEVEL]                              ; $7dd0: $f0 $1c
	ldh a, [$98]                                     ; $7dd2: $f0 $98
	ld [hl], e                                       ; $7dd4: $73
	cp $9c                                           ; $7dd5: $fe $9c
	ret c                                            ; $7dd7: $d8

	ld hl, sp+$00                                    ; $7dd8: $f8 $00
	ld a, e                                          ; $7dda: $7b
	ld d, b                                          ; $7ddb: $50
	sbc b                                            ; $7ddc: $98
	cp b                                             ; $7ddd: $b8
	or b                                             ; $7dde: $b0
	ld c, h                                          ; $7ddf: $4c
	ld c, b                                          ; $7de0: $48
	jr @+$1a                                         ; $7de1: $18 $18

	ret nz                                           ; $7de3: $c0

	cp [hl]                                          ; $7de4: $be
	ld hl, $1e03                                     ; $7de5: $21 $03 $1e
	sbc [hl]                                         ; $7de8: $9e
	ld bc, $ffde                                     ; $7de9: $01 $de $ff
	rst SubAFromDE                                          ; $7dec: $df
	ccf                                              ; $7ded: $3f
	sbc l                                            ; $7dee: $9d
	rrca                                             ; $7def: $0f
	rra                                              ; $7df0: $1f
	cp [hl]                                          ; $7df1: $be
	rrca                                             ; $7df2: $0f
	inc bc                                           ; $7df3: $03
	rlca                                             ; $7df4: $07
	ld a, [hl]                                       ; $7df5: $7e
	and e                                            ; $7df6: $a3
	ld [hl], e                                       ; $7df7: $73
	ldh [$9a], a                                     ; $7df8: $e0 $9a
	call z, Call_06d_5848                            ; $7dfa: $cc $48 $58
	jr c, jr_06d_7d7f                                ; $7dfd: $38 $80

	cp [hl]                                          ; $7dff: $be
	ld h, c                                          ; $7e00: $61
	inc bc                                           ; $7e01: $03
	ld e, $2f                                        ; $7e02: $1e $2f
	ldh [$99], a                                     ; $7e04: $e0 $99
	ret z                                            ; $7e06: $c8

	ld a, b                                          ; $7e07: $78
	ld hl, sp+$50                                    ; $7e08: $f8 $50
	jr nz, jr_06d_7dcd                               ; $7e0a: $20 $c1

	dec de                                           ; $7e0c: $1b
	ldh [$df], a                                     ; $7e0d: $e0 $df
	ld hl, sp-$21                                    ; $7e0f: $f8 $df
	ld [hl], b                                       ; $7e11: $70
	sbc [hl]                                         ; $7e12: $9e
	ld bc, $c3bf                                     ; $7e13: $01 $bf $c3
	ld e, $4b                                        ; $7e16: $1e $4b
	ldh [$d2], a                                     ; $7e18: $e0 $d2
	ld [bc], a                                       ; $7e1a: $02
	rst FarCall                                          ; $7e1b: $f7
	rst SubAFromDE                                          ; $7e1c: $df
	ld bc, $0797                                     ; $7e1d: $01 $97 $07
	ld b, $0f                                        ; $7e20: $06 $0f
	ld [$101f], sp                                   ; $7e22: $08 $1f $10
	ccf                                              ; $7e25: $3f
	jr nz, jr_06d_7e97                               ; $7e26: $20 $6f

	cp $7f                                           ; $7e28: $fe $7f
	or $7f                                           ; $7e2a: $f6 $7f
	cp $7f                                           ; $7e2c: $fe $7f
	ldh a, [$7f]                                     ; $7e2e: $f0 $7f
	cp $95                                           ; $7e30: $fe $95
	rlca                                             ; $7e32: $07
	inc b                                            ; $7e33: $04
	rlca                                             ; $7e34: $07

jr_06d_7e35:
	inc b                                            ; $7e35: $04
	inc bc                                           ; $7e36: $03
	ld [bc], a                                       ; $7e37: $02
	ld [bc], a                                       ; $7e38: $02
	inc bc                                           ; $7e39: $03
	ld bc, $e701                                     ; $7e3a: $01 $01 $e7
	rst SubAFromDE                                          ; $7e3d: $df
	rlca                                             ; $7e3e: $07
	sbc d                                            ; $7e3f: $9a
	ccf                                              ; $7e40: $3f
	jr c, @+$01                                      ; $7e41: $38 $ff

	ret nz                                           ; $7e43: $c0

	rst $38                                          ; $7e44: $ff
	cp e                                             ; $7e45: $bb
	rst $38                                          ; $7e46: $ff
	rst $38                                          ; $7e47: $ff
	rst $38                                          ; $7e48: $ff
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	cp $92                                           ; $7e4b: $fe $92
	ld bc, $07f8                                     ; $7e4d: $01 $f8 $07
	nop                                              ; $7e50: $00
	rst $38                                          ; $7e51: $ff
	add c                                            ; $7e52: $81
	ld a, a                                          ; $7e53: $7f
	add $3f                                          ; $7e54: $c6 $3f
	ldh [$1f], a                                     ; $7e56: $e0 $1f
	ld hl, sp+$07                                    ; $7e58: $f8 $07
	ld l, e                                          ; $7e5a: $6b
	ld [$8090], a                                    ; $7e5b: $ea $90 $80
	cp a                                             ; $7e5e: $bf
	ret nz                                           ; $7e5f: $c0

	ld e, a                                          ; $7e60: $5f
	ld h, b                                          ; $7e61: $60
	ccf                                              ; $7e62: $3f
	jr nz, jr_06d_7e94                               ; $7e63: $20 $2f

	jr nc, jr_06d_7e7e                               ; $7e65: $30 $17

	jr jr_06d_7e74                                   ; $7e67: $18 $0b

	inc c                                            ; $7e69: $0c
	dec b                                            ; $7e6a: $05
	ld b, $6f                                        ; $7e6b: $06 $6f
	xor h                                            ; $7e6d: $ac
	rst SubAFromDE                                          ; $7e6e: $df
	rrca                                             ; $7e6f: $0f
	sbc l                                            ; $7e70: $9d
	rst $38                                          ; $7e71: $ff
	ldh a, [$57]                                     ; $7e72: $f0 $57

jr_06d_7e74:
	add $95                                          ; $7e74: $c6 $95
	db $fc                                           ; $7e76: $fc
	inc bc                                           ; $7e77: $03
	ldh [$1f], a                                     ; $7e78: $e0 $1f
	add a                                            ; $7e7a: $87
	ld a, a                                          ; $7e7b: $7f
	inc e                                            ; $7e7c: $1c
	db $fc                                           ; $7e7d: $fc

jr_06d_7e7e:
	ld h, b                                          ; $7e7e: $60
	ldh [$dd], a                                     ; $7e7f: $e0 $dd
	add c                                            ; $7e81: $81

jr_06d_7e82:
	rst SubAFromDE                                          ; $7e82: $df
	jp Jump_06d_478b                                 ; $7e83: $c3 $8b $47


jr_06d_7e86:
	rst JumpTable                                          ; $7e86: $c7
	and b                                            ; $7e87: $a0
	ld h, b                                          ; $7e88: $60
	ret nc                                           ; $7e89: $d0

	jr nc, jr_06d_7e74                               ; $7e8a: $30 $e8

	jr jr_06d_7e82                                   ; $7e8c: $18 $f4

	inc c                                            ; $7e8e: $0c
	ldh a, [c]                                       ; $7e8f: $f2
	ld c, $f9                                        ; $7e90: $0e $f9
	rlca                                             ; $7e92: $07
	db $fc                                           ; $7e93: $fc

jr_06d_7e94:
	inc bc                                           ; $7e94: $03
	db $fc                                           ; $7e95: $fc
	inc bc                                           ; $7e96: $03

jr_06d_7e97:
	cp $01                                           ; $7e97: $fe $01
	ld [hl], a                                       ; $7e99: $77
	cp $57                                           ; $7e9a: $fe $57
	xor h                                            ; $7e9c: $ac
	ld [hl], a                                       ; $7e9d: $77
	xor [hl]                                         ; $7e9e: $ae
	sub l                                            ; $7e9f: $95
	inc de                                           ; $7ea0: $13
	inc e                                            ; $7ea1: $1c
	dec bc                                           ; $7ea2: $0b
	inc c                                            ; $7ea3: $0c
	add hl, bc                                       ; $7ea4: $09
	ld c, $04                                        ; $7ea5: $0e $04
	rlca                                             ; $7ea7: $07
	ld [bc], a                                       ; $7ea8: $02
	inc bc                                           ; $7ea9: $03
	ld [hl], a                                       ; $7eaa: $77
	xor b                                            ; $7eab: $a8
	db $dd                                           ; $7eac: $dd
	ld bc, $dff3                                     ; $7ead: $01 $f3 $df
	ld bc, $03df                                     ; $7eb0: $01 $df $03
	adc [hl]                                         ; $7eb3: $8e
	dec c                                            ; $7eb4: $0d
	rrca                                             ; $7eb5: $0f
	dec de                                           ; $7eb6: $1b
	rla                                              ; $7eb7: $17
	inc [hl]                                         ; $7eb8: $34
	cpl                                              ; $7eb9: $2f
	ld l, c                                          ; $7eba: $69
	ld e, [hl]                                       ; $7ebb: $5e
	ld c, e                                          ; $7ebc: $4b
	ld a, h                                          ; $7ebd: $7c
	sub $b9                                          ; $7ebe: $d6 $b9
	sub h                                            ; $7ec0: $94
	ei                                               ; $7ec1: $fb
	sub h                                            ; $7ec2: $94
	ei                                               ; $7ec3: $fb
	sub b                                            ; $7ec4: $90
	sbc $ff                                          ; $7ec5: $de $ff
	ld e, e                                          ; $7ec7: $5b
	ld a, [hl-]                                      ; $7ec8: $3a
	adc h                                            ; $7ec9: $8c
	nop                                              ; $7eca: $00
	rra                                              ; $7ecb: $1f
	inc bc                                           ; $7ecc: $03
	db $fc                                           ; $7ecd: $fc
	rrca                                             ; $7ece: $0f
	pop af                                           ; $7ecf: $f1
	ld a, a                                          ; $7ed0: $7f
	jp nz, $c4ff                                     ; $7ed1: $c2 $ff $c4

	rst $38                                          ; $7ed4: $ff
	adc b                                            ; $7ed5: $88
	rst $38                                          ; $7ed6: $ff
	sub c                                            ; $7ed7: $91
	rst $38                                          ; $7ed8: $ff
	ld [hl+], a                                      ; $7ed9: $22
	rst $38                                          ; $7eda: $ff
	push bc                                          ; $7edb: $c5
	cp $e0                                           ; $7edc: $fe $e0
	pop bc                                           ; $7ede: $c1
	sub e                                            ; $7edf: $93
	ld sp, hl                                        ; $7ee0: $f9
	sbc a                                            ; $7ee1: $9f
	and $be                                          ; $7ee2: $e6 $be
	ret c                                            ; $7ee4: $d8

	ld hl, sp-$60                                    ; $7ee5: $f8 $a0
	ldh [$c0], a                                     ; $7ee7: $e0 $c0
	ret nz                                           ; $7ee9: $c0

	add b                                            ; $7eea: $80
	add b                                            ; $7eeb: $80

jr_06d_7eec:
	db $fd                                           ; $7eec: $fd
	rst SubAFromDE                                          ; $7eed: $df
	add b                                            ; $7eee: $80
	ld a, a                                          ; $7eef: $7f
	jr z, jr_06d_7e86                                ; $7ef0: $28 $94

	jr jr_06d_7eec                                   ; $7ef2: $18 $f8

	inc b                                            ; $7ef4: $04
	db $fc                                           ; $7ef5: $fc
	ld [bc], a                                       ; $7ef6: $02
	cp $c3                                           ; $7ef7: $fe $c3
	rst $38                                          ; $7ef9: $ff
	ld [hl], $ff                                     ; $7efa: $36 $ff
	inc e                                            ; $7efc: $1c
	ld e, e                                          ; $7efd: $5b
	add d                                            ; $7efe: $82
	ld b, a                                          ; $7eff: $47
	ld d, d                                          ; $7f00: $52
	ld a, [hl]                                       ; $7f01: $7e
	ld [hl], d                                       ; $7f02: $72
	sbc e                                            ; $7f03: $9b
	rra                                              ; $7f04: $1f
	jr @+$01                                         ; $7f05: $18 $ff

	ldh [$7b], a                                     ; $7f07: $e0 $7b
	or $bc                                           ; $7f09: $f6 $bc
	ld bc, $0000                                     ; $7f0b: $01 $00 $00
	inc a                                            ; $7f0e: $3c
	cp $8d                                           ; $7f0f: $fe $8d
	ld a, h                                          ; $7f11: $7c
	db $e3                                           ; $7f12: $e3
	rst $38                                          ; $7f13: $ff
	add c                                            ; $7f14: $81
	di                                               ; $7f15: $f3
	rla                                              ; $7f16: $17
	ldh [c], a                                       ; $7f17: $e2
	ld a, [hl+]                                      ; $7f18: $2a
	and $7e                                          ; $7f19: $e6 $7e
	call nz, $ccb5                                   ; $7f1b: $c4 $b5 $cc
	ld c, a                                          ; $7f1e: $4f
	cp b                                             ; $7f1f: $b8
	adc d                                            ; $7f20: $8a
	ld a, l                                          ; $7f21: $7d
	db $10                                           ; $7f22: $10
	inc hl                                           ; $7f23: $23
	ret nz                                           ; $7f24: $c0

	ldh [$d9], a                                     ; $7f25: $e0 $d9
	sbc c                                            ; $7f27: $99
	jp nz, $c2c0                                     ; $7f28: $c2 $c0 $c2

	ret nz                                           ; $7f2b: $c0

	ld b, c                                          ; $7f2c: $41
	ld b, b                                          ; $7f2d: $40
	ld sp, hl                                        ; $7f2e: $f9
	sbc [hl]                                         ; $7f2f: $9e
	db $10                                           ; $7f30: $10
	cp a                                             ; $7f31: $bf
	jr jr_06d_7f53                                   ; $7f32: $18 $1f

	sub e                                            ; $7f34: $93
	ld bc, $023e                                     ; $7f35: $01 $3e $02
	inc a                                            ; $7f38: $3c
	inc b                                            ; $7f39: $04
	ld a, a                                          ; $7f3a: $7f
	rrca                                             ; $7f3b: $0f
	ld hl, sp-$61                                    ; $7f3c: $f8 $9f
	ld h, e                                          ; $7f3e: $63
	rst $38                                          ; $7f3f: $ff
	inc a                                            ; $7f40: $3c
	dec sp                                           ; $7f41: $3b
	and b                                            ; $7f42: $a0
	rst SubAFromDE                                          ; $7f43: $df
	ccf                                              ; $7f44: $3f
	adc c                                            ; $7f45: $89
	ld a, a                                          ; $7f46: $7f
	ld b, [hl]                                       ; $7f47: $46
	rst $38                                          ; $7f48: $ff
	adc c                                            ; $7f49: $89
	rst $38                                          ; $7f4a: $ff
	ld c, $fb                                        ; $7f4b: $0e $fb
	rrca                                             ; $7f4d: $0f
	jp $333e                                         ; $7f4e: $c3 $3e $33


	rst $38                                          ; $7f51: $ff
	rst $38                                          ; $7f52: $ff

jr_06d_7f53:
	ld a, a                                          ; $7f53: $7f
	rst $38                                          ; $7f54: $ff
	add b                                            ; $7f55: $80
	rst $38                                          ; $7f56: $ff
	ld h, b                                          ; $7f57: $60
	rra                                              ; $7f58: $1f
	inc e                                            ; $7f59: $1c
	rlca                                             ; $7f5a: $07
	inc bc                                           ; $7f5b: $03
	ld [hl], a                                       ; $7f5c: $77
	ld e, [hl]                                       ; $7f5d: $5e
	rst SubAFromDE                                          ; $7f5e: $df
	rst $38                                          ; $7f5f: $ff
	sub b                                            ; $7f60: $90
	inc d                                            ; $7f61: $14
	rst $38                                          ; $7f62: $ff
	sbc a                                            ; $7f63: $9f
	ld [hl], l                                       ; $7f64: $75
	ld l, a                                          ; $7f65: $6f
	dec [hl]                                         ; $7f66: $35
	push af                                          ; $7f67: $f5
	dec l                                            ; $7f68: $2d
	or l                                             ; $7f69: $b5
	ld l, l                                          ; $7f6a: $6d
	dec [hl]                                         ; $7f6b: $35
	db $ed                                           ; $7f6c: $ed
	ld h, a                                          ; $7f6d: $67
	db $fd                                           ; $7f6e: $fd
	xor l                                            ; $7f6f: $ad
	inc bc                                           ; $7f70: $03
	ld h, b                                          ; $7f71: $60
	pop hl                                           ; $7f72: $e1
	ld [hl], d                                       ; $7f73: $72
	res 6, a                                         ; $7f74: $cb $b7
	add a                                            ; $7f76: $87
	adc a                                            ; $7f77: $8f
	ld [hl], b                                       ; $7f78: $70
	rlca                                             ; $7f79: $07
	inc c                                            ; $7f7a: $0c
	ret nz                                           ; $7f7b: $c0

	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	ldh a, [$99]                                     ; $7f7f: $f0 $99
	ldh a, [$0c]                                     ; $7f81: $f0 $0c
	db $fc                                           ; $7f83: $fc
	jp $20ff                                         ; $7f84: $c3 $ff $20


	dec sp                                           ; $7f87: $3b
	and b                                            ; $7f88: $a0
	rst SubAFromDE                                          ; $7f89: $df
	add b                                            ; $7f8a: $80
	add b                                            ; $7f8b: $80
	di                                               ; $7f8c: $f3
	ld [hl], e                                       ; $7f8d: $73
	ld sp, hl                                        ; $7f8e: $f9
	adc c                                            ; $7f8f: $89
	rst $38                                          ; $7f90: $ff
	ccf                                              ; $7f91: $3f
	rst $38                                          ; $7f92: $ff
	pop bc                                           ; $7f93: $c1
	cp $0f                                           ; $7f94: $fe $0f
	rst $38                                          ; $7f96: $ff
	pop af                                           ; $7f97: $f1
	rst $38                                          ; $7f98: $ff
	ld b, e                                          ; $7f99: $43
	cp $1f                                           ; $7f9a: $fe $1f

jr_06d_7f9c:
	ldh a, [$3f]                                     ; $7f9c: $f0 $3f
	rst JumpTable                                          ; $7f9e: $c7
	ld a, a                                          ; $7f9f: $7f
	ret c                                            ; $7fa0: $d8

	rst $38                                          ; $7fa1: $ff
	ld [hl], d                                       ; $7fa2: $72
	dec a                                            ; $7fa3: $3d
	ccf                                              ; $7fa4: $3f
	inc e                                            ; $7fa5: $1c
	db $e3                                           ; $7fa6: $e3
	cp $0f                                           ; $7fa7: $fe $0f
	jp nz, $9373                                     ; $7fa9: $c2 $73 $93

	add c                                            ; $7fac: $81
	ld c, e                                          ; $7fad: $4b
	sub c                                            ; $7fae: $91
	add e                                            ; $7faf: $83
	ld e, c                                          ; $7fb0: $59
	reti                                             ; $7fb1: $d9


	ld c, c                                          ; $7fb2: $49
	db $fd                                           ; $7fb3: $fd
	ld c, c                                          ; $7fb4: $49
	db $db                                           ; $7fb5: $db
	ld l, h                                          ; $7fb6: $6c
	ld b, l                                          ; $7fb7: $45
	ld [bc], a                                       ; $7fb8: $02
	jr nz, jr_06d_7f9c                               ; $7fb9: $20 $e1

	sbc h                                            ; $7fbb: $9c
	ccf                                              ; $7fbc: $3f
	rrca                                             ; $7fbd: $0f
	rlca                                             ; $7fbe: $07
	sbc $01                                          ; $7fbf: $de $01
	sbc b                                            ; $7fc1: $98
	pop bc                                           ; $7fc2: $c1
	ld bc, $01ff                                     ; $7fc3: $01 $ff $01
	rlca                                             ; $7fc6: $07
	ld bc, $da81                                     ; $7fc7: $01 $81 $da
	ld bc, $059e                                     ; $7fca: $01 $9e $05
	ld a, e                                          ; $7fcd: $7b
	db $f4                                           ; $7fce: $f4
	ld [hl], l                                       ; $7fcf: $75
	ld a, d                                          ; $7fd0: $7a
	ld a, a                                          ; $7fd1: $7f
	cp $9d                                           ; $7fd2: $fe $9d
	ldh [c], a                                       ; $7fd4: $e2
	db $e3                                           ; $7fd5: $e3
	inc sp                                           ; $7fd6: $33
	inc l                                            ; $7fd7: $2c
	add b                                            ; $7fd8: $80
	add b                                            ; $7fd9: $80
	ld b, b                                          ; $7fda: $40
	ret nz                                           ; $7fdb: $c0

	ld a, b                                          ; $7fdc: $78
	ld hl, sp-$7a                                    ; $7fdd: $f8 $86
	cp $31                                           ; $7fdf: $fe $31
	rst GetHLinHL                                          ; $7fe1: $cf
	inc e                                            ; $7fe2: $1c
	db $e3                                           ; $7fe3: $e3
	dec bc                                           ; $7fe4: $0b
	ldh a, [$f1]                                     ; $7fe5: $f0 $f1
	inc c                                            ; $7fe7: $0c
	ld c, b                                          ; $7fe8: $48
	add [hl]                                         ; $7fe9: $86
	sub [hl]                                         ; $7fea: $96
	pop hl                                           ; $7feb: $e1
	jp $b578                                         ; $7fec: $c3 $78 $b5


	ld l, $da                                        ; $7fef: $2e $da
	sub a                                            ; $7ff1: $97
	db $ed                                           ; $7ff2: $ed
	ld c, e                                          ; $7ff3: $4b
	ld a, [hl]                                       ; $7ff4: $7e
	ld c, c                                          ; $7ff5: $49
	ld a, a                                          ; $7ff6: $7f
	inc h                                            ; $7ff7: $24
	sub e                                            ; $7ff8: $93
	xor l                                            ; $7ff9: $ad
	ld [hl], $6b                                     ; $7ffa: $36 $6b
	or [hl]                                          ; $7ffc: $b6
	ld a, [hl]                                       ; $7ffd: $7e
	sub e                                            ; $7ffe: $93
	halt                                             ; $7fff: $76
