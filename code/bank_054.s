; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $054", ROMX[$4000], BANK[$54]

	add b                                            ; $4000: $80
	inc c                                            ; $4001: $0c
	ld [de], a                                       ; $4002: $12
	ld [de], a                                       ; $4003: $12
	ld a, c                                          ; $4004: $79
	add l                                            ; $4005: $85
	ld [hl], d                                       ; $4006: $72
	ld d, b                                          ; $4007: $50
	ld a, d                                          ; $4008: $7a
	ld c, [hl]                                       ; $4009: $4e
	sbc [hl]                                         ; $400a: $9e
	cp $77                                           ; $400b: $fe $77
	ldh [$df], a                                     ; $400d: $e0 $df
	ld bc, $139d                                     ; $400f: $01 $9d $13
	sub d                                            ; $4012: $92
	ld [hl], d                                       ; $4013: $72
	add d                                            ; $4014: $82
	cp $de                                           ; $4015: $fe $de
	add d                                            ; $4017: $82
	sbc [hl]                                         ; $4018: $9e
	ld [bc], a                                       ; $4019: $02
	ld [hl], l                                       ; $401a: $75
	ld h, e                                          ; $401b: $63
	add b                                            ; $401c: $80
	ld a, [$fffe]                                    ; $401d: $fa $fe $ff
	ld [hl], a                                       ; $4020: $77
	ld [hl], e                                       ; $4021: $73
	add hl, sp                                       ; $4022: $39
	inc e                                            ; $4023: $1c
	ld c, $c8                                        ; $4024: $0e $c8
	xor b                                            ; $4026: $a8
	sbc h                                            ; $4027: $9c
	ld b, d                                          ; $4028: $42
	ld b, c                                          ; $4029: $41
	jr nz, jr_054_403c                               ; $402a: $20 $10

	ld [$0f0f], sp                                   ; $402c: $08 $0f $0f
	ld a, a                                          ; $402f: $7f
	db $fc                                           ; $4030: $fc
	pop hl                                           ; $4031: $e1
	rst JumpTable                                          ; $4032: $c7
	rrca                                             ; $4033: $0f
	jr @+$05                                         ; $4034: $18 $03

	rlca                                             ; $4036: $07
	inc c                                            ; $4037: $0c
	jr nc, jr_054_403a                               ; $4038: $30 $00

jr_054_403a:
	nop                                              ; $403a: $00
	rlca                                             ; $403b: $07

jr_054_403c:
	sub l                                            ; $403c: $95
	ld [$c7c7], sp                                   ; $403d: $08 $c7 $c7
	ld b, e                                          ; $4040: $43
	jp $81c3                                         ; $4041: $c3 $c3 $81


	ld bc, $d401                                     ; $4044: $01 $01 $d4
	sbc $52                                          ; $4047: $de $52
	sub e                                            ; $4049: $93
	ld d, c                                          ; $404a: $51
	sub c                                            ; $404b: $91
	ld hl, $8341                                     ; $404c: $21 $41 $83
	add e                                            ; $404f: $83
	pop bc                                           ; $4050: $c1
	pop bc                                           ; $4051: $c1
	ldh [$f0], a                                     ; $4052: $e0 $f0
	db $fc                                           ; $4054: $fc
	rst $38                                          ; $4055: $ff
	ld h, l                                          ; $4056: $65
	rra                                              ; $4057: $1f
	add h                                            ; $4058: $84
	adc b                                            ; $4059: $88
	ldh a, [c]                                       ; $405a: $f2
	rst SubAFromBC                                          ; $405b: $e7
	rst SubAFromBC                                          ; $405c: $e7
	adc $ca                                          ; $405d: $ce $ca
	adc e                                            ; $405f: $8b
	adc e                                            ; $4060: $8b
	cp $7e                                           ; $4061: $fe $7e
	ccf                                              ; $4063: $3f
	ld a, $7e                                        ; $4064: $3e $7e
	ld a, [hl]                                       ; $4066: $7e
	cp $fe                                           ; $4067: $fe $fe
	call z, Call_054_5634                            ; $4069: $cc $34 $56
	add hl, bc                                       ; $406c: $09
	jr nc, jr_054_407b                               ; $406d: $30 $0c

	inc b                                            ; $406f: $04
	nop                                              ; $4070: $00
	ld a, d                                          ; $4071: $7a
	ld [hl], e                                       ; $4072: $73
	ld hl, $7ffe                                     ; $4073: $21 $fe $7f
	ld c, a                                          ; $4076: $4f
	add a                                            ; $4077: $87
	rlc a                                            ; $4078: $cb $07
	add hl, de                                       ; $407a: $19

jr_054_407b:
	cp [hl]                                          ; $407b: $be
	daa                                              ; $407c: $27
	rra                                              ; $407d: $1f
	inc de                                           ; $407e: $13
	inc c                                            ; $407f: $0c
	ld e, [hl]                                       ; $4080: $5e
	inc a                                            ; $4081: $3c
	and $4d                                          ; $4082: $e6 $4d
	ld d, $1e                                        ; $4084: $16 $1e
	ccf                                              ; $4086: $3f
	inc e                                            ; $4087: $1c
	add h                                            ; $4088: $84
	and h                                            ; $4089: $a4
	and h                                            ; $408a: $a4
	ld [$be6a], a                                    ; $408b: $ea $6a $be
	cp a                                             ; $408e: $bf
	ld b, e                                          ; $408f: $43
	db $dd                                           ; $4090: $dd
	rst $38                                          ; $4091: $ff
	sub c                                            ; $4092: $91
	rst SubAFromDE                                          ; $4093: $df
	ld d, a                                          ; $4094: $57
	ld b, a                                          ; $4095: $47
	cp a                                             ; $4096: $bf
	call nz, $c8c4                                   ; $4097: $c4 $c4 $c8
	rst GetHLinHL                                          ; $409a: $cf
	rst GetHLinHL                                          ; $409b: $cf
	push bc                                          ; $409c: $c5
	push de                                          ; $409d: $d5
	push de                                          ; $409e: $d5
	pop hl                                           ; $409f: $e1
	pop hl                                           ; $40a0: $e1
	sbc $e5                                          ; $40a1: $de $e5
	sbc $ef                                          ; $40a3: $de $ef
	sbc $80                                          ; $40a5: $de $80
	ld l, [hl]                                       ; $40a7: $6e
	ldh [$67], a                                     ; $40a8: $e0 $67
	ld d, a                                          ; $40aa: $57
	ldh [c], a                                       ; $40ab: $e2
	sbc l                                            ; $40ac: $9d
	ld h, c                                          ; $40ad: $61
	ld bc, $7667                                     ; $40ae: $01 $67 $76
	ei                                               ; $40b1: $fb
	ld a, [hl]                                       ; $40b2: $7e
	rst JumpTable                                          ; $40b3: $c7
	sbc [hl]                                         ; $40b4: $9e
	jr nz, @+$74                                     ; $40b5: $20 $72

	and l                                            ; $40b7: $a5
	sbc l                                            ; $40b8: $9d
	ld h, b                                          ; $40b9: $60
	ldh [$6e], a                                     ; $40ba: $e0 $6e
	sbc [hl]                                         ; $40bc: $9e
	ld a, e                                          ; $40bd: $7b
	dec sp                                           ; $40be: $3b
	db $e4                                           ; $40bf: $e4
	sub a                                            ; $40c0: $97
	rra                                              ; $40c1: $1f
	dec e                                            ; $40c2: $1d
	inc e                                            ; $40c3: $1c
	scf                                              ; $40c4: $37
	jr c, jr_054_40ef                                ; $40c5: $38 $28

	ld l, a                                          ; $40c7: $6f
	ld l, b                                          ; $40c8: $68
	sbc $14                                          ; $40c9: $de $14
	sbc b                                            ; $40cb: $98
	inc h                                            ; $40cc: $24
	jr z, jr_054_40f7                                ; $40cd: $28 $28

	ld c, l                                          ; $40cf: $4d
	ld c, b                                          ; $40d0: $48
	rst $38                                          ; $40d1: $ff
	rst $38                                          ; $40d2: $ff
	ld a, c                                          ; $40d3: $79
	call $0f85                                       ; $40d4: $cd $85 $0f
	rst $38                                          ; $40d7: $ff
	rra                                              ; $40d8: $1f
	ld a, [$0206]                                    ; $40d9: $fa $06 $02
	cp $04                                           ; $40dc: $fe $04
	inc b                                            ; $40de: $04
	db $fd                                           ; $40df: $fd
	add hl, de                                       ; $40e0: $19
	cp $fc                                           ; $40e1: $fe $fc
	db $fc                                           ; $40e3: $fc
	ld hl, sp-$08                                    ; $40e4: $f8 $f8
	ldh a, [$f0]                                     ; $40e6: $f0 $f0
	ldh [$a2], a                                     ; $40e8: $e0 $a2
	and [hl]                                         ; $40ea: $a6
	db $e4                                           ; $40eb: $e4
	call z, $9888                                    ; $40ec: $cc $88 $98

jr_054_40ef:
	db $10                                           ; $40ef: $10
	ld b, e                                          ; $40f0: $43
	or c                                             ; $40f1: $b1
	ld a, c                                          ; $40f2: $79
	dec de                                           ; $40f3: $1b
	db $fc                                           ; $40f4: $fc
	ld a, c                                          ; $40f5: $79
	add e                                            ; $40f6: $83

jr_054_40f7:
	ld [hl], e                                       ; $40f7: $73
	or $7a                                           ; $40f8: $f6 $7a
	ld [de], a                                       ; $40fa: $12
	rst SubAFromDE                                          ; $40fb: $df
	inc bc                                           ; $40fc: $03
	ld a, a                                          ; $40fd: $7f
	push af                                          ; $40fe: $f5
	sbc d                                            ; $40ff: $9a
	inc bc                                           ; $4100: $03
	inc sp                                           ; $4101: $33
	call nz, Call_054_6018                           ; $4102: $c4 $18 $60
	ld l, [hl]                                       ; $4105: $6e
	ld h, d                                          ; $4106: $62
	sbc c                                            ; $4107: $99
	ld bc, $f9e1                                     ; $4108: $01 $e1 $f9
	ld bc, $20f1                                     ; $410b: $01 $f1 $20
	ld a, d                                          ; $410e: $7a
	cp l                                             ; $410f: $bd
	call c, $df01                                    ; $4110: $dc $01 $df
	rst $38                                          ; $4113: $ff
	sbc [hl]                                         ; $4114: $9e
	pop bc                                           ; $4115: $c1
	call c, $9c81                                    ; $4116: $dc $81 $9c
	jr nz, jr_054_419a                               ; $4119: $20 $7f

	pop hl                                           ; $411b: $e1
	ld [hl], a                                       ; $411c: $77
	rst FarCall                                          ; $411d: $f7
	sbc h                                            ; $411e: $9c
	pop bc                                           ; $411f: $c1
	sub e                                            ; $4120: $93
	inc de                                           ; $4121: $13
	sbc $52                                          ; $4122: $de $52
	sbc d                                            ; $4124: $9a
	ld d, a                                          ; $4125: $57
	rla                                              ; $4126: $17
	ld sp, rIE                                     ; $4127: $31 $ff $ff
	sbc $bf                                          ; $412a: $de $bf
	rst SubAFromDE                                          ; $412c: $df
	cp d                                             ; $412d: $ba
	sub a                                            ; $412e: $97
	sbc d                                            ; $412f: $9a
	nop                                              ; $4130: $00
	adc b                                            ; $4131: $88
	add b                                            ; $4132: $80
	ret nz                                           ; $4133: $c0

	ret nz                                           ; $4134: $c0

	ldh [$e7], a                                     ; $4135: $e0 $e7
	ld a, b                                          ; $4137: $78
	ret nc                                           ; $4138: $d0

	rst SubAFromDE                                          ; $4139: $df
	add b                                            ; $413a: $80
	rst SubAFromDE                                          ; $413b: $df
	ret nz                                           ; $413c: $c0

	ld a, h                                          ; $413d: $7c
	ld c, [hl]                                       ; $413e: $4e
	sbc d                                            ; $413f: $9a
	ld c, l                                          ; $4140: $4d
	inc hl                                           ; $4141: $23
	rra                                              ; $4142: $1f
	rrca                                             ; $4143: $0f
	rra                                              ; $4144: $1f
	ld a, b                                          ; $4145: $78
	dec sp                                           ; $4146: $3b
	db $fc                                           ; $4147: $fc
	sub b                                            ; $4148: $90
	ld bc, rIF                                     ; $4149: $01 $0f $ff
	rst FarCall                                          ; $414c: $f7
	db $eb                                           ; $414d: $eb
	rst AddAOntoHL                                          ; $414e: $ef
	rst SubAFromDE                                          ; $414f: $df
	push hl                                          ; $4150: $e5
	ld sp, hl                                        ; $4151: $f9
	pop af                                           ; $4152: $f1
	pop de                                           ; $4153: $d1
	add hl, bc                                       ; $4154: $09
	dec e                                            ; $4155: $1d
	add hl, de                                       ; $4156: $19
	inc hl                                           ; $4157: $23
	ld [hl], h                                       ; $4158: $74
	inc h                                            ; $4159: $24
	sbc l                                            ; $415a: $9d
	rst JumpTable                                          ; $415b: $c7
	ld b, a                                          ; $415c: $47
	db $dd                                           ; $415d: $dd
	ld d, a                                          ; $415e: $57
	sbc l                                            ; $415f: $9d
	ld e, [hl]                                       ; $4160: $5e
	ld e, a                                          ; $4161: $5f
	sbc $fe                                          ; $4162: $de $fe
	rst SubAFromDE                                          ; $4164: $df
	db $fc                                           ; $4165: $fc
	sbc h                                            ; $4166: $9c
	cp $f9                                           ; $4167: $fe $f9
	ldh a, [$fa]                                     ; $4169: $f0 $fa
	ld h, [hl]                                       ; $416b: $66
	jp $bb02                                         ; $416c: $c3 $02 $bb


	cp $9b                                           ; $416f: $fe $9b
	rst $38                                          ; $4171: $ff
	ld d, l                                          ; $4172: $55
	and b                                            ; $4173: $a0
	inc d                                            ; $4174: $14
	ld a, c                                          ; $4175: $79
	and [hl]                                         ; $4176: $a6
	ld e, a                                          ; $4177: $5f
	ldh a, [$9b]                                     ; $4178: $f0 $9b
	ld d, h                                          ; $417a: $54
	ret z                                            ; $417b: $c8

	ld b, l                                          ; $417c: $45
	jp z, $f057                                      ; $417d: $ca $57 $f0

	sbc e                                            ; $4180: $9b
	dec d                                            ; $4181: $15
	xor b                                            ; $4182: $a8
	ld d, c                                          ; $4183: $51
	xor d                                            ; $4184: $aa
	rst FarCall                                          ; $4185: $f7
	ld a, a                                          ; $4186: $7f
	dec a                                            ; $4187: $3d
	sbc e                                            ; $4188: $9b
	ld d, a                                          ; $4189: $57
	ld l, $54                                        ; $418a: $2e $54
	xor [hl]                                         ; $418c: $ae
	ld [hl], c                                       ; $418d: $71
	sub b                                            ; $418e: $90
	sub a                                            ; $418f: $97
	ld [bc], a                                       ; $4190: $02
	ld b, $04                                        ; $4191: $06 $04
	ret c                                            ; $4193: $d8

	ld sp, hl                                        ; $4194: $f9
	rst AddAOntoHL                                          ; $4195: $ef
	add a                                            ; $4196: $87
	ld bc, $03de                                     ; $4197: $01 $de $03

jr_054_419a:
	sbc e                                            ; $419a: $9b
	sbc b                                            ; $419b: $98
	cp c                                             ; $419c: $b9

jr_054_419d:
	ld b, h                                          ; $419d: $44
	ld [bc], a                                       ; $419e: $02
	db $fd                                           ; $419f: $fd
	ld a, h                                          ; $41a0: $7c

jr_054_41a1:
	and d                                            ; $41a1: $a2
	ld a, l                                          ; $41a2: $7d
	ld a, $92                                        ; $41a3: $3e $92
	ld hl, sp-$1c                                    ; $41a5: $f8 $e4
	ldh [c], a                                       ; $41a7: $e2
	jp hl                                            ; $41a8: $e9


	ld [de], a                                       ; $41a9: $12
	or $67                                           ; $41aa: $f6 $67
	inc c                                            ; $41ac: $0c
	inc e                                            ; $41ad: $1c
	inc h                                            ; $41ae: $24
	ld h, $2b                                        ; $41af: $26 $2b
	ret nz                                           ; $41b1: $c0

	ld l, e                                          ; $41b2: $6b
	ld a, [hl]                                       ; $41b3: $7e
	sbc [hl]                                         ; $41b4: $9e
	ld h, b                                          ; $41b5: $60
	ld h, a                                          ; $41b6: $67
	rst FarCall                                          ; $41b7: $f7
	ldh [c], a                                       ; $41b8: $e2
	sbc [hl]                                         ; $41b9: $9e
	inc bc                                           ; $41ba: $03
	ld e, [hl]                                       ; $41bb: $5e
	jr nc, jr_054_419d                               ; $41bc: $30 $df

	db $10                                           ; $41be: $10
	rst SubAFromDE                                          ; $41bf: $df
	jr nz, jr_054_41a1                               ; $41c0: $20 $df

	ld b, b                                          ; $41c2: $40
	ld a, e                                          ; $41c3: $7b
	ret                                              ; $41c4: $c9


	ld a, c                                          ; $41c5: $79
	rra                                              ; $41c6: $1f
	ld a, c                                          ; $41c7: $79
	jr nz, jr_054_4245                               ; $41c8: $20 $7b

	ld sp, hl                                        ; $41ca: $f9
	sbc d                                            ; $41cb: $9a
	rlca                                             ; $41cc: $07
	rrca                                             ; $41cd: $0f
	rra                                              ; $41ce: $1f
	pop bc                                           ; $41cf: $c1
	ld b, c                                          ; $41d0: $41
	ld [hl], a                                       ; $41d1: $77
	xor $ff                                          ; $41d2: $ee $ff
	rst SubAFromDE                                          ; $41d4: $df
	pop bc                                           ; $41d5: $c1
	ld a, d                                          ; $41d6: $7a
	reti                                             ; $41d7: $d9


	ld a, l                                          ; $41d8: $7d
	ld [hl], a                                       ; $41d9: $77
	adc c                                            ; $41da: $89
	jr nc, jr_054_41ee                               ; $41db: $30 $11

	ld e, c                                          ; $41dd: $59
	adc c                                            ; $41de: $89
	sub e                                            ; $41df: $93
	sub d                                            ; $41e0: $92
	add l                                            ; $41e1: $85
	ld l, l                                          ; $41e2: $6d
	ld d, [hl]                                       ; $41e3: $56
	sbc d                                            ; $41e4: $9a
	sub d                                            ; $41e5: $92
	jp nc, $c3c2                                     ; $41e6: $d2 $c2 $c3

	rst SubAFromHL                                          ; $41e9: $d7
	ld d, a                                          ; $41ea: $57
	ld a, [hl]                                       ; $41eb: $7e
	rst $38                                          ; $41ec: $ff
	rst AddAOntoHL                                          ; $41ed: $ef

jr_054_41ee:
	and e                                            ; $41ee: $a3
	sbc b                                            ; $41ef: $98
	add [hl]                                         ; $41f0: $86
	ld a, e                                          ; $41f1: $7b
	cp l                                             ; $41f2: $bd
	adc l                                            ; $41f3: $8d
	ld hl, sp-$04                                    ; $41f4: $f8 $fc
	cp a                                             ; $41f6: $bf
	sbc a                                            ; $41f7: $9f
	add a                                            ; $41f8: $87
	ld hl, $1020                                     ; $41f9: $21 $20 $10
	rst $38                                          ; $41fc: $ff
	ei                                               ; $41fd: $fb
	ei                                               ; $41fe: $fb
	db $fd                                           ; $41ff: $fd
	inc bc                                           ; $4200: $03
	rst $38                                          ; $4201: $ff
	ld bc, $0f01                                     ; $4202: $01 $01 $0f
	rlca                                             ; $4205: $07
	ld a, d                                          ; $4206: $7a
	jr z, jr_054_4284                                ; $4207: $28 $7b

	ld hl, sp-$72                                    ; $4209: $f8 $8e
	sbc c                                            ; $420b: $99
	ld e, e                                          ; $420c: $5b
	dec d                                            ; $420d: $15
	ld sp, $2503                                     ; $420e: $31 $03 $25
	ld h, c                                          ; $4211: $61
	dec hl                                           ; $4212: $2b
	rst FarCall                                          ; $4213: $f7
	or l                                             ; $4214: $b5
	or c                                             ; $4215: $b1
	sub c                                            ; $4216: $91
	sub c                                            ; $4217: $91
	sub e                                            ; $4218: $93
	or a                                             ; $4219: $b7
	rst FarCall                                          ; $421a: $f7
	ld e, a                                          ; $421b: $5f
	call c, Call_054_7c7f                            ; $421c: $dc $7f $7c
	db $fd                                           ; $421f: $fd
	ld a, d                                          ; $4220: $7a
	dec e                                            ; $4221: $1d
	adc d                                            ; $4222: $8a
	ldh [$e8], a                                     ; $4223: $e0 $e8
	call nc, $d2d4                                   ; $4225: $d4 $d4 $d2
	ret nz                                           ; $4228: $c0

	ld h, b                                          ; $4229: $60
	jr nz, @+$32                                     ; $422a: $20 $30

	ld [hl], b                                       ; $422c: $70
	ld [hl], b                                       ; $422d: $70
	ldh [$c0], a                                     ; $422e: $e0 $c0
	ld b, b                                          ; $4230: $40
	jr nz, jr_054_4253                               ; $4231: $20 $20

	jr nc, jr_054_4265                               ; $4233: $30 $30

	ld [hl], b                                       ; $4235: $70
	ld h, b                                          ; $4236: $60
	ldh [$e1], a                                     ; $4237: $e0 $e1
	ld a, [hl]                                       ; $4239: $7e
	and $9a                                          ; $423a: $e6 $9a
	ld d, h                                          ; $423c: $54
	and b                                            ; $423d: $a0
	ld b, h                                          ; $423e: $44
	ld a, [bc]                                       ; $423f: $0a
	inc b                                            ; $4240: $04
	ld hl, sp-$69                                    ; $4241: $f8 $97
	ld d, l                                          ; $4243: $55
	ld c, b                                          ; $4244: $48

jr_054_4245:
	ld d, b                                          ; $4245: $50
	ld b, d                                          ; $4246: $42
	ld d, l                                          ; $4247: $55
	ret z                                            ; $4248: $c8

	ld d, h                                          ; $4249: $54
	ret z                                            ; $424a: $c8

	ld sp, hl                                        ; $424b: $f9
	sbc c                                            ; $424c: $99
	dec d                                            ; $424d: $15
	jr z, jr_054_42a0                                ; $424e: $28 $50

	xor b                                            ; $4250: $a8
	ld d, c                                          ; $4251: $51
	and d                                            ; $4252: $a2

jr_054_4253:
	ld e, [hl]                                       ; $4253: $5e
	and b                                            ; $4254: $a0
	sub h                                            ; $4255: $94
	ld d, $ac                                        ; $4256: $16 $ac
	ld d, $af                                        ; $4258: $16 $af
	ld b, l                                          ; $425a: $45
	ld b, $05                                        ; $425b: $06 $05
	ld b, $04                                        ; $425d: $06 $04
	ld b, $02                                        ; $425f: $06 $02
	ld [hl], b                                       ; $4261: $70
	add b                                            ; $4262: $80
	ld a, e                                          ; $4263: $7b
	dec l                                            ; $4264: $2d

jr_054_4265:
	sbc e                                            ; $4265: $9b
	ccf                                              ; $4266: $3f
	cp a                                             ; $4267: $bf
	cp $78                                           ; $4268: $fe $78
	db $fd                                           ; $426a: $fd
	adc d                                            ; $426b: $8a
	ld [$8e09], sp                                   ; $426c: $08 $09 $8e
	ld a, b                                          ; $426f: $78
	nop                                              ; $4270: $00
	jp hl                                            ; $4271: $e9


	add sp, -$38                                     ; $4272: $e8 $c8
	add h                                            ; $4274: $84
	ld [bc], a                                       ; $4275: $02
	ld bc, $261f                                     ; $4276: $01 $1f $26

Jump_054_4279:
	dec hl                                           ; $4279: $2b
	dec hl                                           ; $427a: $2b
	ld c, l                                          ; $427b: $4d
	add [hl]                                         ; $427c: $86
	inc bc                                           ; $427d: $03
	inc bc                                           ; $427e: $03
	rra                                              ; $427f: $1f
	ccf                                              ; $4280: $3f
	ld l, d                                          ; $4281: $6a
	ld a, l                                          ; $4282: $7d
	sbc [hl]                                         ; $4283: $9e

jr_054_4284:
	sub h                                            ; $4284: $94
	ld a, d                                          ; $4285: $7a
	dec [hl]                                         ; $4286: $35
	sbc h                                            ; $4287: $9c
	ld b, b                                          ; $4288: $40
	nop                                              ; $4289: $00
	ldh a, [rBCPD]                                   ; $428a: $f0 $69
	ld hl, sp-$01                                    ; $428c: $f8 $ff
	ld l, e                                          ; $428e: $6b
	ld l, b                                          ; $428f: $68
	sbc [hl]                                         ; $4290: $9e
	add e                                            ; $4291: $83
	ld h, a                                          ; $4292: $67
	ldh a, [$72]                                     ; $4293: $f0 $72
	ldh [c], a                                       ; $4295: $e2
	sbc e                                            ; $4296: $9b
	rra                                              ; $4297: $1f
	ld a, [hl]                                       ; $4298: $7e
	db $fc                                           ; $4299: $fc
	db $fc                                           ; $429a: $fc
	ld sp, hl                                        ; $429b: $f9
	ld a, b                                          ; $429c: $78
	ret nz                                           ; $429d: $c0

	ld a, [hl]                                       ; $429e: $7e
	ld h, b                                          ; $429f: $60

jr_054_42a0:
	adc a                                            ; $42a0: $8f
	ld b, $0c                                        ; $42a1: $06 $0c
	jr jr_054_42bb                                   ; $42a3: $18 $16

	dec d                                            ; $42a5: $15
	dec h                                            ; $42a6: $25
	dec b                                            ; $42a7: $05
	dec b                                            ; $42a8: $05
	ld a, [bc]                                       ; $42a9: $0a
	ld a, [bc]                                       ; $42aa: $0a
	inc d                                            ; $42ab: $14
	rra                                              ; $42ac: $1f
	ccf                                              ; $42ad: $3f
	cpl                                              ; $42ae: $2f
	cpl                                              ; $42af: $2f
	rrca                                             ; $42b0: $0f
	ld a, e                                          ; $42b1: $7b
	sub h                                            ; $42b2: $94
	ld sp, hl                                        ; $42b3: $f9
	sub d                                            ; $42b4: $92
	jr @+$0e                                         ; $42b5: $18 $0c

	add h                                            ; $42b7: $84
	jp nz, $e1c2                                     ; $42b8: $c2 $c2 $e1

jr_054_42bb:
	pop hl                                           ; $42bb: $e1
	ldh a, [$3e]                                     ; $42bc: $f0 $3e
	ccf                                              ; $42be: $3f
	ld a, a                                          ; $42bf: $7f
	ld a, a                                          ; $42c0: $7f
	inc sp                                           ; $42c1: $33
	sbc $40                                          ; $42c2: $de $40
	sbc e                                            ; $42c4: $9b
	ld a, $21                                        ; $42c5: $3e $21
	ld b, e                                          ; $42c7: $43
	ld c, h                                          ; $42c8: $4c
	ld a, e                                          ; $42c9: $7b
	push af                                          ; $42ca: $f5
	sbc [hl]                                         ; $42cb: $9e
	ld a, a                                          ; $42cc: $7f
	ld [hl], l                                       ; $42cd: $75
	adc b                                            ; $42ce: $88
	rst SubAFromDE                                          ; $42cf: $df
	add b                                            ; $42d0: $80
	rst SubAFromDE                                          ; $42d1: $df
	ld b, b                                          ; $42d2: $40
	sub a                                            ; $42d3: $97
	db $10                                           ; $42d4: $10
	ld [$868c], sp                                   ; $42d5: $08 $8c $86

jr_054_42d8:
	add e                                            ; $42d8: $83
	add c                                            ; $42d9: $81
	ret nz                                           ; $42da: $c0

	ret nz                                           ; $42db: $c0

	ld h, [hl]                                       ; $42dc: $66
	ld [hl], c                                       ; $42dd: $71
	ld [hl], a                                       ; $42de: $77
	ld hl, sp-$6a                                    ; $42df: $f8 $96
	add b                                            ; $42e1: $80
	ldh a, [rIE]                                     ; $42e2: $f0 $ff
	ccf                                              ; $42e4: $3f
	ld [hl+], a                                      ; $42e5: $22
	ld [hl+], a                                      ; $42e6: $22
	sub d                                            ; $42e7: $92
	sub a                                            ; $42e8: $97
	sub a                                            ; $42e9: $97
	ld a, d                                          ; $42ea: $7a
	set 3, h                                         ; $42eb: $cb $dc
	rst $38                                          ; $42ed: $ff
	ld a, a                                          ; $42ee: $7f
	ld a, [$c199]                                    ; $42ef: $fa $99 $c1
	ld h, e                                          ; $42f2: $63
	pop bc                                           ; $42f3: $c1
	add c                                            ; $42f4: $81
	add b                                            ; $42f5: $80
	nop                                              ; $42f6: $00
	ld a, e                                          ; $42f7: $7b
	ld a, d                                          ; $42f8: $7a
	sbc d                                            ; $42f9: $9a
	ldh [c], a                                       ; $42fa: $e2
	ret                                              ; $42fb: $c9


	ret                                              ; $42fc: $c9


	pop de                                           ; $42fd: $d1
	pop af                                           ; $42fe: $f1
	sbc $ff                                          ; $42ff: $de $ff
	ld a, e                                          ; $4301: $7b
	adc b                                            ; $4302: $88
	ld a, b                                          ; $4303: $78
	ld b, [hl]                                       ; $4304: $46
	ld [hl], l                                       ; $4305: $75
	ld b, h                                          ; $4306: $44
	ld l, a                                          ; $4307: $6f
	ld hl, sp-$1f                                    ; $4308: $f8 $e1
	ld e, [hl]                                       ; $430a: $5e
	add $fb                                          ; $430b: $c6 $fb
	sbc l                                            ; $430d: $9d
	ld b, b                                          ; $430e: $40
	ret nz                                           ; $430f: $c0

	db $db                                           ; $4310: $db
	ld b, b                                          ; $4311: $40
	ld h, c                                          ; $4312: $61
	ei                                               ; $4313: $fb
	sbc l                                            ; $4314: $9d
	ld [bc], a                                       ; $4315: $02
	inc d                                            ; $4316: $14
	db $f4                                           ; $4317: $f4
	sbc h                                            ; $4318: $9c
	dec b                                            ; $4319: $05
	inc h                                            ; $431a: $24
	ld b, h                                          ; $431b: $44
	call c, Call_054_5904                            ; $431c: $dc $04 $59
	ld [hl], b                                       ; $431f: $70
	ld [hl], a                                       ; $4320: $77
	ld h, e                                          ; $4321: $63
	sbc [hl]                                         ; $4322: $9e
	ld b, $6f                                        ; $4323: $06 $6f
	ld hl, sp-$6f                                    ; $4325: $f8 $91
	inc bc                                           ; $4327: $03
	ld [bc], a                                       ; $4328: $02
	ld a, e                                          ; $4329: $7b
	add a                                            ; $432a: $87
	sbc h                                            ; $432b: $9c
	ldh a, [$e3]                                     ; $432c: $f0 $e3
	add a                                            ; $432e: $87
	rlca                                             ; $432f: $07
	cpl                                              ; $4330: $2f
	ld a, a                                          ; $4331: $7f
	cp $f8                                           ; $4332: $fe $f8
	ldh [$75], a                                     ; $4334: $e0 $75
	adc l                                            ; $4336: $8d
	sbc l                                            ; $4337: $9d
	rst $38                                          ; $4338: $ff
	ld [bc], a                                       ; $4339: $02
	ld a, c                                          ; $433a: $79
	ld l, [hl]                                       ; $433b: $6e
	db $dd                                           ; $433c: $dd
	rst $38                                          ; $433d: $ff
	ld l, e                                          ; $433e: $6b
	jr c, jr_054_42d8                                ; $433f: $38 $97

	ld e, a                                          ; $4341: $5f
	ret nz                                           ; $4342: $c0

	rst $38                                          ; $4343: $ff
	pop af                                           ; $4344: $f1
	rst SubAFromDE                                          ; $4345: $df
	ld a, [$effb]                                    ; $4346: $fa $fb $ef
	ld a, e                                          ; $4349: $7b
	ld b, e                                          ; $434a: $43
	rst SubAFromDE                                          ; $434b: $df
	ccf                                              ; $434c: $3f
	sbc $1f                                          ; $434d: $de $1f
	sub [hl]                                         ; $434f: $96
	ldh [hDisp1_SCY], a                                     ; $4350: $e0 $90
	rst $38                                          ; $4352: $ff
	nop                                              ; $4353: $00
	pop bc                                           ; $4354: $c1
	jr nc, jr_054_4363                               ; $4355: $30 $0c

	jp $daf8                                         ; $4357: $c3 $f8 $da


	rst $38                                          ; $435a: $ff
	ld a, d                                          ; $435b: $7a
	add $98                                          ; $435c: $c6 $98
	ccf                                              ; $435e: $3f
	add b                                            ; $435f: $80
	ld a, a                                          ; $4360: $7f
	jr jr_054_4369                                   ; $4361: $18 $06

jr_054_4363:
	ld a, b                                          ; $4363: $78
	rst FarCall                                          ; $4364: $f7
	db $db                                           ; $4365: $db
	rst $38                                          ; $4366: $ff
	ld a, [hl]                                       ; $4367: $7e
	ld b, c                                          ; $4368: $41

jr_054_4369:
	rst SubAFromDE                                          ; $4369: $df
	and b                                            ; $436a: $a0
	ld a, l                                          ; $436b: $7d
	sbc c                                            ; $436c: $99
	sub l                                            ; $436d: $95
	jr z, jr_054_43a4                                ; $436e: $28 $34

	rst $38                                          ; $4370: $ff
	ld sp, hl                                        ; $4371: $f9
	ldh a, [$e0]                                     ; $4372: $f0 $e0
	ldh a, [$f8]                                     ; $4374: $f0 $f8
	db $fc                                           ; $4376: $fc
	cp $fb                                           ; $4377: $fe $fb
	ld a, l                                          ; $4379: $7d
	xor b                                            ; $437a: $a8
	ld a, a                                          ; $437b: $7f
	db $f4                                           ; $437c: $f4
	sbc c                                            ; $437d: $99
	ld a, b                                          ; $437e: $78
	inc e                                            ; $437f: $1c
	add [hl]                                         ; $4380: $86
	ld b, c                                          ; $4381: $41
	jr nz, @+$3a                                     ; $4382: $20 $38

	ld a, c                                          ; $4384: $79
	ret c                                            ; $4385: $d8

	sbc d                                            ; $4386: $9a
	inc d                                            ; $4387: $14
	dec b                                            ; $4388: $05
	dec bc                                           ; $4389: $0b
	ld bc, $7700                                     ; $438a: $01 $00 $77
	or d                                             ; $438d: $b2
	sbc [hl]                                         ; $438e: $9e
	rrca                                             ; $438f: $0f
	ld a, e                                          ; $4390: $7b
	ld hl, sp+$79                                    ; $4391: $f8 $79
	ld c, a                                          ; $4393: $4f
	ld [hl], e                                       ; $4394: $73
	inc c                                            ; $4395: $0c
	ld [hl], a                                       ; $4396: $77
	nop                                              ; $4397: $00
	halt                                             ; $4398: $76
	ld hl, $73f9                                     ; $4399: $21 $f9 $73
	rst FarCall                                          ; $439c: $f7
	sub a                                            ; $439d: $97
	rlca                                             ; $439e: $07
	ld a, a                                          ; $439f: $7f
	add e                                            ; $43a0: $83
	ld [hl], c                                       ; $43a1: $71
	ld a, a                                          ; $43a2: $7f
	ccf                                              ; $43a3: $3f

jr_054_43a4:
	ld b, c                                          ; $43a4: $41
	ld b, c                                          ; $43a5: $41
	sbc $80                                          ; $43a6: $de $80
	sbc h                                            ; $43a8: $9c
	rst GetHLinHL                                          ; $43a9: $cf
	ld b, c                                          ; $43aa: $41
	ccf                                              ; $43ab: $3f
	ld l, [hl]                                       ; $43ac: $6e
	cp h                                             ; $43ad: $bc
	reti                                             ; $43ae: $d9


	rst $38                                          ; $43af: $ff
	db $dd                                           ; $43b0: $dd
	ld [bc], a                                       ; $43b1: $02
	sbc $86                                          ; $43b2: $de $86
	nop                                              ; $43b4: $00
	ld b, a                                          ; $43b5: $47
	pop af                                           ; $43b6: $f1
	ld a, [hl]                                       ; $43b7: $7e
	ld a, [de]                                       ; $43b8: $1a
	sbc h                                            ; $43b9: $9c
	call nz, $f8e8                                   ; $43ba: $c4 $e8 $f8
	halt                                             ; $43bd: $76
	ld a, [hl]                                       ; $43be: $7e
	ld a, c                                          ; $43bf: $79
	rst $38                                          ; $43c0: $ff
	ld a, e                                          ; $43c1: $7b
	sbc e                                            ; $43c2: $9b
	sbc c                                            ; $43c3: $99
	ld b, b                                          ; $43c4: $40
	pop bc                                           ; $43c5: $c1
	ldh [$e2], a                                     ; $43c6: $e0 $e2
	ldh a, [$fb]                                     ; $43c8: $f0 $fb
	ld [hl], e                                       ; $43ca: $73
	ldh a, [$7f]                                     ; $43cb: $f0 $7f
	rst AddAOntoHL                                          ; $43cd: $ef
	db $fd                                           ; $43ce: $fd
	sbc d                                            ; $43cf: $9a
	ldh a, [$79]                                     ; $43d0: $f0 $79
	ld a, $1e                                        ; $43d2: $3e $1e
	db $fd                                           ; $43d4: $fd
	ld [hl], a                                       ; $43d5: $77
	ldh a, [$9c]                                     ; $43d6: $f0 $9c
	add b                                            ; $43d8: $80
	pop bc                                           ; $43d9: $c1
	pop hl                                           ; $43da: $e1
	cp $99                                           ; $43db: $fe $99
	ld [hl], h                                       ; $43dd: $74
	ld a, h                                          ; $43de: $7c
	inc a                                            ; $43df: $3c
	inc a                                            ; $43e0: $3c
	ld e, $e7                                        ; $43e1: $1e $e7
	ld [hl], a                                       ; $43e3: $77
	ldh a, [$78]                                     ; $43e4: $f0 $78
	ret nz                                           ; $43e6: $c0

	cp $7d                                           ; $43e7: $fe $7d
	ld [hl], a                                       ; $43e9: $77
	sbc c                                            ; $43ea: $99
	jr z, jr_054_4439                                ; $43eb: $28 $4c

	adc h                                            ; $43ed: $8c
	add hl, bc                                       ; $43ee: $09
	add hl, bc                                       ; $43ef: $09
	db $fd                                           ; $43f0: $fd
	sbc $1c                                          ; $43f1: $de $1c
	sbc d                                            ; $43f3: $9a
	jr c, @+$7a                                      ; $43f4: $38 $78

	ld [$0909], sp                                   ; $43f6: $08 $09 $09
	sbc $6f                                          ; $43f9: $de $6f
	sbc [hl]                                         ; $43fb: $9e
	ld c, a                                          ; $43fc: $4f
	sbc $ef                                          ; $43fd: $de $ef
	sbc [hl]                                         ; $43ff: $9e
	ld l, a                                          ; $4400: $6f
	ld [hl], h                                       ; $4401: $74
	add l                                            ; $4402: $85
	ld a, e                                          ; $4403: $7b
	inc h                                            ; $4404: $24
	ld a, a                                          ; $4405: $7f
	rst SubAFromHL                                          ; $4406: $d7
	ld h, d                                          ; $4407: $62
	add sp, -$05                                     ; $4408: $e8 $fb
	rst SubAFromDE                                          ; $440a: $df
	ld sp, hl                                        ; $440b: $f9
	sbc c                                            ; $440c: $99
	jp hl                                            ; $440d: $e9


	ld [$fcfa], a                                    ; $440e: $ea $fa $fc
	db $fc                                           ; $4411: $fc
	ld hl, sp+$79                                    ; $4412: $f8 $79
	or h                                             ; $4414: $b4
	rst SubAFromDE                                          ; $4415: $df
	rra                                              ; $4416: $1f
	rst SubAFromDE                                          ; $4417: $df
	ccf                                              ; $4418: $3f
	sbc h                                            ; $4419: $9c
	ld l, a                                          ; $441a: $6f
	jr nc, @+$0e                                     ; $441b: $30 $0c

	ld [hl], a                                       ; $441d: $77
	sbc d                                            ; $441e: $9a
	ld a, l                                          ; $441f: $7d
	ld d, a                                          ; $4420: $57
	call c, $95ff                                    ; $4421: $dc $ff $95
	db $fc                                           ; $4424: $fc
	db $e3                                           ; $4425: $e3
	sbc h                                            ; $4426: $9c
	pop bc                                           ; $4427: $c1
	jr nz, jr_054_4442                               ; $4428: $20 $18

	add $31                                          ; $442a: $c6 $31
	inc c                                            ; $442c: $0c
	di                                               ; $442d: $f3
	db $db                                           ; $442e: $db
	rst $38                                          ; $442f: $ff
	sub h                                            ; $4430: $94
	rrca                                             ; $4431: $0f
	rst FarCall                                          ; $4432: $f7
	rrca                                             ; $4433: $0f
	rst $38                                          ; $4434: $ff
	ld a, h                                          ; $4435: $7c
	ccf                                              ; $4436: $3f
	jr c, @-$0e                                      ; $4437: $38 $f0

jr_054_4439:
	ld [hl], e                                       ; $4439: $73
	ld a, a                                          ; $443a: $7f
	cp [hl]                                          ; $443b: $be
	db $db                                           ; $443c: $db
	rst $38                                          ; $443d: $ff
	sbc e                                            ; $443e: $9b
	db $fc                                           ; $443f: $fc
	ldh a, [$08]                                     ; $4440: $f0 $08

jr_054_4442:
	db $fc                                           ; $4442: $fc
	ld a, e                                          ; $4443: $7b
	ret nc                                           ; $4444: $d0

	ld a, [hl]                                       ; $4445: $7e
	sub e                                            ; $4446: $93
	sbc l                                            ; $4447: $9d
	inc bc                                           ; $4448: $03
	db $fc                                           ; $4449: $fc
	call c, Call_054_72ff                            ; $444a: $dc $ff $72
	ld [$e097], a                                    ; $444d: $ea $97 $e0
	rra                                              ; $4450: $1f
	inc bc                                           ; $4451: $03
	nop                                              ; $4452: $00
	ldh [rSB], a                                     ; $4453: $e0 $01
	nop                                              ; $4455: $00
	ret nz                                           ; $4456: $c0

	ld [hl], e                                       ; $4457: $73
	db $ed                                           ; $4458: $ed
	ld [hl], e                                       ; $4459: $73
	ld c, l                                          ; $445a: $4d
	ld a, d                                          ; $445b: $7a
	ld h, e                                          ; $445c: $63
	ld a, a                                          ; $445d: $7f
	dec l                                            ; $445e: $2d
	ld a, d                                          ; $445f: $7a
	ld b, h                                          ; $4460: $44
	ld l, a                                          ; $4461: $6f
	ldh a, [$9d]                                     ; $4462: $f0 $9d
	inc bc                                           ; $4464: $03
	rrca                                             ; $4465: $0f
	ld a, c                                          ; $4466: $79
	xor c                                            ; $4467: $a9
	ld a, a                                          ; $4468: $7f
	inc hl                                           ; $4469: $23
	sub c                                            ; $446a: $91
	rrca                                             ; $446b: $0f
	ccf                                              ; $446c: $3f
	cp $ff                                           ; $446d: $fe $ff
	pop hl                                           ; $446f: $e1
	add b                                            ; $4470: $80
	adc b                                            ; $4471: $88
	ld e, l                                          ; $4472: $5d
	xor a                                            ; $4473: $af
	inc bc                                           ; $4474: $03
	rlca                                             ; $4475: $07
	ld b, $86                                        ; $4476: $06 $86
	add $de                                          ; $4478: $c6 $de
	rst $38                                          ; $447a: $ff
	sbc d                                            ; $447b: $9a
	ld l, $04                                        ; $447c: $2e $04
	inc b                                            ; $447e: $04
	add h                                            ; $447f: $84
	ld b, h                                          ; $4480: $44
	ld [hl], c                                       ; $4481: $71
	ld a, c                                          ; $4482: $79
	ld a, [hl]                                       ; $4483: $7e
	xor h                                            ; $4484: $ac
	sbc h                                            ; $4485: $9c
	rra                                              ; $4486: $1f
	add [hl]                                         ; $4487: $86
	ld b, $78                                        ; $4488: $06 $78
	xor a                                            ; $448a: $af
	ld a, h                                          ; $448b: $7c
	rst JumpTable                                          ; $448c: $c7
	ld l, d                                          ; $448d: $6a
	ld a, [de]                                       ; $448e: $1a
	ldh [$d0], a                                     ; $448f: $e0 $d0
	ld e, h                                          ; $4491: $5c
	cp b                                             ; $4492: $b8
	inc bc                                           ; $4493: $03
	ldh a, [rVBK]                                    ; $4494: $f0 $4f
	ldh a, [hDisp1_OBP1]                                     ; $4496: $f0 $94
	rrca                                             ; $4498: $0f
	rlca                                             ; $4499: $07
	rlca                                             ; $449a: $07
	inc bc                                           ; $449b: $03
	inc bc                                           ; $449c: $03
	ld bc, $ff00                                     ; $449d: $01 $00 $ff
	add hl, bc                                       ; $44a0: $09
	dec b                                            ; $44a1: $05
	dec b                                            ; $44a2: $05
	ld [hl], a                                       ; $44a3: $77
	ld hl, sp-$62                                    ; $44a4: $f8 $9e
	ld bc, $67dd                                     ; $44a6: $01 $dd $67
	rst SubAFromDE                                          ; $44a9: $df

Call_054_44aa:
	rst AddAOntoHL                                          ; $44aa: $ef
	ld h, [hl]                                       ; $44ab: $66
	ret nc                                           ; $44ac: $d0

	ld a, h                                          ; $44ad: $7c
	ld sp, hl                                        ; $44ae: $f9
	ld h, d                                          ; $44af: $62
	ret nz                                           ; $44b0: $c0

	sbc l                                            ; $44b1: $9d
	ld [hl], b                                       ; $44b2: $70
	ld c, $fe                                        ; $44b3: $0e $fe
	adc l                                            ; $44b5: $8d
	ld hl, $f823                                     ; $44b6: $21 $23 $f8
	ld hl, sp-$0f                                    ; $44b9: $f8 $f1
	di                                               ; $44bb: $f3
	db $e3                                           ; $44bc: $e3
	rst SubAFromBC                                          ; $44bd: $e7
	rst SubAFromBC                                          ; $44be: $e7
	ld l, a                                          ; $44bf: $6f
	rst GetHLinHL                                          ; $44c0: $cf
	ld c, [hl]                                       ; $44c1: $4e
	dec e                                            ; $44c2: $1d
	ld a, [de]                                       ; $44c3: $1a
	ld a, [hl-]                                      ; $44c4: $3a
	ld [hl], h                                       ; $44c5: $74
	db $fc                                           ; $44c6: $fc
	jr c, jr_054_452e                                ; $44c7: $38 $65

	ei                                               ; $44c9: $fb
	sbc [hl]                                         ; $44ca: $9e
	ld h, b                                          ; $44cb: $60
	ld l, d                                          ; $44cc: $6a
	rrca                                             ; $44cd: $0f
	sbc d                                            ; $44ce: $9a
	rst $38                                          ; $44cf: $ff
	ei                                               ; $44d0: $fb
	pop af                                           ; $44d1: $f1
	ldh a, [$f0]                                     ; $44d2: $f0 $f0
	sbc $e0                                          ; $44d4: $de $e0
	ld h, e                                          ; $44d6: $63
	sub a                                            ; $44d7: $97
	rst SubAFromDE                                          ; $44d8: $df
	rra                                              ; $44d9: $1f
	sbc $8f                                          ; $44da: $de $8f
	rst SubAFromDE                                          ; $44dc: $df
	ld c, a                                          ; $44dd: $4f
	ld a, l                                          ; $44de: $7d
	sub b                                            ; $44df: $90
	ld a, l                                          ; $44e0: $7d
	adc a                                            ; $44e1: $8f
	rst SubAFromDE                                          ; $44e2: $df
	ld a, b                                          ; $44e3: $78
	rst SubAFromDE                                          ; $44e4: $df
	jr c, @+$6e                                      ; $44e5: $38 $6c

	ld h, b                                          ; $44e7: $60
	ld e, h                                          ; $44e8: $5c
	xor b                                            ; $44e9: $a8
	ld a, l                                          ; $44ea: $7d
	ld a, d                                          ; $44eb: $7a
	sbc [hl]                                         ; $44ec: $9e
	ld b, $de                                        ; $44ed: $06 $de
	inc bc                                           ; $44ef: $03
	rst SubAFromDE                                          ; $44f0: $df
	ld bc, $1f9d                                     ; $44f1: $01 $9d $1f
	rlca                                             ; $44f4: $07
	ld a, e                                          ; $44f5: $7b
	ei                                               ; $44f6: $fb
	cp $7e                                           ; $44f7: $fe $7e
	or $95                                           ; $44f9: $f6 $95
	ld e, $1c                                        ; $44fb: $1e $1c
	inc e                                            ; $44fd: $1c
	cp b                                             ; $44fe: $b8
	ld hl, sp-$10                                    ; $44ff: $f8 $f0
	cp $fc                                           ; $4501: $fe $fc
	ld hl, sp-$08                                    ; $4503: $f8 $f8
	ld a, e                                          ; $4505: $7b
	or a                                             ; $4506: $b7
	sbc [hl]                                         ; $4507: $9e
	ret nz                                           ; $4508: $c0

	pop af                                           ; $4509: $f1
	sbc e                                            ; $450a: $9b
	ld h, [hl]                                       ; $450b: $66
	ld [hl], $1f                                     ; $450c: $36 $1f
	rrca                                             ; $450e: $0f
	ld a, e                                          ; $450f: $7b
	push de                                          ; $4510: $d5
	sbc c                                            ; $4511: $99
	nop                                              ; $4512: $00
	inc h                                            ; $4513: $24

jr_054_4514:
	inc d                                            ; $4514: $14
	inc c                                            ; $4515: $0c
	inc b                                            ; $4516: $04
	ld [bc], a                                       ; $4517: $02
	ld a, e                                          ; $4518: $7b
	rst GetHLinHL                                          ; $4519: $cf
	ld a, e                                          ; $451a: $7b
	ld b, b                                          ; $451b: $40
	sbc d                                            ; $451c: $9a
	add e                                            ; $451d: $83
	jp $fbe3                                         ; $451e: $c3 $e3 $fb


	rst $38                                          ; $4521: $ff
	db $db                                           ; $4522: $db
	ld bc, $819d                                     ; $4523: $01 $9d $81
	ld b, c                                          ; $4526: $41
	ld c, a                                          ; $4527: $4f
	ld a, [de]                                       ; $4528: $1a
	ld e, [hl]                                       ; $4529: $5e
	ld [$f00b], sp                                   ; $452a: $08 $0b $f0
	sbc [hl]                                         ; $452d: $9e

jr_054_452e:
	jr nc, jr_054_4596                               ; $452e: $30 $66

	pop af                                           ; $4530: $f1
	ei                                               ; $4531: $fb
	ld h, a                                          ; $4532: $67
	ld b, c                                          ; $4533: $41
	ld a, l                                          ; $4534: $7d
	jp hl                                            ; $4535: $e9


	ld [hl], c                                       ; $4536: $71
	ld e, l                                          ; $4537: $5d
	sbc [hl]                                         ; $4538: $9e
	ld h, b                                          ; $4539: $60
	ld h, e                                          ; $453a: $63
	pop af                                           ; $453b: $f1
	ld [hl], a                                       ; $453c: $77
	ldh a, [$9e]                                     ; $453d: $f0 $9e
	ld bc, $6b67                                     ; $453f: $01 $67 $6b

Jump_054_4542:
	ld [hl], h                                       ; $4542: $74
	ld h, [hl]                                       ; $4543: $66
	sbc $01                                          ; $4544: $de $01
	ld a, c                                          ; $4546: $79
	ld l, c                                          ; $4547: $69
	call c, Call_054_7101                            ; $4548: $dc $01 $71
	cp h                                             ; $454b: $bc
	ld a, [hl]                                       ; $454c: $7e
	dec [hl]                                         ; $454d: $35
	add b                                            ; $454e: $80
	sbc a                                            ; $454f: $9f
	ld c, a                                          ; $4550: $4f
	and h                                            ; $4551: $a4
	jp nc, $beea                                     ; $4552: $d2 $ea $be

	ldh [$e0], a                                     ; $4555: $e0 $e0
	ldh a, [$df]                                     ; $4557: $f0 $df
	rst AddAOntoHL                                          ; $4559: $ef
	sub [hl]                                         ; $455a: $96
	dec bc                                           ; $455b: $0b
	rrca                                             ; $455c: $0f
	cp $fc                                           ; $455d: $fe $fc
	db $f4                                           ; $455f: $f4
	db $e4                                           ; $4560: $e4
	ld c, h                                          ; $4561: $4c
	sbc a                                            ; $4562: $9f
	xor e                                            ; $4563: $ab
	ei                                               ; $4564: $fb
	ld b, [hl]                                       ; $4565: $46
	ld c, [hl]                                       ; $4566: $4e
	sbc [hl]                                         ; $4567: $9e
	or $ee                                           ; $4568: $f6 $ee
	sbc $be                                          ; $456a: $de $be
	xor $7f                                          ; $456c: $ee $7f
	sbc h                                            ; $456e: $9c
	cp a                                             ; $456f: $bf
	adc a                                            ; $4570: $8f
	xor a                                            ; $4571: $af
	sbc $87                                          ; $4572: $de $87
	sbc [hl]                                         ; $4574: $9e
	adc a                                            ; $4575: $8f
	db $dd                                           ; $4576: $dd
	jr jr_054_4514                                   ; $4577: $18 $9b

	inc l                                            ; $4579: $2c
	inc h                                            ; $457a: $24
	inc h                                            ; $457b: $24
	ld l, $dc                                        ; $457c: $2e $dc
	rst $38                                          ; $457e: $ff
	rst SubAFromDE                                          ; $457f: $df
	cp $9e                                           ; $4580: $fe $9e
	db $fc                                           ; $4582: $fc
	ld sp, hl                                        ; $4583: $f9
	sbc $c0                                          ; $4584: $de $c0
	ld d, b                                          ; $4586: $50
	push bc                                          ; $4587: $c5
	sbc l                                            ; $4588: $9d
	ld c, a                                          ; $4589: $4f
	ld b, a                                          ; $458a: $47
	db $dd                                           ; $458b: $dd
	daa                                              ; $458c: $27
	sbc e                                            ; $458d: $9b
	ld h, $16                                        ; $458e: $26 $16
	jr c, @+$3e                                      ; $4590: $38 $3c

	call c, $9e1c                                    ; $4592: $dc $1c $9e
	inc c                                            ; $4595: $0c

jr_054_4596:
	ld e, [hl]                                       ; $4596: $5e
	add $68                                          ; $4597: $c6 $68
	pop bc                                           ; $4599: $c1
	ld a, b                                          ; $459a: $78
	reti                                             ; $459b: $d9


	db $dd                                           ; $459c: $dd
	inc bc                                           ; $459d: $03
	ld sp, hl                                        ; $459e: $f9
	sbc $f0                                          ; $459f: $de $f0
	sbc $f8                                          ; $45a1: $de $f8
	sbc l                                            ; $45a3: $9d
	db $fc                                           ; $45a4: $fc
	db $ec                                           ; $45a5: $ec
	db $dd                                           ; $45a6: $dd
	ld b, b                                          ; $45a7: $40
	rst SubAFromDE                                          ; $45a8: $df
	jr nz, @-$60                                     ; $45a9: $20 $9e

	jr nc, @+$7c                                     ; $45ab: $30 $7a

	sub b                                            ; $45ad: $90
	db $e3                                           ; $45ae: $e3
	ld a, c                                          ; $45af: $79
	add h                                            ; $45b0: $84
	ld a, [hl]                                       ; $45b1: $7e

jr_054_45b2:
	adc l                                            ; $45b2: $8d
	ld a, [hl]                                       ; $45b3: $7e
	xor l                                            ; $45b4: $ad
	sub a                                            ; $45b5: $97
	rrca                                             ; $45b6: $0f
	ld b, c                                          ; $45b7: $41
	ld hl, $1121                                     ; $45b8: $21 $21 $11
	ld [de], a                                       ; $45bb: $12
	ld a, [bc]                                       ; $45bc: $0a
	ld a, [bc]                                       ; $45bd: $0a
	ld [hl], c                                       ; $45be: $71
	cpl                                              ; $45bf: $2f
	ld l, d                                          ; $45c0: $6a
	push hl                                          ; $45c1: $e5
	ld [hl], a                                       ; $45c2: $77
	inc d                                            ; $45c3: $14
	ld h, d                                          ; $45c4: $62
	ret nc                                           ; $45c5: $d0

	ld [hl], e                                       ; $45c6: $73
	inc h                                            ; $45c7: $24
	ld c, [hl]                                       ; $45c8: $4e
	push bc                                          ; $45c9: $c5
	ld a, e                                          ; $45ca: $7b
	inc bc                                           ; $45cb: $03
	ld c, e                                          ; $45cc: $4b
	ldh a, [$5a]                                     ; $45cd: $f0 $5a
	and b                                            ; $45cf: $a0
	inc bc                                           ; $45d0: $03
	ldh a, [$da]                                     ; $45d1: $f0 $da
	rst $38                                          ; $45d3: $ff
	reti                                             ; $45d4: $d9


	ld bc, $ffd9                                     ; $45d5: $01 $d9 $ff
	sbc $a8                                          ; $45d8: $de $a8
	sub d                                            ; $45da: $92
	sbc h                                            ; $45db: $9c
	sbc b                                            ; $45dc: $98
	sbc a                                            ; $45dd: $9f
	cp h                                             ; $45de: $bc
	db $e4                                           ; $45df: $e4
	nop                                              ; $45e0: $00
	ld b, $01                                        ; $45e1: $06 $01
	ld b, $0a                                        ; $45e3: $06 $0a
	rrca                                             ; $45e5: $0f
	jr jr_054_45e8                                   ; $45e6: $18 $00

jr_054_45e8:
	sbc $3b                                          ; $45e8: $de $3b
	sbc l                                            ; $45ea: $9d
	ld a, [hl-]                                      ; $45eb: $3a
	ld a, [hl+]                                      ; $45ec: $2a
	ld a, d                                          ; $45ed: $7a
	xor d                                            ; $45ee: $aa
	sub a                                            ; $45ef: $97
	ld l, $8e                                        ; $45f0: $2e $8e
	ld c, $ae                                        ; $45f2: $0e $ae
	xor [hl]                                         ; $45f4: $ae
	db $ed                                           ; $45f5: $ed
	inc h                                            ; $45f6: $24
	inc b                                            ; $45f7: $04
	db $dd                                           ; $45f8: $dd
	adc a                                            ; $45f9: $8f
	rst SubAFromDE                                          ; $45fa: $df
	rrca                                             ; $45fb: $0f
	sub l                                            ; $45fc: $95
	adc a                                            ; $45fd: $8f
	ld e, a                                          ; $45fe: $5f
	ld a, [de]                                       ; $45ff: $1a
	ld a, [de]                                       ; $4600: $1a
	add hl, bc                                       ; $4601: $09
	add hl, sp                                       ; $4602: $39
	ld c, b                                          ; $4603: $48
	jr jr_054_45b2                                   ; $4604: $18 $ac

	inc a                                            ; $4606: $3c
	ld a, c                                          ; $4607: $79
	db $db                                           ; $4608: $db
	ld a, c                                          ; $4609: $79
	sub c                                            ; $460a: $91
	sbc [hl]                                         ; $460b: $9e
	ld h, b                                          ; $460c: $60
	ld [hl], d                                       ; $460d: $72
	ld c, a                                          ; $460e: $4f
	rst SubAFromDE                                          ; $460f: $df
	add b                                            ; $4610: $80
	sbc l                                            ; $4611: $9d
	ret nz                                           ; $4612: $c0

	ld b, b                                          ; $4613: $40
	pop af                                           ; $4614: $f1
	db $dd                                           ; $4615: $dd
	ld d, $dd                                        ; $4616: $16 $dd
	rlca                                             ; $4618: $07
	reti                                             ; $4619: $d9


	inc c                                            ; $461a: $0c
	ld l, c                                          ; $461b: $69
	jr z, jr_054_4680                                ; $461c: $28 $62

	cp d                                             ; $461e: $ba
	db $dd                                           ; $461f: $dd
	ld bc, $9af5                                     ; $4620: $01 $f5 $9a
	and $e7                                          ; $4623: $e6 $e7
	rst AddAOntoHL                                          ; $4625: $ef
	set 2, c                                         ; $4626: $cb $d1
	sbc $d0                                          ; $4628: $de $d0
	sbc e                                            ; $462a: $9b
	inc a                                            ; $462b: $3c
	ld a, [hl-]                                      ; $462c: $3a
	ld sp, $dd70                                     ; $462d: $31 $70 $dd
	ld h, b                                          ; $4630: $60
	ld [hl], h                                       ; $4631: $74
	db $fc                                           ; $4632: $fc
	sbc e                                            ; $4633: $9b
	ldh a, [$fc]                                     ; $4634: $f0 $fc
	ld a, a                                          ; $4636: $7f
	rra                                              ; $4637: $1f
	ld [hl], a                                       ; $4638: $77
	res 3, h                                         ; $4639: $cb $9c
	ld h, b                                          ; $463b: $60
	jr jr_054_4644                                   ; $463c: $18 $06

	ld h, a                                          ; $463e: $67
	call nc, $c063                                   ; $463f: $d4 $63 $c0
	ld [hl], b                                       ; $4642: $70
	pop bc                                           ; $4643: $c1

jr_054_4644:
	ld a, e                                          ; $4644: $7b
	ld [$4278], a                                    ; $4645: $ea $78 $42
	ld e, a                                          ; $4648: $5f
	or a                                             ; $4649: $b7
	ld h, l                                          ; $464a: $65
	jr nz, jr_054_46a6                               ; $464b: $20 $59

	jr jr_054_4693                                   ; $464d: $18 $44

	ld a, a                                          ; $464f: $7f
	sbc [hl]                                         ; $4650: $9e
	cp $6b                                           ; $4651: $fe $6b
	db $d3                                           ; $4653: $d3
	ld d, b                                          ; $4654: $50
	nop                                              ; $4655: $00
	sbc $66                                          ; $4656: $de $66
	rst SubAFromDE                                          ; $4658: $df
	ld b, h                                          ; $4659: $44
	sub a                                            ; $465a: $97
	ld b, a                                          ; $465b: $47
	ld h, [hl]                                       ; $465c: $66
	ld d, l                                          ; $465d: $55
	ld h, a                                          ; $465e: $67
	ld [hl], a                                       ; $465f: $77
	ld h, [hl]                                       ; $4660: $66
	ld h, [hl]                                       ; $4661: $66
	ld h, h                                          ; $4662: $64
	ld a, e                                          ; $4663: $7b
	or $9d                                           ; $4664: $f6 $9d
	ld [hl], l                                       ; $4666: $75
	ld d, [hl]                                       ; $4667: $56
	ld [hl], a                                       ; $4668: $77
	or $dd                                           ; $4669: $f6 $dd
	ld b, h                                          ; $466b: $44
	rst SubAFromDE                                          ; $466c: $df
	ld d, l                                          ; $466d: $55
	ld l, e                                          ; $466e: $6b
	or $9b                                           ; $466f: $f6 $9b
	ld b, d                                          ; $4671: $42
	ld h, e                                          ; $4672: $63
	dec h                                            ; $4673: $25
	ld d, a                                          ; $4674: $57
	ld l, e                                          ; $4675: $6b
	or $9c                                           ; $4676: $f6 $9c
	ld h, d                                          ; $4678: $62
	ld h, $47                                        ; $4679: $26 $47
	ld l, e                                          ; $467b: $6b
	or $9c                                           ; $467c: $f6 $9c
	ld d, d                                          ; $467e: $52
	dec h                                            ; $467f: $25

jr_054_4680:
	daa                                              ; $4680: $27
	ld l, a                                          ; $4681: $6f
	adc $6b                                          ; $4682: $ce $6b
	or $de                                           ; $4684: $f6 $de
	ld b, h                                          ; $4686: $44
	rst SubAFromDE                                          ; $4687: $df
	ld [hl+], a                                      ; $4688: $22
	sbc l                                            ; $4689: $9d
	daa                                              ; $468a: $27
	scf                                              ; $468b: $37
	ld l, a                                          ; $468c: $6f
	or $9c                                           ; $468d: $f6 $9c
	inc sp                                           ; $468f: $33
	ld [hl+], a                                      ; $4690: $22
	inc sp                                           ; $4691: $33
	ld [hl], a                                       ; $4692: $77

jr_054_4693:
	or $7b                                           ; $4693: $f6 $7b
	ldh [c], a                                       ; $4695: $e2
	sbc $33                                          ; $4696: $de $33
	ld a, a                                          ; $4698: $7f
	or $df                                           ; $4699: $f6 $df
	ld [hl], a                                       ; $469b: $77
	sbc d                                            ; $469c: $9a
	ld [hl], h                                       ; $469d: $74
	ld b, h                                          ; $469e: $44
	ld b, e                                          ; $469f: $43
	inc sp                                           ; $46a0: $33
	ld [hl-], a                                      ; $46a1: $32
	ld a, e                                          ; $46a2: $7b
	or $10                                           ; $46a3: $f6 $10
	adc b                                            ; $46a5: $88

jr_054_46a6:
	sbc d                                            ; $46a6: $9a
	nop                                              ; $46a7: $00
	ld bc, $1f07                                     ; $46a8: $01 $07 $1f
	ld a, a                                          ; $46ab: $7f
	sbc $ff                                          ; $46ac: $de $ff
	ld a, a                                          ; $46ae: $7f
	ld hl, sp-$67                                    ; $46af: $f8 $99
	ld b, $18                                        ; $46b1: $06 $18
	ld h, b                                          ; $46b3: $60
	add b                                            ; $46b4: $80
	nop                                              ; $46b5: $00
	nop                                              ; $46b6: $00
	ld [hl], a                                       ; $46b7: $77
	db $f4                                           ; $46b8: $f4
	db $dd                                           ; $46b9: $dd
	rst $38                                          ; $46ba: $ff
	ld [hl], a                                       ; $46bb: $77
	db $f4                                           ; $46bc: $f4
	db $fd                                           ; $46bd: $fd
	sbc l                                            ; $46be: $9d
	rst SubAFromBC                                          ; $46bf: $e7
	ld hl, sp-$25                                    ; $46c0: $f8 $db
	rst $38                                          ; $46c2: $ff
	sbc [hl]                                         ; $46c3: $9e
	inc bc                                           ; $46c4: $03
	ld a, [$809a]                                    ; $46c5: $fa $9a $80
	ldh a, [rAUD3HIGH]                               ; $46c8: $f0 $1e
	db $e3                                           ; $46ca: $e3
	db $fc                                           ; $46cb: $fc
	sbc $ff                                          ; $46cc: $de $ff
	sbc e                                            ; $46ce: $9b
	add b                                            ; $46cf: $80
	ld [hl], b                                       ; $46d0: $70
	ld c, $01                                        ; $46d1: $0e $01
	cp $9e                                           ; $46d3: $fe $9e
	rlca                                             ; $46d5: $07
	cp $9a                                           ; $46d6: $fe $9a
	pop bc                                           ; $46d8: $c1
	ld [hl], d                                       ; $46d9: $72
	dec e                                            ; $46da: $1d
	ei                                               ; $46db: $fb
	rst FarCall                                          ; $46dc: $f7
	ld [hl], a                                       ; $46dd: $77

jr_054_46de:
	ld hl, sp-$80                                    ; $46de: $f8 $80
	inc sp                                           ; $46e0: $33
	cp $fc                                           ; $46e1: $fe $fc
	ld hl, sp+$03                                    ; $46e3: $f8 $03
	dec e                                            ; $46e5: $1d
	ld l, b                                          ; $46e6: $68
	and c                                            ; $46e7: $a1
	call nz, $b698                                   ; $46e8: $c4 $98 $b6
	ld l, h                                          ; $46eb: $6c
	inc bc                                           ; $46ec: $03
	ld e, $70                                        ; $46ed: $1e $70
	add $18                                          ; $46ef: $c6 $18
	jr nz, @+$43                                     ; $46f1: $20 $41

	add d                                            ; $46f3: $82
	db $fc                                           ; $46f4: $fc
	add b                                            ; $46f5: $80
	jr @+$34                                         ; $46f6: $18 $32

	rrca                                             ; $46f8: $0f
	sub e                                            ; $46f9: $93
	ld c, a                                          ; $46fa: $4f
	xor a                                            ; $46fb: $af

Jump_054_46fc:
	add e                                            ; $46fc: $83
	ld a, a                                          ; $46fd: $7f
	rlca                                             ; $46fe: $07
	add b                                            ; $46ff: $80
	dec c                                            ; $4700: $0d
	nop                                              ; $4701: $00
	inc c                                            ; $4702: $0c
	jr nc, jr_054_4745                               ; $4703: $30 $40

	rra                                              ; $4705: $1f
	jr jr_054_470f                                   ; $4706: $18 $07

	ld e, $3f                                        ; $4708: $1e $3f
	ld a, [hl]                                       ; $470a: $7e
	ld l, c                                          ; $470b: $69
	or h                                             ; $470c: $b4
	ldh [$e7], a                                     ; $470d: $e0 $e7

jr_054_470f:
	ld hl, sp-$20                                    ; $470f: $f8 $e0
	ret nz                                           ; $4711: $c0

	add b                                            ; $4712: $80
	add b                                            ; $4713: $80
	ld b, b                                          ; $4714: $40
	rst $38                                          ; $4715: $ff
	nop                                              ; $4716: $00
	pop af                                           ; $4717: $f1
	ld a, $c6                                        ; $4718: $3e $c6
	ld a, c                                          ; $471a: $79
	sub d                                            ; $471b: $92
	rst JumpTable                                          ; $471c: $c7
	nop                                              ; $471d: $00
	rst $38                                          ; $471e: $ff
	rst $38                                          ; $471f: $ff
	ld a, a                                          ; $4720: $7f
	xor a                                            ; $4721: $af
	add b                                            ; $4722: $80
	inc c                                            ; $4723: $0c
	ld [bc], a                                       ; $4724: $02
	inc bc                                           ; $4725: $03
	ld [hl], b                                       ; $4726: $70
	adc h                                            ; $4727: $8c
	inc sp                                           ; $4728: $33
	call z, $4f33                                    ; $4729: $cc $33 $4f
	adc e                                            ; $472c: $8b
	nop                                              ; $472d: $00
	add b                                            ; $472e: $80
	ld [hl], b                                       ; $472f: $70
	inc c                                            ; $4730: $0c
	inc bc                                           ; $4731: $03
	ret nz                                           ; $4732: $c0

	jr nc, jr_054_4751                               ; $4733: $30 $1c

	ld h, $ab                                        ; $4735: $26 $ab
	ld d, l                                          ; $4737: $55
	ld a, [hl+]                                      ; $4738: $2a
	push de                                          ; $4739: $d5
	ld a, [hl+]                                      ; $473a: $2a
	cp e                                             ; $473b: $bb
	sbc [hl]                                         ; $473c: $9e
	jp nz, $3871                                     ; $473d: $c2 $71 $38

	inc e                                            ; $4740: $1c
	ld c, $9c                                        ; $4741: $0e $9c
	rst JumpTable                                          ; $4743: $c7
	ld h, a                                          ; $4744: $67

jr_054_4745:
	ld [hl], d                                       ; $4745: $72
	ld a, e                                          ; $4746: $7b
	ld a, [hl]                                       ; $4747: $7e
	rst SubAFromDE                                          ; $4748: $df
	ret nz                                           ; $4749: $c0

	sbc h                                            ; $474a: $9c
	ld h, b                                          ; $474b: $60
	jr nz, jr_054_46de                               ; $474c: $20 $90

	ld a, e                                          ; $474e: $7b
	ld hl, sp-$21                                    ; $474f: $f8 $df

jr_054_4751:
	ld b, b                                          ; $4751: $40
	sbc h                                            ; $4752: $9c
	and b                                            ; $4753: $a0
	ldh [$f0], a                                     ; $4754: $e0 $f0
	ldh [$aa], a                                     ; $4756: $e0 $aa
	sbc [hl]                                         ; $4758: $9e
	ld [bc], a                                       ; $4759: $02
	ldh [$d9], a                                     ; $475a: $e0 $d9
	reti                                             ; $475c: $d9


	rst $38                                          ; $475d: $ff
	ld c, e                                          ; $475e: $4b
	ldh a, [$9e]                                     ; $475f: $f0 $9e
	db $fc                                           ; $4761: $fc
	ei                                               ; $4762: $fb
	sbc l                                            ; $4763: $9d
	inc bc                                           ; $4764: $03
	inc c                                            ; $4765: $0c
	db $dd                                           ; $4766: $dd
	rst $38                                          ; $4767: $ff
	sbc l                                            ; $4768: $9d
	pop af                                           ; $4769: $f1
	ret nz                                           ; $476a: $c0

	ld [hl], e                                       ; $476b: $73
	db $f4                                           ; $476c: $f4
	sbc l                                            ; $476d: $9d
	rrca                                             ; $476e: $0f
	ld sp, $f87b                                     ; $476f: $31 $7b $f8
	db $db                                           ; $4772: $db
	rst $38                                          ; $4773: $ff
	sbc h                                            ; $4774: $9c
	ld a, a                                          ; $4775: $7f
	ccf                                              ; $4776: $3f
	ccf                                              ; $4777: $3f
	ld l, e                                          ; $4778: $6b
	ld hl, sp-$80                                    ; $4779: $f8 $80
	xor $ed                                          ; $477b: $ee $ed
	reti                                             ; $477d: $d9


	db $d3                                           ; $477e: $d3
	or e                                             ; $477f: $b3
	and [hl]                                         ; $4780: $a6
	and [hl]                                         ; $4781: $a6
	adc l                                            ; $4782: $8d
	pop af                                           ; $4783: $f1
	ldh a, [c]                                       ; $4784: $f2

jr_054_4785:
	and $ec                                          ; $4785: $e6 $ec
	call z, $d9d9                                    ; $4787: $cc $d9 $d9
	ldh a, [c]                                       ; $478a: $f2
	ld sp, hl                                        ; $478b: $f9
	or $ed                                           ; $478c: $f6 $ed
	ld l, l                                          ; $478e: $6d
	ld e, d                                          ; $478f: $5a
	jp c, $b7bb                                      ; $4790: $da $bb $b7

	inc b                                            ; $4793: $04
	add hl, bc                                       ; $4794: $09
	ld [de], a                                       ; $4795: $12
	sub d                                            ; $4796: $92
	and h                                            ; $4797: $a4
	inc h                                            ; $4798: $24
	ld b, h                                          ; $4799: $44
	sub h                                            ; $479a: $94
	ld c, b                                          ; $479b: $48
	ld b, a                                          ; $479c: $47
	sub [hl]                                         ; $479d: $96
	ld [hl+], a                                      ; $479e: $22
	ld [hl+], a                                      ; $479f: $22
	and d                                            ; $47a0: $a2
	ld [hl+], a                                      ; $47a1: $22
	ld [hl+], a                                      ; $47a2: $22
	ld [de], a                                       ; $47a3: $12
	sbc b                                            ; $47a4: $98
	ld hl, $41de                                     ; $47a5: $21 $de $41
	rst SubAFromDE                                          ; $47a8: $df
	pop bc                                           ; $47a9: $c1
	add b                                            ; $47aa: $80
	pop hl                                           ; $47ab: $e1
	or d                                             ; $47ac: $b2
	ld e, b                                          ; $47ad: $58
	ld c, c                                          ; $47ae: $49
	inc [hl]                                         ; $47af: $34
	or h                                             ; $47b0: $b4
	xor d                                            ; $47b1: $aa
	sbc d                                            ; $47b2: $9a
	db $db                                           ; $47b3: $db
	ld b, b                                          ; $47b4: $40
	ld hl, $1830                                     ; $47b5: $21 $30 $18
	jr @+$1e                                         ; $47b8: $18 $1c

	inc c                                            ; $47ba: $0c
	inc c                                            ; $47bb: $0c
	add hl, de                                       ; $47bc: $19
	sub [hl]                                         ; $47bd: $96
	ld c, e                                          ; $47be: $4b
	xor l                                            ; $47bf: $ad
	jp nc, $adaf                                     ; $47c0: $d2 $af $ad

	or l                                             ; $47c3: $b5
	inc bc                                           ; $47c4: $03
	add hl, bc                                       ; $47c5: $09
	adc h                                            ; $47c6: $8c
	add $67                                          ; $47c7: $c6 $67
	ld [hl], e                                       ; $47c9: $73
	sub l                                            ; $47ca: $95
	ld [hl], e                                       ; $47cb: $73
	ld a, e                                          ; $47cc: $7b
	inc b                                            ; $47cd: $04
	rst JumpTable                                          ; $47ce: $c7
	ld h, d                                          ; $47cf: $62
	inc sp                                           ; $47d0: $33
	add hl, hl                                       ; $47d1: $29
	dec e                                            ; $47d2: $1d
	rra                                              ; $47d3: $1f
	adc a                                            ; $47d4: $8f
	sbc $ff                                          ; $47d5: $de $ff
	sub d                                            ; $47d7: $92
	cp $ff                                           ; $47d8: $fe $ff
	rst FarCall                                          ; $47da: $f7
	di                                               ; $47db: $f3
	ei                                               ; $47dc: $fb
	add hl, bc                                       ; $47dd: $09
	add hl, bc                                       ; $47de: $09
	add h                                            ; $47df: $84
	call nz, $e3e2                                   ; $47e0: $c4 $e2 $e3
	ldh a, [c]                                       ; $47e3: $f2
	sub $6f                                          ; $47e4: $d6 $6f
	adc e                                            ; $47e6: $8b
	adc l                                            ; $47e7: $8d
	ld e, $3c                                        ; $47e8: $1e $3c
	ld d, b                                          ; $47ea: $50
	jr z, jr_054_4785                                ; $47eb: $28 $98

	sbc b                                            ; $47ed: $98
	ld c, b                                          ; $47ee: $48
	ld b, b                                          ; $47ef: $40
	and b                                            ; $47f0: $a0
	ld h, b                                          ; $47f1: $60
	ld [hl], b                                       ; $47f2: $70

Jump_054_47f3:
	jr c, @-$66                                      ; $47f3: $38 $98

	sbc b                                            ; $47f5: $98
	ret z                                            ; $47f6: $c8

	ret nz                                           ; $47f7: $c0

	ldh [$60], a                                     ; $47f8: $e0 $60
	ldh [$b1], a                                     ; $47fa: $e0 $b1
	ld [hl], l                                       ; $47fc: $75
	db $eb                                           ; $47fd: $eb
	push af                                          ; $47fe: $f5
	ld l, c                                          ; $47ff: $69
	cp c                                             ; $4800: $b9
	ld d, $c0                                        ; $4801: $16 $c0
	sbc l                                            ; $4803: $9d
	db $fc                                           ; $4804: $fc
	ldh a, [$6e]                                     ; $4805: $f0 $6e
	ldh [$7d], a                                     ; $4807: $e0 $7d
	ldh [c], a                                       ; $4809: $e2
	ld a, e                                          ; $480a: $7b
	ld hl, sp+$6f                                    ; $480b: $f8 $6f
	db $f4                                           ; $480d: $f4
	rst $38                                          ; $480e: $ff
	ld [hl], a                                       ; $480f: $77
	db $f4                                           ; $4810: $f4
	db $ed                                           ; $4811: $ed
	sbc d                                            ; $4812: $9a
	ccf                                              ; $4813: $3f
	rra                                              ; $4814: $1f
	rrca                                             ; $4815: $0f
	rlca                                             ; $4816: $07
	inc bc                                           ; $4817: $03
	sbc $01                                          ; $4818: $de $01
	ld h, a                                          ; $481a: $67
	ld hl, sp-$21                                    ; $481b: $f8 $df
	dec c                                            ; $481d: $0d
	rst SubAFromDE                                          ; $481e: $df
	dec de                                           ; $481f: $1b
	sbc [hl]                                         ; $4820: $9e
	dec sp                                           ; $4821: $3b
	sbc $3a                                          ; $4822: $de $3a
	rst SubAFromDE                                          ; $4824: $df
	ldh a, [c]                                       ; $4825: $f2
	sbc $e4                                          ; $4826: $de $e4
	sbc $e5                                          ; $4828: $de $e5
	sbc h                                            ; $482a: $9c
	or [hl]                                          ; $482b: $b6
	halt                                             ; $482c: $76
	ld h, [hl]                                       ; $482d: $66
	sbc $64                                          ; $482e: $de $64
	rst SubAFromDE                                          ; $4830: $df
	ld h, [hl]                                       ; $4831: $66
	sbc h                                            ; $4832: $9c
	ld c, c                                          ; $4833: $49
	adc c                                            ; $4834: $89
	sbc c                                            ; $4835: $99
	call c, $979b                                    ; $4836: $dc $9b $97
	ld [de], a                                       ; $4839: $12
	ld d, d                                          ; $483a: $52
	ld d, e                                          ; $483b: $53
	ld e, e                                          ; $483c: $5b
	ld e, e                                          ; $483d: $5b
	ld e, a                                          ; $483e: $5f
	ld e, l                                          ; $483f: $5d
	ld e, l                                          ; $4840: $5d
	db $db                                           ; $4841: $db
	pop hl                                           ; $4842: $e1
	rst SubAFromDE                                          ; $4843: $df
	db $e3                                           ; $4844: $e3
	sub l                                            ; $4845: $95
	push bc                                          ; $4846: $c5
	call $6e6c                                       ; $4847: $cd $6c $6e
	ld l, [hl]                                       ; $484a: $6e
	ld l, $26                                        ; $484b: $2e $26
	ld d, $0e                                        ; $484d: $16 $0e
	ld b, $de                                        ; $484f: $06 $de
	add a                                            ; $4851: $87
	sub [hl]                                         ; $4852: $96
	rst JumpTable                                          ; $4853: $c7
	rst GetHLinHL                                          ; $4854: $cf
	rst AddAOntoHL                                          ; $4855: $ef
	add hl, hl                                       ; $4856: $29
	add hl, sp                                       ; $4857: $39
	inc a                                            ; $4858: $3c
	inc a                                            ; $4859: $3c
	ld a, $3e                                        ; $485a: $3e $3e
	ld a, d                                          ; $485c: $7a
	ld [hl], c                                       ; $485d: $71
	add b                                            ; $485e: $80
	rst AddAOntoHL                                          ; $485f: $ef
	rst SubAFromBC                                          ; $4860: $e7
	rst SubAFromBC                                          ; $4861: $e7
	db $e3                                           ; $4862: $e3
	db $e3                                           ; $4863: $e3
	pop hl                                           ; $4864: $e1
	pop hl                                           ; $4865: $e1
	rst GetHLinHL                                          ; $4866: $cf
	ret                                              ; $4867: $c9


	rst SubAFromBC                                          ; $4868: $e7
	rst SubAFromBC                                          ; $4869: $e7
	rst FarCall                                          ; $486a: $f7
	halt                                             ; $486b: $76
	ld a, d                                          ; $486c: $7a
	ld a, [hl]                                       ; $486d: $7e
	ld a, c                                          ; $486e: $79
	ld a, a                                          ; $486f: $7f
	cp h                                             ; $4870: $bc
	cp h                                             ; $4871: $bc
	sbc h                                            ; $4872: $9c
	call c, $c9cc                                    ; $4873: $dc $cc $c9
	inc d                                            ; $4876: $14
	ld a, h                                          ; $4877: $7c
	ld hl, sp-$7e                                    ; $4878: $f8 $82
	inc e                                            ; $487a: $1c
	ld h, $5f                                        ; $487b: $26 $5f
	cp l                                             ; $487d: $bd
	sub [hl]                                         ; $487e: $96
	db $fc                                           ; $487f: $fc
	adc h                                            ; $4880: $8c
	rrca                                             ; $4881: $0f
	dec e                                            ; $4882: $1d

jr_054_4883:
	ld h, b                                          ; $4883: $60
	ret c                                            ; $4884: $d8

	and [hl]                                         ; $4885: $a6
	ld e, [hl]                                       ; $4886: $5e
	jr nz, jr_054_4883                               ; $4887: $20 $fa

	ld a, e                                          ; $4889: $7b
	ld hl, sp-$21                                    ; $488a: $f8 $df
	add b                                            ; $488c: $80
	ldh [$78], a                                     ; $488d: $e0 $78
	sbc [hl]                                         ; $488f: $9e
	ld h, b                                          ; $4890: $60
	nop                                              ; $4891: $00
	ld hl, sp+$62                                    ; $4892: $f8 $62
	ld h, b                                          ; $4894: $60
	sbc $01                                          ; $4895: $de $01
	ld d, a                                          ; $4897: $57
	ld hl, sp-$23                                    ; $4898: $f8 $dd
	ld [hl-], a                                      ; $489a: $32
	rst SubAFromDE                                          ; $489b: $df
	and d                                            ; $489c: $a2
	sbc l                                            ; $489d: $9d
	sub [hl]                                         ; $489e: $96
	sub h                                            ; $489f: $94
	db $dd                                           ; $48a0: $dd
	db $ed                                           ; $48a1: $ed
	sbc $fd                                          ; $48a2: $de $fd
	sbc [hl]                                         ; $48a4: $9e
	rst $38                                          ; $48a5: $ff
	db $dd                                           ; $48a6: $dd
	and $9b                                          ; $48a7: $e6 $9b
	or $b6                                           ; $48a9: $f6 $b6
	or l                                             ; $48ab: $b5
	xor e                                            ; $48ac: $ab
	call c, $df9b                                    ; $48ad: $dc $9b $df
	db $db                                           ; $48b0: $db
	sub d                                            ; $48b1: $92
	db $dd                                           ; $48b2: $dd
	ld e, [hl]                                       ; $48b3: $5e
	ld c, d                                          ; $48b4: $4a
	ld c, h                                          ; $48b5: $4c
	ld b, h                                          ; $48b6: $44
	ld c, c                                          ; $48b7: $49
	ld c, c                                          ; $48b8: $49
	ld e, c                                          ; $48b9: $59
	ld e, c                                          ; $48ba: $59
	db $e3                                           ; $48bb: $e3
	rst FarCall                                          ; $48bc: $f7
	rst FarCall                                          ; $48bd: $f7
	rst $38                                          ; $48be: $ff
	db $dd                                           ; $48bf: $dd
	cp $dd                                           ; $48c0: $fe $dd
	add a                                            ; $48c2: $87
	sbc e                                            ; $48c3: $9b
	add [hl]                                         ; $48c4: $86
	adc l                                            ; $48c5: $8d
	adc c                                            ; $48c6: $89
	adc e                                            ; $48c7: $8b
	call c, $94fd                                    ; $48c8: $dc $fd $94
	ld a, [$fcfe]                                    ; $48cb: $fa $fe $fc
	ccf                                              ; $48ce: $3f
	ccf                                              ; $48cf: $3f
	ld e, b                                          ; $48d0: $58
	ld [hl], d                                       ; $48d1: $72
	ret z                                            ; $48d2: $c8

	rst SubAFromHL                                          ; $48d3: $d7
	xor c                                            ; $48d4: $a9
	db $d3                                           ; $48d5: $d3
	sbc $e0                                          ; $48d6: $de $e0
	add b                                            ; $48d8: $80
	pop bc                                           ; $48d9: $c1
	rst JumpTable                                          ; $48da: $c7
	ret z                                            ; $48db: $c8

	sub [hl]                                         ; $48dc: $96
	xor a                                            ; $48dd: $af
	cp [hl]                                          ; $48de: $be
	rst $38                                          ; $48df: $ff
	ccf                                              ; $48e0: $3f
	ld c, [hl]                                       ; $48e1: $4e
	dec b                                            ; $48e2: $05
	jp $fdf1                                         ; $48e3: $c3 $f1 $fd


	ret                                              ; $48e6: $c9


	add b                                            ; $48e7: $80
	nop                                              ; $48e8: $00
	add c                                            ; $48e9: $81
	ldh [c], a                                       ; $48ea: $e2
	inc [hl]                                         ; $48eb: $34
	inc c                                            ; $48ec: $0c
	add b                                            ; $48ed: $80
	rst FarCall                                          ; $48ee: $f7
	ld l, b                                          ; $48ef: $68
	and b                                            ; $48f0: $a0
	nop                                              ; $48f1: $00
	add b                                            ; $48f2: $80
	ldh [$d7], a                                     ; $48f3: $e0 $d7
	ldh [$38], a                                     ; $48f5: $e0 $38
	or b                                             ; $48f7: $b0
	sbc [hl]                                         ; $48f8: $9e
	ld b, b                                          ; $48f9: $40
	ld a, d                                          ; $48fa: $7a
	ld l, $9d                                        ; $48fb: $2e $9d
	jr nc, jr_054_490f                               ; $48fd: $30 $10

	ld [hl], d                                       ; $48ff: $72
	call nz, $b09c                                   ; $4900: $c4 $9c $b0
	jr nc, jr_054_491d                               ; $4903: $30 $18

	ld [hl], e                                       ; $4905: $73
	ld hl, sp-$21                                    ; $4906: $f8 $df
	db $10                                           ; $4908: $10
	sbc [hl]                                         ; $4909: $9e
	ld [$d045], sp                                   ; $490a: $08 $45 $d0
	sbc [hl]                                         ; $490d: $9e
	nop                                              ; $490e: $00

jr_054_490f:
	ld l, b                                          ; $490f: $68
	add $e0                                          ; $4910: $c6 $e0
	sbc c                                            ; $4912: $99
	ld [bc], a                                       ; $4913: $02
	inc a                                            ; $4914: $3c
	ld [hl], b                                       ; $4915: $70
	ld b, [hl]                                       ; $4916: $46
	ld a, l                                          ; $4917: $7d
	pop hl                                           ; $4918: $e1
	ld h, l                                          ; $4919: $65
	ld e, [hl]                                       ; $491a: $5e
	ld a, e                                          ; $491b: $7b
	db $f4                                           ; $491c: $f4

jr_054_491d:
	sub [hl]                                         ; $491d: $96
	cp $f8                                           ; $491e: $fe $f8
	cp $ff                                           ; $4920: $fe $ff
	rst $38                                          ; $4922: $ff
	inc bc                                           ; $4923: $03
	inc c                                            ; $4924: $0c
	ld sp, $dec7                                     ; $4925: $31 $c7 $de
	rra                                              ; $4928: $1f
	sub [hl]                                         ; $4929: $96
	ccf                                              ; $492a: $3f
	ld d, h                                          ; $492b: $54
	ld d, d                                          ; $492c: $52
	ldh a, [c]                                       ; $492d: $f2
	ld a, [$f9f9]                                    ; $492e: $fa $f9 $f9
	db $fc                                           ; $4931: $fc
	db $fc                                           ; $4932: $fc
	sbc $ff                                          ; $4933: $de $ff
	ld a, l                                          ; $4935: $7d
	ld l, l                                          ; $4936: $6d
	ld a, h                                          ; $4937: $7c
	adc c                                            ; $4938: $89
	add [hl]                                         ; $4939: $86
	rst SubAFromBC                                          ; $493a: $e7
	cp e                                             ; $493b: $bb
	ld e, d                                          ; $493c: $5a
	ld d, l                                          ; $493d: $55
	ld e, l                                          ; $493e: $5d
	dec l                                            ; $493f: $2d
	ld a, [hl+]                                      ; $4940: $2a
	sub d                                            ; $4941: $92
	sub c                                            ; $4942: $91
	call $eeed                                       ; $4943: $cd $ed $ee
	and $f6                                          ; $4946: $e6 $f6
	rst FarCall                                          ; $4948: $f7
	rst $38                                          ; $4949: $ff
	rst $38                                          ; $494a: $ff
	ld a, e                                          ; $494b: $7b
	ei                                               ; $494c: $fb
	db $db                                           ; $494d: $db
	reti                                             ; $494e: $d9


	ld c, l                                          ; $494f: $4d
	ld c, h                                          ; $4950: $4c
	dec h                                            ; $4951: $25
	dec h                                            ; $4952: $25
	sbc $fc                                          ; $4953: $de $fc
	rst SubAFromDE                                          ; $4955: $df
	cp $de                                           ; $4956: $fe $de
	rst $38                                          ; $4958: $ff
	rst SubAFromDE                                          ; $4959: $df
	sbc a                                            ; $495a: $9f
	sub [hl]                                         ; $495b: $96
	sbc [hl]                                         ; $495c: $9e
	and [hl]                                         ; $495d: $a6
	xor b                                            ; $495e: $a8
	or e                                             ; $495f: $b3
	rst SubAFromBC                                          ; $4960: $e7
	set 7, b                                         ; $4961: $cb $f8
	ldh a, [$f9]                                     ; $4963: $f0 $f9
	ld [hl], l                                       ; $4965: $75
	dec b                                            ; $4966: $05
	sub c                                            ; $4967: $91
	cp $af                                           ; $4968: $fe $af
	dec a                                            ; $496a: $3d
	ld l, d                                          ; $496b: $6a
	db $f4                                           ; $496c: $f4
	ld c, b                                          ; $496d: $48
	ld [hl], b                                       ; $496e: $70
	ld [hl], b                                       ; $496f: $70
	cp b                                             ; $4970: $b8
	ld d, a                                          ; $4971: $57
	adc $9c                                          ; $4972: $ce $9c
	jr @-$4e                                         ; $4974: $18 $b0

	ld a, e                                          ; $4976: $7b
	ld [hl], e                                       ; $4977: $73
	sbc [hl]                                         ; $4978: $9e
	ldh [$f2], a                                     ; $4979: $e0 $f2
	sbc e                                            ; $497b: $9b
	ldh [$08], a                                     ; $497c: $e0 $08
	jr @+$0e                                         ; $497e: $18 $0c

	ei                                               ; $4980: $fb
	sbc c                                            ; $4981: $99
	inc c                                            ; $4982: $0c
	jr jr_054_4985                                   ; $4983: $18 $00

jr_054_4985:
	inc b                                            ; $4985: $04
	nop                                              ; $4986: $00
	nop                                              ; $4987: $00
	call c, $9c18                                    ; $4988: $dc $18 $9c
	ld e, $39                                        ; $498b: $1e $39
	inc h                                            ; $498d: $24
	db $dd                                           ; $498e: $dd
	ld [$f87f], sp                                   ; $498f: $08 $7f $f8
	ld a, a                                          ; $4992: $7f
	add b                                            ; $4993: $80
	ld l, a                                          ; $4994: $6f
	db $e3                                           ; $4995: $e3
	sbc [hl]                                         ; $4996: $9e
	add b                                            ; $4997: $80
	ld l, b                                          ; $4998: $68
	jr c, jr_054_4a19                                ; $4999: $38 $7e

	sub [hl]                                         ; $499b: $96
	sbc l                                            ; $499c: $9d
	nop                                              ; $499d: $00
	ld [bc], a                                       ; $499e: $02
	ldh [$bc], a                                     ; $499f: $e0 $bc
	sbc [hl]                                         ; $49a1: $9e
	ld h, [hl]                                       ; $49a2: $66
	db $e4                                           ; $49a3: $e4
	sbc [hl]                                         ; $49a4: $9e
	ld b, b                                          ; $49a5: $40
	ld [de], a                                       ; $49a6: $12
	ldh [$dc], a                                     ; $49a7: $e0 $dc
	rst $38                                          ; $49a9: $ff
	ld l, h                                          ; $49aa: $6c
	ld [hl-], a                                      ; $49ab: $32
	rst $38                                          ; $49ac: $ff
	ld a, l                                          ; $49ad: $7d
	bit 7, a                                         ; $49ae: $cb $7f
	ld d, $80                                        ; $49b0: $16 $80
	ldh a, [$fc]                                     ; $49b2: $f0 $fc
	rst $38                                          ; $49b4: $ff
	rst GetHLinHL                                          ; $49b5: $cf
	ld bc, $0f07                                     ; $49b6: $01 $07 $0f
	ld de, $3e38                                     ; $49b9: $11 $38 $3e
	ld a, a                                          ; $49bc: $7f
	ld a, a                                          ; $49bd: $7f
	rst JumpTable                                          ; $49be: $c7
	dec c                                            ; $49bf: $0d
	jp $0c30                                         ; $49c0: $c3 $30 $0c


	inc bc                                           ; $49c3: $03
	nop                                              ; $49c4: $00
	ret nz                                           ; $49c5: $c0

	rst $38                                          ; $49c6: $ff
	add e                                            ; $49c7: $83
	nop                                              ; $49c8: $00
	ret nz                                           ; $49c9: $c0

	ld [hl], b                                       ; $49ca: $70
	inc e                                            ; $49cb: $1c
	add a                                            ; $49cc: $87
	pop hl                                           ; $49cd: $e1
	cp $ff                                           ; $49ce: $fe $ff
	ld a, a                                          ; $49d0: $7f
	sbc l                                            ; $49d1: $9d
	db $db                                           ; $49d2: $db
	inc sp                                           ; $49d3: $33
	ld a, e                                          ; $49d4: $7b
	db $ec                                           ; $49d5: $ec
	sbc [hl]                                         ; $49d6: $9e
	ei                                               ; $49d7: $fb
	ld a, d                                          ; $49d8: $7a
	ret nz                                           ; $49d9: $c0

	sbc [hl]                                         ; $49da: $9e
	rrca                                             ; $49db: $0f
	ld a, e                                          ; $49dc: $7b
	add sp, -$69                                     ; $49dd: $e8 $97
	ld c, c                                          ; $49df: $49
	ld c, b                                          ; $49e0: $48
	and h                                            ; $49e1: $a4
	sub $eb                                          ; $49e2: $d6 $eb
	db $fd                                           ; $49e4: $fd
	ld a, [hl]                                       ; $49e5: $7e
	sbc a                                            ; $49e6: $9f
	jp c, $96ff                                      ; $49e7: $da $ff $96

	ld a, a                                          ; $49ea: $7f

jr_054_49eb:
	inc de                                           ; $49eb: $13
	sub e                                            ; $49ec: $93
	adc e                                            ; $49ed: $8b
	ld c, c                                          ; $49ee: $49
	dec h                                            ; $49ef: $25
	sub d                                            ; $49f0: $92
	ret                                              ; $49f1: $c9


	ld h, h                                          ; $49f2: $64
	ld a, c                                          ; $49f3: $79
	add e                                            ; $49f4: $83
	call c, $9dff                                    ; $49f5: $dc $ff $9d
	ld sp, hl                                        ; $49f8: $f9
	db $fd                                           ; $49f9: $fd
	ld [hl], a                                       ; $49fa: $77
	ld hl, sp-$6d                                    ; $49fb: $f8 $93
	ld a, a                                          ; $49fd: $7f
	sbc a                                            ; $49fe: $9f
	ld a, a                                          ; $49ff: $7f
	ld b, a                                          ; $4a00: $47
	ld b, e                                          ; $4a01: $43
	ld d, e                                          ; $4a02: $53
	inc a                                            ; $4a03: $3c
	add b                                            ; $4a04: $80
	pop hl                                           ; $4a05: $e1
	rst $38                                          ; $4a06: $ff
	ret nz                                           ; $4a07: $c0

	ldh [$de], a                                     ; $4a08: $e0 $de
	rst $38                                          ; $4a0a: $ff
	sbc l                                            ; $4a0b: $9d
	rst SubAFromDE                                          ; $4a0c: $df
	rst JumpTable                                          ; $4a0d: $c7
	ld a, c                                          ; $4a0e: $79
	nop                                              ; $4a0f: $00
	rst SubAFromDE                                          ; $4a10: $df
	add b                                            ; $4a11: $80
	sbc h                                            ; $4a12: $9c
	ret nz                                           ; $4a13: $c0

	ld h, b                                          ; $4a14: $60
	ld hl, sp+$77                                    ; $4a15: $f8 $77
	ld a, b                                          ; $4a17: $78
	ld a, a                                          ; $4a18: $7f

jr_054_4a19:
	db $ed                                           ; $4a19: $ed
	sbc [hl]                                         ; $4a1a: $9e
	ldh a, [$73]                                     ; $4a1b: $f0 $73
	ld [hl], c                                       ; $4a1d: $71
	ld [hl], e                                       ; $4a1e: $73
	add c                                            ; $4a1f: $81
	ld [hl], c                                       ; $4a20: $71
	inc d                                            ; $4a21: $14
	sbc l                                            ; $4a22: $9d
	ld b, $e7                                        ; $4a23: $06 $e7
	ld l, a                                          ; $4a25: $6f
	rst AddAOntoHL                                          ; $4a26: $ef
	add b                                            ; $4a27: $80
	ld bc, $ff1f                                     ; $4a28: $01 $1f $ff
	ld [hl+], a                                      ; $4a2b: $22
	ld l, l                                          ; $4a2c: $6d
	ld e, [hl]                                       ; $4a2d: $5e
	push af                                          ; $4a2e: $f5
	ld [$b4b8], a                                    ; $4a2f: $ea $b8 $b4
	ld c, b                                          ; $4a32: $48
	ccf                                              ; $4a33: $3f
	inc sp                                           ; $4a34: $33
	ld h, c                                          ; $4a35: $61
	ld h, b                                          ; $4a36: $60
	ldh a, [$d0]                                     ; $4a37: $f0 $d0
	ret z                                            ; $4a39: $c8

	and h                                            ; $4a3a: $a4
	jr jr_054_4a43                                   ; $4a3b: $18 $06

	add l                                            ; $4a3d: $85
	pop hl                                           ; $4a3e: $e1
	ret z                                            ; $4a3f: $c8

	ld h, h                                          ; $4a40: $64
	ld [hl-], a                                      ; $4a41: $32
	add hl, sp                                       ; $4a42: $39

jr_054_4a43:
	ld hl, sp-$02                                    ; $4a43: $f8 $fe
	ei                                               ; $4a45: $fb
	sbc h                                            ; $4a46: $9c
	sbc h                                            ; $4a47: $9c
	ld b, [hl]                                       ; $4a48: $46
	ld b, e                                          ; $4a49: $43
	ld hl, $6079                                     ; $4a4a: $21 $79 $60
	sbc c                                            ; $4a4d: $99
	add b                                            ; $4a4e: $80
	ld b, b                                          ; $4a4f: $40
	and b                                            ; $4a50: $a0
	ld d, b                                          ; $4a51: $50
	jr nc, jr_054_4a5c                               ; $4a52: $30 $08

	ld a, e                                          ; $4a54: $7b
	ld hl, sp+$7f                                    ; $4a55: $f8 $7f
	or c                                             ; $4a57: $b1
	sbc h                                            ; $4a58: $9c
	jr nc, jr_054_49eb                               ; $4a59: $30 $90

	ret c                                            ; $4a5b: $d8

jr_054_4a5c:
	cp $9e                                           ; $4a5c: $fe $9e
	ld [$7f6a], sp                                   ; $4a5e: $08 $6a $7f
	db $eb                                           ; $4a61: $eb
	ld c, d                                          ; $4a62: $4a
	sub b                                            ; $4a63: $90
	sbc l                                            ; $4a64: $9d
	ld h, a                                          ; $4a65: $67
	rra                                              ; $4a66: $1f
	ld bc, $f49f                                     ; $4a67: $01 $9f $f4
	reti                                             ; $4a6a: $d9


	rst $38                                          ; $4a6b: $ff
	daa                                              ; $4a6c: $27
	ldh a, [$9e]                                     ; $4a6d: $f0 $9e
	jp $c0de                                         ; $4a6f: $c3 $de $c0


	rst SubAFromDE                                          ; $4a72: $df
	ldh [$7e], a                                     ; $4a73: $e0 $7e
	cp [hl]                                          ; $4a75: $be
	sub l                                            ; $4a76: $95
	ld c, a                                          ; $4a77: $4f
	ld b, e                                          ; $4a78: $43
	ld [hl], b                                       ; $4a79: $70
	ld a, h                                          ; $4a7a: $7c
	daa                                              ; $4a7b: $27
	ld sp, $0f1c                                     ; $4a7c: $31 $1c $0f
	ldh a, [$fc]                                     ; $4a7f: $f0 $fc
	halt                                             ; $4a81: $76
	reti                                             ; $4a82: $d9


	rst $38                                          ; $4a83: $ff
	ld a, c                                          ; $4a84: $79
	ld a, h                                          ; $4a85: $7c
	ld a, a                                          ; $4a86: $7f
	rst FarCall                                          ; $4a87: $f7
	adc a                                            ; $4a88: $8f
	jp $1c70                                         ; $4a89: $c3 $70 $1c


	nop                                              ; $4a8c: $00
	rlca                                             ; $4a8d: $07
	add hl, bc                                       ; $4a8e: $09
	ld de, $3830                                     ; $4a8f: $11 $30 $38
	ld a, h                                          ; $4a92: $7c
	ld h, b                                          ; $4a93: $60
	ld h, e                                          ; $4a94: $63
	rrca                                             ; $4a95: $0f
	sbc a                                            ; $4a96: $9f
	cp [hl]                                          ; $4a97: $be
	ccf                                              ; $4a98: $3f
	sbc $7f                                          ; $4a99: $de $7f
	ld a, a                                          ; $4a9b: $7f
	db $e3                                           ; $4a9c: $e3
	sbc c                                            ; $4a9d: $99
	ret nz                                           ; $4a9e: $c0

	di                                               ; $4a9f: $f3
	ld a, h                                          ; $4aa0: $7c
	rra                                              ; $4aa1: $1f
	ld b, $01                                        ; $4aa2: $06 $01
	sbc $ff                                          ; $4aa4: $de $ff
	sub d                                            ; $4aa6: $92
	ld a, h                                          ; $4aa7: $7c
	sbc a                                            ; $4aa8: $9f

jr_054_4aa9:
	rst SubAFromBC                                          ; $4aa9: $e7
	ld sp, hl                                        ; $4aaa: $f9
	cp $b2                                           ; $4aab: $fe $b2
	reti                                             ; $4aad: $d9


	db $fc                                           ; $4aae: $fc
	ld a, $cf                                        ; $4aaf: $3e $cf
	inc sp                                           ; $4ab1: $33
	inc c                                            ; $4ab2: $0c
	add e                                            ; $4ab3: $83
	db $dd                                           ; $4ab4: $dd
	rst $38                                          ; $4ab5: $ff
	adc a                                            ; $4ab6: $8f
	ccf                                              ; $4ab7: $3f
	rst GetHLinHL                                          ; $4ab8: $cf
	di                                               ; $4ab9: $f3
	ld a, h                                          ; $4aba: $7c
	ld b, e                                          ; $4abb: $43
	ld l, [hl]                                       ; $4abc: $6e
	cp e                                             ; $4abd: $bb
	ld d, [hl]                                       ; $4abe: $56
	add hl, hl                                       ; $4abf: $29
	sbc b                                            ; $4ac0: $98
	and $31                                          ; $4ac1: $e6 $31
	rst $38                                          ; $4ac3: $ff
	or c                                             ; $4ac4: $b1
	call c, Call_054_79ef                            ; $4ac5: $dc $ef $79
	ld h, c                                          ; $4ac8: $61
	ld a, [hl]                                       ; $4ac9: $7e
	push bc                                          ; $4aca: $c5
	sub b                                            ; $4acb: $90
	rst SubAFromBC                                          ; $4acc: $e7
	ld c, e                                          ; $4acd: $4b
	sub c                                            ; $4ace: $91
	and b                                            ; $4acf: $a0
	ld d, d                                          ; $4ad0: $52
	ld a, [bc]                                       ; $4ad1: $0a
	adc b                                            ; $4ad2: $88
	adc a                                            ; $4ad3: $8f
	jp $0831                                         ; $4ad4: $c3 $31 $08


	ret nz                                           ; $4ad7: $c0

	ldh [$f1], a                                     ; $4ad8: $e0 $f1
	pop af                                           ; $4ada: $f1
	sbc $ff                                          ; $4adb: $de $ff
	sbc d                                            ; $4add: $9a
	cp $f9                                           ; $4ade: $fe $f9
	ld l, [hl]                                       ; $4ae0: $6e
	inc a                                            ; $4ae1: $3c
	ld a, $dd                                        ; $4ae2: $3e $dd
	rst $38                                          ; $4ae4: $ff
	sub b                                            ; $4ae5: $90
	ld a, [hl]                                       ; $4ae6: $7e
	jr nc, jr_054_4b09                               ; $4ae7: $30 $20

	sbc h                                            ; $4ae9: $9c
	rst SubAFromHL                                          ; $4aea: $d7
	and a                                            ; $4aeb: $a7
	ld b, a                                          ; $4aec: $47
	rlca                                             ; $4aed: $07
	rlca                                             ; $4aee: $07
	rrca                                             ; $4aef: $0f
	rrca                                             ; $4af0: $0f
	rlca                                             ; $4af1: $07
	rst AddAOntoHL                                          ; $4af2: $ef
	rst GetHLinHL                                          ; $4af3: $cf
	adc a                                            ; $4af4: $8f
	ld a, e                                          ; $4af5: $7b
	ld a, [$07df]                                    ; $4af6: $fa $df $07
	add b                                            ; $4af9: $80
	ld d, [hl]                                       ; $4afa: $56
	add e                                            ; $4afb: $83
	ld h, b                                          ; $4afc: $60
	ld d, h                                          ; $4afd: $54
	and e                                            ; $4afe: $a3
	pop de                                           ; $4aff: $d1
	xor l                                            ; $4b00: $ad
	ld d, c                                          ; $4b01: $51
	add b                                            ; $4b02: $80
	ret nz                                           ; $4b03: $c0

	pop bc                                           ; $4b04: $c1
	and c                                            ; $4b05: $a1
	sub b                                            ; $4b06: $90
	adc b                                            ; $4b07: $88
	ret nz                                           ; $4b08: $c0

jr_054_4b09:
	and $74                                          ; $4b09: $e6 $74
	ld l, d                                          ; $4b0b: $6a
	xor c                                            ; $4b0c: $a9
	db $ec                                           ; $4b0d: $ec
	xor h                                            ; $4b0e: $ac
	ld c, [hl]                                       ; $4b0f: $4e
	adc $2f                                          ; $4b10: $ce $2f
	jr @+$1e                                         ; $4b12: $18 $1c

	ld e, $9f                                        ; $4b14: $1e $9f
	rst SubAFromDE                                          ; $4b16: $df
	rst $38                                          ; $4b17: $ff
	ld a, a                                          ; $4b18: $7f
	adc [hl]                                         ; $4b19: $8e
	rst $38                                          ; $4b1a: $ff
	jr z, jr_054_4aa9                                ; $4b1b: $28 $8c

	inc d                                            ; $4b1d: $14
	ld b, d                                          ; $4b1e: $42
	add [hl]                                         ; $4b1f: $86
	ld hl, $1041                                     ; $4b20: $21 $41 $10
	ret z                                            ; $4b23: $c8

	ld h, h                                          ; $4b24: $64
	ld h, h                                          ; $4b25: $64
	ld [hl], $32                                     ; $4b26: $36 $32
	sbc e                                            ; $4b28: $9b
	sbc e                                            ; $4b29: $9b
	rst GetHLinHL                                          ; $4b2a: $cf
	ld c, d                                          ; $4b2b: $4a
	ld a, [$9100]                                    ; $4b2c: $fa $00 $91
	ldh [$dc], a                                     ; $4b2f: $e0 $dc
	sbc [hl]                                         ; $4b31: $9e
	ld bc, $c046                                     ; $4b32: $01 $46 $c0
	ld a, [hl]                                       ; $4b35: $7e
	push af                                          ; $4b36: $f5
	db $fc                                           ; $4b37: $fc
	sbc h                                            ; $4b38: $9c
	ret nz                                           ; $4b39: $c0

	jr nc, @+$0e                                     ; $4b3a: $30 $0c

	ld h, $b0                                        ; $4b3c: $26 $b0
	halt                                             ; $4b3e: $76
	call z, $c673                                    ; $4b3f: $cc $73 $c6
	sub l                                            ; $4b42: $95
	ret nz                                           ; $4b43: $c0

	ldh a, [$fc]                                     ; $4b44: $f0 $fc
	di                                               ; $4b46: $f3
	ldh a, [$f0]                                     ; $4b47: $f0 $f0
	adc h                                            ; $4b49: $8c
	rst JumpTable                                          ; $4b4a: $c7
	pop af                                           ; $4b4b: $f1
	inc a                                            ; $4b4c: $3c
	sbc $1f                                          ; $4b4d: $de $1f
	ld a, a                                          ; $4b4f: $7f
	ld d, b                                          ; $4b50: $50
	ld a, [hl]                                       ; $4b51: $7e
	inc e                                            ; $4b52: $1c
	ld a, h                                          ; $4b53: $7c
	ld c, c                                          ; $4b54: $49
	ld a, [hl]                                       ; $4b55: $7e
	cp b                                             ; $4b56: $b8
	sbc b                                            ; $4b57: $98
	inc a                                            ; $4b58: $3c
	inc bc                                           ; $4b59: $03
	ld a, a                                          ; $4b5a: $7f
	ld a, a                                          ; $4b5b: $7f
	ccf                                              ; $4b5c: $3f
	ccf                                              ; $4b5d: $3f
	rst SubAFromDE                                          ; $4b5e: $df
	ld l, a                                          ; $4b5f: $6f
	ret z                                            ; $4b60: $c8

	ld a, c                                          ; $4b61: $79
	or a                                             ; $4b62: $b7
	sbc l                                            ; $4b63: $9d
	ldh a, [$3c]                                     ; $4b64: $f0 $3c
	reti                                             ; $4b66: $d9


	rst $38                                          ; $4b67: $ff
	sbc h                                            ; $4b68: $9c
	ld h, b                                          ; $4b69: $60
	jr jr_054_4b72                                   ; $4b6a: $18 $06

	ld [hl], e                                       ; $4b6c: $73
	sub d                                            ; $4b6d: $92
	halt                                             ; $4b6e: $76
	or h                                             ; $4b6f: $b4
	db $dd                                           ; $4b70: $dd
	rst $38                                          ; $4b71: $ff

jr_054_4b72:
	add b                                            ; $4b72: $80
	call z, $0e33                                    ; $4b73: $cc $33 $0e
	add d                                            ; $4b76: $82
	ld d, c                                          ; $4b77: $51
	inc h                                            ; $4b78: $24
	add hl, bc                                       ; $4b79: $09
	inc b                                            ; $4b7a: $04
	ccf                                              ; $4b7b: $3f
	rst GetHLinHL                                          ; $4b7c: $cf
	pop af                                           ; $4b7d: $f1
	ld a, h                                          ; $4b7e: $7c
	adc [hl]                                         ; $4b7f: $8e
	jp $f8f0                                         ; $4b80: $c3 $f0 $f8


	ld h, l                                          ; $4b83: $65
	dec d                                            ; $4b84: $15
	res 5, e                                         ; $4b85: $cb $ab
	scf                                              ; $4b87: $37
	sbc l                                            ; $4b88: $9d

jr_054_4b89:
	dec l                                            ; $4b89: $2d
	sub [hl]                                         ; $4b8a: $96
	ld hl, sp-$08                                    ; $4b8b: $f8 $f8
	db $fc                                           ; $4b8d: $fc
	ld a, h                                          ; $4b8e: $7c
	inc e                                            ; $4b8f: $1c
	ld c, $c6                                        ; $4b90: $0e $c6
	sbc c                                            ; $4b92: $99
	ld h, e                                          ; $4b93: $63
	sbc a                                            ; $4b94: $9f
	sbc a                                            ; $4b95: $9f
	ld e, [hl]                                       ; $4b96: $5e
	ld c, l                                          ; $4b97: $4d
	ld c, e                                          ; $4b98: $4b
	sbc $2f                                          ; $4b99: $de $2f
	add b                                            ; $4b9b: $80
	di                                               ; $4b9c: $f3
	pop af                                           ; $4b9d: $f1
	or $f8                                           ; $4b9e: $f6 $f8
	ld sp, hl                                        ; $4ba0: $f9
	ld a, [$fbfa]                                    ; $4ba1: $fa $fa $fb
	rlca                                             ; $4ba4: $07
	push bc                                          ; $4ba5: $c5
	push hl                                          ; $4ba6: $e5
	push af                                          ; $4ba7: $f5
	dec a                                            ; $4ba8: $3d
	inc e                                            ; $4ba9: $1c
	rra                                              ; $4baa: $1f
	db $fd                                           ; $4bab: $fd
	rlca                                             ; $4bac: $07
	rst JumpTable                                          ; $4bad: $c7
	daa                                              ; $4bae: $27
	rst SubAFromHL                                          ; $4baf: $d7
	rst AddAOntoHL                                          ; $4bb0: $ef
	rst SubAFromBC                                          ; $4bb1: $e7
	db $e3                                           ; $4bb2: $e3
	rst $38                                          ; $4bb3: $ff
	ld l, $a5                                        ; $4bb4: $2e $a5
	or c                                             ; $4bb6: $b1
	reti                                             ; $4bb7: $d9


	call Call_054_71e3                               ; $4bb8: $cd $e3 $71
	sbc e                                            ; $4bbb: $9b
	ld sp, hl                                        ; $4bbc: $f9
	di                                               ; $4bbd: $f3
	ei                                               ; $4bbe: $fb
	rst SubAFromDE                                          ; $4bbf: $df
	halt                                             ; $4bc0: $76
	add b                                            ; $4bc1: $80
	sub [hl]                                         ; $4bc2: $96
	sbc a                                            ; $4bc3: $9f
	cpl                                              ; $4bc4: $2f
	dec a                                            ; $4bc5: $3d
	ld e, $9f                                        ; $4bc6: $1e $9f
	sbc a                                            ; $4bc8: $9f
	sbc [hl]                                         ; $4bc9: $9e
	cp d                                             ; $4bca: $ba
	add sp, -$25                                     ; $4bcb: $e8 $db
	rst $38                                          ; $4bcd: $ff
	add h                                            ; $4bce: $84
	db $fc                                           ; $4bcf: $fc
	ldh a, [rAUD4LEN]                                ; $4bd0: $f0 $20
	sbc b                                            ; $4bd2: $98
	ret nz                                           ; $4bd3: $c0

	ld l, h                                          ; $4bd4: $6c
	ldh a, [$b6]                                     ; $4bd5: $f0 $b6
	ld a, d                                          ; $4bd7: $7a
	dec d                                            ; $4bd8: $15
	rst GetHLinHL                                          ; $4bd9: $cf
	rst SubAFromBC                                          ; $4bda: $e7
	rst FarCall                                          ; $4bdb: $f7
	di                                               ; $4bdc: $f3
	ei                                               ; $4bdd: $fb
	ld a, c                                          ; $4bde: $79
	dec a                                            ; $4bdf: $3d
	ld a, $80                                        ; $4be0: $3e $80
	ld b, b                                          ; $4be2: $40
	ld b, b                                          ; $4be3: $40
	jr nz, jr_054_4c06                               ; $4be4: $20 $20

	db $10                                           ; $4be6: $10
	db $10                                           ; $4be7: $10
	ld [$7180], sp                                   ; $4be8: $08 $80 $71
	ld sp, hl                                        ; $4beb: $f9
	ld a, a                                          ; $4bec: $7f
	sub b                                            ; $4bed: $90
	rst $38                                          ; $4bee: $ff
	sbc e                                            ; $4bef: $9b
	ld b, $66                                        ; $4bf0: $06 $66
	ld e, b                                          ; $4bf2: $58
	ld a, a                                          ; $4bf3: $7f
	ld c, l                                          ; $4bf4: $4d
	sbc [hl]                                         ; $4bf5: $9e
	rst SubAFromDE                                          ; $4bf6: $df
	ld b, b                                          ; $4bf7: $40
	ldh [$c7], a                                     ; $4bf8: $e0 $c7
	ld a, [hl]                                       ; $4bfa: $7e
	ld sp, $1891                                     ; $4bfb: $31 $91 $18
	inc b                                            ; $4bfe: $04
	ret nz                                           ; $4bff: $c0

	ldh [$c0], a                                     ; $4c00: $e0 $c0
	sbc b                                            ; $4c02: $98
	inc bc                                           ; $4c03: $03
	add b                                            ; $4c04: $80
	ld h, b                                          ; $4c05: $60

jr_054_4c06:
	jr jr_054_4b89                                   ; $4c06: $18 $81

	rst SubAFromBC                                          ; $4c08: $e7
	rst SubAFromDE                                          ; $4c09: $df
	cp a                                             ; $4c0a: $bf
	halt                                             ; $4c0b: $76
	or h                                             ; $4c0c: $b4
	sbc e                                            ; $4c0d: $9b
	add $62                                          ; $4c0e: $c6 $62
	ld sp, $7a0c                                     ; $4c10: $31 $0c $7a
	or h                                             ; $4c13: $b4
	sbc [hl]                                         ; $4c14: $9e
	dec c                                            ; $4c15: $0d
	ld [hl], l                                       ; $4c16: $75
	ldh [$97], a                                     ; $4c17: $e0 $97
	ld b, $18                                        ; $4c19: $06 $18
	ld h, b                                          ; $4c1b: $60
	add b                                            ; $4c1c: $80
	nop                                              ; $4c1d: $00
	ldh a, [hDisp0_WY]                                     ; $4c1e: $f0 $88
	call nz, $ffdc                                   ; $4c20: $c4 $dc $ff
	sbc h                                            ; $4c23: $9c
	rrca                                             ; $4c24: $0f
	add a                                            ; $4c25: $87
	jp $b872                                         ; $4c26: $c3 $72 $b8


	sbc h                                            ; $4c29: $9c
	inc bc                                           ; $4c2a: $03
	rrca                                             ; $4c2b: $0f
	ccf                                              ; $4c2c: $3f
	ld h, d                                          ; $4c2d: $62
	sbc b                                            ; $4c2e: $98
	ld a, a                                          ; $4c2f: $7f
	add d                                            ; $4c30: $82
	ld a, [hl]                                       ; $4c31: $7e
	cp e                                             ; $4c32: $bb
	sbc h                                            ; $4c33: $9c
	db $fc                                           ; $4c34: $fc
	ldh [$80], a                                     ; $4c35: $e0 $80
	reti                                             ; $4c37: $d9


	rst $38                                          ; $4c38: $ff
	ld [hl], l                                       ; $4c39: $75
	sub h                                            ; $4c3a: $94
	sbc [hl]                                         ; $4c3b: $9e
	ldh [$7a], a                                     ; $4c3c: $e0 $7a
	call z, $e063                                    ; $4c3e: $cc $63 $e0
	ld a, d                                          ; $4c41: $7a
	or h                                             ; $4c42: $b4
	ld a, a                                          ; $4c43: $7f
	db $ec                                           ; $4c44: $ec
	sbc l                                            ; $4c45: $9d
	ld e, $f9                                        ; $4c46: $1e $f9
	reti                                             ; $4c48: $d9


	rst $38                                          ; $4c49: $ff
	sub h                                            ; $4c4a: $94
	ld [bc], a                                       ; $4c4b: $02
	inc b                                            ; $4c4c: $04
	ld [bc], a                                       ; $4c4d: $02
	ld bc, $cc04                                     ; $4c4e: $01 $04 $cc
	db $fc                                           ; $4c51: $fc
	rst $38                                          ; $4c52: $ff
	db $fc                                           ; $4c53: $fc
	ld hl, sp-$04                                    ; $4c54: $f8 $fc
	ld [hl], d                                       ; $4c56: $72
	or b                                             ; $4c57: $b0
	add b                                            ; $4c58: $80
	ld c, e                                          ; $4c59: $4b
	inc h                                            ; $4c5a: $24
	ld [bc], a                                       ; $4c5b: $02
	pop de                                           ; $4c5c: $d1
	ld a, [hl+]                                      ; $4c5d: $2a
	sub c                                            ; $4c5e: $91
	push bc                                          ; $4c5f: $c5
	ldh [c], a                                       ; $4c60: $e2
	ld sp, $1c19                                     ; $4c61: $31 $19 $1c
	ld c, $c7                                        ; $4c64: $0e $c7
	rst SubAFromBC                                          ; $4c66: $e7
	di                                               ; $4c67: $f3
	ld sp, hl                                        ; $4c68: $f9
	cpl                                              ; $4c69: $2f
	xor a                                            ; $4c6a: $af
	cp h                                             ; $4c6b: $bc
	db $fc                                           ; $4c6c: $fc
	jr c, jr_054_4caa                                ; $4c6d: $38 $3b

	sub $99                                          ; $4c6f: $d6 $99
	ld a, [$fefb]                                    ; $4c71: $fa $fb $fe
	ld a, b                                          ; $4c74: $78
	ld a, b                                          ; $4c75: $78
	or c                                             ; $4c76: $b1
	cp [hl]                                          ; $4c77: $be
	add b                                            ; $4c78: $80
	reti                                             ; $4c79: $d9


	rlca                                             ; $4c7a: $07
	db $fd                                           ; $4c7b: $fd
	rra                                              ; $4c7c: $1f
	dec a                                            ; $4c7d: $3d
	db $ed                                           ; $4c7e: $ed
	adc h                                            ; $4c7f: $8c
	inc b                                            ; $4c80: $04
	jp nz, $fffd                                     ; $4c81: $c2 $fd $ff

	rlca                                             ; $4c84: $07
	rra                                              ; $4c85: $1f
	ld l, a                                          ; $4c86: $6f
	add a                                            ; $4c87: $87

jr_054_4c88:
	rlca                                             ; $4c88: $07
	add a                                            ; $4c89: $87
	sub [hl]                                         ; $4c8a: $96
	rlca                                             ; $4c8b: $07
	cp a                                             ; $4c8c: $bf
	add c                                            ; $4c8d: $81
	ld c, $9c                                        ; $4c8e: $0e $9c
	xor b                                            ; $4c90: $a8
	push de                                          ; $4c91: $d5
	rrca                                             ; $4c92: $0f
	ld [bc], a                                       ; $4c93: $02
	ld c, $03                                        ; $4c94: $0e $03
	add a                                            ; $4c96: $87
	sbc e                                            ; $4c97: $9b
	add l                                            ; $4c98: $85
	rst FarCall                                          ; $4c99: $f7
	xor $a7                                          ; $4c9a: $ee $a7
	inc a                                            ; $4c9c: $3c
	jr @+$01                                         ; $4c9d: $18 $ff

	dec d                                            ; $4c9f: $15
	ld a, [hl-]                                      ; $4ca0: $3a
	sub a                                            ; $4ca1: $97
	rlca                                             ; $4ca2: $07
	ld h, [hl]                                       ; $4ca3: $66
	jr jr_054_4cd6                                   ; $4ca4: $18 $30

	rst $38                                          ; $4ca6: $ff
	xor $c7                                          ; $4ca7: $ee $c7
	ld b, c                                          ; $4ca9: $41

jr_054_4caa:
	ld b, b                                          ; $4caa: $40
	cp h                                             ; $4cab: $bc
	ld d, $1d                                        ; $4cac: $16 $1d
	rst $38                                          ; $4cae: $ff
	rst FarCall                                          ; $4caf: $f7
	ei                                               ; $4cb0: $fb
	push af                                          ; $4cb1: $f5
	ldh [c], a                                       ; $4cb2: $e2
	sbc $1f                                          ; $4cb3: $de $1f
	ld a, a                                          ; $4cb5: $7f
	ld d, c                                          ; $4cb6: $51
	sub b                                            ; $4cb7: $90
	rlca                                             ; $4cb8: $07
	inc bc                                           ; $4cb9: $03
	add c                                            ; $4cba: $81
	ld [$0404], sp                                   ; $4cbb: $08 $04 $04
	add d                                            ; $4cbe: $82
	add d                                            ; $4cbf: $82
	pop bc                                           ; $4cc0: $c1
	pop bc                                           ; $4cc1: $c1
	ldh [$f8], a                                     ; $4cc2: $e0 $f8
	db $fc                                           ; $4cc4: $fc
	db $fc                                           ; $4cc5: $fc
	cp $77                                           ; $4cc6: $fe $77
	adc a                                            ; $4cc8: $8f
	ld a, [$c09e]                                    ; $4cc9: $fa $9e $c0
	ld l, d                                          ; $4ccc: $6a
	push bc                                          ; $4ccd: $c5
	ld l, e                                          ; $4cce: $6b
	ld hl, sp-$0e                                    ; $4ccf: $f8 $f2
	sbc [hl]                                         ; $4cd1: $9e
	jr nz, @-$1e                                     ; $4cd2: $20 $e0

	rst SubAFromHL                                          ; $4cd4: $d7
	sub h                                            ; $4cd5: $94

jr_054_4cd6:
	jr c, jr_054_4cdc                                ; $4cd6: $38 $04

	ld h, b                                          ; $4cd8: $60
	ld h, b                                          ; $4cd9: $60
	ldh a, [$e8]                                     ; $4cda: $f0 $e8

jr_054_4cdc:
	ldh a, [$7b]                                     ; $4cdc: $f0 $7b
	cp a                                             ; $4cde: $bf
	ld a, a                                          ; $4cdf: $7f
	ld a, a                                          ; $4ce0: $7f
	call c, Call_054_6dff                            ; $4ce1: $dc $ff $6d
	jp nc, $885d                                     ; $4ce4: $d2 $5d $88

	sub [hl]                                         ; $4ce7: $96
	inc a                                            ; $4ce8: $3c
	sbc e                                            ; $4ce9: $9b
	rst JumpTable                                          ; $4cea: $c7
	inc hl                                           ; $4ceb: $23
	jr jr_054_4cfa                                   ; $4cec: $18 $0c

	inc bc                                           ; $4cee: $03
	ld bc, $daf3                                     ; $4cef: $01 $f3 $da
	rst $38                                          ; $4cf2: $ff
	sub a                                            ; $4cf3: $97
	cp $f8                                           ; $4cf4: $fe $f8
	ldh [$80], a                                     ; $4cf6: $e0 $80
	ret nz                                           ; $4cf8: $c0

	ld h, b                                          ; $4cf9: $60

jr_054_4cfa:
	jr jr_054_4c88                                   ; $4cfa: $18 $8c

	ld d, c                                          ; $4cfc: $51
	ld e, b                                          ; $4cfd: $58
	sbc h                                            ; $4cfe: $9c
	ld [bc], a                                       ; $4cff: $02
	ld [$7220], sp                                   ; $4d00: $08 $20 $72
	ld [bc], a                                       ; $4d03: $02
	sub h                                            ; $4d04: $94
	pop af                                           ; $4d05: $f1
	rst JumpTable                                          ; $4d06: $c7
	rra                                              ; $4d07: $1f
	inc bc                                           ; $4d08: $03
	ld c, $39                                        ; $4d09: $0e $39
	rst SubAFromBC                                          ; $4d0b: $e7
	sbc [hl]                                         ; $4d0c: $9e
	ld a, l                                          ; $4d0d: $7d
	ld a, a                                          ; $4d0e: $7f
	ld a, e                                          ; $4d0f: $7b
	ld [hl], a                                       ; $4d10: $77
	db $f4                                           ; $4d11: $f4
	add h                                            ; $4d12: $84
	ld a, a                                          ; $4d13: $7f
	cp $fc                                           ; $4d14: $fe $fc
	db $fc                                           ; $4d16: $fc
	ldh a, [$d0]                                     ; $4d17: $f0 $d0
	xor a                                            ; $4d19: $af
	ld l, a                                          ; $4d1a: $6f
	ret nc                                           ; $4d1b: $d0

	rst SubAFromDE                                          ; $4d1c: $df
	and c                                            ; $4d1d: $a1

jr_054_4d1e:
	or b                                             ; $4d1e: $b0
	rst $38                                          ; $4d1f: $ff
	rst AddAOntoHL                                          ; $4d20: $ef
	ret nc                                           ; $4d21: $d0

	sub b                                            ; $4d22: $90
	jr nz, jr_054_4d45                               ; $4d23: $20 $20

	ld b, b                                          ; $4d25: $40
	ld b, b                                          ; $4d26: $40
	ld a, a                                          ; $4d27: $7f
	ccf                                              ; $4d28: $3f
	rra                                              ; $4d29: $1f
	rst GetHLinHL                                          ; $4d2a: $cf
	daa                                              ; $4d2b: $27
	sub a                                            ; $4d2c: $97
	db $eb                                           ; $4d2d: $eb
	halt                                             ; $4d2e: $76
	add b                                            ; $4d2f: $80
	ld a, c                                          ; $4d30: $79
	ld b, a                                          ; $4d31: $47
	ld a, a                                          ; $4d32: $7f
	rra                                              ; $4d33: $1f
	sub [hl]                                         ; $4d34: $96
	and h                                            ; $4d35: $a4
	pop af                                           ; $4d36: $f1
	ld h, [hl]                                       ; $4d37: $66
	add l                                            ; $4d38: $85
	ld [bc], a                                       ; $4d39: $02
	ld [bc], a                                       ; $4d3a: $02
	add c                                            ; $4d3b: $81
	add c                                            ; $4d3c: $81
	ld sp, hl                                        ; $4d3d: $f9
	ld a, e                                          ; $4d3e: $7b
	jr nz, jr_054_4d1e                               ; $4d3f: $20 $dd

	rst $38                                          ; $4d41: $ff
	add h                                            ; $4d42: $84
	rst AddAOntoHL                                          ; $4d43: $ef
	ld c, h                                          ; $4d44: $4c

jr_054_4d45:
	ld [hl], a                                       ; $4d45: $77
	and [hl]                                         ; $4d46: $a6
	cp d                                             ; $4d47: $ba
	rst SubAFromHL                                          ; $4d48: $d7
	ld e, l                                          ; $4d49: $5d
	ld e, e                                          ; $4d4a: $5b
	sbc $e8                                          ; $4d4b: $de $e8
	rst AddAOntoHL                                          ; $4d4d: $ef
	ld [hl], h                                       ; $4d4e: $74
	halt                                             ; $4d4f: $76
	ld a, [hl-]                                      ; $4d50: $3a
	cp e                                             ; $4d51: $bb
	cp l                                             ; $4d52: $bd
	ld [bc], a                                       ; $4d53: $02
	ld [bc], a                                       ; $4d54: $02
	rst $38                                          ; $4d55: $ff
	dec a                                            ; $4d56: $3d
	dec b                                            ; $4d57: $05
	dec c                                            ; $4d58: $0d
	inc c                                            ; $4d59: $0c
	adc l                                            ; $4d5a: $8d
	inc bc                                           ; $4d5b: $03
	inc bc                                           ; $4d5c: $03
	rst $38                                          ; $4d5d: $ff
	db $dd                                           ; $4d5e: $dd
	rlca                                             ; $4d5f: $07
	sub c                                            ; $4d60: $91
	ld b, $ea                                        ; $4d61: $06 $ea
	cp d                                             ; $4d63: $ba
	ld d, h                                          ; $4d64: $54
	ld [hl+], a                                      ; $4d65: $22
	cpl                                              ; $4d66: $2f
	ld h, l                                          ; $4d67: $65
	push af                                          ; $4d68: $f5
	push de                                          ; $4d69: $d5
	call c, $b0d4                                    ; $4d6a: $dc $d4 $b0
	db $f4                                           ; $4d6d: $f4
	db $f4                                           ; $4d6e: $f4
	sbc $fe                                          ; $4d6f: $de $fe
	add a                                            ; $4d71: $87
	ld b, c                                          ; $4d72: $41
	ld e, c                                          ; $4d73: $59
	ld d, l                                          ; $4d74: $55
	ld d, d                                          ; $4d75: $52
	ld sp, $e939                                     ; $4d76: $31 $39 $e9
	db $db                                           ; $4d79: $db
	ld [bc], a                                       ; $4d7a: $02
	ld [bc], a                                       ; $4d7b: $02
	ld a, [bc]                                       ; $4d7c: $0a
	rrca                                             ; $4d7d: $0f
	ld c, a                                          ; $4d7e: $4f
	ld c, a                                          ; $4d7f: $4f
	ld e, a                                          ; $4d80: $5f
	ld a, a                                          ; $4d81: $7f
	pop bc                                           ; $4d82: $c1
	ret nz                                           ; $4d83: $c0

	add c                                            ; $4d84: $81
	add c                                            ; $4d85: $81
	add b                                            ; $4d86: $80
	nop                                              ; $4d87: $00
	ld b, b                                          ; $4d88: $40
	and b                                            ; $4d89: $a0
	jp c, $9580                                      ; $4d8a: $da $80 $95

	ld b, b                                          ; $4d8d: $40
	ld h, b                                          ; $4d8e: $60
	or b                                             ; $4d8f: $b0
	ret nc                                           ; $4d90: $d0

	add sp, -$08                                     ; $4d91: $e8 $f8
	db $f4                                           ; $4d93: $f4
	ld a, h                                          ; $4d94: $7c
	ld a, d                                          ; $4d95: $7a
	rst $38                                          ; $4d96: $ff
	ld a, e                                          ; $4d97: $7b
	add a                                            ; $4d98: $87
	rst SubAFromDE                                          ; $4d99: $df
	rrca                                             ; $4d9a: $0f
	rst SubAFromDE                                          ; $4d9b: $df
	rlca                                             ; $4d9c: $07
	sub h                                            ; $4d9d: $94
	ldh a, [$bc]                                     ; $4d9e: $f0 $bc
	ld c, a                                          ; $4da0: $4f
	ld b, e                                          ; $4da1: $43
	ld [hl], b                                       ; $4da2: $70
	inc a                                            ; $4da3: $3c
	ccf                                              ; $4da4: $3f
	ccf                                              ; $4da5: $3f
	or b                                             ; $4da6: $b0
	adc h                                            ; $4da7: $8c
	jp Jump_054_6e75                                 ; $4da8: $c3 $75 $6e


	sbc [hl]                                         ; $4dab: $9e
	ldh [rPCM12], a                                  ; $4dac: $e0 $76
	or h                                             ; $4dae: $b4
	ld a, [hl]                                       ; $4daf: $7e
	ld e, $7c                                        ; $4db0: $1e $7c
	cp [hl]                                          ; $4db2: $be
	ld l, h                                          ; $4db3: $6c
	add d                                            ; $4db4: $82
	ld l, b                                          ; $4db5: $68
	sbc d                                            ; $4db6: $9a
	ld h, d                                          ; $4db7: $62
	and b                                            ; $4db8: $a0
	ld h, e                                          ; $4db9: $63
	ld hl, sp-$18                                    ; $4dba: $f8 $e8
	ld a, d                                          ; $4dbc: $7a
	jp z, Jump_054_7f96                              ; $4dbd: $ca $96 $7f

	cp a                                             ; $4dc0: $bf
	ld a, a                                          ; $4dc1: $7f
	jp $ff7c                                         ; $4dc2: $c3 $7c $ff


	ld a, a                                          ; $4dc5: $7f
	ld a, a                                          ; $4dc6: $7f
	cp a                                             ; $4dc7: $bf
	ld a, b                                          ; $4dc8: $78
	add b                                            ; $4dc9: $80
	sbc l                                            ; $4dca: $9d
	add e                                            ; $4dcb: $83
	add b                                            ; $4dcc: $80
	ld a, e                                          ; $4dcd: $7b
	add e                                            ; $4dce: $83

jr_054_4dcf:
	sbc e                                            ; $4dcf: $9b
	ld b, b                                          ; $4dd0: $40
	ret nc                                           ; $4dd1: $d0

	ldh [$c0], a                                     ; $4dd2: $e0 $c0
	ld h, d                                          ; $4dd4: $62
	ldh [$9b], a                                     ; $4dd5: $e0 $9b
	inc c                                            ; $4dd7: $0c
	ld a, [bc]                                       ; $4dd8: $0a
	dec b                                            ; $4dd9: $05
	ld [bc], a                                       ; $4dda: $02
	ld a, d                                          ; $4ddb: $7a
	xor h                                            ; $4ddc: $ac
	sbc h                                            ; $4ddd: $9c
	rst $38                                          ; $4dde: $ff
	di                                               ; $4ddf: $f3
	pop af                                           ; $4de0: $f1
	ld [hl], c                                       ; $4de1: $71
	adc $87                                          ; $4de2: $ce $87
	ld [hl], d                                       ; $4de4: $72
	dec a                                            ; $4de5: $3d
	ld e, $ef                                        ; $4de6: $1e $ef
	ld a, [hl]                                       ; $4de8: $7e
	rra                                              ; $4de9: $1f
	or e                                             ; $4dea: $b3
	sub e                                            ; $4deb: $93
	xor $f3                                          ; $4dec: $ee $f3
	ld sp, hl                                        ; $4dee: $f9
	ld a, h                                          ; $4def: $7c
	ld a, $3e                                        ; $4df0: $3e $3e
	rra                                              ; $4df2: $1f
	rra                                              ; $4df3: $1f
	add b                                            ; $4df4: $80
	nop                                              ; $4df5: $00
	add c                                            ; $4df6: $81
	add c                                            ; $4df7: $81
	pop bc                                           ; $4df8: $c1
	ld b, c                                          ; $4df9: $41
	ld h, c                                          ; $4dfa: $61
	pop hl                                           ; $4dfb: $e1
	halt                                             ; $4dfc: $76
	add d                                            ; $4dfd: $82
	ld [hl], h                                       ; $4dfe: $74
	inc a                                            ; $4dff: $3c
	sbc $f9                                          ; $4e00: $de $f9
	sbc d                                            ; $4e02: $9a
	ei                                               ; $4e03: $fb
	ldh a, [c]                                       ; $4e04: $f2
	ldh a, [c]                                       ; $4e05: $f2
	ldh a, [$f0]                                     ; $4e06: $f0 $f0
	sbc $fe                                          ; $4e08: $de $fe
	sub c                                            ; $4e0a: $91
	db $fc                                           ; $4e0b: $fc
	db $fd                                           ; $4e0c: $fd
	db $fd                                           ; $4e0d: $fd
	rst $38                                          ; $4e0e: $ff
	rst $38                                          ; $4e0f: $ff
	jr jr_054_4e5e                                   ; $4e10: $18 $4c

	ld c, [hl]                                       ; $4e12: $4e
	ld b, a                                          ; $4e13: $47
	ld h, a                                          ; $4e14: $67
	ld h, e                                          ; $4e15: $63
	ld h, c                                          ; $4e16: $61
	ld h, b                                          ; $4e17: $60
	ret nz                                           ; $4e18: $c0

	jp c, $9580                                      ; $4e19: $da $80 $95

	ld c, l                                          ; $4e1c: $4d
	inc hl                                           ; $4e1d: $23
	db $10                                           ; $4e1e: $10
	dec c                                            ; $4e1f: $0d
	add [hl]                                         ; $4e20: $86
	jp $f8e1                                         ; $4e21: $c3 $e1 $f8


	inc bc                                           ; $4e24: $03
	ld bc, $576e                                     ; $4e25: $01 $6e $57
	ld [hl], a                                       ; $4e28: $77
	dec sp                                           ; $4e29: $3b
	sbc e                                            ; $4e2a: $9b
	ld [hl], b                                       ; $4e2b: $70
	ldh a, [$b8]                                     ; $4e2c: $f0 $b8
	ld hl, sp-$24                                    ; $4e2e: $f8 $dc
	rst $38                                          ; $4e30: $ff
	ld a, e                                          ; $4e31: $7b
	cp a                                             ; $4e32: $bf
	sub l                                            ; $4e33: $95
	xor [hl]                                         ; $4e34: $ae
	xor l                                            ; $4e35: $ad
	ld c, a                                          ; $4e36: $4f
	ld b, a                                          ; $4e37: $47
	ld h, $23                                        ; $4e38: $26 $23
	inc de                                           ; $4e3a: $13
	inc de                                           ; $4e3b: $13
	db $dd                                           ; $4e3c: $dd
	sbc $71                                          ; $4e3d: $de $71
	pop de                                           ; $4e3f: $d1
	sub c                                            ; $4e40: $91
	rst $38                                          ; $4e41: $ff
	add a                                            ; $4e42: $87
	rst JumpTable                                          ; $4e43: $c7
	ld b, e                                          ; $4e44: $43
	ld h, e                                          ; $4e45: $63
	ld h, c                                          ; $4e46: $61
	jr nz, jr_054_4e79                               ; $4e47: $20 $30

	jr nc, jr_054_4dcf                               ; $4e49: $30 $84

	add h                                            ; $4e4b: $84
	jp nz, $c1c2                                     ; $4e4c: $c2 $c2 $c1

	sbc $e0                                          ; $4e4f: $de $e0
	add b                                            ; $4e51: $80
	ld a, a                                          ; $4e52: $7f
	rst AddAOntoHL                                          ; $4e53: $ef
	cp a                                             ; $4e54: $bf
	db $db                                           ; $4e55: $db
	ei                                               ; $4e56: $fb
	ei                                               ; $4e57: $fb
	add hl, sp                                       ; $4e58: $39
	ld bc, $5fde                                     ; $4e59: $01 $de $5f
	ld c, e                                          ; $4e5c: $4b
	add hl, hl                                       ; $4e5d: $29

jr_054_4e5e:
	add hl, bc                                       ; $4e5e: $09
	ret                                              ; $4e5f: $c9


	add hl, sp                                       ; $4e60: $39
	ld bc, $4eef                                     ; $4e61: $01 $ef $4e
	ld c, d                                          ; $4e64: $4a
	call $3496                                       ; $4e65: $cd $96 $34
	inc [hl]                                         ; $4e68: $34
	ld a, $7e                                        ; $4e69: $3e $7e
	ei                                               ; $4e6b: $fb
	db $fd                                           ; $4e6c: $fd
	cp $ed                                           ; $4e6d: $fe $ed
	call $86cd                                       ; $4e6f: $cd $cd $86
	push bc                                          ; $4e72: $c5
	ld b, b                                          ; $4e73: $40
	and b                                            ; $4e74: $a0
	ld d, b                                          ; $4e75: $50
	ld de, $8389                                     ; $4e76: $11 $89 $83

jr_054_4e79:
	add e                                            ; $4e79: $83
	dec bc                                           ; $4e7a: $0b
	and b                                            ; $4e7b: $a0
	ld d, b                                          ; $4e7c: $50
	add hl, hl                                       ; $4e7d: $29
	xor d                                            ; $4e7e: $aa
	ld d, [hl]                                       ; $4e7f: $56
	ld e, h                                          ; $4e80: $5c
	ld a, h                                          ; $4e81: $7c
	db $f4                                           ; $4e82: $f4
	ld a, [hl]                                       ; $4e83: $7e
	cp $fe                                           ; $4e84: $fe $fe
	ld a, [$fcfc]                                    ; $4e86: $fa $fc $fc
	db $f4                                           ; $4e89: $f4
	ld hl, sp-$22                                    ; $4e8a: $f8 $de
	inc bc                                           ; $4e8c: $03
	sbc $07                                          ; $4e8d: $de $07
	rst SubAFromDE                                          ; $4e8f: $df
	rrca                                             ; $4e90: $0f
	ld a, [hl]                                       ; $4e91: $7e
	cp d                                             ; $4e92: $ba
	rst SubAFromDE                                          ; $4e93: $df
	rra                                              ; $4e94: $1f
	sbc [hl]                                         ; $4e95: $9e
	inc de                                           ; $4e96: $13
	sbc $10                                          ; $4e97: $de $10
	ld a, b                                          ; $4e99: $78
	inc [hl]                                         ; $4e9a: $34
	ld a, h                                          ; $4e9b: $7c
	ei                                               ; $4e9c: $fb
	sbc $ff                                          ; $4e9d: $de $ff
	ld l, a                                          ; $4e9f: $6f
	ld a, [$8c7c]                                    ; $4ea0: $fa $7c $8c
	ld l, a                                          ; $4ea3: $6f
	ld [hl], e                                       ; $4ea4: $73
	ld a, a                                          ; $4ea5: $7f
	ldh a, [c]                                       ; $4ea6: $f2
	halt                                             ; $4ea7: $76
	or h                                             ; $4ea8: $b4
	ld [hl], a                                       ; $4ea9: $77
	db $ec                                           ; $4eaa: $ec
	ld d, [hl]                                       ; $4eab: $56
	or h                                             ; $4eac: $b4
	ld b, [hl]                                       ; $4ead: $46
	and b                                            ; $4eae: $a0
	sbc l                                            ; $4eaf: $9d
	sub b                                            ; $4eb0: $90
	ld b, b                                          ; $4eb1: $40
	ld e, [hl]                                       ; $4eb2: $5e
	and b                                            ; $4eb3: $a0
	ld d, e                                          ; $4eb4: $53
	nop                                              ; $4eb5: $00
	rst SubAFromDE                                          ; $4eb6: $df
	ld d, l                                          ; $4eb7: $55
	db $dd                                           ; $4eb8: $dd
	ld [hl+], a                                      ; $4eb9: $22
	db $dd                                           ; $4eba: $dd
	ld h, [hl]                                       ; $4ebb: $66
	ld [hl], a                                       ; $4ebc: $77
	or $9d                                           ; $4ebd: $f6 $9d
	inc hl                                           ; $4ebf: $23
	ld [hl-], a                                      ; $4ec0: $32
	ld h, a                                          ; $4ec1: $67
	or $df                                           ; $4ec2: $f6 $df
	inc sp                                           ; $4ec4: $33
	db $dd                                           ; $4ec5: $dd
	ld h, [hl]                                       ; $4ec6: $66
	sbc e                                            ; $4ec7: $9b
	ld h, l                                          ; $4ec8: $65
	ld d, l                                          ; $4ec9: $55
	ld [hl+], a                                      ; $4eca: $22
	inc hl                                           ; $4ecb: $23
	ld h, a                                          ; $4ecc: $67
	or $9b                                           ; $4ecd: $f6 $9b
	ld [hl-], a                                      ; $4ecf: $32
	inc hl                                           ; $4ed0: $23
	inc [hl]                                         ; $4ed1: $34
	ld b, e                                          ; $4ed2: $43
	ld [hl], e                                       ; $4ed3: $73
	ldh [c], a                                       ; $4ed4: $e2
	sbc d                                            ; $4ed5: $9a
	ld d, [hl]                                       ; $4ed6: $56
	ld h, d                                          ; $4ed7: $62
	inc hl                                           ; $4ed8: $23
	ld b, h                                          ; $4ed9: $44
	ld b, d                                          ; $4eda: $42
	ld l, a                                          ; $4edb: $6f
	or $9a                                           ; $4edc: $f6 $9a
	ld h, [hl]                                       ; $4ede: $66

jr_054_4edf:
	ld h, d                                          ; $4edf: $62
	inc h                                            ; $4ee0: $24
	ld b, d                                          ; $4ee1: $42
	ld h, $73                                        ; $4ee2: $26 $73
	adc $df                                          ; $4ee4: $ce $df
	ld h, [hl]                                       ; $4ee6: $66
	sbc [hl]                                         ; $4ee7: $9e
	inc hl                                           ; $4ee8: $23
	ld [hl], e                                       ; $4ee9: $73
	or $9a                                           ; $4eea: $f6 $9a
	ld h, l                                          ; $4eec: $65
	ld [hl], a                                       ; $4eed: $77
	ld [hl], a                                       ; $4eee: $77
	ld h, [hl]                                       ; $4eef: $66
	ld h, [hl]                                       ; $4ef0: $66
	ld [hl], e                                       ; $4ef1: $73
	or $7b                                           ; $4ef2: $f6 $7b
	push af                                          ; $4ef4: $f5
	adc [hl]                                         ; $4ef5: $8e
	ld b, h                                          ; $4ef6: $44
	ld h, [hl]                                       ; $4ef7: $66
	ld b, d                                          ; $4ef8: $42
	inc h                                            ; $4ef9: $24
	ld h, l                                          ; $4efa: $65
	ld d, l                                          ; $4efb: $55
	ld h, [hl]                                       ; $4efc: $66
	halt                                             ; $4efd: $76
	ld h, [hl]                                       ; $4efe: $66
	ld [hl], h                                       ; $4eff: $74
	ld b, h                                          ; $4f00: $44
	ld h, [hl]                                       ; $4f01: $66
	ld h, h                                          ; $4f02: $64
	ld b, h                                          ; $4f03: $44
	ld h, l                                          ; $4f04: $65
	ld d, l                                          ; $4f05: $55
	ld d, [hl]                                       ; $4f06: $56
	ld [hl], h                                       ; $4f07: $74
	adc c                                            ; $4f08: $89
	pop bc                                           ; $4f09: $c1
	rst $38                                          ; $4f0a: $ff
	inc bc                                           ; $4f0b: $03
	rst $38                                          ; $4f0c: $ff
	jp nz, $95ff                                     ; $4f0d: $c2 $ff $95

	add $86                                          ; $4f10: $c6 $86
	call z, $0c8c                                    ; $4f12: $cc $8c $0c
	db $10                                           ; $4f15: $10
	sub b                                            ; $4f16: $90
	sub b                                            ; $4f17: $90
	ret nz                                           ; $4f18: $c0

	ret nz                                           ; $4f19: $c0

	sbc $80                                          ; $4f1a: $de $80
	sub h                                            ; $4f1c: $94
	adc b                                            ; $4f1d: $88
	ld [$3608], sp                                   ; $4f1e: $08 $08 $36
	ld h, $4e                                        ; $4f21: $26 $4e
	ld c, h                                          ; $4f23: $4c
	inc c                                            ; $4f24: $0c
	inc c                                            ; $4f25: $0c
	adc h                                            ; $4f26: $8c
	inc c                                            ; $4f27: $0c
	ld a, [$8096]                                    ; $4f28: $fa $96 $80
	ld h, h                                          ; $4f2b: $64
	ld h, h                                          ; $4f2c: $64
	ld h, b                                          ; $4f2d: $60
	ldh [$e0], a                                     ; $4f2e: $e0 $e0
	and $e4                                          ; $4f30: $e6 $e4
	call nz, $95fb                                   ; $4f32: $c4 $fb $95
	ld [bc], a                                       ; $4f35: $02
	inc hl                                           ; $4f36: $23
	adc b                                            ; $4f37: $88
	adc h                                            ; $4f38: $8c
	call z, $e5ce                                    ; $4f39: $cc $ce $e5
	ld h, l                                          ; $4f3c: $65
	ld d, d                                          ; $4f3d: $52
	ld e, d                                          ; $4f3e: $5a
	ld [hl], e                                       ; $4f3f: $73
	ldh a, [c]                                       ; $4f40: $f2
	add b                                            ; $4f41: $80
	inc bc                                           ; $4f42: $03
	ld sp, $c431                                     ; $4f43: $31 $31 $c4
	ld h, d                                          ; $4f46: $62
	ld [hl], c                                       ; $4f47: $71
	add hl, hl                                       ; $4f48: $29
	jr nc, jr_054_4edf                               ; $4f49: $30 $94

	jp c, $03f9                                      ; $4f4b: $da $f9 $03

	ld bc, $1000                                     ; $4f4e: $01 $00 $10
	inc c                                            ; $4f51: $0c
	ld c, $87                                        ; $4f52: $0e $87
	rst JumpTable                                          ; $4f54: $c7
	and b                                            ; $4f55: $a0
	ld d, d                                          ; $4f56: $52
	add hl, hl                                       ; $4f57: $29
	inc d                                            ; $4f58: $14
	adc l                                            ; $4f59: $8d
	add d                                            ; $4f5a: $82
	pop bc                                           ; $4f5b: $c1
	add b                                            ; $4f5c: $80
	ret nz                                           ; $4f5d: $c0

	ldh [$f0], a                                     ; $4f5e: $e0 $f0
	ld hl, sp-$80                                    ; $4f60: $f8 $80
	ld a, [hl]                                       ; $4f62: $7e
	ld a, a                                          ; $4f63: $7f
	ccf                                              ; $4f64: $3f
	rst $38                                          ; $4f65: $ff
	xor c                                            ; $4f66: $a9
	ld d, h                                          ; $4f67: $54
	adc d                                            ; $4f68: $8a
	rst SubAFromBC                                          ; $4f69: $e7
	push hl                                          ; $4f6a: $e5
	ldh [c], a                                       ; $4f6b: $e2
	ld h, d                                          ; $4f6c: $62
	pop bc                                           ; $4f6d: $c1
	ld [hl], b                                       ; $4f6e: $70
	jr c, jr_054_4fad                                ; $4f6f: $38 $3c

	inc e                                            ; $4f71: $1c
	ld e, $1f                                        ; $4f72: $1e $1f
	sbc a                                            ; $4f74: $9f
	rst $38                                          ; $4f75: $ff
	ld d, l                                          ; $4f76: $55
	xor d                                            ; $4f77: $aa
	ld d, l                                          ; $4f78: $55
	db $eb                                           ; $4f79: $eb
	rst SubAFromBC                                          ; $4f7a: $e7
	push bc                                          ; $4f7b: $c5
	ld b, d                                          ; $4f7c: $42
	ld [bc], a                                       ; $4f7d: $02
	db $e3                                           ; $4f7e: $e3
	ld [hl], c                                       ; $4f7f: $71
	jr c, @-$1f                                      ; $4f80: $38 $df

	inc e                                            ; $4f82: $1c
	adc [hl]                                         ; $4f83: $8e
	ld a, $bf                                        ; $4f84: $3e $bf
	rst $38                                          ; $4f86: $ff
	inc de                                           ; $4f87: $13
	res 5, c                                         ; $4f88: $cb $a9
	ld e, c                                          ; $4f8a: $59
	ld e, c                                          ; $4f8b: $59
	add hl, hl                                       ; $4f8c: $29
	ld hl, $8f10                                     ; $4f8d: $21 $10 $8f
	add a                                            ; $4f90: $87
	rst JumpTable                                          ; $4f91: $c7
	rst SubAFromBC                                          ; $4f92: $e7
	rst SubAFromBC                                          ; $4f93: $e7
	rst FarCall                                          ; $4f94: $f7
	sbc $ff                                          ; $4f95: $de $ff
	sbc $fe                                          ; $4f97: $de $fe
	push de                                          ; $4f99: $d5
	rst $38                                          ; $4f9a: $ff
	sub a                                            ; $4f9b: $97
	add hl, bc                                       ; $4f9c: $09
	inc de                                           ; $4f9d: $13
	inc d                                            ; $4f9e: $14
	sub [hl]                                         ; $4f9f: $96
	cp e                                             ; $4fa0: $bb
	cp d                                             ; $4fa1: $ba
	ld hl, sp-$1e                                    ; $4fa2: $f8 $e2
	sbc $ff                                          ; $4fa4: $de $ff
	sbc [hl]                                         ; $4fa6: $9e
	db $fd                                           ; $4fa7: $fd
	db $dd                                           ; $4fa8: $dd
	db $fc                                           ; $4fa9: $fc
	sub a                                            ; $4faa: $97
	adc a                                            ; $4fab: $8f
	rst JumpTable                                          ; $4fac: $c7

jr_054_4fad:
	db $d3                                           ; $4fad: $d3
	sbc d                                            ; $4fae: $9a
	sbc h                                            ; $4faf: $9c
	ld a, [de]                                       ; $4fb0: $1a
	rst AddAOntoHL                                          ; $4fb1: $ef
	rla                                              ; $4fb2: $17
	db $db                                           ; $4fb3: $db
	rst $38                                          ; $4fb4: $ff
	sbc l                                            ; $4fb5: $9d
	rra                                              ; $4fb6: $1f
	rrca                                             ; $4fb7: $0f
	db $dd                                           ; $4fb8: $dd
	rst $38                                          ; $4fb9: $ff
	ld a, a                                          ; $4fba: $7f
	sbc c                                            ; $4fbb: $99
	sbc l                                            ; $4fbc: $9d
	ccf                                              ; $4fbd: $3f
	cp a                                             ; $4fbe: $bf
	inc bc                                           ; $4fbf: $03
	rla                                              ; $4fc0: $17
	inc bc                                           ; $4fc1: $03
	rst $38                                          ; $4fc2: $ff
	db $d3                                           ; $4fc3: $d3
	rst $38                                          ; $4fc4: $ff
	ld [hl], a                                       ; $4fc5: $77
	ld a, c                                          ; $4fc6: $79
	sbc [hl]                                         ; $4fc7: $9e
	ldh a, [$73]                                     ; $4fc8: $f0 $73
	sbc l                                            ; $4fca: $9d
	ld a, a                                          ; $4fcb: $7f
	inc a                                            ; $4fcc: $3c
	db $dd                                           ; $4fcd: $dd
	rst $38                                          ; $4fce: $ff
	sbc $0f                                          ; $4fcf: $de $0f
	sbc l                                            ; $4fd1: $9d
	rst $38                                          ; $4fd2: $ff
	ld bc, $fdde                                     ; $4fd3: $01 $de $fd
	pop de                                           ; $4fd6: $d1
	rst $38                                          ; $4fd7: $ff
	sub a                                            ; $4fd8: $97
	ld bc, $b121                                     ; $4fd9: $01 $21 $b1
	db $10                                           ; $4fdc: $10
	ld [de], a                                       ; $4fdd: $12
	ld a, [de]                                       ; $4fde: $1a
	ld a, [de]                                       ; $4fdf: $1a
	ld e, d                                          ; $4fe0: $5a
	sbc $18                                          ; $4fe1: $de $18
	call c, $8db9                                    ; $4fe3: $dc $b9 $8d
	inc c                                            ; $4fe6: $0c
	ld c, b                                          ; $4fe7: $48
	jp z, $8d8e                                      ; $4fe8: $ca $8e $8d

	adc e                                            ; $4feb: $8b
	jp z, $80eb                                      ; $4fec: $ca $eb $80

	add h                                            ; $4fef: $84
	add h                                            ; $4ff0: $84
	call nz, $c6c6                                   ; $4ff1: $c4 $c6 $c6
	rst JumpTable                                          ; $4ff4: $c7
	rst JumpTable                                          ; $4ff5: $c7
	push de                                          ; $4ff6: $d5
	pop bc                                           ; $4ff7: $c1
	sbc $5a                                          ; $4ff8: $de $5a
	sbc d                                            ; $4ffa: $9a
	ld c, l                                          ; $4ffb: $4d
	rst GetHLinHL                                          ; $4ffc: $cf
	rst GetHLinHL                                          ; $4ffd: $cf
	inc hl                                           ; $4ffe: $23
	inc sp                                           ; $4fff: $33
	sbc $31                                          ; $5000: $de $31
	rst SubAFromDE                                          ; $5002: $df
	jr c, @-$6d                                      ; $5003: $38 $91

	inc a                                            ; $5005: $3c
	ld a, [hl+]                                      ; $5006: $2a
	inc l                                            ; $5007: $2c
	rst JumpTable                                          ; $5008: $c7
	or l                                             ; $5009: $b5
	db $d3                                           ; $500a: $d3
	ld h, d                                          ; $500b: $62
	ld d, c                                          ; $500c: $51
	xor l                                            ; $500d: $ad
	add hl, de                                       ; $500e: $19
	sbc c                                            ; $500f: $99
	sbc h                                            ; $5010: $9c
	adc $ef                                          ; $5011: $ce $ef
	ld a, e                                          ; $5013: $7b
	ld b, l                                          ; $5014: $45
	add a                                            ; $5015: $87
	ld h, b                                          ; $5016: $60
	ld d, b                                          ; $5017: $50
	jr c, @+$3e                                      ; $5018: $38 $3c

	ld e, $9f                                        ; $501a: $1e $9f
	rst GetHLinHL                                          ; $501c: $cf
	db $f4                                           ; $501d: $f4
	rst $38                                          ; $501e: $ff
	rst $38                                          ; $501f: $ff

jr_054_5020:
	rst AddAOntoHL                                          ; $5020: $ef
	rst SubAFromBC                                          ; $5021: $e7
	di                                               ; $5022: $f3
	pop af                                           ; $5023: $f1
	ld a, b                                          ; $5024: $78
	ccf                                              ; $5025: $3f
	ld [hl], b                                       ; $5026: $70
	ld c, [hl]                                       ; $5027: $4e
	ld sp, $0f1e                                     ; $5028: $31 $1e $0f
	rlca                                             ; $502b: $07
	jp Jump_054_7b31                                 ; $502c: $c3 $31 $7b


	ldh a, [hDisp1_BGP]                                     ; $502f: $f0 $92
	pop af                                           ; $5031: $f1
	ld hl, sp-$04                                    ; $5032: $f8 $fc
	cp $ff                                           ; $5034: $fe $ff
	ld hl, $c810                                     ; $5036: $21 $10 $c8
	or h                                             ; $5039: $b4
	adc $e1                                          ; $503a: $ce $e1
	ldh a, [$e8]                                     ; $503c: $f0 $e8
	ld l, a                                          ; $503e: $6f
	jr jr_054_5020                                   ; $503f: $18 $df

	rra                                              ; $5041: $1f
	sbc [hl]                                         ; $5042: $9e
	ld [bc], a                                       ; $5043: $02
	sbc $81                                          ; $5044: $de $81
	sbc e                                            ; $5046: $9b
	ldh a, [$78]                                     ; $5047: $f0 $78
	ld hl, sp-$04                                    ; $5049: $f8 $fc
	call c, $9cff                                    ; $504b: $dc $ff $9c
	adc a                                            ; $504e: $8f
	ld l, a                                          ; $504f: $6f
	rla                                              ; $5050: $17
	sbc $10                                          ; $5051: $de $10
	sbc [hl]                                         ; $5053: $9e
	ld [$88dd], sp                                   ; $5054: $08 $dd $88
	ret                                              ; $5057: $c9


	rst $38                                          ; $5058: $ff
	add l                                            ; $5059: $85
	ldh [$fe], a                                     ; $505a: $e0 $fe
	db $e3                                           ; $505c: $e3
	db $e4                                           ; $505d: $e4
	ldh [c], a                                       ; $505e: $e2
	pop hl                                           ; $505f: $e1
	pop hl                                           ; $5060: $e1
	ld hl, sp-$02                                    ; $5061: $f8 $fe
	db $e4                                           ; $5063: $e4
	db $e4                                           ; $5064: $e4
	ldh [c], a                                       ; $5065: $e2
	ldh [$e0], a                                     ; $5066: $e0 $e0
	ldh a, [$f0]                                     ; $5068: $f0 $f0
	dec bc                                           ; $506a: $0b
	rrca                                             ; $506b: $0f
	dec de                                           ; $506c: $1b
	rrca                                             ; $506d: $0f
	rlca                                             ; $506e: $07
	add a                                            ; $506f: $87
	rrca                                             ; $5070: $0f
	rrca                                             ; $5071: $0f
	ld d, $0c                                        ; $5072: $16 $0c
	ld l, [hl]                                       ; $5074: $6e
	dec e                                            ; $5075: $1d
	sbc $ff                                          ; $5076: $de $ff
	sbc [hl]                                         ; $5078: $9e
	rst SubAFromDE                                          ; $5079: $df
	jp c, $9dff                                      ; $507a: $da $ff $9d

	ld a, a                                          ; $507d: $7f
	ld e, a                                          ; $507e: $5f
	ld l, e                                          ; $507f: $6b
	inc d                                            ; $5080: $14
	inc bc                                           ; $5081: $03
	rst $38                                          ; $5082: $ff
	ret z                                            ; $5083: $c8

	rst $38                                          ; $5084: $ff
	ld h, a                                          ; $5085: $67
	or l                                             ; $5086: $b5
	db $db                                           ; $5087: $db
	rst $38                                          ; $5088: $ff
	ld l, a                                          ; $5089: $6f
	ld e, e                                          ; $508a: $5b
	db $db                                           ; $508b: $db
	rst $38                                          ; $508c: $ff
	db $dd                                           ; $508d: $dd
	db $fd                                           ; $508e: $fd
	sbc [hl]                                         ; $508f: $9e
	call $c152                                       ; $5090: $cd $52 $c1
	ld a, d                                          ; $5093: $7a
	ld de, $fb97                                     ; $5094: $11 $97 $fb
	pop de                                           ; $5097: $d1
	add b                                            ; $5098: $80
	sbc [hl]                                         ; $5099: $9e
	sbc h                                            ; $509a: $9c
	sbc b                                            ; $509b: $98
	call c, $dedc                                    ; $509c: $dc $dc $de
	cp $9d                                           ; $509f: $fe $9d
	ld sp, hl                                        ; $50a1: $f9
	ei                                               ; $50a2: $fb
	db $db                                           ; $50a3: $db
	rst $38                                          ; $50a4: $ff
	sub a                                            ; $50a5: $97
	set 7, c                                         ; $50a6: $cb $f9
	ld sp, hl                                        ; $50a8: $f9
	jp hl                                            ; $50a9: $e9


	db $fc                                           ; $50aa: $fc
	db $f4                                           ; $50ab: $f4
	ld hl, sp-$04                                    ; $50ac: $f8 $fc
	sbc $e7                                          ; $50ae: $de $e7
	sbc l                                            ; $50b0: $9d
	rst FarCall                                          ; $50b1: $f7
	di                                               ; $50b2: $f3
	ld a, e                                          ; $50b3: $7b
	db $ec                                           ; $50b4: $ec
	sbc [hl]                                         ; $50b5: $9e
	adc [hl]                                         ; $50b6: $8e
	ld a, c                                          ; $50b7: $79
	add sp, $7f                                      ; $50b8: $e8 $7f
	ld hl, sp-$80                                    ; $50ba: $f8 $80
	cp $7b                                           ; $50bc: $fe $7b
	ei                                               ; $50be: $fb
	db $fd                                           ; $50bf: $fd
	ld a, h                                          ; $50c0: $7c
	inc a                                            ; $50c1: $3c
	sbc [hl]                                         ; $50c2: $9e
	adc [hl]                                         ; $50c3: $8e
	rst JumpTable                                          ; $50c4: $c7
	rst JumpTable                                          ; $50c5: $c7
	ccf                                              ; $50c6: $3f
	rra                                              ; $50c7: $1f
	rst GetHLinHL                                          ; $50c8: $cf
	rst FarCall                                          ; $50c9: $f7
	ei                                               ; $50ca: $fb
	rst $38                                          ; $50cb: $ff
	ccf                                              ; $50cc: $3f
	rst $38                                          ; $50cd: $ff
	db $e3                                           ; $50ce: $e3
	pop af                                           ; $50cf: $f1
	ld hl, sp+$3c                                    ; $50d0: $f8 $3c
	ld c, $07                                        ; $50d2: $0e $07
	pop bc                                           ; $50d4: $c1
	nop                                              ; $50d5: $00
	db $ed                                           ; $50d6: $ed
	di                                               ; $50d7: $f3
	ld a, a                                          ; $50d8: $7f
	call Call_054_7ffb                               ; $50d9: $cd $fb $7f
	rst AddAOntoHL                                          ; $50dc: $ef
	add b                                            ; $50dd: $80
	cp $9f                                           ; $50de: $fe $9f
	adc $e0                                          ; $50e0: $ce $e0
	inc sp                                           ; $50e2: $33
	rlca                                             ; $50e3: $07
	rlca                                             ; $50e4: $07
	add c                                            ; $50e5: $81
	ld bc, $fbfc                                     ; $50e6: $01 $fc $fb
	rrca                                             ; $50e9: $0f
	ld sp, hl                                        ; $50ea: $f9
	ld c, a                                          ; $50eb: $4f
	dec a                                            ; $50ec: $3d
	dec [hl]                                         ; $50ed: $35
	ld d, c                                          ; $50ee: $51
	rst $38                                          ; $50ef: $ff
	rlca                                             ; $50f0: $07
	ldh a, [$fe]                                     ; $50f1: $f0 $fe
	sbc a                                            ; $50f3: $9f
	ld e, $fc                                        ; $50f4: $1e $fc
	ld h, h                                          ; $50f6: $64
	ld hl, sp-$0c                                    ; $50f7: $f8 $f4
	ld a, h                                          ; $50f9: $7c
	jp z, $fefe                                      ; $50fa: $ca $fe $fe

	ld a, a                                          ; $50fd: $7f
	adc b                                            ; $50fe: $88
	add a                                            ; $50ff: $87
	adc a                                            ; $5100: $8f
	rst GetHLinHL                                          ; $5101: $cf
	rst SubAFromBC                                          ; $5102: $e7
	scf                                              ; $5103: $37
	inc bc                                           ; $5104: $03
	inc bc                                           ; $5105: $03
	ld [bc], a                                       ; $5106: $02
	nop                                              ; $5107: $00
	db $fc                                           ; $5108: $fc
	call c, $ecfc                                    ; $5109: $dc $fc $ec
	db $fc                                           ; $510c: $fc
	call nc, $c9f5                                   ; $510d: $d4 $f5 $c9
	ld d, a                                          ; $5110: $57
	ld [hl], a                                       ; $5111: $77
	ld [hl], a                                       ; $5112: $77
	ld d, a                                          ; $5113: $57
	ld d, a                                          ; $5114: $57
	ld [hl], a                                       ; $5115: $77
	daa                                              ; $5116: $27
	ld c, a                                          ; $5117: $4f
	db $db                                           ; $5118: $db

jr_054_5119:
	adc b                                            ; $5119: $88
	rst SubAFromDE                                          ; $511a: $df
	ld [de], a                                       ; $511b: $12
	reti                                             ; $511c: $d9


	rst $38                                          ; $511d: $ff
	reti                                             ; $511e: $d9


	ld a, a                                          ; $511f: $7f
	reti                                             ; $5120: $d9


	rst $38                                          ; $5121: $ff
	rst SubAFromDE                                          ; $5122: $df
	ld hl, sp-$24                                    ; $5123: $f8 $dc
	cp $9e                                           ; $5125: $fe $9e
	add sp, $76                                      ; $5127: $e8 $76
	adc [hl]                                         ; $5129: $8e
	sbc $fe                                          ; $512a: $de $fe
	adc [hl]                                         ; $512c: $8e
	or $1f                                           ; $512d: $f6 $1f
	cpl                                              ; $512f: $2f
	ld a, e                                          ; $5130: $7b
	inc sp                                           ; $5131: $33
	dec sp                                           ; $5132: $3b
	dec de                                           ; $5133: $1b
	ld [de], a                                       ; $5134: $12
	daa                                              ; $5135: $27
	inc bc                                           ; $5136: $03
	rra                                              ; $5137: $1f
	rst $38                                          ; $5138: $ff
	rst GetHLinHL                                          ; $5139: $cf
	rlca                                             ; $513a: $07
	rlca                                             ; $513b: $07
	rrca                                             ; $513c: $0f
	jr jr_054_5119                                   ; $513d: $18 $da

	rst $38                                          ; $513f: $ff
	ld h, l                                          ; $5140: $65
	add b                                            ; $5141: $80
	ld h, e                                          ; $5142: $63
	ret z                                            ; $5143: $c8

	dec b                                            ; $5144: $05
	and c                                            ; $5145: $a1
	db $d3                                           ; $5146: $d3
	rst $38                                          ; $5147: $ff
	rst $38                                          ; $5148: $ff
	sbc l                                            ; $5149: $9d
	rst SubAFromDE                                          ; $514a: $df
	adc a                                            ; $514b: $8f
	push de                                          ; $514c: $d5
	rst $38                                          ; $514d: $ff
	sbc l                                            ; $514e: $9d
	jr nc, @+$22                                     ; $514f: $30 $20

	db $d3                                           ; $5151: $d3
	rst $38                                          ; $5152: $ff
	sbc h                                            ; $5153: $9c
	rlca                                             ; $5154: $07
	nop                                              ; $5155: $00
	rst $38                                          ; $5156: $ff
	sbc $fc                                          ; $5157: $de $fc
	sub $ff                                          ; $5159: $d6 $ff
	sbc l                                            ; $515b: $9d
	inc bc                                           ; $515c: $03
	rrca                                             ; $515d: $0f
	ld c, [hl]                                       ; $515e: $4e
	ld d, h                                          ; $515f: $54
	halt                                             ; $5160: $76
	jr c, jr_054_51ba                                ; $5161: $38 $57

	and a                                            ; $5163: $a7
	sbc [hl]                                         ; $5164: $9e
	inc bc                                           ; $5165: $03
	reti                                             ; $5166: $d9


	rst $38                                          ; $5167: $ff
	sbc l                                            ; $5168: $9d
	ld [hl], e                                       ; $5169: $73
	rst FarCall                                          ; $516a: $f7
	ld [hl], a                                       ; $516b: $77
	db $ed                                           ; $516c: $ed
	adc h                                            ; $516d: $8c
	ldh a, [$c0]                                     ; $516e: $f0 $c0
	xor $ec                                          ; $5170: $ee $ec
	ldh a, [$f8]                                     ; $5172: $f0 $f8
	rst $38                                          ; $5174: $ff
	ld hl, sp-$20                                    ; $5175: $f8 $e0
	add b                                            ; $5177: $80
	rst $38                                          ; $5178: $ff
	rst $38                                          ; $5179: $ff
	ld a, $1c                                        ; $517a: $3e $1c
	ldh a, [$e8]                                     ; $517c: $f0 $e8
	jr c, jr_054_51b1                                ; $517e: $38 $31

	add b                                            ; $5180: $80
	cp $96                                           ; $5181: $fe $96
	ld hl, sp+$30                                    ; $5183: $f8 $30
	jr c, @+$12                                      ; $5185: $38 $10

	cp $f8                                           ; $5187: $fe $f8
	nop                                              ; $5189: $00
	nop                                              ; $518a: $00
	ld b, b                                          ; $518b: $40
	ld a, c                                          ; $518c: $79
	add sp, -$07                                     ; $518d: $e8 $f9
	sbc l                                            ; $518f: $9d
	ld b, b                                          ; $5190: $40
	sbc d                                            ; $5191: $9a
	ei                                               ; $5192: $fb
	sbc l                                            ; $5193: $9d
	add b                                            ; $5194: $80
	ld bc, $7efb                                     ; $5195: $01 $fb $7e
	sub l                                            ; $5198: $95
	sbc c                                            ; $5199: $99
	ccf                                              ; $519a: $3f
	ld a, a                                          ; $519b: $7f
	ld a, [hl]                                       ; $519c: $7e
	db $fd                                           ; $519d: $fd
	cp $fa                                           ; $519e: $fe $fa
	db $fd                                           ; $51a0: $fd
	sub e                                            ; $51a1: $93
	ld bc, $0303                                     ; $51a2: $01 $03 $03
	rlca                                             ; $51a5: $07
	sbc c                                            ; $51a6: $99
	cp c                                             ; $51a7: $b9
	ldh a, [c]                                       ; $51a8: $f2
	ld d, d                                          ; $51a9: $52
	and d                                            ; $51aa: $a2
	ld [hl+], a                                      ; $51ab: $22
	ld b, h                                          ; $51ac: $44
	add h                                            ; $51ad: $84
	ld h, a                                          ; $51ae: $67
	add b                                            ; $51af: $80
	rst SubAFromDE                                          ; $51b0: $df

jr_054_51b1:
	ld [de], a                                       ; $51b1: $12
	rst SubAFromDE                                          ; $51b2: $df
	ld [hl+], a                                      ; $51b3: $22
	sbc e                                            ; $51b4: $9b
	inc h                                            ; $51b5: $24
	ld b, h                                          ; $51b6: $44
	ld b, h                                          ; $51b7: $44
	ld c, h                                          ; $51b8: $4c
	reti                                             ; $51b9: $d9


jr_054_51ba:
	rst $38                                          ; $51ba: $ff
	sbc $7e                                          ; $51bb: $de $7e
	add b                                            ; $51bd: $80
	ld l, b                                          ; $51be: $68
	ld c, l                                          ; $51bf: $4d
	rst AddAOntoHL                                          ; $51c0: $ef
	rst JumpTable                                          ; $51c1: $c7
	add b                                            ; $51c2: $80
	rst $38                                          ; $51c3: $ff
	cp $fc                                           ; $51c4: $fe $fc
	db $f4                                           ; $51c6: $f4

jr_054_51c7:
	db $e4                                           ; $51c7: $e4
	rst JumpTable                                          ; $51c8: $c7
	add b                                            ; $51c9: $80
	add b                                            ; $51ca: $80
	ld b, $0d                                        ; $51cb: $06 $0d
	dec bc                                           ; $51cd: $0b
	inc c                                            ; $51ce: $0c
	ld a, [$3bff]                                    ; $51cf: $fa $ff $3b

Jump_054_51d2:
	ld a, c                                          ; $51d2: $79
	inc c                                            ; $51d3: $0c
	ld [$1a19], sp                                   ; $51d4: $08 $19 $1a
	inc a                                            ; $51d7: $3c
	sbc a                                            ; $51d8: $9f
	inc e                                            ; $51d9: $1c
	inc a                                            ; $51da: $3c
	ld d, e                                          ; $51db: $53
	nop                                              ; $51dc: $00
	ld [hl], a                                       ; $51dd: $77
	add [hl]                                         ; $51de: $86
	sbc e                                            ; $51df: $9b
	ld bc, $20f3                                     ; $51e0: $01 $f3 $20
	ret nz                                           ; $51e3: $c0

	ld [hl], a                                       ; $51e4: $77
	sbc e                                            ; $51e5: $9b
	adc [hl]                                         ; $51e6: $8e
	ret nz                                           ; $51e7: $c0

	ld hl, $efdf                                     ; $51e8: $21 $df $ef
	scf                                              ; $51eb: $37
	ld bc, $f31f                                     ; $51ec: $01 $1f $f3
	pop hl                                           ; $51ef: $e1
	pop hl                                           ; $51f0: $e1
	ccf                                              ; $51f1: $3f
	rra                                              ; $51f2: $1f
	rrca                                             ; $51f3: $0f
	rra                                              ; $51f4: $1f
	ld sp, $8060                                     ; $51f5: $31 $60 $80
	ld h, a                                          ; $51f8: $67
	jr c, jr_054_5266                                ; $51f9: $38 $6b

	inc hl                                           ; $51fb: $23
	ld e, [hl]                                       ; $51fc: $5e
	ld a, b                                          ; $51fd: $78
	ld h, c                                          ; $51fe: $61
	xor h                                            ; $51ff: $ac
	sbc $fc                                          ; $5200: $de $fc

jr_054_5202:
	sbc $f8                                          ; $5202: $de $f8

jr_054_5204:
	sbc [hl]                                         ; $5204: $9e
	ld sp, hl                                        ; $5205: $f9
	ld e, [hl]                                       ; $5206: $5e
	add $77                                          ; $5207: $c6 $77
	or c                                             ; $5209: $b1
	sbc l                                            ; $520a: $9d
	add hl, bc                                       ; $520b: $09
	ld bc, $ffd9                                     ; $520c: $01 $d9 $ff
	sbc [hl]                                         ; $520f: $9e
	ld b, b                                          ; $5210: $40
	sbc $80                                          ; $5211: $de $80
	sbc h                                            ; $5213: $9c
	add l                                            ; $5214: $85
	nop                                              ; $5215: $00
	ld bc, $f062                                     ; $5216: $01 $62 $f0
	ld [hl], a                                       ; $5219: $77
	sbc d                                            ; $521a: $9a
	sbc e                                            ; $521b: $9b
	nop                                              ; $521c: $00
	adc b                                            ; $521d: $88
	dec d                                            ; $521e: $15
	adc d                                            ; $521f: $8a
	reti                                             ; $5220: $d9


	rst $38                                          ; $5221: $ff
	sbc h                                            ; $5222: $9c
	ld b, $0c                                        ; $5223: $06 $0c
	inc c                                            ; $5225: $0c
	db $dd                                           ; $5226: $dd
	jr jr_054_51c7                                   ; $5227: $18 $9e

	jr nc, jr_054_5204                               ; $5229: $30 $d9

	rst $38                                          ; $522b: $ff
	adc e                                            ; $522c: $8b
	jr z, @+$57                                      ; $522d: $28 $55

	xor b                                            ; $522f: $a8
	inc b                                            ; $5230: $04
	add c                                            ; $5231: $81
	ld [bc], a                                       ; $5232: $02
	inc l                                            ; $5233: $2c
	ld [$aad7], sp                                   ; $5234: $08 $d7 $aa
	ld d, a                                          ; $5237: $57
	ei                                               ; $5238: $fb
	ld a, a                                          ; $5239: $7f
	cp $d4                                           ; $523a: $fe $d4
	ld hl, sp-$52                                    ; $523c: $f8 $ae
	ld c, b                                          ; $523e: $48
	or b                                             ; $523f: $b0
	ld b, b                                          ; $5240: $40
	db $fd                                           ; $5241: $fd
	sbc h                                            ; $5242: $9c
	ld d, [hl]                                       ; $5243: $56
	cp b                                             ; $5244: $b8
	ld [hl], b                                       ; $5245: $70
	ld [hl], a                                       ; $5246: $77
	ld e, [hl]                                       ; $5247: $5e
	ld a, e                                          ; $5248: $7b
	and h                                            ; $5249: $a4
	call c, $9e01                                    ; $524a: $dc $01 $9e
	ld de, $92f9                                     ; $524d: $11 $f9 $92
	ld sp, $6021                                     ; $5250: $31 $21 $60
	ret nz                                           ; $5253: $c0

	ld h, b                                          ; $5254: $60
	ldh [$f0], a                                     ; $5255: $e0 $f0
	ld hl, sp+$11                                    ; $5257: $f8 $11
	jr nz, @+$22                                     ; $5259: $20 $20

	ld b, b                                          ; $525b: $40
	ret nz                                           ; $525c: $c0

	ld a, b                                          ; $525d: $78
	xor a                                            ; $525e: $af
	sub d                                            ; $525f: $92
	jr nc, jr_054_5202                               ; $5260: $30 $a0

	ret nz                                           ; $5262: $c0

	ld [bc], a                                       ; $5263: $02
	inc c                                            ; $5264: $0c
	nop                                              ; $5265: $00

jr_054_5266:
	inc c                                            ; $5266: $0c
	nop                                              ; $5267: $00

jr_054_5268:
	ret nz                                           ; $5268: $c0

	ret nz                                           ; $5269: $c0

	nop                                              ; $526a: $00
	inc e                                            ; $526b: $1c

jr_054_526c:
	jr nz, jr_054_5268                               ; $526c: $20 $fa

	rst SubAFromDE                                          ; $526e: $df
	ld bc, $03df                                     ; $526f: $01 $df $03
	ld h, a                                          ; $5272: $67
	push af                                          ; $5273: $f5
	sub [hl]                                         ; $5274: $96
	db $f4                                           ; $5275: $f4
	ld sp, hl                                        ; $5276: $f9
	pop af                                           ; $5277: $f1
	ldh [c], a                                       ; $5278: $e2
	and d                                            ; $5279: $a2
	call nz, $0084                                   ; $527a: $c4 $84 $00
	rrca                                             ; $527d: $0f
	ld a, d                                          ; $527e: $7a
	rst GetHLinHL                                          ; $527f: $cf
	ld a, e                                          ; $5280: $7b
	ld [hl-], a                                      ; $5281: $32
	add [hl]                                         ; $5282: $86
	cp $a4                                           ; $5283: $fe $a4
	ld [$2949], sp                                   ; $5285: $08 $49 $29
	sub e                                            ; $5288: $93

jr_054_5289:
	ld e, e                                          ; $5289: $5b
	ld l, [hl]                                       ; $528a: $6e
	or [hl]                                          ; $528b: $b6
	rst SubAFromDE                                          ; $528c: $df
	rst SubAFromDE                                          ; $528d: $df
	sbc a                                            ; $528e: $9f
	sbc a                                            ; $528f: $9f
	ccf                                              ; $5290: $3f
	scf                                              ; $5291: $37
	scf                                              ; $5292: $37
	ld l, a                                          ; $5293: $6f
	call z, $99cc                                    ; $5294: $cc $cc $99
	sbc c                                            ; $5297: $99
	dec sp                                           ; $5298: $3b
	inc sp                                           ; $5299: $33
	ld [hl], a                                       ; $529a: $77
	ld h, a                                          ; $529b: $67
	reti                                             ; $529c: $d9


	rst $38                                          ; $529d: $ff
	sub a                                            ; $529e: $97
	jr c, jr_054_5289                                ; $529f: $38 $e8

	ldh a, [$e8]                                     ; $52a1: $f0 $e8
	ret nc                                           ; $52a3: $d0

	ldh [$c1], a                                     ; $52a4: $e0 $c1
	and e                                            ; $52a6: $a3
	ld a, d                                          ; $52a7: $7a
	ld d, a                                          ; $52a8: $57
	halt                                             ; $52a9: $76
	ld [hl-], a                                      ; $52aa: $32
	ld a, a                                          ; $52ab: $7f
	inc d                                            ; $52ac: $14
	add a                                            ; $52ad: $87
	ld d, $29                                        ; $52ae: $16 $29
	ld a, d                                          ; $52b0: $7a
	ld a, c                                          ; $52b1: $79
	ldh a, [c]                                       ; $52b2: $f2
	push af                                          ; $52b3: $f5
	db $eb                                           ; $52b4: $eb
	ld a, a                                          ; $52b5: $7f
	rst JumpTable                                          ; $52b6: $c7
	add d                                            ; $52b7: $82
	add h                                            ; $52b8: $84
	inc b                                            ; $52b9: $04
	ld [$1008], sp                                   ; $52ba: $08 $08 $10
	adc d                                            ; $52bd: $8a
	adc b                                            ; $52be: $88
	ld d, l                                          ; $52bf: $55
	xor d                                            ; $52c0: $aa
	ld a, l                                          ; $52c1: $7d
	cp a                                             ; $52c2: $bf
	ld a, a                                          ; $52c3: $7f
	rst $38                                          ; $52c4: $ff
	ld d, $fa                                        ; $52c5: $16 $fa
	sub d                                            ; $52c7: $92
	and b                                            ; $52c8: $a0
	jr nz, jr_054_531e                               ; $52c9: $20 $53

	and a                                            ; $52cb: $a7
	ld c, a                                          ; $52cc: $4f
	sbc a                                            ; $52cd: $9f
	ld e, a                                          ; $52ce: $5f
	sbc a                                            ; $52cf: $9f
	nop                                              ; $52d0: $00
	nop                                              ; $52d1: $00
	inc b                                            ; $52d2: $04
	ld [$de10], sp                                   ; $52d3: $08 $10 $de
	jr nz, jr_054_526c                               ; $52d6: $20 $94

	ccf                                              ; $52d8: $3f
	ei                                               ; $52d9: $fb
	ei                                               ; $52da: $fb
	pop af                                           ; $52db: $f1
	rst SubAFromBC                                          ; $52dc: $e7
	rst GetHLinHL                                          ; $52dd: $cf
	rst SubAFromDE                                          ; $52de: $df
	sbc a                                            ; $52df: $9f
	ld a, a                                          ; $52e0: $7f
	rlca                                             ; $52e1: $07
	inc b                                            ; $52e2: $04
	ld a, e                                          ; $52e3: $7b
	adc [hl]                                         ; $52e4: $8e
	ld a, a                                          ; $52e5: $7f
	adc l                                            ; $52e6: $8d
	pop de                                           ; $52e7: $d1
	rst $38                                          ; $52e8: $ff
	sub a                                            ; $52e9: $97
	ld hl, sp-$03                                    ; $52ea: $f8 $fd
	ld hl, sp-$0c                                    ; $52ec: $f8 $f4
	ld a, [$faf0]                                    ; $52ee: $fa $f0 $fa
	ldh a, [$61]                                     ; $52f1: $f0 $61
	or a                                             ; $52f3: $b7
	sbc b                                            ; $52f4: $98
	dec b                                            ; $52f5: $05
	inc hl                                           ; $52f6: $23
	ld b, $22                                        ; $52f7: $06 $22
	ld d, [hl]                                       ; $52f9: $56
	ld [hl+], a                                      ; $52fa: $22
	ld d, [hl]                                       ; $52fb: $56
	reti                                             ; $52fc: $d9


	rst $38                                          ; $52fd: $ff
	sub a                                            ; $52fe: $97
	dec b                                            ; $52ff: $05
	ld a, [bc]                                       ; $5300: $0a
	ld de, $118a                                     ; $5301: $11 $8a $11
	xor d                                            ; $5304: $aa
	ld de, $d9a2                                     ; $5305: $11 $a2 $d9
	rst $38                                          ; $5308: $ff
	sub a                                            ; $5309: $97
	ld de, $11ba                                     ; $530a: $11 $ba $11
	ld a, [hl-]                                      ; $530d: $3a
	ld d, b                                          ; $530e: $50
	ld a, [hl-]                                      ; $530f: $3a
	ld [hl], h                                       ; $5310: $74
	cp d                                             ; $5311: $ba
	ld h, c                                          ; $5312: $61
	ld h, [hl]                                       ; $5313: $66
	sbc b                                            ; $5314: $98
	jr nc, jr_054_5387                               ; $5315: $30 $70

	or b                                             ; $5317: $b0
	ld [hl], b                                       ; $5318: $70
	ldh a, [$60]                                     ; $5319: $f0 $60
	pop hl                                           ; $531b: $e1
	reti                                             ; $531c: $d9


	rst $38                                          ; $531d: $ff

jr_054_531e:
	ld a, a                                          ; $531e: $7f
	adc e                                            ; $531f: $8b
	ld a, a                                          ; $5320: $7f
	adc d                                            ; $5321: $8a
	ld a, [hl]                                       ; $5322: $7e
	rst FarCall                                          ; $5323: $f7
	rst SubAFromDE                                          ; $5324: $df
	add b                                            ; $5325: $80
	sbc d                                            ; $5326: $9a
	ld hl, sp-$10                                    ; $5327: $f8 $f0
	ldh a, [$e0]                                     ; $5329: $f0 $e0
	ret nz                                           ; $532b: $c0

	ld a, e                                          ; $532c: $7b
	ld hl, sp-$0f                                    ; $532d: $f8 $f1
	db $dd                                           ; $532f: $dd
	ld de, $31df                                     ; $5330: $11 $df $31
	sbc l                                            ; $5333: $9d
	dec [hl]                                         ; $5334: $35
	dec h                                            ; $5335: $25
	ld sp, hl                                        ; $5336: $f9
	sbc d                                            ; $5337: $9a
	call z, $958f                                    ; $5338: $cc $8f $95
	sub h                                            ; $533b: $94
	sub h                                            ; $533c: $94
	sbc $b4                                          ; $533d: $de $b4
	ld a, h                                          ; $533f: $7c
	xor c                                            ; $5340: $a9
	ld h, [hl]                                       ; $5341: $66
	ld h, b                                          ; $5342: $60
	sbc c                                            ; $5343: $99
	ret nz                                           ; $5344: $c0

	ldh a, [$fb]                                     ; $5345: $f0 $fb
	rst $38                                          ; $5347: $ff
	ldh a, [$f7]                                     ; $5348: $f0 $f7
	ld a, d                                          ; $534a: $7a
	ld e, c                                          ; $534b: $59
	sub [hl]                                         ; $534c: $96
	ldh [$fc], a                                     ; $534d: $e0 $fc
	rst $38                                          ; $534f: $ff
	ldh a, [$f8]                                     ; $5350: $f0 $f8
	rlca                                             ; $5352: $07
	ld c, $1e                                        ; $5353: $0e $1e
	ld a, h                                          ; $5355: $7c
	ld a, d                                          ; $5356: $7a
	rra                                              ; $5357: $1f
	add b                                            ; $5358: $80
	ld a, b                                          ; $5359: $78
	ld bc, $0f03                                     ; $535a: $01 $03 $0f
	scf                                              ; $535d: $37
	rst JumpTable                                          ; $535e: $c7
	rrca                                             ; $535f: $0f
	rst GetHLinHL                                          ; $5360: $cf
	ccf                                              ; $5361: $3f
	ld [de], a                                       ; $5362: $12
	ld hl, $5225                                     ; $5363: $21 $25 $52
	ld c, e                                          ; $5366: $4b
	and c                                            ; $5367: $a1
	or [hl]                                          ; $5368: $b6
	inc hl                                           ; $5369: $23
	db $ec                                           ; $536a: $ec
	call z, $89c8                                    ; $536b: $cc $c8 $89
	sub c                                            ; $536e: $91
	inc de                                           ; $536f: $13
	inc bc                                           ; $5370: $03
	ld b, $dc                                        ; $5371: $06 $dc
	ld l, h                                          ; $5373: $6c
	cp c                                             ; $5374: $b9
	reti                                             ; $5375: $d9


	ld [hl], e                                       ; $5376: $73
	or a                                             ; $5377: $b7
	sbc b                                            ; $5378: $98
	rst SubAFromBC                                          ; $5379: $e7
	ld c, a                                          ; $537a: $4f
	ld l, a                                          ; $537b: $6f

Jump_054_537c:
	rst SubAFromDE                                          ; $537c: $df
	rst SubAFromDE                                          ; $537d: $df
	cp a                                             ; $537e: $bf
	cp a                                             ; $537f: $bf
	ld a, d                                          ; $5380: $7a
	xor a                                            ; $5381: $af
	sbc [hl]                                         ; $5382: $9e
	rst AddAOntoHL                                          ; $5383: $ef
	ld a, e                                          ; $5384: $7b
	inc d                                            ; $5385: $14
	ld a, d                                          ; $5386: $7a

jr_054_5387:
	pop af                                           ; $5387: $f1
	sbc [hl]                                         ; $5388: $9e
	ret nz                                           ; $5389: $c0

	reti                                             ; $538a: $d9


	rst $38                                          ; $538b: $ff
	adc h                                            ; $538c: $8c
	push bc                                          ; $538d: $c5
	xor e                                            ; $538e: $ab
	ld d, a                                          ; $538f: $57
	xor e                                            ; $5390: $ab
	ld d, a                                          ; $5391: $57
	xor a                                            ; $5392: $af
	ld d, a                                          ; $5393: $57
	dec hl                                           ; $5394: $2b
	ld a, [$e8f4]                                    ; $5395: $fa $f4 $e8
	call nc, $f8e8                                   ; $5398: $d4 $e8 $f8
	ld hl, sp-$04                                    ; $539b: $f8 $fc
	rst SubAFromBC                                          ; $539d: $e7
	rst AddAOntoHL                                          ; $539e: $ef
	rst AddAOntoHL                                          ; $539f: $ef
	sbc $df                                          ; $53a0: $de $df
	ld a, [hl]                                       ; $53a2: $7e
	ld [hl+], a                                      ; $53a3: $22
	sbc $10                                          ; $53a4: $de $10
	sbc $20                                          ; $53a6: $de $20
	ld a, [hl]                                       ; $53a8: $7e
	ld [de], a                                       ; $53a9: $12
	ld d, c                                          ; $53aa: $51
	ret z                                            ; $53ab: $c8

	cp $9e                                           ; $53ac: $fe $9e
	ccf                                              ; $53ae: $3f
	sbc $bf                                          ; $53af: $de $bf
	ld a, l                                          ; $53b1: $7d
	rra                                              ; $53b2: $1f
	rst SubAFromDE                                          ; $53b3: $df
	ld a, [hl]                                       ; $53b4: $7e
	db $dd                                           ; $53b5: $dd
	ld b, b                                          ; $53b6: $40
	sbc [hl]                                         ; $53b7: $9e
	add b                                            ; $53b8: $80
	sbc $81                                          ; $53b9: $de $81
	rst SubAFromDE                                          ; $53bb: $df
	cp a                                             ; $53bc: $bf
	ld a, d                                          ; $53bd: $7a
	ld e, c                                          ; $53be: $59
	call c, $d27f                                    ; $53bf: $dc $7f $d2
	rst $38                                          ; $53c2: $ff
	ld a, b                                          ; $53c3: $78
	push af                                          ; $53c4: $f5
	ld [hl], a                                       ; $53c5: $77
	ld a, [$fa99]                                    ; $53c6: $fa $99 $fa
	di                                               ; $53c9: $f3
	ld a, [$fbf7]                                    ; $53ca: $fa $f7 $fb
	rst FarCall                                          ; $53cd: $f7
	ld [hl], l                                       ; $53ce: $75
	ld e, [hl]                                       ; $53cf: $5e
	sbc [hl]                                         ; $53d0: $9e
	rrca                                             ; $53d1: $0f
	ld [hl], e                                       ; $53d2: $73
	ldh a, [$97]                                     ; $53d3: $f0 $97
	ld a, [hl+]                                      ; $53d5: $2a
	ld d, [hl]                                       ; $53d6: $56
	ld l, [hl]                                       ; $53d7: $6e
	halt                                             ; $53d8: $76
	ld l, l                                          ; $53d9: $6d
	ld [hl], h                                       ; $53da: $74
	xor l                                            ; $53db: $ad
	db $f4                                           ; $53dc: $f4
	jp c, $96ff                                      ; $53dd: $da $ff $96

	rra                                              ; $53e0: $1f
	inc b                                            ; $53e1: $04
	and d                                            ; $53e2: $a2
	ld b, $ab                                        ; $53e3: $06 $ab
	ld b, a                                          ; $53e5: $47
	xor a                                            ; $53e6: $af
	ld b, a                                          ; $53e7: $47
	xor [hl]                                         ; $53e8: $ae
	reti                                             ; $53e9: $d9


	rst $38                                          ; $53ea: $ff
	sbc b                                            ; $53eb: $98
	ld [hl], h                                       ; $53ec: $74
	cp b                                             ; $53ed: $b8
	ld [hl], l                                       ; $53ee: $75
	cp b                                             ; $53ef: $b8
	ld [hl], l                                       ; $53f0: $75
	cp [hl]                                          ; $53f1: $be
	push af                                          ; $53f2: $f5
	ld l, e                                          ; $53f3: $6b
	ld [de], a                                       ; $53f4: $12
	rst SubAFromDE                                          ; $53f5: $df
	rst $38                                          ; $53f6: $ff
	sub h                                            ; $53f7: $94
	ld h, c                                          ; $53f8: $61
	ldh [c], a                                       ; $53f9: $e2
	ld h, d                                          ; $53fa: $62
	db $e4                                           ; $53fb: $e4
	call nz, $c8e8                                   ; $53fc: $c4 $e8 $c8
	ret nc                                           ; $53ff: $d0

	rst $38                                          ; $5400: $ff
	cp $fe                                           ; $5401: $fe $fe
	ld [hl], l                                       ; $5403: $75
	scf                                              ; $5404: $37
	ld h, b                                          ; $5405: $60
	adc b                                            ; $5406: $88
	jp hl                                            ; $5407: $e9


	sbc [hl]                                         ; $5408: $9e
	dec h                                            ; $5409: $25
	db $dd                                           ; $540a: $dd
	ld h, l                                          ; $540b: $65
	sbc h                                            ; $540c: $9c
	ld b, l                                          ; $540d: $45
	ld b, h                                          ; $540e: $44
	call nz, $9ef9                                   ; $540f: $c4 $f9 $9e
	or h                                             ; $5412: $b4
	sbc $f4                                          ; $5413: $de $f4
	db $dd                                           ; $5415: $dd
	db $e4                                           ; $5416: $e4
	ld h, h                                          ; $5417: $64
	ldh [$9b], a                                     ; $5418: $e0 $9b
	rst AddAOntoHL                                          ; $541a: $ef
	rst SubAFromBC                                          ; $541b: $e7
	push hl                                          ; $541c: $e5
	ld [$fe7b], a                                    ; $541d: $ea $7b $fe
	add b                                            ; $5420: $80
	ldh [c], a                                       ; $5421: $e2
	rst $38                                          ; $5422: $ff
	rst $38                                          ; $5423: $ff
	ld a, [$faf5]                                    ; $5424: $fa $f5 $fa
	db $f4                                           ; $5427: $f4
	ld a, [$b9fc]                                    ; $5428: $fa $fc $b9
	or b                                             ; $542b: $b0
	ld [hl], d                                       ; $542c: $72
	db $10                                           ; $542d: $10
	ld de, $2215                                     ; $542e: $11 $15 $22
	ld [hl+], a                                      ; $5431: $22
	ld e, $de                                        ; $5432: $1e $de
	ld a, h                                          ; $5434: $7c
	inc e                                            ; $5435: $1c
	inc e                                            ; $5436: $1c
	jr jr_054_5472                                   ; $5437: $18 $39

	add hl, sp                                       ; $5439: $39
	dec c                                            ; $543a: $0d
	ld b, $9b                                        ; $543b: $06 $9b
	adc l                                            ; $543d: $8d
	or [hl]                                          ; $543e: $b6
	cp d                                             ; $543f: $ba
	adc l                                            ; $5440: $8d
	ld e, h                                          ; $5441: $5c
	ld h, l                                          ; $5442: $65
	ld b, $0d                                        ; $5443: $06 $0d
	dec c                                            ; $5445: $0d
	dec de                                           ; $5446: $1b
	dec de                                           ; $5447: $1b
	rla                                              ; $5448: $17
	scf                                              ; $5449: $37
	ccf                                              ; $544a: $3f
	rst SubAFromDE                                          ; $544b: $df
	cp h                                             ; $544c: $bc
	cp b                                             ; $544d: $b8
	ld [hl], c                                       ; $544e: $71
	ld h, a                                          ; $544f: $67
	push af                                          ; $5450: $f5
	db $eb                                           ; $5451: $eb
	push de                                          ; $5452: $d5
	ld [hl], l                                       ; $5453: $75
	and e                                            ; $5454: $a3
	sbc c                                            ; $5455: $99
	ld hl, sp-$20                                    ; $5456: $f8 $e0
	ret nz                                           ; $5458: $c0

	add b                                            ; $5459: $80
	ld [bc], a                                       ; $545a: $02
	rra                                              ; $545b: $1f
	db $db                                           ; $545c: $db
	rst $38                                          ; $545d: $ff
	sbc l                                            ; $545e: $9d
	db $fd                                           ; $545f: $fd
	ldh [$fb], a                                     ; $5460: $e0 $fb
	add l                                            ; $5462: $85
	and a                                            ; $5463: $a7
	pop de                                           ; $5464: $d1
	ldh [$d0], a                                     ; $5465: $e0 $d0
	and b                                            ; $5467: $a0
	ret nc                                           ; $5468: $d0

	xor b                                            ; $5469: $a8
	call nc, $2f5f                                   ; $546a: $d4 $5f $2f
	rra                                              ; $546d: $1f
	cpl                                              ; $546e: $2f
	ld e, a                                          ; $546f: $5f
	cpl                                              ; $5470: $2f
	ld d, a                                          ; $5471: $57

jr_054_5472:
	dec hl                                           ; $5472: $2b
	sub l                                            ; $5473: $95
	add d                                            ; $5474: $82
	ld b, c                                          ; $5475: $41
	jr nz, jr_054_5488                               ; $5476: $20 $10

	ld [$060c], sp                                   ; $5478: $08 $0c $06
	ld l, d                                          ; $547b: $6a
	db $fd                                           ; $547c: $fd
	ld l, a                                          ; $547d: $6f
	dec a                                            ; $547e: $3d
	adc [hl]                                         ; $547f: $8e
	ld a, a                                          ; $5480: $7f
	cp [hl]                                          ; $5481: $be
	ld e, [hl]                                       ; $5482: $5e
	cp [hl]                                          ; $5483: $be
	ld e, [hl]                                       ; $5484: $5e
	ld l, $56                                        ; $5485: $2e $56
	dec l                                            ; $5487: $2d

jr_054_5488:
	add b                                            ; $5488: $80
	ld b, c                                          ; $5489: $41
	and c                                            ; $548a: $a1
	ld b, c                                          ; $548b: $41
	and c                                            ; $548c: $a1
	pop de                                           ; $548d: $d1
	xor c                                            ; $548e: $a9
	jp nc, $7b7e                                     ; $548f: $d2 $7e $7b

	add hl, sp                                       ; $5492: $39
	rst SubAFromDE                                          ; $5493: $df
	db $fc                                           ; $5494: $fc
	rst SubAFromDE                                          ; $5495: $df
	db $fd                                           ; $5496: $fd
	sbc [hl]                                         ; $5497: $9e
	add c                                            ; $5498: $81
	ld a, c                                          ; $5499: $79
	inc c                                            ; $549a: $0c
	db $dd                                           ; $549b: $dd
	inc bc                                           ; $549c: $03
	ld l, [hl]                                       ; $549d: $6e
	ret                                              ; $549e: $c9


	rst SubAFromDE                                          ; $549f: $df
	cp $d6                                           ; $54a0: $fe $d6
	rst $38                                          ; $54a2: $ff
	ld [hl], a                                       ; $54a3: $77
	sbc $9e                                          ; $54a4: $de $9e
	cp $60                                           ; $54a6: $fe $60
	ld l, a                                          ; $54a8: $6f
	sbc b                                            ; $54a9: $98
	rst $38                                          ; $54aa: $ff
	ld e, a                                          ; $54ab: $5f
	dec hl                                           ; $54ac: $2b
	dec d                                            ; $54ad: $15
	ld a, [bc]                                       ; $54ae: $0a
	dec b                                            ; $54af: $05
	ld [bc], a                                       ; $54b0: $02
	ld h, a                                          ; $54b1: $67
	ldh a, [$7f]                                     ; $54b2: $f0 $7f
	xor c                                            ; $54b4: $a9
	ld [hl], a                                       ; $54b5: $77
	cp $9d                                           ; $54b6: $fe $9d
	ld a, a                                          ; $54b8: $7f
	cp a                                             ; $54b9: $bf
	ld [hl], d                                       ; $54ba: $72
	or d                                             ; $54bb: $b2
	ld [hl], a                                       ; $54bc: $77
	and b                                            ; $54bd: $a0
	ld a, [hl]                                       ; $54be: $7e
	add $9e                                          ; $54bf: $c6 $9e
	cp a                                             ; $54c1: $bf
	push de                                          ; $54c2: $d5
	rst $38                                          ; $54c3: $ff
	ld a, [hl]                                       ; $54c4: $7e
	add $7f                                          ; $54c5: $c6 $7f
	cp $9c                                           ; $54c7: $fe $9c
	ld [hl], l                                       ; $54c9: $75
	cp $fd                                           ; $54ca: $fe $fd
	ret c                                            ; $54cc: $d8

	rst $38                                          ; $54cd: $ff
	rst SubAFromDE                                          ; $54ce: $df
	ldh [$75], a                                     ; $54cf: $e0 $75
	sbc d                                            ; $54d1: $9a
	ld a, l                                          ; $54d2: $7d
	sbc c                                            ; $54d3: $99
	ld h, a                                          ; $54d4: $67
	ld hl, sp-$69                                    ; $54d5: $f8 $97
	inc bc                                           ; $54d7: $03
	rlca                                             ; $54d8: $07
	dec b                                            ; $54d9: $05
	ld c, $0c                                        ; $54da: $0e $0c
	ld sp, $cf67                                     ; $54dc: $31 $67 $cf
	ld a, b                                          ; $54df: $78
	sub l                                            ; $54e0: $95
	ld a, l                                          ; $54e1: $7d
	adc $98                                          ; $54e2: $ce $98
	rra                                              ; $54e4: $1f
	ld a, $f8                                        ; $54e5: $3e $f8
	rra                                              ; $54e7: $1f
	ldh [rTAC], a                                    ; $54e8: $e0 $07
	ld a, b                                          ; $54ea: $78
	sbc $f8                                          ; $54eb: $de $f8
	sbc d                                            ; $54ed: $9a
	or b                                             ; $54ee: $b0
	rra                                              ; $54ef: $1f
	pop af                                           ; $54f0: $f1
	rst $38                                          ; $54f1: $ff
	ld hl, sp+$75                                    ; $54f2: $f8 $75
	ld [hl], e                                       ; $54f4: $73
	sbc d                                            ; $54f5: $9a
	call nz, $e424                                   ; $54f6: $c4 $24 $e4
	call nz, $dec6                                   ; $54f9: $c4 $c6 $de
	rst JumpTable                                          ; $54fc: $c7
	ld a, b                                          ; $54fd: $78
	ld d, h                                          ; $54fe: $54
	ld [hl], h                                       ; $54ff: $74
	ld [hl], c                                       ; $5500: $71
	sbc [hl]                                         ; $5501: $9e
	inc bc                                           ; $5502: $03
	sbc $ec                                          ; $5503: $de $ec
	sbc b                                            ; $5505: $98
	ld l, l                                          ; $5506: $6d
	call $999d                                       ; $5507: $cd $9d $99
	sbc e                                            ; $550a: $9b
	ld a, a                                          ; $550b: $7f
	ld a, a                                          ; $550c: $7f
	ld l, h                                          ; $550d: $6c
	db $e3                                           ; $550e: $e3
	ld a, d                                          ; $550f: $7a
	call nz, $c0df                                   ; $5510: $c4 $df $c0
	sbc h                                            ; $5513: $9c
	pop bc                                           ; $5514: $c1
	sbc a                                            ; $5515: $9f
	rst FarCall                                          ; $5516: $f7
	ld a, d                                          ; $5517: $7a
	jp nz, Jump_054_567b                             ; $5518: $c2 $7b $56

	ld a, a                                          ; $551b: $7f
	and c                                            ; $551c: $a1
	sbc h                                            ; $551d: $9c
	ld h, c                                          ; $551e: $61
	and c                                            ; $551f: $a1
	ldh [c], a                                       ; $5520: $e2
	sbc $22                                          ; $5521: $de $22
	rst SubAFromDE                                          ; $5523: $df
	db $e4                                           ; $5524: $e4
	sbc [hl]                                         ; $5525: $9e
	dec sp                                           ; $5526: $3b
	call c, Call_054_7e3f                            ; $5527: $dc $3f $7e
	ld a, [de]                                       ; $552a: $1a
	sub a                                            ; $552b: $97
	add hl, hl                                       ; $552c: $29
	dec hl                                           ; $552d: $2b
	ld c, e                                          ; $552e: $4b
	ld d, [hl]                                       ; $552f: $56
	ld d, [hl]                                       ; $5530: $56
	ld e, [hl]                                       ; $5531: $5e
	cp h                                             ; $5532: $bc
	cp h                                             ; $5533: $bc
	ld [hl], a                                       ; $5534: $77
	inc l                                            ; $5535: $2c
	halt                                             ; $5536: $76
	ld c, a                                          ; $5537: $4f
	add b                                            ; $5538: $80
	dec bc                                           ; $5539: $0b
	ld d, $0c                                        ; $553a: $16 $0c
	ld [$2633], sp                                   ; $553c: $08 $33 $26
	ld c, l                                          ; $553f: $4d
	adc d                                            ; $5540: $8a
	add b                                            ; $5541: $80
	ld bc, $0603                                     ; $5542: $01 $03 $06
	inc c                                            ; $5545: $0c
	add hl, de                                       ; $5546: $19
	ld [hl-], a                                      ; $5547: $32
	ld [hl], h                                       ; $5548: $74
	sbc a                                            ; $5549: $9f
	ld a, b                                          ; $554a: $78
	pop hl                                           ; $554b: $e1
	rrca                                             ; $554c: $0f
	dec a                                            ; $554d: $3d
	ld a, [$aa75]                                    ; $554e: $fa $75 $aa
	ld h, b                                          ; $5551: $60
	add a                                            ; $5552: $87
	ld e, $70                                        ; $5553: $1e $70
	jp nz, $0a05                                     ; $5555: $c2 $05 $0a

	adc [hl]                                         ; $5558: $8e
	dec d                                            ; $5559: $15
	add sp, $00                                      ; $555a: $e8 $00
	db $fc                                           ; $555c: $fc
	ldh a, [rLCDC]                                   ; $555d: $f0 $40
	add b                                            ; $555f: $80
	ld b, b                                          ; $5560: $40

jr_054_5561:
	and b                                            ; $5561: $a0
	rla                                              ; $5562: $17
	rst $38                                          ; $5563: $ff
	inc bc                                           ; $5564: $03
	rrca                                             ; $5565: $0f
	cp a                                             ; $5566: $bf
	ld a, a                                          ; $5567: $7f
	cp a                                             ; $5568: $bf
	ld e, a                                          ; $5569: $5f
	sbc $07                                          ; $556a: $de $07
	call c, $d903                                    ; $556c: $dc $03 $d9
	rst $38                                          ; $556f: $ff
	adc a                                            ; $5570: $8f
	dec d                                            ; $5571: $15
	dec l                                            ; $5572: $2d
	dec d                                            ; $5573: $15
	add hl, hl                                       ; $5574: $29
	inc de                                           ; $5575: $13
	dec hl                                           ; $5576: $2b
	inc de                                           ; $5577: $13
	inc hl                                           ; $5578: $23
	ld [$ead2], a                                    ; $5579: $ea $d2 $ea
	sub $ec                                          ; $557c: $d6 $ec
	call nc, $dcec                                   ; $557e: $d4 $ec $dc
	sbc $f9                                          ; $5581: $de $f9
	rst SubAFromDE                                          ; $5583: $df
	ei                                               ; $5584: $fb
	sbc $f3                                          ; $5585: $de $f3
	call c, $de07                                    ; $5587: $dc $07 $de
	rrca                                             ; $558a: $0f
	ld [hl], a                                       ; $558b: $77
	sbc d                                            ; $558c: $9a
	halt                                             ; $558d: $76
	or b                                             ; $558e: $b0
	ld l, d                                          ; $558f: $6a
	push bc                                          ; $5590: $c5
	ld e, [hl]                                       ; $5591: $5e
	cp b                                             ; $5592: $b8
	ld l, e                                          ; $5593: $6b
	push af                                          ; $5594: $f5
	sbc d                                            ; $5595: $9a
	ld bc, $3f7f                                     ; $5596: $01 $7f $3f
	sbc a                                            ; $5599: $9f
	rst GetHLinHL                                          ; $559a: $cf
	ld l, c                                          ; $559b: $69
	ccf                                              ; $559c: $3f
	sbc l                                            ; $559d: $9d
	rlca                                             ; $559e: $07
	sbc a                                            ; $559f: $9f
	ld a, d                                          ; $55a0: $7a
	or d                                             ; $55a1: $b2
	ld l, h                                          ; $55a2: $6c
	ld a, [hl+]                                      ; $55a3: $2a
	ld a, h                                          ; $55a4: $7c

jr_054_55a5:
	jr nc, jr_054_55a5                               ; $55a5: $30 $fe

	ret c                                            ; $55a7: $d8

	rst $38                                          ; $55a8: $ff
	ld a, e                                          ; $55a9: $7b
	adc b                                            ; $55aa: $88
	ld h, a                                          ; $55ab: $67
	ldh a, [$62]                                     ; $55ac: $f0 $62
	add $9b                                          ; $55ae: $c6 $9b
	rra                                              ; $55b0: $1f
	rlca                                             ; $55b1: $07
	ld bc, $77fc                                     ; $55b2: $01 $fc $77
	ret nz                                           ; $55b5: $c0

	add b                                            ; $55b6: $80
	add $fc                                          ; $55b7: $c6 $fc
	ld sp, hl                                        ; $55b9: $f9
	rst JumpTable                                          ; $55ba: $c7
	sbc b                                            ; $55bb: $98
	and a                                            ; $55bc: $a7
	and e                                            ; $55bd: $a3
	ld bc, $cf03                                     ; $55be: $01 $03 $cf
	rst $38                                          ; $55c1: $ff
	rst GetHLinHL                                          ; $55c2: $cf
	cp a                                             ; $55c3: $bf
	rst SubAFromBC                                          ; $55c4: $e7
	ldh [rAUD3HIGH], a                               ; $55c5: $e0 $1e
	ld a, a                                          ; $55c7: $7f
	sbc a                                            ; $55c8: $9f
	ld c, $80                                        ; $55c9: $0e $80
	ld [hl], b                                       ; $55cb: $70
	ld c, $c9                                        ; $55cc: $0e $c9
	ldh a, [$e0]                                     ; $55ce: $f0 $e0
	add b                                            ; $55d0: $80
	nop                                              ; $55d1: $00
	add b                                            ; $55d2: $80
	ldh a, [$fe]                                     ; $55d3: $f0 $fe
	rst $38                                          ; $55d5: $ff
	rst SubAFromDE                                          ; $55d6: $df
	jr nc, jr_054_5561                               ; $55d7: $30 $88

	ldh a, [$30]                                     ; $55d9: $f0 $30
	jr jr_054_55e9                                   ; $55db: $18 $0c

	ld bc, $00f9                                     ; $55dd: $01 $f9 $00
	ld b, $06                                        ; $55e0: $06 $06
	inc b                                            ; $55e2: $04
	ret nz                                           ; $55e3: $c0

	ldh [rSB], a                                     ; $55e4: $e0 $01
	ld sp, hl                                        ; $55e6: $f9
	cp $fe                                           ; $55e7: $fe $fe

jr_054_55e9:
	add [hl]                                         ; $55e9: $86
	sbc a                                            ; $55ea: $9f
	xor l                                            ; $55eb: $ad
	cp a                                             ; $55ec: $bf
	ccf                                              ; $55ed: $3f
	inc l                                            ; $55ee: $2c
	rlca                                             ; $55ef: $07
	sbc $ff                                          ; $55f0: $de $ff
	sub e                                            ; $55f2: $93
	di                                               ; $55f3: $f3
	ldh [$e7], a                                     ; $55f4: $e0 $e7
	ld hl, sp-$45                                    ; $55f6: $f8 $bb
	rst FarCall                                          ; $55f8: $f7
	rst AddAOntoHL                                          ; $55f9: $ef
	cp $fd                                           ; $55fa: $fe $fd
	ld c, e                                          ; $55fc: $4b
	cp [hl]                                          ; $55fd: $be
	ld a, l                                          ; $55fe: $7d
	ld a, e                                          ; $55ff: $7b
	ld l, a                                          ; $5600: $6f
	add [hl]                                         ; $5601: $86
	db $fd                                           ; $5602: $fd
	ei                                               ; $5603: $fb
	rst $38                                          ; $5604: $ff
	rst JumpTable                                          ; $5605: $c7
	inc hl                                           ; $5606: $23
	rst AddAOntoHL                                          ; $5607: $ef
	or b                                             ; $5608: $b0
	ld b, l                                          ; $5609: $45
	add h                                            ; $560a: $84
	ld bc, $70f8                                     ; $560b: $01 $f8 $70
	ldh a, [$9f]                                     ; $560e: $f0 $9f
	ld a, h                                          ; $5610: $7c
	ld hl, sp-$05                                    ; $5611: $f8 $fb
	cp $f0                                           ; $5613: $fe $f0
	sub b                                            ; $5615: $90
	db $10                                           ; $5616: $10
	and h                                            ; $5617: $a4
	ld h, h                                          ; $5618: $64
	db $e4                                           ; $5619: $e4
	add sp, -$23                                     ; $561a: $e8 $dd
	add hl, hl                                       ; $561c: $29
	ld a, a                                          ; $561d: $7f
	ld a, h                                          ; $561e: $7c
	db $db                                           ; $561f: $db
	ccf                                              ; $5620: $3f
	sbc h                                            ; $5621: $9c
	db $fd                                           ; $5622: $fd
	or $f6                                           ; $5623: $f6 $f6
	ld a, d                                          ; $5625: $7a
	ret                                              ; $5626: $c9


	adc l                                            ; $5627: $8d
	add sp, -$17                                     ; $5628: $e8 $e9
	ld hl, sp-$07                                    ; $562a: $f8 $f9
	ld sp, hl                                        ; $562c: $f9
	di                                               ; $562d: $f3
	di                                               ; $562e: $f3
	rst FarCall                                          ; $562f: $f7
	rst FarCall                                          ; $5630: $f7
	or $1d                                           ; $5631: $f6 $1d
	ld [hl-], a                                      ; $5633: $32

Call_054_5634:
	ld hl, $4142                                     ; $5634: $21 $42 $41
	add d                                            ; $5637: $82
	inc bc                                           ; $5638: $03
	rrca                                             ; $5639: $0f
	ld [hl], d                                       ; $563a: $72
	ld b, c                                          ; $563b: $41
	cp $80                                           ; $563c: $fe $80
	ld d, l                                          ; $563e: $55
	xor [hl]                                         ; $563f: $ae
	ld e, a                                          ; $5640: $5f
	cp a                                             ; $5641: $bf
	ld a, c                                          ; $5642: $79
	db $f4                                           ; $5643: $f4
	xor d                                            ; $5644: $aa
	ld d, h                                          ; $5645: $54
	ld a, [hl+]                                      ; $5646: $2a
	ld d, c                                          ; $5647: $51
	nop                                              ; $5648: $00
	nop                                              ; $5649: $00
	ld b, $0b                                        ; $564a: $06 $0b
	ld d, l                                          ; $564c: $55
	xor e                                            ; $564d: $ab
	ld d, b                                          ; $564e: $50
	and b                                            ; $564f: $a0
	ret nc                                           ; $5650: $d0

	add sp, -$0b                                     ; $5651: $e8 $f5
	ld a, d                                          ; $5653: $7a
	dec a                                            ; $5654: $3d
	ld e, $af                                        ; $5655: $1e $af
	ld e, a                                          ; $5657: $5f
	cpl                                              ; $5658: $2f
	rla                                              ; $5659: $17
	ld a, [bc]                                       ; $565a: $0a
	add l                                            ; $565b: $85
	jp nz, $e19e                                     ; $565c: $c2 $9e $e1

	sbc $03                                          ; $565f: $de $03
	rst SubAFromDE                                          ; $5661: $df
	ld bc, $819c                                     ; $5662: $01 $9c $81
	nop                                              ; $5665: $00
	add b                                            ; $5666: $80
	ld l, a                                          ; $5667: $6f
	jr z, jr_054_56e9                                ; $5668: $28 $7f

	cp $9c                                           ; $566a: $fe $9c
	inc de                                           ; $566c: $13
	inc bc                                           ; $566d: $03
	rlca                                             ; $566e: $07
	ld a, e                                          ; $566f: $7b
	cp $9a                                           ; $5670: $fe $9a
	add a                                            ; $5672: $87
	adc e                                            ; $5673: $8b
	db $ec                                           ; $5674: $ec
	db $fc                                           ; $5675: $fc
	ld hl, sp+$77                                    ; $5676: $f8 $77
	cp $9c                                           ; $5678: $fe $9c
	db $f4                                           ; $567a: $f4

Jump_054_567b:
	di                                               ; $567b: $f3
	rst FarCall                                          ; $567c: $f7
	db $dd                                           ; $567d: $dd
	rst SubAFromBC                                          ; $567e: $e7
	rst SubAFromDE                                          ; $567f: $df
	rst AddAOntoHL                                          ; $5680: $ef
	rst SubAFromDE                                          ; $5681: $df
	rrca                                             ; $5682: $0f
	db $db                                           ; $5683: $db
	rra                                              ; $5684: $1f
	sbc $fd                                          ; $5685: $de $fd
	ld [hl], d                                       ; $5687: $72
	xor l                                            ; $5688: $ad
	db $db                                           ; $5689: $db
	cp $df                                           ; $568a: $fe $df
	db $fc                                           ; $568c: $fc
	jp c, $9eff                                      ; $568d: $da $ff $9e

	ld d, a                                          ; $5690: $57
	jp c, $9eff                                      ; $5691: $da $ff $9e

	ld bc, $ffd1                                     ; $5694: $01 $d1 $ff
	db $dd                                           ; $5697: $dd
	ldh [$9c], a                                     ; $5698: $e0 $9c
	ldh a, [$f8]                                     ; $569a: $f0 $f8
	db $fc                                           ; $569c: $fc

jr_054_569d:
	ld l, [hl]                                       ; $569d: $6e
	and e                                            ; $569e: $a3
	sub l                                            ; $569f: $95
	rst SubAFromDE                                          ; $56a0: $df
	rst AddAOntoHL                                          ; $56a1: $ef
	rst SubAFromHL                                          ; $56a2: $d7
	ccf                                              ; $56a3: $3f
	ccf                                              ; $56a4: $3f
	rra                                              ; $56a5: $1f
	rrca                                             ; $56a6: $0f
	rlca                                             ; $56a7: $07
	ld [bc], a                                       ; $56a8: $02
	ld bc, $b45e                                     ; $56a9: $01 $5e $b4
	db $dd                                           ; $56ac: $dd
	rst $38                                          ; $56ad: $ff
	ld a, [hl]                                       ; $56ae: $7e
	or c                                             ; $56af: $b1
	sbc [hl]                                         ; $56b0: $9e
	xor a                                            ; $56b1: $af
	reti                                             ; $56b2: $d9


	rst $38                                          ; $56b3: $ff
	sbc d                                            ; $56b4: $9a
	and e                                            ; $56b5: $a3
	ld b, e                                          ; $56b6: $43
	ld bc, $0180                                     ; $56b7: $01 $80 $01
	ld a, e                                          ; $56ba: $7b
	ldh [$7e], a                                     ; $56bb: $e0 $7e
	pop de                                           ; $56bd: $d1
	ld [hl], a                                       ; $56be: $77
	ld b, d                                          ; $56bf: $42
	rst $38                                          ; $56c0: $ff
	sub e                                            ; $56c1: $93
	ld l, a                                          ; $56c2: $6f
	ld a, $4e                                        ; $56c3: $3e $4e
	xor a                                            ; $56c5: $af
	ld l, [hl]                                       ; $56c6: $6e
	xor [hl]                                         ; $56c7: $ae
	ld c, [hl]                                       ; $56c8: $4e
	ld e, $1f                                        ; $56c9: $1e $1f
	dec de                                           ; $56cb: $1b
	inc bc                                           ; $56cc: $03
	ld bc, $9bfd                                     ; $56cd: $01 $fd $9b
	rlca                                             ; $56d0: $07
	ld [hl], b                                       ; $56d1: $70
	rst $38                                          ; $56d2: $ff
	inc bc                                           ; $56d3: $03

jr_054_56d4:
	ld a, c                                          ; $56d4: $79
	and $9b                                          ; $56d5: $e6 $9b
	add hl, bc                                       ; $56d7: $09
	rst $38                                          ; $56d8: $ff
	rst $38                                          ; $56d9: $ff
	adc a                                            ; $56da: $8f
	db $fc                                           ; $56db: $fc
	ld a, a                                          ; $56dc: $7f
	ld c, [hl]                                       ; $56dd: $4e
	sbc b                                            ; $56de: $98
	ld b, $f2                                        ; $56df: $06 $f2
	ld a, c                                          ; $56e1: $79
	dec e                                            ; $56e2: $1d
	rst SubAFromDE                                          ; $56e3: $df
	rst FarCall                                          ; $56e4: $f7
	xor h                                            ; $56e5: $ac
	sbc $ff                                          ; $56e6: $de $ff
	ld a, a                                          ; $56e8: $7f

jr_054_56e9:
	and a                                            ; $56e9: $a7
	add b                                            ; $56ea: $80
	rrca                                             ; $56eb: $0f
	ld de, $9f3e                                     ; $56ec: $11 $3e $9f
	rst GetHLinHL                                          ; $56ef: $cf
	ld h, a                                          ; $56f0: $67
	db $e3                                           ; $56f1: $e3
	rst FarCall                                          ; $56f2: $f7
	rst SubAFromDE                                          ; $56f3: $df
	rst SubAFromDE                                          ; $56f4: $df
	ld de, $8408                                     ; $56f5: $11 $08 $84
	jp nz, $e1e1                                     ; $56f8: $c2 $e1 $e1

	ldh a, [$f0]                                     ; $56fb: $f0 $f0
	db $d3                                           ; $56fd: $d3
	ld h, a                                          ; $56fe: $67
	ldh [c], a                                       ; $56ff: $e2
	xor l                                            ; $5700: $ad
	db $f4                                           ; $5701: $f4
	ld hl, sp-$03                                    ; $5702: $f8 $fd
	db $fd                                           ; $5704: $fd
	or c                                             ; $5705: $b1
	ldh [c], a                                       ; $5706: $e2
	ld h, a                                          ; $5707: $67
	ld h, h                                          ; $5708: $64
	inc l                                            ; $5709: $2c
	sbc h                                            ; $570a: $9c
	jr jr_054_569d                                   ; $570b: $18 $90

	adc b                                            ; $570d: $88
	sbc $e9                                          ; $570e: $de $e9
	sub a                                            ; $5710: $97
	db $eb                                           ; $5711: $eb
	ei                                               ; $5712: $fb
	ld a, a                                          ; $5713: $7f
	rst $38                                          ; $5714: $ff
	rst FarCall                                          ; $5715: $f7
	cp a                                             ; $5716: $bf
	ld a, a                                          ; $5717: $7f
	ccf                                              ; $5718: $3f
	ld a, e                                          ; $5719: $7b
	db $fd                                           ; $571a: $fd
	sub d                                            ; $571b: $92
	sbc a                                            ; $571c: $9f
	ld h, e                                          ; $571d: $63
	jp hl                                            ; $571e: $e9


	ldh [$fa], a                                     ; $571f: $e0 $fa
	pop hl                                           ; $5721: $e1
	ldh [$e0], a                                     ; $5722: $e0 $e0
	push hl                                          ; $5724: $e5
	ldh [c], a                                       ; $5725: $e2
	or $fe                                           ; $5726: $f6 $fe
	db $e4                                           ; $5728: $e4
	ld a, e                                          ; $5729: $7b
	inc [hl]                                         ; $572a: $34
	add c                                            ; $572b: $81
	ld a, [$3a3d]                                    ; $572c: $fa $3d $3a
	ld [hl], l                                       ; $572f: $75
	ret nz                                           ; $5730: $c0

	ld [bc], a                                       ; $5731: $02
	jr jr_054_56d4                                   ; $5732: $18 $a0

	ld b, c                                          ; $5734: $41
	add a                                            ; $5735: $87
	dec b                                            ; $5736: $05
	ld a, [bc]                                       ; $5737: $0a
	ccf                                              ; $5738: $3f
	db $fc                                           ; $5739: $fc
	ldh [rLCDC], a                                   ; $573a: $e0 $40
	add b                                            ; $573c: $80
	nop                                              ; $573d: $00
	add c                                            ; $573e: $81
	ld [bc], a                                       ; $573f: $02
	ld [hl], c                                       ; $5740: $71
	cp h                                             ; $5741: $bc
	ld e, a                                          ; $5742: $5f
	rra                                              ; $5743: $1f
	rst $38                                          ; $5744: $ff
	rra                                              ; $5745: $1f
	ld a, [hl]                                       ; $5746: $7e
	db $fd                                           ; $5747: $fd
	adc [hl]                                         ; $5748: $8e
	inc bc                                           ; $5749: $03
	cp $8e                                           ; $574a: $fe $8e
	ldh [$5e], a                                     ; $574c: $e0 $5e
	push de                                          ; $574e: $d5
	ld l, $54                                        ; $574f: $2e $54
	ld a, [bc]                                       ; $5751: $0a
	sub h                                            ; $5752: $94
	add d                                            ; $5753: $82
	pop bc                                           ; $5754: $c1
	and c                                            ; $5755: $a1
	ld [bc], a                                       ; $5756: $02
	add c                                            ; $5757: $81
	add e                                            ; $5758: $83
	push hl                                          ; $5759: $e5
	ld h, e                                          ; $575a: $63
	ld a, l                                          ; $575b: $7d
	ld a, $f9                                        ; $575c: $3e $f9
	reti                                             ; $575e: $d9


	rst $38                                          ; $575f: $ff
	ld a, [hl]                                       ; $5760: $7e
	add $7b                                          ; $5761: $c6 $7b
	cp $9a                                           ; $5763: $fe $9a
	adc a                                            ; $5765: $8f
	add a                                            ; $5766: $87
	adc a                                            ; $5767: $8f
	ld hl, sp-$0c                                    ; $5768: $f8 $f4
	ld a, e                                          ; $576a: $7b
	cp $7f                                           ; $576b: $fe $7f
	rlca                                             ; $576d: $07
	sbc [hl]                                         ; $576e: $9e
	ldh a, [$dd]                                     ; $576f: $f0 $dd
	rst GetHLinHL                                          ; $5771: $cf
	rst SubAFromDE                                          ; $5772: $df
	rst SubAFromDE                                          ; $5773: $df
	rst SubAFromDE                                          ; $5774: $df
	sbc a                                            ; $5775: $9f
	db $db                                           ; $5776: $db
	ccf                                              ; $5777: $3f
	rst SubAFromDE                                          ; $5778: $df
	ld a, a                                          ; $5779: $7f

jr_054_577a:
	sbc $fb                                          ; $577a: $de $fb
	db $dd                                           ; $577c: $dd
	di                                               ; $577d: $f3
	sbc [hl]                                         ; $577e: $9e
	rst FarCall                                          ; $577f: $f7
	jp c, $9afc                                      ; $5780: $da $fc $9a

	ld hl, sp+$2b                                    ; $5783: $f8 $2b
	dec d                                            ; $5785: $15
	dec bc                                           ; $5786: $0b
	dec b                                            ; $5787: $05
	ld a, e                                          ; $5788: $7b
	ld de, $c67c                                     ; $5789: $11 $7c $c6
	rst SubAFromDE                                          ; $578c: $df
	ld bc, $b853                                     ; $578d: $01 $53 $b8
	pop de                                           ; $5790: $d1
	rst $38                                          ; $5791: $ff
	sbc d                                            ; $5792: $9a
	db $eb                                           ; $5793: $eb
	push af                                          ; $5794: $f5
	ld [$faf5], a                                    ; $5795: $ea $f5 $fa
	ld a, e                                          ; $5798: $7b
	xor [hl]                                         ; $5799: $ae
	ld a, [hl]                                       ; $579a: $7e
	ld d, [hl]                                       ; $579b: $56
	ld a, l                                          ; $579c: $7d
	jp z, $b06a                                      ; $579d: $ca $6a $b0

	ld a, a                                          ; $57a0: $7f
	ld b, c                                          ; $57a1: $41
	ld a, d                                          ; $57a2: $7a
	or l                                             ; $57a3: $b5
	sbc h                                            ; $57a4: $9c
	ld d, l                                          ; $57a5: $55
	add hl, hl                                       ; $57a6: $29
	dec d                                            ; $57a7: $15
	call c, Call_054_6501                            ; $57a8: $dc $01 $65
	ld a, [hl-]                                      ; $57ab: $3a
	sub a                                            ; $57ac: $97
	dec b                                            ; $57ad: $05
	add d                                            ; $57ae: $82
	push bc                                          ; $57af: $c5
	ld h, d                                          ; $57b0: $62
	inc de                                           ; $57b1: $13
	rla                                              ; $57b2: $17
	dec bc                                           ; $57b3: $0b
	dec d                                            ; $57b4: $15
	cp $9e                                           ; $57b5: $fe $9e
	add b                                            ; $57b7: $80
	db $dd                                           ; $57b8: $dd
	ldh [$9e], a                                     ; $57b9: $e0 $9e
	rst $38                                          ; $57bb: $ff
	ld [hl], h                                       ; $57bc: $74
	xor e                                            ; $57bd: $ab
	sbc $f8                                          ; $57be: $de $f8
	ld a, h                                          ; $57c0: $7c
	scf                                              ; $57c1: $37
	ld a, [hl]                                       ; $57c2: $7e
	add hl, hl                                       ; $57c3: $29
	db $dd                                           ; $57c4: $dd
	rlca                                             ; $57c5: $07
	rst $38                                          ; $57c6: $ff
	sbc c                                            ; $57c7: $99
	add h                                            ; $57c8: $84
	add b                                            ; $57c9: $80
	dec bc                                           ; $57ca: $0b
	ld c, c                                          ; $57cb: $49
	inc b                                            ; $57cc: $04
	inc b                                            ; $57cd: $04
	ld a, d                                          ; $57ce: $7a
	dec de                                           ; $57cf: $1b
	sub d                                            ; $57d0: $92
	ld h, b                                          ; $57d1: $60
	db $fc                                           ; $57d2: $fc
	cp [hl]                                          ; $57d3: $be
	rst $38                                          ; $57d4: $ff
	rst $38                                          ; $57d5: $ff
	rst SubAFromBC                                          ; $57d6: $e7
	db $e3                                           ; $57d7: $e3
	and c                                            ; $57d8: $a1
	ld a, $ef                                        ; $57d9: $3e $ef
	rst JumpTable                                          ; $57db: $c7
	jp $defd                                         ; $57dc: $c3 $fd $de


	jr nz, jr_054_577a                               ; $57df: $20 $99

	jr c, @+$48                                      ; $57e1: $38 $46

	ld b, c                                          ; $57e3: $41
	ld b, b                                          ; $57e4: $40
	ld b, b                                          ; $57e5: $40
	rst AddAOntoHL                                          ; $57e6: $ef
	jp c, $97ff                                      ; $57e7: $da $ff $97

Call_054_57ea:
	ld a, b                                          ; $57ea: $78
	jr jr_054_57f5                                   ; $57eb: $18 $08

	inc b                                            ; $57ed: $04
	ld [bc], a                                       ; $57ee: $02
	add b                                            ; $57ef: $80
	ld b, b                                          ; $57f0: $40
	jr nz, jr_054_5866                               ; $57f1: $20 $73

	xor e                                            ; $57f3: $ab
	ld a, [hl]                                       ; $57f4: $7e

jr_054_57f5:
	ld e, a                                          ; $57f5: $5f
	add b                                            ; $57f6: $80
	rst $38                                          ; $57f7: $ff
	ld c, b                                          ; $57f8: $48
	ld b, a                                          ; $57f9: $47
	inc h                                            ; $57fa: $24
	ld [hl+], a                                      ; $57fb: $22
	ld [bc], a                                       ; $57fc: $02
	ld [bc], a                                       ; $57fd: $02
	inc bc                                           ; $57fe: $03
	inc bc                                           ; $57ff: $03
	rst FarCall                                          ; $5800: $f7
	rst $38                                          ; $5801: $ff
	rst $38                                          ; $5802: $ff
	rst FarCall                                          ; $5803: $f7
	res 4, e                                         ; $5804: $cb $a3
	sub d                                            ; $5806: $92
	ld c, d                                          ; $5807: $4a
	inc hl                                           ; $5808: $23
	ldh [c], a                                       ; $5809: $e2
	dec e                                            ; $580a: $1d
	inc a                                            ; $580b: $3c
	halt                                             ; $580c: $76
	rst SubAFromHL                                          ; $580d: $d7
	rst JumpTable                                          ; $580e: $c7
	and a                                            ; $580f: $a7
	rst AddAOntoHL                                          ; $5810: $ef
	ret nc                                           ; $5811: $d0

	jp nz, $c4c8                                     ; $5812: $c2 $c8 $c4

	ldh a, [$80]                                     ; $5815: $f0 $80
	reti                                             ; $5817: $d9


	ld hl, sp-$10                                    ; $5818: $f8 $f0
	ld [hl+], a                                      ; $581a: $22
	inc h                                            ; $581b: $24
	and h                                            ; $581c: $a4
	jr c, jr_054_5837                                ; $581d: $38 $18

	or b                                             ; $581f: $b0
	pop af                                           ; $5820: $f1
	ld [$3215], sp                                   ; $5821: $08 $15 $32
	inc h                                            ; $5824: $24
	ld c, b                                          ; $5825: $48
	sub b                                            ; $5826: $90
	ld [bc], a                                       ; $5827: $02
	ld hl, $0a07                                     ; $5828: $21 $07 $0a
	inc c                                            ; $582b: $0c
	jr jr_054_585e                                   ; $582c: $18 $30

	ld h, b                                          ; $582e: $60
	ldh [$c0], a                                     ; $582f: $e0 $c0
	dec b                                            ; $5831: $05
	ld b, d                                          ; $5832: $42
	and c                                            ; $5833: $a1
	ld d, b                                          ; $5834: $50
	and b                                            ; $5835: $a0
	ld a, h                                          ; $5836: $7c

jr_054_5837:
	ld d, c                                          ; $5837: $51
	add d                                            ; $5838: $82
	ld d, b                                          ; $5839: $50
	ld a, [$1ebd]                                    ; $583a: $fa $bd $1e
	rrca                                             ; $583d: $0f
	rra                                              ; $583e: $1f
	ccf                                              ; $583f: $3f
	rra                                              ; $5840: $1f
	cpl                                              ; $5841: $2f
	ld h, a                                          ; $5842: $67
	xor a                                            ; $5843: $af
	ld c, a                                          ; $5844: $4f
	rra                                              ; $5845: $1f
	rra                                              ; $5846: $1f
	inc l                                            ; $5847: $2c
	ld a, h                                          ; $5848: $7c
	ld a, b                                          ; $5849: $78
	sbc b                                            ; $584a: $98
	ld d, b                                          ; $584b: $50
	or b                                             ; $584c: $b0
	ldh [$e0], a                                     ; $584d: $e0 $e0
	jp $8783                                         ; $584f: $c3 $83 $87


	ldh [$f0], a                                     ; $5852: $e0 $f0
	pop af                                           ; $5854: $f1
	pop af                                           ; $5855: $f1
	db $dd                                           ; $5856: $dd
	ld bc, $357f                                     ; $5857: $01 $7f $35
	rst SubAFromDE                                          ; $585a: $df
	rrca                                             ; $585b: $0f
	ld [hl], d                                       ; $585c: $72
	ret nz                                           ; $585d: $c0

jr_054_585e:
	sbc e                                            ; $585e: $9b
	adc a                                            ; $585f: $8f
	rlca                                             ; $5860: $07
	rrca                                             ; $5861: $0f
	rla                                              ; $5862: $17
	ld a, e                                          ; $5863: $7b
	cp $76                                           ; $5864: $fe $76

jr_054_5866:
	call nz, $e89e                                   ; $5866: $c4 $9e $e8
	ld a, e                                          ; $5869: $7b
	cp $df                                           ; $586a: $fe $df

Call_054_586c:
	sbc a                                            ; $586c: $9f
	ld a, h                                          ; $586d: $7c
	db $e3                                           ; $586e: $e3
	ld l, [hl]                                       ; $586f: $6e
	add $7e                                          ; $5870: $c6 $7e
	ld c, e                                          ; $5872: $4b
	db $dd                                           ; $5873: $dd
	rst $38                                          ; $5874: $ff
	db $dd                                           ; $5875: $dd
	rst FarCall                                          ; $5876: $f7
	db $dd                                           ; $5877: $dd
	rst SubAFromBC                                          ; $5878: $e7
	reti                                             ; $5879: $d9


	ld hl, sp+$59                                    ; $587a: $f8 $59
	nop                                              ; $587c: $00
	sbc $66                                          ; $587d: $de $66
	db $dd                                           ; $587f: $dd
	ld [hl+], a                                      ; $5880: $22
	sbc h                                            ; $5881: $9c
	inc h                                            ; $5882: $24
	ld b, h                                          ; $5883: $44
	ld b, d                                          ; $5884: $42
	ld [hl], e                                       ; $5885: $73
	or $df                                           ; $5886: $f6 $df
	inc sp                                           ; $5888: $33
	sbc [hl]                                         ; $5889: $9e
	ld [hl], $6f                                     ; $588a: $36 $6f
	or $de                                           ; $588c: $f6 $de
	inc sp                                           ; $588e: $33
	sbc l                                            ; $588f: $9d
	ld [hl-], a                                      ; $5890: $32
	inc sp                                           ; $5891: $33
	ld [hl], a                                       ; $5892: $77
	or $98                                           ; $5893: $f6 $98
	ld h, [hl]                                       ; $5895: $66
	inc sp                                           ; $5896: $33
	inc [hl]                                         ; $5897: $34
	inc sp                                           ; $5898: $33
	inc hl                                           ; $5899: $23
	inc sp                                           ; $589a: $33
	ld [hl], $de                                     ; $589b: $36 $de
	ld h, [hl]                                       ; $589d: $66
	sbc b                                            ; $589e: $98
	ld [hl], a                                       ; $589f: $77
	ld b, h                                          ; $58a0: $44
	ld b, h                                          ; $58a1: $44
	ld [hl-], a                                      ; $58a2: $32
	dec h                                            ; $58a3: $25
	ld d, l                                          ; $58a4: $55
	ld d, l                                          ; $58a5: $55
	sbc $66                                          ; $58a6: $de $66
	sbc d                                            ; $58a8: $9a
	ld [hl], e                                       ; $58a9: $73
	inc sp                                           ; $58aa: $33
	inc hl                                           ; $58ab: $23
	ld [hl+], a                                      ; $58ac: $22
	ld b, l                                          ; $58ad: $45
	ld [hl], a                                       ; $58ae: $77
	or $99                                           ; $58af: $f6 $99
	ld h, a                                          ; $58b1: $67
	inc sp                                           ; $58b2: $33
	inc sp                                           ; $58b3: $33
	ld b, d                                          ; $58b4: $42
	inc h                                            ; $58b5: $24
	ld b, h                                          ; $58b6: $44
	ld l, e                                          ; $58b7: $6b
	or $9b                                           ; $58b8: $f6 $9b
	ld b, e                                          ; $58ba: $43
	inc [hl]                                         ; $58bb: $34
	ld b, h                                          ; $58bc: $44
	ld b, l                                          ; $58bd: $45
	ld a, e                                          ; $58be: $7b
	or $9a                                           ; $58bf: $f6 $9a
	ld h, e                                          ; $58c1: $63
	inc sp                                           ; $58c2: $33
	ld b, h                                          ; $58c3: $44
	ld b, e                                          ; $58c4: $43
	ld b, h                                          ; $58c5: $44
	ld [hl], e                                       ; $58c6: $73
	or $9c                                           ; $58c7: $f6 $9c
	ld h, h                                          ; $58c9: $64
	ld b, e                                          ; $58ca: $43
	inc sp                                           ; $58cb: $33
	ld h, a                                          ; $58cc: $67
	or $9c                                           ; $58cd: $f6 $9c
	ld b, h                                          ; $58cf: $44
	inc sp                                           ; $58d0: $33
	inc sp                                           ; $58d1: $33
	ld [hl], a                                       ; $58d2: $77
	or $85                                           ; $58d3: $f6 $85
	adc c                                            ; $58d5: $89
	sub a                                            ; $58d6: $97
	ld b, d                                          ; $58d7: $42
	ld hl, $0810                                     ; $58d8: $21 $10 $08
	add h                                            ; $58db: $84
	ld b, d                                          ; $58dc: $42
	ld hl, $7b90                                     ; $58dd: $21 $90 $7b
	db $fc                                           ; $58e0: $fc
	ld a, a                                          ; $58e1: $7f
	rst FarCall                                          ; $58e2: $f7
	add h                                            ; $58e3: $84
	inc b                                            ; $58e4: $04
	ld [bc], a                                       ; $58e5: $02
	ld bc, $356a                                     ; $58e6: $01 $6a $35
	sbc a                                            ; $58e9: $9f
	ld c, a                                          ; $58ea: $4f
	daa                                              ; $58eb: $27
	inc de                                           ; $58ec: $13
	add hl, bc                                       ; $58ed: $09
	add h                                            ; $58ee: $84
	ret nz                                           ; $58ef: $c0

	ld h, b                                          ; $58f0: $60
	jr nc, @-$66                                     ; $58f1: $30 $98

	ld c, h                                          ; $58f3: $4c
	ld h, $13                                        ; $58f4: $26 $13
	add hl, bc                                       ; $58f6: $09
	xor b                                            ; $58f7: $a8
	pop de                                           ; $58f8: $d1
	xor d                                            ; $58f9: $aa
	ld d, l                                          ; $58fa: $55
	db $eb                                           ; $58fb: $eb
	ld [hl], l                                       ; $58fc: $75
	rst AddAOntoHL                                          ; $58fd: $ef
	rst $38                                          ; $58fe: $ff
	ld a, [$809e]                                    ; $58ff: $fa $9e $80
	cp $9a                                           ; $5902: $fe $9a

Call_054_5904:
	ld b, b                                          ; $5904: $40
	add b                                            ; $5905: $80
	ld d, c                                          ; $5906: $51
	xor [hl]                                         ; $5907: $ae
	ld e, l                                          ; $5908: $5d
	or $9a                                           ; $5909: $f6 $9a
	ld b, b                                          ; $590b: $40
	jr z, jr_054_591e                                ; $590c: $28 $10

	and d                                            ; $590e: $a2
	ld c, h                                          ; $590f: $4c
	db $e3                                           ; $5910: $e3
	rst SubAFromDE                                          ; $5911: $df
	ld bc, $f867                                     ; $5912: $01 $67 $f8
	add a                                            ; $5915: $87
	ld [$3310], sp                                   ; $5916: $08 $10 $33
	ld h, a                                          ; $5919: $67
	sbc h                                            ; $591a: $9c
	or b                                             ; $591b: $b0
	ld b, b                                          ; $591c: $40
	adc b                                            ; $591d: $88

jr_054_591e:
	ld [$2010], sp                                   ; $591e: $08 $10 $20
	ld b, b                                          ; $5921: $40
	jp $bc8e                                         ; $5922: $c3 $8e $bc


	ld a, b                                          ; $5925: $78
	ccf                                              ; $5926: $3f
	rst FarCall                                          ; $5927: $f7
	adc a                                            ; $5928: $8f
	rra                                              ; $5929: $1f
	ld a, [hl-]                                      ; $592a: $3a
	ld [hl], d                                       ; $592b: $72
	ld h, d                                          ; $592c: $62

jr_054_592d:
	ret nz                                           ; $592d: $c0

	ld [hl], a                                       ; $592e: $77
	xor c                                            ; $592f: $a9
	db $fd                                           ; $5930: $fd
	sub a                                            ; $5931: $97
	rst $38                                          ; $5932: $ff
	ei                                               ; $5933: $fb
	rst FarCall                                          ; $5934: $f7
	or [hl]                                          ; $5935: $b6
	and l                                            ; $5936: $a5
	and h                                            ; $5937: $a4
	and b                                            ; $5938: $a0
	and d                                            ; $5939: $a2
	ld [hl], a                                       ; $593a: $77
	db $d3                                           ; $593b: $d3
	sbc [hl]                                         ; $593c: $9e
	ld [bc], a                                       ; $593d: $02
	ld [hl], a                                       ; $593e: $77
	ldh a, [$df]                                     ; $593f: $f0 $df
	rst $38                                          ; $5941: $ff
	sbc d                                            ; $5942: $9a
	dec l                                            ; $5943: $2d
	sub $5a                                          ; $5944: $d6 $5a
	ld l, b                                          ; $5946: $68
	inc h                                            ; $5947: $24
	cp $9a                                           ; $5948: $fe $9a
	ret nz                                           ; $594a: $c0

	jr nz, jr_054_596d                               ; $594b: $20 $20

	db $10                                           ; $594d: $10
	jr jr_054_592d                                   ; $594e: $18 $dd

	rst $38                                          ; $5950: $ff
	sbc e                                            ; $5951: $9b
	ei                                               ; $5952: $fb
	ld e, l                                          ; $5953: $5d
	ld l, $26                                        ; $5954: $2e $26
	db $fd                                           ; $5956: $fd
	sub e                                            ; $5957: $93
	inc b                                            ; $5958: $04
	ld [hl+], a                                      ; $5959: $22
	ld de, $ff19                                     ; $595a: $11 $19 $ff
	rst $38                                          ; $595d: $ff
	cp $ef                                           ; $595e: $fe $ef
	ld [hl], a                                       ; $5960: $77
	cp e                                             ; $5961: $bb
	db $dd                                           ; $5962: $dd
	db $ec                                           ; $5963: $ec
	ld a, e                                          ; $5964: $7b
	pop de                                           ; $5965: $d1
	sub d                                            ; $5966: $92
	db $10                                           ; $5967: $10
	adc b                                            ; $5968: $88
	ld b, h                                          ; $5969: $44
	ld [hl+], a                                      ; $596a: $22
	inc de                                           ; $596b: $13
	ld b, b                                          ; $596c: $40

jr_054_596d:
	and b                                            ; $596d: $a0
	ret nc                                           ; $596e: $d0

	ld l, b                                          ; $596f: $68
	inc h                                            ; $5970: $24
	sub d                                            ; $5971: $92
	jp Jump_054_77c1                                 ; $5972: $c3 $c1 $77


	ld b, b                                          ; $5975: $40
	sub e                                            ; $5976: $93
	call c, $3e6e                                    ; $5977: $dc $6e $3e
	ccf                                              ; $597a: $3f
	dec d                                            ; $597b: $15
	ld [hl+], a                                      ; $597c: $22
	dec b                                            ; $597d: $05

Jump_054_597e:
	adc a                                            ; $597e: $8f
	ld d, l                                          ; $597f: $55
	adc [hl]                                         ; $5980: $8e
	dec d                                            ; $5981: $15
	xor [hl]                                         ; $5982: $ae
	ld sp, hl                                        ; $5983: $f9
	sub a                                            ; $5984: $97
	ld e, a                                          ; $5985: $5f
	cp a                                             ; $5986: $bf
	ld a, a                                          ; $5987: $7f
	ei                                               ; $5988: $fb
	ld e, a                                          ; $5989: $5f
	rst $38                                          ; $598a: $ff
	ld a, a                                          ; $598b: $7f
	rst AddAOntoHL                                          ; $598c: $ef
	pop af                                           ; $598d: $f1
	reti                                             ; $598e: $d9


	rst $38                                          ; $598f: $ff
	rst SubAFromDE                                          ; $5990: $df
	rrca                                             ; $5991: $0f
	db $dd                                           ; $5992: $dd
	dec c                                            ; $5993: $0d
	rst SubAFromDE                                          ; $5994: $df
	inc c                                            ; $5995: $0c
	reti                                             ; $5996: $d9


	rst FarCall                                          ; $5997: $f7
	rst SubAFromDE                                          ; $5998: $df
	rst $38                                          ; $5999: $ff
	sub l                                            ; $599a: $95
	ld l, a                                          ; $599b: $6f
	ld c, a                                          ; $599c: $4f
	ld l, a                                          ; $599d: $6f
	ld c, a                                          ; $599e: $4f
	ld l, [hl]                                       ; $599f: $6e
	ld l, [hl]                                       ; $59a0: $6e
	rst $38                                          ; $59a1: $ff
	rst $38                                          ; $59a2: $ff
	sbc c                                            ; $59a3: $99
	cp c                                             ; $59a4: $b9
	ld a, e                                          ; $59a5: $7b
	cp $83                                           ; $59a6: $fe $83
	sbc c                                            ; $59a8: $99
	rst $38                                          ; $59a9: $ff
	rst $38                                          ; $59aa: $ff
	ld a, $26                                        ; $59ab: $3e $26
	ld a, $36                                        ; $59ad: $3e $36
	ld a, $3a                                        ; $59af: $3e $3a
	rst $38                                          ; $59b1: $ff
	rst $38                                          ; $59b2: $ff
	push hl                                          ; $59b3: $e5
	db $fd                                           ; $59b4: $fd
	push hl                                          ; $59b5: $e5
	db $ed                                           ; $59b6: $ed
	push hl                                          ; $59b7: $e5
	push hl                                          ; $59b8: $e5
	ld c, b                                          ; $59b9: $48
	and h                                            ; $59ba: $a4
	jp nc, $f4e9                                     ; $59bb: $d2 $e9 $f4

	ld a, [$fefd]                                    ; $59be: $fa $fd $fe
	add b                                            ; $59c1: $80
	ld b, b                                          ; $59c2: $40
	jr nz, @+$74                                     ; $59c3: $20 $72

	ret nz                                           ; $59c5: $c0

	halt                                             ; $59c6: $76
	cp c                                             ; $59c7: $b9
	sbc e                                            ; $59c8: $9b
	xor h                                            ; $59c9: $ac
	sbc a                                            ; $59ca: $9f
	rst $38                                          ; $59cb: $ff
	nop                                              ; $59cc: $00
	ld a, d                                          ; $59cd: $7a
	or b                                             ; $59ce: $b0
	sub d                                            ; $59cf: $92
	ld de, $6013                                     ; $59d0: $11 $13 $60
	nop                                              ; $59d3: $00
	rst $38                                          ; $59d4: $ff
	ld a, a                                          ; $59d5: $7f
	ccf                                              ; $59d6: $3f
	sbc [hl]                                         ; $59d7: $9e
	ld c, a                                          ; $59d8: $4f
	rst SubAFromHL                                          ; $59d9: $d7
	set 7, c                                         ; $59da: $cb $f9
	ld bc, $7077                                     ; $59dc: $01 $77 $70
	sub e                                            ; $59df: $93
	inc c                                            ; $59e0: $0c
	ld b, $06                                        ; $59e1: $06 $06
	cp $bb                                           ; $59e3: $fe $bb
	push de                                          ; $59e5: $d5
	xor d                                            ; $59e6: $aa
	rst SubAFromDE                                          ; $59e7: $df
	cp [hl]                                          ; $59e8: $be
	rst $38                                          ; $59e9: $ff
	db $eb                                           ; $59ea: $eb
	db $fd                                           ; $59eb: $fd
	ld sp, hl                                        ; $59ec: $f9
	sbc b                                            ; $59ed: $98
	xor h                                            ; $59ee: $ac
	call nc, Call_054_57ea                           ; $59ef: $d4 $ea $57
	cp $f5                                           ; $59f2: $fe $f5
	cp [hl]                                          ; $59f4: $be
	ld h, [hl]                                       ; $59f5: $66
	and b                                            ; $59f6: $a0
	sub [hl]                                         ; $59f7: $96
	nop                                              ; $59f8: $00
	adc b                                            ; $59f9: $88
	nop                                              ; $59fa: $00
	ld [hl+], a                                      ; $59fb: $22
	ld b, h                                          ; $59fc: $44
	adc d                                            ; $59fd: $8a
	ld d, l                                          ; $59fe: $55
	xor e                                            ; $59ff: $ab
	rst FarCall                                          ; $5a00: $f7
	ld h, d                                          ; $5a01: $62
	add $97                                          ; $5a02: $c6 $97
	ld [bc], a                                       ; $5a04: $02
	add d                                            ; $5a05: $82
	ld [bc], a                                       ; $5a06: $02
	and h                                            ; $5a07: $a4
	ld d, h                                          ; $5a08: $54
	xor h                                            ; $5a09: $ac
	ld d, l                                          ; $5a0a: $55
	ld bc, $03de                                     ; $5a0b: $01 $de $03
	db $dd                                           ; $5a0e: $dd
	rlca                                             ; $5a0f: $07
	add a                                            ; $5a10: $87
	jr jr_054_5a43                                   ; $5a11: $18 $30

	inc hl                                           ; $5a13: $23
	ld b, [hl]                                       ; $5a14: $46
	ld h, h                                          ; $5a15: $64
	xor l                                            ; $5a16: $ad
	db $eb                                           ; $5a17: $eb
	ei                                               ; $5a18: $fb
	ldh a, [$e0]                                     ; $5a19: $f0 $e0
	ldh [$e1], a                                     ; $5a1b: $e0 $e1
	jp $c6c2                                         ; $5a1d: $c3 $c2 $c6


	add $04                                          ; $5a20: $c6 $04
	dec b                                            ; $5a22: $05
	dec b                                            ; $5a23: $05
	add hl, hl                                       ; $5a24: $29
	ld c, c                                          ; $5a25: $49
	ld c, c                                          ; $5a26: $49
	rst SubAFromHL                                          ; $5a27: $d7
	push de                                          ; $5a28: $d5
	ld a, d                                          ; $5a29: $7a
	ld h, l                                          ; $5a2a: $65
	sub d                                            ; $5a2b: $92
	inc b                                            ; $5a2c: $04
	inc h                                            ; $5a2d: $24
	inc h                                            ; $5a2e: $24
	inc l                                            ; $5a2f: $2c
	ld l, $a3                                        ; $5a30: $2e $a3
	and d                                            ; $5a32: $a2
	or d                                             ; $5a33: $b2
	jr nz, jr_054_5a5f                               ; $5a34: $20 $29

	call z, Call_054_44aa                            ; $5a36: $cc $aa $44
	ld a, d                                          ; $5a39: $7a
	sub l                                            ; $5a3a: $95
	add b                                            ; $5a3b: $80
	sub c                                            ; $5a3c: $91
	sub b                                            ; $5a3d: $90
	sbc b                                            ; $5a3e: $98
	call c, $2cff                                    ; $5a3f: $dc $ff $2c
	ld a, [de]                                       ; $5a42: $1a

jr_054_5a43:
	sub l                                            ; $5a43: $95
	ld c, e                                          ; $5a44: $4b
	ld a, [hl+]                                      ; $5a45: $2a
	ld sp, $94ad                                     ; $5a46: $31 $ad $94
	jr jr_054_5a57                                   ; $5a49: $18 $0c

	ld c, $86                                        ; $5a4b: $0e $86
	rst JumpTable                                          ; $5a4d: $c7
	rst SubAFromBC                                          ; $5a4e: $e7
	ld [hl], e                                       ; $5a4f: $73
	ld a, e                                          ; $5a50: $7b
	adc e                                            ; $5a51: $8b
	reti                                             ; $5a52: $d9


	and l                                            ; $5a53: $a5
	call nz, Call_054_72d2                           ; $5a54: $c4 $d2 $72

jr_054_5a57:
	add hl, hl                                       ; $5a57: $29
	sbc c                                            ; $5a58: $99
	inc e                                            ; $5a59: $1c
	ld c, $80                                        ; $5a5a: $0e $80
	ld c, [hl]                                       ; $5a5c: $4e
	ccf                                              ; $5a5d: $3f
	ccf                                              ; $5a5e: $3f

jr_054_5a5f:
	sbc a                                            ; $5a5f: $9f
	rst SubAFromDE                                          ; $5a60: $df
	rst AddAOntoHL                                          ; $5a61: $ef
	halt                                             ; $5a62: $76
	ld [hl], $db                                     ; $5a63: $36 $db
	cp c                                             ; $5a65: $b9
	db $eb                                           ; $5a66: $eb
	ld e, a                                          ; $5a67: $5f
	ld a, [hl]                                       ; $5a68: $7e
	ld [hl], l                                       ; $5a69: $75
	adc c                                            ; $5a6a: $89
	ret                                              ; $5a6b: $c9


	ld h, h                                          ; $5a6c: $64
	ld h, [hl]                                       ; $5a6d: $66
	ld [hl], $b2                                     ; $5a6e: $36 $b2
	sub e                                            ; $5a70: $93
	sbc e                                            ; $5a71: $9b
	pop hl                                           ; $5a72: $e1
	ld l, b                                          ; $5a73: $68
	ld a, b                                          ; $5a74: $78
	inc [hl]                                         ; $5a75: $34
	inc h                                            ; $5a76: $24
	jp nz, $a2c2                                     ; $5a77: $c2 $c2 $a2

	rra                                              ; $5a7a: $1f
	sbc e                                            ; $5a7b: $9b
	sbc a                                            ; $5a7c: $9f
	adc a                                            ; $5a7d: $8f
	rst GetHLinHL                                          ; $5a7e: $cf
	rst SubAFromDE                                          ; $5a7f: $df
	sbc $7f                                          ; $5a80: $de $7f
	sbc h                                            ; $5a82: $9c
	rst SubAFromHL                                          ; $5a83: $d7
	ld [$77ff], a                                    ; $5a84: $ea $ff $77
	ld sp, hl                                        ; $5a87: $f9
	sbc l                                            ; $5a88: $9d
	ccf                                              ; $5a89: $3f
	nop                                              ; $5a8a: $00
	sbc $80                                          ; $5a8b: $de $80
	sbc $c0                                          ; $5a8d: $de $c0
	sbc h                                            ; $5a8f: $9c
	ldh [rIE], a                                     ; $5a90: $e0 $ff
	cp a                                             ; $5a92: $bf
	db $db                                           ; $5a93: $db
	rst $38                                          ; $5a94: $ff
	ld h, $c0                                        ; $5a95: $26 $c0
	reti                                             ; $5a97: $d9


	inc c                                            ; $5a98: $0c
	reti                                             ; $5a99: $d9


	rst FarCall                                          ; $5a9a: $f7
	call c, $de6e                                    ; $5a9b: $dc $6e $de
	ld l, a                                          ; $5a9e: $6f
	reti                                             ; $5a9f: $d9


	sbc c                                            ; $5aa0: $99
	sbc d                                            ; $5aa1: $9a
	ld a, [hl-]                                      ; $5aa2: $3a
	inc sp                                           ; $5aa3: $33
	ld a, [hl-]                                      ; $5aa4: $3a
	ld a, [hl-]                                      ; $5aa5: $3a
	ld [hl-], a                                      ; $5aa6: $32
	sbc $3a                                          ; $5aa7: $de $3a
	sbc h                                            ; $5aa9: $9c
	push hl                                          ; $5aaa: $e5
	db $ec                                           ; $5aab: $ec
	push hl                                          ; $5aac: $e5
	halt                                             ; $5aad: $76
	pop bc                                           ; $5aae: $c1
	sbc [hl]                                         ; $5aaf: $9e
	push hl                                          ; $5ab0: $e5
	reti                                             ; $5ab1: $d9


	rst $38                                          ; $5ab2: $ff
	ld b, a                                          ; $5ab3: $47
	cp b                                             ; $5ab4: $b8
	inc bc                                           ; $5ab5: $03
	ldh a, [$2b]                                     ; $5ab6: $f0 $2b
	ldh a, [$9e]                                     ; $5ab8: $f0 $9e
	db $eb                                           ; $5aba: $eb
	db $dd                                           ; $5abb: $dd
	rst $38                                          ; $5abc: $ff
	sbc l                                            ; $5abd: $9d
	db $fc                                           ; $5abe: $fc
	ld sp, hl                                        ; $5abf: $f9
	ld l, a                                          ; $5ac0: $6f
	ldh a, [$df]                                     ; $5ac1: $f0 $df
	rlca                                             ; $5ac3: $07
	sub [hl]                                         ; $5ac4: $96
	inc bc                                           ; $5ac5: $03
	xor l                                            ; $5ac6: $ad
	ld [hl], l                                       ; $5ac7: $75
	db $ed                                           ; $5ac8: $ed
	rst $38                                          ; $5ac9: $ff
	rst $38                                          ; $5aca: $ff
	ccf                                              ; $5acb: $3f
	ld a, l                                          ; $5acc: $7d
	ld hl, $07dd                                     ; $5acd: $21 $dd $07
	add e                                            ; $5ad0: $83
	inc bc                                           ; $5ad1: $03
	jp $c083                                         ; $5ad2: $c3 $83 $c0


	ld [hl], e                                       ; $5ad5: $73
	db $d3                                           ; $5ad6: $d3
	di                                               ; $5ad7: $f3
	db $e3                                           ; $5ad8: $e3
	db $e3                                           ; $5ad9: $e3
	di                                               ; $5ada: $f3
	di                                               ; $5adb: $f3
	ld a, [bc]                                       ; $5adc: $0a
	adc $6e                                          ; $5add: $ce $6e
	cpl                                              ; $5adf: $2f
	ccf                                              ; $5ae0: $3f
	ccf                                              ; $5ae1: $3f
	ld e, $1e                                        ; $5ae2: $1e $1e
	ld c, $22                                        ; $5ae4: $0e $22
	ld [hl+], a                                      ; $5ae6: $22
	inc de                                           ; $5ae7: $13

jr_054_5ae8:
	inc de                                           ; $5ae8: $13
	dec de                                           ; $5ae9: $1b
	sbc c                                            ; $5aea: $99
	sbc l                                            ; $5aeb: $9d
	ld e, a                                          ; $5aec: $5f
	sbc $ff                                          ; $5aed: $de $ff
	rst SubAFromDE                                          ; $5aef: $df
	cp $95                                           ; $5af0: $fe $95
	rst $38                                          ; $5af2: $ff
	rst FarCall                                          ; $5af3: $f7
	ld [hl], e                                       ; $5af4: $73
	ld b, d                                          ; $5af5: $42
	ld hl, $bc30                                     ; $5af6: $21 $30 $bc
	sbc a                                            ; $5af9: $9f
	rst SubAFromDE                                          ; $5afa: $df
	jp hl                                            ; $5afb: $e9


	ld [hl], l                                       ; $5afc: $75
	sbc b                                            ; $5afd: $98
	sub d                                            ; $5afe: $92
	rst AddAOntoHL                                          ; $5aff: $ef
	di                                               ; $5b00: $f3
	ld [hl], b                                       ; $5b01: $70
	ld a, $ff                                        ; $5b02: $3e $ff
	ld [$8204], sp                                   ; $5b04: $08 $04 $82
	ld h, c                                          ; $5b07: $61
	jr c, jr_054_5ae8                                ; $5b08: $38 $de

	rst $38                                          ; $5b0a: $ff
	ld a, a                                          ; $5b0b: $7f
	call c, $94ff                                    ; $5b0c: $dc $ff $94
	rst FarCall                                          ; $5b0f: $f7
	add hl, sp                                       ; $5b10: $39
	add b                                            ; $5b11: $80
	ld b, h                                          ; $5b12: $44
	inc h                                            ; $5b13: $24
	ld [de], a                                       ; $5b14: $12
	ld a, [bc]                                       ; $5b15: $0a
	rst SubAFromBC                                          ; $5b16: $e7
	rra                                              ; $5b17: $1f
	ret                                              ; $5b18: $c9


	dec sp                                           ; $5b19: $3b
	jp c, $9bff                                      ; $5b1a: $da $ff $9b

	db $fc                                           ; $5b1d: $fc
	xor l                                            ; $5b1e: $ad
	xor l                                            ; $5b1f: $ad
	xor c                                            ; $5b20: $a9
	sbc $44                                          ; $5b21: $de $44
	rst SubAFromDE                                          ; $5b23: $df
	call nz, $dbdf                                   ; $5b24: $c4 $df $db
	sbc [hl]                                         ; $5b27: $9e
	rst SubAFromDE                                          ; $5b28: $df
	db $dd                                           ; $5b29: $dd
	rst $38                                          ; $5b2a: $ff
	sub [hl]                                         ; $5b2b: $96
	ld a, a                                          ; $5b2c: $7f
	and c                                            ; $5b2d: $a1
	ld hl, $9111                                     ; $5b2e: $21 $11 $91
	sub b                                            ; $5b31: $90
	sub b                                            ; $5b32: $90
	sub c                                            ; $5b33: $91
	sub c                                            ; $5b34: $91
	ld l, a                                          ; $5b35: $6f
	rst GetHLinHL                                          ; $5b36: $cf
	rst SubAFromDE                                          ; $5b37: $df
	cp $79                                           ; $5b38: $fe $79
	ld c, h                                          ; $5b3a: $4c
	sbc d                                            ; $5b3b: $9a
	sub b                                            ; $5b3c: $90
	sbc a                                            ; $5b3d: $9f
	sub a                                            ; $5b3e: $97
	sub a                                            ; $5b3f: $97
	or a                                             ; $5b40: $b7
	reti                                             ; $5b41: $d9


	rst $38                                          ; $5b42: $ff
	db $dd                                           ; $5b43: $dd
	ld bc, $ff9b                                     ; $5b44: $01 $9b $ff
	ld d, l                                          ; $5b47: $55
	ld d, c                                          ; $5b48: $51
	ld b, c                                          ; $5b49: $41
	reti                                             ; $5b4a: $d9


	cp $3d                                           ; $5b4b: $fe $3d
	add b                                            ; $5b4d: $80
	sbc $0f                                          ; $5b4e: $de $0f
	sub h                                            ; $5b50: $94
	dec c                                            ; $5b51: $0d

jr_054_5b52:
	rrca                                             ; $5b52: $0f
	rrca                                             ; $5b53: $0f
	db $f4                                           ; $5b54: $f4
	rst FarCall                                          ; $5b55: $f7
	rst FarCall                                          ; $5b56: $f7
	db $f4                                           ; $5b57: $f4
	db $f4                                           ; $5b58: $f4

jr_054_5b59:
	or $f4                                           ; $5b59: $f6 $f4
	db $f4                                           ; $5b5b: $f4
	sbc $ff                                          ; $5b5c: $de $ff
	rst SubAFromDE                                          ; $5b5e: $df
	ld c, [hl]                                       ; $5b5f: $4e
	sbc h                                            ; $5b60: $9c
	ld a, b                                          ; $5b61: $78
	ld c, [hl]                                       ; $5b62: $4e
	ld e, $7b                                        ; $5b63: $1e $7b
	rst SubAFromDE                                          ; $5b65: $df
	rst SubAFromDE                                          ; $5b66: $df
	ld sp, hl                                        ; $5b67: $f9
	sbc h                                            ; $5b68: $9c
	rst GetHLinHL                                          ; $5b69: $cf
	ld sp, hl                                        ; $5b6a: $f9
	jp hl                                            ; $5b6b: $e9


	sbc $ff                                          ; $5b6c: $de $ff
	rst SubAFromDE                                          ; $5b6e: $df
	rra                                              ; $5b6f: $1f
	sbc $8f                                          ; $5b70: $de $8f
	ld h, e                                          ; $5b72: $63
	rst GetHLinHL                                          ; $5b73: $cf
	ld a, e                                          ; $5b74: $7b
	ld d, $7b                                        ; $5b75: $16 $7b
	db $fc                                           ; $5b77: $fc
	sbc [hl]                                         ; $5b78: $9e
	and b                                            ; $5b79: $a0
	ld [hl], a                                       ; $5b7a: $77
	cp l                                             ; $5b7b: $bd
	ld l, a                                          ; $5b7c: $6f
	db $ec                                           ; $5b7d: $ec
	ld [hl], e                                       ; $5b7e: $73
	ldh a, [$73]                                     ; $5b7f: $f0 $73
	xor l                                            ; $5b81: $ad
	inc bc                                           ; $5b82: $03
	ldh a, [$3b]                                     ; $5b83: $f0 $3b
	ldh a, [hDisp1_WX]                                     ; $5b85: $f0 $96
	db $fd                                           ; $5b87: $fd
	ld sp, hl                                        ; $5b88: $f9
	ld bc, $f905                                     ; $5b89: $01 $05 $f9
	db $fd                                           ; $5b8c: $fd
	dec b                                            ; $5b8d: $05
	dec b                                            ; $5b8e: $05
	ld [bc], a                                       ; $5b8f: $02
	ld a, c                                          ; $5b90: $79
	ld d, h                                          ; $5b91: $54
	ld a, a                                          ; $5b92: $7f
	cp $df                                           ; $5b93: $fe $df
	cp $9a                                           ; $5b95: $fe $9a
	ld [$acae], a                                    ; $5b97: $ea $ae $ac
	and h                                            ; $5b9a: $a4
	and b                                            ; $5b9b: $a0
	sbc $bf                                          ; $5b9c: $de $bf
	rst SubAFromDE                                          ; $5b9e: $df
	inc b                                            ; $5b9f: $04
	sbc l                                            ; $5ba0: $9d
	ld b, $0a                                        ; $5ba1: $06 $0a
	db $fd                                           ; $5ba3: $fd
	sbc d                                            ; $5ba4: $9a
	add hl, hl                                       ; $5ba5: $29
	db $ed                                           ; $5ba6: $ed
	add a                                            ; $5ba7: $87
	db $e3                                           ; $5ba8: $e3
	ld bc, $ffdd                                     ; $5ba9: $01 $dd $ff
	sbc h                                            ; $5bac: $9c
	rst SubAFromHL                                          ; $5bad: $d7
	di                                               ; $5bae: $f3
	ld de, $80fd                                     ; $5baf: $11 $fd $80
	ld d, a                                          ; $5bb2: $57
	db $ed                                           ; $5bb3: $ed
	cp d                                             ; $5bb4: $ba
	ld a, [$f404]                                    ; $5bb5: $fa $04 $f4
	ld a, [$f9fa]                                    ; $5bb8: $fa $fa $f9
	jr c, jr_054_5b59                                ; $5bbb: $38 $9c

	adc h                                            ; $5bbd: $8c
	add h                                            ; $5bbe: $84
	rlca                                             ; $5bbf: $07
	ld [bc], a                                       ; $5bc0: $02
	ld [bc], a                                       ; $5bc1: $02
	rst $38                                          ; $5bc2: $ff
	add a                                            ; $5bc3: $87
	ld b, b                                          ; $5bc4: $40
	cp e                                             ; $5bc5: $bb
	ld e, l                                          ; $5bc6: $5d
	ld c, c                                          ; $5bc7: $49
	ld a, b                                          ; $5bc8: $78
	ld [$008c], sp                                   ; $5bc9: $08 $8c $00
	ccf                                              ; $5bcc: $3f
	ld a, h                                          ; $5bcd: $7c
	cp $9e                                           ; $5bce: $fe $9e
	jr jr_054_5b52                                   ; $5bd0: $18 $80

	inc e                                            ; $5bd2: $1c
	cp $e0                                           ; $5bd3: $fe $e0
	nop                                              ; $5bd5: $00
	rlca                                             ; $5bd6: $07
	ccf                                              ; $5bd7: $3f
	ld a, a                                          ; $5bd8: $7f
	rst $38                                          ; $5bd9: $ff
	ld a, a                                          ; $5bda: $7f
	nop                                              ; $5bdb: $00
	ld bc, $f81f                                     ; $5bdc: $01 $1f $f8
	ret nz                                           ; $5bdf: $c0

	add b                                            ; $5be0: $80
	nop                                              ; $5be1: $00
	nop                                              ; $5be2: $00
	cpl                                              ; $5be3: $2f
	ld e, $7f                                        ; $5be4: $1e $7f
	rst GetHLinHL                                          ; $5be6: $cf
	rst AddAOntoHL                                          ; $5be7: $ef
	rst AddAOntoHL                                          ; $5be8: $ef
	rst $38                                          ; $5be9: $ff
	cp $19                                           ; $5bea: $fe $19
	ei                                               ; $5bec: $fb
	ld a, [$387b]                                    ; $5bed: $fa $7b $38
	add hl, sp                                       ; $5bf0: $39
	sbc l                                            ; $5bf1: $9d
	ld a, [de]                                       ; $5bf2: $1a
	ld [de], a                                       ; $5bf3: $12
	call c, $9be4                                    ; $5bf4: $dc $e4 $9b
	and h                                            ; $5bf7: $a4
	ld h, h                                          ; $5bf8: $64
	ld c, b                                          ; $5bf9: $48
	ccf                                              ; $5bfa: $3f
	db $dd                                           ; $5bfb: $dd
	cp a                                             ; $5bfc: $bf
	rst SubAFromDE                                          ; $5bfd: $df
	ccf                                              ; $5bfe: $3f
	adc [hl]                                         ; $5bff: $8e
	ld a, a                                          ; $5c00: $7f
	sub l                                            ; $5c01: $95
	adc l                                            ; $5c02: $8d
	adc a                                            ; $5c03: $8f
	rst GetHLinHL                                          ; $5c04: $cf
	rst GetHLinHL                                          ; $5c05: $cf
	call $cccc                                       ; $5c06: $cd $cc $cc
	ld a, [$f8fa]                                    ; $5c09: $fa $fa $f8
	cp b                                             ; $5c0c: $b8
	cp b                                             ; $5c0d: $b8
	cp d                                             ; $5c0e: $ba
	cp e                                             ; $5c0f: $bb
	cp e                                             ; $5c10: $bb
	db $db                                           ; $5c11: $db
	or a                                             ; $5c12: $b7
	sbc l                                            ; $5c13: $9d
	rst $38                                          ; $5c14: $ff
	ret nz                                           ; $5c15: $c0

	reti                                             ; $5c16: $d9


	rst $38                                          ; $5c17: $ff
	db $dd                                           ; $5c18: $dd
	ld b, c                                          ; $5c19: $41
	ld a, d                                          ; $5c1a: $7a
	cp [hl]                                          ; $5c1b: $be
	sbc [hl]                                         ; $5c1c: $9e
	ld bc, $c026                                     ; $5c1d: $01 $26 $c0
	ld a, d                                          ; $5c20: $7a
	push bc                                          ; $5c21: $c5
	ld [hl], d                                       ; $5c22: $72
	cp a                                             ; $5c23: $bf
	ld a, d                                          ; $5c24: $7a
	push bc                                          ; $5c25: $c5
	sbc $f4                                          ; $5c26: $de $f4
	ld a, a                                          ; $5c28: $7f
	ld a, [$549d]                                    ; $5c29: $fa $9d $54
	ld d, [hl]                                       ; $5c2c: $56
	ld a, e                                          ; $5c2d: $7b
	cp $df                                           ; $5c2e: $fe $df
	ld e, $9c                                        ; $5c30: $1e $9c
	ld e, [hl]                                       ; $5c32: $5e
	db $eb                                           ; $5c33: $eb
	jp hl                                            ; $5c34: $e9


	ld [hl], a                                       ; $5c35: $77
	cp $df                                           ; $5c36: $fe $df
	jp hl                                            ; $5c38: $e9


	sbc $c7                                          ; $5c39: $de $c7
	sbc $e3                                          ; $5c3b: $de $e3
	rst SubAFromDE                                          ; $5c3d: $df
	pop af                                           ; $5c3e: $f1
	reti                                             ; $5c3f: $d9


	rst $38                                          ; $5c40: $ff
	sbc e                                            ; $5c41: $9b
	ld [bc], a                                       ; $5c42: $02
	nop                                              ; $5c43: $00
	db $ec                                           ; $5c44: $ec
	inc b                                            ; $5c45: $04
	db $ed                                           ; $5c46: $ed
	ld h, d                                          ; $5c47: $62
	and d                                            ; $5c48: $a2
	rst SubAFromDE                                          ; $5c49: $df
	ld [bc], a                                       ; $5c4a: $02
	adc d                                            ; $5c4b: $8a
	inc c                                            ; $5c4c: $0c
	jr nz, jr_054_5c71                               ; $5c4d: $20 $22

	jr nc, jr_054_5ccf                               ; $5c4f: $30 $7e

	add b                                            ; $5c51: $80
	add b                                            ; $5c52: $80

jr_054_5c53:
	add h                                            ; $5c53: $84
	sbc a                                            ; $5c54: $9f
	sbc a                                            ; $5c55: $9f
	sbc l                                            ; $5c56: $9d
	sbc a                                            ; $5c57: $9f
	adc a                                            ; $5c58: $8f
	inc b                                            ; $5c59: $04
	sub l                                            ; $5c5a: $95
	dec d                                            ; $5c5b: $15
	ld de, $0011                                     ; $5c5c: $11 $11 $00
	add b                                            ; $5c5f: $80
	ld [de], a                                       ; $5c60: $12
	db $fc                                           ; $5c61: $fc
	sbc h                                            ; $5c62: $9c
	ld a, $7e                                        ; $5c63: $3e $7e
	db $ec                                           ; $5c65: $ec
	ld sp, hl                                        ; $5c66: $f9
	reti                                             ; $5c67: $d9


	ld a, a                                          ; $5c68: $7f
	reti                                             ; $5c69: $d9


	dec b                                            ; $5c6a: $05
	reti                                             ; $5c6b: $d9


	cp $d9                                           ; $5c6c: $fe $d9
	cp a                                             ; $5c6e: $bf
	add hl, hl                                       ; $5c6f: $29
	ld d, b                                          ; $5c70: $50

jr_054_5c71:
	ld a, e                                          ; $5c71: $7b
	jr c, jr_054_5c53                                ; $5c72: $38 $df

	db $fd                                           ; $5c74: $fd
	adc [hl]                                         ; $5c75: $8e
	ei                                               ; $5c76: $fb
	db $fd                                           ; $5c77: $fd
	rst SubAFromDE                                          ; $5c78: $df
	sbc [hl]                                         ; $5c79: $9e
	ld [bc], a                                       ; $5c7a: $02
	ld [bc], a                                       ; $5c7b: $02
	inc b                                            ; $5c7c: $04
	ld [$661c], sp                                   ; $5c7d: $08 $1c $66
	add d                                            ; $5c80: $82
	ccf                                              ; $5c81: $3f
	jr c, jr_054_5cac                                ; $5c82: $38 $28

	nop                                              ; $5c84: $00
	add c                                            ; $5c85: $81
	add c                                            ; $5c86: $81
	sbc $01                                          ; $5c87: $de $01
	sbc l                                            ; $5c89: $9d
	inc e                                            ; $5c8a: $1c
	db $10                                           ; $5c8b: $10
	db $fc                                           ; $5c8c: $fc
	sbc [hl]                                         ; $5c8d: $9e
	jr nz, jr_054_5cfd                               ; $5c8e: $20 $6d

	cp b                                             ; $5c90: $b8
	ld e, l                                          ; $5c91: $5d
	jr nz, jr_054_5d11                               ; $5c92: $20 $7d

	ld e, h                                          ; $5c94: $5c
	adc c                                            ; $5c95: $89
	cp $fc                                           ; $5c96: $fe $fc
	ld hl, sp-$0d                                    ; $5c98: $f8 $f3
	db $e4                                           ; $5c9a: $e4
	ret                                              ; $5c9b: $c9


	nop                                              ; $5c9c: $00
	ld bc, $0703                                     ; $5c9d: $01 $03 $07
	ld c, $1c                                        ; $5ca0: $0e $1c
	add hl, sp                                       ; $5ca2: $39
	ld [hl], e                                       ; $5ca3: $73
	adc b                                            ; $5ca4: $88
	ld de, $2111                                     ; $5ca5: $11 $11 $21
	ld [bc], a                                       ; $5ca8: $02
	inc bc                                           ; $5ca9: $03
	push bc                                          ; $5caa: $c5
	adc d                                            ; $5cab: $8a

jr_054_5cac:
	ld l, l                                          ; $5cac: $6d
	sub c                                            ; $5cad: $91
	sub e                                            ; $5cae: $93
	cp [hl]                                          ; $5caf: $be
	ld a, l                                          ; $5cb0: $7d
	ret                                              ; $5cb1: $c9


	ld c, c                                          ; $5cb2: $49
	sub c                                            ; $5cb3: $91
	sub c                                            ; $5cb4: $91
	sub e                                            ; $5cb5: $93
	inc de                                           ; $5cb6: $13
	daa                                              ; $5cb7: $27
	ld h, a                                          ; $5cb8: $67
	cp a                                             ; $5cb9: $bf
	cp a                                             ; $5cba: $bf
	sbc $7f                                          ; $5cbb: $de $7f
	rst SubAFromDE                                          ; $5cbd: $df
	rst $38                                          ; $5cbe: $ff
	ld a, b                                          ; $5cbf: $78
	ld d, d                                          ; $5cc0: $52
	rst SubAFromDE                                          ; $5cc1: $df
	db $eb                                           ; $5cc2: $eb
	sbc $e2                                          ; $5cc3: $de $e2
	ld a, h                                          ; $5cc5: $7c
	ld c, b                                          ; $5cc6: $48
	jp c, $dfff                                      ; $5cc7: $da $ff $df

jr_054_5cca:
	db $fd                                           ; $5cca: $fd
	db $dd                                           ; $5ccb: $dd
	push de                                          ; $5ccc: $d5
	sbc l                                            ; $5ccd: $9d
	pop de                                           ; $5cce: $d1

jr_054_5ccf:
	push de                                          ; $5ccf: $d5
	dec d                                            ; $5cd0: $15
	add b                                            ; $5cd1: $80
	sbc [hl]                                         ; $5cd2: $9e
	inc c                                            ; $5cd3: $0c
	ld a, e                                          ; $5cd4: $7b
	db $fd                                           ; $5cd5: $fd
	db $dd                                           ; $5cd6: $dd
	db $f4                                           ; $5cd7: $f4
	db $dd                                           ; $5cd8: $dd
	rst FarCall                                          ; $5cd9: $f7
	ld a, [hl]                                       ; $5cda: $7e
	add $9e                                          ; $5cdb: $c6 $9e
	ld e, $75                                        ; $5cdd: $1e $75
	add sp, -$62                                     ; $5cdf: $e8 $9e
	ld b, d                                          ; $5ce1: $42
	sbc $e9                                          ; $5ce2: $de $e9
	ld [hl], e                                       ; $5ce4: $73
	call c, $f19c                                    ; $5ce5: $dc $9c $f1

jr_054_5ce8:
	ld hl, sp-$08                                    ; $5ce8: $f8 $f8
	ld [hl], a                                       ; $5cea: $77
	ldh a, [$9e]                                     ; $5ceb: $f0 $9e
	ld b, h                                          ; $5ced: $44
	ld [hl], a                                       ; $5cee: $77
	ld l, l                                          ; $5cef: $6d
	db $dd                                           ; $5cf0: $dd

jr_054_5cf1:
	rst $38                                          ; $5cf1: $ff
	sbc h                                            ; $5cf2: $9c
	ld b, b                                          ; $5cf3: $40
	nop                                              ; $5cf4: $00
	add b                                            ; $5cf5: $80
	sbc $a0                                          ; $5cf6: $de $a0
	sbc d                                            ; $5cf8: $9a
	ldh a, [$e8]                                     ; $5cf9: $f0 $e8
	nop                                              ; $5cfb: $00
	ld h, b                                          ; $5cfc: $60

jr_054_5cfd:
	ld h, b                                          ; $5cfd: $60
	sbc $40                                          ; $5cfe: $de $40
	sbc [hl]                                         ; $5d00: $9e
	nop                                              ; $5d01: $00
	ld l, a                                          ; $5d02: $6f
	ld c, d                                          ; $5d03: $4a
	ld e, e                                          ; $5d04: $5b
	or b                                             ; $5d05: $b0
	rst SubAFromDE                                          ; $5d06: $df
	ld a, a                                          ; $5d07: $7f
	sbc l                                            ; $5d08: $9d
	inc bc                                           ; $5d09: $03
	ld a, a                                          ; $5d0a: $7f
	db $fd                                           ; $5d0b: $fd
	sbc $80                                          ; $5d0c: $de $80
	call c, $9cff                                    ; $5d0e: $dc $ff $9c

jr_054_5d11:
	add h                                            ; $5d11: $84
	ldh [rSVBK], a                                   ; $5d12: $e0 $70
	ld [hl], e                                       ; $5d14: $73
	inc [hl]                                         ; $5d15: $34
	sbc l                                            ; $5d16: $9d
	ld a, b                                          ; $5d17: $78
	jr jr_054_5d7f                                   ; $5d18: $18 $65

	add d                                            ; $5d1a: $82
	ld a, a                                          ; $5d1b: $7f
	push hl                                          ; $5d1c: $e5
	ld l, d                                          ; $5d1d: $6a
	ret nz                                           ; $5d1e: $c0

	call c, $3eff                                    ; $5d1f: $dc $ff $3e
	ret nz                                           ; $5d22: $c0

	db $db                                           ; $5d23: $db
	add b                                            ; $5d24: $80
	rst $38                                          ; $5d25: $ff
	sbc [hl]                                         ; $5d26: $9e
	ccf                                              ; $5d27: $3f
	ld l, e                                          ; $5d28: $6b
	xor b                                            ; $5d29: $a8
	db $db                                           ; $5d2a: $db
	ld b, c                                          ; $5d2b: $41
	rst SubAFromDE                                          ; $5d2c: $df
	ld bc, $bf9e                                     ; $5d2d: $01 $9e $bf
	call c, $8021                                    ; $5d30: $dc $21 $80
	dec h                                            ; $5d33: $25
	dec de                                           ; $5d34: $1b
	ld e, $3f                                        ; $5d35: $1e $3f
	dec l                                            ; $5d37: $2d
	dec de                                           ; $5d38: $1b
	add a                                            ; $5d39: $87
	nop                                              ; $5d3a: $00
	ld b, e                                          ; $5d3b: $43
	add c                                            ; $5d3c: $81
	ccf                                              ; $5d3d: $3f
	add hl, hl                                       ; $5d3e: $29
	ld [hl], $34                                     ; $5d3f: $36 $34
	jr jr_054_5cca                                   ; $5d41: $18 $87

	and c                                            ; $5d43: $a1
	ret nz                                           ; $5d44: $c0

	ld h, b                                          ; $5d45: $60
	jr nc, jr_054_5ce8                               ; $5d46: $30 $a0

	ld a, b                                          ; $5d48: $78
	db $f4                                           ; $5d49: $f4
	ei                                               ; $5d4a: $fb
	ret nz                                           ; $5d4b: $c0

	add b                                            ; $5d4c: $80
	ret nz                                           ; $5d4d: $c0

	ldh [$f0], a                                     ; $5d4e: $e0 $f0
	db $10                                           ; $5d50: $10
	jr jr_054_5cf1                                   ; $5d51: $18 $9e

	inc c                                            ; $5d53: $0c
	ld a, d                                          ; $5d54: $7a
	db $eb                                           ; $5d55: $eb
	rst SubAFromDE                                          ; $5d56: $df
	db $fc                                           ; $5d57: $fc
	sbc h                                            ; $5d58: $9c
	ld sp, hl                                        ; $5d59: $f9
	ld hl, sp-$0e                                    ; $5d5a: $f8 $f2
	halt                                             ; $5d5c: $76
	ret nc                                           ; $5d5d: $d0

	ld a, [hl]                                       ; $5d5e: $7e
	rst GetHLinHL                                          ; $5d5f: $cf
	ld a, [hl]                                       ; $5d60: $7e
	adc $94                                          ; $5d61: $ce $94
	sub l                                            ; $5d63: $95
	ld [hl+], a                                      ; $5d64: $22
	ld c, c                                          ; $5d65: $49
	adc c                                            ; $5d66: $89
	inc bc                                           ; $5d67: $03
	inc [hl]                                         ; $5d68: $34
	dec d                                            ; $5d69: $15
	ld a, [hl+]                                      ; $5d6a: $2a
	ldh [c], a                                       ; $5d6b: $e2
	call nz, Call_054_7b84                           ; $5d6c: $c4 $84 $7b
	db $ed                                           ; $5d6f: $ed
	adc d                                            ; $5d70: $8a
	ld [hl+], a                                      ; $5d71: $22
	ld b, l                                          ; $5d72: $45
	sub a                                            ; $5d73: $97
	dec hl                                           ; $5d74: $2b
	ld d, e                                          ; $5d75: $53
	and [hl]                                         ; $5d76: $a6
	ld c, h                                          ; $5d77: $4c
	add c                                            ; $5d78: $81
	ld b, $1b                                        ; $5d79: $06 $1b
	ld a, b                                          ; $5d7b: $78
	db $f4                                           ; $5d7c: $f4
	db $ec                                           ; $5d7d: $ec

jr_054_5d7e:
	reti                                             ; $5d7e: $d9


jr_054_5d7f:
	or e                                             ; $5d7f: $b3
	ld a, a                                          ; $5d80: $7f
	rst $38                                          ; $5d81: $ff
	db $fc                                           ; $5d82: $fc
	xor a                                            ; $5d83: $af
	rst SubAFromDE                                          ; $5d84: $df
	ld e, a                                          ; $5d85: $5f
	ld a, d                                          ; $5d86: $7a
	call z, $0f9d                                    ; $5d87: $cc $9d $0f
	add e                                            ; $5d8a: $83
	ld l, e                                          ; $5d8b: $6b
	ld [hl], c                                       ; $5d8c: $71
	sbc [hl]                                         ; $5d8d: $9e
	ld a, a                                          ; $5d8e: $7f
	call c, $dfe0                                    ; $5d8f: $dc $e0 $df
	rst $38                                          ; $5d92: $ff
	sbc [hl]                                         ; $5d93: $9e
	ld [$ffd9], a                                    ; $5d94: $ea $d9 $ff
	sbc [hl]                                         ; $5d97: $9e
	ld d, c                                          ; $5d98: $51
	db $dd                                           ; $5d99: $dd
	ld de, $ffdf                                     ; $5d9a: $11 $df $ff
	sbc [hl]                                         ; $5d9d: $9e
	ld b, l                                          ; $5d9e: $45
	ld [hl+], a                                      ; $5d9f: $22
	ret nz                                           ; $5da0: $c0

	ld a, d                                          ; $5da1: $7a
	jp $0fdd                                         ; $5da2: $c3 $dd $0f


	ld a, [hl]                                       ; $5da5: $7e
	jp $f4db                                         ; $5da6: $c3 $db $f4


	sbc l                                            ; $5da9: $9d
	ld a, e                                          ; $5daa: $7b
	ld h, a                                          ; $5dab: $67
	db $db                                           ; $5dac: $db
	ld a, e                                          ; $5dad: $7b
	sbc l                                            ; $5dae: $9d
	add $de                                          ; $5daf: $c6 $de
	db $db                                           ; $5db1: $db
	add $80                                          ; $5db2: $c6 $80
	ld b, a                                          ; $5db4: $47
	ld a, [hl]                                       ; $5db5: $7e
	ld a, [hl]                                       ; $5db6: $7e
	ccf                                              ; $5db7: $3f
	ccf                                              ; $5db8: $3f
	ld l, a                                          ; $5db9: $6f
	ld a, a                                          ; $5dba: $7f
	ld l, a                                          ; $5dbb: $6f
	db $fc                                           ; $5dbc: $fc
	push bc                                          ; $5dbd: $c5
	push bc                                          ; $5dbe: $c5
	call nz, $d4c4                                   ; $5dbf: $c4 $c4 $d4
	call nz, $b8d4                                   ; $5dc2: $c4 $d4 $b8
	ld [hl], b                                       ; $5dc5: $70
	sub h                                            ; $5dc6: $94
	nop                                              ; $5dc7: $00
	sbc h                                            ; $5dc8: $9c
	or l                                             ; $5dc9: $b5
	db $dd                                           ; $5dca: $dd
	ld a, a                                          ; $5dcb: $7f
	ld b, b                                          ; $5dcc: $40
	adc b                                            ; $5dcd: $88
	ld l, b                                          ; $5dce: $68
	nop                                              ; $5dcf: $00
	ld [bc], a                                       ; $5dd0: $02
	ld a, [bc]                                       ; $5dd1: $0a
	ld [hl+], a                                      ; $5dd2: $22
	cp $df                                           ; $5dd3: $fe $df
	ld [bc], a                                       ; $5dd5: $02
	sbc [hl]                                         ; $5dd6: $9e
	inc bc                                           ; $5dd7: $03
	sbc $02                                          ; $5dd8: $de $02
	rst SubAFromDE                                          ; $5dda: $df
	rst $38                                          ; $5ddb: $ff
	sbc l                                            ; $5ddc: $9d
	db $fc                                           ; $5ddd: $fc
	db $fd                                           ; $5dde: $fd
	db $dd                                           ; $5ddf: $dd
	db $fc                                           ; $5de0: $fc
	rst $38                                          ; $5de1: $ff
	sbc c                                            ; $5de2: $99
	ld a, e                                          ; $5de3: $7b
	nop                                              ; $5de4: $00
	or a                                             ; $5de5: $b7
	jr nz, jr_054_5e5c                               ; $5de6: $20 $74

	ld c, d                                          ; $5de8: $4a
	ld a, d                                          ; $5de9: $7a
	sub $7e                                          ; $5dea: $d6 $7e
	db $fc                                           ; $5dec: $fc
	ld a, l                                          ; $5ded: $7d
	jr z, jr_054_5d7e                                ; $5dee: $28 $8e

	dec [hl]                                         ; $5df0: $35
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	db $fc                                           ; $5df3: $fc
	inc d                                            ; $5df4: $14
	ld [$1020], sp                                   ; $5df5: $08 $20 $10
	ld b, b                                          ; $5df8: $40
	rst $38                                          ; $5df9: $ff
	rst $38                                          ; $5dfa: $ff
	inc bc                                           ; $5dfb: $03
	dec bc                                           ; $5dfc: $0b
	inc bc                                           ; $5dfd: $03
	ld b, e                                          ; $5dfe: $43
	jp Jump_054_47f3                                 ; $5dff: $c3 $f3 $47


	add b                                            ; $5e02: $80
	ld b, [hl]                                       ; $5e03: $46
	ret nz                                           ; $5e04: $c0

	reti                                             ; $5e05: $d9


	add b                                            ; $5e06: $80
	ld sp, hl                                        ; $5e07: $f9
	reti                                             ; $5e08: $d9


	ld b, b                                          ; $5e09: $40
	reti                                             ; $5e0a: $d9


	jr nz, @-$68                                     ; $5e0b: $20 $96

	pop bc                                           ; $5e0d: $c1
	and b                                            ; $5e0e: $a0
	ld d, b                                          ; $5e0f: $50
	inc l                                            ; $5e10: $2c
	rla                                              ; $5e11: $17
	dec bc                                           ; $5e12: $0b
	inc b                                            ; $5e13: $04
	ld [bc], a                                       ; $5e14: $02
	add b                                            ; $5e15: $80
	ld a, d                                          ; $5e16: $7a
	ret z                                            ; $5e17: $c8

	ld a, [hl]                                       ; $5e18: $7e
	jp nc, $0790                                     ; $5e19: $d2 $90 $07

	inc bc                                           ; $5e1c: $03
	ccf                                              ; $5e1d: $3f
	ld c, a                                          ; $5e1e: $4f
	inc de                                           ; $5e1f: $13
	rlca                                             ; $5e20: $07
	jp $f8f1                                         ; $5e21: $c3 $f1 $f8


	ld a, b                                          ; $5e24: $78
	rst JumpTable                                          ; $5e25: $c7
	jr nc, jr_054_5e34                               ; $5e26: $30 $0c

	ld [bc], a                                       ; $5e28: $02
	ld bc, $647a                                     ; $5e29: $01 $7a $64
	add [hl]                                         ; $5e2c: $86
	ldh a, [$f1]                                     ; $5e2d: $f0 $f1
	call nc, $a2e0                                   ; $5e2f: $d4 $e0 $a2
	ldh [$60], a                                     ; $5e32: $e0 $60

jr_054_5e34:
	ldh [$fc], a                                     ; $5e34: $e0 $fc
	inc e                                            ; $5e36: $1c
	add hl, sp                                       ; $5e37: $39
	add hl, sp                                       ; $5e38: $39
	ld a, c                                          ; $5e39: $79
	ei                                               ; $5e3a: $fb
	ei                                               ; $5e3b: $fb
	ld a, a                                          ; $5e3c: $7f
	ld [$2311], sp                                   ; $5e3d: $08 $11 $23
	ld h, $4d                                        ; $5e40: $26 $4d
	ld e, a                                          ; $5e42: $5f
	cp e                                             ; $5e43: $bb
	cp a                                             ; $5e44: $bf
	rst SubAFromDE                                          ; $5e45: $df
	ld [hl], l                                       ; $5e46: $75
	sub c                                            ; $5e47: $91
	rst SubAFromDE                                          ; $5e48: $df
	db $fc                                           ; $5e49: $fc
	add b                                            ; $5e4a: $80
	ld hl, sp-$1c                                    ; $5e4b: $f8 $e4
	adc l                                            ; $5e4d: $8d
	ld a, [de]                                       ; $5e4e: $1a
	dec [hl]                                         ; $5e4f: $35
	ld l, e                                          ; $5e50: $6b
	ld d, h                                          ; $5e51: $54
	add sp, -$50                                     ; $5e52: $e8 $b0
	ei                                               ; $5e54: $fb
	di                                               ; $5e55: $f3
	rst SubAFromBC                                          ; $5e56: $e7
	adc $9c                                          ; $5e57: $ce $9c
	cp e                                             ; $5e59: $bb
	scf                                              ; $5e5a: $37
	ld l, a                                          ; $5e5b: $6f

jr_054_5e5c:
	ld a, h                                          ; $5e5c: $7c
	cp [hl]                                          ; $5e5d: $be
	rst $38                                          ; $5e5e: $ff
	ld hl, sp+$18                                    ; $5e5f: $f8 $18
	inc e                                            ; $5e61: $1c
	inc a                                            ; $5e62: $3c
	ld a, [hl]                                       ; $5e63: $7e
	rst $38                                          ; $5e64: $ff
	pop bc                                           ; $5e65: $c1
	nop                                              ; $5e66: $00
	rlca                                             ; $5e67: $07
	rst SubAFromBC                                          ; $5e68: $e7
	db $e3                                           ; $5e69: $e3
	sub [hl]                                         ; $5e6a: $96
	jp $ea81                                         ; $5e6b: $c3 $81 $ea


	ld a, [hl+]                                      ; $5e6e: $2a
	sub [hl]                                         ; $5e6f: $96
	add sp, $14                                      ; $5e70: $e8 $14
	ld a, [bc]                                       ; $5e72: $0a
	ld bc, $607b                                     ; $5e73: $01 $7b $60
	sbc e                                            ; $5e76: $9b
	ld a, e                                          ; $5e77: $7b
	rra                                              ; $5e78: $1f
	rst AddAOntoHL                                          ; $5e79: $ef
	rst FarCall                                          ; $5e7a: $f7
	ld a, d                                          ; $5e7b: $7a
	ld b, d                                          ; $5e7c: $42
	sbc l                                            ; $5e7d: $9d
	ld b, l                                          ; $5e7e: $45
	dec b                                            ; $5e7f: $05
	ld a, d                                          ; $5e80: $7a
	ld b, h                                          ; $5e81: $44
	ld a, h                                          ; $5e82: $7c
	ccf                                              ; $5e83: $3f
	ld [hl+], a                                      ; $5e84: $22
	ret nz                                           ; $5e85: $c0

	sbc $0d                                          ; $5e86: $de $0d
	ld [hl], d                                       ; $5e88: $72
	ret nz                                           ; $5e89: $c0

	sbc $f6                                          ; $5e8a: $de $f6
	ld [hl], l                                       ; $5e8c: $75
	ld a, l                                          ; $5e8d: $7d
	add b                                            ; $5e8e: $80
	ld a, e                                          ; $5e8f: $7b
	ld l, e                                          ; $5e90: $6b
	ld a, e                                          ; $5e91: $7b
	ld l, e                                          ; $5e92: $6b
	ld l, e                                          ; $5e93: $6b
	ld a, e                                          ; $5e94: $7b
	ld a, a                                          ; $5e95: $7f
	rst $38                                          ; $5e96: $ff
	add $d6                                          ; $5e97: $c6 $d6
	add $d6                                          ; $5e99: $c6 $d6
	sub $c6                                          ; $5e9b: $d6 $c6

jr_054_5e9d:
	jp nz, Jump_054_7fff                             ; $5e9d: $c2 $ff $7f

	rst $38                                          ; $5ea0: $ff
	ld c, a                                          ; $5ea1: $4f
	db $fd                                           ; $5ea2: $fd
	call $bdf9                                       ; $5ea3: $cd $f9 $bd
	rst $38                                          ; $5ea6: $ff
	call nz, $f444                                   ; $5ea7: $c4 $44 $f4
	ld b, [hl]                                       ; $5eaa: $46
	halt                                             ; $5eab: $76
	ld b, [hl]                                       ; $5eac: $46
	ld b, [hl]                                       ; $5ead: $46
	ld h, b                                          ; $5eae: $60
	rst SubAFromBC                                          ; $5eaf: $e7
	reti                                             ; $5eb0: $d9


	rst $38                                          ; $5eb1: $ff
	halt                                             ; $5eb2: $76
	call nz, $bf7e                                   ; $5eb3: $c4 $7e $bf
	ld a, d                                          ; $5eb6: $7a
	jp c, $fcdd                                      ; $5eb7: $da $dd $fc

	sbc $ff                                          ; $5eba: $de $ff
	sbc d                                            ; $5ebc: $9a
	ld b, a                                          ; $5ebd: $47
	add hl, bc                                       ; $5ebe: $09
	dec c                                            ; $5ebf: $0d
	dec bc                                           ; $5ec0: $0b
	ld bc, $db7b                                     ; $5ec1: $01 $7b $db
	sbc d                                            ; $5ec4: $9a
	ccf                                              ; $5ec5: $3f
	ld e, a                                          ; $5ec6: $5f
	dec de                                           ; $5ec7: $1b
	ld e, $1e                                        ; $5ec8: $1e $1e
	sbc $ff                                          ; $5eca: $de $ff
	sbc l                                            ; $5ecc: $9d
	ld b, h                                          ; $5ecd: $44
	add h                                            ; $5ece: $84
	cp $7a                                           ; $5ecf: $fe $7a
	xor d                                            ; $5ed1: $aa
	sbc [hl]                                         ; $5ed2: $9e
	add e                                            ; $5ed3: $83
	db $dd                                           ; $5ed4: $dd
	inc bc                                           ; $5ed5: $03
	ld e, b                                          ; $5ed6: $58
	xor b                                            ; $5ed7: $a8
	ld [bc], a                                       ; $5ed8: $02
	ret nz                                           ; $5ed9: $c0

	ld a, [hl+]                                      ; $5eda: $2a
	ret nz                                           ; $5edb: $c0

	ld a, d                                          ; $5edc: $7a
	call c, $177f                                    ; $5edd: $dc $7f $17
	sbc h                                            ; $5ee0: $9c
	rlca                                             ; $5ee1: $07
	ld a, c                                          ; $5ee2: $79
	ld [hl], b                                       ; $5ee3: $70
	ld [hl], a                                       ; $5ee4: $77
	ld hl, sp-$68                                    ; $5ee5: $f8 $98
	inc bc                                           ; $5ee7: $03
	dec b                                            ; $5ee8: $05
	ld l, b                                          ; $5ee9: $68
	ld e, b                                          ; $5eea: $58
	jr nc, jr_054_5e9d                               ; $5eeb: $30 $b0

	and b                                            ; $5eed: $a0
	sbc $c0                                          ; $5eee: $de $c0
	sbc l                                            ; $5ef0: $9d
	add c                                            ; $5ef1: $81
	ld [hl], c                                       ; $5ef2: $71
	sbc $c0                                          ; $5ef3: $de $c0
	sbc $80                                          ; $5ef5: $de $80
	ld a, [hl]                                       ; $5ef7: $7e
	xor e                                            ; $5ef8: $ab
	sbc e                                            ; $5ef9: $9b
	ldh [$e1], a                                     ; $5efa: $e0 $e1
	jp hl                                            ; $5efc: $e9


	jp hl                                            ; $5efd: $e9


jr_054_5efe:
	sbc $eb                                          ; $5efe: $de $eb
	ld a, [hl]                                       ; $5f00: $7e
	rst JumpTable                                          ; $5f01: $c7
	jp c, $df3f                                      ; $5f02: $da $3f $df

	pop af                                           ; $5f05: $f1
	rst SubAFromDE                                          ; $5f06: $df
	db $e3                                           ; $5f07: $e3
	rst SubAFromDE                                          ; $5f08: $df
	add $9c                                          ; $5f09: $c6 $9c
	rst JumpTable                                          ; $5f0b: $c7
	add a                                            ; $5f0c: $87
	cp $75                                           ; $5f0d: $fe $75
	ld l, c                                          ; $5f0f: $69
	sbc $f9                                          ; $5f10: $de $f9
	sub [hl]                                         ; $5f12: $96
	ret nz                                           ; $5f13: $c0

	ld b, b                                          ; $5f14: $40
	ld b, c                                          ; $5f15: $41
	add e                                            ; $5f16: $83
	add a                                            ; $5f17: $87
	adc a                                            ; $5f18: $8f
	rrca                                             ; $5f19: $0f
	rra                                              ; $5f1a: $1f
	ld a, a                                          ; $5f1b: $7f
	ld [hl], h                                       ; $5f1c: $74
	jr z, jr_054_5efe                                ; $5f1d: $28 $df

	ldh a, [$9d]                                     ; $5f1f: $f0 $9d
	ldh [$fe], a                                     ; $5f21: $e0 $fe
	call c, Call_054_7eff                            ; $5f23: $dc $ff $7e
	add $77                                          ; $5f26: $c6 $77
	or b                                             ; $5f28: $b0
	rst $38                                          ; $5f29: $ff
	ld a, [hl]                                       ; $5f2a: $7e
	or [hl]                                          ; $5f2b: $b6
	ld [hl], h                                       ; $5f2c: $74
	ldh [$df], a                                     ; $5f2d: $e0 $df
	add d                                            ; $5f2f: $82
	rst SubAFromDE                                          ; $5f30: $df
	pop bc                                           ; $5f31: $c1
	ld [hl], l                                       ; $5f32: $75
	ld [hl], h                                       ; $5f33: $74
	rst SubAFromDE                                          ; $5f34: $df
	ld a, l                                          ; $5f35: $7d
	rst SubAFromDE                                          ; $5f36: $df
	ld a, $7f                                        ; $5f37: $3e $7f
	ld a, [$3fdf]                                    ; $5f39: $fa $df $3f
	sbc $1f                                          ; $5f3c: $de $1f
	sbc [hl]                                         ; $5f3e: $9e
	adc a                                            ; $5f3f: $8f
	jp c, $9efe                                      ; $5f40: $da $fe $9e

	ld a, [hl]                                       ; $5f43: $7e
	add hl, sp                                       ; $5f44: $39
	add b                                            ; $5f45: $80
	sbc [hl]                                         ; $5f46: $9e
	ld c, $7b                                        ; $5f47: $0e $7b
	cp $9a                                           ; $5f49: $fe $9a
	rrca                                             ; $5f4b: $0f
	rst FarCall                                          ; $5f4c: $f7
	rst FarCall                                          ; $5f4d: $f7
	db $f4                                           ; $5f4e: $f4
	push af                                          ; $5f4f: $f5
	ld a, e                                          ; $5f50: $7b
	cp $80                                           ; $5f51: $fe $80
	db $f4                                           ; $5f53: $f4
	rst $38                                          ; $5f54: $ff
	add hl, bc                                       ; $5f55: $09
	jp hl                                            ; $5f56: $e9


	call $cbe9                                       ; $5f57: $cd $e9 $cb
	db $eb                                           ; $5f5a: $eb
	db $eb                                           ; $5f5b: $eb
	rst $38                                          ; $5f5c: $ff
	rst $38                                          ; $5f5d: $ff
	sbc a                                            ; $5f5e: $9f
	cp a                                             ; $5f5f: $bf
	sbc a                                            ; $5f60: $9f
	cp l                                             ; $5f61: $bd
	sbc l                                            ; $5f62: $9d
	sbc l                                            ; $5f63: $9d
	rst $38                                          ; $5f64: $ff
	rrca                                             ; $5f65: $0f
	ld a, a                                          ; $5f66: $7f
	sbc a                                            ; $5f67: $9f
	ld a, [hl]                                       ; $5f68: $7e
	ld a, a                                          ; $5f69: $7f
	ld e, a                                          ; $5f6a: $5f
	ld e, a                                          ; $5f6b: $5f
	rst $38                                          ; $5f6c: $ff
	rst $38                                          ; $5f6d: $ff
	adc a                                            ; $5f6e: $8f
	rst AddAOntoHL                                          ; $5f6f: $ef
	adc a                                            ; $5f70: $8f
	adc [hl]                                         ; $5f71: $8e
	rst SubAFromDE                                          ; $5f72: $df
	xor [hl]                                         ; $5f73: $ae
	ld a, d                                          ; $5f74: $7a
	rst $38                                          ; $5f75: $ff
	ld l, h                                          ; $5f76: $6c
	ld a, b                                          ; $5f77: $78
	ld l, d                                          ; $5f78: $6a
	db $f4                                           ; $5f79: $f4
	ld c, e                                          ; $5f7a: $4b
	ldh a, [rPCM12]                                  ; $5f7b: $f0 $76
	push bc                                          ; $5f7d: $c5
	db $dd                                           ; $5f7e: $dd
	rst $38                                          ; $5f7f: $ff
	sbc [hl]                                         ; $5f80: $9e
	ld hl, sp+$6f                                    ; $5f81: $f8 $6f
	ldh a, [$9d]                                     ; $5f83: $f0 $9d
	rlca                                             ; $5f85: $07
	ld hl, sp+$6f                                    ; $5f86: $f8 $6f
	ldh a, [$7a]                                     ; $5f88: $f0 $7a
	cp a                                             ; $5f8a: $bf
	ld [hl], a                                       ; $5f8b: $77
	ldh a, [$9a]                                     ; $5f8c: $f0 $9a

Jump_054_5f8e:
	inc bc                                           ; $5f8e: $03
	db $fc                                           ; $5f8f: $fc
	nop                                              ; $5f90: $00
	ret nz                                           ; $5f91: $c0

	ldh a, [$7b]                                     ; $5f92: $f0 $7b
	ld c, [hl]                                       ; $5f94: $4e
	ld a, [hl]                                       ; $5f95: $7e
	ld a, [hl-]                                      ; $5f96: $3a
	sbc [hl]                                         ; $5f97: $9e
	rlca                                             ; $5f98: $07
	call c, Call_054_7aff                            ; $5f99: $dc $ff $7a
	ld [hl-], a                                      ; $5f9c: $32
	rst SubAFromDE                                          ; $5f9d: $df
	dec b                                            ; $5f9e: $05
	sbc d                                            ; $5f9f: $9a
	inc b                                            ; $5fa0: $04
	add h                                            ; $5fa1: $84
	rst $38                                          ; $5fa2: $ff
	nop                                              ; $5fa3: $00
	rra                                              ; $5fa4: $1f
	ld a, d                                          ; $5fa5: $7a
	jr nz, jr_054_6010                               ; $5fa6: $20 $68

	inc hl                                           ; $5fa8: $23
	sbc c                                            ; $5fa9: $99
	cp a                                             ; $5faa: $bf
	ld b, b                                          ; $5fab: $40
	rst $38                                          ; $5fac: $ff
	rlca                                             ; $5fad: $07
	ld [hl], a                                       ; $5fae: $77
	di                                               ; $5faf: $f3
	ld a, d                                          ; $5fb0: $7a
	ld l, [hl]                                       ; $5fb1: $6e
	sub [hl]                                         ; $5fb2: $96
	cp a                                             ; $5fb3: $bf
	ld hl, sp+$04                                    ; $5fb4: $f8 $04
	ld [bc], a                                       ; $5fb6: $02
	ld [bc], a                                       ; $5fb7: $02
	ld bc, $ff40                                     ; $5fb8: $01 $40 $ff
	ld bc, $d87b                                     ; $5fbb: $01 $7b $d8
	ld a, a                                          ; $5fbe: $7f
	inc d                                            ; $5fbf: $14
	add b                                            ; $5fc0: $80
	jr nz, jr_054_5fc3                               ; $5fc1: $20 $00

jr_054_5fc3:
	rst $38                                          ; $5fc3: $ff
	ld bc, $0301                                     ; $5fc4: $01 $01 $03
	inc bc                                           ; $5fc7: $03
	rlca                                             ; $5fc8: $07
	or b                                             ; $5fc9: $b0
	or b                                             ; $5fca: $b0
	ld d, b                                          ; $5fcb: $50
	ld l, b                                          ; $5fcc: $68
	ld [hl], h                                       ; $5fcd: $74
	ei                                               ; $5fce: $fb
	db $fc                                           ; $5fcf: $fc
	rst $38                                          ; $5fd0: $ff
	ldh a, [$f0]                                     ; $5fd1: $f0 $f0
	or b                                             ; $5fd3: $b0
	sbc b                                            ; $5fd4: $98
	adc h                                            ; $5fd5: $8c
	rlca                                             ; $5fd6: $07
	inc bc                                           ; $5fd7: $03
	nop                                              ; $5fd8: $00
	ccf                                              ; $5fd9: $3f
	ccf                                              ; $5fda: $3f
	scf                                              ; $5fdb: $37
	ld h, $67                                        ; $5fdc: $26 $67
	ld h, [hl]                                       ; $5fde: $66
	or $9c                                           ; $5fdf: $f6 $9c
	rst $38                                          ; $5fe1: $ff
	rra                                              ; $5fe2: $1f
	rlca                                             ; $5fe3: $07
	db $dd                                           ; $5fe4: $dd
	inc b                                            ; $5fe5: $04
	sub [hl]                                         ; $5fe6: $96
	db $e4                                           ; $5fe7: $e4
	rra                                              ; $5fe8: $1f
	db $db                                           ; $5fe9: $db
	db $db                                           ; $5fea: $db
	dec sp                                           ; $5feb: $3b
	rra                                              ; $5fec: $1f
	ld b, l                                          ; $5fed: $45
	ld c, l                                          ; $5fee: $4d
	add hl, sp                                       ; $5fef: $39
	ld [hl], a                                       ; $5ff0: $77
	or d                                             ; $5ff1: $b2
	sub c                                            ; $5ff2: $91
	ld a, a                                          ; $5ff3: $7f
	xor $4e                                          ; $5ff4: $ee $4e
	ld c, h                                          ; $5ff6: $4c
	db $fc                                           ; $5ff7: $fc
	add l                                            ; $5ff8: $85
	adc l                                            ; $5ff9: $8d
	adc [hl]                                         ; $5ffa: $8e
	cp $1e                                           ; $5ffb: $fe $1e
	sub $96                                          ; $5ffd: $d6 $96
	scf                                              ; $5fff: $37
	ei                                               ; $6000: $fb
	sbc $f3                                          ; $6001: $de $f3
	sub a                                            ; $6003: $97
	inc de                                           ; $6004: $13
	dec de                                           ; $6005: $1b
	dec de                                           ; $6006: $1b
	ld a, [de]                                       ; $6007: $1a
	ccf                                              ; $6008: $3f
	rst $38                                          ; $6009: $ff
	ccf                                              ; $600a: $3f
	rrca                                             ; $600b: $0f
	halt                                             ; $600c: $76
	jp nz, $c09e                                     ; $600d: $c2 $9e $c0

jr_054_6010:
	ld a, e                                          ; $6010: $7b
	halt                                             ; $6011: $76
	ld a, [hl]                                       ; $6012: $7e
	jp nz, Jump_054_597e                             ; $6013: $c2 $7e $59

	sbc [hl]                                         ; $6016: $9e
	pop hl                                           ; $6017: $e1

Call_054_6018:
	ld [hl], d                                       ; $6018: $72
	adc b                                            ; $6019: $88
	ld a, [hl]                                       ; $601a: $7e
	add a                                            ; $601b: $87
	sbc h                                            ; $601c: $9c
	ld e, $3f                                        ; $601d: $1e $3f
	ccf                                              ; $601f: $3f
	db $dd                                           ; $6020: $dd
	ld a, a                                          ; $6021: $7f
	add b                                            ; $6022: $80
	ccf                                              ; $6023: $3f
	pop hl                                           ; $6024: $e1
	ldh [$f0], a                                     ; $6025: $e0 $f0
	ld [hl], b                                       ; $6027: $70
	jr c, jr_054_6062                                ; $6028: $38 $38

	inc e                                            ; $602a: $1c
	inc c                                            ; $602b: $0c
	ld e, $1f                                        ; $602c: $1e $1f
	rrca                                             ; $602e: $0f
	adc a                                            ; $602f: $8f
	rst JumpTable                                          ; $6030: $c7
	rst JumpTable                                          ; $6031: $c7
	db $e3                                           ; $6032: $e3
	di                                               ; $6033: $f3
	rst GetHLinHL                                          ; $6034: $cf
	rst AddAOntoHL                                          ; $6035: $ef
	rst AddAOntoHL                                          ; $6036: $ef
	ld [hl], a                                       ; $6037: $77
	ld [hl], a                                       ; $6038: $77
	scf                                              ; $6039: $37
	rla                                              ; $603a: $17
	rlca                                             ; $603b: $07
	ld a, $1e                                        ; $603c: $3e $1e
	ld e, $8e                                        ; $603e: $1e $8e
	adc [hl]                                         ; $6040: $8e
	adc $9e                                          ; $6041: $ce $9e
	xor $3d                                          ; $6043: $ee $3d
	add b                                            ; $6045: $80
	ld a, d                                          ; $6046: $7a
	call nz, $fc7f                                   ; $6047: $c4 $7f $fc
	rst SubAFromDE                                          ; $604a: $df
	ld c, $76                                        ; $604b: $0e $76
	call nz, $fc7f                                   ; $604d: $c4 $7f $fc
	rst SubAFromDE                                          ; $6050: $df
	push af                                          ; $6051: $f5
	sbc $cb                                          ; $6052: $de $cb
	sbc d                                            ; $6054: $9a
	rst AddAOntoHL                                          ; $6055: $ef
	set 5, [hl]                                      ; $6056: $cb $ee
	adc $6f                                          ; $6058: $ce $6f
	sbc $bd                                          ; $605a: $de $bd
	adc d                                            ; $605c: $8a
	sbc c                                            ; $605d: $99
	cp l                                             ; $605e: $bd
	sbc c                                            ; $605f: $99
	cp c                                             ; $6060: $b9
	sbc c                                            ; $6061: $99

jr_054_6062:
	ld a, a                                          ; $6062: $7f
	ld e, l                                          ; $6063: $5d
	ld a, a                                          ; $6064: $7f
	ld e, a                                          ; $6065: $5f
	ld a, a                                          ; $6066: $7f
	ld e, e                                          ; $6067: $5b
	ld e, a                                          ; $6068: $5f
	ld a, a                                          ; $6069: $7f
	adc [hl]                                         ; $606a: $8e
	xor [hl]                                         ; $606b: $ae
	adc h                                            ; $606c: $8c
	xor h                                            ; $606d: $ac
	adc h                                            ; $606e: $8c
	xor h                                            ; $606f: $ac
	xor b                                            ; $6070: $a8
	adc b                                            ; $6071: $88
	reti                                             ; $6072: $d9


	rst $38                                          ; $6073: $ff
	ld sp, hl                                        ; $6074: $f9
	ld l, [hl]                                       ; $6075: $6e
	ld b, b                                          ; $6076: $40
	rst SubAFromDE                                          ; $6077: $df
	rst $38                                          ; $6078: $ff
	ld [hl], l                                       ; $6079: $75
	ld a, h                                          ; $607a: $7c
	db $fc                                           ; $607b: $fc
	sbc b                                            ; $607c: $98
	ccf                                              ; $607d: $3f
	sbc a                                            ; $607e: $9f
	ret nz                                           ; $607f: $c0

	rst JumpTable                                          ; $6080: $c7
	ldh [$f3], a                                     ; $6081: $e0 $f3
	ldh a, [$7a]                                     ; $6083: $f0 $7a
	or $79                                           ; $6085: $f6 $79
	set 3, a                                         ; $6087: $cb $df
	db $10                                           ; $6089: $10
	ld a, a                                          ; $608a: $7f
	ld a, [hl-]                                      ; $608b: $3a
	sbc c                                            ; $608c: $99
	add b                                            ; $608d: $80
	ld a, a                                          ; $608e: $7f
	add b                                            ; $608f: $80
	ccf                                              ; $6090: $3f
	ret nz                                           ; $6091: $c0

	rrca                                             ; $6092: $0f
	ld sp, hl                                        ; $6093: $f9
	sub a                                            ; $6094: $97
	add e                                            ; $6095: $83
	ret nz                                           ; $6096: $c0

	ld bc, $00e0                                     ; $6097: $01 $e0 $00
	ldh a, [rP1]                                     ; $609a: $f0 $00
	ld hl, sp-$08                                    ; $609c: $f8 $f8
	ld a, a                                          ; $609e: $7f
	or [hl]                                          ; $609f: $b6
	ld a, a                                          ; $60a0: $7f
	ldh [c], a                                       ; $60a1: $e2
	sbc h                                            ; $60a2: $9c
	rra                                              ; $60a3: $1f
	ld h, b                                          ; $60a4: $60
	ccf                                              ; $60a5: $3f
	ld a, [$1f97]                                    ; $60a6: $fa $97 $1f
	ld sp, hl                                        ; $60a9: $f9
	ld bc, $c03c                                     ; $60aa: $01 $3c $c0
	ld e, $e0                                        ; $60ad: $1e $e0
	rra                                              ; $60af: $1f
	ld [hl], c                                       ; $60b0: $71
	sbc b                                            ; $60b1: $98
	cp $99                                           ; $60b2: $fe $99
	ret nz                                           ; $60b4: $c0

	inc b                                            ; $60b5: $04
	xor b                                            ; $60b6: $a8
	sub b                                            ; $60b7: $90
	and b                                            ; $60b8: $a0
	ld b, b                                          ; $60b9: $40
	sbc $c0                                          ; $60ba: $de $c0
	sbc [hl]                                         ; $60bc: $9e
	rst $38                                          ; $60bd: $ff
	ld [hl], h                                       ; $60be: $74
	ld a, a                                          ; $60bf: $7f
	call c, $df7f                                    ; $60c0: $dc $7f $df
	ld a, $de                                        ; $60c3: $3e $de
	inc a                                            ; $60c5: $3c
	sbc d                                            ; $60c6: $9a
	ld a, h                                          ; $60c7: $7c
	add b                                            ; $60c8: $80
	add b                                            ; $60c9: $80
	pop bc                                           ; $60ca: $c1
	pop bc                                           ; $60cb: $c1
	sbc $c3                                          ; $60cc: $de $c3
	sub l                                            ; $60ce: $95
	add e                                            ; $60cf: $83
	add b                                            ; $60d0: $80
	nop                                              ; $60d1: $00
	ld bc, $0703                                     ; $60d2: $01 $03 $07
	rrca                                             ; $60d5: $0f
	rra                                              ; $60d6: $1f
	ccf                                              ; $60d7: $3f
	ld a, a                                          ; $60d8: $7f
	db $dd                                           ; $60d9: $dd
	rst $38                                          ; $60da: $ff
	ld a, [hl]                                       ; $60db: $7e
	db $db                                           ; $60dc: $db
	sub d                                            ; $60dd: $92
	db $e3                                           ; $60de: $e3
	jp nc, $3295                                     ; $60df: $d2 $95 $32

	ld [de], a                                       ; $60e2: $12
	ld b, c                                          ; $60e3: $41
	ld b, c                                          ; $60e4: $41
	ld bc, $ef21                                     ; $60e5: $01 $21 $ef
	db $eb                                           ; $60e8: $eb
	ret                                              ; $60e9: $c9


	ret                                              ; $60ea: $c9


	db $dd                                           ; $60eb: $dd
	sbc d                                            ; $60ec: $9a
	sbc d                                            ; $60ed: $9a
	and e                                            ; $60ee: $a3
	db $d3                                           ; $60ef: $d3
	sub d                                            ; $60f0: $92
	sbc d                                            ; $60f1: $9a
	db $db                                           ; $60f2: $db
	sbc $cb                                          ; $60f3: $de $cb
	sbc d                                            ; $60f5: $9a
	ld a, $ee                                        ; $60f6: $3e $ee
	rst AddAOntoHL                                          ; $60f8: $ef
	rst SubAFromBC                                          ; $60f9: $e7
	and $de                                          ; $60fa: $e6 $de
	or $9e                                           ; $60fc: $f6 $9e
	rst GetHLinHL                                          ; $60fe: $cf
	ld a, d                                          ; $60ff: $7a
	call nz, $ffdf                                   ; $6100: $c4 $df $ff
	sbc h                                            ; $6103: $9c
	rra                                              ; $6104: $1f
	ld bc, $7a30                                     ; $6105: $01 $30 $7a
	call nz, Call_054_7dff                           ; $6108: $c4 $ff $7d
	add c                                            ; $610b: $81
	sbc e                                            ; $610c: $9b
	ret nz                                           ; $610d: $c0

	ldh [$e0], a                                     ; $610e: $e0 $e0
	ldh a, [$78]                                     ; $6110: $f0 $78
	ret z                                            ; $6112: $c8

	sbc [hl]                                         ; $6113: $9e
	db $e3                                           ; $6114: $e3
	ld a, c                                          ; $6115: $79
	sbc e                                            ; $6116: $9b
	sbc [hl]                                         ; $6117: $9e
	rrca                                             ; $6118: $0f
	ld a, e                                          ; $6119: $7b
	dec a                                            ; $611a: $3d
	sbc e                                            ; $611b: $9b
	inc e                                            ; $611c: $1c
	ld b, $06                                        ; $611d: $06 $06
	inc bc                                           ; $611f: $03
	ld a, e                                          ; $6120: $7b
	add l                                            ; $6121: $85
	ld a, [hl]                                       ; $6122: $7e
	and h                                            ; $6123: $a4
	rst SubAFromDE                                          ; $6124: $df
	ld sp, hl                                        ; $6125: $f9
	sbc [hl]                                         ; $6126: $9e
	db $fc                                           ; $6127: $fc
	ld a, e                                          ; $6128: $7b
	dec h                                            ; $6129: $25
	ld a, [hl]                                       ; $612a: $7e
	sub h                                            ; $612b: $94
	ld a, [hl]                                       ; $612c: $7e
	ld e, l                                          ; $612d: $5d
	rst SubAFromDE                                          ; $612e: $df
	inc bc                                           ; $612f: $03
	sbc e                                            ; $6130: $9b
	add e                                            ; $6131: $83
	and e                                            ; $6132: $a3
	ld h, e                                          ; $6133: $63
	ld d, e                                          ; $6134: $53
	ld [hl], c                                       ; $6135: $71
	add e                                            ; $6136: $83
	sbc h                                            ; $6137: $9c
	ld a, [hl]                                       ; $6138: $7e
	cp [hl]                                          ; $6139: $be
	cp [hl]                                          ; $613a: $be
	ld b, [hl]                                       ; $613b: $46
	ret nz                                           ; $613c: $c0

	sub [hl]                                         ; $613d: $96
	ld c, $0c                                        ; $613e: $0e $0c
	rrca                                             ; $6140: $0f
	rrca                                             ; $6141: $0f
	inc c                                            ; $6142: $0c
	ld c, $0d                                        ; $6143: $0e $0d
	rrca                                             ; $6145: $0f
	push af                                          ; $6146: $f5

jr_054_6147:
	db $dd                                           ; $6147: $dd
	rst FarCall                                          ; $6148: $f7
	sbc e                                            ; $6149: $9b
	push af                                          ; $614a: $f5
	or $f4                                           ; $614b: $f6 $f4
	rst AddAOntoHL                                          ; $614d: $ef
	ld a, e                                          ; $614e: $7b
	and $9a                                          ; $614f: $e6 $9a
	ld [hl], a                                       ; $6151: $77
	rst FarCall                                          ; $6152: $f7
	ld [hl], a                                       ; $6153: $77
	rst SubAFromBC                                          ; $6154: $e7
	sbc c                                            ; $6155: $99
	sbc $ff                                          ; $6156: $de $ff
	sbc e                                            ; $6158: $9b
	rst GetHLinHL                                          ; $6159: $cf
	ld c, a                                          ; $615a: $4f
	rst GetHLinHL                                          ; $615b: $cf
	ld e, a                                          ; $615c: $5f
	ld [hl], l                                       ; $615d: $75
	and a                                            ; $615e: $a7
	sbc d                                            ; $615f: $9a
	ldh [$e2], a                                     ; $6160: $e0 $e2
	jp z, $08ca                                      ; $6162: $ca $ca $08

jr_054_6165:
	db $dd                                           ; $6165: $dd
	rst $38                                          ; $6166: $ff
	sbc $fd                                          ; $6167: $de $fd
	ld b, [hl]                                       ; $6169: $46
	ret nz                                           ; $616a: $c0

	ld b, a                                          ; $616b: $47
	ldh a, [$9c]                                     ; $616c: $f0 $9c
	ld sp, hl                                        ; $616e: $f9
	ld hl, sp-$08                                    ; $616f: $f8 $f8
	sbc $fc                                          ; $6171: $de $fc
	rst SubAFromDE                                          ; $6173: $df
	cp $de                                           ; $6174: $fe $de
	ld [$04de], sp                                   ; $6176: $08 $de $04
	rst SubAFromDE                                          ; $6179: $df
	ld [bc], a                                       ; $617a: $02

Jump_054_617b:
	sbc b                                            ; $617b: $98
	ldh a, [rTAC]                                    ; $617c: $f0 $07
	ld hl, sp+$03                                    ; $617e: $f8 $03
	db $fc                                           ; $6180: $fc
	rlca                                             ; $6181: $07
	ld hl, sp+$6a                                    ; $6182: $f8 $6a
	pop af                                           ; $6184: $f1
	ld a, a                                          ; $6185: $7f
	inc de                                           ; $6186: $13
	add b                                            ; $6187: $80
	ld bc, $0efb                                     ; $6188: $01 $fb $0e
	ld hl, sp+$71                                    ; $618b: $f8 $71
	rst SubAFromBC                                          ; $618d: $e7
	rst GetHLinHL                                          ; $618e: $cf
	ld e, $00                                        ; $618f: $1e $00
	ld bc, $1806                                     ; $6191: $01 $06 $18
	jr nz, jr_054_61d9                               ; $6194: $20 $43

	adc a                                            ; $6196: $8f
	sbc [hl]                                         ; $6197: $9e
	ldh [hLCDCIntHandlerIdx], a                                     ; $6198: $e0 $81
	rra                                              ; $619a: $1f

jr_054_619b:
	ld [hl], b                                       ; $619b: $70
	pop hl                                           ; $619c: $e1
	add d                                            ; $619d: $82
	inc d                                            ; $619e: $14
	nop                                              ; $619f: $00
	ld h, b                                          ; $61a0: $60
	add [hl]                                         ; $61a1: $86
	inc c                                            ; $61a2: $0c
	jr nc, jr_054_6165                               ; $61a3: $30 $c0

	add a                                            ; $61a5: $87
	ld [$309b], sp                                   ; $61a6: $08 $9b $30
	cp a                                             ; $61a9: $bf
	dec e                                            ; $61aa: $1d
	jp $8576                                         ; $61ab: $c3 $76 $85


	sbc h                                            ; $61ae: $9c
	nop                                              ; $61af: $00
	ld [hl], b                                       ; $61b0: $70
	ld c, $6e                                        ; $61b1: $0e $6e
	ld l, a                                          ; $61b3: $6f
	rst SubAFromDE                                          ; $61b4: $df
	jr nz, jr_054_6147                               ; $61b5: $20 $90

	ld h, c                                          ; $61b7: $61
	db $e3                                           ; $61b8: $e3
	scf                                              ; $61b9: $37
	rrca                                             ; $61ba: $0f
	inc bc                                           ; $61bb: $03
	ld bc, $3f7f                                     ; $61bc: $01 $7f $3f
	cp [hl]                                          ; $61bf: $be
	db $fc                                           ; $61c0: $fc
	jr c, jr_054_61cf                                ; $61c1: $38 $0c

	ld [bc], a                                       ; $61c3: $02
	ld bc, $777c                                     ; $61c4: $01 $7c $77
	and e                                            ; $61c7: $a3
	sbc c                                            ; $61c8: $99
	db $fd                                           ; $61c9: $fd
	cp $7a                                           ; $61ca: $fe $7a
	add e                                            ; $61cc: $83
	inc bc                                           ; $61cd: $03
	inc bc                                           ; $61ce: $03

jr_054_61cf:
	ld [hl], l                                       ; $61cf: $75
	ld [hl], b                                       ; $61d0: $70
	sub h                                            ; $61d1: $94
	add a                                            ; $61d2: $87
	dec sp                                           ; $61d3: $3b
	ld a, e                                          ; $61d4: $7b
	ld [hl], e                                       ; $61d5: $73
	or e                                             ; $61d6: $b3
	or c                                             ; $61d7: $b1
	sub c                                            ; $61d8: $91

jr_054_61d9:
	sub b                                            ; $61d9: $90
	add b                                            ; $61da: $80
	rst SubAFromBC                                          ; $61db: $e7
	rst JumpTable                                          ; $61dc: $c7
	sbc $cf                                          ; $61dd: $de $cf
	rst SubAFromDE                                          ; $61df: $df
	rst AddAOntoHL                                          ; $61e0: $ef
	sbc c                                            ; $61e1: $99
	rst $38                                          ; $61e2: $ff
	jr nz, jr_054_6239                               ; $61e3: $20 $54

	ld d, h                                          ; $61e5: $54
	jr nc, jr_054_619b                               ; $61e6: $30 $b3

	sbc $b5                                          ; $61e8: $de $b5
	sbc h                                            ; $61ea: $9c
	sbc e                                            ; $61eb: $9b
	cp e                                             ; $61ec: $bb
	cp e                                             ; $61ed: $bb
	call c, $dfff                                    ; $61ee: $dc $ff $df
	res 0, h                                         ; $61f1: $cb $84
	jp c, Jump_054_51d2                              ; $61f3: $da $d2 $51

	ld h, c                                          ; $61f6: $61
	jr nz, jr_054_6239                               ; $61f7: $20 $40

	or $f6                                           ; $61f9: $f6 $f6
	rst SubAFromBC                                          ; $61fb: $e7
	rst AddAOntoHL                                          ; $61fc: $ef
	rst AddAOntoHL                                          ; $61fd: $ef
	rst SubAFromDE                                          ; $61fe: $df
	rst SubAFromDE                                          ; $61ff: $df
	cp a                                             ; $6200: $bf
	add c                                            ; $6201: $81
	add c                                            ; $6202: $81
	jp $3363                                         ; $6203: $c3 $63 $33


	rra                                              ; $6206: $1f
	sbc a                                            ; $6207: $9f
	sbc a                                            ; $6208: $9f
	ld a, [hl]                                       ; $6209: $7e
	ld a, [hl]                                       ; $620a: $7e
	inc a                                            ; $620b: $3c
	sbc h                                            ; $620c: $9c
	call z, $e0de                                    ; $620d: $cc $de $e0
	ld a, c                                          ; $6210: $79
	add d                                            ; $6211: $82
	ld [hl], e                                       ; $6212: $73
	ld l, b                                          ; $6213: $68
	ld a, c                                          ; $6214: $79
	add d                                            ; $6215: $82
	call c, $9cff                                    ; $6216: $dc $ff $9c
	ld a, h                                          ; $6219: $7c
	rra                                              ; $621a: $1f
	rlca                                             ; $621b: $07
	ld a, e                                          ; $621c: $7b
	ld d, h                                          ; $621d: $54
	sbc d                                            ; $621e: $9a
	ccf                                              ; $621f: $3f
	adc $83                                          ; $6220: $ce $83
	ldh [$f8], a                                     ; $6222: $e0 $f8
	ld [hl], l                                       ; $6224: $75
	push hl                                          ; $6225: $e5
	adc [hl]                                         ; $6226: $8e
	pop af                                           ; $6227: $f1
	inc sp                                           ; $6228: $33
	dec hl                                           ; $6229: $2b
	sbc e                                            ; $622a: $9b
	rst SubAFromHL                                          ; $622b: $d7
	ld l, a                                          ; $622c: $6f
	dec de                                           ; $622d: $1b
	pop bc                                           ; $622e: $c1
	cp l                                             ; $622f: $bd
	sbc $de                                          ; $6230: $de $de
	ld l, [hl]                                       ; $6232: $6e
	ld l, $96                                        ; $6233: $2e $96
	and $ff                                          ; $6235: $e6 $ff
	ld a, a                                          ; $6237: $7f
	ld b, d                                          ; $6238: $42

jr_054_6239:
	ret nz                                           ; $6239: $c0

	db $db                                           ; $623a: $db
	rrca                                             ; $623b: $0f
	sbc [hl]                                         ; $623c: $9e
	ld c, $75                                        ; $623d: $0e $75
	add c                                            ; $623f: $81
	ld [hl], l                                       ; $6240: $75
	ld a, [hl]                                       ; $6241: $7e
	rst SubAFromDE                                          ; $6242: $df
	rst FarCall                                          ; $6243: $f7
	rst SubAFromDE                                          ; $6244: $df
	or a                                             ; $6245: $b7
	rst SubAFromDE                                          ; $6246: $df
	or [hl]                                          ; $6247: $b6
	rst SubAFromDE                                          ; $6248: $df
	db $f4                                           ; $6249: $f4
	reti                                             ; $624a: $d9


	ld c, a                                          ; $624b: $4f
	rst SubAFromDE                                          ; $624c: $df
	sbc d                                            ; $624d: $9a
	rst SubAFromDE                                          ; $624e: $df
	ld a, [hl-]                                      ; $624f: $3a
	rst SubAFromDE                                          ; $6250: $df
	ld a, d                                          ; $6251: $7a
	sbc l                                            ; $6252: $9d
	ld a, [$daf8]                                    ; $6253: $fa $f8 $da
	db $fd                                           ; $6256: $fd
	sbc [hl]                                         ; $6257: $9e
	rst $38                                          ; $6258: $ff
	ld b, a                                          ; $6259: $47
	nop                                              ; $625a: $00
	sbc $77                                          ; $625b: $de $77
	db $dd                                           ; $625d: $dd
	ld [hl+], a                                      ; $625e: $22
	sbc h                                            ; $625f: $9c
	ld [hl], a                                       ; $6260: $77
	ld h, [hl]                                       ; $6261: $66
	ld h, [hl]                                       ; $6262: $66
	ld c, a                                          ; $6263: $4f
	or $df                                           ; $6264: $f6 $df
	inc sp                                           ; $6266: $33
	sbc l                                            ; $6267: $9d
	ld [hl+], a                                      ; $6268: $22
	ld [hl], $73                                     ; $6269: $36 $73
	or $9b                                           ; $626b: $f6 $9b
	ld [hl], a                                       ; $626d: $77
	ld [hl], e                                       ; $626e: $73
	inc sp                                           ; $626f: $33
	ld [hl-], a                                      ; $6270: $32
	ld l, e                                          ; $6271: $6b
	or $9c                                           ; $6272: $f6 $9c
	ld [hl], l                                       ; $6274: $75
	ld d, e                                          ; $6275: $53
	ld [hl+], a                                      ; $6276: $22
	sbc $66                                          ; $6277: $de $66
	db $dd                                           ; $6279: $dd
	ld [hl], a                                       ; $627a: $77
	sbc l                                            ; $627b: $9d
	ld d, l                                          ; $627c: $55
	ld [hl-], a                                      ; $627d: $32
	ld h, e                                          ; $627e: $63
	or $9c                                           ; $627f: $f6 $9c
	inc sp                                           ; $6281: $33
	ld b, h                                          ; $6282: $44
	ld b, [hl]                                       ; $6283: $46
	ld l, e                                          ; $6284: $6b
	ldh [c], a                                       ; $6285: $e2
	sbc h                                            ; $6286: $9c
	inc [hl]                                         ; $6287: $34
	ld b, h                                          ; $6288: $44
	ld b, h                                          ; $6289: $44
	db $dd                                           ; $628a: $dd
	ld h, [hl]                                       ; $628b: $66
	rst SubAFromDE                                          ; $628c: $df
	ld [hl], a                                       ; $628d: $77
	sbc [hl]                                         ; $628e: $9e
	ld b, d                                          ; $628f: $42

jr_054_6290:
	ld l, a                                          ; $6290: $6f
	or $df                                           ; $6291: $f6 $df
	ld [hl], a                                       ; $6293: $77
	sbc h                                            ; $6294: $9c
	ld [hl], h                                       ; $6295: $74
	ld b, h                                          ; $6296: $44
	inc h                                            ; $6297: $24
	ld [hl], e                                       ; $6298: $73
	or $9c                                           ; $6299: $f6 $9c
	ld h, a                                          ; $629b: $67
	ld d, l                                          ; $629c: $55
	ld d, h                                          ; $629d: $54
	ld l, a                                          ; $629e: $6f
	or $39                                           ; $629f: $f6 $39
	adc c                                            ; $62a1: $89
	sub e                                            ; $62a2: $93
	nop                                              ; $62a3: $00
	inc bc                                           ; $62a4: $03
	inc c                                            ; $62a5: $0c
	jr nc, jr_054_6290                               ; $62a6: $30 $e8

	jr nc, jr_054_6314                               ; $62a8: $30 $6a

	db $fd                                           ; $62aa: $fd
	rst $38                                          ; $62ab: $ff
	db $fc                                           ; $62ac: $fc
	ldh a, [$c0]                                     ; $62ad: $f0 $c0
	db $fc                                           ; $62af: $fc
	sub e                                            ; $62b0: $93
	add b                                            ; $62b1: $80
	ld h, b                                          ; $62b2: $60
	jr c, jr_054_62f3                                ; $62b3: $38 $3e

	rlca                                             ; $62b5: $07
	ld bc, $ff04                                     ; $62b6: $01 $04 $ff
	ld a, a                                          ; $62b9: $7f
	rra                                              ; $62ba: $1f
	rlca                                             ; $62bb: $07
	ld bc, $9bfa                                     ; $62bc: $01 $fa $9b
	ret nz                                           ; $62bf: $c0

	ldh [$e0], a                                     ; $62c0: $e0 $e0
	ret nz                                           ; $62c2: $c0

	db $dd                                           ; $62c3: $dd
	rst $38                                          ; $62c4: $ff
	sbc e                                            ; $62c5: $9b
	ccf                                              ; $62c6: $3f
	rra                                              ; $62c7: $1f
	rra                                              ; $62c8: $1f
	ccf                                              ; $62c9: $3f
	ld sp, hl                                        ; $62ca: $f9
	reti                                             ; $62cb: $d9


	rst $38                                          ; $62cc: $ff
	ld b, a                                          ; $62cd: $47
	ldh a, [$df]                                     ; $62ce: $f0 $df
	ld hl, $309e                                     ; $62d0: $21 $9e $30
	sbc $10                                          ; $62d3: $de $10
	rst SubAFromDE                                          ; $62d5: $df
	ld [$e2df], sp                                   ; $62d6: $08 $df $e2
	sbc c                                            ; $62d9: $99
	pop hl                                           ; $62da: $e1
	pop af                                           ; $62db: $f1
	pop af                                           ; $62dc: $f1
	ldh a, [$f8]                                     ; $62dd: $f0 $f8
	ld hl, sp-$24                                    ; $62df: $f8 $dc
	rst $38                                          ; $62e1: $ff
	sbc l                                            ; $62e2: $9d
	ld a, a                                          ; $62e3: $7f
	ccf                                              ; $62e4: $3f
	ld l, a                                          ; $62e5: $6f

Call_054_62e6:
	ret z                                            ; $62e6: $c8

	sbc l                                            ; $62e7: $9d
	add b                                            ; $62e8: $80
	ret nz                                           ; $62e9: $c0

	ld [hl], e                                       ; $62ea: $73
	cp b                                             ; $62eb: $b8
	ld d, a                                          ; $62ec: $57
	ret z                                            ; $62ed: $c8

	sbc l                                            ; $62ee: $9d
	db $e3                                           ; $62ef: $e3
	sbc a                                            ; $62f0: $9f
	sbc $fe                                          ; $62f1: $de $fe

jr_054_62f3:
	rst SubAFromDE                                          ; $62f3: $df
	db $fc                                           ; $62f4: $fc
	sbc c                                            ; $62f5: $99
	db $fd                                           ; $62f6: $fd
	rra                                              ; $62f7: $1f
	ld a, l                                          ; $62f8: $7d
	db $e3                                           ; $62f9: $e3
	inc bc                                           ; $62fa: $03
	inc bc                                           ; $62fb: $03
	sbc $07                                          ; $62fc: $de $07
	sub c                                            ; $62fe: $91
	cp c                                             ; $62ff: $b9
	ld [hl], e                                       ; $6300: $73
	ld h, a                                          ; $6301: $67
	add $cc                                          ; $6302: $c6 $cc
	ld c, b                                          ; $6304: $48
	add b                                            ; $6305: $80
	add b                                            ; $6306: $80
	add $8c                                          ; $6307: $c6 $8c
	sbc b                                            ; $6309: $98
	add hl, sp                                       ; $630a: $39
	ld [hl], e                                       ; $630b: $73
	rst FarCall                                          ; $630c: $f7
	sbc $ff                                          ; $630d: $de $ff
	add b                                            ; $630f: $80
	cp a                                             ; $6310: $bf
	dec a                                            ; $6311: $3d
	ld l, l                                          ; $6312: $6d
	ld l, e                                          ; $6313: $6b

jr_054_6314:
	jp c, $1292                                      ; $6314: $da $92 $12

	nop                                              ; $6317: $00
	ld b, b                                          ; $6318: $40
	jp nz, $9492                                     ; $6319: $c2 $92 $94

	dec h                                            ; $631c: $25
	ld l, l                                          ; $631d: $6d
	db $ed                                           ; $631e: $ed
	rst $38                                          ; $631f: $ff
	ld a, [$fdfb]                                    ; $6320: $fa $fb $fd
	cp l                                             ; $6323: $bd
	sub $56                                          ; $6324: $d6 $56
	ld d, e                                          ; $6326: $53
	nop                                              ; $6327: $00
	dec b                                            ; $6328: $05
	inc b                                            ; $6329: $04
	ld [bc], a                                       ; $632a: $02
	ld b, d                                          ; $632b: $42
	add hl, hl                                       ; $632c: $29
	xor l                                            ; $632d: $ad
	xor [hl]                                         ; $632e: $ae
	add b                                            ; $632f: $80
	reti                                             ; $6330: $d9


	xor $67                                          ; $6331: $ee $67
	ld sp, $ee98                                     ; $6333: $31 $98 $ee
	ld [hl], e                                       ; $6336: $73
	jr c, jr_054_635f                                ; $6337: $38 $26

	ld de, $ce98                                     ; $6339: $11 $98 $ce
	ld h, a                                          ; $633c: $67
	inc sp                                           ; $633d: $33
	sbc l                                            ; $633e: $9d
	rst GetHLinHL                                          ; $633f: $cf
	xor $77                                          ; $6340: $ee $77
	sbc e                                            ; $6342: $9b
	call Call_054_62e6                               ; $6343: $cd $e6 $62
	inc sp                                           ; $6346: $33
	adc c                                            ; $6347: $89
	ld de, $6488                                     ; $6348: $11 $88 $64
	ld [hl-], a                                      ; $634b: $32
	add hl, de                                       ; $634c: $19
	sbc l                                            ; $634d: $9d
	call z, $fe8d                                    ; $634e: $cc $8d $fe
	add b                                            ; $6351: $80
	ld h, b                                          ; $6352: $60
	ret nz                                           ; $6353: $c0

	or b                                             ; $6354: $b0
	ldh [$d0], a                                     ; $6355: $e0 $d0
	ld a, b                                          ; $6357: $78
	ld [hl], b                                       ; $6358: $70
	ret nz                                           ; $6359: $c0

	ret nz                                           ; $635a: $c0

	ld h, b                                          ; $635b: $60
	ld h, b                                          ; $635c: $60
	jr nc, jr_054_638f                               ; $635d: $30 $30

jr_054_635f:
	sub b                                            ; $635f: $90
	sbc b                                            ; $6360: $98
	ld bc, $9b7b                                     ; $6361: $01 $7b $9b
	rst SubAFromDE                                          ; $6364: $df
	rrca                                             ; $6365: $0f
	rst SubAFromDE                                          ; $6366: $df
	rra                                              ; $6367: $1f
	ld b, a                                          ; $6368: $47
	ld c, b                                          ; $6369: $48
	reti                                             ; $636a: $d9


	ld bc, $8fd9                                     ; $636b: $01 $d9 $8f
	reti                                             ; $636e: $d9


	ld hl, sp+$47                                    ; $636f: $f8 $47
	ld d, b                                          ; $6371: $50
	rst SubAFromDE                                          ; $6372: $df
	add b                                            ; $6373: $80
	rst SubAFromDE                                          ; $6374: $df
	ret nz                                           ; $6375: $c0

	sbc $e0                                          ; $6376: $de $e0
	sbc [hl]                                         ; $6378: $9e
	ldh a, [$f9]                                     ; $6379: $f0 $f9
	sbc h                                            ; $637b: $9c
	cp $ff                                           ; $637c: $fe $ff
	cp $77                                           ; $637e: $fe $77
	rra                                              ; $6380: $1f
	sbc [hl]                                         ; $6381: $9e
	rrca                                             ; $6382: $0f
	ld l, e                                          ; $6383: $6b
	ldh [c], a                                       ; $6384: $e2
	sub [hl]                                         ; $6385: $96
	ldh a, [$bf]                                     ; $6386: $f0 $bf
	ld e, a                                          ; $6388: $5f
	cp a                                             ; $6389: $bf
	call z, $fff9                                    ; $638a: $cc $f9 $ff
	rst $38                                          ; $638d: $ff
	db $fc                                           ; $638e: $fc

jr_054_638f:
	ld a, [$039e]                                    ; $638f: $fa $9e $03
	ld a, e                                          ; $6392: $7b
	ret nc                                           ; $6393: $d0

	sub d                                            ; $6394: $92
	ldh [$b0], a                                     ; $6395: $e0 $b0
	ld hl, sp-$08                                    ; $6397: $f8 $f8
	or b                                             ; $6399: $b0
	ld a, a                                          ; $639a: $7f
	ld a, a                                          ; $639b: $7f
	ccf                                              ; $639c: $3f
	rra                                              ; $639d: $1f
	rrca                                             ; $639e: $0f
	rlca                                             ; $639f: $07
	rlca                                             ; $63a0: $07
	ld c, a                                          ; $63a1: $4f
	ld [hl], e                                       ; $63a2: $73
	db $eb                                           ; $63a3: $eb
	sbc h                                            ; $63a4: $9c
	rlca                                             ; $63a5: $07
	ld b, $0f                                        ; $63a6: $06 $0f
	db $dd                                           ; $63a8: $dd
	rst $38                                          ; $63a9: $ff
	adc a                                            ; $63aa: $8f
	db $fc                                           ; $63ab: $fc
	ld hl, sp-$08                                    ; $63ac: $f8 $f8
	ldh a, [rP1]                                     ; $63ae: $f0 $00
	rrca                                             ; $63b0: $0f
	ld e, $1a                                        ; $63b1: $1e $1a
	db $f4                                           ; $63b3: $f4
	ld a, d                                          ; $63b4: $7a
	or h                                             ; $63b5: $b4
	ld e, b                                          ; $63b6: $58
	rst $38                                          ; $63b7: $ff
	ldh a, [$e0]                                     ; $63b8: $f0 $e0
	ldh [$fd], a                                     ; $63ba: $e0 $fd
	rst SubAFromDE                                          ; $63bc: $df
	inc b                                            ; $63bd: $04
	sub l                                            ; $63be: $95
	sub d                                            ; $63bf: $92
	ld l, c                                          ; $63c0: $69
	dec b                                            ; $63c1: $05
	inc b                                            ; $63c2: $04
	inc b                                            ; $63c3: $04
	ld [bc], a                                       ; $63c4: $02
	db $fc                                           ; $63c5: $fc
	db $fc                                           ; $63c6: $fc
	ld l, [hl]                                       ; $63c7: $6e
	rlca                                             ; $63c8: $07
	sbc $03                                          ; $63c9: $de $03
	adc [hl]                                         ; $63cb: $8e
	ld bc, $0f1f                                     ; $63cc: $01 $1f $0f
	rrca                                             ; $63cf: $0f
	rlca                                             ; $63d0: $07
	inc bc                                           ; $63d1: $03
	add c                                            ; $63d2: $81
	add b                                            ; $63d3: $80
	ld b, b                                          ; $63d4: $40
	ldh [$f0], a                                     ; $63d5: $e0 $f0
	ldh a, [$78]                                     ; $63d7: $f0 $78
	ld a, h                                          ; $63d9: $7c
	cp [hl]                                          ; $63da: $be
	adc a                                            ; $63db: $8f
	rst AddAOntoHL                                          ; $63dc: $ef
	jp c, $9eff                                      ; $63dd: $da $ff $9e

	ld a, a                                          ; $63e0: $7f
	ld h, a                                          ; $63e1: $67
	ld [hl], c                                       ; $63e2: $71
	reti                                             ; $63e3: $d9


	rst $38                                          ; $63e4: $ff
	ld a, a                                          ; $63e5: $7f
	xor l                                            ; $63e6: $ad
	sbc h                                            ; $63e7: $9c
	ld b, $04                                        ; $63e8: $06 $04
	inc b                                            ; $63ea: $04
	cp $de                                           ; $63eb: $fe $de
	adc b                                            ; $63ed: $88
	rst SubAFromDE                                          ; $63ee: $df
	sbc b                                            ; $63ef: $98
	sbc h                                            ; $63f0: $9c
	sub h                                            ; $63f1: $94
	ld d, h                                          ; $63f2: $54
	jp nc, $ffdc                                     ; $63f3: $d2 $dc $ff

	rst SubAFromDE                                          ; $63f6: $df
	rst FarCall                                          ; $63f7: $f7
	sub [hl]                                         ; $63f8: $96
	ld [hl], e                                       ; $63f9: $73
	nop                                              ; $63fa: $00
	ld [$1d08], sp                                   ; $63fb: $08 $08 $1d
	sbc l                                            ; $63fe: $9d
	sbc l                                            ; $63ff: $9d

jr_054_6400:
	ld c, [hl]                                       ; $6400: $4e
	ld l, [hl]                                       ; $6401: $6e
	ld [hl], e                                       ; $6402: $73
	ldh a, [c]                                       ; $6403: $f2
	sub h                                            ; $6404: $94
	rst FarCall                                          ; $6405: $f7
	ei                                               ; $6406: $fb
	ei                                               ; $6407: $fb
	add e                                            ; $6408: $83
	sub e                                            ; $6409: $93
	sub c                                            ; $640a: $91
	reti                                             ; $640b: $d9


	call z, $f6ee                                    ; $640c: $cc $ee $f6
	db $fd                                           ; $640f: $fd
	ld a, e                                          ; $6410: $7b
	ld c, c                                          ; $6411: $49
	sub d                                            ; $6412: $92
	ld [hl], a                                       ; $6413: $77
	ld a, e                                          ; $6414: $7b
	add hl, sp                                       ; $6415: $39
	sbc l                                            ; $6416: $9d
	adc [hl]                                         ; $6417: $8e
	inc b                                            ; $6418: $04
	add a                                            ; $6419: $87
	jp nz, $fc31                                     ; $641a: $c2 $31 $fc

	add e                                            ; $641d: $83
	cp $bd                                           ; $641e: $fe $bd
	ld a, e                                          ; $6420: $7b
	xor l                                            ; $6421: $ad
	add a                                            ; $6422: $87
	rst $38                                          ; $6423: $ff
	adc a                                            ; $6424: $8f
	rst $38                                          ; $6425: $ff
	ld b, b                                          ; $6426: $40
	ld a, [hl]                                       ; $6427: $7e
	ld c, c                                          ; $6428: $49
	and l                                            ; $6429: $a5
	ld [hl], h                                       ; $642a: $74
	ld c, d                                          ; $642b: $4a
	or [hl]                                          ; $642c: $b6
	ld e, d                                          ; $642d: $5a
	and $ff                                          ; $642e: $e6 $ff
	cp $fe                                           ; $6430: $fe $fe
	rst $38                                          ; $6432: $ff
	cp a                                             ; $6433: $bf
	rst GetHLinHL                                          ; $6434: $cf
	rst SubAFromBC                                          ; $6435: $e7
	rst $38                                          ; $6436: $ff
	inc bc                                           ; $6437: $03
	xor b                                            ; $6438: $a8
	cp h                                             ; $6439: $bc
	cp h                                             ; $643a: $bc
	sbc $dc                                          ; $643b: $de $dc
	sbc d                                            ; $643d: $9a
	call z, Call_054_586c                            ; $643e: $cc $6c $58
	ld c, b                                          ; $6441: $48
	ld c, b                                          ; $6442: $48
	sbc $28                                          ; $6443: $de $28
	sbc e                                            ; $6445: $9b
	jr c, jr_054_6400                                ; $6446: $38 $b8

	ccf                                              ; $6448: $3f
	ccf                                              ; $6449: $3f
	sbc $7f                                          ; $644a: $de $7f
	ld d, d                                          ; $644c: $52
	ld [$0077], sp                                   ; $644d: $08 $77 $00
	ld [hl], d                                       ; $6450: $72
	ret nz                                           ; $6451: $c0

	db $fc                                           ; $6452: $fc
	sbc l                                            ; $6453: $9d
	adc a                                            ; $6454: $8f
	adc e                                            ; $6455: $8b
	ld l, d                                          ; $6456: $6a
	ret nz                                           ; $6457: $c0

	jp c, Jump_054_46fc                              ; $6458: $da $fc $46

	ret nz                                           ; $645b: $c0

	rst SubAFromDE                                          ; $645c: $df
	ldh a, [$df]                                     ; $645d: $f0 $df
	ld hl, sp-$23                                    ; $645f: $f8 $dd
	db $fc                                           ; $6461: $fc
	ld sp, hl                                        ; $6462: $f9
	sbc [hl]                                         ; $6463: $9e
	inc bc                                           ; $6464: $03
	ld a, [$d767]                                    ; $6465: $fa $67 $d7
	ld [hl], d                                       ; $6468: $72
	and a                                            ; $6469: $a7

jr_054_646a:
	sbc h                                            ; $646a: $9c
	ld [bc], a                                       ; $646b: $02
	inc c                                            ; $646c: $0c
	ld e, $6e                                        ; $646d: $1e $6e
	rst SubAFromDE                                          ; $646f: $df
	ld a, [hl]                                       ; $6470: $7e
	db $eb                                           ; $6471: $eb
	db $fc                                           ; $6472: $fc
	sbc l                                            ; $6473: $9d
	ld b, d                                          ; $6474: $42
	ld bc, $586e                                     ; $6475: $01 $6e $58
	sub a                                            ; $6478: $97
	add hl, sp                                       ; $6479: $39
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	rrca                                             ; $647c: $0f
	ld c, $0c                                        ; $647d: $0e $0c
	jr c, @+$7b                                      ; $647f: $38 $79

	sbc $7f                                          ; $6481: $de $7f
	sbc $f0                                          ; $6483: $de $f0
	sbc [hl]                                         ; $6485: $9e
	ret nz                                           ; $6486: $c0

	db $dd                                           ; $6487: $dd
	add b                                            ; $6488: $80
	sub a                                            ; $6489: $97
	and b                                            ; $648a: $a0
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	xor b                                            ; $648d: $a8
	ret nc                                           ; $648e: $d0

	add sp, -$10                                     ; $648f: $e8 $f0
	ret nc                                           ; $6491: $d0

	ld sp, hl                                        ; $6492: $f9
	sub a                                            ; $6493: $97
	ld [bc], a                                       ; $6494: $02
	ld a, [bc]                                       ; $6495: $0a
	dec d                                            ; $6496: $15
	ld a, [hl+]                                      ; $6497: $2a
	ld e, h                                          ; $6498: $5c
	jr c, jr_054_64b3                                ; $6499: $38 $18

	jr nc, @+$6d                                     ; $649b: $30 $6b

	ld [hl], c                                       ; $649d: $71
	adc [hl]                                         ; $649e: $8e
	nop                                              ; $649f: $00
	ld h, b                                          ; $64a0: $60
	db $10                                           ; $64a1: $10
	jr z, jr_054_646a                                ; $64a2: $28 $c6

	ld [bc], a                                       ; $64a4: $02
	ld [bc], a                                       ; $64a5: $02
	ld bc, $a702                                     ; $64a6: $01 $02 $a7
	pop de                                           ; $64a9: $d1
	ret z                                            ; $64aa: $c8

	inc b                                            ; $64ab: $04
	ld [bc], a                                       ; $64ac: $02
	ld bc, $0100                                     ; $64ad: $01 $00 $01
	halt                                             ; $64b0: $76
	ld a, d                                          ; $64b1: $7a
	ld a, [hl]                                       ; $64b2: $7e

jr_054_64b3:
	xor d                                            ; $64b3: $aa
	halt                                             ; $64b4: $76
	dec sp                                           ; $64b5: $3b
	sbc [hl]                                         ; $64b6: $9e
	ld [hl], b                                       ; $64b7: $70
	ld a, d                                          ; $64b8: $7a
	sub e                                            ; $64b9: $93
	sub [hl]                                         ; $64ba: $96
	jp nz, $ff61                                     ; $64bb: $c2 $61 $ff

	cp $fc                                           ; $64be: $fe $fc
	ld hl, sp-$10                                    ; $64c0: $f8 $f0
	ldh [$60], a                                     ; $64c2: $e0 $60
	ld a, e                                          ; $64c4: $7b
	di                                               ; $64c5: $f3
	db $fd                                           ; $64c6: $fd
	rst SubAFromDE                                          ; $64c7: $df
	ld b, b                                          ; $64c8: $40
	sbc h                                            ; $64c9: $9c
	ld [hl-], a                                      ; $64ca: $32
	ld sp, $fc10                                     ; $64cb: $31 $10 $fc
	sbc [hl]                                         ; $64ce: $9e
	ld [hl], e                                       ; $64cf: $73
	ld l, e                                          ; $64d0: $6b
	ld hl, sp-$7c                                    ; $64d1: $f8 $84
	ld d, a                                          ; $64d3: $57
	ld a, l                                          ; $64d4: $7d
	add $5b                                          ; $64d5: $c6 $5b
	or h                                             ; $64d7: $b4
	dec a                                            ; $64d8: $3d
	ld h, $1f                                        ; $64d9: $26 $1f
	db $fd                                           ; $64db: $fd
	rst GetHLinHL                                          ; $64dc: $cf
	db $fd                                           ; $64dd: $fd
	ld h, a                                          ; $64de: $67
	ld c, [hl]                                       ; $64df: $4e
	ret                                              ; $64e0: $c9


	db $db                                           ; $64e1: $db
	ld bc, $81f5                                     ; $64e2: $01 $f5 $81
	adc h                                            ; $64e5: $8c
	sbc $ae                                          ; $64e6: $de $ae
	db $eb                                           ; $64e8: $eb
	ld hl, $82c1                                     ; $64e9: $21 $c1 $82
	adc [hl]                                         ; $64ec: $8e
	jr nc, @+$7d                                     ; $64ed: $30 $7b

	cp e                                             ; $64ef: $bb
	sub c                                            ; $64f0: $91
	ret nz                                           ; $64f1: $c0

	adc b                                            ; $64f2: $88
	ld b, e                                          ; $64f3: $43
	db $dd                                           ; $64f4: $dd
	ld h, a                                          ; $64f5: $67
	ld e, $3c                                        ; $64f6: $1e $3c
	ld [bc], a                                       ; $64f8: $02
	cp $fe                                           ; $64f9: $fe $fe
	xor $18                                          ; $64fb: $ee $18

jr_054_64fd:
	inc a                                            ; $64fd: $3c
	jr c, jr_054_64fd                                ; $64fe: $38 $fd

	sub d                                            ; $6500: $92

Call_054_6501:
	rst FarCall                                          ; $6501: $f7
	rrca                                             ; $6502: $0f
	ld c, $2e                                        ; $6503: $0e $2e
	inc l                                            ; $6505: $2c
	ld [$3319], sp                                   ; $6506: $08 $19 $33
	db $fd                                           ; $6509: $fd
	add hl, sp                                       ; $650a: $39
	add hl, sp                                       ; $650b: $39
	inc de                                           ; $650c: $13
	rla                                              ; $650d: $17
	ld a, c                                          ; $650e: $79
	sub a                                            ; $650f: $97
	rst SubAFromDE                                          ; $6510: $df
	dec l                                            ; $6511: $2d
	sbc c                                            ; $6512: $99
	ld c, c                                          ; $6513: $49
	ld e, c                                          ; $6514: $59
	sbc e                                            ; $6515: $9b
	sbc e                                            ; $6516: $9b
	inc sp                                           ; $6517: $33
	inc sp                                           ; $6518: $33

jr_054_6519:
	jp c, $9ef8                                      ; $6519: $da $f8 $9e

	ldh a, [rAUDVOL]                                 ; $651c: $f0 $24
	ret z                                            ; $651e: $c8

	ld sp, hl                                        ; $651f: $f9
	rst SubAFromDE                                          ; $6520: $df
	adc a                                            ; $6521: $8f
	sbc $87                                          ; $6522: $de $87
	sbc $c7                                          ; $6524: $de $c7
	reti                                             ; $6526: $d9


	db $fc                                           ; $6527: $fc
	ld b, a                                          ; $6528: $47
	ldh [$dd], a                                     ; $6529: $e0 $dd
	cp $57                                           ; $652b: $fe $57
	ldh a, [rIE]                                     ; $652d: $f0 $ff
	sub [hl]                                         ; $652f: $96
	add a                                            ; $6530: $87
	rst $38                                          ; $6531: $ff
	cp $fd                                           ; $6532: $fe $fd
	cp $f5                                           ; $6534: $fe $f5
	rst $38                                          ; $6536: $ff
	rst $38                                          ; $6537: $ff
	ld a, b                                          ; $6538: $78
	db $fc                                           ; $6539: $fc
	sub [hl]                                         ; $653a: $96
	ld e, $3f                                        ; $653b: $1e $3f
	ld a, [$aad5]                                    ; $653d: $fa $d5 $aa
	ld b, c                                          ; $6540: $41
	add b                                            ; $6541: $80
	inc c                                            ; $6542: $0c
	ldh [$6c], a                                     ; $6543: $e0 $6c
	ld [hl-], a                                      ; $6545: $32
	cp $9c                                           ; $6546: $fe $9c
	add c                                            ; $6548: $81
	ld [bc], a                                       ; $6549: $02
	add d                                            ; $654a: $82
	ld l, [hl]                                       ; $654b: $6e
	db $f4                                           ; $654c: $f4
	ld [hl], d                                       ; $654d: $72
	db $ed                                           ; $654e: $ed
	sbc l                                            ; $654f: $9d
	ccf                                              ; $6550: $3f
	cp a                                             ; $6551: $bf
	ld a, d                                          ; $6552: $7a
	ld b, d                                          ; $6553: $42
	ld a, a                                          ; $6554: $7f
	dec c                                            ; $6555: $0d
	sbc e                                            ; $6556: $9b
	jr nc, jr_054_6519                               ; $6557: $30 $c0

	ld b, b                                          ; $6559: $40
	add b                                            ; $655a: $80
	db $fc                                           ; $655b: $fc
	sbc b                                            ; $655c: $98
	add sp, -$0c                                     ; $655d: $e8 $f4
	ld [$faf4], a                                    ; $655f: $ea $f4 $fa
	inc a                                            ; $6562: $3c
	ld e, $f8                                        ; $6563: $1e $f8
	ld l, a                                          ; $6565: $6f
	ld a, [bc]                                       ; $6566: $0a
	rst FarCall                                          ; $6567: $f7
	ld a, [hl]                                       ; $6568: $7e
	res 3, h                                         ; $6569: $cb $9c
	inc b                                            ; $656b: $04
	jr z, jr_054_65be                                ; $656c: $28 $50

	ld a, d                                          ; $656e: $7a
	sbc e                                            ; $656f: $9b
	rst SubAFromDE                                          ; $6570: $df
	ld bc, $6178                                     ; $6571: $01 $78 $61
	sbc d                                            ; $6574: $9a
	rrca                                             ; $6575: $0f
	ld a, h                                          ; $6576: $7c
	ld a, b                                          ; $6577: $78
	jr c, jr_054_6586                                ; $6578: $38 $0c

	ld l, [hl]                                       ; $657a: $6e
	ld c, [hl]                                       ; $657b: $4e
	sbc [hl]                                         ; $657c: $9e

jr_054_657d:
	pop af                                           ; $657d: $f1
	ld a, e                                          ; $657e: $7b
	ld h, [hl]                                       ; $657f: $66
	adc e                                            ; $6580: $8b
	cp $f8                                           ; $6581: $fe $f8
	ret nz                                           ; $6583: $c0

	nop                                              ; $6584: $00
	ld a, b                                          ; $6585: $78

jr_054_6586:
	ld a, [hl]                                       ; $6586: $7e
	rst $38                                          ; $6587: $ff
	rst SubAFromDE                                          ; $6588: $df
	cpl                                              ; $6589: $2f
	rla                                              ; $658a: $17
	dec bc                                           ; $658b: $0b
	inc b                                            ; $658c: $04
	ld b, b                                          ; $658d: $40
	ld b, b                                          ; $658e: $40
	ret nz                                           ; $658f: $c0

	ld b, b                                          ; $6590: $40
	jr nz, @+$12                                     ; $6591: $20 $10

	ld [$7907], sp                                   ; $6593: $08 $07 $79
	ld l, l                                          ; $6596: $6d
	sbc [hl]                                         ; $6597: $9e
	ldh [$74], a                                     ; $6598: $e0 $74
	bit 3, d                                         ; $659a: $cb $5a
	jr nz, jr_054_657d                               ; $659c: $20 $df

	inc bc                                           ; $659e: $03
	ld a, a                                          ; $659f: $7f
	ld e, l                                          ; $65a0: $5d
	ld [hl], a                                       ; $65a1: $77
	ldh a, [$7e]                                     ; $65a2: $f0 $7e
	add c                                            ; $65a4: $81
	ld a, e                                          ; $65a5: $7b
	cp [hl]                                          ; $65a6: $be
	adc a                                            ; $65a7: $8f
	adc e                                            ; $65a8: $8b
	ld a, a                                          ; $65a9: $7f
	db $fd                                           ; $65aa: $fd
	ld a, l                                          ; $65ab: $7d
	cp a                                             ; $65ac: $bf
	sbc a                                            ; $65ad: $9f
	rst AddAOntoHL                                          ; $65ae: $ef
	ei                                               ; $65af: $fb
	inc b                                            ; $65b0: $04
	nop                                              ; $65b1: $00
	ld [bc], a                                       ; $65b2: $02
	nop                                              ; $65b3: $00
	nop                                              ; $65b4: $00
	ret nz                                           ; $65b5: $c0

	ldh a, [$fc]                                     ; $65b6: $f0 $fc
	ld a, c                                          ; $65b8: $79
	adc c                                            ; $65b9: $89
	ld a, [hl]                                       ; $65ba: $7e
	ld a, [hl]                                       ; $65bb: $7e
	sbc d                                            ; $65bc: $9a
	ei                                               ; $65bd: $fb

jr_054_65be:
	rst FarCall                                          ; $65be: $f7
	db $ec                                           ; $65bf: $ec
	nop                                              ; $65c0: $00
	add b                                            ; $65c1: $80
	ld [hl], a                                       ; $65c2: $77
	ldh [c], a                                       ; $65c3: $e2
	adc d                                            ; $65c4: $8a
	rra                                              ; $65c5: $1f
	ccf                                              ; $65c6: $3f
	ld h, $4d                                        ; $65c7: $26 $4d
	sbc l                                            ; $65c9: $9d
	dec sp                                           ; $65ca: $3b
	ld a, [$2fd6]                                    ; $65cb: $fa $d6 $2f
	push de                                          ; $65ce: $d5
	ld a, a                                          ; $65cf: $7f
	cp $fe                                           ; $65d0: $fe $fe
	db $fc                                           ; $65d2: $fc
	db $fd                                           ; $65d3: $fd
	ld sp, hl                                        ; $65d4: $f9
	pop af                                           ; $65d5: $f1
	ld h, e                                          ; $65d6: $63
	ld d, e                                          ; $65d7: $53
	ld d, e                                          ; $65d8: $53
	ld d, a                                          ; $65d9: $57
	sbc $a7                                          ; $65da: $de $a7
	sbc [hl]                                         ; $65dc: $9e
	ld c, a                                          ; $65dd: $4f
	halt                                             ; $65de: $76
	db $10                                           ; $65df: $10
	sbc $e0                                          ; $65e0: $de $e0
	sbc [hl]                                         ; $65e2: $9e
	ret nz                                           ; $65e3: $c0

	ld b, d                                          ; $65e4: $42
	ldh a, [rBGP]                                    ; $65e5: $f0 $47
	ldh a, [$dc]                                     ; $65e7: $f0 $dc
	rst JumpTable                                          ; $65e9: $c7
	sbc [hl]                                         ; $65ea: $9e
	ld b, l                                          ; $65eb: $45
	ld l, d                                          ; $65ec: $6a
	ret nz                                           ; $65ed: $c0

	sbc h                                            ; $65ee: $9c
	cp $7e                                           ; $65ef: $fe $7e
	ld a, [hl]                                       ; $65f1: $7e
	rlca                                             ; $65f2: $07
	ret nc                                           ; $65f3: $d0

	sbc c                                            ; $65f4: $99
	xor d                                            ; $65f5: $aa
	ld d, [hl]                                       ; $65f6: $56
	xor e                                            ; $65f7: $ab
	ld [hl], a                                       ; $65f8: $77
	rst $38                                          ; $65f9: $ff
	cp a                                             ; $65fa: $bf
	ld e, a                                          ; $65fb: $5f
	ldh a, [$9a]                                     ; $65fc: $f0 $9a
	ld a, [bc]                                       ; $65fe: $0a
	add [hl]                                         ; $65ff: $86
	ld e, [hl]                                       ; $6600: $5e
	xor a                                            ; $6601: $af
	ld e, a                                          ; $6602: $5f
	ld a, c                                          ; $6603: $79
	inc l                                            ; $6604: $2c
	rst FarCall                                          ; $6605: $f7
	sbc c                                            ; $6606: $99
	add b                                            ; $6607: $80
	ld d, b                                          ; $6608: $50
	xor b                                            ; $6609: $a8
	ld [hl], b                                       ; $660a: $70
	db $e4                                           ; $660b: $e4
	cp d                                             ; $660c: $ba
	ld b, [hl]                                       ; $660d: $46
	jp hl                                            ; $660e: $e9


	di                                               ; $660f: $f3
	ld h, l                                          ; $6610: $65
	sub d                                            ; $6611: $92
	ld l, [hl]                                       ; $6612: $6e
	adc $9d                                          ; $6613: $ce $9d
	ld [$7b61], sp                                   ; $6615: $08 $61 $7b
	or b                                             ; $6618: $b0
	ld a, a                                          ; $6619: $7f
	ld sp, $059e                                     ; $661a: $31 $9e $05
	ld a, [$8a9a]                                    ; $661d: $fa $9a $8a
	ld d, h                                          ; $6620: $54
	and b                                            ; $6621: $a0
	ld b, b                                          ; $6622: $40
	and b                                            ; $6623: $a0
	sbc $ff                                          ; $6624: $de $ff
	sbc d                                            ; $6626: $9a
	ld [hl], l                                       ; $6627: $75
	xor b                                            ; $6628: $a8
	ld b, b                                          ; $6629: $40
	add b                                            ; $662a: $80
	ld b, b                                          ; $662b: $40
	halt                                             ; $662c: $76
	ld hl, sp-$65                                    ; $662d: $f8 $9b
	ld d, c                                          ; $662f: $51
	ld a, [bc]                                       ; $6630: $0a
	dec b                                            ; $6631: $05
	ld [bc], a                                       ; $6632: $02
	sbc $ff                                          ; $6633: $de $ff
	sbc d                                            ; $6635: $9a
	db $fd                                           ; $6636: $fd
	xor [hl]                                         ; $6637: $ae
	dec d                                            ; $6638: $15
	ld a, [bc]                                       ; $6639: $0a
	dec b                                            ; $663a: $05
	ld a, d                                          ; $663b: $7a
	ldh [$9a], a                                     ; $663c: $e0 $9a
	ld [$ba54], sp                                   ; $663e: $08 $54 $ba
	dec d                                            ; $6641: $15
	ld a, [hl+]                                      ; $6642: $2a
	ld [hl], h                                       ; $6643: $74
	ld h, b                                          ; $6644: $60
	add b                                            ; $6645: $80
	xor e                                            ; $6646: $ab
	ld [hl], l                                       ; $6647: $75
	jp c, Jump_054_7fb5                              ; $6648: $da $b5 $7f

	rst SubAFromDE                                          ; $664b: $df
	dec sp                                           ; $664c: $3b
	rlca                                             ; $664d: $07
	dec d                                            ; $664e: $15
	xor d                                            ; $664f: $aa
	ld d, l                                          ; $6650: $55
	xor e                                            ; $6651: $ab
	add b                                            ; $6652: $80
	ldh [$fc], a                                     ; $6653: $e0 $fc
	rst $38                                          ; $6655: $ff
	ld [$aa55], a                                    ; $6656: $ea $55 $aa
	ld d, l                                          ; $6659: $55
	db $fc                                           ; $665a: $fc
	rst FarCall                                          ; $665b: $f7
	jp hl                                            ; $665c: $e9


	ld [hl], e                                       ; $665d: $73
	ret nz                                           ; $665e: $c0

	ld [$c450], a                                    ; $665f: $ea $50 $c4
	rra                                              ; $6662: $1f
	add hl, de                                       ; $6663: $19
	ld [hl-], a                                      ; $6664: $32
	sub d                                            ; $6665: $92
	and b                                            ; $6666: $a0
	pop hl                                           ; $6667: $e1
	ld b, c                                          ; $6668: $41
	set 3, e                                         ; $6669: $cb $db
	adc [hl]                                         ; $666b: $8e
	dec bc                                           ; $666c: $0b
	dec bc                                           ; $666d: $0b
	dec d                                            ; $666e: $15
	rla                                              ; $666f: $17
	rla                                              ; $6670: $17
	xor e                                            ; $6671: $ab
	xor a                                            ; $6672: $af
	ld a, b                                          ; $6673: $78
	ld e, a                                          ; $6674: $5f
	ld a, [hl]                                       ; $6675: $7e
	add hl, bc                                       ; $6676: $09
	rst SubAFromDE                                          ; $6677: $df
	db $fd                                           ; $6678: $fd
	add b                                            ; $6679: $80
	ei                                               ; $667a: $fb
	ld e, l                                          ; $667b: $5d
	ld l, e                                          ; $667c: $6b
	or [hl]                                          ; $667d: $b6
	push de                                          ; $667e: $d5
	add h                                            ; $667f: $84
	sbc e                                            ; $6680: $9b
	ld a, [bc]                                       ; $6681: $0a
	inc d                                            ; $6682: $14
	ld hl, sp-$0f                                    ; $6683: $f8 $f1
	db $e3                                           ; $6685: $e3
	and $ee                                          ; $6686: $e6 $ee
	db $ec                                           ; $6688: $ec
	db $fd                                           ; $6689: $fd
	ei                                               ; $668a: $fb
	and a                                            ; $668b: $a7
	ld b, d                                          ; $668c: $42
	and [hl]                                         ; $668d: $a6
	ld l, l                                          ; $668e: $6d
	adc l                                            ; $668f: $8d
	ld e, e                                          ; $6690: $5b
	cp e                                             ; $6691: $bb
	ld [hl], a                                       ; $6692: $77
	jp nz, $0d87                                     ; $6693: $c2 $87 $0d

	dec bc                                           ; $6696: $0b
	ld e, e                                          ; $6697: $5b
	or [hl]                                          ; $6698: $b6
	sbc b                                            ; $6699: $98
	halt                                             ; $669a: $76
	db $ec                                           ; $669b: $ec
	ld e, e                                          ; $669c: $5b
	ret nz                                           ; $669d: $c0

	ret z                                            ; $669e: $c8

	and $f7                                          ; $669f: $e6 $f7
	sbc $ff                                          ; $66a1: $de $ff
	sbc d                                            ; $66a3: $9a
	rst SubAFromBC                                          ; $66a4: $e7
	add c                                            ; $66a5: $81
	or b                                             ; $66a6: $b0
	jr jr_054_66b1                                   ; $66a7: $18 $08

	ld l, a                                          ; $66a9: $6f
	nop                                              ; $66aa: $00
	rst SubAFromDE                                          ; $66ab: $df
	ld a, a                                          ; $66ac: $7f
	rst SubAFromDE                                          ; $66ad: $df
	cp a                                             ; $66ae: $bf
	sub [hl]                                         ; $66af: $96
	rst SubAFromDE                                          ; $66b0: $df

jr_054_66b1:
	nop                                              ; $66b1: $00
	add b                                            ; $66b2: $80
	ld b, b                                          ; $66b3: $40
	ld b, b                                          ; $66b4: $40
	jr nz, jr_054_66d7                               ; $66b5: $20 $20

	db $10                                           ; $66b7: $10
	db $10                                           ; $66b8: $10
	ld [hl], $c0                                     ; $66b9: $36 $c0
	db $dd                                           ; $66bb: $dd
	jp Jump_054_7ed9                                 ; $66bc: $c3 $d9 $7e


	ld b, $c0                                        ; $66bf: $06 $c0
	db $dd                                           ; $66c1: $dd
	rst $38                                          ; $66c2: $ff
	sbc l                                            ; $66c3: $9d
	di                                               ; $66c4: $f3
	add c                                            ; $66c5: $81
	ei                                               ; $66c6: $fb
	sbc [hl]                                         ; $66c7: $9e
	inc c                                            ; $66c8: $0c
	ld h, a                                          ; $66c9: $67
	jp nc, Jump_054_7f9d                             ; $66ca: $d2 $9d $7f

	sbc [hl]                                         ; $66cd: $9e
	ld [hl], a                                       ; $66ce: $77
	jr jr_054_674b                                   ; $66cf: $18 $7a

	push bc                                          ; $66d1: $c5
	sbc h                                            ; $66d2: $9c
	ld h, c                                          ; $66d3: $61
	cp a                                             ; $66d4: $bf
	push de                                          ; $66d5: $d5
	db $dd                                           ; $66d6: $dd

jr_054_66d7:
	rst $38                                          ; $66d7: $ff
	sbc l                                            ; $66d8: $9d
	db $fd                                           ; $66d9: $fd
	ld [hl], b                                       ; $66da: $70
	ld a, d                                          ; $66db: $7a
	inc de                                           ; $66dc: $13
	db $fd                                           ; $66dd: $fd
	sub l                                            ; $66de: $95
	ret nz                                           ; $66df: $c0

	pop hl                                           ; $66e0: $e1
	xor b                                            ; $66e1: $a8
	call nc, $f1f8                                   ; $66e2: $d4 $f8 $f1
	add sp, -$30                                     ; $66e5: $e8 $d0
	nop                                              ; $66e7: $00
	cpl                                              ; $66e8: $2f
	ld a, [$647c]                                    ; $66e9: $fa $7c $64
	ld a, a                                          ; $66ec: $7f
	db $ec                                           ; $66ed: $ec
	ld a, e                                          ; $66ee: $7b
	ld [hl], l                                       ; $66ef: $75
	rst FarCall                                          ; $66f0: $f7
	sbc h                                            ; $66f1: $9c
	ccf                                              ; $66f2: $3f
	ld e, $17                                        ; $66f3: $1e $17
	ld a, d                                          ; $66f5: $7a
	ldh [c], a                                       ; $66f6: $e2
	rst FarCall                                          ; $66f7: $f7
	sbc l                                            ; $66f8: $9d
	ret nz                                           ; $66f9: $c0

	and b                                            ; $66fa: $a0

jr_054_66fb:
	ld a, d                                          ; $66fb: $7a
	bit 7, l                                         ; $66fc: $cb $7d
	ld d, l                                          ; $66fe: $55
	sbc [hl]                                         ; $66ff: $9e
	jr jr_054_66fb                                   ; $6700: $18 $f9

	ld a, l                                          ; $6702: $7d
	ld [hl], c                                       ; $6703: $71
	sbc [hl]                                         ; $6704: $9e
	ld bc, $09de                                     ; $6705: $01 $de $09
	ld a, a                                          ; $6708: $7f
	db $fc                                           ; $6709: $fc
	ld a, h                                          ; $670a: $7c
	ld l, $db                                        ; $670b: $2e $db
	dec b                                            ; $670d: $05
	sub l                                            ; $670e: $95
	ld d, l                                          ; $670f: $55
	ld [$7f7f], a                                    ; $6710: $ea $7f $7f
	ld d, l                                          ; $6713: $55
	dec bc                                           ; $6714: $0b
	nop                                              ; $6715: $00
	add b                                            ; $6716: $80
	ld l, d                                          ; $6717: $6a
	sub l                                            ; $6718: $95
	ei                                               ; $6719: $fb
	add [hl]                                         ; $671a: $86
	ld d, a                                          ; $671b: $57
	and h                                            ; $671c: $a4
	ldh a, [$fe]                                     ; $671d: $f0 $fe
	cp l                                             ; $671f: $bd
	ld [hl], b                                       ; $6720: $70
	rst SubAFromBC                                          ; $6721: $e7
	rst SubAFromDE                                          ; $6722: $df
	xor [hl]                                         ; $6723: $ae
	ld e, d                                          ; $6724: $5a
	ld a, [bc]                                       ; $6725: $0a
	ld c, $13                                        ; $6726: $0e $13
	ld hl, $8f40                                     ; $6728: $21 $40 $8f
	pop af                                           ; $672b: $f1
	pop de                                           ; $672c: $d1
	db $d3                                           ; $672d: $d3
	ld d, a                                          ; $672e: $57
	rst SubAFromDE                                          ; $672f: $df
	cp $7f                                           ; $6730: $fe $7f
	cp a                                             ; $6732: $bf
	rst SubAFromDE                                          ; $6733: $df
	ld l, e                                          ; $6734: $6b
	ld h, [hl]                                       ; $6735: $66
	adc b                                            ; $6736: $88
	ld c, a                                          ; $6737: $4f
	ld d, [hl]                                       ; $6738: $56
	sbc [hl]                                         ; $6739: $9e
	xor [hl]                                         ; $673a: $ae
	ld a, [hl]                                       ; $673b: $7e
	add a                                            ; $673c: $87
	jp nz, $fbbf                                     ; $673d: $c2 $bf $fb

	ei                                               ; $6740: $fb
	di                                               ; $6741: $f3
	di                                               ; $6742: $f3
	ei                                               ; $6743: $fb
	rst GetHLinHL                                          ; $6744: $cf
	rst SubAFromBC                                          ; $6745: $e7
	rst $38                                          ; $6746: $ff
	db $10                                           ; $6747: $10
	jr nz, @+$23                                     ; $6748: $20 $21

	inc hl                                           ; $674a: $23

jr_054_674b:
	ld b, a                                          ; $674b: $47
	ld c, [hl]                                       ; $674c: $4e
	db $dd                                           ; $674d: $dd
	ld [hl], b                                       ; $674e: $70
	xor h                                            ; $674f: $ac
	db $dd                                           ; $6750: $dd
	rst $38                                          ; $6751: $ff
	sub b                                            ; $6752: $90
	rst JumpTable                                          ; $6753: $c7
	rst GetHLinHL                                          ; $6754: $cf
	sbc a                                            ; $6755: $9f
	cp a                                             ; $6756: $bf
	ld a, a                                          ; $6757: $7f
	cp a                                             ; $6758: $bf
	and a                                            ; $6759: $a7
	ld b, e                                          ; $675a: $43
	db $fc                                           ; $675b: $fc
	ld hl, sp-$10                                    ; $675c: $f8 $f0
	ldh [$e1], a                                     ; $675e: $e0 $e1
	cp c                                             ; $6760: $b9
	push hl                                          ; $6761: $e5
	ld l, e                                          ; $6762: $6b
	ret                                              ; $6763: $c9


	ld e, a                                          ; $6764: $5f
	db $10                                           ; $6765: $10
	sbc l                                            ; $6766: $9d
	ret z                                            ; $6767: $c8

	add sp, -$22                                     ; $6768: $e8 $de
	ld hl, sp-$21                                    ; $676a: $f8 $df
	rst $38                                          ; $676c: $ff
	sbc h                                            ; $676d: $9c
	jp hl                                            ; $676e: $e9


	jr jr_054_6789                                   ; $676f: $18 $18

	db $dd                                           ; $6771: $dd
	ld [$0f9d], sp                                   ; $6772: $08 $9d $0f
	jr jr_054_67f0                                   ; $6775: $18 $79

	rrca                                             ; $6777: $0f
	ld [hl], a                                       ; $6778: $77
	ld e, d                                          ; $6779: $5a
	sub l                                            ; $677a: $95
	ccf                                              ; $677b: $3f
	nop                                              ; $677c: $00
	ldh [$3f], a                                     ; $677d: $e0 $3f
	rrca                                             ; $677f: $0f
	rlca                                             ; $6780: $07
	jp rIE                                         ; $6781: $c3 $ff $ff


	db $e3                                           ; $6784: $e3
	db $db                                           ; $6785: $db
	ld h, d                                          ; $6786: $62
	sbc [hl]                                         ; $6787: $9e
	db $e3                                           ; $6788: $e3

jr_054_6789:
	halt                                             ; $6789: $76
	add $76                                          ; $678a: $c6 $76
	pop af                                           ; $678c: $f1
	sbc [hl]                                         ; $678d: $9e
	cp $6a                                           ; $678e: $fe $6a
	reti                                             ; $6790: $d9


	halt                                             ; $6791: $76
	sub $9e                                          ; $6792: $d6 $9e
	inc c                                            ; $6794: $0c
	ld a, e                                          ; $6795: $7b
	db $fc                                           ; $6796: $fc
	ei                                               ; $6797: $fb
	ld a, l                                          ; $6798: $7d
	dec bc                                           ; $6799: $0b
	ld a, a                                          ; $679a: $7f
	push af                                          ; $679b: $f5
	sbc [hl]                                         ; $679c: $9e
	ldh a, [$7b]                                     ; $679d: $f0 $7b
	inc de                                           ; $679f: $13
	rst SubAFromDE                                          ; $67a0: $df
	rst $38                                          ; $67a1: $ff
	sub [hl]                                         ; $67a2: $96
	ld [$8020], sp                                   ; $67a3: $08 $20 $80
	ld [$2010], sp                                   ; $67a6: $08 $10 $20
	ldh [$3f], a                                     ; $67a9: $e0 $3f
	ldh a, [rBCPS]                                   ; $67ab: $f0 $68
	ld d, b                                          ; $67ad: $50
	sbc d                                            ; $67ae: $9a
	ld b, b                                          ; $67af: $40
	db $10                                           ; $67b0: $10

jr_054_67b1:
	ld [$8285], sp                                   ; $67b1: $08 $85 $82

jr_054_67b4:
	sbc $80                                          ; $67b4: $de $80
	ld a, e                                          ; $67b6: $7b
	or d                                             ; $67b7: $b2
	ld a, h                                          ; $67b8: $7c
	ret nc                                           ; $67b9: $d0

	ld [hl], l                                       ; $67ba: $75
	xor d                                            ; $67bb: $aa
	sbc e                                            ; $67bc: $9b
	ld bc, $5122                                     ; $67bd: $01 $22 $51
	xor b                                            ; $67c0: $a8
	ld a, d                                          ; $67c1: $7a
	jp nc, $f79a                                     ; $67c2: $d2 $9a $f7

	cp $dd                                           ; $67c5: $fe $dd
	xor [hl]                                         ; $67c7: $ae
	ld d, a                                          ; $67c8: $57
	ld a, b                                          ; $67c9: $78
	ld c, l                                          ; $67ca: $4d
	adc c                                            ; $67cb: $89
	dec d                                            ; $67cc: $15
	dec de                                           ; $67cd: $1b
	xor c                                            ; $67ce: $a9
	ld d, h                                          ; $67cf: $54
	xor l                                            ; $67d0: $ad
	db $f4                                           ; $67d1: $f4
	inc b                                            ; $67d2: $04
	dec c                                            ; $67d3: $0d
	db $eb                                           ; $67d4: $eb
	pop hl                                           ; $67d5: $e1
	ld d, l                                          ; $67d6: $55
	xor a                                            ; $67d7: $af
	ld e, [hl]                                       ; $67d8: $5e
	rrca                                             ; $67d9: $0f
	rlca                                             ; $67da: $07
	rlca                                             ; $67db: $07
	ld a, [hl-]                                      ; $67dc: $3a
	db $10                                           ; $67dd: $10
	ld b, b                                          ; $67de: $40
	and b                                            ; $67df: $a0
	ld e, b                                          ; $67e0: $58
	xor a                                            ; $67e1: $af
	ld [hl], a                                       ; $67e2: $77
	and $7e                                          ; $67e3: $e6 $7e
	reti                                             ; $67e5: $d9


	sbc c                                            ; $67e6: $99
	and b                                            ; $67e7: $a0
	ld d, b                                          ; $67e8: $50
	xor b                                            ; $67e9: $a8
	nop                                              ; $67ea: $00
	rst $38                                          ; $67eb: $ff
	ld a, a                                          ; $67ec: $7f
	halt                                             ; $67ed: $76
	adc b                                            ; $67ee: $88
	sbc [hl]                                         ; $67ef: $9e

jr_054_67f0:
	ldh [$f8], a                                     ; $67f0: $e0 $f8
	sbc l                                            ; $67f2: $9d
	jr c, jr_054_67b4                                ; $67f3: $38 $bf

	ld [hl], c                                       ; $67f5: $71
	ld h, e                                          ; $67f6: $63
	ld [hl], e                                       ; $67f7: $73
	or [hl]                                          ; $67f8: $b6
	ld [hl], a                                       ; $67f9: $77
	ld hl, sp-$80                                    ; $67fa: $f8 $80
	ccf                                              ; $67fc: $3f
	ld h, b                                          ; $67fd: $60
	add b                                            ; $67fe: $80
	nop                                              ; $67ff: $00
	add b                                            ; $6800: $80
	ldh a, [$8c]                                     ; $6801: $f0 $8c
	ldh a, [c]                                       ; $6803: $f2
	rra                                              ; $6804: $1f
	ld h, b                                          ; $6805: $60
	sbc e                                            ; $6806: $9b
	ld a, a                                          ; $6807: $7f
	cp $ff                                           ; $6808: $fe $ff
	adc a                                            ; $680a: $8f
	inc bc                                           ; $680b: $03
	ld hl, sp+$07                                    ; $680c: $f8 $07
	ld bc, $3f79                                     ; $680e: $01 $79 $3f
	rra                                              ; $6811: $1f
	cpl                                              ; $6812: $2f
	add e                                            ; $6813: $83
	ld hl, sp+$07                                    ; $6814: $f8 $07
	cp c                                             ; $6816: $b9
	add a                                            ; $6817: $87
	pop bc                                           ; $6818: $c1
	pop hl                                           ; $6819: $e1
	pop de                                           ; $681a: $d1
	sub e                                            ; $681b: $93
	ld a, l                                          ; $681c: $7d
	adc b                                            ; $681d: $88
	ld [$0809], sp                                   ; $681e: $08 $09 $08
	ld [$808f], sp                                   ; $6821: $08 $8f $80
	ret nz                                           ; $6824: $c0

	cp b                                             ; $6825: $b8
	ld hl, sp-$07                                    ; $6826: $f8 $f9
	ld [hl], a                                       ; $6828: $77
	jr jr_054_67b1                                   ; $6829: $18 $86

	ld a, a                                          ; $682b: $7f
	cp [hl]                                          ; $682c: $be
	add $c7                                          ; $682d: $c6 $c7
	ld [hl], l                                       ; $682f: $75
	ei                                               ; $6830: $fb
	db $dd                                           ; $6831: $dd
	ld a, [$fcba]                                    ; $6832: $fa $ba $fc
	ld b, h                                          ; $6835: $44
	rst JumpTable                                          ; $6836: $c7
	cp $e7                                           ; $6837: $fe $e7
	db $e3                                           ; $6839: $e3
	push bc                                          ; $683a: $c5
	rst JumpTable                                          ; $683b: $c7
	inc hl                                           ; $683c: $23
	ld hl, $2123                                     ; $683d: $21 $23 $21
	cp $fc                                           ; $6840: $fe $fc
	sbc b                                            ; $6842: $98
	ret c                                            ; $6843: $d8

	ld [hl], a                                       ; $6844: $77
	ld hl, sp-$6e                                    ; $6845: $f8 $92
	ccf                                              ; $6847: $3f
	ei                                               ; $6848: $fb
	rst FarCall                                          ; $6849: $f7
	or a                                             ; $684a: $b7
	db $fc                                           ; $684b: $fc
	inc de                                           ; $684c: $13
	jr jr_054_685f                                   ; $684d: $18 $10

	pop af                                           ; $684f: $f1
	ret                                              ; $6850: $c9


	and $76                                          ; $6851: $e6 $76
	rst $38                                          ; $6853: $ff
	ld [hl], a                                       ; $6854: $77
	ld hl, sp-$68                                    ; $6855: $f8 $98
	add hl, sp                                       ; $6857: $39
	rra                                              ; $6858: $1f
	call $1935                                       ; $6859: $cd $35 $19
	adc c                                            ; $685c: $89
	add l                                            ; $685d: $85
	db $dd                                           ; $685e: $dd

jr_054_685f:
	inc bc                                           ; $685f: $03
	sbc l                                            ; $6860: $9d
	db $fd                                           ; $6861: $fd
	db $eb                                           ; $6862: $eb
	halt                                             ; $6863: $76
	ld [$fddf], sp                                   ; $6864: $08 $df $fd
	db $db                                           ; $6867: $db
	rst $38                                          ; $6868: $ff
	ld a, a                                          ; $6869: $7f
	adc $f9                                          ; $686a: $ce $f9
	adc e                                            ; $686c: $8b
	db $ed                                           ; $686d: $ed
	ldh a, [c]                                       ; $686e: $f2
	push af                                          ; $686f: $f5
	ldh a, [$d0]                                     ; $6870: $f0 $d0
	sub b                                            ; $6872: $90
	jr nc, jr_054_68b4                               ; $6873: $30 $3f

	jr jr_054_688f                                   ; $6875: $18 $18

	db $10                                           ; $6877: $10
	db $10                                           ; $6878: $10
	jr nc, jr_054_68ab                               ; $6879: $30 $30

	jr nz, @+$22                                     ; $687b: $20 $20

	rst $38                                          ; $687d: $ff
	db $eb                                           ; $687e: $eb
	ld d, l                                          ; $687f: $55
	xor d                                            ; $6880: $aa
	ld l, [hl]                                       ; $6881: $6e
	ldh [$fb], a                                     ; $6882: $e0 $fb
	sbc e                                            ; $6884: $9b
	pop hl                                           ; $6885: $e1
	rst SubAFromBC                                          ; $6886: $e7
	ld l, e                                          ; $6887: $6b
	and e                                            ; $6888: $a3
	sbc $23                                          ; $6889: $de $23
	sbc h                                            ; $688b: $9c
	db $e3                                           ; $688c: $e3
	ccf                                              ; $688d: $3f
	add hl, sp                                       ; $688e: $39

jr_054_688f:
	db $db                                           ; $688f: $db
	ld sp, $ff9a                                     ; $6890: $31 $9a $ff
	ld e, l                                          ; $6893: $5d
	xor d                                            ; $6894: $aa
	ld bc, $5b20                                     ; $6895: $01 $20 $5b
	ldh [$9b], a                                     ; $6898: $e0 $9b
	rst $38                                          ; $689a: $ff
	ld [hl], a                                       ; $689b: $77
	ld [$5750], a                                    ; $689c: $ea $50 $57
	ldh a, [$df]                                     ; $689f: $f0 $df
	ld [bc], a                                       ; $68a1: $02
	sbc d                                            ; $68a2: $9a
	inc b                                            ; $68a3: $04
	add h                                            ; $68a4: $84
	ret z                                            ; $68a5: $c8

	ld l, b                                          ; $68a6: $68
	ccf                                              ; $68a7: $3f
	ld a, e                                          ; $68a8: $7b
	nop                                              ; $68a9: $00
	ld [hl], a                                       ; $68aa: $77

jr_054_68ab:
	ld [$409c], sp                                   ; $68ab: $08 $9c $40
	ccf                                              ; $68ae: $3f
	ld hl, sp-$04                                    ; $68af: $f8 $fc
	ld h, e                                          ; $68b1: $63
	nop                                              ; $68b2: $00

jr_054_68b3:
	ld [hl], d                                       ; $68b3: $72

jr_054_68b4:
	add c                                            ; $68b4: $81
	sbc l                                            ; $68b5: $9d
	ld d, b                                          ; $68b6: $50
	jr c, jr_054_68b3                                ; $68b7: $38 $fa

	sub d                                            ; $68b9: $92
	ld [hl], b                                       ; $68ba: $70
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	dec c                                            ; $68bd: $0d
	nop                                              ; $68be: $00
	ld b, $04                                        ; $68bf: $06 $04
	dec h                                            ; $68c1: $25
	dec h                                            ; $68c2: $25
	inc bc                                           ; $68c3: $03
	ld bc, $0e06                                     ; $68c4: $01 $06 $0e
	ld [hl], h                                       ; $68c7: $74
	ldh a, [c]                                       ; $68c8: $f2
	ld a, d                                          ; $68c9: $7a
	halt                                             ; $68ca: $76
	sub l                                            ; $68cb: $95
	ldh a, [$7c]                                     ; $68cc: $f0 $7c
	sbc a                                            ; $68ce: $9f
	add e                                            ; $68cf: $83
	nop                                              ; $68d0: $00
	rrca                                             ; $68d1: $0f
	ei                                               ; $68d2: $fb
	add b                                            ; $68d3: $80
	rrca                                             ; $68d4: $0f
	add e                                            ; $68d5: $83
	cp $9d                                           ; $68d6: $fe $9d
	inc bc                                           ; $68d8: $03
	inc a                                            ; $68d9: $3c
	ld a, e                                          ; $68da: $7b
	and a                                            ; $68db: $a7
	sbc d                                            ; $68dc: $9a
	add b                                            ; $68dd: $80
	db $fc                                           ; $68de: $fc
	ld bc, $ede9                                     ; $68df: $01 $e9 $ed
	ld a, d                                          ; $68e2: $7a
	ld d, l                                          ; $68e3: $55
	sub l                                            ; $68e4: $95
	ld a, a                                          ; $68e5: $7f
	inc bc                                           ; $68e6: $03
	ld bc, $1ff1                                     ; $68e7: $01 $f1 $1f
	rst $38                                          ; $68ea: $ff
	inc e                                            ; $68eb: $1c
	jr nc, jr_054_694e                               ; $68ec: $30 $60

	ret nz                                           ; $68ee: $c0

	ld a, e                                          ; $68ef: $7b
	and d                                            ; $68f0: $a2
	sbc h                                            ; $68f1: $9c
	rlca                                             ; $68f2: $07
	ld hl, sp-$20                                    ; $68f3: $f8 $e0
	ld [hl], a                                       ; $68f5: $77
	ld sp, hl                                        ; $68f6: $f9
	ld a, a                                          ; $68f7: $7f
	xor a                                            ; $68f8: $af
	ld a, [hl]                                       ; $68f9: $7e
	ret nc                                           ; $68fa: $d0

	ld l, a                                          ; $68fb: $6f
	ld a, b                                          ; $68fc: $78

jr_054_68fd:
	ld a, b                                          ; $68fd: $78
	ld b, a                                          ; $68fe: $47
	db $fd                                           ; $68ff: $fd
	rst SubAFromDE                                          ; $6900: $df
	ld bc, wGenericTileDataBuffer                                     ; $6901: $01 $8f $c1
	pop af                                           ; $6904: $f1
	ld l, c                                          ; $6905: $69
	dec [hl]                                         ; $6906: $35
	dec bc                                           ; $6907: $0b
	ld [bc], a                                       ; $6908: $02
	ei                                               ; $6909: $fb
	rst AddAOntoHL                                          ; $690a: $ef
	rst $38                                          ; $690b: $ff
	ccf                                              ; $690c: $3f
	rra                                              ; $690d: $1f
	rrca                                             ; $690e: $0f
	rlca                                             ; $690f: $07
	ld bc, $c0c0                                     ; $6910: $01 $c0 $c0
	db $dd                                           ; $6913: $dd
	ldh [$df], a                                     ; $6914: $e0 $df
	ret nz                                           ; $6916: $c0

	rst SubAFromDE                                          ; $6917: $df
	ld a, a                                          ; $6918: $7f
	db $dd                                           ; $6919: $dd
	ccf                                              ; $691a: $3f
	ld a, [hl]                                       ; $691b: $7e
	jr jr_054_68fd                                   ; $691c: $18 $df

	rst AddAOntoHL                                          ; $691e: $ef
	rst SubAFromDE                                          ; $691f: $df
	ld [hl], a                                       ; $6920: $77
	sub a                                            ; $6921: $97
	dec sp                                           ; $6922: $3b
	ld a, [de]                                       ; $6923: $1a
	ld a, [bc]                                       ; $6924: $0a
	inc b                                            ; $6925: $04
	sbc d                                            ; $6926: $9a
	sbc c                                            ; $6927: $99
	call Call_054_74cd                               ; $6928: $cd $cd $74
	ld [hl], a                                       ; $692b: $77
	sub l                                            ; $692c: $95
	or h                                             ; $692d: $b4
	sub [hl]                                         ; $692e: $96
	adc d                                            ; $692f: $8a
	ld a, [bc]                                       ; $6930: $0a
	inc b                                            ; $6931: $04
	dec b                                            ; $6932: $05
	inc bc                                           ; $6933: $03
	ld [bc], a                                       ; $6934: $02
	ei                                               ; $6935: $fb
	ld sp, hl                                        ; $6936: $f9
	ld l, [hl]                                       ; $6937: $6e
	db $e4                                           ; $6938: $e4
	rst SubAFromDE                                          ; $6939: $df
	ld [hl], h                                       ; $693a: $74
	rst SubAFromDE                                          ; $693b: $df
	ld l, b                                          ; $693c: $68
	sbc [hl]                                         ; $693d: $9e
	sub b                                            ; $693e: $90
	cp $9d                                           ; $693f: $fe $9d
	rst GetHLinHL                                          ; $6941: $cf
	rst AddAOntoHL                                          ; $6942: $ef
	db $db                                           ; $6943: $db
	rst $38                                          ; $6944: $ff
	jp c, $9e03                                      ; $6945: $da $03 $9e

	rlca                                             ; $6948: $07
	jp c, $9bfd                                      ; $6949: $da $fd $9b

	ei                                               ; $694c: $fb
	db $fc                                           ; $694d: $fc

jr_054_694e:
	ld hl, sp-$08                                    ; $694e: $f8 $f8
	sbc $f0                                          ; $6950: $de $f0
	rst SubAFromDE                                          ; $6952: $df
	ldh [$f9], a                                     ; $6953: $e0 $f9
	sub e                                            ; $6955: $93
	jr nz, jr_054_6982                               ; $6956: $20 $2a

	inc [hl]                                         ; $6958: $34
	ld h, b                                          ; $6959: $60
	jr nz, jr_054_697c                               ; $695a: $20 $20

	ld b, b                                          ; $695c: $40
	ld b, b                                          ; $695d: $40
	ccf                                              ; $695e: $3f
	dec [hl]                                         ; $695f: $35
	dec hl                                           ; $6960: $2b
	ccf                                              ; $6961: $3f
	db $dd                                           ; $6962: $dd
	ld a, a                                          ; $6963: $7f
	sbc h                                            ; $6964: $9c
	nop                                              ; $6965: $00
	xor d                                            ; $6966: $aa
	ld b, b                                          ; $6967: $40
	ld [hl], b                                       ; $6968: $70
	jp nc, $ff9c                                     ; $6969: $d2 $9c $ff

	ld d, l                                          ; $696c: $55
	cp a                                             ; $696d: $bf
	ld [hl], e                                       ; $696e: $73
	or b                                             ; $696f: $b0
	adc e                                            ; $6970: $8b
	inc hl                                           ; $6971: $23
	and e                                            ; $6972: $a3
	ld l, a                                          ; $6973: $6f
	and c                                            ; $6974: $a1
	ld l, $31                                        ; $6975: $2e $31
	ld hl, $f130                                     ; $6977: $21 $30 $f1
	ld [hl], c                                       ; $697a: $71
	or c                                             ; $697b: $b1

jr_054_697c:
	ld a, a                                          ; $697c: $7f
	pop af                                           ; $697d: $f1
	ldh [$e0], a                                     ; $697e: $e0 $e0
	rst AddAOntoHL                                          ; $6980: $ef
	nop                                              ; $6981: $00

jr_054_6982:
	ld b, h                                          ; $6982: $44
	ld [$7540], sp                                   ; $6983: $08 $40 $75
	or b                                             ; $6986: $b0
	sbc h                                            ; $6987: $9c
	rst $38                                          ; $6988: $ff
	cp e                                             ; $6989: $bb
	rst FarCall                                          ; $698a: $f7
	ld [hl], e                                       ; $698b: $73
	rst SubAFromDE                                          ; $698c: $df
	sbc h                                            ; $698d: $9c
	nop                                              ; $698e: $00
	ld d, l                                          ; $698f: $55
	add b                                            ; $6990: $80
	ld [hl], e                                       ; $6991: $73
	ccf                                              ; $6992: $3f
	sbc l                                            ; $6993: $9d
	rst $38                                          ; $6994: $ff
	xor d                                            ; $6995: $aa
	ld a, d                                          ; $6996: $7a
	ld bc, $ef74                                     ; $6997: $01 $74 $ef
	sbc l                                            ; $699a: $9d
	xor [hl]                                         ; $699b: $ae
	ld d, h                                          ; $699c: $54
	db $f4                                           ; $699d: $f4
	ld a, l                                          ; $699e: $7d
	cp e                                             ; $699f: $bb
	ldh [c], a                                       ; $69a0: $e2
	adc a                                            ; $69a1: $8f
	ld bc, $0603                                     ; $69a2: $01 $03 $06
	inc c                                            ; $69a5: $0c
	ld [$1c18], sp                                   ; $69a6: $08 $18 $1c
	ld bc, $0201                                     ; $69a9: $01 $01 $02
	inc b                                            ; $69ac: $04
	ld [$1008], sp                                   ; $69ad: $08 $08 $10
	db $10                                           ; $69b0: $10
	ret nc                                           ; $69b1: $d0

	ld l, b                                          ; $69b2: $68
	ld b, h                                          ; $69b3: $44
	sbc [hl]                                         ; $69b4: $9e
	ldh [$6e], a                                     ; $69b5: $e0 $6e
	ld a, [hl]                                       ; $69b7: $7e
	sbc e                                            ; $69b8: $9b
	nop                                              ; $69b9: $00
	ld a, [hl-]                                      ; $69ba: $3a
	ld c, $07                                        ; $69bb: $0e $07
	ld a, c                                          ; $69bd: $79
	ld b, a                                          ; $69be: $47
	ld a, a                                          ; $69bf: $7f
	jr nz, @-$6f                                     ; $69c0: $20 $8f

	rlca                                             ; $69c2: $07
	inc bc                                           ; $69c3: $03
	ld [bc], a                                       ; $69c4: $02
	ld [bc], a                                       ; $69c5: $02
	inc bc                                           ; $69c6: $03
	inc bc                                           ; $69c7: $03
	ld bc, $0301                                     ; $69c8: $01 $01 $03
	rlca                                             ; $69cb: $07
	adc a                                            ; $69cc: $8f
	rst $38                                          ; $69cd: $ff
	rst $38                                          ; $69ce: $ff
	ccf                                              ; $69cf: $3f
	rrca                                             ; $69d0: $0f
	add c                                            ; $69d1: $81
	ld l, h                                          ; $69d2: $6c
	reti                                             ; $69d3: $d9


	ld a, h                                          ; $69d4: $7c
	ld h, h                                          ; $69d5: $64
	sbc l                                            ; $69d6: $9d
	ldh [$f0], a                                     ; $69d7: $e0 $f0
	call c, Call_054_79f8                            ; $69d9: $dc $f8 $79
	inc bc                                           ; $69dc: $03
	rst FarCall                                          ; $69dd: $f7
	sbc e                                            ; $69de: $9b
	ld l, b                                          ; $69df: $68
	ld a, $15                                        ; $69e0: $3e $15
	rrca                                             ; $69e2: $0f
	db $fd                                           ; $69e3: $fd
	adc a                                            ; $69e4: $8f
	jr nc, jr_054_69ff                               ; $69e5: $30 $18

	ld c, $03                                        ; $69e7: $0e $03
	and b                                            ; $69e9: $a0
	jr nc, jr_054_69f8                               ; $69ea: $30 $0c

	ld b, $03                                        ; $69ec: $06 $03
	ld bc, $c080                                     ; $69ee: $01 $80 $c0

jr_054_69f1:
	ld a, a                                          ; $69f1: $7f
	rra                                              ; $69f2: $1f
	rrca                                             ; $69f3: $0f
	inc bc                                           ; $69f4: $03
	ld l, [hl]                                       ; $69f5: $6e
	sub [hl]                                         ; $69f6: $96
	ld [hl], c                                       ; $69f7: $71

jr_054_69f8:
	jr nc, @-$60                                     ; $69f8: $30 $9e

	ld [hl], b                                       ; $69fa: $70
	ld l, b                                          ; $69fb: $68
	ld b, c                                          ; $69fc: $41
	sbc [hl]                                         ; $69fd: $9e
	rra                                              ; $69fe: $1f

jr_054_69ff:
	ld h, c                                          ; $69ff: $61
	ld hl, sp+$48                                    ; $6a00: $f8 $48
	ld l, b                                          ; $6a02: $68
	ld l, l                                          ; $6a03: $6d
	sbc c                                            ; $6a04: $99
	adc l                                            ; $6a05: $8d
	ld hl, sp-$70                                    ; $6a06: $f8 $90
	rlca                                             ; $6a08: $07
	dec c                                            ; $6a09: $0d
	add hl, de                                       ; $6a0a: $19
	ld de, $2131                                     ; $6a0b: $11 $31 $21
	ld b, c                                          ; $6a0e: $41
	add c                                            ; $6a0f: $81
	ei                                               ; $6a10: $fb
	push af                                          ; $6a11: $f5
	jp hl                                            ; $6a12: $e9


	pop af                                           ; $6a13: $f1
	pop de                                           ; $6a14: $d1
	ld h, c                                          ; $6a15: $61
	pop bc                                           ; $6a16: $c1
	add c                                            ; $6a17: $81
	sbc $e0                                          ; $6a18: $de $e0
	sbc e                                            ; $6a1a: $9b
	ldh a, [$d8]                                     ; $6a1b: $f0 $d8
	ret z                                            ; $6a1d: $c8

	call z, $8071                                    ; $6a1e: $cc $71 $80
	sbc e                                            ; $6a21: $9b
	jr nz, @+$32                                     ; $6a22: $20 $30

	jr nc, jr_054_6a26                               ; $6a24: $30 $00

jr_054_6a26:
	sbc $40                                          ; $6a26: $de $40
	sbc d                                            ; $6a28: $9a
	ld d, c                                          ; $6a29: $51
	ld l, d                                          ; $6a2a: $6a
	ld d, l                                          ; $6a2b: $55
	ld e, d                                          ; $6a2c: $5a
	dec h                                            ; $6a2d: $25
	sbc $7f                                          ; $6a2e: $de $7f
	sbc d                                            ; $6a30: $9a
	ld l, [hl]                                       ; $6a31: $6e
	ld d, l                                          ; $6a32: $55
	ld l, b                                          ; $6a33: $68
	ld h, b                                          ; $6a34: $60
	ld h, b                                          ; $6a35: $60
	ld [hl], a                                       ; $6a36: $77
	dec c                                            ; $6a37: $0d
	sbc e                                            ; $6a38: $9b
	xor d                                            ; $6a39: $aa
	ld d, b                                          ; $6a3a: $50
	xor d                                            ; $6a3b: $aa
	ld d, l                                          ; $6a3c: $55
	sbc $ff                                          ; $6a3d: $de $ff
	sbc b                                            ; $6a3f: $98
	cp a                                             ; $6a40: $bf
	ld d, l                                          ; $6a41: $55
	xor a                                            ; $6a42: $af
	dec b                                            ; $6a43: $05
	ld a, [bc]                                       ; $6a44: $0a
	ld h, $28                                        ; $6a45: $26 $28
	call c, $9c19                                    ; $6a47: $dc $19 $9c
	ld e, c                                          ; $6a4a: $59
	ld sp, hl                                        ; $6a4b: $f9
	pop af                                           ; $6a4c: $f1
	call c, $9df0                                    ; $6a4d: $dc $f0 $9d
	or b                                             ; $6a50: $b0
	add b                                            ; $6a51: $80
	ld [hl], a                                       ; $6a52: $77
	jr z, jr_054_69f1                                ; $6a53: $28 $9c

	ld b, l                                          ; $6a55: $45
	ld a, [bc]                                       ; $6a56: $0a
	add h                                            ; $6a57: $84
	call c, $9cff                                    ; $6a58: $dc $ff $9c
	cp d                                             ; $6a5b: $ba
	push af                                          ; $6a5c: $f5
	dec hl                                           ; $6a5d: $2b
	ld a, [$049e]                                    ; $6a5e: $fa $9e $04
	jp c, $97ff                                      ; $6a61: $da $ff $97

	ei                                               ; $6a64: $fb
	ld b, b                                          ; $6a65: $40
	add b                                            ; $6a66: $80
	ld bc, $500a                                     ; $6a67: $01 $0a $50
	add b                                            ; $6a6a: $80
	ld b, b                                          ; $6a6b: $40
	ld l, e                                          ; $6a6c: $6b
	ld [bc], a                                       ; $6a6d: $02
	ld h, [hl]                                       ; $6a6e: $66
	cp h                                             ; $6a6f: $bc
	sbc l                                            ; $6a70: $9d
	ld de, $f482                                     ; $6a71: $11 $82 $f4
	ld a, l                                          ; $6a74: $7d
	sub l                                            ; $6a75: $95
	ld l, l                                          ; $6a76: $6d
	sub e                                            ; $6a77: $93
	cp $97                                           ; $6a78: $fe $97
	inc e                                            ; $6a7a: $1c
	ld l, $2e                                        ; $6a7b: $2e $2e
	cpl                                              ; $6a7d: $2f
	ccf                                              ; $6a7e: $3f
	ld a, $5c                                        ; $6a7f: $3e $5c
	ld a, b                                          ; $6a81: $78
	ld a, c                                          ; $6a82: $79
	inc bc                                           ; $6a83: $03
	ld a, c                                          ; $6a84: $79
	ld [bc], a                                       ; $6a85: $02
	sbc [hl]                                         ; $6a86: $9e
	ld h, b                                          ; $6a87: $60
	ld l, d                                          ; $6a88: $6a
	jp nz, $a156                                     ; $6a89: $c2 $56 $a1

	sbc c                                            ; $6a8c: $99
	rlca                                             ; $6a8d: $07
	rra                                              ; $6a8e: $1f
	ccf                                              ; $6a8f: $3f
	ccf                                              ; $6a90: $3f
	scf                                              ; $6a91: $37
	dec sp                                           ; $6a92: $3b
	ld l, e                                          ; $6a93: $6b
	rst JumpTable                                          ; $6a94: $c7
	adc [hl]                                         ; $6a95: $8e
	inc c                                            ; $6a96: $0c
	add c                                            ; $6a97: $81
	pop bc                                           ; $6a98: $c1
	pop bc                                           ; $6a99: $c1
	db $e3                                           ; $6a9a: $e3
	db $e3                                           ; $6a9b: $e3
	di                                               ; $6a9c: $f3
	di                                               ; $6a9d: $f3
	ld sp, hl                                        ; $6a9e: $f9
	cp $7e                                           ; $6a9f: $fe $7e
	ld a, [hl]                                       ; $6aa1: $7e
	inc a                                            ; $6aa2: $3c
	inc a                                            ; $6aa3: $3c
	inc e                                            ; $6aa4: $1c
	inc e                                            ; $6aa5: $1c
	ld c, $dc                                        ; $6aa6: $0e $dc
	ldh a, [$de]                                     ; $6aa8: $f0 $de
	ld hl, sp+$61                                    ; $6aaa: $f8 $61
	nop                                              ; $6aac: $00
	ld l, d                                          ; $6aad: $6a
	db $db                                           ; $6aae: $db
	ld h, [hl]                                       ; $6aaf: $66
	call nc, $f08c                                   ; $6ab0: $d4 $8c $f0
	ld a, b                                          ; $6ab3: $78
	call c, Call_054_6ebc                            ; $6ab4: $dc $bc $6e
	ld e, a                                          ; $6ab7: $5f
	ld [hl], a                                       ; $6ab8: $77
	ld l, a                                          ; $6ab9: $6f
	add b                                            ; $6aba: $80
	ret nz                                           ; $6abb: $c0

	ld h, b                                          ; $6abc: $60
	ld h, b                                          ; $6abd: $60
	jr nc, jr_054_6af0                               ; $6abe: $30 $30

	jr @+$1a                                         ; $6ac0: $18 $18

	jr c, jr_054_6b00                                ; $6ac2: $38 $3c

	ld a, $de                                        ; $6ac4: $3e $de
	rra                                              ; $6ac6: $1f
	sbc e                                            ; $6ac7: $9b
	sbc a                                            ; $6ac8: $9f
	rst SubAFromDE                                          ; $6ac9: $df
	rrca                                             ; $6aca: $0f
	rlca                                             ; $6acb: $07
	ld e, d                                          ; $6acc: $5a
	or c                                             ; $6acd: $b1
	ld a, c                                          ; $6ace: $79
	ld e, e                                          ; $6acf: $5b
	sbc l                                            ; $6ad0: $9d
	cp $f0                                           ; $6ad1: $fe $f0

jr_054_6ad3:
	halt                                             ; $6ad3: $76
	or c                                             ; $6ad4: $b1
	ld a, l                                          ; $6ad5: $7d
	ld e, e                                          ; $6ad6: $5b
	ld a, c                                          ; $6ad7: $79
	ccf                                              ; $6ad8: $3f
	call c, $9602                                    ; $6ad9: $dc $02 $96
	ld sp, $c361                                     ; $6adc: $31 $61 $c3
	inc bc                                           ; $6adf: $03
	add d                                            ; $6ae0: $82
	ldh [c], a                                       ; $6ae1: $e2
	jp nz, $81c2                                     ; $6ae2: $c2 $c2 $81

	jp c, $6701                                      ; $6ae5: $da $01 $67

	ld hl, sp-$21                                    ; $6ae8: $f8 $df
	cp $6e                                           ; $6aea: $fe $6e
	and [hl]                                         ; $6aec: $a6
	ld sp, hl                                        ; $6aed: $f9
	ld a, a                                          ; $6aee: $7f
	ld c, e                                          ; $6aef: $4b

jr_054_6af0:
	ld [hl], a                                       ; $6af0: $77
	ld b, [hl]                                       ; $6af1: $46
	ld a, e                                          ; $6af2: $7b
	ld b, h                                          ; $6af3: $44
	rst SubAFromDE                                          ; $6af4: $df
	jr nc, jr_054_6ad3                               ; $6af5: $30 $dc

	db $10                                           ; $6af7: $10
	ld a, [hl]                                       ; $6af8: $7e
	add $9c                                          ; $6af9: $c6 $9c
	ld a, [hl+]                                      ; $6afb: $2a
	dec d                                            ; $6afc: $15
	ld a, [bc]                                       ; $6afd: $0a
	ld a, e                                          ; $6afe: $7b
	and [hl]                                         ; $6aff: $a6

jr_054_6b00:
	sbc [hl]                                         ; $6b00: $9e
	dec b                                            ; $6b01: $05
	ld [hl], c                                       ; $6b02: $71
	ld a, d                                          ; $6b03: $7a
	rst $38                                          ; $6b04: $ff
	sbc l                                            ; $6b05: $9d
	cp c                                             ; $6b06: $b9
	ld e, c                                          ; $6b07: $59
	ld [hl], a                                       ; $6b08: $77
	cp $9b                                           ; $6b09: $fe $9b
	dec [hl]                                         ; $6b0b: $35
	add hl, de                                       ; $6b0c: $19
	ld d, b                                          ; $6b0d: $50
	sub b                                            ; $6b0e: $90
	db $dd                                           ; $6b0f: $dd
	db $10                                           ; $6b10: $10
	sub d                                            ; $6b11: $92
	jr jr_054_6b24                                   ; $6b12: $18 $10

	ld b, b                                          ; $6b14: $40
	sub c                                            ; $6b15: $91
	call nc, $84aa                                   ; $6b16: $d4 $aa $84
	and b                                            ; $6b19: $a0
	pop bc                                           ; $6b1a: $c1
	add b                                            ; $6b1b: $80
	sbc a                                            ; $6b1c: $9f
	ld a, [hl+]                                      ; $6b1d: $2a
	ld bc, $80dc                                     ; $6b1e: $01 $dc $80
	sbc d                                            ; $6b21: $9a
	xor b                                            ; $6b22: $a8
	ld d, c                                          ; $6b23: $51

jr_054_6b24:
	and d                                            ; $6b24: $a2
	cp h                                             ; $6b25: $bc
	ld d, l                                          ; $6b26: $55
	ld a, e                                          ; $6b27: $7b
	res 3, h                                         ; $6b28: $cb $9c
	ld d, a                                          ; $6b2a: $57
	xor [hl]                                         ; $6b2b: $ae
	ld d, l                                          ; $6b2c: $55
	ld [hl], e                                       ; $6b2d: $73
	adc $97                                          ; $6b2e: $ce $97
	db $10                                           ; $6b30: $10
	add b                                            ; $6b31: $80
	ld bc, $55a8                                     ; $6b32: $01 $a8 $55
	adc d                                            ; $6b35: $8a
	ld d, h                                          ; $6b36: $54
	xor b                                            ; $6b37: $a8
	ld sp, hl                                        ; $6b38: $f9
	sub a                                            ; $6b39: $97
	ld d, h                                          ; $6b3a: $54
	xor d                                            ; $6b3b: $aa
	ld b, b                                          ; $6b3c: $40
	nop                                              ; $6b3d: $00
	ld b, c                                          ; $6b3e: $41
	xor d                                            ; $6b3f: $aa
	ld d, h                                          ; $6b40: $54
	xor d                                            ; $6b41: $aa
	or $7f                                           ; $6b42: $f6 $7f
	sbc $9c                                          ; $6b44: $de $9c
	and c                                            ; $6b46: $a1
	ld d, d                                          ; $6b47: $52
	and d                                            ; $6b48: $a2
	ld [hl], b                                       ; $6b49: $70
	sub l                                            ; $6b4a: $95
	rst SubAFromDE                                          ; $6b4b: $df
	inc bc                                           ; $6b4c: $03
	sbc e                                            ; $6b4d: $9b
	ld [bc], a                                       ; $6b4e: $02
	ld [hl], b                                       ; $6b4f: $70
	add b                                            ; $6b50: $80
	ret nz                                           ; $6b51: $c0

	ld [hl], d                                       ; $6b52: $72
	ld l, l                                          ; $6b53: $6d
	sbc [hl]                                         ; $6b54: $9e
	ld b, b                                          ; $6b55: $40
	ld l, a                                          ; $6b56: $6f
	ld sp, hl                                        ; $6b57: $f9
	ldh a, [$9c]                                     ; $6b58: $f0 $9c
	jr c, jr_054_6b90                                ; $6b5a: $38 $34

	inc a                                            ; $6b5c: $3c
	sbc $7c                                          ; $6b5d: $de $7c
	sbc e                                            ; $6b5f: $9b
	ld [hl], h                                       ; $6b60: $74
	ld hl, sp+$0f                                    ; $6b61: $f8 $0f
	rrca                                             ; $6b63: $0f
	db $dd                                           ; $6b64: $dd
	rlca                                             ; $6b65: $07
	rst SubAFromDE                                          ; $6b66: $df
	rrca                                             ; $6b67: $0f
	sbc e                                            ; $6b68: $9b
	ld sp, hl                                        ; $6b69: $f9
	ld a, l                                          ; $6b6a: $7d
	ld a, h                                          ; $6b6b: $7c
	ld a, $7a                                        ; $6b6c: $3e $7a
	cp $92                                           ; $6b6e: $fe $92
	rrca                                             ; $6b70: $0f
	ld c, $86                                        ; $6b71: $0e $86
	add a                                            ; $6b73: $87
	jp $e1c3                                         ; $6b74: $c3 $c3 $e1


	pop hl                                           ; $6b77: $e1
	pop af                                           ; $6b78: $f1
	ld hl, sp-$04                                    ; $6b79: $f8 $fc
	db $fc                                           ; $6b7b: $fc
	cp $73                                           ; $6b7c: $fe $73
	ld [$a673], sp                                   ; $6b7e: $08 $73 $a6
	ld a, a                                          ; $6b81: $7f
	or e                                             ; $6b82: $b3
	ld l, d                                          ; $6b83: $6a
	rst AddAOntoHL                                          ; $6b84: $ef
	ld h, b                                          ; $6b85: $60
	and b                                            ; $6b86: $a0
	rst SubAFromDE                                          ; $6b87: $df
	ld a, e                                          ; $6b88: $7b
	sbc l                                            ; $6b89: $9d
	add hl, sp                                       ; $6b8a: $39
	dec [hl]                                         ; $6b8b: $35
	ld a, d                                          ; $6b8c: $7a
	sbc b                                            ; $6b8d: $98
	sbc $0c                                          ; $6b8e: $de $0c

jr_054_6b90:
	rst SubAFromDE                                          ; $6b90: $df
	ld c, $dd                                        ; $6b91: $0e $dd
	rlca                                             ; $6b93: $07
	ld l, c                                          ; $6b94: $69
	adc b                                            ; $6b95: $88
	ld l, a                                          ; $6b96: $6f
	ret nc                                           ; $6b97: $d0

	ld a, e                                          ; $6b98: $7b
	rst SubAFromHL                                          ; $6b99: $d7
	ld a, [hl]                                       ; $6b9a: $7e
	add h                                            ; $6b9b: $84
	ld [hl], a                                       ; $6b9c: $77
	cp a                                             ; $6b9d: $bf
	rst SubAFromDE                                          ; $6b9e: $df
	rst $38                                          ; $6b9f: $ff
	ld a, a                                          ; $6ba0: $7f
	xor [hl]                                         ; $6ba1: $ae
	rst SubAFromDE                                          ; $6ba2: $df
	rlca                                             ; $6ba3: $07
	halt                                             ; $6ba4: $76

jr_054_6ba5:
	xor [hl]                                         ; $6ba5: $ae

jr_054_6ba6:
	sbc $01                                          ; $6ba6: $de $01
	ld [hl], a                                       ; $6ba8: $77
	jp hl                                            ; $6ba9: $e9


	sub [hl]                                         ; $6baa: $96
	ld h, b                                          ; $6bab: $60
	jp $fdf1                                         ; $6bac: $c3 $f1 $fd


	ld sp, hl                                        ; $6baf: $f9
	ldh a, [$78]                                     ; $6bb0: $f0 $78
	cp b                                             ; $6bb2: $b8
	call c, $01de                                    ; $6bb3: $dc $de $01
	sbc $80                                          ; $6bb6: $de $80
	rst SubAFromDE                                          ; $6bb8: $df
	ld b, b                                          ; $6bb9: $40
	ld a, e                                          ; $6bba: $7b
	jp hl                                            ; $6bbb: $e9


	sbc $80                                          ; $6bbc: $de $80
	ld a, a                                          ; $6bbe: $7f
	add sp, $7e                                      ; $6bbf: $e8 $7e
	ld c, b                                          ; $6bc1: $48
	sbc [hl]                                         ; $6bc2: $9e
	cp $de                                           ; $6bc3: $fe $de
	db $fc                                           ; $6bc5: $fc
	ld a, d                                          ; $6bc6: $7a
	ld d, b                                          ; $6bc7: $50
	jp c, $d980                                      ; $6bc8: $da $80 $d9

	jr nc, jr_054_6ba6                               ; $6bcb: $30 $d9

	db $10                                           ; $6bcd: $10
	pop af                                           ; $6bce: $f1
	reti                                             ; $6bcf: $d9


	dec d                                            ; $6bd0: $15
	reti                                             ; $6bd1: $d9


	jr jr_054_6ba5                                   ; $6bd2: $18 $d1

	add b                                            ; $6bd4: $80
	sbc [hl]                                         ; $6bd5: $9e
	ld d, h                                          ; $6bd6: $54
	ld c, b                                          ; $6bd7: $48
	ld h, b                                          ; $6bd8: $60
	ld d, h                                          ; $6bd9: $54
	nop                                              ; $6bda: $00
	sbc $77                                          ; $6bdb: $de $77
	sbc b                                            ; $6bdd: $98
	ld h, [hl]                                       ; $6bde: $66
	dec h                                            ; $6bdf: $25
	ld d, l                                          ; $6be0: $55
	ld d, l                                          ; $6be1: $55
	ld d, [hl]                                       ; $6be2: $56
	ld h, [hl]                                       ; $6be3: $66
	ld h, [hl]                                       ; $6be4: $66
	ld [hl], a                                       ; $6be5: $77
	or $9c                                           ; $6be6: $f6 $9c
	ld h, d                                          ; $6be8: $62
	ld [hl+], a                                      ; $6be9: $22
	dec h                                            ; $6bea: $25
	ld l, a                                          ; $6beb: $6f
	or $9a                                           ; $6bec: $f6 $9a
	halt                                             ; $6bee: $76
	ld h, [hl]                                       ; $6bef: $66
	ld [hl+], a                                      ; $6bf0: $22
	ld [hl+], a                                      ; $6bf1: $22
	ld h, $73                                        ; $6bf2: $26 $73
	or $7f                                           ; $6bf4: $f6 $7f
	db $eb                                           ; $6bf6: $eb
	sbc l                                            ; $6bf7: $9d
	ld h, e                                          ; $6bf8: $63
	dec h                                            ; $6bf9: $25
	sbc $66                                          ; $6bfa: $de $66
	call c, $9c77                                    ; $6bfc: $dc $77 $9c
	ld d, d                                          ; $6bff: $52
	ld d, l                                          ; $6c00: $55
	ld [hl], $67                                     ; $6c01: $36 $67
	or $9d                                           ; $6c03: $f6 $9d
	ld [hl+], a                                      ; $6c05: $22
	inc hl                                           ; $6c06: $23
	ld [hl], e                                       ; $6c07: $73
	or $9a                                           ; $6c08: $f6 $9a
	ld [hl], d                                       ; $6c0a: $72
	ld d, [hl]                                       ; $6c0b: $56
	ld d, l                                          ; $6c0c: $55
	ld b, h                                          ; $6c0d: $44
	inc sp                                           ; $6c0e: $33
	db $db                                           ; $6c0f: $db
	ld [hl], a                                       ; $6c10: $77
	sub e                                            ; $6c11: $93
	ld h, $44                                        ; $6c12: $26 $44
	ld b, h                                          ; $6c14: $44
	scf                                              ; $6c15: $37
	ld [hl], a                                       ; $6c16: $77
	ld [hl], a                                       ; $6c17: $77
	inc sp                                           ; $6c18: $33
	ld [hl], $33                                     ; $6c19: $36 $33
	inc sp                                           ; $6c1b: $33
	ld [hl], $64                                     ; $6c1c: $36 $64
	ld [hl], e                                       ; $6c1e: $73
	or $dd                                           ; $6c1f: $f6 $dd
	inc sp                                           ; $6c21: $33
	sbc l                                            ; $6c22: $9d
	ld h, [hl]                                       ; $6c23: $66
	ld b, [hl]                                       ; $6c24: $46
	ld a, e                                          ; $6c25: $7b
	ldh [c], a                                       ; $6c26: $e2
	call c, $9e33                                    ; $6c27: $dc $33 $9e
	ld [hl], $77                                     ; $6c2a: $36 $77
	or $3d                                           ; $6c2c: $f6 $3d
	adc d                                            ; $6c2e: $8a
	rst SubAFromDE                                          ; $6c2f: $df
	rst $38                                          ; $6c30: $ff
	sbc c                                            ; $6c31: $99
	cp $fc                                           ; $6c32: $fe $fc
	push de                                          ; $6c34: $d5
	db $e4                                           ; $6c35: $e4
	ldh a, [c]                                       ; $6c36: $f2
	pop af                                           ; $6c37: $f1
	cp $99                                           ; $6c38: $fe $99
	add d                                            ; $6c3a: $82
	ld [$fdfb], a                                    ; $6c3b: $ea $fb $fd
	cp $80                                           ; $6c3e: $fe $80
	db $fd                                           ; $6c40: $fd
	sbc l                                            ; $6c41: $9d
	add b                                            ; $6c42: $80
	rra                                              ; $6c43: $1f
	ld a, [$e080]                                    ; $6c44: $fa $80 $e0
	rst $38                                          ; $6c47: $ff
	rra                                              ; $6c48: $1f
	rrca                                             ; $6c49: $0f
	ld b, $04                                        ; $6c4a: $06 $04
	dec bc                                           ; $6c4c: $0b
	ld [hl-], a                                      ; $6c4d: $32
	rlca                                             ; $6c4e: $07
	rrca                                             ; $6c4f: $0f
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	ld bc, $0603                                     ; $6c52: $01 $03 $06
	rrca                                             ; $6c55: $0f
	rst $38                                          ; $6c56: $ff
	rst FarCall                                          ; $6c57: $f7
	sbc $3f                                          ; $6c58: $de $3f
	ld c, a                                          ; $6c5a: $4f
	and a                                            ; $6c5b: $a7
	rla                                              ; $6c5c: $17
	and a                                            ; $6c5d: $a7
	ld c, a                                          ; $6c5e: $4f
	rst $38                                          ; $6c5f: $ff
	ccf                                              ; $6c60: $3f
	rst $38                                          ; $6c61: $ff
	cp a                                             ; $6c62: $bf
	rra                                              ; $6c63: $1f
	rrca                                             ; $6c64: $0f
	adc a                                            ; $6c65: $8f
	rra                                              ; $6c66: $1f
	cp a                                             ; $6c67: $bf
	rst $38                                          ; $6c68: $ff
	ld [hl], b                                       ; $6c69: $70
	cp a                                             ; $6c6a: $bf

Jump_054_6c6b:
	rst SubAFromDE                                          ; $6c6b: $df
	rst AddAOntoHL                                          ; $6c6c: $ef
	rst $38                                          ; $6c6d: $ff
	rst FarCall                                          ; $6c6e: $f7
	rst $38                                          ; $6c6f: $ff
	rst $38                                          ; $6c70: $ff
	add b                                            ; $6c71: $80
	ret nz                                           ; $6c72: $c0

	ldh [$f0], a                                     ; $6c73: $e0 $f0
	ldh a, [$de]                                     ; $6c75: $f0 $de
	ld hl, sp-$71                                    ; $6c77: $f8 $8f
	ret nz                                           ; $6c79: $c0

	db $10                                           ; $6c7a: $10
	ret z                                            ; $6c7b: $c8

	db $e4                                           ; $6c7c: $e4
	ld a, [$fcf9]                                    ; $6c7d: $fa $f9 $fc
	db $fc                                           ; $6c80: $fc
	ccf                                              ; $6c81: $3f
	rrca                                             ; $6c82: $0f
	rlca                                             ; $6c83: $07
	inc bc                                           ; $6c84: $03
	ld bc, $0100                                     ; $6c85: $01 $00 $01
	ld bc, $d9f9                                     ; $6c88: $01 $f9 $d9
	rst $38                                          ; $6c8b: $ff
	rst SubAFromDE                                          ; $6c8c: $df
	ld bc, $03de                                     ; $6c8d: $01 $de $03
	sbc $07                                          ; $6c90: $de $07
	ld a, e                                          ; $6c92: $7b
	adc b                                            ; $6c93: $88
	rst SubAFromDE                                          ; $6c94: $df
	cp $de                                           ; $6c95: $fe $de
	db $fc                                           ; $6c97: $fc
	add b                                            ; $6c98: $80
	ld h, b                                          ; $6c99: $60
	ldh [$d0], a                                     ; $6c9a: $e0 $d0
	add c                                            ; $6c9c: $81
	db $e3                                           ; $6c9d: $e3
	db $e3                                           ; $6c9e: $e3
	ld h, [hl]                                       ; $6c9f: $66
	ld h, [hl]                                       ; $6ca0: $66
	sbc b                                            ; $6ca1: $98
	db $10                                           ; $6ca2: $10
	jr nz, jr_054_6d05                               ; $6ca3: $20 $60

	ld b, b                                          ; $6ca5: $40
	ld b, b                                          ; $6ca6: $40
	pop bc                                           ; $6ca7: $c1
	pop bc                                           ; $6ca8: $c1
	db $10                                           ; $6ca9: $10
	ld [bc], a                                       ; $6caa: $02
	push bc                                          ; $6cab: $c5
	add c                                            ; $6cac: $81
	jr z, jr_054_6ccf                                ; $6cad: $28 $20

	ld d, b                                          ; $6caf: $50
	ld b, b                                          ; $6cb0: $40
	ld c, $3c                                        ; $6cb1: $0e $3c
	jr c, jr_054_6d2d                                ; $6cb3: $38 $78

	ldh a, [$f0]                                     ; $6cb5: $f0 $f0
	ldh [hDisp0_SCX], a                                     ; $6cb7: $e0 $84
	ldh [$66], a                                     ; $6cb9: $e0 $66
	call z, $3098                                    ; $6cbb: $cc $98 $30
	ld [hl+], a                                      ; $6cbe: $22
	ld b, b                                          ; $6cbf: $40
	ld b, c                                          ; $6cc0: $41
	pop bc                                           ; $6cc1: $c1
	ld bc, $0703                                     ; $6cc2: $01 $03 $07
	ld c, $1c                                        ; $6cc5: $0e $1c
	inc a                                            ; $6cc7: $3c
	jr c, jr_054_6d02                                ; $6cc8: $38 $38

	ccf                                              ; $6cca: $3f
	ld d, a                                          ; $6ccb: $57
	ld a, [hl]                                       ; $6ccc: $7e
	db $ec                                           ; $6ccd: $ec
	ret c                                            ; $6cce: $d8

jr_054_6ccf:
	sub b                                            ; $6ccf: $90
	ld sp, $c021                                     ; $6cd0: $31 $21 $c0
	add b                                            ; $6cd3: $80
	ld a, e                                          ; $6cd4: $7b
	xor $9c                                          ; $6cd5: $ee $9c
	rrca                                             ; $6cd7: $0f
	ld c, $1e                                        ; $6cd8: $0e $1e
	ld a, e                                          ; $6cda: $7b
	ld d, b                                          ; $6cdb: $50
	sbc c                                            ; $6cdc: $99
	ld bc, $0402                                     ; $6cdd: $01 $02 $04
	ld [$7f09], sp                                   ; $6ce0: $08 $09 $7f
	sbc $ff                                          ; $6ce3: $de $ff
	sub e                                            ; $6ce5: $93
	rst SubAFromDE                                          ; $6ce6: $df
	cp [hl]                                          ; $6ce7: $be
	dec a                                            ; $6ce8: $3d
	ld a, a                                          ; $6ce9: $7f
	nop                                              ; $6cea: $00
	ld bc, $0671                                     ; $6ceb: $01 $71 $06
	rlca                                             ; $6cee: $07
	ld a, $ff                                        ; $6cef: $3e $ff
	ldh a, [$de]                                     ; $6cf1: $f0 $de
	rst $38                                          ; $6cf3: $ff
	sub c                                            ; $6cf4: $91
	adc a                                            ; $6cf5: $8f
	ccf                                              ; $6cf6: $3f
	rst $38                                          ; $6cf7: $ff
	jp $c400                                         ; $6cf8: $c3 $00 $c4


	ld [bc], a                                       ; $6cfb: $02
	pop hl                                           ; $6cfc: $e1
	jr @-$3a                                         ; $6cfd: $18 $c4

	ld [hl-], a                                      ; $6cff: $32
	adc c                                            ; $6d00: $89
	ret                                              ; $6d01: $c9


jr_054_6d02:
	cp $de                                           ; $6d02: $fe $de
	rst $38                                          ; $6d04: $ff

jr_054_6d05:
	add b                                            ; $6d05: $80
	rst SubAFromBC                                          ; $6d06: $e7
	ei                                               ; $6d07: $fb
	db $dd                                           ; $6d08: $dd
	ld l, l                                          ; $6d09: $6d
	ld c, [hl]                                       ; $6d0a: $4e
	ld a, a                                          ; $6d0b: $7f
	cp a                                             ; $6d0c: $bf
	or a                                             ; $6d0d: $b7
	rst AddAOntoHL                                          ; $6d0e: $ef
	ld l, a                                          ; $6d0f: $6f
	db $eb                                           ; $6d10: $eb
	xor e                                            ; $6d11: $ab
	ld sp, $1010                                     ; $6d12: $31 $10 $10
	sbc b                                            ; $6d15: $98
	sbc b                                            ; $6d16: $98
	ret c                                            ; $6d17: $d8

	ld a, h                                          ; $6d18: $7c
	ld a, h                                          ; $6d19: $7c
	push de                                          ; $6d1a: $d5
	or [hl]                                          ; $6d1b: $b6
	ld l, a                                          ; $6d1c: $6f
	rst SubAFromDE                                          ; $6d1d: $df
	db $db                                           ; $6d1e: $db
	dec sp                                           ; $6d1f: $3b
	scf                                              ; $6d20: $37
	cpl                                              ; $6d21: $2f
	cp e                                             ; $6d22: $bb
	reti                                             ; $6d23: $d9


	ret c                                            ; $6d24: $d8

	sub [hl]                                         ; $6d25: $96
	ld l, b                                          ; $6d26: $68
	ld l, h                                          ; $6d27: $6c
	db $ec                                           ; $6d28: $ec
	db $ec                                           ; $6d29: $ec
	db $f4                                           ; $6d2a: $f4
	ld c, h                                          ; $6d2b: $4c
	xor h                                            ; $6d2c: $ac

jr_054_6d2d:
	and h                                            ; $6d2d: $a4
	sub h                                            ; $6d2e: $94
	sbc $54                                          ; $6d2f: $de $54
	sbc h                                            ; $6d31: $9c
	dec hl                                           ; $6d32: $2b
	ld hl, sp-$08                                    ; $6d33: $f8 $f8
	call c, $9efc                                    ; $6d35: $dc $fc $9e
	cp $f2                                           ; $6d38: $fe $f2
	sbc [hl]                                         ; $6d3a: $9e
	ret nz                                           ; $6d3b: $c0

	pop af                                           ; $6d3c: $f1
	call c, $9cf8                                    ; $6d3d: $dc $f8 $9c
	ldh a, [$f3]                                     ; $6d40: $f0 $f3
	add sp, -$25                                     ; $6d42: $e8 $db
	rst $38                                          ; $6d44: $ff
	sbc e                                            ; $6d45: $9b
	db $fc                                           ; $6d46: $fc
	ldh a, [$c0]                                     ; $6d47: $f0 $c0
	ccf                                              ; $6d49: $3f
	db $fc                                           ; $6d4a: $fc
	sbc h                                            ; $6d4b: $9c
	add b                                            ; $6d4c: $80
	ccf                                              ; $6d4d: $3f
	ret nz                                           ; $6d4e: $c0

	db $dd                                           ; $6d4f: $dd
	rst $38                                          ; $6d50: $ff
	sbc e                                            ; $6d51: $9b
	nop                                              ; $6d52: $00
	ld a, a                                          ; $6d53: $7f
	ld [hl], a                                       ; $6d54: $77
	add a                                            ; $6d55: $87
	ld a, d                                          ; $6d56: $7a
	ld hl, sp-$65                                    ; $6d57: $f8 $9b
	jr jr_054_6d62                                   ; $6d59: $18 $07

	ld bc, $778f                                     ; $6d5b: $01 $8f $77
	ld e, a                                          ; $6d5e: $5f
	sbc [hl]                                         ; $6d5f: $9e
	ldh [rOCPS], a                                   ; $6d60: $e0 $6a

jr_054_6d62:
	ld sp, hl                                        ; $6d62: $f9
	ld a, a                                          ; $6d63: $7f
	cp c                                             ; $6d64: $b9
	ld l, e                                          ; $6d65: $6b
	ld hl, sp+$7f                                    ; $6d66: $f8 $7f
	ld e, [hl]                                       ; $6d68: $5e
	sbc $ff                                          ; $6d69: $de $ff
	sbc d                                            ; $6d6b: $9a
	ldh a, [rLCDC]                                   ; $6d6c: $f0 $40
	ccf                                              ; $6d6e: $3f
	rra                                              ; $6d6f: $1f
	rst $38                                          ; $6d70: $ff
	sbc $f8                                          ; $6d71: $de $f8
	ld a, [hl]                                       ; $6d73: $7e
	cp h                                             ; $6d74: $bc
	ld a, e                                          ; $6d75: $7b
	pop hl                                           ; $6d76: $e1
	ld a, a                                          ; $6d77: $7f
	or h                                             ; $6d78: $b4
	ld a, a                                          ; $6d79: $7f
	db $db                                           ; $6d7a: $db
	ld a, d                                          ; $6d7b: $7a
	adc c                                            ; $6d7c: $89
	sbc [hl]                                         ; $6d7d: $9e
	ldh a, [$7b]                                     ; $6d7e: $f0 $7b
	inc hl                                           ; $6d80: $23
	ld a, a                                          ; $6d81: $7f
	pop hl                                           ; $6d82: $e1
	ld a, a                                          ; $6d83: $7f
	jp hl                                            ; $6d84: $e9


	ld a, a                                          ; $6d85: $7f
	db $fc                                           ; $6d86: $fc
	rst $38                                          ; $6d87: $ff
	sbc e                                            ; $6d88: $9b
	ld b, b                                          ; $6d89: $40
	jr c, @+$09                                      ; $6d8a: $38 $07

	cp $77                                           ; $6d8c: $fe $77
	rst JumpTable                                          ; $6d8e: $c7
	sbc [hl]                                         ; $6d8f: $9e
	add b                                            ; $6d90: $80
	ld a, d                                          ; $6d91: $7a
	res 2, a                                         ; $6d92: $cb $97
	rst $38                                          ; $6d94: $ff
	rlca                                             ; $6d95: $07
	rlca                                             ; $6d96: $07
	ld e, $06                                        ; $6d97: $1e $06
	ld b, $fc                                        ; $6d99: $06 $fc
	ld b, $7a                                        ; $6d9b: $06 $7a
	push bc                                          ; $6d9d: $c5
	sbc h                                            ; $6d9e: $9c
	push hl                                          ; $6d9f: $e5
	dec b                                            ; $6da0: $05
	db $fd                                           ; $6da1: $fd
	sbc $ff                                          ; $6da2: $de $ff
	sub [hl]                                         ; $6da4: $96
	ld h, [hl]                                       ; $6da5: $66
	ld l, h                                          ; $6da6: $6c
	ld l, h                                          ; $6da7: $6c
	ld a, h                                          ; $6da8: $7c
	db $fc                                           ; $6da9: $fc
	ld hl, sp-$08                                    ; $6daa: $f8 $f8
	ret c                                            ; $6dac: $d8

	pop bc                                           ; $6dad: $c1
	db $dd                                           ; $6dae: $dd
	jp $c7df                                         ; $6daf: $c3 $df $c7


	sbc c                                            ; $6db2: $99
	rst SubAFromBC                                          ; $6db3: $e7
	ld b, b                                          ; $6db4: $40
	ld h, c                                          ; $6db5: $61
	xor c                                            ; $6db6: $a9
	adc c                                            ; $6db7: $89
	adc d                                            ; $6db8: $8a
	sbc $9a                                          ; $6db9: $de $9a
	sbc [hl]                                         ; $6dbb: $9e
	ldh [$de], a                                     ; $6dbc: $e0 $de
	ret nz                                           ; $6dbe: $c0

	db $dd                                           ; $6dbf: $dd
	pop bc                                           ; $6dc0: $c1
	sub h                                            ; $6dc1: $94
	adc b                                            ; $6dc2: $88
	nop                                              ; $6dc3: $00
	ld b, $10                                        ; $6dc4: $06 $10
	nop                                              ; $6dc6: $00
	ld [$0109], sp                                   ; $6dc7: $08 $09 $01
	ld [hl], b                                       ; $6dca: $70
	ldh a, [$f0]                                     ; $6dcb: $f0 $f0
	db $dd                                           ; $6dcd: $dd
	db $e4                                           ; $6dce: $e4
	sub [hl]                                         ; $6dcf: $96
	db $ec                                           ; $6dd0: $ec
	ld h, d                                          ; $6dd1: $62
	ld b, d                                          ; $6dd2: $42
	ld b, h                                          ; $6dd3: $44
	call nz, $9981                                   ; $6dd4: $c4 $81 $99
	sbc d                                            ; $6dd7: $9a
	ld a, [de]                                       ; $6dd8: $1a
	halt                                             ; $6dd9: $76
	or h                                             ; $6dda: $b4
	sub d                                            ; $6ddb: $92
	ld a, b                                          ; $6ddc: $78
	ld [hl], b                                       ; $6ddd: $70
	ld [hl], c                                       ; $6dde: $71
	pop af                                           ; $6ddf: $f1
	inc de                                           ; $6de0: $13
	rla                                              ; $6de1: $17
	ld l, $2e                                        ; $6de2: $2e $2e
	inc l                                            ; $6de4: $2c
	ld e, b                                          ; $6de5: $58
	ld e, b                                          ; $6de6: $58
	cp b                                             ; $6de7: $b8
	ld a, [hl]                                       ; $6de8: $7e
	ld a, e                                          ; $6de9: $7b
	cp e                                             ; $6dea: $bb
	ld a, a                                          ; $6deb: $7f
	add h                                            ; $6dec: $84
	rst SubAFromDE                                          ; $6ded: $df
	ldh a, [rBGP]                                    ; $6dee: $f0 $47
	rra                                              ; $6df0: $1f
	sub d                                            ; $6df1: $92
	inc h                                            ; $6df2: $24
	inc [hl]                                         ; $6df3: $34
	ld [hl], $36                                     ; $6df4: $36 $36
	ld a, [hl]                                       ; $6df6: $7e
	ld a, a                                          ; $6df7: $7f
	ld a, a                                          ; $6df8: $7f
	rst $38                                          ; $6df9: $ff
	ld a, $1e                                        ; $6dfa: $3e $1e
	rra                                              ; $6dfc: $1f
	dec de                                           ; $6dfd: $1b
	dec bc                                           ; $6dfe: $0b

Call_054_6dff:
	sbc $09                                          ; $6dff: $de $09
	adc [hl]                                         ; $6e01: $8e
	ld a, [$fad6]                                    ; $6e02: $fa $d6 $fa
	db $ed                                           ; $6e05: $ed
	xor $a4                                          ; $6e06: $ee $a4
	call nz, $bde3                                   ; $6e08: $c4 $e3 $bd
	cp l                                             ; $6e0b: $bd
	sub a                                            ; $6e0c: $97
	sbc e                                            ; $6e0d: $9b
	sbc c                                            ; $6e0e: $99
	call c, $fffe                                    ; $6e0f: $dc $fe $ff
	ld e, $de                                        ; $6e12: $1e $de
	inc d                                            ; $6e14: $14
	sbc d                                            ; $6e15: $9a
	sub h                                            ; $6e16: $94
	ld [hl], h                                       ; $6e17: $74
	inc d                                            ; $6e18: $14
	db $ec                                           ; $6e19: $ec
	push af                                          ; $6e1a: $f5
	call c, $9cff                                    ; $6e1b: $dc $ff $9c
	ld a, a                                          ; $6e1e: $7f
	rra                                              ; $6e1f: $1f
	ld a, [hl+]                                      ; $6e20: $2a
	sbc $2b                                          ; $6e21: $de $2b
	db $dd                                           ; $6e23: $dd
	add hl, hl                                       ; $6e24: $29
	rst SubAFromDE                                          ; $6e25: $df
	cp $6b                                           ; $6e26: $fe $6b
	dec e                                            ; $6e28: $1d
	sbc h                                            ; $6e29: $9c
	ld h, b                                          ; $6e2a: $60
	add e                                            ; $6e2b: $83
	db $fc                                           ; $6e2c: $fc
	db $dd                                           ; $6e2d: $dd
	rst $38                                          ; $6e2e: $ff
	sbc e                                            ; $6e2f: $9b
	ld a, $81                                        ; $6e30: $3e $81
	ld a, h                                          ; $6e32: $7c
	inc bc                                           ; $6e33: $03
	ld a, [$189d]                                    ; $6e34: $fa $9d $18
	pop hl                                           ; $6e37: $e1
	ld a, e                                          ; $6e38: $7b
	db $e4                                           ; $6e39: $e4
	sbc d                                            ; $6e3a: $9a
	nop                                              ; $6e3b: $00
	ldh a, [rIF]                                     ; $6e3c: $f0 $0f
	ldh [rAUD3HIGH], a                               ; $6e3e: $e0 $1e
	ld a, c                                          ; $6e40: $79
	ldh [c], a                                       ; $6e41: $e2
	sbc h                                            ; $6e42: $9c
	add d                                            ; $6e43: $82
	ld [bc], a                                       ; $6e44: $02
	ld [bc], a                                       ; $6e45: $02
	cp $7f                                           ; $6e46: $fe $7f
	rst FarCall                                          ; $6e48: $f7
	ld a, [hl]                                       ; $6e49: $7e
	rra                                              ; $6e4a: $1f
	db $dd                                           ; $6e4b: $dd
	ld bc, $92ff                                     ; $6e4c: $01 $ff $92
	ld a, a                                          ; $6e4f: $7f
	rst GetHLinHL                                          ; $6e50: $cf
	ret c                                            ; $6e51: $d8

	inc de                                           ; $6e52: $13
	rlca                                             ; $6e53: $07
	cpl                                              ; $6e54: $2f
	cpl                                              ; $6e55: $2f
	ld c, a                                          ; $6e56: $4f
	add b                                            ; $6e57: $80
	ccf                                              ; $6e58: $3f
	ccf                                              ; $6e59: $3f
	cp a                                             ; $6e5a: $bf
	cp a                                             ; $6e5b: $bf
	sbc $9f                                          ; $6e5c: $de $9f
	ld a, [hl]                                       ; $6e5e: $7e
	xor l                                            ; $6e5f: $ad
	ld a, e                                          ; $6e60: $7b
	dec b                                            ; $6e61: $05
	sbc h                                            ; $6e62: $9c
	db $fc                                           ; $6e63: $fc
	jp $d8bf                                         ; $6e64: $c3 $bf $d8


	rst $38                                          ; $6e67: $ff
	ld a, e                                          ; $6e68: $7b
	pop af                                           ; $6e69: $f1
	sbc e                                            ; $6e6a: $9b
	cp $01                                           ; $6e6b: $fe $01
	cp $22                                           ; $6e6d: $fe $22
	jp c, $9dff                                      ; $6e6f: $da $ff $9d

	rst FarCall                                          ; $6e72: $f7
	add b                                            ; $6e73: $80
	halt                                             ; $6e74: $76

Jump_054_6e75:
	call c, $ff9d                                    ; $6e75: $dc $9d $ff
	dec sp                                           ; $6e78: $3b
	ld l, e                                          ; $6e79: $6b
	ldh a, [$9d]                                     ; $6e7a: $f0 $9d
	and $22                                          ; $6e7c: $e6 $22
	ld a, d                                          ; $6e7e: $7a
	call c, $809b                                    ; $6e7f: $dc $9b $80
	ld a, a                                          ; $6e82: $7f
	rst JumpTable                                          ; $6e83: $c7
	ld [bc], a                                       ; $6e84: $02
	ld a, c                                          ; $6e85: $79
	ld l, [hl]                                       ; $6e86: $6e
	db $dd                                           ; $6e87: $dd
	rst $38                                          ; $6e88: $ff
	sbc l                                            ; $6e89: $9d
	ld b, d                                          ; $6e8a: $42
	or a                                             ; $6e8b: $b7
	ld a, d                                          ; $6e8c: $7a
	and c                                            ; $6e8d: $a1
	ld a, [hl]                                       ; $6e8e: $7e
	or a                                             ; $6e8f: $b7
	sbc l                                            ; $6e90: $9d
	or $22                                           ; $6e91: $f6 $22
	ld l, a                                          ; $6e93: $6f
	ldh [hDisp1_WY], a                                     ; $6e94: $e0 $95
	ld [hl], a                                       ; $6e96: $77
	ld l, d                                          ; $6e97: $6a
	xor d                                            ; $6e98: $aa
	cp $fe                                           ; $6e99: $fe $fe
	ld e, $ef                                        ; $6e9b: $1e $ef
	rst AddAOntoHL                                          ; $6e9d: $ef

jr_054_6e9e:
	cpl                                              ; $6e9e: $2f
	ccf                                              ; $6e9f: $3f
	ld a, e                                          ; $6ea0: $7b
	add sp, $77                                      ; $6ea1: $e8 $77
	ld d, c                                          ; $6ea3: $51
	rst SubAFromDE                                          ; $6ea4: $df
	cp a                                             ; $6ea5: $bf
	rst SubAFromDE                                          ; $6ea6: $df
	ld hl, sp-$21                                    ; $6ea7: $f8 $df
	add sp, -$75                                     ; $6ea9: $e8 $8b
	db $fc                                           ; $6eab: $fc
	db $f4                                           ; $6eac: $f4
	db $fc                                           ; $6ead: $fc
	ld a, [$e7e7]                                    ; $6eae: $fa $e7 $e7
	rst FarCall                                          ; $6eb1: $f7
	rst FarCall                                          ; $6eb2: $f7
	di                                               ; $6eb3: $f3
	ei                                               ; $6eb4: $fb
	ei                                               ; $6eb5: $fb
	db $fd                                           ; $6eb6: $fd
	sbc h                                            ; $6eb7: $9c
	db $fc                                           ; $6eb8: $fc
	ld a, h                                          ; $6eb9: $7c
	ld e, h                                          ; $6eba: $5c
	ld e, b                                          ; $6ebb: $58

Call_054_6ebc:
	jr c, jr_054_6ef6                                ; $6ebc: $38 $38

	jr z, jr_054_6e9e                                ; $6ebe: $28 $de

	jp $e39e                                         ; $6ec0: $c3 $9e $e3


	sbc $e7                                          ; $6ec3: $de $e7
	sub [hl]                                         ; $6ec5: $96
	rst FarCall                                          ; $6ec6: $f7
	ld bc, $3531                                     ; $6ec7: $01 $31 $35
	scf                                              ; $6eca: $37
	ld h, $26                                        ; $6ecb: $26 $26
	inc h                                            ; $6ecd: $24
	ld [hl-], a                                      ; $6ece: $32
	db $dd                                           ; $6ecf: $dd
	db $ec                                           ; $6ed0: $ec
	rst SubAFromDE                                          ; $6ed1: $df
	db $fd                                           ; $6ed2: $fd
	rst SubAFromDE                                          ; $6ed3: $df
	rst $38                                          ; $6ed4: $ff
	sbc [hl]                                         ; $6ed5: $9e
	ld a, [de]                                       ; $6ed6: $1a
	sbc $2c                                          ; $6ed7: $de $2c
	sbc d                                            ; $6ed9: $9a
	jr z, jr_054_6f05                                ; $6eda: $28 $29

	add hl, de                                       ; $6edc: $19
	add hl, de                                       ; $6edd: $19
	pop af                                           ; $6ede: $f1
	sbc $f3                                          ; $6edf: $de $f3
	db $dd                                           ; $6ee1: $dd
	rst FarCall                                          ; $6ee2: $f7
	sub a                                            ; $6ee3: $97
	add sp, -$20                                     ; $6ee4: $e8 $e0
	db $ec                                           ; $6ee6: $ec
	rst FarCall                                          ; $6ee7: $f7
	xor $6f                                          ; $6ee8: $ee $6f
	rst SubAFromDE                                          ; $6eea: $df
	cp a                                             ; $6eeb: $bf
	sbc $b0                                          ; $6eec: $de $b0
	sbc d                                            ; $6eee: $9a
	xor a                                            ; $6eef: $af
	or c                                             ; $6ef0: $b1
	or b                                             ; $6ef1: $b0
	jr nc, jr_054_6f04                               ; $6ef2: $30 $10

	ld a, e                                          ; $6ef4: $7b
	inc [hl]                                         ; $6ef5: $34

jr_054_6ef6:
	sbc h                                            ; $6ef6: $9c
	ld de, $f3fc                                     ; $6ef7: $11 $fc $f3
	ld a, d                                          ; $6efa: $7a
	dec [hl]                                         ; $6efb: $35
	halt                                             ; $6efc: $76
	ld a, [hl-]                                      ; $6efd: $3a
	ld a, h                                          ; $6efe: $7c
	jp z, $0a76                                      ; $6eff: $ca $76 $0a

	ld a, a                                          ; $6f02: $7f
	sbc c                                            ; $6f03: $99

jr_054_6f04:
	ld a, a                                          ; $6f04: $7f

jr_054_6f05:
	ldh a, [rPCM12]                                  ; $6f05: $f0 $76
	jr c, jr_054_6f86                                ; $6f07: $38 $7d

	db $eb                                           ; $6f09: $eb
	ld a, a                                          ; $6f0a: $7f
	inc [hl]                                         ; $6f0b: $34
	sub [hl]                                         ; $6f0c: $96
	nop                                              ; $6f0d: $00
	or c                                             ; $6f0e: $b1
	sbc b                                            ; $6f0f: $98
	adc h                                            ; $6f10: $8c
	adc [hl]                                         ; $6f11: $8e
	adc a                                            ; $6f12: $8f
	call z, $c8c8                                    ; $6f13: $cc $c8 $c8
	call c, $deff                                    ; $6f16: $dc $ff $de
	cp a                                             ; $6f19: $bf
	sbc b                                            ; $6f1a: $98
	jp wCharTilesDataDest                                         ; $6f1b: $c3 $fc $d7


	ld d, l                                          ; $6f1e: $55
	or l                                             ; $6f1f: $b5
	push de                                          ; $6f20: $d5
	ld a, l                                          ; $6f21: $7d
	ld a, e                                          ; $6f22: $7b
	ld a, [hl-]                                      ; $6f23: $3a
	db $db                                           ; $6f24: $db
	rst $38                                          ; $6f25: $ff
	sbc h                                            ; $6f26: $9c
	add hl, hl                                       ; $6f27: $29
	jp hl                                            ; $6f28: $e9


	db $fd                                           ; $6f29: $fd
	call c, $d429                                    ; $6f2a: $dc $29 $d4
	rst $38                                          ; $6f2d: $ff
	sbc h                                            ; $6f2e: $9c
	or a                                             ; $6f2f: $b7
	db $fd                                           ; $6f30: $fd
	or a                                             ; $6f31: $b7

jr_054_6f32:
	db $fc                                           ; $6f32: $fc
	sbc h                                            ; $6f33: $9c
	ld c, b                                          ; $6f34: $48
	ld [bc], a                                       ; $6f35: $02
	ld c, b                                          ; $6f36: $48
	db $db                                           ; $6f37: $db
	rst $38                                          ; $6f38: $ff
	sbc l                                            ; $6f39: $9d
	ld a, a                                          ; $6f3a: $7f
	rst SubAFromDE                                          ; $6f3b: $df
	ei                                               ; $6f3c: $fb
	sbc l                                            ; $6f3d: $9d
	add b                                            ; $6f3e: $80
	jr nz, jr_054_6f32                               ; $6f3f: $20 $f1

	rst SubAFromDE                                          ; $6f41: $df
	ld c, a                                          ; $6f42: $4f
	sbc l                                            ; $6f43: $9d
	ld b, a                                          ; $6f44: $47
	rst SubAFromHL                                          ; $6f45: $d7
	sbc $07                                          ; $6f46: $de $07
	sbc [hl]                                         ; $6f48: $9e
	dec hl                                           ; $6f49: $2b
	sbc $9f                                          ; $6f4a: $de $9f
	sbc [hl]                                         ; $6f4c: $9e
	rrca                                             ; $6f4d: $0f
	sbc $4f                                          ; $6f4e: $de $4f
	sub d                                            ; $6f50: $92
	ld b, a                                          ; $6f51: $47
	and d                                            ; $6f52: $a2
	xor b                                            ; $6f53: $a8
	and l                                            ; $6f54: $a5
	and l                                            ; $6f55: $a5
	pop de                                           ; $6f56: $d1
	rst SubAFromHL                                          ; $6f57: $d7
	db $d3                                           ; $6f58: $d3
	db $d3                                           ; $6f59: $d3
	db $e3                                           ; $6f5a: $e3
	db $ed                                           ; $6f5b: $ed
	db $ed                                           ; $6f5c: $ed
	push af                                          ; $6f5d: $f5
	ld [hl], a                                       ; $6f5e: $77
	ld c, a                                          ; $6f5f: $4f
	add b                                            ; $6f60: $80
	ld a, [hl+]                                      ; $6f61: $2a
	ld l, l                                          ; $6f62: $6d
	ld h, l                                          ; $6f63: $65
	ld de, $3635                                     ; $6f64: $11 $35 $36
	adc d                                            ; $6f67: $8a
	cp a                                             ; $6f68: $bf
	dec hl                                           ; $6f69: $2b
	ld l, l                                          ; $6f6a: $6d
	ld [hl], l                                       ; $6f6b: $75
	inc de                                           ; $6f6c: $13
	or l                                             ; $6f6d: $b5
	or [hl]                                          ; $6f6e: $b6
	adc d                                            ; $6f6f: $8a
	rst $38                                          ; $6f70: $ff
	ld l, [hl]                                       ; $6f71: $6e
	ld l, [hl]                                       ; $6f72: $6e
	ld [de], a                                       ; $6f73: $12
	ld [hl], $b7                                     ; $6f74: $36 $b7
	or c                                             ; $6f76: $b1
	cp a                                             ; $6f77: $bf
	rst $38                                          ; $6f78: $ff
	ld l, [hl]                                       ; $6f79: $6e
	ld a, [hl]                                       ; $6f7a: $7e
	ld [hl-], a                                      ; $6f7b: $32
	ld [hl], a                                       ; $6f7c: $77
	or a                                             ; $6f7d: $b7
	cp c                                             ; $6f7e: $b9
	cp a                                             ; $6f7f: $bf
	ld a, [hl]                                       ; $6f80: $7e
	xor a                                            ; $6f81: $af
	ld a, [hl]                                       ; $6f82: $7e
	ld a, [$5b8d]                                    ; $6f83: $fa $8d $5b

jr_054_6f86:
	dec de                                           ; $6f86: $1b
	sbc e                                            ; $6f87: $9b
	rst $38                                          ; $6f88: $ff
	ret nz                                           ; $6f89: $c0

	rst FarCall                                          ; $6f8a: $f7
	rst FarCall                                          ; $6f8b: $f7
	ei                                               ; $6f8c: $fb
	ld a, e                                          ; $6f8d: $7b
	ld e, e                                          ; $6f8e: $5b
	cp e                                             ; $6f8f: $bb
	rst $38                                          ; $6f90: $ff
	rst $38                                          ; $6f91: $ff
	and h                                            ; $6f92: $a4
	dec d                                            ; $6f93: $15
	push de                                          ; $6f94: $d5
	dec d                                            ; $6f95: $15
	sub e                                            ; $6f96: $93
	ld a, d                                          ; $6f97: $7a
	cp h                                             ; $6f98: $bc
	sbc e                                            ; $6f99: $9b
	xor [hl]                                         ; $6f9a: $ae
	ld [hl], l                                       ; $6f9b: $75
	push de                                          ; $6f9c: $d5
	ld d, l                                          ; $6f9d: $55
	ld a, e                                          ; $6f9e: $7b
	pop af                                           ; $6f9f: $f1
	sub l                                            ; $6fa0: $95
	rst $38                                          ; $6fa1: $ff
	ld d, a                                          ; $6fa2: $57
	ld d, a                                          ; $6fa3: $57
	ld e, a                                          ; $6fa4: $5f
	ld e, e                                          ; $6fa5: $5b
	dec sp                                           ; $6fa6: $3b
	di                                               ; $6fa7: $f3
	rrca                                             ; $6fa8: $0f
	rst $38                                          ; $6fa9: $ff
	rst SubAFromDE                                          ; $6faa: $df
	sbc $5f                                          ; $6fab: $de $5f
	halt                                             ; $6fad: $76
	ld l, e                                          ; $6fae: $6b
	ld a, [hl]                                       ; $6faf: $7e
	add $9d                                          ; $6fb0: $c6 $9d
	ld sp, hl                                        ; $6fb2: $f9
	ld a, [$fbde]                                    ; $6fb3: $fa $de $fb
	sbc [hl]                                         ; $6fb6: $9e
	ld a, [$ffde]                                    ; $6fb7: $fa $de $ff
	sbc [hl]                                         ; $6fba: $9e
	db $fd                                           ; $6fbb: $fd
	db $dd                                           ; $6fbc: $dd
	db $fc                                           ; $6fbd: $fc
	sub a                                            ; $6fbe: $97
	jr jr_054_6fd1                                   ; $6fbf: $18 $10

	jr jr_054_6fcf                                   ; $6fc1: $18 $0c

	ld c, h                                          ; $6fc3: $4c
	ld h, $15                                        ; $6fc4: $26 $15
	dec hl                                           ; $6fc6: $2b
	ld l, [hl]                                       ; $6fc7: $6e
	ld a, a                                          ; $6fc8: $7f
	sub l                                            ; $6fc9: $95
	cp a                                             ; $6fca: $bf
	sbc [hl]                                         ; $6fcb: $9e
	ld [hl-], a                                      ; $6fcc: $32
	ld [hl-], a                                      ; $6fcd: $32
	add hl, sp                                       ; $6fce: $39

jr_054_6fcf:
	add hl, sp                                       ; $6fcf: $39
	inc d                                            ; $6fd0: $14

jr_054_6fd1:
	inc d                                            ; $6fd1: $14
	ld [de], a                                       ; $6fd2: $12
	adc c                                            ; $6fd3: $89
	reti                                             ; $6fd4: $d9


	rst $38                                          ; $6fd5: $ff
	rst SubAFromDE                                          ; $6fd6: $df
	ld de, $1999                                     ; $6fd7: $11 $99 $19
	add hl, bc                                       ; $6fda: $09
	adc c                                            ; $6fdb: $89
	adc l                                            ; $6fdc: $8d
	ld b, l                                          ; $6fdd: $45
	ld h, a                                          ; $6fde: $67
	reti                                             ; $6fdf: $d9


	rst $38                                          ; $6fe0: $ff
	sbc d                                            ; $6fe1: $9a
	xor [hl]                                         ; $6fe2: $ae
	sbc l                                            ; $6fe3: $9d
	adc l                                            ; $6fe4: $8d
	adc h                                            ; $6fe5: $8c
	call nz, $c0de                                   ; $6fe6: $c4 $de $c0
	sbc l                                            ; $6fe9: $9d
	ld de, $7503                                     ; $6fea: $11 $03 $75
	ld hl, sp-$01                                    ; $6fed: $f8 $ff
	ld a, a                                          ; $6fef: $7f
	ld a, a                                          ; $6ff0: $7f
	add b                                            ; $6ff1: $80
	ld b, e                                          ; $6ff2: $43
	ld e, a                                          ; $6ff3: $5f
	ld l, $24                                        ; $6ff4: $2e $24
	ld de, $ff33                                     ; $6ff6: $11 $33 $ff
	db $e3                                           ; $6ff9: $e3
	ld b, e                                          ; $6ffa: $43
	ld l, a                                          ; $6ffb: $6f
	ld a, a                                          ; $6ffc: $7f
	add hl, sp                                       ; $6ffd: $39
	dec de                                           ; $6ffe: $1b
	ld c, $cb                                        ; $6fff: $0e $cb
	rst FarCall                                          ; $7001: $f7
	ld a, e                                          ; $7002: $7b
	sbc a                                            ; $7003: $9f
	sbc a                                            ; $7004: $9f
	ld a, a                                          ; $7005: $7f
	rst $38                                          ; $7006: $ff
	cp $fc                                           ; $7007: $fe $fc
	ld sp, hl                                        ; $7009: $f9
	cp l                                             ; $700a: $bd
	or c                                             ; $700b: $b1
	and c                                            ; $700c: $a1
	ld bc, $0301                                     ; $700d: $01 $01 $03
	ret z                                            ; $7010: $c8

	rst SubAFromDE                                          ; $7011: $df
	ld e, h                                          ; $7012: $5c
	sbc c                                            ; $7013: $99
	ld d, h                                          ; $7014: $54
	call nc, $c8dc                                   ; $7015: $d4 $dc $c8
	ret z                                            ; $7018: $c8

	cp a                                             ; $7019: $bf
	sbc $bb                                          ; $701a: $de $bb
	sbc c                                            ; $701c: $99
	dec sp                                           ; $701d: $3b
	inc sp                                           ; $701e: $33
	scf                                              ; $701f: $37
	scf                                              ; $7020: $37
	rla                                              ; $7021: $17
	ld [hl-], a                                      ; $7022: $32
	sbc $2a                                          ; $7023: $de $2a
	sbc h                                            ; $7025: $9c
	ld l, l                                          ; $7026: $6d
	ld d, l                                          ; $7027: $55
	ld d, l                                          ; $7028: $55
	reti                                             ; $7029: $d9


	rst $38                                          ; $702a: $ff
	sub l                                            ; $702b: $95
	dec hl                                           ; $702c: $2b
	ld [$323b], a                                    ; $702d: $ea $3b $32
	dec [hl]                                         ; $7030: $35
	ld [hl], $d5                                     ; $7031: $36 $d5
	sub $fe                                          ; $7033: $d6 $fe
	rst $38                                          ; $7035: $ff
	ld a, e                                          ; $7036: $7b
	cp $90                                           ; $7037: $fe $90
	db $fd                                           ; $7039: $fd
	ld a, [hl]                                       ; $703a: $7e
	ld a, l                                          ; $703b: $7d
	xor $bb                                          ; $703c: $ee $bb
	ld e, [hl]                                       ; $703e: $5e
	xor e                                            ; $703f: $ab
	ld d, l                                          ; $7040: $55
	xor d                                            ; $7041: $aa
	ld d, l                                          ; $7042: $55
	xor d                                            ; $7043: $aa
	ld de, $a144                                     ; $7044: $11 $44 $a1
	ld d, h                                          ; $7047: $54
	ld a, e                                          ; $7048: $7b
	ld sp, hl                                        ; $7049: $f9
	adc [hl]                                         ; $704a: $8e
	ld d, l                                          ; $704b: $55
	rst FarCall                                          ; $704c: $f7
	cp [hl]                                          ; $704d: $be
	rst SubAFromHL                                          ; $704e: $d7
	cp [hl]                                          ; $704f: $be
	ld l, e                                          ; $7050: $6b
	cp [hl]                                          ; $7051: $be
	ld d, l                                          ; $7052: $55
	xor d                                            ; $7053: $aa
	ld [$2841], sp                                   ; $7054: $08 $41 $28
	ld b, c                                          ; $7057: $41
	sub h                                            ; $7058: $94
	ld b, c                                          ; $7059: $41
	xor d                                            ; $705a: $aa
	ld d, l                                          ; $705b: $55
	pop af                                           ; $705c: $f1
	sub [hl]                                         ; $705d: $96
	ld l, e                                          ; $705e: $6b
	dec bc                                           ; $705f: $0b
	inc bc                                           ; $7060: $03
	inc de                                           ; $7061: $13
	rla                                              ; $7062: $17
	dec d                                            ; $7063: $15
	dec d                                            ; $7064: $15
	inc de                                           ; $7065: $13
	rlca                                             ; $7066: $07
	sbc $27                                          ; $7067: $de $27
	sbc b                                            ; $7069: $98
	inc hl                                           ; $706a: $23
	inc bc                                           ; $706b: $03
	inc bc                                           ; $706c: $03
	ld bc, $cfdf                                     ; $706d: $01 $df $cf
	ldh [$d3], a                                     ; $7070: $e0 $d3
	rst $38                                          ; $7072: $ff
	sbc [hl]                                         ; $7073: $9e
	ldh [$62], a                                     ; $7074: $e0 $62
	ld d, l                                          ; $7076: $55
	call c, $9eff                                    ; $7077: $dc $ff $9e
	ret nz                                           ; $707a: $c0

	ld [hl], b                                       ; $707b: $70
	dec a                                            ; $707c: $3d
	rst SubAFromHL                                          ; $707d: $d7
	rst $38                                          ; $707e: $ff
	ld c, e                                          ; $707f: $4b
	pop af                                           ; $7080: $f1
	inc bc                                           ; $7081: $03
	rst $38                                          ; $7082: $ff
	ld a, b                                          ; $7083: $78
	scf                                              ; $7084: $37
	rst SubAFromDE                                          ; $7085: $df
	db $fc                                           ; $7086: $fc
	ld a, b                                          ; $7087: $78
	ldh a, [$73]                                     ; $7088: $f0 $73
	ld sp, hl                                        ; $708a: $f9
	sbc $fe                                          ; $708b: $de $fe
	sub e                                            ; $708d: $93
	daa                                              ; $708e: $27
	rlca                                             ; $708f: $07
	ld b, $46                                        ; $7090: $06 $46
	sub d                                            ; $7092: $92
	or d                                             ; $7093: $b2
	or d                                             ; $7094: $b2
	or e                                             ; $7095: $b3
	sbc [hl]                                         ; $7096: $9e
	sbc l                                            ; $7097: $9d
	sbc h                                            ; $7098: $9c
	sbc h                                            ; $7099: $9c
	db $dd                                           ; $709a: $dd
	ld c, [hl]                                       ; $709b: $4e
	add b                                            ; $709c: $80
	adc $e6                                          ; $709d: $ce $e6
	ld [hl], $1f                                     ; $709f: $36 $1f
	rrca                                             ; $70a1: $0f
	rlca                                             ; $70a2: $07
	inc bc                                           ; $70a3: $03
	nop                                              ; $70a4: $00
	ld a, c                                          ; $70a5: $79
	inc a                                            ; $70a6: $3c
	inc e                                            ; $70a7: $1c
	inc c                                            ; $70a8: $0c
	ld b, $03                                        ; $70a9: $06 $03
	ld bc, $a700                                     ; $70ab: $01 $00 $a7
	push af                                          ; $70ae: $f5
	ld e, l                                          ; $70af: $5d
	ld c, $1f                                        ; $70b0: $0e $1f
	ld c, $80                                        ; $70b2: $0e $80
	cpl                                              ; $70b4: $2f
	rst $38                                          ; $70b5: $ff
	ld e, a                                          ; $70b6: $5f
	ld c, $06                                        ; $70b7: $0e $06
	dec de                                           ; $70b9: $1b
	ld [$9a00], sp                                   ; $70ba: $08 $00 $9a
	rra                                              ; $70bd: $1f
	ret nz                                           ; $70be: $c0

	ret nz                                           ; $70bf: $c0

	ldh [$60], a                                     ; $70c0: $e0 $60
	ld a, c                                          ; $70c2: $79
	adc d                                            ; $70c3: $8a
	sbc h                                            ; $70c4: $9c
	ld h, b                                          ; $70c5: $60
	nop                                              ; $70c6: $00
	add b                                            ; $70c7: $80
	ld [hl], l                                       ; $70c8: $75
	adc l                                            ; $70c9: $8d
	ld a, a                                          ; $70ca: $7f
	ld a, [$8079]                                    ; $70cb: $fa $79 $80
	ld a, [hl]                                       ; $70ce: $7e
	db $db                                           ; $70cf: $db
	sbc h                                            ; $70d0: $9c
	inc bc                                           ; $70d1: $03
	rlca                                             ; $70d2: $07
	rlca                                             ; $70d3: $07
	ld sp, hl                                        ; $70d4: $f9
	sbc l                                            ; $70d5: $9d
	ld a, [hl]                                       ; $70d6: $7e
	cp $77                                           ; $70d7: $fe $77
	sbc [hl]                                         ; $70d9: $9e
	rst SubAFromDE                                          ; $70da: $df
	ld hl, sp-$22                                    ; $70db: $f8 $de
	inc bc                                           ; $70dd: $03
	sbc $06                                          ; $70de: $de $06
	add e                                            ; $70e0: $83
	ld c, $0c                                        ; $70e1: $0e $0c
	ret c                                            ; $70e3: $d8

	ld c, b                                          ; $70e4: $48
	ld [$89a8], sp                                   ; $70e5: $08 $a8 $89
	sbc c                                            ; $70e8: $99
	ld d, c                                          ; $70e9: $51
	ld d, e                                          ; $70ea: $53
	daa                                              ; $70eb: $27
	daa                                              ; $70ec: $27
	ld h, a                                          ; $70ed: $67
	ld b, a                                          ; $70ee: $47
	ld b, [hl]                                       ; $70ef: $46
	ld b, [hl]                                       ; $70f0: $46
	adc [hl]                                         ; $70f1: $8e
	adc h                                            ; $70f2: $8c
	ld e, e                                          ; $70f3: $5b
	xor d                                            ; $70f4: $aa
	xor e                                            ; $70f5: $ab
	xor e                                            ; $70f6: $ab
	rst SubAFromHL                                          ; $70f7: $d7
	ld d, [hl]                                       ; $70f8: $56
	ld e, a                                          ; $70f9: $5f
	xor a                                            ; $70fa: $af
	rst $38                                          ; $70fb: $ff
	ld a, a                                          ; $70fc: $7f
	sbc $7e                                          ; $70fd: $de $7e
	adc b                                            ; $70ff: $88
	db $fd                                           ; $7100: $fd

Call_054_7101:
	push af                                          ; $7101: $f5
	pop af                                           ; $7102: $f1
	ld sp, hl                                        ; $7103: $f9
	db $fc                                           ; $7104: $fc
	pop af                                           ; $7105: $f1
	ldh a, [$e0]                                     ; $7106: $f0 $e0
	ldh [$c0], a                                     ; $7108: $e0 $c0
	ret nz                                           ; $710a: $c0

	ld e, [hl]                                       ; $710b: $5e
	ld e, e                                          ; $710c: $5b
	ld e, [hl]                                       ; $710d: $5e
	cp a                                             ; $710e: $bf
	cp a                                             ; $710f: $bf
	xor a                                            ; $7110: $af
	ld c, a                                          ; $7111: $4f
	ld c, a                                          ; $7112: $4f
	add l                                            ; $7113: $85
	ld [$0520], sp                                   ; $7114: $08 $20 $05
	db $fd                                           ; $7117: $fd
	sbc h                                            ; $7118: $9c
	ld a, d                                          ; $7119: $7a
	rst FarCall                                          ; $711a: $f7
	rst SubAFromDE                                          ; $711b: $df
	halt                                             ; $711c: $76
	inc e                                            ; $711d: $1c
	sbc c                                            ; $711e: $99
	rst $38                                          ; $711f: $ff
	ld d, l                                          ; $7120: $55
	xor d                                            ; $7121: $aa
	dec d                                            ; $7122: $15
	ld [bc], a                                       ; $7123: $02
	ld c, b                                          ; $7124: $48
	ld a, b                                          ; $7125: $78
	ld d, b                                          ; $7126: $50
	ld a, [hl]                                       ; $7127: $7e
	add $9c                                          ; $7128: $c6 $9c
	ld [$b7fd], a                                    ; $712a: $ea $fd $b7
	ld a, d                                          ; $712d: $7a
	sbc h                                            ; $712e: $9c
	pop af                                           ; $712f: $f1
	sbc e                                            ; $7130: $9b
	inc de                                           ; $7131: $13
	dec bc                                           ; $7132: $0b
	ld a, [bc]                                       ; $7133: $0a
	ld a, [bc]                                       ; $7134: $0a
	sbc $09                                          ; $7135: $de $09
	sbc [hl]                                         ; $7137: $9e
	dec b                                            ; $7138: $05
	ld l, h                                          ; $7139: $6c
	ld [hl-], a                                      ; $713a: $32
	ld a, d                                          ; $713b: $7a
	jr nc, jr_054_71b1                               ; $713c: $30 $73

	dec de                                           ; $713e: $1b
	sbc [hl]                                         ; $713f: $9e
	cp $70                                           ; $7140: $fe $70
	ld hl, sp-$21                                    ; $7142: $f8 $df
	rst $38                                          ; $7144: $ff
	sbc [hl]                                         ; $7145: $9e
	pop hl                                           ; $7146: $e1
	call c, $9dff                                    ; $7147: $dc $ff $9d
	db $fc                                           ; $714a: $fc
	ld a, l                                          ; $714b: $7d
	jp c, $9cff                                      ; $714c: $da $ff $9c

jr_054_714f:
	add e                                            ; $714f: $83
	rst $38                                          ; $7150: $ff
	add b                                            ; $7151: $80
	sbc $ff                                          ; $7152: $de $ff
	sbc d                                            ; $7154: $9a
	ld hl, sp-$0d                                    ; $7155: $f8 $f3
	rst $38                                          ; $7157: $ff
	db $fd                                           ; $7158: $fd
	ld l, l                                          ; $7159: $6d
	db $dd                                           ; $715a: $dd
	rst $38                                          ; $715b: $ff
	sbc h                                            ; $715c: $9c
	rrca                                             ; $715d: $0f
	cp $03                                           ; $715e: $fe $03
	ld [hl], c                                       ; $7160: $71
	inc hl                                           ; $7161: $23
	sbc e                                            ; $7162: $9b
	db $fc                                           ; $7163: $fc
	rst $38                                          ; $7164: $ff
	or b                                             ; $7165: $b0
	add [hl]                                         ; $7166: $86
	db $dd                                           ; $7167: $dd
	rst $38                                          ; $7168: $ff
	ld a, c                                          ; $7169: $79
	sbc c                                            ; $716a: $99
	ld [hl], a                                       ; $716b: $77
	ret z                                            ; $716c: $c8

	sbc d                                            ; $716d: $9a
	ret nz                                           ; $716e: $c0

	scf                                              ; $716f: $37
	push hl                                          ; $7170: $e5
	rra                                              ; $7171: $1f
	rst SubAFromDE                                          ; $7172: $df
	rst SubAFromHL                                          ; $7173: $d7
	rst $38                                          ; $7174: $ff
	sbc c                                            ; $7175: $99
	add e                                            ; $7176: $83
	ld a, a                                          ; $7177: $7f
	rst $38                                          ; $7178: $ff
	ld e, $da                                        ; $7179: $1e $da
	ld l, b                                          ; $717b: $68
	db $db                                           ; $717c: $db
	rst $38                                          ; $717d: $ff
	sbc l                                            ; $717e: $9d
	db $fc                                           ; $717f: $fc
	ldh a, [rPCM34]                                  ; $7180: $f0 $77
	and l                                            ; $7182: $a5
	sbc [hl]                                         ; $7183: $9e
	add c                                            ; $7184: $81
	ld a, e                                          ; $7185: $7b
	ld a, [bc]                                       ; $7186: $0a
	call c, $feff                                    ; $7187: $dc $ff $fe
	adc a                                            ; $718a: $8f
	or c                                             ; $718b: $b1
	cp c                                             ; $718c: $b9
	sbc b                                            ; $718d: $98
	ret c                                            ; $718e: $d8

	add sp, $38                                      ; $718f: $e8 $38
	ld b, $03                                        ; $7191: $06 $03
	ld c, a                                          ; $7193: $4f
	ld b, a                                          ; $7194: $47
	ld h, a                                          ; $7195: $67
	daa                                              ; $7196: $27
	rst FarCall                                          ; $7197: $f7
	ccf                                              ; $7198: $3f
	rlca                                             ; $7199: $07
	ld bc, $e87a                                     ; $719a: $01 $7a $e8
	sbc d                                            ; $719d: $9a
	ld b, b                                          ; $719e: $40
	jr nz, jr_054_71d1                               ; $719f: $20 $30

	jr z, jr_054_714f                                ; $71a1: $28 $ac

	ld a, d                                          ; $71a3: $7a
	push hl                                          ; $71a4: $e5
	ld a, [hl]                                       ; $71a5: $7e
	sub $9b                                          ; $71a6: $d6 $9b
	ldh a, [$f8]                                     ; $71a8: $f0 $f8
	db $fc                                           ; $71aa: $fc
	ld sp, $3fde                                     ; $71ab: $31 $de $3f
	rst SubAFromDE                                          ; $71ae: $df
	rra                                              ; $71af: $1f
	rst SubAFromDE                                          ; $71b0: $df

jr_054_71b1:
	rrca                                             ; $71b1: $0f
	add a                                            ; $71b2: $87
	ld a, b                                          ; $71b3: $78
	ld a, a                                          ; $71b4: $7f
	inc a                                            ; $71b5: $3c
	jr jr_054_71d0                                   ; $71b6: $18 $18

	ld [$070c], sp                                   ; $71b8: $08 $0c $07
	or b                                             ; $71bb: $b0
	ld hl, sp-$08                                    ; $71bc: $f8 $f8
	ldh a, [$e0]                                     ; $71be: $f0 $e0
	ret nz                                           ; $71c0: $c0

	add b                                            ; $71c1: $80
	nop                                              ; $71c2: $00
	ld a, b                                          ; $71c3: $78
	ld hl, sp+$30                                    ; $71c4: $f8 $30
	jr nz, jr_054_71e8                               ; $71c6: $20 $20

	ld b, b                                          ; $71c8: $40
	add b                                            ; $71c9: $80
	nop                                              ; $71ca: $00
	sbc $0f                                          ; $71cb: $de $0f
	rst SubAFromDE                                          ; $71cd: $df
	rra                                              ; $71ce: $1f
	rst SubAFromDE                                          ; $71cf: $df

jr_054_71d0:
	ccf                                              ; $71d0: $3f

jr_054_71d1:
	sbc [hl]                                         ; $71d1: $9e
	ld a, a                                          ; $71d2: $7f
	ld a, [$019d]                                    ; $71d3: $fa $9d $01
	ld hl, sp-$23                                    ; $71d6: $f8 $dd
	ldh a, [$de]                                     ; $71d8: $f0 $de
	ldh [$80], a                                     ; $71da: $e0 $80
	dec c                                            ; $71dc: $0d
	dec e                                            ; $71dd: $1d
	dec e                                            ; $71de: $1d
	add hl, de                                       ; $71df: $19
	dec sp                                           ; $71e0: $3b
	ld a, d                                          ; $71e1: $7a
	ldh a, [c]                                       ; $71e2: $f2

Call_054_71e3:
	ldh a, [rAUD1LOW]                                ; $71e3: $f0 $13
	sub d                                            ; $71e5: $92
	or a                                             ; $71e6: $b7
	daa                                              ; $71e7: $27

jr_054_71e8:
	dec h                                            ; $71e8: $25
	ld l, $6a                                        ; $71e9: $2e $6a
	ld e, [hl]                                       ; $71eb: $5e
	adc h                                            ; $71ec: $8c
	dec c                                            ; $71ed: $0d
	add hl, bc                                       ; $71ee: $09
	add hl, de                                       ; $71ef: $19
	dec de                                           ; $71f0: $1b
	inc de                                           ; $71f1: $13
	rla                                              ; $71f2: $17
	daa                                              ; $71f3: $27
	or l                                             ; $71f4: $b5
	or [hl]                                          ; $71f5: $b6
	ld e, [hl]                                       ; $71f6: $5e
	ld l, d                                          ; $71f7: $6a
	xor l                                            ; $71f8: $ad
	call $83df                                       ; $71f9: $cd $df $83
	or a                                             ; $71fc: $b7
	db $eb                                           ; $71fd: $eb
	db $eb                                           ; $71fe: $eb
	db $e3                                           ; $71ff: $e3
	rst SubAFromHL                                          ; $7200: $d7
	rst SubAFromHL                                          ; $7201: $d7
	or a                                             ; $7202: $b7
	and a                                            ; $7203: $a7
	rst AddAOntoHL                                          ; $7204: $ef
	ld b, e                                          ; $7205: $43
	jp $e2c3                                         ; $7206: $c3 $c3 $e2


	push hl                                          ; $7209: $e5
	pop hl                                           ; $720a: $e1
	ldh [$e1], a                                     ; $720b: $e0 $e1
	call nz, $e4e4                                   ; $720d: $c4 $e4 $e4
	push hl                                          ; $7210: $e5
	ldh [c], a                                       ; $7211: $e2
	ldh [c], a                                       ; $7212: $e2
	di                                               ; $7213: $f3
	ldh a, [c]                                       ; $7214: $f2
	add b                                            ; $7215: $80
	ldh a, [$fe]                                     ; $7216: $f0 $fe
	ld a, b                                          ; $7218: $78
	ld d, d                                          ; $7219: $52
	ld a, h                                          ; $721a: $7c
	ld a, $9d                                        ; $721b: $3e $9d
	ld a, a                                          ; $721d: $7f
	rrca                                             ; $721e: $0f
	ld a, e                                          ; $721f: $7b
	ld [hl], l                                       ; $7220: $75
	ld a, h                                          ; $7221: $7c
	ld d, d                                          ; $7222: $52
	ld a, [hl]                                       ; $7223: $7e
	push bc                                          ; $7224: $c5
	rst $38                                          ; $7225: $ff
	sbc l                                            ; $7226: $9d
	ret nz                                           ; $7227: $c0

	ld hl, sp+$69                                    ; $7228: $f8 $69
	push de                                          ; $722a: $d5
	ld h, d                                          ; $722b: $62
	ld e, e                                          ; $722c: $5b
	or $9e                                           ; $722d: $f6 $9e
	dec b                                            ; $722f: $05
	sbc $04                                          ; $7230: $de $04
	sbc $02                                          ; $7232: $de $02
	ld sp, hl                                        ; $7234: $f9
	add b                                            ; $7235: $80
	ld [bc], a                                       ; $7236: $02
	ld [hl], a                                       ; $7237: $77
	db $ed                                           ; $7238: $ed
	cp $fb                                           ; $7239: $fe $fb
	or l                                             ; $723b: $b5
	cp d                                             ; $723c: $ba
	ld a, l                                          ; $723d: $7d
	ld a, a                                          ; $723e: $7f
	ld hl, sp+$77                                    ; $723f: $f8 $77
	ld [hl], l                                       ; $7241: $75
	ld [hl], l                                       ; $7242: $75
	ld a, a                                          ; $7243: $7f
	ld a, a                                          ; $7244: $7f
	ld a, [hl-]                                      ; $7245: $3a
	ld a, [hl-]                                      ; $7246: $3a
	reti                                             ; $7247: $d9


	ld c, a                                          ; $7248: $4f
	dec e                                            ; $7249: $1d
	ld a, a                                          ; $724a: $7f
	or l                                             ; $724b: $b5
	ld e, [hl]                                       ; $724c: $5e
	rst $38                                          ; $724d: $ff
	ei                                               ; $724e: $fb
	ld a, a                                          ; $724f: $7f
	ldh a, [$ef]                                     ; $7250: $f0 $ef
	db $ed                                           ; $7252: $ed
	ld [$82b7], a                                    ; $7253: $ea $b7 $82
	or [hl]                                          ; $7256: $b6
	or h                                             ; $7257: $b4
	or [hl]                                          ; $7258: $b6
	or [hl]                                          ; $7259: $b6
	cp $de                                           ; $725a: $fe $de
	or a                                             ; $725c: $b7
	db $db                                           ; $725d: $db
	db $e4                                           ; $725e: $e4
	ccf                                              ; $725f: $3f
	ret                                              ; $7260: $c9


	ld a, a                                          ; $7261: $7f
	or a                                             ; $7262: $b7
	and c                                            ; $7263: $a1
	ld a, a                                          ; $7264: $7f
	rst $38                                          ; $7265: $ff
	db $db                                           ; $7266: $db
	db $db                                           ; $7267: $db
	rst SubAFromDE                                          ; $7268: $df
	jp c, $ebd3                                      ; $7269: $da $d3 $eb

	ld l, l                                          ; $726c: $6d
	ld bc, $6f6d                                     ; $726d: $01 $6d $6f
	rst $38                                          ; $7270: $ff
	db $fd                                           ; $7271: $fd
	cpl                                              ; $7272: $2f
	db $db                                           ; $7273: $db
	rst $38                                          ; $7274: $ff
	sbc b                                            ; $7275: $98
	dec l                                            ; $7276: $2d
	ld a, a                                          ; $7277: $7f
	ld a, a                                          ; $7278: $7f
	ld d, h                                          ; $7279: $54
	or h                                             ; $727a: $b4
	cp b                                             ; $727b: $b8
	db $fc                                           ; $727c: $fc
	ld [hl], d                                       ; $727d: $72
	ld a, d                                          ; $727e: $7a
	ld a, c                                          ; $727f: $79
	rst FarCall                                          ; $7280: $f7
	sbc [hl]                                         ; $7281: $9e
	ld h, b                                          ; $7282: $60
	ld a, e                                          ; $7283: $7b
	inc d                                            ; $7284: $14
	db $fd                                           ; $7285: $fd
	ld l, e                                          ; $7286: $6b
	ld sp, hl                                        ; $7287: $f9
	db $fd                                           ; $7288: $fd
	ld a, l                                          ; $7289: $7d
	jp nc, $0d7f                                     ; $728a: $d2 $7f $0d

	sbc [hl]                                         ; $728d: $9e
	ccf                                              ; $728e: $3f
	ld h, e                                          ; $728f: $63
	di                                               ; $7290: $f3
	rst SubAFromDE                                          ; $7291: $df
	ld bc, $819e                                     ; $7292: $01 $9e $81
	ld a, d                                          ; $7295: $7a

jr_054_7296:
	rst SubAFromHL                                          ; $7296: $d7
	sbc [hl]                                         ; $7297: $9e
	pop af                                           ; $7298: $f1
	ld h, a                                          ; $7299: $67
	nop                                              ; $729a: $00
	ld a, c                                          ; $729b: $79
	ld h, l                                          ; $729c: $65
	sbc c                                            ; $729d: $99
	rst FarCall                                          ; $729e: $f7
	pop hl                                           ; $729f: $e1
	ret nz                                           ; $72a0: $c0

	add c                                            ; $72a1: $81
	inc bc                                           ; $72a2: $03
	ld a, [hl]                                       ; $72a3: $7e
	ld a, d                                          ; $72a4: $7a
	jp z, $ea7e                                      ; $72a5: $ca $7e $ea

	rst SubAFromDE                                          ; $72a8: $df
	rst $38                                          ; $72a9: $ff
	sub a                                            ; $72aa: $97
	ld [bc], a                                       ; $72ab: $02
	rlca                                             ; $72ac: $07
	jp $f0e0                                         ; $72ad: $c3 $e0 $f0


	rst $38                                          ; $72b0: $ff
	adc a                                            ; $72b1: $8f
	add e                                            ; $72b2: $83
	ld l, [hl]                                       ; $72b3: $6e
	or b                                             ; $72b4: $b0
	sbc l                                            ; $72b5: $9d
	rst $38                                          ; $72b6: $ff
	cp a                                             ; $72b7: $bf
	ld a, e                                          ; $72b8: $7b
	adc $9e                                          ; $72b9: $ce $9e
	rrca                                             ; $72bb: $0f
	ld a, b                                          ; $72bc: $78
	ld h, c                                          ; $72bd: $61
	sbc [hl]                                         ; $72be: $9e
	ret nz                                           ; $72bf: $c0

	ld [hl], a                                       ; $72c0: $77
	push bc                                          ; $72c1: $c5
	sbc [hl]                                         ; $72c2: $9e
	rra                                              ; $72c3: $1f
	ld a, e                                          ; $72c4: $7b
	ldh [$74], a                                     ; $72c5: $e0 $74
	ld d, l                                          ; $72c7: $55
	sbc [hl]                                         ; $72c8: $9e
	ldh a, [$7b]                                     ; $72c9: $f0 $7b
	ldh a, [c]                                       ; $72cb: $f2
	sbc [hl]                                         ; $72cc: $9e
	rlca                                             ; $72cd: $07
	ld [hl], a                                       ; $72ce: $77
	di                                               ; $72cf: $f3
	halt                                             ; $72d0: $76
	ld b, e                                          ; $72d1: $43

Call_054_72d2:
	sbc b                                            ; $72d2: $98
	call nz, $a8ec                                   ; $72d3: $c4 $ec $a8
	adc c                                            ; $72d6: $89
	reti                                             ; $72d7: $d9


	sub e                                            ; $72d8: $93
	inc sp                                           ; $72d9: $33
	ld [hl], l                                       ; $72da: $75
	xor h                                            ; $72db: $ac
	ld a, a                                          ; $72dc: $7f
	adc h                                            ; $72dd: $8c
	rst SubAFromDE                                          ; $72de: $df
	add c                                            ; $72df: $81
	sub h                                            ; $72e0: $94
	ld d, l                                          ; $72e1: $55
	db $dd                                           ; $72e2: $dd
	adc l                                            ; $72e3: $8d
	sbc d                                            ; $72e4: $9a
	sbc d                                            ; $72e5: $9a
	xor d                                            ; $72e6: $aa
	xor h                                            ; $72e7: $ac
	ld d, l                                          ; $72e8: $55
	cpl                                              ; $72e9: $2f
	cpl                                              ; $72ea: $2f
	ld a, a                                          ; $72eb: $7f
	ld [hl], e                                       ; $72ec: $73
	jp nc, $3b96                                     ; $72ed: $d2 $96 $3b

	cpl                                              ; $72f0: $2f
	ld c, a                                          ; $72f1: $4f
	ld e, a                                          ; $72f2: $5f
	ld e, a                                          ; $72f3: $5f
	cp a                                             ; $72f4: $bf
	cp a                                             ; $72f5: $bf
	ld a, a                                          ; $72f6: $7f
	rst AddAOntoHL                                          ; $72f7: $ef
	jp c, $97ff                                      ; $72f8: $da $ff $97

	pop af                                           ; $72fb: $f1
	ldh a, [c]                                       ; $72fc: $f2
	ldh a, [c]                                       ; $72fd: $f2
	pop af                                           ; $72fe: $f1

Call_054_72ff:
	pop af                                           ; $72ff: $f1
	ld sp, hl                                        ; $7300: $f9
	ld hl, sp-$08                                    ; $7301: $f8 $f8
	ld a, e                                          ; $7303: $7b
	ld a, [$f8de]                                    ; $7304: $fa $de $f8
	rst SubAFromDE                                          ; $7307: $df
	db $fc                                           ; $7308: $fc
	add b                                            ; $7309: $80
	ld e, a                                          ; $730a: $5f
	xor l                                            ; $730b: $ad
	ld d, [hl]                                       ; $730c: $56
	xor e                                            ; $730d: $ab
	ld d, [hl]                                       ; $730e: $56
	jr z, jr_054_7296                                ; $730f: $28 $85

	adc d                                            ; $7311: $8a
	and b                                            ; $7312: $a0
	ld d, d                                          ; $7313: $52
	xor c                                            ; $7314: $a9
	ld d, h                                          ; $7315: $54
	xor c                                            ; $7316: $a9
	rst SubAFromHL                                          ; $7317: $d7
	ld a, d                                          ; $7318: $7a
	ld [hl], l                                       ; $7319: $75
	rst $38                                          ; $731a: $ff
	ld a, h                                          ; $731b: $7c
	pop af                                           ; $731c: $f1
	adc d                                            ; $731d: $8a
	dec d                                            ; $731e: $15
	xor d                                            ; $731f: $aa
	ld d, l                                          ; $7320: $55
	adc d                                            ; $7321: $8a
	nop                                              ; $7322: $00
	add e                                            ; $7323: $83
	ld c, $75                                        ; $7324: $0e $75
	ld [$aa55], a                                    ; $7326: $ea $55 $aa
	sbc [hl]                                         ; $7329: $9e
	ld [hl], l                                       ; $732a: $75
	jp hl                                            ; $732b: $e9


	sbc [hl]                                         ; $732c: $9e
	ld [bc], a                                       ; $732d: $02
	ld l, c                                          ; $732e: $69
	ld a, a                                          ; $732f: $7f
	add l                                            ; $7330: $85
	ld e, a                                          ; $7331: $5f
	ld e, b                                          ; $7332: $58
	ld e, a                                          ; $7333: $5f
	ccf                                              ; $7334: $3f
	cp [hl]                                          ; $7335: $be
	cpl                                              ; $7336: $2f
	ld l, l                                          ; $7337: $6d
	ld l, a                                          ; $7338: $6f
	ld a, [hl-]                                      ; $7339: $3a
	ccf                                              ; $733a: $3f
	dec a                                            ; $733b: $3d
	dec e                                            ; $733c: $1d
	dec e                                            ; $733d: $1d
	sbc l                                            ; $733e: $9d
	sbc [hl]                                         ; $733f: $9e
	sbc [hl]                                         ; $7340: $9e
	rla                                              ; $7341: $17
	or $fd                                           ; $7342: $f6 $fd
	and a                                            ; $7344: $a7
	rst $38                                          ; $7345: $ff
	ret c                                            ; $7346: $d8

	dec e                                            ; $7347: $1d
	xor l                                            ; $7348: $ad
	xor $df                                          ; $7349: $ee $df
	sbc $5b                                          ; $734b: $de $5b
	sub l                                            ; $734d: $95
	ld a, a                                          ; $734e: $7f
	rst SubAFromBC                                          ; $734f: $e7
	rst $38                                          ; $7350: $ff
	db $db                                           ; $7351: $db
	db $e3                                           ; $7352: $e3
	dec e                                            ; $7353: $1d
	db $fd                                           ; $7354: $fd
	ld [hl], h                                       ; $7355: $74
	ld h, [hl]                                       ; $7356: $66
	or $79                                           ; $7357: $f6 $79
	or l                                             ; $7359: $b5
	sub e                                            ; $735a: $93
	rst AddAOntoHL                                          ; $735b: $ef
	ld l, a                                          ; $735c: $6f
	ei                                               ; $735d: $fb
	sbc a                                            ; $735e: $9f
	cp a                                             ; $735f: $bf
	add b                                            ; $7360: $80
	add l                                            ; $7361: $85
	ld [hl], $b6                                     ; $7362: $36 $b6
	or [hl]                                          ; $7364: $b6
	db $db                                           ; $7365: $db
	jp c, $ffdc                                      ; $7366: $da $dc $ff

	sub d                                            ; $7369: $92
	call $fd7f                                       ; $736a: $cd $7f $fd
	inc bc                                           ; $736d: $03
	rst $38                                          ; $736e: $ff
	ld e, b                                          ; $736f: $58
	ret c                                            ; $7370: $d8

	ldh a, [$f0]                                     ; $7371: $f0 $f0
	ld b, b                                          ; $7373: $40
	db $10                                           ; $7374: $10
	ldh [$c0], a                                     ; $7375: $e0 $c0
	ld h, l                                          ; $7377: $65
	ld hl, sp+$7a                                    ; $7378: $f8 $7a
	db $ed                                           ; $737a: $ed
	ld a, d                                          ; $737b: $7a
	ret nc                                           ; $737c: $d0

	rst SubAFromDE                                          ; $737d: $df
	rrca                                             ; $737e: $0f
	ld sp, hl                                        ; $737f: $f9
	ld l, c                                          ; $7380: $69
	daa                                              ; $7381: $27
	ld h, b                                          ; $7382: $60
	ld hl, sp-$63                                    ; $7383: $f8 $9d
	ld a, [$7bfc]                                    ; $7385: $fa $fc $7b
	sub $79                                          ; $7388: $d6 $79
	xor a                                            ; $738a: $af
	adc a                                            ; $738b: $8f
	ld [bc], a                                       ; $738c: $02
	ld b, $0c                                        ; $738d: $06 $0c
	inc e                                            ; $738f: $1c
	inc e                                            ; $7390: $1c
	ld a, $7e                                        ; $7391: $3e $7e
	rst $38                                          ; $7393: $ff
	jp nz, Jump_054_4542                             ; $7394: $c2 $42 $45

	ld b, a                                          ; $7397: $47
	ld b, a                                          ; $7398: $47
	rlca                                             ; $7399: $07
	inc bc                                           ; $739a: $03
	ld b, e                                          ; $739b: $43
	sbc $3f                                          ; $739c: $de $3f
	rst SubAFromDE                                          ; $739e: $df
	dec a                                            ; $739f: $3d
	rst SubAFromDE                                          ; $73a0: $df
	ld a, l                                          ; $73a1: $7d
	sbc e                                            ; $73a2: $9b
	dec a                                            ; $73a3: $3d
	sbc a                                            ; $73a4: $9f
	add a                                            ; $73a5: $87
	pop af                                           ; $73a6: $f1
	sbc $7f                                          ; $73a7: $de $7f
	rst SubAFromDE                                          ; $73a9: $df
	rst $38                                          ; $73aa: $ff
	ld a, [hl]                                       ; $73ab: $7e
	jp nz, $80dd                                     ; $73ac: $c2 $dd $80

	rst $38                                          ; $73af: $ff
	ld a, e                                          ; $73b0: $7b
	call nc, $c0de                                   ; $73b1: $d4 $de $c0
	rst SubAFromDE                                          ; $73b4: $df
	ldh [$7a], a                                     ; $73b5: $e0 $7a
	ld a, l                                          ; $73b7: $7d
	ld [hl], c                                       ; $73b8: $71
	ld h, [hl]                                       ; $73b9: $66
	db $dd                                           ; $73ba: $dd
	ld bc, $039e                                     ; $73bb: $01 $9e $03

jr_054_73be:
	sbc $02                                          ; $73be: $de $02
	ld l, h                                          ; $73c0: $6c
	ret                                              ; $73c1: $c9


	rst SubAFromDE                                          ; $73c2: $df
	cp $8c                                           ; $73c3: $fe $8c
	and a                                            ; $73c5: $a7
	daa                                              ; $73c6: $27
	ld h, a                                          ; $73c7: $67
	ld l, a                                          ; $73c8: $6f
	ld c, a                                          ; $73c9: $4f
	sbc $9e                                          ; $73ca: $de $9e
	cp h                                             ; $73cc: $bc
	ld [hl+], a                                      ; $73cd: $22
	ld [hl+], a                                      ; $73ce: $22
	inc h                                            ; $73cf: $24
	ld b, l                                          ; $73d0: $45
	ld c, c                                          ; $73d1: $49
	ld c, e                                          ; $73d2: $4b
	sub e                                            ; $73d3: $93
	sub a                                            ; $73d4: $97
	push de                                          ; $73d5: $d5
	cp $8f                                           ; $73d6: $fe $8f
	ld [hl], e                                       ; $73d8: $73
	ld a, a                                          ; $73d9: $7f
	ld [hl], e                                       ; $73da: $73
	ldh [$78], a                                     ; $73db: $e0 $78
	jr z, jr_054_73be                                ; $73dd: $28 $df

	ld a, a                                          ; $73df: $7f
	ld a, [hl]                                       ; $73e0: $7e
	ld a, e                                          ; $73e1: $7b
	ld [hl], a                                       ; $73e2: $77
	push af                                          ; $73e3: $f5
	ld a, b                                          ; $73e4: $78
	cp c                                             ; $73e5: $b9
	ld [hl], e                                       ; $73e6: $73
	ld a, h                                          ; $73e7: $7c
	sbc h                                            ; $73e8: $9c
	ld hl, sp-$80                                    ; $73e9: $f8 $80
	nop                                              ; $73eb: $00
	halt                                             ; $73ec: $76
	inc d                                            ; $73ed: $14
	ld a, l                                          ; $73ee: $7d
	ret nc                                           ; $73ef: $d0

	ld a, e                                          ; $73f0: $7b
	ld hl, sp-$62                                    ; $73f1: $f8 $9e
	inc bc                                           ; $73f3: $03
	ld a, [$5676]                                    ; $73f4: $fa $76 $56
	sbc e                                            ; $73f7: $9b
	ccf                                              ; $73f8: $3f
	rrca                                             ; $73f9: $0f
	inc bc                                           ; $73fa: $03
	nop                                              ; $73fb: $00
	ld a, b                                          ; $73fc: $78
	or $9e                                           ; $73fd: $f6 $9e
	db $10                                           ; $73ff: $10
	ld sp, hl                                        ; $7400: $f9
	db $dd                                           ; $7401: $dd
	rst $38                                          ; $7402: $ff
	sbc [hl]                                         ; $7403: $9e
	rra                                              ; $7404: $1f
	ld a, b                                          ; $7405: $78
	pop hl                                           ; $7406: $e1
	sub e                                            ; $7407: $93
	nop                                              ; $7408: $00
	jr @+$40                                         ; $7409: $18 $3e

	ld h, e                                          ; $740b: $63
	pop hl                                           ; $740c: $e1
	pop hl                                           ; $740d: $e1
	ldh a, [$f0]                                     ; $740e: $f0 $f0
	nop                                              ; $7410: $00
	jr @+$28                                         ; $7411: $18 $26

	ld b, c                                          ; $7413: $41
	ld [hl], a                                       ; $7414: $77
	ld a, b                                          ; $7415: $78
	ld l, e                                          ; $7416: $6b
	ret nc                                           ; $7417: $d0

	sbc [hl]                                         ; $7418: $9e
	ld hl, sp+$73                                    ; $7419: $f8 $73
	ld hl, sp+$7f                                    ; $741b: $f8 $7f
	ret nc                                           ; $741d: $d0

	add h                                            ; $741e: $84
	jr jr_054_7490                                   ; $741f: $18 $6f

	xor [hl]                                         ; $7421: $ae
	xor a                                            ; $7422: $af
	scf                                              ; $7423: $37
	scf                                              ; $7424: $37
	rla                                              ; $7425: $17
	ld b, a                                          ; $7426: $47
	ld b, a                                          ; $7427: $47
	sbc [hl]                                         ; $7428: $9e
	ld e, a                                          ; $7429: $5f
	ld e, a                                          ; $742a: $5f
	ld c, a                                          ; $742b: $4f
	ld c, a                                          ; $742c: $4f
	ld l, a                                          ; $742d: $6f
	ccf                                              ; $742e: $3f
	ccf                                              ; $742f: $3f
	cp a                                             ; $7430: $bf
	ld a, a                                          ; $7431: $7f
	rst $38                                          ; $7432: $ff
	ld hl, sp+$07                                    ; $7433: $f8 $07
	ld a, a                                          ; $7435: $7f
	ld a, a                                          ; $7436: $7f
	cp a                                             ; $7437: $bf
	ldh [$9f], a                                     ; $7438: $e0 $9f
	reti                                             ; $743a: $d9


	rst $38                                          ; $743b: $ff
	sbc l                                            ; $743c: $9d
	ldh [$1f], a                                     ; $743d: $e0 $1f
	ld [hl], c                                       ; $743f: $71
	inc sp                                           ; $7440: $33
	reti                                             ; $7441: $d9


	rst $38                                          ; $7442: $ff
	sbc [hl]                                         ; $7443: $9e
	ret nz                                           ; $7444: $c0

	ld [hl], a                                       ; $7445: $77
	or $9d                                           ; $7446: $f6 $9d
	cp $c2                                           ; $7448: $fe $c2
	jp c, Jump_054_7dff                              ; $744a: $da $ff $7d

	rst SubAFromBC                                          ; $744d: $e7
	ld a, e                                          ; $744e: $7b
	jr jr_054_74c2                                   ; $744f: $18 $71

	sub b                                            ; $7451: $90
	ld l, e                                          ; $7452: $6b
	rst FarCall                                          ; $7453: $f7
	sbc $1f                                          ; $7454: $de $1f
	db $dd                                           ; $7456: $dd
	ccf                                              ; $7457: $3f
	ld l, b                                          ; $7458: $68
	and b                                            ; $7459: $a0
	rst SubAFromDE                                          ; $745a: $df
	ld bc, $3b7b                                     ; $745b: $01 $7b $3b
	ld [hl], d                                       ; $745e: $72
	adc $7b                                          ; $745f: $ce $7b
	dec hl                                           ; $7461: $2b
	ld a, c                                          ; $7462: $79
	ld a, c                                          ; $7463: $79
	ld a, a                                          ; $7464: $7f
	db $e4                                           ; $7465: $e4
	sbc l                                            ; $7466: $9d
	inc bc                                           ; $7467: $03
	ccf                                              ; $7468: $3f
	halt                                             ; $7469: $76
	ldh [c], a                                       ; $746a: $e2
	sbc h                                            ; $746b: $9c
	db $fc                                           ; $746c: $fc
	cp $fc                                           ; $746d: $fe $fc
	ld l, e                                          ; $746f: $6b
	ret z                                            ; $7470: $c8

	sub d                                            ; $7471: $92
	ld a, e                                          ; $7472: $7b
	cp e                                             ; $7473: $bb
	sbc d                                            ; $7474: $9a
	jp c, $ffeb                                      ; $7475: $da $eb $ff

	rrca                                             ; $7478: $0f
	rlca                                             ; $7479: $07
	dec b                                            ; $747a: $05
	ld b, l                                          ; $747b: $45
	ld h, l                                          ; $747c: $65
	dec h                                            ; $747d: $25
	inc d                                            ; $747e: $14
	ld [hl], e                                       ; $747f: $73
	ld c, b                                          ; $7480: $48
	rst SubAFromDE                                          ; $7481: $df
	ld a, a                                          ; $7482: $7f
	sbc h                                            ; $7483: $9c
	dec sp                                           ; $7484: $3b
	sbc h                                            ; $7485: $9c
	adc $7b                                          ; $7486: $ce $7b
	inc d                                            ; $7488: $14
	rst SubAFromDE                                          ; $7489: $df
	add b                                            ; $748a: $80
	sbc e                                            ; $748b: $9b
	call nz, $3163                                   ; $748c: $c4 $63 $31
	nop                                              ; $748f: $00

jr_054_7490:
	ld a, d                                          ; $7490: $7a
	pop bc                                           ; $7491: $c1
	rst SubAFromDE                                          ; $7492: $df
	add b                                            ; $7493: $80
	sbc h                                            ; $7494: $9c
	ld b, $1c                                        ; $7495: $06 $1c
	pop hl                                           ; $7497: $e1
	ld [hl], h                                       ; $7498: $74
	ld c, h                                          ; $7499: $4c
	ld a, a                                          ; $749a: $7f
	dec bc                                           ; $749b: $0b
	ld a, a                                          ; $749c: $7f
	ld b, c                                          ; $749d: $41
	ld a, l                                          ; $749e: $7d
	ld h, b                                          ; $749f: $60
	db $dd                                           ; $74a0: $dd
	rlca                                             ; $74a1: $07
	rst SubAFromDE                                          ; $74a2: $df
	rrca                                             ; $74a3: $0f
	sub l                                            ; $74a4: $95
	cp $fd                                           ; $74a5: $fe $fd
	db $fd                                           ; $74a7: $fd
	db $ed                                           ; $74a8: $ed
	sbc l                                            ; $74a9: $9d
	dec a                                            ; $74aa: $3d
	ld a, [$bcfa]                                    ; $74ab: $fa $fa $bc
	ld hl, sp+$77                                    ; $74ae: $f8 $77
	and d                                            ; $74b0: $a2
	ld a, a                                          ; $74b1: $7f
	jp c, $979a                                      ; $74b2: $da $9a $97

	cpl                                              ; $74b5: $2f
	cpl                                              ; $74b6: $2f
	ld e, a                                          ; $74b7: $5f
	ld e, a                                          ; $74b8: $5f
	sbc $7f                                          ; $74b9: $de $7f
	ld a, e                                          ; $74bb: $7b
	sbc l                                            ; $74bc: $9d
	sbc d                                            ; $74bd: $9a
	inc a                                            ; $74be: $3c
	jr c, jr_054_74f1                                ; $74bf: $38 $30

	ld [hl], b                                       ; $74c1: $70

jr_054_74c2:
	ld h, b                                          ; $74c2: $60
	ld [hl], d                                       ; $74c3: $72
	inc sp                                           ; $74c4: $33
	ld a, e                                          ; $74c5: $7b
	jp $cd7b                                         ; $74c6: $c3 $7b $cd


	db $f4                                           ; $74c9: $f4
	ld a, [hl]                                       ; $74ca: $7e
	ld a, l                                          ; $74cb: $7d
	rst SubAFromDE                                          ; $74cc: $df

Call_054_74cd:
	rrca                                             ; $74cd: $0f
	rst SubAFromDE                                          ; $74ce: $df
	rlca                                             ; $74cf: $07
	rst SubAFromDE                                          ; $74d0: $df
	inc bc                                           ; $74d1: $03
	ld sp, hl                                        ; $74d2: $f9
	sbc [hl]                                         ; $74d3: $9e
	ldh a, [$71]                                     ; $74d4: $f0 $71
	ld a, d                                          ; $74d6: $7a
	rst SubAFromDE                                          ; $74d7: $df
	db $fc                                           ; $74d8: $fc
	sbc [hl]                                         ; $74d9: $9e
	db $10                                           ; $74da: $10
	sbc $08                                          ; $74db: $de $08
	sbc $04                                          ; $74dd: $de $04
	sbc [hl]                                         ; $74df: $9e
	dec b                                            ; $74e0: $05
	ld l, b                                          ; $74e1: $68
	jp c, $d06c                                      ; $74e2: $da $6c $d0

	ld a, a                                          ; $74e5: $7f
	ld sp, hl                                        ; $74e6: $f9
	ld a, [hl]                                       ; $74e7: $7e
	di                                               ; $74e8: $f3
	sbc l                                            ; $74e9: $9d
	cp $7f                                           ; $74ea: $fe $7f
	ld a, e                                          ; $74ec: $7b
	call $cf7f                                       ; $74ed: $cd $7f $cf
	sub h                                            ; $74f0: $94

jr_054_74f1:
	ldh a, [$7c]                                     ; $74f1: $f0 $7c
	cp [hl]                                          ; $74f3: $be
	ld e, a                                          ; $74f4: $5f
	xor a                                            ; $74f5: $af
	ld d, a                                          ; $74f6: $57
	xor e                                            ; $74f7: $ab
	ld d, l                                          ; $74f8: $55
	ld a, h                                          ; $74f9: $7c
	ld e, $01                                        ; $74fa: $1e $01
	ld a, d                                          ; $74fc: $7a
	pop bc                                           ; $74fd: $c1
	ld a, [hl]                                       ; $74fe: $7e
	sub b                                            ; $74ff: $90
	ld a, h                                          ; $7500: $7c
	dec sp                                           ; $7501: $3b
	ld a, [hl]                                       ; $7502: $7e
	and h                                            ; $7503: $a4
	ld a, a                                          ; $7504: $7f
	rst FarCall                                          ; $7505: $f7
	rst SubAFromDE                                          ; $7506: $df
	ret nz                                           ; $7507: $c0

	rst SubAFromDE                                          ; $7508: $df
	inc bc                                           ; $7509: $03
	sbc c                                            ; $750a: $99
	add e                                            ; $750b: $83
	di                                               ; $750c: $f3
	ld a, a                                          ; $750d: $7f
	rra                                              ; $750e: $1f
	rlca                                             ; $750f: $07
	inc bc                                           ; $7510: $03
	halt                                             ; $7511: $76
	add $7a                                          ; $7512: $c6 $7a
	ld a, l                                          ; $7514: $7d
	sbc c                                            ; $7515: $99
	nop                                              ; $7516: $00
	cp a                                             ; $7517: $bf
	cp [hl]                                          ; $7518: $be
	pop bc                                           ; $7519: $c1
	rst $38                                          ; $751a: $ff
	ldh a, [$7b]                                     ; $751b: $f0 $7b
	and $da                                          ; $751d: $e6 $da
	rst $38                                          ; $751f: $ff
	ld a, a                                          ; $7520: $7f
	ld a, b                                          ; $7521: $78
	ld a, [hl]                                       ; $7522: $7e
	ld [hl], $9d                                     ; $7523: $36 $9d
	cp a                                             ; $7525: $bf
	cp $73                                           ; $7526: $fe $73
	jr z, @+$80                                      ; $7528: $28 $7e

	push de                                          ; $752a: $d5
	ld a, h                                          ; $752b: $7c
	sub e                                            ; $752c: $93
	ld a, a                                          ; $752d: $7f
	dec c                                            ; $752e: $0d
	adc a                                            ; $752f: $8f
	inc a                                            ; $7530: $3c
	db $f4                                           ; $7531: $f4
	db $fc                                           ; $7532: $fc
	add sp, $10                                      ; $7533: $e8 $10
	jr nc, @+$22                                     ; $7535: $30 $20

jr_054_7537:
	jr nz, jr_054_7537                               ; $7537: $20 $fe

	db $fc                                           ; $7539: $fc
	ld [$f018], sp                                   ; $753a: $08 $18 $f0
	db $10                                           ; $753d: $10
	jr nz, jr_054_7560                               ; $753e: $20 $20

	pop af                                           ; $7540: $f1
	ld [hl], c                                       ; $7541: $71
	jp $077a                                         ; $7542: $c3 $7a $07


	ld [hl], c                                       ; $7545: $71
	ret c                                            ; $7546: $d8

	ld a, [hl]                                       ; $7547: $7e
	call z, $0e9b                                    ; $7548: $cc $9b $0e
	db $e3                                           ; $754b: $e3
	rst GetHLinHL                                          ; $754c: $cf
	sbc a                                            ; $754d: $9f
	halt                                             ; $754e: $76
	adc $9d                                          ; $754f: $ce $9d
	ld a, a                                          ; $7551: $7f
	db $fc                                           ; $7552: $fc
	ld [hl], l                                       ; $7553: $75
	adc e                                            ; $7554: $8b
	ld a, d                                          ; $7555: $7a
	adc $d9                                          ; $7556: $ce $d9
	rst $38                                          ; $7558: $ff
	ld sp, hl                                        ; $7559: $f9
	sbc c                                            ; $755a: $99
	rst JumpTable                                          ; $755b: $c7
	rst FarCall                                          ; $755c: $f7
	rst $38                                          ; $755d: $ff
	rst GetHLinHL                                          ; $755e: $cf
	add e                                            ; $755f: $83

jr_054_7560:
	add c                                            ; $7560: $81
	ld [hl], d                                       ; $7561: $72
	or h                                             ; $7562: $b4
	sbc h                                            ; $7563: $9c
	jr nc, @+$7e                                     ; $7564: $30 $7c

	ld a, [hl]                                       ; $7566: $7e
	ld [hl], a                                       ; $7567: $77
	jp $ffdc                                         ; $7568: $c3 $dc $ff


	ld l, a                                          ; $756b: $6f
	ld b, b                                          ; $756c: $40
	ld a, d                                          ; $756d: $7a
	ld l, c                                          ; $756e: $69
	sbc [hl]                                         ; $756f: $9e
	ld c, $7a                                        ; $7570: $0e $7a
	add d                                            ; $7572: $82
	ld a, a                                          ; $7573: $7f
	rst JumpTable                                          ; $7574: $c7
	sbc l                                            ; $7575: $9d
	ldh a, [$fe]                                     ; $7576: $f0 $fe
	ld [hl], l                                       ; $7578: $75
	xor e                                            ; $7579: $ab
	ld a, a                                          ; $757a: $7f
	or a                                             ; $757b: $b7
	sbc l                                            ; $757c: $9d
	rrca                                             ; $757d: $0f
	ld bc, $0fdc                                     ; $757e: $01 $dc $0f
	rst SubAFromDE                                          ; $7581: $df
	ld c, $9c                                        ; $7582: $0e $9c
	rrca                                             ; $7584: $0f
	ld a, [$dbfa]                                    ; $7585: $fa $fa $db
	ei                                               ; $7588: $fb
	ld [hl], a                                       ; $7589: $77
	xor e                                            ; $758a: $ab
	sbc h                                            ; $758b: $9c
	ld bc, $3807                                     ; $758c: $01 $07 $38
	ld l, e                                          ; $758f: $6b
	ld d, b                                          ; $7590: $50
	sbc e                                            ; $7591: $9b
	db $fd                                           ; $7592: $fd
	pop hl                                           ; $7593: $e1
	ld h, b                                          ; $7594: $60
	ld h, b                                          ; $7595: $60
	db $db                                           ; $7596: $db
	ldh [rPCM12], a                                  ; $7597: $e0 $76
	adc c                                            ; $7599: $89
	ld l, l                                          ; $759a: $6d
	ld a, $f3                                        ; $759b: $3e $f3
	ld a, d                                          ; $759d: $7a
	add hl, sp                                       ; $759e: $39
	ld [hl], h                                       ; $759f: $74
	pop hl                                           ; $75a0: $e1
	sbc [hl]                                         ; $75a1: $9e
	rra                                              ; $75a2: $1f
	ld sp, hl                                        ; $75a3: $f9
	sbc [hl]                                         ; $75a4: $9e
	db $fd                                           ; $75a5: $fd
	jp c, $d9ff                                      ; $75a6: $da $ff $d9

	rlca                                             ; $75a9: $07
	pop de                                           ; $75aa: $d1
	rst $38                                          ; $75ab: $ff
	ld a, l                                          ; $75ac: $7d
	jp $f898                                         ; $75ad: $c3 $98 $f8


	jr nc, @+$32                                     ; $75b0: $30 $30

	cp b                                             ; $75b2: $b8
	cp b                                             ; $75b3: $b8
	ld hl, sp-$42                                    ; $75b4: $f8 $be
	ld l, d                                          ; $75b6: $6a
	ld a, b                                          ; $75b7: $78
	rst SubAFromDE                                          ; $75b8: $df
	ldh a, [$9a]                                     ; $75b9: $f0 $9a
	jr c, jr_054_75d5                                ; $75bb: $38 $18

	inc c                                            ; $75bd: $0c
	ld b, $02                                        ; $75be: $06 $02
	ld hl, sp+$74                                    ; $75c0: $f8 $74
	inc a                                            ; $75c2: $3c
	push af                                          ; $75c3: $f5
	ld a, [hl]                                       ; $75c4: $7e
	and [hl]                                         ; $75c5: $a6
	adc a                                            ; $75c6: $8f
	ld sp, hl                                        ; $75c7: $f9
	ld a, c                                          ; $75c8: $79
	ld a, h                                          ; $75c9: $7c
	ld a, h                                          ; $75ca: $7c
	db $fc                                           ; $75cb: $fc
	cp $20                                           ; $75cc: $fe $20
	db $10                                           ; $75ce: $10
	ld [$050a], sp                                   ; $75cf: $08 $0a $05
	inc b                                            ; $75d2: $04
	ld b, $02                                        ; $75d3: $06 $02

jr_054_75d5:
	inc bc                                           ; $75d5: $03
	inc bc                                           ; $75d6: $03
	ld a, e                                          ; $75d7: $7b
	xor $92                                          ; $75d8: $ee $92
	ld h, c                                          ; $75da: $61
	ld [bc], a                                       ; $75db: $02
	ld [bc], a                                       ; $75dc: $02
	nop                                              ; $75dd: $00
	inc b                                            ; $75de: $04
	inc bc                                           ; $75df: $03
	ld bc, $9901                                     ; $75e0: $01 $01 $99
	ld h, e                                          ; $75e3: $63
	ld [bc], a                                       ; $75e4: $02
	ld b, b                                          ; $75e5: $40
	ld b, b                                          ; $75e6: $40
	ld l, a                                          ; $75e7: $6f
	ld l, e                                          ; $75e8: $6b
	ld h, l                                          ; $75e9: $65
	adc b                                            ; $75ea: $88
	ld a, c                                          ; $75eb: $79
	sbc l                                            ; $75ec: $9d
	sbc [hl]                                         ; $75ed: $9e
	inc bc                                           ; $75ee: $03
	ld a, b                                          ; $75ef: $78
	and h                                            ; $75f0: $a4
	ld h, [hl]                                       ; $75f1: $66
	ldh a, [$9e]                                     ; $75f2: $f0 $9e
	ld bc, $f475                                     ; $75f4: $01 $75 $f4
	ld [hl], a                                       ; $75f7: $77
	ld b, l                                          ; $75f8: $45
	sbc [hl]                                         ; $75f9: $9e
	inc e                                            ; $75fa: $1c
	ld [hl], l                                       ; $75fb: $75
	ei                                               ; $75fc: $fb
	ld a, a                                          ; $75fd: $7f
	push bc                                          ; $75fe: $c5
	sbc [hl]                                         ; $75ff: $9e
	ld hl, sp+$72                                    ; $7600: $f8 $72
	db $10                                           ; $7602: $10
	rst SubAFromDE                                          ; $7603: $df
	inc bc                                           ; $7604: $03
	ld h, e                                          ; $7605: $63
	sbc c                                            ; $7606: $99
	ld b, [hl]                                       ; $7607: $46
	ret nz                                           ; $7608: $c0

	ld [hl], h                                       ; $7609: $74
	ld h, e                                          ; $760a: $63
	sbc e                                            ; $760b: $9b
	ldh a, [$f1]                                     ; $760c: $f0 $f1
	ei                                               ; $760e: $fb
	rst $38                                          ; $760f: $ff
	ld [hl], h                                       ; $7610: $74
	ld h, e                                          ; $7611: $63
	ld a, [hl]                                       ; $7612: $7e
	add sp, -$64                                     ; $7613: $e8 $9c
	inc b                                            ; $7615: $04
	nop                                              ; $7616: $00
	rra                                              ; $7617: $1f
	ld a, e                                          ; $7618: $7b
	or e                                             ; $7619: $b3
	halt                                             ; $761a: $76
	ld a, [hl]                                       ; $761b: $7e
	ld a, a                                          ; $761c: $7f
	db $eb                                           ; $761d: $eb
	ld a, d                                          ; $761e: $7a
	sub b                                            ; $761f: $90
	ld a, e                                          ; $7620: $7b
	or b                                             ; $7621: $b0
	halt                                             ; $7622: $76
	db $eb                                           ; $7623: $eb
	sbc e                                            ; $7624: $9b
	or $f8                                           ; $7625: $f6 $f8
	ld b, e                                          ; $7627: $43
	sbc a                                            ; $7628: $9f
	ld [hl], a                                       ; $7629: $77
	dec b                                            ; $762a: $05
	add b                                            ; $762b: $80
	ld c, $38                                        ; $762c: $0e $38
	ret nz                                           ; $762e: $c0

	add b                                            ; $762f: $80
	ld c, $1c                                        ; $7630: $0e $1c
	ld h, h                                          ; $7632: $64
	adc l                                            ; $7633: $8d
	dec d                                            ; $7634: $15
	xor h                                            ; $7635: $ac
	call nc, $ffec                                   ; $7636: $d4 $ec $ff
	db $fc                                           ; $7639: $fc
	push hl                                          ; $763a: $e5
	add a                                            ; $763b: $87
	cpl                                              ; $763c: $2f
	ld d, a                                          ; $763d: $57
	cpl                                              ; $763e: $2f

jr_054_763f:
	rla                                              ; $763f: $17
	nop                                              ; $7640: $00
	jr c, jr_054_763f                                ; $7641: $38 $fc

	cp h                                             ; $7643: $bc
	ld hl, sp-$40                                    ; $7644: $f8 $c0
	nop                                              ; $7646: $00
	rlca                                             ; $7647: $07
	dec b                                            ; $7648: $05
	dec sp                                           ; $7649: $3b
	push bc                                          ; $764a: $c5
	sbc c                                            ; $764b: $99
	rlca                                             ; $764c: $07
	dec a                                            ; $764d: $3d
	db $eb                                           ; $764e: $eb
	ld d, l                                          ; $764f: $55
	rst $38                                          ; $7650: $ff
	ldh a, [$78]                                     ; $7651: $f0 $78
	ld c, h                                          ; $7653: $4c
	db $dd                                           ; $7654: $dd
	ldh a, [$df]                                     ; $7655: $f0 $df
	add b                                            ; $7657: $80
	sbc l                                            ; $7658: $9d
	sub b                                            ; $7659: $90
	and b                                            ; $765a: $a0
	ld [hl], a                                       ; $765b: $77
	halt                                             ; $765c: $76
	pop af                                           ; $765d: $f1
	db $dd                                           ; $765e: $dd
	rra                                              ; $765f: $1f
	ld [hl], l                                       ; $7660: $75
	ld a, [hl]                                       ; $7661: $7e
	ld b, a                                          ; $7662: $47
	ld [hl], b                                       ; $7663: $70
	ld [hl], l                                       ; $7664: $75
	ld l, h                                          ; $7665: $6c
	db $dd                                           ; $7666: $dd
	inc bc                                           ; $7667: $03
	pop de                                           ; $7668: $d1
	rst $38                                          ; $7669: $ff
	ld c, b                                          ; $766a: $48
	nop                                              ; $766b: $00
	rst SubAFromDE                                          ; $766c: $df
	ld [hl+], a                                      ; $766d: $22
	sub a                                            ; $766e: $97
	ld h, $66                                        ; $766f: $26 $66
	ld [hl+], a                                      ; $7671: $22

Jump_054_7672:
	ld [hl+], a                                      ; $7672: $22
	inc sp                                           ; $7673: $33
	ld [hl-], a                                      ; $7674: $32
	ld [hl+], a                                      ; $7675: $22
	ld b, h                                          ; $7676: $44
	db $db                                           ; $7677: $db
	ld [hl+], a                                      ; $7678: $22
	inc de                                           ; $7679: $13
	or $df                                           ; $767a: $f6 $df
	inc sp                                           ; $767c: $33
	sbc l                                            ; $767d: $9d
	ld [hl-], a                                      ; $767e: $32
	ld h, $77                                        ; $767f: $26 $77
	or $9d                                           ; $7681: $f6 $9d
	inc hl                                           ; $7683: $23
	ld [hl-], a                                      ; $7684: $32
	ld a, e                                          ; $7685: $7b
	or $9e                                           ; $7686: $f6 $9e
	inc h                                            ; $7688: $24
	ld [hl], e                                       ; $7689: $73
	or $8f                                           ; $768a: $f6 $8f
	dec [hl]                                         ; $768c: $35
	ld d, l                                          ; $768d: $55
	ld d, l                                          ; $768e: $55
	ld [hl+], a                                      ; $768f: $22
	inc h                                            ; $7690: $24
	ld b, h                                          ; $7691: $44
	inc sp                                           ; $7692: $33
	ld [hl+], a                                      ; $7693: $22
	ld [hl+], a                                      ; $7694: $22
	dec h                                            ; $7695: $25
	ld d, l                                          ; $7696: $55
	ld b, h                                          ; $7697: $44
	ld b, [hl]                                       ; $7698: $46
	ld h, l                                          ; $7699: $65
	dec [hl]                                         ; $769a: $35
	ld d, l                                          ; $769b: $55
	ld [hl], a                                       ; $769c: $77
	or $9e                                           ; $769d: $f6 $9e
	ld d, h                                          ; $769f: $54
	ld l, a                                          ; $76a0: $6f
	or $7f                                           ; $76a1: $f6 $7f
	push af                                          ; $76a3: $f5
	ld a, a                                          ; $76a4: $7f
	db $ed                                           ; $76a5: $ed
	ld a, a                                          ; $76a6: $7f
	or $9e                                           ; $76a7: $f6 $9e
	ld d, l                                          ; $76a9: $55
	ld [hl], a                                       ; $76aa: $77
	db $d3                                           ; $76ab: $d3
	ld [hl], a                                       ; $76ac: $77
	or $9e                                           ; $76ad: $f6 $9e
	ld b, h                                          ; $76af: $44
	ld a, e                                          ; $76b0: $7b
	or $47                                           ; $76b1: $f6 $47
	adc e                                            ; $76b3: $8b
	sub [hl]                                         ; $76b4: $96
	add a                                            ; $76b5: $87
	db $e3                                           ; $76b6: $e3
	db $f4                                           ; $76b7: $f4
	db $f4                                           ; $76b8: $f4
	ld h, h                                          ; $76b9: $64
	ld l, d                                          ; $76ba: $6a
	sub $7d                                          ; $76bb: $d6 $7d
	di                                               ; $76bd: $f3
	db $dd                                           ; $76be: $dd
	ld sp, hl                                        ; $76bf: $f9
	sbc h                                            ; $76c0: $9c
	pop af                                           ; $76c1: $f1
	pop hl                                           ; $76c2: $e1
	add e                                            ; $76c3: $83
	pop bc                                           ; $76c4: $c1
	rst $38                                          ; $76c5: $ff
	sbc $ff                                          ; $76c6: $de $ff
	sbc d                                            ; $76c8: $9a
	ld sp, hl                                        ; $76c9: $f9
	db $e3                                           ; $76ca: $e3
	call $219a                                       ; $76cb: $cd $9a $21
	sbc $ff                                          ; $76ce: $de $ff
	adc e                                            ; $76d0: $8b
	cp $fc                                           ; $76d1: $fe $fc
	cp $f7                                           ; $76d3: $fe $f7
	rst $38                                          ; $76d5: $ff
	cp $ef                                           ; $76d6: $fe $ef
	dec a                                            ; $76d8: $3d
	ld a, [$eff4]                                    ; $76d9: $fa $f4 $ef
	db $d3                                           ; $76dc: $d3
	daa                                              ; $76dd: $27
	rst $38                                          ; $76de: $ff
	ldh a, [$c3]                                     ; $76df: $f0 $c3
	rlca                                             ; $76e1: $07
	rrca                                             ; $76e2: $0f
	rra                                              ; $76e3: $1f
	ccf                                              ; $76e4: $3f
	db $dd                                           ; $76e5: $dd
	rst $38                                          ; $76e6: $ff
	sub d                                            ; $76e7: $92
	ld c, a                                          ; $76e8: $4f
	ld a, c                                          ; $76e9: $79
	sbc a                                            ; $76ea: $9f
	rst FarCall                                          ; $76eb: $f7
	db $fd                                           ; $76ec: $fd
	nop                                              ; $76ed: $00
	nop                                              ; $76ee: $00
	ldh a, [$be]                                     ; $76ef: $f0 $be
	add a                                            ; $76f1: $87
	ldh [$f8], a                                     ; $76f2: $e0 $f8
	cp $dc                                           ; $76f4: $fe $dc
	rst $38                                          ; $76f6: $ff
	sbc h                                            ; $76f7: $9c
	ccf                                              ; $76f8: $3f
	rst GetHLinHL                                          ; $76f9: $cf
	rst SubAFromBC                                          ; $76fa: $e7
	db $fd                                           ; $76fb: $fd
	sbc d                                            ; $76fc: $9a
	ret nz                                           ; $76fd: $c0

	ldh a, [$38]                                     ; $76fe: $f0 $38
	inc b                                            ; $7700: $04
	db $fc                                           ; $7701: $fc
	jp c, $9dff                                      ; $7702: $da $ff $9d

	rrca                                             ; $7705: $0f
	ld bc, $9afa                                     ; $7706: $01 $fa $9a

jr_054_7709:
	ret nz                                           ; $7709: $c0

	or b                                             ; $770a: $b0
	add sp, -$02                                     ; $770b: $e8 $fe
	db $fd                                           ; $770d: $fd
	db $dd                                           ; $770e: $dd
	rst $38                                          ; $770f: $ff
	sbc b                                            ; $7710: $98
	ld a, a                                          ; $7711: $7f
	rra                                              ; $7712: $1f
	rlca                                             ; $7713: $07
	inc bc                                           ; $7714: $03
	nop                                              ; $7715: $00
	nop                                              ; $7716: $00
	rlca                                             ; $7717: $07
	ld [hl], e                                       ; $7718: $73
	add sp, -$63                                     ; $7719: $e8 $9d
	add b                                            ; $771b: $80
	ldh [$da], a                                     ; $771c: $e0 $da
	rst $38                                          ; $771e: $ff
	sbc [hl]                                         ; $771f: $9e
	ld a, a                                          ; $7720: $7f
	ld [hl], a                                       ; $7721: $77
	jp nz, $e77b                                     ; $7722: $c2 $7b $e7

	sbc [hl]                                         ; $7725: $9e
	ld bc, $ffd9                                     ; $7726: $01 $d9 $ff
	add h                                            ; $7729: $84
	ld a, [$e5e1]                                    ; $772a: $fa $e1 $e5
	call nz, $d0f0                                   ; $772d: $c4 $f0 $d0
	reti                                             ; $7730: $d9


	reti                                             ; $7731: $d9


	db $e4                                           ; $7732: $e4
	db $ec                                           ; $7733: $ec
	add sp, -$18                                     ; $7734: $e8 $e8
	ret z                                            ; $7736: $c8

	ret z                                            ; $7737: $c8

	ret nz                                           ; $7738: $c0

	ret nz                                           ; $7739: $c0

	cp h                                             ; $773a: $bc
	jr c, jr_054_77b5                                ; $773b: $38 $78

	ld [hl], b                                       ; $773d: $70
	ldh a, [$f0]                                     ; $773e: $f0 $f0
	ldh [$e0], a                                     ; $7740: $e0 $e0
	inc bc                                           ; $7742: $03
	rlca                                             ; $7743: $07
	rlca                                             ; $7744: $07
	sbc $0f                                          ; $7745: $de $0f
	sbc $1f                                          ; $7747: $de $1f
	sbc b                                            ; $7749: $98
	ld a, $3d                                        ; $774a: $3e $3d
	ld a, d                                          ; $774c: $7a
	ld [hl], l                                       ; $774d: $75
	ld l, l                                          ; $774e: $6d
	db $eb                                           ; $774f: $eb
	jp c, Jump_054_617b                              ; $7750: $da $7b $61

	add e                                            ; $7753: $83
	db $fd                                           ; $7754: $fd
	ei                                               ; $7755: $fb
	di                                               ; $7756: $f3
	rst FarCall                                          ; $7757: $f7
	rst SubAFromBC                                          ; $7758: $e7
	ld a, [hl-]                                      ; $7759: $3a
	halt                                             ; $775a: $76
	db $ec                                           ; $775b: $ec
	call c, $7dbd                                    ; $775c: $dc $bd $7d
	cp h                                             ; $775f: $bc
	xor b                                            ; $7760: $a8
	db $fd                                           ; $7761: $fd
	ld sp, hl                                        ; $7762: $f9
	di                                               ; $7763: $f3
	db $e3                                           ; $7764: $e3
	jp $0383                                         ; $7765: $c3 $83 $03


	rlca                                             ; $7768: $07
	ld sp, $c663                                     ; $7769: $31 $63 $c6
	add h                                            ; $776c: $84
	add hl, bc                                       ; $776d: $09
	add hl, bc                                       ; $776e: $09
	inc bc                                           ; $776f: $03
	ld h, a                                          ; $7770: $67
	jr jr_054_7709                                   ; $7771: $18 $96

	ld a, a                                          ; $7773: $7f
	db $fc                                           ; $7774: $fc
	cp b                                             ; $7775: $b8
	ld [hl], b                                       ; $7776: $70
	ldh [$c0], a                                     ; $7777: $e0 $c0
	ret nz                                           ; $7779: $c0

	add b                                            ; $777a: $80
	nop                                              ; $777b: $00
	reti                                             ; $777c: $d9


	rst $38                                          ; $777d: $ff
	sub a                                            ; $777e: $97
	rrca                                             ; $777f: $0f

jr_054_7780:
	ld e, $39                                        ; $7780: $1e $39
	ld h, e                                          ; $7782: $63
	ld b, a                                          ; $7783: $47
	adc [hl]                                         ; $7784: $8e
	inc e                                            ; $7785: $1c
	ld sp, $ffd8                                     ; $7786: $31 $d8 $ff
	sbc d                                            ; $7789: $9a
	ld a, h                                          ; $778a: $7c
	ldh a, [$c0]                                     ; $778b: $f0 $c0
	rlca                                             ; $778d: $07
	rra                                              ; $778e: $1f
	ld [hl], a                                       ; $778f: $77

jr_054_7790:
	ld a, c                                          ; $7790: $79
	sbc $ff                                          ; $7791: $de $ff
	sub l                                            ; $7793: $95
	db $fc                                           ; $7794: $fc
	ldh [$80], a                                     ; $7795: $e0 $80
	db $fc                                           ; $7797: $fc
	inc e                                            ; $7798: $1c
	inc c                                            ; $7799: $0c
	ld [$efc8], sp                                   ; $779a: $08 $c8 $ef
	ldh a, [rOCPD]                                   ; $779d: $f0 $6b
	jr z, jr_054_7780                                ; $779f: $28 $df

	rra                                              ; $77a1: $1f
	sub d                                            ; $77a2: $92
	ei                                               ; $77a3: $fb
	rst FarCall                                          ; $77a4: $f7
	xor h                                            ; $77a5: $ac
	rst $38                                          ; $77a6: $ff
	ldh [$5f], a                                     ; $77a7: $e0 $5f
	or a                                             ; $77a9: $b7
	rst GetHLinHL                                          ; $77aa: $cf
	rlca                                             ; $77ab: $07
	rrca                                             ; $77ac: $0f
	ld e, a                                          ; $77ad: $5f
	jr c, jr_054_7790                                ; $77ae: $38 $e0

	ld [hl], e                                       ; $77b0: $73
	ld c, d                                          ; $77b1: $4a
	sbc e                                            ; $77b2: $9b
	rrca                                             ; $77b3: $0f
	rst $38                                          ; $77b4: $ff

jr_054_77b5:
	ld [$6fc7], sp                                   ; $77b5: $08 $c7 $6f
	or l                                             ; $77b8: $b5
	sbc l                                            ; $77b9: $9d
	rrca                                             ; $77ba: $0f
	ld a, $de                                        ; $77bb: $3e $de
	cp $98                                           ; $77bd: $fe $98
	db $fc                                           ; $77bf: $fc
	db $fd                                           ; $77c0: $fd

Jump_054_77c1:
	jp c, $c22c                                      ; $77c1: $da $2c $c2

	ld b, c                                          ; $77c4: $41
	rst GetHLinHL                                          ; $77c5: $cf
	jp c, $98ff                                      ; $77c6: $da $ff $98

	ccf                                              ; $77c9: $3f
	ld b, b                                          ; $77ca: $40
	adc b                                            ; $77cb: $88
	ld de, $8723                                     ; $77cc: $11 $23 $87
	ld c, a                                          ; $77cf: $4f
	ld a, d                                          ; $77d0: $7a
	ret c                                            ; $77d1: $d8

	sub d                                            ; $77d2: $92
	rst FarCall                                          ; $77d3: $f7
	rst AddAOntoHL                                          ; $77d4: $ef
	rst SubAFromDE                                          ; $77d5: $df
	ld a, a                                          ; $77d6: $7f
	cp a                                             ; $77d7: $bf
	rst SubAFromDE                                          ; $77d8: $df
	rst $38                                          ; $77d9: $ff
	ld c, c                                          ; $77da: $49
	sub e                                            ; $77db: $93
	and a                                            ; $77dc: $a7
	inc c                                            ; $77dd: $0c
	reti                                             ; $77de: $d9


	di                                               ; $77df: $f3
	db $dd                                           ; $77e0: $dd
	rst $38                                          ; $77e1: $ff
	ld l, a                                          ; $77e2: $6f
	xor l                                            ; $77e3: $ad
	sub [hl]                                         ; $77e4: $96
	ld a, a                                          ; $77e5: $7f
	and a                                            ; $77e6: $a7
	ld a, c                                          ; $77e7: $79
	sbc l                                            ; $77e8: $9d
	rlca                                             ; $77e9: $07
	ld c, $c4                                        ; $77ea: $0e $c4
	add sp, -$41                                     ; $77ec: $e8 $bf
	ld [hl], a                                       ; $77ee: $77
	adc l                                            ; $77ef: $8d
	ld a, e                                          ; $77f0: $7b
	dec a                                            ; $77f1: $3d
	sub e                                            ; $77f2: $93
	ld b, a                                          ; $77f3: $47
	adc e                                            ; $77f4: $8b
	sub e                                            ; $77f5: $93
	and [hl]                                         ; $77f6: $a6
	ld b, a                                          ; $77f7: $47
	rlca                                             ; $77f8: $07
	rrca                                             ; $77f9: $0f
	ld e, $84                                        ; $77fa: $1e $84
	rst JumpTable                                          ; $77fc: $c7
	adc $9c                                          ; $77fd: $ce $9c
	ld [hl], d                                       ; $77ff: $72
	and d                                            ; $7800: $a2
	sub b                                            ; $7801: $90
	ld a, a                                          ; $7802: $7f
	ld sp, $e0ec                                     ; $7803: $31 $ec $e0
	ld hl, sp+$5d                                    ; $7806: $f8 $5d
	adc [hl]                                         ; $7808: $8e
	nop                                              ; $7809: $00
	cp $3f                                           ; $780a: $fe $3f
	ld [hl], c                                       ; $780c: $71
	ldh a, [$f8]                                     ; $780d: $f0 $f8
	adc h                                            ; $780f: $8c
	rlca                                             ; $7810: $07
	ld l, [hl]                                       ; $7811: $6e
	db $db                                           ; $7812: $db
	sbc l                                            ; $7813: $9d
	dec a                                            ; $7814: $3d
	ld l, l                                          ; $7815: $6d
	halt                                             ; $7816: $76
	res 0, e                                         ; $7817: $cb $83
	ret nz                                           ; $7819: $c0

	ld b, b                                          ; $781a: $40
	db $e3                                           ; $781b: $e3
	cp [hl]                                          ; $781c: $be
	ret nc                                           ; $781d: $d0

	add sp, -$0c                                     ; $781e: $e8 $f4
	ld hl, sp-$09                                    ; $7820: $f8 $f7
	cp e                                             ; $7822: $bb
	cp h                                             ; $7823: $bc
	jp $1f3f                                         ; $7824: $c3 $3f $1f


	rrca                                             ; $7827: $0f
	rlca                                             ; $7828: $07
	rrca                                             ; $7829: $0f
	ld a, h                                          ; $782a: $7c
	jp $003c                                         ; $782b: $c3 $3c $00


	nop                                              ; $782e: $00
	ld bc, $c17e                                     ; $782f: $01 $7e $c1
	adc a                                            ; $7832: $8f
	ldh a, [$c0]                                     ; $7833: $f0 $c0
	ld l, d                                          ; $7835: $6a
	or d                                             ; $7836: $b2
	sbc h                                            ; $7837: $9c
	ccf                                              ; $7838: $3f
	pop de                                           ; $7839: $d1
	ld de, $83de                                     ; $783a: $11 $de $83
	sbc h                                            ; $783d: $9c
	db $d3                                           ; $783e: $d3
	ld b, e                                          ; $783f: $43
	ld c, e                                          ; $7840: $4b
	db $db                                           ; $7841: $db
	ret nz                                           ; $7842: $c0

	rst SubAFromDE                                          ; $7843: $df
	ret nc                                           ; $7844: $d0

	rst SubAFromDE                                          ; $7845: $df
	ret nz                                           ; $7846: $c0

	rst SubAFromDE                                          ; $7847: $df
	pop bc                                           ; $7848: $c1
	rst SubAFromDE                                          ; $7849: $df
	add e                                            ; $784a: $83
	rst SubAFromDE                                          ; $784b: $df
	add a                                            ; $784c: $87
	db $dd                                           ; $784d: $dd
	ccf                                              ; $784e: $3f
	sbc $7f                                          ; $784f: $de $7f
	add d                                            ; $7851: $82
	ld a, l                                          ; $7852: $7d
	rst SubAFromHL                                          ; $7853: $d7
	and l                                            ; $7854: $a5
	and l                                            ; $7855: $a5
	ld e, [hl]                                       ; $7856: $5e
	ld e, d                                          ; $7857: $5a
	adc d                                            ; $7858: $8a
	xor [hl]                                         ; $7859: $ae
	xor l                                            ; $785a: $ad
	xor $ce                                          ; $785b: $ee $ce
	adc $8c                                          ; $785d: $ce $8c
	adc h                                            ; $785f: $8c
	inc e                                            ; $7860: $1c
	jr jr_054_787b                                   ; $7861: $18 $18

	ld c, b                                          ; $7863: $48
	ld c, c                                          ; $7864: $49
	ld d, c                                          ; $7865: $51
	sub c                                            ; $7866: $91
	sub e                                            ; $7867: $93
	sub d                                            ; $7868: $92
	sub d                                            ; $7869: $92
	ld [hl-], a                                      ; $786a: $32
	rlca                                             ; $786b: $07
	ld b, $0e                                        ; $786c: $06 $0e
	ld c, $dd                                        ; $786e: $0e $dd
	inc c                                            ; $7870: $0c
	rst SubAFromDE                                          ; $7871: $df
	add [hl]                                         ; $7872: $86
	sub c                                            ; $7873: $91
	dec c                                            ; $7874: $0d
	rrca                                             ; $7875: $0f
	ld c, c                                          ; $7876: $49
	ld e, a                                          ; $7877: $5f
	ld d, e                                          ; $7878: $53
	sbc d                                            ; $7879: $9a
	ld a, a                                          ; $787a: $7f

jr_054_787b:
	ld a, a                                          ; $787b: $7f
	ld a, [hl]                                       ; $787c: $7e
	ld a, h                                          ; $787d: $7c
	inc a                                            ; $787e: $3c
	jr c, jr_054_78b9                                ; $787f: $38 $38

	ld [hl], c                                       ; $7881: $71
	cp $df                                           ; $7882: $fe $df
	ld bc, $029c                                     ; $7884: $01 $9c $02
	inc b                                            ; $7887: $04
	inc b                                            ; $7888: $04
	reti                                             ; $7889: $d9


	rst $38                                          ; $788a: $ff
	ld a, [hl]                                       ; $788b: $7e
	jp $8f9d                                         ; $788c: $c3 $9d $8f


	rra                                              ; $788f: $1f
	ld a, e                                          ; $7890: $7b
	or a                                             ; $7891: $b7
	ld a, d                                          ; $7892: $7a
	call nc, $f89d                                   ; $7893: $d4 $9d $f8
	ldh a, [rPCM12]                                  ; $7896: $f0 $76
	and a                                            ; $7898: $a7
	reti                                             ; $7899: $d9


	rst $38                                          ; $789a: $ff
	ld sp, hl                                        ; $789b: $f9
	jp c, $9eff                                      ; $789c: $da $ff $9e

	cp $6a                                           ; $789f: $fe $6a
	ld bc, $0186                                     ; $78a1: $01 $86 $01
	rst SubAFromBC                                          ; $78a4: $e7
	or e                                             ; $78a5: $b3
	cp l                                             ; $78a6: $bd
	sbc e                                            ; $78a7: $9b
	sbc $cd                                          ; $78a8: $de $cd
	db $fd                                           ; $78aa: $fd
	ld c, a                                          ; $78ab: $4f
	rst $38                                          ; $78ac: $ff
	rst $38                                          ; $78ad: $ff
	ei                                               ; $78ae: $fb
	db $fd                                           ; $78af: $fd
	rst $38                                          ; $78b0: $ff
	sbc $7e                                          ; $78b1: $de $7e
	ld a, $fd                                        ; $78b3: $3e $fd
	db $fc                                           ; $78b5: $fc
	rra                                              ; $78b6: $1f
	nop                                              ; $78b7: $00
	add b                                            ; $78b8: $80

jr_054_78b9:
	pop bc                                           ; $78b9: $c1
	db $dd                                           ; $78ba: $dd
	ld h, c                                          ; $78bb: $61
	db $db                                           ; $78bc: $db
	rst $38                                          ; $78bd: $ff
	sub b                                            ; $78be: $90
	db $e3                                           ; $78bf: $e3
	di                                               ; $78c0: $f3
	ccf                                              ; $78c1: $3f
	cp a                                             ; $78c2: $bf
	db $e3                                           ; $78c3: $e3
	ret nz                                           ; $78c4: $c0

	ret nz                                           ; $78c5: $c0

	add c                                            ; $78c6: $81
	add e                                            ; $78c7: $83
	inc bc                                           ; $78c8: $03
	rra                                              ; $78c9: $1f
	or b                                             ; $78ca: $b0
	ret nz                                           ; $78cb: $c0

	add b                                            ; $78cc: $80
	add b                                            ; $78cd: $80
	ld [hl], e                                       ; $78ce: $73
	ret nz                                           ; $78cf: $c0

	sbc l                                            ; $78d0: $9d
	ret nz                                           ; $78d1: $c0

	rrca                                             ; $78d2: $0f
	halt                                             ; $78d3: $76
	ld hl, sp+$77                                    ; $78d4: $f8 $77
	call nz, $079b                                   ; $78d6: $c4 $9b $07
	jr jr_054_78fb                                   ; $78d9: $18 $20

	ld b, b                                          ; $78db: $40
	db $db                                           ; $78dc: $db
	rst $38                                          ; $78dd: $ff
	sbc c                                            ; $78de: $99
	ldh a, [$cb]                                     ; $78df: $f0 $cb
	ld bc, $1f00                                     ; $78e1: $01 $00 $1f
	ldh [$fe], a                                     ; $78e4: $e0 $fe
	sbc [hl]                                         ; $78e6: $9e
	rlca                                             ; $78e7: $07
	ld a, e                                          ; $78e8: $7b
	adc e                                            ; $78e9: $8b
	ld a, [hl]                                       ; $78ea: $7e
	jp hl                                            ; $78eb: $e9


	ld a, a                                          ; $78ec: $7f
	or [hl]                                          ; $78ed: $b6
	ld a, l                                          ; $78ee: $7d
	ld h, [hl]                                       ; $78ef: $66
	ld a, d                                          ; $78f0: $7a
	and c                                            ; $78f1: $a1
	ld a, [hl]                                       ; $78f2: $7e
	cp $7e                                           ; $78f3: $fe $7e
	pop hl                                           ; $78f5: $e1

jr_054_78f6:
	add e                                            ; $78f6: $83
	dec e                                            ; $78f7: $1d
	ld a, [hl-]                                      ; $78f8: $3a
	ld [hl], l                                       ; $78f9: $75
	ld l, e                                          ; $78fa: $6b

jr_054_78fb:
	rst SubAFromHL                                          ; $78fb: $d7
	xor [hl]                                         ; $78fc: $ae
	ld c, h                                          ; $78fd: $4c
	add h                                            ; $78fe: $84
	cp $fc                                           ; $78ff: $fe $fc
	ld sp, hl                                        ; $7901: $f9
	di                                               ; $7902: $f3
	and $cd                                          ; $7903: $e6 $cd
	adc e                                            ; $7905: $8b
	rrca                                             ; $7906: $0f
	ld b, $ff                                        ; $7907: $06 $ff
	ld sp, hl                                        ; $7909: $f9
	cp a                                             ; $790a: $bf
	add hl, de                                       ; $790b: $19
	dec de                                           ; $790c: $1b
	dec e                                            ; $790d: $1d
	scf                                              ; $790e: $37
	rlca                                             ; $790f: $07
	db $e3                                           ; $7910: $e3

jr_054_7911:
	ei                                               ; $7911: $fb
	ld a, c                                          ; $7912: $79
	ld a, e                                          ; $7913: $7b
	ld a, c                                          ; $7914: $79
	sub h                                            ; $7915: $94
	ld hl, sp+$2e                                    ; $7916: $f8 $2e
	ld [hl], c                                       ; $7918: $71
	cpl                                              ; $7919: $2f
	rst SubAFromDE                                          ; $791a: $df
	cp a                                             ; $791b: $bf
	rst $38                                          ; $791c: $ff
	add a                                            ; $791d: $87
	ld bc, $2e31                                     ; $791e: $01 $31 $2e
	ld a, e                                          ; $7921: $7b
	add $fe                                          ; $7922: $c6 $fe
	ld [hl], d                                       ; $7924: $72
	sbc h                                            ; $7925: $9c
	sbc $ff                                          ; $7926: $de $ff
	ld [hl], a                                       ; $7928: $77
	db $f4                                           ; $7929: $f4
	ld [hl], c                                       ; $792a: $71
	ld h, c                                          ; $792b: $61
	sbc [hl]                                         ; $792c: $9e
	ret nz                                           ; $792d: $c0

	db $db                                           ; $792e: $db
	ldh [$df], a                                     ; $792f: $e0 $df
	ccf                                              ; $7931: $3f
	db $db                                           ; $7932: $db
	rra                                              ; $7933: $1f
	rst SubAFromDE                                          ; $7934: $df
	ld l, e                                          ; $7935: $6b
	ld a, [hl]                                       ; $7936: $7e
	ld [hl], d                                       ; $7937: $72
	sbc c                                            ; $7938: $99
	cpl                                              ; $7939: $2f
	ld l, [hl]                                       ; $793a: $6e
	ld l, d                                          ; $793b: $6a
	ld l, d                                          ; $793c: $6a
	ret nc                                           ; $793d: $d0

	ret nc                                           ; $793e: $d0

jr_054_793f:
	sbc $f8                                          ; $793f: $de $f8
	sbc h                                            ; $7941: $9c
	ld sp, hl                                        ; $7942: $f9
	db $fd                                           ; $7943: $fd
	db $fd                                           ; $7944: $fd
	ld [hl], l                                       ; $7945: $75
	adc h                                            ; $7946: $8c
	rst SubAFromDE                                          ; $7947: $df
	ccf                                              ; $7948: $3f
	sbc c                                            ; $7949: $99
	dec a                                            ; $794a: $3d
	ld a, l                                          ; $794b: $7d
	db $fd                                           ; $794c: $fd
	ld sp, hl                                        ; $794d: $f9
	pop af                                           ; $794e: $f1
	pop af                                           ; $794f: $f1
	sbc $e1                                          ; $7950: $de $e1
	sub l                                            ; $7952: $95
	pop bc                                           ; $7953: $c1
	dec l                                            ; $7954: $2d
	dec e                                            ; $7955: $1d
	dec e                                            ; $7956: $1d
	sbc l                                            ; $7957: $9d
	sbc b                                            ; $7958: $98
	jr @+$6a                                         ; $7959: $18 $68

	jr z, jr_054_7975                                ; $795b: $28 $18

	db $dd                                           ; $795d: $dd
	jr c, jr_054_793f                                ; $795e: $38 $df

	cp b                                             ; $7960: $b8
	sbc l                                            ; $7961: $9d
	ld hl, sp+$36                                    ; $7962: $f8 $36
	call c, $9c24                                    ; $7964: $dc $24 $9c
	dec h                                            ; $7967: $25
	ld bc, $db08                                     ; $7968: $01 $08 $db
	jr jr_054_78f6                                   ; $796b: $18 $89

	jr c, jr_054_7911                                ; $796d: $38 $a2

	and b                                            ; $796f: $a0
	or b                                             ; $7970: $b0
	inc h                                            ; $7971: $24
	ld b, h                                          ; $7972: $44
	ld h, h                                          ; $7973: $64
	ld c, c                                          ; $7974: $49

jr_054_7975:
	ld c, c                                          ; $7975: $49
	ld [hl], c                                       ; $7976: $71
	ld [hl], e                                       ; $7977: $73
	ld h, e                                          ; $7978: $63
	db $e3                                           ; $7979: $e3
	db $e3                                           ; $797a: $e3
	jp $c7c7                                         ; $797b: $c3 $c7 $c7


	add hl, bc                                       ; $797e: $09
	dec de                                           ; $797f: $1b
	inc sp                                           ; $7980: $33
	ld [hl], a                                       ; $7981: $77
	rst FarCall                                          ; $7982: $f7
	ld [hl], d                                       ; $7983: $72
	xor $99                                          ; $7984: $ee $99
	db $fc                                           ; $7986: $fc
	call c, $98d8                                    ; $7987: $dc $d8 $98
	sub b                                            ; $798a: $90
	db $10                                           ; $798b: $10
	ld a, [hl+]                                      ; $798c: $2a
	ret nc                                           ; $798d: $d0

	ld e, a                                          ; $798e: $5f
	ldh a, [$9d]                                     ; $798f: $f0 $9d
	cp $fb                                           ; $7991: $fe $fb
	ld a, e                                          ; $7993: $7b
	ld c, d                                          ; $7994: $4a
	add b                                            ; $7995: $80
	ld a, [$0195]                                    ; $7996: $fa $95 $01
	inc bc                                           ; $7999: $03
	ld b, $05                                        ; $799a: $06 $05
	dec bc                                           ; $799c: $0b
	rla                                              ; $799d: $17
	dec l                                            ; $799e: $2d
	ld a, e                                          ; $799f: $7b

jr_054_79a0:
	ld a, a                                          ; $79a0: $7f
	rra                                              ; $79a1: $1f
	adc h                                            ; $79a2: $8c
	ld d, h                                          ; $79a3: $54
	sub b                                            ; $79a4: $90
	jr nz, @+$30                                     ; $79a5: $20 $2e

	add hl, sp                                       ; $79a7: $39
	adc [hl]                                         ; $79a8: $8e
	rst AddAOntoHL                                          ; $79a9: $ef
	ld a, [hl]                                       ; $79aa: $7e
	ld a, $3e                                        ; $79ab: $3e $3e
	cp [hl]                                          ; $79ad: $be
	ld sp, hl                                        ; $79ae: $f9
	ldh a, [$7f]                                     ; $79af: $f0 $7f
	rst AddAOntoHL                                          ; $79b1: $ef
	ld a, $06                                        ; $79b2: $3e $06
	ld [bc], a                                       ; $79b4: $02
	sub h                                            ; $79b5: $94
	nop                                              ; $79b6: $00
	and b                                            ; $79b7: $a0
	ld l, b                                          ; $79b8: $68
	cp $f6                                           ; $79b9: $fe $f6
	inc [hl]                                         ; $79bb: $34
	inc c                                            ; $79bc: $0c
	inc b                                            ; $79bd: $04
	ld h, d                                          ; $79be: $62
	add hl, de                                       ; $79bf: $19
	add $78                                          ; $79c0: $c6 $78
	ld [$1e99], a                                    ; $79c2: $ea $99 $1e
	inc e                                            ; $79c5: $1c
	jr c, @+$3a                                      ; $79c6: $38 $38

	ld [hl], b                                       ; $79c8: $70
	nop                                              ; $79c9: $00
	ld a, d                                          ; $79ca: $7a
	ld e, e                                          ; $79cb: $5b
	rst SubAFromDE                                          ; $79cc: $df
	ld [$109b], sp                                   ; $79cd: $08 $9b $10
	sub b                                            ; $79d0: $90
	rst JumpTable                                          ; $79d1: $c7
	add b                                            ; $79d2: $80
	ld a, e                                          ; $79d3: $7b
	add $9c                                          ; $79d4: $c6 $9c
	inc c                                            ; $79d6: $0c
	dec e                                            ; $79d7: $1d
	dec de                                           ; $79d8: $1b
	ld a, d                                          ; $79d9: $7a
	or h                                             ; $79da: $b4
	ld a, a                                          ; $79db: $7f
	rst FarCall                                          ; $79dc: $f7
	ld a, a                                          ; $79dd: $7f
	db $e3                                           ; $79de: $e3
	sbc e                                            ; $79df: $9b
	ld c, $2e                                        ; $79e0: $0e $2e
	cp b                                             ; $79e2: $b8
	ret nz                                           ; $79e3: $c0

	ld a, e                                          ; $79e4: $7b
	inc c                                            ; $79e5: $0c
	sbc [hl]                                         ; $79e6: $9e
	adc a                                            ; $79e7: $8f
	ld l, l                                          ; $79e8: $6d
	dec e                                            ; $79e9: $1d
	ld a, e                                          ; $79ea: $7b
	dec bc                                           ; $79eb: $0b
	sbc e                                            ; $79ec: $9b
	inc c                                            ; $79ed: $0c
	dec bc                                           ; $79ee: $0b

Call_054_79ef:
	ld e, $3d                                        ; $79ef: $1e $3d
	ld a, c                                          ; $79f1: $79
	halt                                             ; $79f2: $76
	sbc [hl]                                         ; $79f3: $9e
	ld sp, hl                                        ; $79f4: $f9
	ld [hl], c                                       ; $79f5: $71
	add d                                            ; $79f6: $82
	ld a, b                                          ; $79f7: $78

Call_054_79f8:
	ld [hl], b                                       ; $79f8: $70
	add a                                            ; $79f9: $87
	ld a, [hl]                                       ; $79fa: $7e
	push de                                          ; $79fb: $d5
	add c                                            ; $79fc: $81
	inc d                                            ; $79fd: $14
	nop                                              ; $79fe: $00
	jr nz, jr_054_79a0                               ; $79ff: $20 $9f

	ldh [rIE], a                                     ; $7a01: $e0 $ff
	xor e                                            ; $7a03: $ab
	ld a, a                                          ; $7a04: $7f
	add c                                            ; $7a05: $81
	nop                                              ; $7a06: $00
	inc a                                            ; $7a07: $3c
	rst $38                                          ; $7a08: $ff
	rst $38                                          ; $7a09: $ff
	ld l, b                                          ; $7a0a: $68
	ret nc                                           ; $7a0b: $d0

	ldh [$c0], a                                     ; $7a0c: $e0 $c0
	ld h, b                                          ; $7a0e: $60
	rst $38                                          ; $7a0f: $ff
	rra                                              ; $7a10: $1f
	rst $38                                          ; $7a11: $ff
	ld a, d                                          ; $7a12: $7a
	jp nc, $1179                                     ; $7a13: $d2 $79 $11

	ld a, a                                          ; $7a16: $7f
	cp $fe                                           ; $7a17: $fe $fe
	sbc d                                            ; $7a19: $9a
	jr jr_054_7a40                                   ; $7a1a: $18 $24

	ret c                                            ; $7a1c: $d8

	db $10                                           ; $7a1d: $10
	db $ec                                           ; $7a1e: $ec
	ld l, d                                          ; $7a1f: $6a
	db $d3                                           ; $7a20: $d3
	ld a, c                                          ; $7a21: $79
	sbc b                                            ; $7a22: $98
	sbc $7f                                          ; $7a23: $de $7f
	sbc h                                            ; $7a25: $9c

jr_054_7a26:
	jr nc, jr_054_7a66                               ; $7a26: $30 $3e

	jr jr_054_7a26                                   ; $7a28: $18 $fc

	sbc e                                            ; $7a2a: $9b
	rrca                                             ; $7a2b: $0f
	ld bc, $e000                                     ; $7a2c: $01 $00 $e0
	ld [hl], b                                       ; $7a2f: $70
	and d                                            ; $7a30: $a2
	ld a, a                                          ; $7a31: $7f
	sub h                                            ; $7a32: $94
	halt                                             ; $7a33: $76
	jp c, $9d77                                      ; $7a34: $da $77 $9d

	adc b                                            ; $7a37: $88
	ld a, h                                          ; $7a38: $7c
	db $fc                                           ; $7a39: $fc
	db $fc                                           ; $7a3a: $fc
	cp $f2                                           ; $7a3b: $fe $f2
	di                                               ; $7a3d: $f3
	db $e3                                           ; $7a3e: $e3
	db $e3                                           ; $7a3f: $e3

jr_054_7a40:
	rst SubAFromHL                                          ; $7a40: $d7
	add a                                            ; $7a41: $87
	add a                                            ; $7a42: $87
	add e                                            ; $7a43: $83
	add e                                            ; $7a44: $83
	add c                                            ; $7a45: $81
	ld bc, $7d01                                     ; $7a46: $01 $01 $7d
	ld a, c                                          ; $7a49: $79
	ret c                                            ; $7a4a: $d8

	ret c                                            ; $7a4b: $d8

	sbc b                                            ; $7a4c: $98
	adc b                                            ; $7a4d: $88
	ret z                                            ; $7a4e: $c8

	ld [hl], a                                       ; $7a4f: $77
	jp c, $80dd                                      ; $7a50: $da $dd $80

	sbc [hl]                                         ; $7a53: $9e
	ret nz                                           ; $7a54: $c0

	db $dd                                           ; $7a55: $dd
	cp b                                             ; $7a56: $b8
	rst SubAFromDE                                          ; $7a57: $df
	db $fc                                           ; $7a58: $fc
	sub l                                            ; $7a59: $95
	db $f4                                           ; $7a5a: $f4
	ld [hl], h                                       ; $7a5b: $74
	jp hl                                            ; $7a5c: $e9


	jp hl                                            ; $7a5d: $e9


	db $ed                                           ; $7a5e: $ed
	db $ed                                           ; $7a5f: $ed
	ld b, l                                          ; $7a60: $45
	ld b, h                                          ; $7a61: $44
	ld b, [hl]                                       ; $7a62: $46
	ld b, [hl]                                       ; $7a63: $46

jr_054_7a64:
	ld sp, hl                                        ; $7a64: $f9
	db $dd                                           ; $7a65: $dd

jr_054_7a66:
	add hl, sp                                       ; $7a66: $39
	sbc $bb                                          ; $7a67: $de $bb
	sbc [hl]                                         ; $7a69: $9e
	sbc e                                            ; $7a6a: $9b
	ld [hl], l                                       ; $7a6b: $75
	ld d, e                                          ; $7a6c: $53
	rst SubAFromDE                                          ; $7a6d: $df
	add [hl]                                         ; $7a6e: $86
	rst SubAFromDE                                          ; $7a6f: $df
	adc a                                            ; $7a70: $8f
	sbc h                                            ; $7a71: $9c
	rst GetHLinHL                                          ; $7a72: $cf
	adc $ce                                          ; $7a73: $ce $ce
	sbc $dc                                          ; $7a75: $de $dc
	sbc b                                            ; $7a77: $98
	ret c                                            ; $7a78: $d8

	cp b                                             ; $7a79: $b8
	ld hl, sp-$80                                    ; $7a7a: $f8 $80
	rrca                                             ; $7a7c: $0f
	ld bc, $7903                                     ; $7a7d: $01 $03 $79
	call $3f7f                                       ; $7a80: $cd $7f $3f
	ld a, a                                          ; $7a83: $7f
	ei                                               ; $7a84: $fb
	ld a, a                                          ; $7a85: $7f
	sub b                                            ; $7a86: $90
	ld a, a                                          ; $7a87: $7f
	db $fc                                           ; $7a88: $fc
	sub b                                            ; $7a89: $90
	ccf                                              ; $7a8a: $3f
	ld bc, $fff0                                     ; $7a8b: $01 $f0 $ff
	rst GetHLinHL                                          ; $7a8e: $cf
	or d                                             ; $7a8f: $b2
	db $f4                                           ; $7a90: $f4
	rra                                              ; $7a91: $1f
	ret nz                                           ; $7a92: $c0

	cp $ff                                           ; $7a93: $fe $ff
	rrca                                             ; $7a95: $0f
	jr nc, jr_054_7a64                               ; $7a96: $30 $cc

	ei                                               ; $7a98: $fb
	ld a, e                                          ; $7a99: $7b
	ld c, [hl]                                       ; $7a9a: $4e
	add b                                            ; $7a9b: $80
	ccf                                              ; $7a9c: $3f
	add $bd                                          ; $7a9d: $c6 $bd
	ld d, $01                                        ; $7a9f: $16 $01
	ld bc, $0100                                     ; $7aa1: $01 $00 $01
	jp Jump_054_7eff                                 ; $7aa4: $c3 $ff $7e


	rrca                                             ; $7aa7: $0f
	inc bc                                           ; $7aa8: $03
	add b                                            ; $7aa9: $80
	ld l, e                                          ; $7aaa: $6b
	rst SubAFromDE                                          ; $7aab: $df
	ld a, [hl]                                       ; $7aac: $7e
	push hl                                          ; $7aad: $e5
	rst $38                                          ; $7aae: $ff
	rst AddAOntoHL                                          ; $7aaf: $ef
	ccf                                              ; $7ab0: $3f
	cp a                                             ; $7ab1: $bf
	or $e5                                           ; $7ab2: $f6 $e5
	adc e                                            ; $7ab4: $8b
	ld e, $38                                        ; $7ab5: $1e $38
	ld [hl], b                                       ; $7ab7: $70
	ret nz                                           ; $7ab8: $c0

	ret nz                                           ; $7ab9: $c0

	dec h                                            ; $7aba: $25
	add b                                            ; $7abb: $80
	ld a, [hl-]                                      ; $7abc: $3a
	or h                                             ; $7abd: $b4
	ld l, [hl]                                       ; $7abe: $6e
	sbc $ff                                          ; $7abf: $de $ff
	rra                                              ; $7ac1: $1f
	sbc $f3                                          ; $7ac2: $de $f3
	and $6c                                          ; $7ac4: $e6 $6c
	ld h, l                                          ; $7ac6: $65
	dec a                                            ; $7ac7: $3d
	ld c, $e3                                        ; $7ac8: $0e $e3
	pop hl                                           ; $7aca: $e1
	sbc b                                            ; $7acb: $98
	add $e1                                          ; $7acc: $c6 $e1
	ld hl, sp-$62                                    ; $7ace: $f8 $9e
	rst JumpTable                                          ; $7ad0: $c7
	push af                                          ; $7ad1: $f5
	cp l                                             ; $7ad2: $bd
	ldh a, [$7c]                                     ; $7ad3: $f0 $7c
	rra                                              ; $7ad5: $1f
	rst SubAFromBC                                          ; $7ad6: $e7
	ld sp, hl                                        ; $7ad7: $f9
	cp $7f                                           ; $7ad8: $fe $7f
	rst SubAFromDE                                          ; $7ada: $df
	rst SubAFromDE                                          ; $7adb: $df
	db $10                                           ; $7adc: $10
	add h                                            ; $7add: $84
	add b                                            ; $7ade: $80
	ld [hl], b                                       ; $7adf: $70
	ld a, h                                          ; $7ae0: $7c
	sub l                                            ; $7ae1: $95
	db $eb                                           ; $7ae2: $eb
	push af                                          ; $7ae3: $f5
	ld [hl], b                                       ; $7ae4: $70
	jr nc, @+$12                                     ; $7ae5: $30 $10

	ret z                                            ; $7ae7: $c8

	sbc b                                            ; $7ae8: $98
	ld l, h                                          ; $7ae9: $6c
	sub [hl]                                         ; $7aea: $96
	db $eb                                           ; $7aeb: $eb
	ld a, $3c                                        ; $7aec: $3e $3c
	ld a, b                                          ; $7aee: $78
	ld [hl], b                                       ; $7aef: $70
	ldh [$c0], a                                     ; $7af0: $e0 $c0
	add b                                            ; $7af2: $80
	ld bc, $181c                                     ; $7af3: $01 $1c $18
	jr nc, jr_054_7b18                               ; $7af6: $30 $20

	ld b, b                                          ; $7af8: $40
	ld [hl], l                                       ; $7af9: $75
	ld l, a                                          ; $7afa: $6f
	ld a, h                                          ; $7afb: $7c
	ld d, e                                          ; $7afc: $53
	sbc c                                            ; $7afd: $99
	inc e                                            ; $7afe: $1c

Call_054_7aff:
	add hl, sp                                       ; $7aff: $39
	ld a, a                                          ; $7b00: $7f
	ei                                               ; $7b01: $fb
	pop hl                                           ; $7b02: $e1
	nop                                              ; $7b03: $00
	ld a, d                                          ; $7b04: $7a
	or e                                             ; $7b05: $b3
	sub [hl]                                         ; $7b06: $96
	rra                                              ; $7b07: $1f
	ld a, $70                                        ; $7b08: $3e $70
	ret nz                                           ; $7b0a: $c0

	inc bc                                           ; $7b0b: $03
	cp $00                                           ; $7b0c: $fe $00
	rrca                                             ; $7b0e: $0f
	pop af                                           ; $7b0f: $f1
	sbc $ff                                          ; $7b10: $de $ff
	sbc [hl]                                         ; $7b12: $9e
	ld bc, $ffdd                                     ; $7b13: $01 $dd $ff
	adc h                                            ; $7b16: $8c
	rrca                                             ; $7b17: $0f

jr_054_7b18:
	nop                                              ; $7b18: $00
	nop                                              ; $7b19: $00
	rra                                              ; $7b1a: $1f
	ld [hl], b                                       ; $7b1b: $70
	cp $01                                           ; $7b1c: $fe $01
	ldh [$f8], a                                     ; $7b1e: $e0 $f8
	or $f9                                           ; $7b20: $f6 $f9
	rst $38                                          ; $7b22: $ff
	ld hl, sp-$01                                    ; $7b23: $f8 $ff
	rst $38                                          ; $7b25: $ff
	ldh [$fc], a                                     ; $7b26: $e0 $fc
	rla                                              ; $7b28: $17
	add hl, de                                       ; $7b29: $19
	cp $9b                                           ; $7b2a: $fe $9b
	ldh [rAUD3LEVEL], a                              ; $7b2c: $e0 $1c
	inc bc                                           ; $7b2e: $03
	nop                                              ; $7b2f: $00
	ld a, e                                          ; $7b30: $7b

Jump_054_7b31:
	add $99                                          ; $7b31: $c6 $99
	ret nz                                           ; $7b33: $c0

	ld hl, sp+$3e                                    ; $7b34: $f8 $3e
	rlca                                             ; $7b36: $07
	ld bc, $6ec0                                     ; $7b37: $01 $c0 $6e
	rst SubAFromHL                                          ; $7b3a: $d7
	sbc l                                            ; $7b3b: $9d
	add b                                            ; $7b3c: $80
	ld b, b                                          ; $7b3d: $40
	ld l, a                                          ; $7b3e: $6f
	ld sp, hl                                        ; $7b3f: $f9
	rst SubAFromDE                                          ; $7b40: $df
	ret nz                                           ; $7b41: $c0

	ld a, [hl]                                       ; $7b42: $7e
	ld e, c                                          ; $7b43: $59
	ld a, [hl]                                       ; $7b44: $7e
	ld e, b                                          ; $7b45: $58
	sbc e                                            ; $7b46: $9b
	dec b                                            ; $7b47: $05
	ld [$161b], sp                                   ; $7b48: $08 $1b $16
	ld a, b                                          ; $7b4b: $78
	xor d                                            ; $7b4c: $aa
	sbc b                                            ; $7b4d: $98
	inc bc                                           ; $7b4e: $03
	ld [bc], a                                       ; $7b4f: $02
	rlca                                             ; $7b50: $07
	rlca                                             ; $7b51: $07
	inc c                                            ; $7b52: $0c
	ld bc, $7803                                     ; $7b53: $01 $03 $78
	push hl                                          ; $7b56: $e5
	sub a                                            ; $7b57: $97
	rst SubAFromBC                                          ; $7b58: $e7
	add a                                            ; $7b59: $87
	rrca                                             ; $7b5a: $0f
	rst $38                                          ; $7b5b: $ff
	rst $38                                          ; $7b5c: $ff
	cp l                                             ; $7b5d: $bd
	ld sp, $7a41                                     ; $7b5e: $31 $41 $7a
	ret nc                                           ; $7b61: $d0

	rst SubAFromDE                                          ; $7b62: $df
	jp $83de                                         ; $7b63: $c3 $de $83


	sbc $03                                          ; $7b66: $de $03
	reti                                             ; $7b68: $d9


	ld bc, $2086                                     ; $7b69: $01 $86 $20
	ld d, b                                          ; $7b6c: $50
	ld [hl], b                                       ; $7b6d: $70
	ret nc                                           ; $7b6e: $d0

	ret z                                            ; $7b6f: $c8

	ret nz                                           ; $7b70: $c0

	pop hl                                           ; $7b71: $e1
	ldh [$e0], a                                     ; $7b72: $e0 $e0
	and b                                            ; $7b74: $a0
	sub b                                            ; $7b75: $90
	adc b                                            ; $7b76: $88
	add h                                            ; $7b77: $84
	add $e2                                          ; $7b78: $c6 $e2
	pop af                                           ; $7b7a: $f1
	halt                                             ; $7b7b: $76
	ld d, d                                          ; $7b7c: $52
	ld b, $0f                                        ; $7b7d: $06 $0f
	rrca                                             ; $7b7f: $0f

Jump_054_7b80:
	rlca                                             ; $7b80: $07
	dec bc                                           ; $7b81: $0b
	adc e                                            ; $7b82: $8b
	ld b, d                                          ; $7b83: $42

Call_054_7b84:
	ld a, e                                          ; $7b84: $7b
	db $dd                                           ; $7b85: $dd
	sbc h                                            ; $7b86: $9c
	inc bc                                           ; $7b87: $03
	inc c                                            ; $7b88: $0c
	ld [$6170], sp                                   ; $7b89: $08 $70 $61
	sub [hl]                                         ; $7b8c: $96
	ld bc, $8181                                     ; $7b8d: $01 $81 $81
	pop bc                                           ; $7b90: $c1
	rst SubAFromDE                                          ; $7b91: $df
	ld e, a                                          ; $7b92: $5f
	ld e, a                                          ; $7b93: $5f
	ld a, a                                          ; $7b94: $7f
	cp a                                             ; $7b95: $bf
	ld a, d                                          ; $7b96: $7a
	ld h, e                                          ; $7b97: $63
	sbc [hl]                                         ; $7b98: $9e
	adc a                                            ; $7b99: $8f
	sbc $9f                                          ; $7b9a: $de $9f
	sbc $bf                                          ; $7b9c: $de $bf
	sbc l                                            ; $7b9e: $9d
	db $d3                                           ; $7b9f: $d3
	cp b                                             ; $7ba0: $b8
	sbc $b0                                          ; $7ba1: $de $b0
	sbc $e0                                          ; $7ba3: $de $e0
	add b                                            ; $7ba5: $80
	ld h, b                                          ; $7ba6: $60
	add d                                            ; $7ba7: $82

jr_054_7ba8:
	jp nz, $cbc6                                     ; $7ba8: $c2 $c6 $cb

	db $ed                                           ; $7bab: $ed
	db $eb                                           ; $7bac: $eb
	ld hl, sp-$0c                                    ; $7bad: $f8 $f4
	ld bc, $0e06                                     ; $7baf: $01 $06 $0e
	rrca                                             ; $7bb2: $0f
	dec bc                                           ; $7bb3: $0b
	add hl, de                                       ; $7bb4: $19
	dec c                                            ; $7bb5: $0d
	rrca                                             ; $7bb6: $0f
	add $13                                          ; $7bb7: $c6 $13
	add hl, bc                                       ; $7bb9: $09
	ld [$f8f8], sp                                   ; $7bba: $08 $f8 $f8
	stop                                             ; $7bbd: $10 $00
	rst GetHLinHL                                          ; $7bbf: $cf
	inc sp                                           ; $7bc0: $33
	add hl, de                                       ; $7bc1: $19
	sbc b                                            ; $7bc2: $98
	ld hl, sp-$08                                    ; $7bc3: $f8 $f8
	adc d                                            ; $7bc5: $8a
	jr nc, jr_054_7ba8                               ; $7bc6: $30 $e0

	add b                                            ; $7bc8: $80
	ld b, b                                          ; $7bc9: $40
	or b                                             ; $7bca: $b0
	ret c                                            ; $7bcb: $d8

	ld a, a                                          ; $7bcc: $7f
	ccf                                              ; $7bcd: $3f
	scf                                              ; $7bce: $37
	rrca                                             ; $7bcf: $0f
	ld b, b                                          ; $7bd0: $40
	and b                                            ; $7bd1: $a0
	ret nz                                           ; $7bd2: $c0

	ldh [$60], a                                     ; $7bd3: $e0 $60
	jr nc, @+$1a                                     ; $7bd5: $30 $18

	jr @-$1f                                         ; $7bd7: $18 $df

	ld l, a                                          ; $7bd9: $6f
	rla                                              ; $7bda: $17
	ld a, e                                          ; $7bdb: $7b
	ld [hl], h                                       ; $7bdc: $74
	rst SubAFromDE                                          ; $7bdd: $df
	rst $38                                          ; $7bde: $ff
	ld a, e                                          ; $7bdf: $7b
	db $f4                                           ; $7be0: $f4

jr_054_7be1:
	sbc l                                            ; $7be1: $9d
	ld [$fe04], sp                                   ; $7be2: $08 $04 $fe
	sub e                                            ; $7be5: $93
	ld l, a                                          ; $7be6: $6f
	ld [hl], a                                       ; $7be7: $77
	sub a                                            ; $7be8: $97
	inc de                                           ; $7be9: $13
	ld sp, $3b39                                     ; $7bea: $31 $39 $3b
	ld a, [hl-]                                      ; $7bed: $3a
	ldh a, [$f8]                                     ; $7bee: $f0 $f8
	ld hl, sp-$04                                    ; $7bf0: $f8 $fc
	db $dd                                           ; $7bf2: $dd
	rst $38                                          ; $7bf3: $ff

jr_054_7bf4:
	add d                                            ; $7bf4: $82
	rst AddAOntoHL                                          ; $7bf5: $ef
	db $db                                           ; $7bf6: $db
	rst SubAFromBC                                          ; $7bf7: $e7
	pop af                                           ; $7bf8: $f1
	adc b                                            ; $7bf9: $88
	jr z, @+$2e                                      ; $7bfa: $28 $2c

	ld [hl], b                                       ; $7bfc: $70
	ld [hl], a                                       ; $7bfd: $77
	dec a                                            ; $7bfe: $3d
	ld e, $0d                                        ; $7bff: $1e $0d
	add $c7                                          ; $7c01: $c6 $c7
	jp Jump_054_7b80                                 ; $7c03: $c3 $80 $7b


	cp c                                             ; $7c06: $b9
	db $db                                           ; $7c07: $db
	or a                                             ; $7c08: $b7
	cp $4d                                           ; $7c09: $fe $4d
	ld [hl], b                                       ; $7c0b: $70
	inc a                                            ; $7c0c: $3c
	db $f4                                           ; $7c0d: $f4
	or $64                                           ; $7c0e: $f6 $64
	ret                                              ; $7c10: $c9


	ld a, a                                          ; $7c11: $7f
	cp $7e                                           ; $7c12: $fe $7e
	ld b, d                                          ; $7c14: $42
	sub c                                            ; $7c15: $91
	adc [hl]                                         ; $7c16: $8e
	inc e                                            ; $7c17: $1c
	jr z, jr_054_7c2a                                ; $7c18: $28 $10

	adc b                                            ; $7c1a: $88
	ld b, h                                          ; $7c1b: $44
	add c                                            ; $7c1c: $81
	add e                                            ; $7c1d: $83
	add [hl]                                         ; $7c1e: $86
	adc h                                            ; $7c1f: $8c
	ret c                                            ; $7c20: $d8

	ldh [rSVBK], a                                   ; $7c21: $e0 $70
	jr c, jr_054_7c9e                                ; $7c23: $38 $79

	db $e3                                           ; $7c25: $e3
	halt                                             ; $7c26: $76
	add $9e                                          ; $7c27: $c6 $9e
	ccf                                              ; $7c29: $3f

jr_054_7c2a:
	ld l, c                                          ; $7c2a: $69
	ld [hl], b                                       ; $7c2b: $70
	ld a, l                                          ; $7c2c: $7d
	and a                                            ; $7c2d: $a7

jr_054_7c2e:
	ld a, l                                          ; $7c2e: $7d
	and [hl]                                         ; $7c2f: $a6
	sub l                                            ; $7c30: $95
	ret nz                                           ; $7c31: $c0

	jr nc, jr_054_7bf4                               ; $7c32: $30 $c0

	inc a                                            ; $7c34: $3c
	add a                                            ; $7c35: $87
	nop                                              ; $7c36: $00
	rra                                              ; $7c37: $1f
	ldh a, [$e0]                                     ; $7c38: $f0 $e0
	ldh a, [$7b]                                     ; $7c3a: $f0 $7b
	xor [hl]                                         ; $7c3c: $ae
	sbc c                                            ; $7c3d: $99
	or $d9                                           ; $7c3e: $f6 $d9
	ld d, $05                                        ; $7c40: $16 $05
	ld [bc], a                                       ; $7c42: $02
	ld bc, $0979                                     ; $7c43: $01 $79 $09
	ld a, [hl]                                       ; $7c46: $7e
	ld e, h                                          ; $7c47: $5c
	sbc l                                            ; $7c48: $9d
	rlca                                             ; $7c49: $07
	inc bc                                           ; $7c4a: $03
	ld a, d                                          ; $7c4b: $7a
	xor e                                            ; $7c4c: $ab
	sub d                                            ; $7c4d: $92
	ld b, b                                          ; $7c4e: $40
	jr nz, jr_054_7be1                               ; $7c4f: $20 $90

	ld c, b                                          ; $7c51: $48
	xor b                                            ; $7c52: $a8
	rst SubAFromHL                                          ; $7c53: $d7
	jr z, jr_054_7c2e                                ; $7c54: $28 $d8

	ld h, b                                          ; $7c56: $60
	jr nc, @-$66                                     ; $7c57: $30 $98

	ret z                                            ; $7c59: $c8

	jp hl                                            ; $7c5a: $e9


	ld a, b                                          ; $7c5b: $78
	or $dd                                           ; $7c5c: $f6 $dd
	ld b, b                                          ; $7c5e: $40
	ld a, [hl]                                       ; $7c5f: $7e
	ld [hl], d                                       ; $7c60: $72

jr_054_7c61:
	rst SubAFromDE                                          ; $7c61: $df
	ld [bc], a                                       ; $7c62: $02
	sbc $60                                          ; $7c63: $de $60
	rst SubAFromDE                                          ; $7c65: $df
	ret nz                                           ; $7c66: $c0

	sub b                                            ; $7c67: $90
	add c                                            ; $7c68: $81
	inc bc                                           ; $7c69: $03
	ld b, $1c                                        ; $7c6a: $06 $1c
	jr c, jr_054_7c61                                ; $7c6c: $38 $f3

	rst $38                                          ; $7c6e: $ff
	cp a                                             ; $7c6f: $bf
	ld h, b                                          ; $7c70: $60
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	ld [$2010], sp                                   ; $7c73: $08 $10 $20
	ld b, b                                          ; $7c76: $40
	ld [hl], l                                       ; $7c77: $75
	add a                                            ; $7c78: $87
	sbc [hl]                                         ; $7c79: $9e
	rrca                                             ; $7c7a: $0f
	ld a, c                                          ; $7c7b: $79
	adc e                                            ; $7c7c: $8b
	ld a, h                                          ; $7c7d: $7c
	ld b, l                                          ; $7c7e: $45

Call_054_7c7f:
	rst SubAFromDE                                          ; $7c7f: $df
	rrca                                             ; $7c80: $0f
	rst SubAFromHL                                          ; $7c81: $d7
	ld bc, $809c                                     ; $7c82: $01 $9c $80
	add c                                            ; $7c85: $81
	add c                                            ; $7c86: $81
	halt                                             ; $7c87: $76
	sbc b                                            ; $7c88: $98
	ld a, c                                          ; $7c89: $79
	db $ed                                           ; $7c8a: $ed
	db $dd                                           ; $7c8b: $dd
	add b                                            ; $7c8c: $80
	ld a, a                                          ; $7c8d: $7f
	ld c, b                                          ; $7c8e: $48
	ld a, l                                          ; $7c8f: $7d
	ld [hl], b                                       ; $7c90: $70
	sbc $ff                                          ; $7c91: $de $ff
	sbc [hl]                                         ; $7c93: $9e
	ld a, a                                          ; $7c94: $7f
	ld a, e                                          ; $7c95: $7b
	ld sp, hl                                        ; $7c96: $f9
	sub e                                            ; $7c97: $93
	sbc a                                            ; $7c98: $9f
	add a                                            ; $7c99: $87
	add e                                            ; $7c9a: $83
	ld b, c                                          ; $7c9b: $41
	ld b, b                                          ; $7c9c: $40
	ld b, b                                          ; $7c9d: $40

jr_054_7c9e:
	jr nz, jr_054_7cb0                               ; $7c9e: $20 $10

	ld [$8004], sp                                   ; $7ca0: $08 $04 $80
	jp nz, $087b                                     ; $7ca3: $c2 $7b $08

	ld a, a                                          ; $7ca6: $7f
	rst FarCall                                          ; $7ca7: $f7
	adc b                                            ; $7ca8: $88
	adc b                                            ; $7ca9: $88
	add $e1                                          ; $7caa: $c6 $e1
	ldh a, [$63]                                     ; $7cac: $f0 $63
	inc hl                                           ; $7cae: $23
	ld [de], a                                       ; $7caf: $12

jr_054_7cb0:
	ld a, [de]                                       ; $7cb0: $1a
	ld c, $06                                        ; $7cb1: $0e $06
	add d                                            ; $7cb3: $82
	ldh [$3f], a                                     ; $7cb4: $e0 $3f
	ld a, $1e                                        ; $7cb6: $3e $1e
	ld c, $06                                        ; $7cb8: $0e $06
	ld [bc], a                                       ; $7cba: $02
	ld [bc], a                                       ; $7cbb: $02
	ret nz                                           ; $7cbc: $c0

	ld [hl], b                                       ; $7cbd: $70
	ld h, b                                          ; $7cbe: $60
	jr nz, @-$20                                     ; $7cbf: $20 $de

	ld h, b                                          ; $7cc1: $60
	sbc l                                            ; $7cc2: $9d
	jr nz, jr_054_7cc5                               ; $7cc3: $20 $00

jr_054_7cc5:
	sbc $40                                          ; $7cc5: $de $40
	db $fc                                           ; $7cc7: $fc
	ld a, h                                          ; $7cc8: $7c
	add b                                            ; $7cc9: $80
	ld a, e                                          ; $7cca: $7b
	ld l, c                                          ; $7ccb: $69
	cp $78                                           ; $7ccc: $fe $78
	push de                                          ; $7cce: $d5
	ld l, [hl]                                       ; $7ccf: $6e
	dec a                                            ; $7cd0: $3d
	sbc l                                            ; $7cd1: $9d
	add b                                            ; $7cd2: $80
	ldh [$de], a                                     ; $7cd3: $e0 $de
	rst $38                                          ; $7cd5: $ff
	sbc l                                            ; $7cd6: $9d
	ccf                                              ; $7cd7: $3f
	rrca                                             ; $7cd8: $0f
	ld a, b                                          ; $7cd9: $78
	or l                                             ; $7cda: $b5
	db $fc                                           ; $7cdb: $fc
	ld a, l                                          ; $7cdc: $7d
	db $ec                                           ; $7cdd: $ec
	sbc [hl]                                         ; $7cde: $9e
	cp a                                             ; $7cdf: $bf
	ld [hl], b                                       ; $7ce0: $70
	ld hl, $0c9a                                     ; $7ce1: $21 $9a $0c
	rra                                              ; $7ce4: $1f
	ld a, c                                          ; $7ce5: $79
	inc c                                            ; $7ce6: $0c
	ld [bc], a                                       ; $7ce7: $02
	ld [hl], b                                       ; $7ce8: $70
	jr nc, jr_054_7d65                               ; $7ce9: $30 $7a

	ld a, d                                          ; $7ceb: $7a
	sbc h                                            ; $7cec: $9c
	rst $38                                          ; $7ced: $ff
	db $fd                                           ; $7cee: $fd
	cp $7a                                           ; $7cef: $fe $7a
	nop                                              ; $7cf1: $00
	ld [hl], a                                       ; $7cf2: $77
	jp z, $079d                                      ; $7cf3: $ca $9d $07

	ld e, $de                                        ; $7cf6: $1e $de
	inc e                                            ; $7cf8: $1c
	rst SubAFromDE                                          ; $7cf9: $df
	add hl, de                                       ; $7cfa: $19
	sbc l                                            ; $7cfb: $9d
	ld a, c                                          ; $7cfc: $79
	dec l                                            ; $7cfd: $2d
	db $dd                                           ; $7cfe: $dd
	rst $38                                          ; $7cff: $ff
	rst SubAFromDE                                          ; $7d00: $df
	cp $9e                                           ; $7d01: $fe $9e
	xor $78                                          ; $7d03: $ee $78
	jp nz, $fe98                                     ; $7d05: $c2 $98 $fe

	sbc $86                                          ; $7d08: $de $86
	nop                                              ; $7d0a: $00
	ld b, h                                          ; $7d0b: $44
	ret nc                                           ; $7d0c: $d0

	add b                                            ; $7d0d: $80
	ld [hl], l                                       ; $7d0e: $75
	and h                                            ; $7d0f: $a4
	ld a, [hl]                                       ; $7d10: $7e
	ld b, a                                          ; $7d11: $47
	add b                                            ; $7d12: $80
	db $e3                                           ; $7d13: $e3
	ld e, l                                          ; $7d14: $5d
	cpl                                              ; $7d15: $2f
	sub h                                            ; $7d16: $94
	ld [$7101], sp                                   ; $7d17: $08 $01 $71
	ld a, [hl-]                                      ; $7d1a: $3a
	dec a                                            ; $7d1b: $3d
	ld [bc], a                                       ; $7d1c: $02
	ld b, a                                          ; $7d1d: $47
	ld h, a                                          ; $7d1e: $67
	di                                               ; $7d1f: $f3
	ld sp, hl                                        ; $7d20: $f9
	adc h                                            ; $7d21: $8c
	call nz, $20c2                                   ; $7d22: $c4 $c2 $20
	ret z                                            ; $7d25: $c8

	ldh a, [c]                                       ; $7d26: $f2
	sbc l                                            ; $7d27: $9d
	and l                                            ; $7d28: $a5
	jp c, Jump_054_5f8e                              ; $7d29: $da $8e $5f

	inc e                                            ; $7d2c: $1c
	ld b, $e1                                        ; $7d2d: $06 $e1
	ldh a, [$fe]                                     ; $7d2f: $f0 $fe
	rst FarCall                                          ; $7d31: $f7
	sub l                                            ; $7d32: $95
	ld e, a                                          ; $7d33: $5f
	ccf                                              ; $7d34: $3f
	ld h, a                                          ; $7d35: $67
	pop bc                                           ; $7d36: $c1
	ret nz                                           ; $7d37: $c0

	ld h, b                                          ; $7d38: $60
	ld [hl], b                                       ; $7d39: $70
	ld hl, sp+$4f                                    ; $7d3a: $f8 $4f
	and $74                                          ; $7d3c: $e6 $74
	and h                                            ; $7d3e: $a4
	sub [hl]                                         ; $7d3f: $96
	ccf                                              ; $7d40: $3f
	sbc a                                            ; $7d41: $9f
	rst $38                                          ; $7d42: $ff
	db $fc                                           ; $7d43: $fc
	ld hl, sp-$79                                    ; $7d44: $f8 $87
	ld hl, sp+$7f                                    ; $7d46: $f8 $7f
	ld h, e                                          ; $7d48: $63
	ld a, e                                          ; $7d49: $7b
	and l                                            ; $7d4a: $a5
	db $dd                                           ; $7d4b: $dd
	rst $38                                          ; $7d4c: $ff
	sbc [hl]                                         ; $7d4d: $9e
	db $e3                                           ; $7d4e: $e3
	ld [hl], a                                       ; $7d4f: $77
	sbc l                                            ; $7d50: $9d
	ld a, h                                          ; $7d51: $7c
	ld e, [hl]                                       ; $7d52: $5e
	ld a, l                                          ; $7d53: $7d
	ld [hl], h                                       ; $7d54: $74
	sbc h                                            ; $7d55: $9c

jr_054_7d56:
	cp $10                                           ; $7d56: $fe $10
	ld [hl], b                                       ; $7d58: $70
	call c, $99ff                                    ; $7d59: $dc $ff $99
	cp $30                                           ; $7d5c: $fe $30
	ldh a, [$30]                                     ; $7d5e: $f0 $30
	ldh [rAUD4LEN], a                                ; $7d60: $e0 $20
	ld [hl], e                                       ; $7d62: $73
	ld h, l                                          ; $7d63: $65
	ld a, [hl]                                       ; $7d64: $7e

jr_054_7d65:
	and d                                            ; $7d65: $a2
	ld a, l                                          ; $7d66: $7d
	ld a, [hl-]                                      ; $7d67: $3a
	db $fd                                           ; $7d68: $fd
	sub b                                            ; $7d69: $90
	ld b, h                                          ; $7d6a: $44
	adc h                                            ; $7d6b: $8c
	adc b                                            ; $7d6c: $88
	sbc b                                            ; $7d6d: $98
	adc b                                            ; $7d6e: $88
	cp b                                             ; $7d6f: $b8
	sbc b                                            ; $7d70: $98
	ldh a, [$3c]                                     ; $7d71: $f0 $3c
	ld a, b                                          ; $7d73: $78
	ld a, b                                          ; $7d74: $78
	ld [hl], b                                       ; $7d75: $70
	ld [hl], b                                       ; $7d76: $70
	ld h, b                                          ; $7d77: $60
	ld h, b                                          ; $7d78: $60
	ld l, a                                          ; $7d79: $6f
	dec hl                                           ; $7d7a: $2b
	or $6f                                           ; $7d7b: $f6 $6f
	ld [hl+], a                                      ; $7d7d: $22
	reti                                             ; $7d7e: $d9


	ld bc, $4a7b                                     ; $7d7f: $01 $7b $4a
	sbc e                                            ; $7d82: $9b
	ldh [$e1], a                                     ; $7d83: $e0 $e1
	pop af                                           ; $7d85: $f1
	pop af                                           ; $7d86: $f1
	ld a, d                                          ; $7d87: $7a
	inc de                                           ; $7d88: $13
	sbc $c0                                          ; $7d89: $de $c0
	rst SubAFromDE                                          ; $7d8b: $df
	and b                                            ; $7d8c: $a0
	rst SubAFromDE                                          ; $7d8d: $df
	sub b                                            ; $7d8e: $90
	sub [hl]                                         ; $7d8f: $96
	adc b                                            ; $7d90: $88
	ld a, a                                          ; $7d91: $7f
	ccf                                              ; $7d92: $3f
	sbc a                                            ; $7d93: $9f
	rst GetHLinHL                                          ; $7d94: $cf
	pop hl                                           ; $7d95: $e1
	ldh a, [rSVBK]                                   ; $7d96: $f0 $70
	nop                                              ; $7d98: $00
	ld a, d                                          ; $7d99: $7a
	ret                                              ; $7d9a: $c9


	sbc [hl]                                         ; $7d9b: $9e
	rlca                                             ; $7d9c: $07
	ld [hl], e                                       ; $7d9d: $73
	xor b                                            ; $7d9e: $a8
	ld a, d                                          ; $7d9f: $7a
	ld c, h                                          ; $7da0: $4c
	ld a, a                                          ; $7da1: $7f
	db $ec                                           ; $7da2: $ec
	rst $38                                          ; $7da3: $ff
	sbc d                                            ; $7da4: $9a
	jr c, jr_054_7dc5                                ; $7da5: $38 $1e

	rrca                                             ; $7da7: $0f
	rrca                                             ; $7da8: $0f
	rst $38                                          ; $7da9: $ff
	cp $9a                                           ; $7daa: $fe $9a
	ld h, b                                          ; $7dac: $60
	inc e                                            ; $7dad: $1c
	rrca                                             ; $7dae: $0f
	rst SubAFromDE                                          ; $7daf: $df
	rst $38                                          ; $7db0: $ff
	ld a, e                                          ; $7db1: $7b
	rst FarCall                                          ; $7db2: $f7
	ld a, l                                          ; $7db3: $7d
	pop de                                           ; $7db4: $d1
	sbc l                                            ; $7db5: $9d
	add [hl]                                         ; $7db6: $86
	pop hl                                           ; $7db7: $e1
	ld [hl], a                                       ; $7db8: $77
	ldh a, [rIE]                                     ; $7db9: $f0 $ff
	sbc h                                            ; $7dbb: $9c
	jr jr_054_7d56                                   ; $7dbc: $18 $98

	ldh a, [$fb]                                     ; $7dbe: $f0 $fb
	ld a, a                                          ; $7dc0: $7f
	or l                                             ; $7dc1: $b5
	ld a, [$019c]                                    ; $7dc2: $fa $9c $01

jr_054_7dc5:
	rlca                                             ; $7dc5: $07
	rra                                              ; $7dc6: $1f
	ld a, e                                          ; $7dc7: $7b
	adc $fb                                          ; $7dc8: $ce $fb
	ld a, c                                          ; $7dca: $79
	push af                                          ; $7dcb: $f5
	call c, $faff                                    ; $7dcc: $dc $ff $fa
	sbc [hl]                                         ; $7dcf: $9e
	inc bc                                           ; $7dd0: $03
	halt                                             ; $7dd1: $76
	db $d3                                           ; $7dd2: $d3
	sbc e                                            ; $7dd3: $9b
	db $fc                                           ; $7dd4: $fc
	ldh a, [$c3]                                     ; $7dd5: $f0 $c3
	inc c                                            ; $7dd7: $0c
	ld [hl], a                                       ; $7dd8: $77
	db $f4                                           ; $7dd9: $f4
	sbc [hl]                                         ; $7dda: $9e
	rrca                                             ; $7ddb: $0f
	ld a, e                                          ; $7ddc: $7b
	push hl                                          ; $7ddd: $e5
	sbc d                                            ; $7dde: $9a
	add sp, -$0f                                     ; $7ddf: $e8 $f1
	jp nz, $310c                                     ; $7de1: $c2 $0c $31

	ld a, e                                          ; $7de4: $7b
	db $fd                                           ; $7de5: $fd
	ld l, e                                          ; $7de6: $6b
	reti                                             ; $7de7: $d9


	sbc e                                            ; $7de8: $9b
	rst $38                                          ; $7de9: $ff
	sbc a                                            ; $7dea: $9f
	scf                                              ; $7deb: $37
	inc bc                                           ; $7dec: $03
	halt                                             ; $7ded: $76
	adc a                                            ; $7dee: $8f
	ld a, a                                          ; $7def: $7f
	adc h                                            ; $7df0: $8c
	ld a, b                                          ; $7df1: $78
	sub h                                            ; $7df2: $94
	db $fd                                           ; $7df3: $fd
	sub e                                            ; $7df4: $93
	ldh a, [c]                                       ; $7df5: $f2
	xor $7f                                          ; $7df6: $ee $7f
	cpl                                              ; $7df8: $2f
	inc bc                                           ; $7df9: $03
	ldh a, [rIE]                                     ; $7dfa: $f0 $ff
	rst $38                                          ; $7dfc: $ff
	dec sp                                           ; $7dfd: $3b
	db $db                                           ; $7dfe: $db

Call_054_7dff:
Jump_054_7dff:
	rst $38                                          ; $7dff: $ff
	rra                                              ; $7e00: $1f
	db $fd                                           ; $7e01: $fd
	rst SubAFromDE                                          ; $7e02: $df
	ld e, $80                                        ; $7e03: $1e $80
	cp a                                             ; $7e05: $bf
	db $fd                                           ; $7e06: $fd
	ld a, e                                          ; $7e07: $7b
	ld l, $80                                        ; $7e08: $2e $80
	db $fc                                           ; $7e0a: $fc
	pop hl                                           ; $7e0b: $e1
	pop hl                                           ; $7e0c: $e1
	ld h, b                                          ; $7e0d: $60
	xor $fe                                          ; $7e0e: $ee $fe
	rla                                              ; $7e10: $17
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	or e                                             ; $7e13: $b3
	ld e, e                                          ; $7e14: $5b
	dec l                                            ; $7e15: $2d
	rla                                              ; $7e16: $17
	add hl, bc                                       ; $7e17: $09
	nop                                              ; $7e18: $00
	jp nz, $1f04                                     ; $7e19: $c2 $04 $1f

	adc a                                            ; $7e1c: $8f
	rst JumpTable                                          ; $7e1d: $c7
	db $e3                                           ; $7e1e: $e3
	di                                               ; $7e1f: $f3
	ld sp, hl                                        ; $7e20: $f9
	inc a                                            ; $7e21: $3c
	ld [bc], a                                       ; $7e22: $02
	ld [hl], a                                       ; $7e23: $77
	rst SubAFromDE                                          ; $7e24: $df
	ld l, a                                          ; $7e25: $6f
	adc c                                            ; $7e26: $89
	db $fd                                           ; $7e27: $fd
	ld a, l                                          ; $7e28: $7d
	rst $38                                          ; $7e29: $ff
	rst SubAFromDE                                          ; $7e2a: $df
	ld c, $9e                                        ; $7e2b: $0e $9e
	sbc a                                            ; $7e2d: $9f
	sbc a                                            ; $7e2e: $9f
	sub d                                            ; $7e2f: $92
	ldh a, [c]                                       ; $7e30: $f2
	ld [hl], e                                       ; $7e31: $73
	ld [hl], d                                       ; $7e32: $72
	ld a, h                                          ; $7e33: $7c
	adc e                                            ; $7e34: $8b
	rst AddAOntoHL                                          ; $7e35: $ef
	or e                                             ; $7e36: $b3
	jp $37a7                                         ; $7e37: $c3 $a7 $37


	ld e, [hl]                                       ; $7e3a: $5e
	xor $07                                          ; $7e3b: $ee $07
	ld a, c                                          ; $7e3d: $79
	halt                                             ; $7e3e: $76

Call_054_7e3f:
	halt                                             ; $7e3f: $76
	adc $7e                                          ; $7e40: $ce $7e
	jp c, Jump_054_7672                              ; $7e42: $da $72 $76

	ld a, h                                          ; $7e45: $7c
	ld c, e                                          ; $7e46: $4b
	ld l, e                                          ; $7e47: $6b
	rst FarCall                                          ; $7e48: $f7
	rst SubAFromDE                                          ; $7e49: $df
	inc b                                            ; $7e4a: $04
	adc a                                            ; $7e4b: $8f
	ld bc, $0309                                     ; $7e4c: $01 $09 $03
	inc de                                           ; $7e4f: $13
	rla                                              ; $7e50: $17
	scf                                              ; $7e51: $37
	inc bc                                           ; $7e52: $03
	inc bc                                           ; $7e53: $03
	rlca                                             ; $7e54: $07
	rlca                                             ; $7e55: $07
	ld c, $0e                                        ; $7e56: $0e $0e

jr_054_7e58:
	rrca                                             ; $7e58: $0f
	inc c                                            ; $7e59: $0c
	ldh a, [$f0]                                     ; $7e5a: $f0 $f0
	ld [hl], a                                       ; $7e5c: $77
	rst SubAFromBC                                          ; $7e5d: $e7
	ld a, a                                          ; $7e5e: $7f
	adc a                                            ; $7e5f: $8f
	ld l, e                                          ; $7e60: $6b
	jp c, $8c73                                      ; $7e61: $da $73 $8c

	ld a, e                                          ; $7e64: $7b
	ld d, l                                          ; $7e65: $55
	sbc [hl]                                         ; $7e66: $9e
	db $fc                                           ; $7e67: $fc
	ld h, a                                          ; $7e68: $67
	ld b, c                                          ; $7e69: $41
	db $fc                                           ; $7e6a: $fc
	sbc l                                            ; $7e6b: $9d
	ccf                                              ; $7e6c: $3f
	pop bc                                           ; $7e6d: $c1
	ld a, c                                          ; $7e6e: $79
	ld l, [hl]                                       ; $7e6f: $6e
	ld [hl], a                                       ; $7e70: $77
	ld hl, sp+$7f                                    ; $7e71: $f8 $7f
	ld d, c                                          ; $7e73: $51
	rst SubAFromDE                                          ; $7e74: $df
	db $fc                                           ; $7e75: $fc
	halt                                             ; $7e76: $76
	jr jr_054_7e58                                   ; $7e77: $18 $df

	jp nz, Jump_054_537c                             ; $7e79: $c2 $7c $53

	sbc c                                            ; $7e7c: $99
	ld b, e                                          ; $7e7d: $43
	ld b, c                                          ; $7e7e: $41
	ld b, d                                          ; $7e7f: $42
	cp $e2                                           ; $7e80: $fe $e2
	jp nz, $cc7b                                     ; $7e82: $c2 $7b $cc

	sbc [hl]                                         ; $7e85: $9e
	ld a, [hl]                                       ; $7e86: $7e
	ld a, c                                          ; $7e87: $79
	ld h, b                                          ; $7e88: $60
	ld a, e                                          ; $7e89: $7b
	ret z                                            ; $7e8a: $c8

	sbc d                                            ; $7e8b: $9a
	ret nz                                           ; $7e8c: $c0

	jr nz, @+$21                                     ; $7e8d: $20 $1f

	ld [$7204], sp                                   ; $7e8f: $08 $04 $72
	cp h                                             ; $7e92: $bc
	ld a, e                                          ; $7e93: $7b
	db $dd                                           ; $7e94: $dd
	ld l, [hl]                                       ; $7e95: $6e
	push hl                                          ; $7e96: $e5
	ld a, a                                          ; $7e97: $7f
	dec a                                            ; $7e98: $3d
	ld [hl], e                                       ; $7e99: $73
	ld hl, sp-$64                                    ; $7e9a: $f8 $9c
	rlca                                             ; $7e9c: $07
	rst $38                                          ; $7e9d: $ff
	cp $74                                           ; $7e9e: $fe $74
	sub l                                            ; $7ea0: $95
	halt                                             ; $7ea1: $76
	dec hl                                           ; $7ea2: $2b
	ld a, a                                          ; $7ea3: $7f
	ldh [$9e], a                                     ; $7ea4: $e0 $9e
	ld bc, $2e75                                     ; $7ea6: $01 $75 $2e
	sbc l                                            ; $7ea9: $9d
	jr @+$22                                         ; $7eaa: $18 $20

	ld l, e                                          ; $7eac: $6b
	ldh a, [$dc]                                     ; $7ead: $f0 $dc
	rst $38                                          ; $7eaf: $ff
	sbc [hl]                                         ; $7eb0: $9e
	db $fc                                           ; $7eb1: $fc
	ld l, l                                          ; $7eb2: $6d
	sub e                                            ; $7eb3: $93
	ld a, a                                          ; $7eb4: $7f
	reti                                             ; $7eb5: $d9


	ld a, a                                          ; $7eb6: $7f

jr_054_7eb7:
	or $9c                                           ; $7eb7: $f6 $9c
	jr nc, jr_054_7eb7                               ; $7eb9: $30 $fc

	ldh a, [$6f]                                     ; $7ebb: $f0 $6f
	di                                               ; $7ebd: $f3
	ld a, [hl]                                       ; $7ebe: $7e
	call nc, $e47c                                   ; $7ebf: $d4 $7c $e4
	add b                                            ; $7ec2: $80
	ldh [hDisp0_SCY], a                                     ; $7ec3: $e0 $83
	rlca                                             ; $7ec5: $07
	rra                                              ; $7ec6: $1f
	jr @+$75                                         ; $7ec7: $18 $73

	inc h                                            ; $7ec9: $24
	ld bc, $0e07                                     ; $7eca: $01 $07 $0e
	dec a                                            ; $7ecd: $3d
	ld a, [$8fe7]                                    ; $7ece: $fa $e7 $8f
	rra                                              ; $7ed1: $1f
	ld a, [hl]                                       ; $7ed2: $7e
	ld hl, sp-$0f                                    ; $7ed3: $f8 $f1
	jp $c207                                         ; $7ed5: $c3 $07 $c2


	ld h, l                                          ; $7ed8: $65

Jump_054_7ed9:
	res 2, [hl]                                      ; $7ed9: $cb $96
	inc l                                            ; $7edb: $2c
	ret c                                            ; $7edc: $d8

	ld a, c                                          ; $7edd: $79
	di                                               ; $7ede: $f3
	rst $38                                          ; $7edf: $ff
	sbc [hl]                                         ; $7ee0: $9e
	inc a                                            ; $7ee1: $3c
	ld a, a                                          ; $7ee2: $7f
	ei                                               ; $7ee3: $fb
	sbc l                                            ; $7ee4: $9d
	rst SubAFromBC                                          ; $7ee5: $e7
	add a                                            ; $7ee6: $87
	ld [hl], b                                       ; $7ee7: $70
	inc [hl]                                         ; $7ee8: $34
	rst SubAFromDE                                          ; $7ee9: $df
	rst $38                                          ; $7eea: $ff
	ld l, a                                          ; $7eeb: $6f
	ld b, d                                          ; $7eec: $42
	ld a, c                                          ; $7eed: $79
	ld [hl-], a                                      ; $7eee: $32
	ld l, e                                          ; $7eef: $6b
	xor l                                            ; $7ef0: $ad
	ld sp, hl                                        ; $7ef1: $f9
	ld a, c                                          ; $7ef2: $79
	jp $f04b                                         ; $7ef3: $c3 $4b $f0


	sbc [hl]                                         ; $7ef6: $9e
	ldh [$74], a                                     ; $7ef7: $e0 $74
	jp nc, Jump_054_4279                             ; $7ef9: $d2 $79 $42

	ld l, [hl]                                       ; $7efc: $6e
	ld b, a                                          ; $7efd: $47
	ld a, l                                          ; $7efe: $7d

Call_054_7eff:
Jump_054_7eff:
	and l                                            ; $7eff: $a5
	add b                                            ; $7f00: $80
	jr nc, @+$03                                     ; $7f01: $30 $01

	call c, $0720                                    ; $7f03: $dc $20 $07
	db $10                                           ; $7f06: $10
	dec bc                                           ; $7f07: $0b
	dec b                                            ; $7f08: $05
	dec c                                            ; $7f09: $0d
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	rst GetHLinHL                                          ; $7f0c: $cf
	ldh [$e3], a                                     ; $7f0d: $e0 $e3
	ldh a, [$f8]                                     ; $7f0f: $f0 $f8
	db $f4                                           ; $7f11: $f4
	ld [hl-], a                                      ; $7f12: $32
	add hl, de                                       ; $7f13: $19
	inc hl                                           ; $7f14: $23
	rlca                                             ; $7f15: $07
	ld bc, $eb16                                     ; $7f16: $01 $16 $eb
	cp h                                             ; $7f19: $bc
	cp $07                                           ; $7f1a: $fe $07
	ret nz                                           ; $7f1c: $c0

	ld hl, sp-$01                                    ; $7f1d: $f8 $ff
	rst $38                                          ; $7f1f: $ff
	adc h                                            ; $7f20: $8c
	scf                                              ; $7f21: $37
	nop                                              ; $7f22: $00
	jr nz, @+$6a                                     ; $7f23: $20 $68

	ld b, l                                          ; $7f25: $45

jr_054_7f26:
	add e                                            ; $7f26: $83
	rlca                                             ; $7f27: $07
	ret nz                                           ; $7f28: $c0

	ld l, h                                          ; $7f29: $6c
	nop                                              ; $7f2a: $00
	db $10                                           ; $7f2b: $10
	jr nc, jr_054_7f26                               ; $7f2c: $30 $f8

	db $fc                                           ; $7f2e: $fc
	ld hl, sp+$3f                                    ; $7f2f: $f8 $3f
	sbc a                                            ; $7f31: $9f
	ld a, $6e                                        ; $7f32: $3e $6e
	sbc $fe                                          ; $7f34: $de $fe
	sbc d                                            ; $7f36: $9a
	db $fc                                           ; $7f37: $fc
	cp h                                             ; $7f38: $bc
	jr jr_054_7f43                                   ; $7f39: $18 $08

	jr jr_054_7fb5                                   ; $7f3b: $18 $78

	ld e, a                                          ; $7f3d: $5f
	sbc $80                                          ; $7f3e: $de $80
	pop af                                           ; $7f40: $f1
	adc l                                            ; $7f41: $8d
	inc c                                            ; $7f42: $0c

jr_054_7f43:
	dec c                                            ; $7f43: $0d
	dec bc                                           ; $7f44: $0b
	rra                                              ; $7f45: $1f
	rra                                              ; $7f46: $1f
	ccf                                              ; $7f47: $3f
	ld a, c                                          ; $7f48: $79
	pop af                                           ; $7f49: $f1
	inc c                                            ; $7f4a: $0c
	ld [$1008], sp                                   ; $7f4b: $08 $08 $10
	inc de                                           ; $7f4e: $13
	inc h                                            ; $7f4f: $24
	ld l, b                                          ; $7f50: $68
	ldh a, [$f8]                                     ; $7f51: $f0 $f8
	ei                                               ; $7f53: $fb
	db $dd                                           ; $7f54: $dd
	rst $38                                          ; $7f55: $ff
	ld a, l                                          ; $7f56: $7d
	adc $df                                          ; $7f57: $ce $df
	rlca                                             ; $7f59: $07
	sbc [hl]                                         ; $7f5a: $9e
	inc a                                            ; $7f5b: $3c
	ld [hl], d                                       ; $7f5c: $72
	db $f4                                           ; $7f5d: $f4
	sbc [hl]                                         ; $7f5e: $9e
	ld b, e                                          ; $7f5f: $43
	db $dd                                           ; $7f60: $dd
	rst $38                                          ; $7f61: $ff
	sbc e                                            ; $7f62: $9b
	adc a                                            ; $7f63: $8f
	nop                                              ; $7f64: $00
	nop                                              ; $7f65: $00
	jp nz, Jump_054_6c6b                             ; $7f66: $c2 $6b $6c

	ld l, l                                          ; $7f69: $6d
	ld sp, hl                                        ; $7f6a: $f9
	sbc d                                            ; $7f6b: $9a
	ld a, a                                          ; $7f6c: $7f
	adc a                                            ; $7f6d: $8f
	ld [bc], a                                       ; $7f6e: $02
	pop af                                           ; $7f6f: $f1
	dec c                                            ; $7f70: $0d
	ld [hl], c                                       ; $7f71: $71
	ld d, [hl]                                       ; $7f72: $56
	ld l, h                                          ; $7f73: $6c
	ld a, e                                          ; $7f74: $7b
	ld a, l                                          ; $7f75: $7d
	ld l, [hl]                                       ; $7f76: $6e
	ld l, a                                          ; $7f77: $6f
	ld hl, sp-$80                                    ; $7f78: $f8 $80
	ld h, c                                          ; $7f7a: $61
	db $10                                           ; $7f7b: $10
	add hl, de                                       ; $7f7c: $19
	rla                                              ; $7f7d: $17
	ccf                                              ; $7f7e: $3f
	ld a, a                                          ; $7f7f: $7f
	ld c, [hl]                                       ; $7f80: $4e
	sbc l                                            ; $7f81: $9d
	ld a, [hl-]                                      ; $7f82: $3a
	ld [hl], b                                       ; $7f83: $70
	rrca                                             ; $7f84: $0f
	rra                                              ; $7f85: $1f
	rra                                              ; $7f86: $1f
	ld [hl], $45                                     ; $7f87: $36 $45
	adc d                                            ; $7f89: $8a
	dec d                                            ; $7f8a: $15
	cpl                                              ; $7f8b: $2f
	add sp, -$2e                                     ; $7f8c: $e8 $d2
	xor h                                            ; $7f8e: $ac
	ld [hl], c                                       ; $7f8f: $71
	jp $110c                                         ; $7f90: $c3 $0c $11


	daa                                              ; $7f93: $27

jr_054_7f94:
	ret nc                                           ; $7f94: $d0

	and c                                            ; $7f95: $a1

Jump_054_7f96:
	ld b, e                                          ; $7f96: $43
	adc [hl]                                         ; $7f97: $8e
	inc a                                            ; $7f98: $3c
	ld a, d                                          ; $7f99: $7a
	ld b, h                                          ; $7f9a: $44
	sub h                                            ; $7f9b: $94
	sbc b                                            ; $7f9c: $98

Jump_054_7f9d:
	jr nc, @+$64                                     ; $7f9d: $30 $62

	add e                                            ; $7f9f: $83
	jr @+$72                                         ; $7fa0: $18 $70

	db $e3                                           ; $7fa2: $e3
	adc [hl]                                         ; $7fa3: $8e
	ld h, b                                          ; $7fa4: $60
	ret nz                                           ; $7fa5: $c0

	add c                                            ; $7fa6: $81
	ld [hl], e                                       ; $7fa7: $73
	ld l, $94                                        ; $7fa8: $2e $94
	ld b, a                                          ; $7faa: $47
	add hl, de                                       ; $7fab: $19
	ld h, a                                          ; $7fac: $67
	rrca                                             ; $7fad: $0f
	inc a                                            ; $7fae: $3c
	ldh a, [$c3]                                     ; $7faf: $f0 $c3
	nop                                              ; $7fb1: $00
	jr c, jr_054_7f94                                ; $7fb2: $38 $e0

	add b                                            ; $7fb4: $80

Jump_054_7fb5:
jr_054_7fb5:
	ld a, c                                          ; $7fb5: $79
	adc a                                            ; $7fb6: $8f
	sub b                                            ; $7fb7: $90
	inc a                                            ; $7fb8: $3c
	rst $38                                          ; $7fb9: $ff
	push af                                          ; $7fba: $f5
	db $eb                                           ; $7fbb: $eb
	add a                                            ; $7fbc: $87
	ld e, $79                                        ; $7fbd: $1e $79
	add $18                                          ; $7fbf: $c6 $18
	scf                                              ; $7fc1: $37
	ld c, $1c                                        ; $7fc2: $0e $1c
	ld a, b                                          ; $7fc4: $78
	pop hl                                           ; $7fc5: $e1
	add a                                            ; $7fc6: $87
	ld a, e                                          ; $7fc7: $7b
	sub e                                            ; $7fc8: $93
	sbc e                                            ; $7fc9: $9b
	and $cc                                          ; $7fca: $e6 $cc
	jr nc, @+$63                                     ; $7fcc: $30 $61

	ld [hl], a                                       ; $7fce: $77
	ld hl, sp+$65                                    ; $7fcf: $f8 $65
	add b                                            ; $7fd1: $80
	sub b                                            ; $7fd2: $90
	ld b, b                                          ; $7fd3: $40
	jr nz, jr_054_7ff6                               ; $7fd4: $20 $20

	db $10                                           ; $7fd6: $10
	db $10                                           ; $7fd7: $10
	ld [$0204], sp                                   ; $7fd8: $08 $04 $02
	add b                                            ; $7fdb: $80
	ret nz                                           ; $7fdc: $c0

	ret nz                                           ; $7fdd: $c0

	ldh [$e0], a                                     ; $7fde: $e0 $e0
	ldh a, [$f8]                                     ; $7fe0: $f0 $f8
	ld a, d                                          ; $7fe2: $7a
	ld [$0399], sp                                   ; $7fe3: $08 $99 $03
	ccf                                              ; $7fe6: $3f
	ld a, a                                          ; $7fe7: $7f
	ld l, a                                          ; $7fe8: $6f
	ld d, b                                          ; $7fe9: $50
	ld l, e                                          ; $7fea: $6b
	cp $92                                           ; $7feb: $fe $92
	ld b, b                                          ; $7fed: $40
	rst SubAFromDE                                          ; $7fee: $df
	rst SubAFromDE                                          ; $7fef: $df
	ld l, a                                          ; $7ff0: $6f
	scf                                              ; $7ff1: $37
	nop                                              ; $7ff2: $00
	nop                                              ; $7ff3: $00
	di                                               ; $7ff4: $f3
	ld e, [hl]                                       ; $7ff5: $5e

jr_054_7ff6:
	ret c                                            ; $7ff6: $d8

	rst JumpTable                                          ; $7ff7: $c7
	and $ed                                          ; $7ff8: $e6 $ed
	ld a, d                                          ; $7ffa: $7a

Call_054_7ffb:
	ld l, [hl]                                       ; $7ffb: $6e
	rst SubAFromDE                                          ; $7ffc: $df
	rst $38                                          ; $7ffd: $ff
	ld a, h                                          ; $7ffe: $7c

Jump_054_7fff:
	ld b, b                                          ; $7fff: $40
