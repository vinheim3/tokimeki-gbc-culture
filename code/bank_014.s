; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

	or [hl]                                          ; $4000: $b6
	nop                                              ; $4001: $00
	rst $38                                          ; $4002: $ff

Jump_014_4003:
	rst SubAFromDE                                          ; $4003: $df
	rlca                                             ; $4004: $07
	adc e                                            ; $4005: $8b
	ld [hl+], a                                      ; $4006: $22
	inc hl                                           ; $4007: $23
	rra                                              ; $4008: $1f
	rra                                              ; $4009: $1f
	ld [$060f], sp                                   ; $400a: $08 $0f $06
	rlca                                             ; $400d: $07
	inc b                                            ; $400e: $04
	rlca                                             ; $400f: $07
	ld [$090f], sp                                   ; $4010: $08 $0f $09
	rrca                                             ; $4013: $0f
	dec b                                            ; $4014: $05
	rlca                                             ; $4015: $07
	inc bc                                           ; $4016: $03
	inc bc                                           ; $4017: $03
	ld bc, $7b00                                     ; $4018: $01 $00 $7b
	cp $de                                           ; $401b: $fe $de
	ld bc, $07df                                     ; $401d: $01 $df $07
	rst $38                                          ; $4020: $ff
	rst SubAFromDE                                          ; $4021: $df
	cp b                                             ; $4022: $b8
	sbc h                                            ; $4023: $9c
	ld h, [hl]                                       ; $4024: $66
	cp $31                                           ; $4025: $fe $31
	sbc $ff                                          ; $4027: $de $ff
	adc a                                            ; $4029: $8f
	ld d, c                                          ; $402a: $51
	rst $38                                          ; $402b: $ff
	and h                                            ; $402c: $a4
	rst $38                                          ; $402d: $ff
	or d                                             ; $402e: $b2
	rst $38                                          ; $402f: $ff
	cp d                                             ; $4030: $ba
	rst AddAOntoHL                                          ; $4031: $ef
	rst $38                                          ; $4032: $ff
	ld h, a                                          ; $4033: $67
	rst $38                                          ; $4034: $ff
	xor l                                            ; $4035: $ad
	ld [hl], a                                       ; $4036: $77
	sbc $ff                                          ; $4037: $de $ff
	call z, $fe7b                                    ; $4039: $cc $7b $fe
	ld a, a                                          ; $403c: $7f
	jp hl                                            ; $403d: $e9


	sbc [hl]                                         ; $403e: $9e
	add e                                            ; $403f: $83
	db $fd                                           ; $4040: $fd
	rst SubAFromDE                                          ; $4041: $df
	add b                                            ; $4042: $80
	rst SubAFromDE                                          ; $4043: $df
	ret nz                                           ; $4044: $c0

	rst SubAFromDE                                          ; $4045: $df
	add b                                            ; $4046: $80
	sbc e                                            ; $4047: $9b
	ld b, b                                          ; $4048: $40
	ret nz                                           ; $4049: $c0

	and b                                            ; $404a: $a0
	ldh [$6f], a                                     ; $404b: $e0 $6f
	cp $9c                                           ; $404d: $fe $9c
	ld h, b                                          ; $404f: $60
	ldh [$60], a                                     ; $4050: $e0 $60
	ld a, e                                          ; $4052: $7b
	ld sp, hl                                        ; $4053: $f9
	ld [hl], a                                       ; $4054: $77
	db $ec                                           ; $4055: $ec
	rst SubAFromDE                                          ; $4056: $df
	ret nz                                           ; $4057: $c0

	ld a, a                                          ; $4058: $7f
	or b                                             ; $4059: $b0
	sbc c                                            ; $405a: $99
	inc c                                            ; $405b: $0c
	rrca                                             ; $405c: $0f
	rra                                              ; $405d: $1f
	inc de                                           ; $405e: $13
	rra                                              ; $405f: $1f
	inc de                                           ; $4060: $13
	ld a, e                                          ; $4061: $7b
	and a                                            ; $4062: $a7
	sub [hl]                                         ; $4063: $96
	rrca                                             ; $4064: $0f
	ld a, [bc]                                       ; $4065: $0a
	rrca                                             ; $4066: $0f
	dec bc                                           ; $4067: $0b
	rrca                                             ; $4068: $0f
	ld d, $1f                                        ; $4069: $16 $1f
	dec d                                            ; $406b: $15
	ld e, $7b                                        ; $406c: $1e $7b
	db $fc                                           ; $406e: $fc
	sbc d                                            ; $406f: $9a
	dec e                                            ; $4070: $1d
	dec de                                           ; $4071: $1b
	dec de                                           ; $4072: $1b
	inc c                                            ; $4073: $0c
	rrca                                             ; $4074: $0f
	ld [hl], a                                       ; $4075: $77
	and d                                            ; $4076: $a2
	add [hl]                                         ; $4077: $86
	cp $ff                                           ; $4078: $fe $ff

jr_014_407a:
	adc a                                            ; $407a: $8f
	ld sp, hl                                        ; $407b: $f9
	rrca                                             ; $407c: $0f
	ldh a, [$7f]                                     ; $407d: $f0 $7f
	ld sp, hl                                        ; $407f: $f9
	cp $ff                                           ; $4080: $fe $ff
	sub a                                            ; $4082: $97
	rst $38                                          ; $4083: $ff
	sub d                                            ; $4084: $92
	rst $38                                          ; $4085: $ff
	sbc c                                            ; $4086: $99
	cp $da                                           ; $4087: $fe $da
	ld a, a                                          ; $4089: $7f
	ld [hl], l                                       ; $408a: $75
	ei                                               ; $408b: $fb
	ei                                               ; $408c: $fb
	rst $38                                          ; $408d: $ff
	ld b, l                                          ; $408e: $45
	rst JumpTable                                          ; $408f: $c7
	ld a, l                                          ; $4090: $7d
	sbc $ff                                          ; $4091: $de $ff
	adc [hl]                                         ; $4093: $8e
	db $fc                                           ; $4094: $fc
	rst $38                                          ; $4095: $ff
	rrca                                             ; $4096: $0f
	rrca                                             ; $4097: $0f
	jr nz, jr_014_407a                               ; $4098: $20 $e0

	ret nc                                           ; $409a: $d0

	jr nc, @-$2e                                     ; $409b: $30 $d0

	ldh a, [$50]                                     ; $409d: $f0 $50
	ldh a, [$28]                                     ; $409f: $f0 $28
	ld hl, sp+$28                                    ; $40a1: $f8 $28
	ld hl, sp-$18                                    ; $40a3: $f8 $e8
	ld [hl], a                                       ; $40a5: $77
	cp $95                                           ; $40a6: $fe $95
	ld a, b                                          ; $40a8: $78
	ld l, b                                          ; $40a9: $68
	cp b                                             ; $40aa: $b8
	xor b                                            ; $40ab: $a8
	ret c                                            ; $40ac: $d8

	ld c, b                                          ; $40ad: $48
	ld a, b                                          ; $40ae: $78
	jr z, jr_014_40e9                                ; $40af: $28 $38

	ret z                                            ; $40b1: $c8

	sbc $f8                                          ; $40b2: $de $f8
	rst SubAFromDE                                          ; $40b4: $df
	ret nz                                           ; $40b5: $c0

	or h                                             ; $40b6: $b4
	nop                                              ; $40b7: $00
	rst $38                                          ; $40b8: $ff
	db $dd                                           ; $40b9: $dd
	ld [bc], a                                       ; $40ba: $02
	rst SubAFromDE                                          ; $40bb: $df
	rrca                                             ; $40bc: $0f
	sbc c                                            ; $40bd: $99
	inc b                                            ; $40be: $04
	rlca                                             ; $40bf: $07
	ld bc, $0a07                                     ; $40c0: $01 $07 $0a
	rrca                                             ; $40c3: $0f
	ld l, a                                          ; $40c4: $6f
	cp $80                                           ; $40c5: $fe $80
	rlca                                             ; $40c7: $07
	rrca                                             ; $40c8: $0f
	rlca                                             ; $40c9: $07
	dec b                                            ; $40ca: $05
	rlca                                             ; $40cb: $07
	inc b                                            ; $40cc: $04
	rlca                                             ; $40cd: $07
	ld b, $03                                        ; $40ce: $06 $03
	inc bc                                           ; $40d0: $03
	rlca                                             ; $40d1: $07
	rlca                                             ; $40d2: $07
	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	inc a                                            ; $40d5: $3c
	inc a                                            ; $40d6: $3c
	rst JumpTable                                          ; $40d7: $c7
	rst $38                                          ; $40d8: $ff
	adc b                                            ; $40d9: $88
	rst $38                                          ; $40da: $ff
	sub c                                            ; $40db: $91
	rst $38                                          ; $40dc: $ff
	ld [hl], e                                       ; $40dd: $73

jr_014_40de:
	rst $38                                          ; $40de: $ff
	ld e, h                                          ; $40df: $5c
	rst $38                                          ; $40e0: $ff
	sub $ff                                          ; $40e1: $d6 $ff
	sbc d                                            ; $40e3: $9a

jr_014_40e4:
	rst $38                                          ; $40e4: $ff
	sbc a                                            ; $40e5: $9f

jr_014_40e6:
	sub d                                            ; $40e6: $92
	rst FarCall                                          ; $40e7: $f7
	cp a                                             ; $40e8: $bf

jr_014_40e9:
	push hl                                          ; $40e9: $e5
	rst $38                                          ; $40ea: $ff
	ld h, a                                          ; $40eb: $67
	ei                                               ; $40ec: $fb
	halt                                             ; $40ed: $76
	rst $38                                          ; $40ee: $ff
	adc $ff                                          ; $40ef: $ce $ff
	ld e, l                                          ; $40f1: $5d
	rst $38                                          ; $40f2: $ff
	rst SubAFromBC                                          ; $40f3: $e7
	db $fd                                           ; $40f4: $fd
	rst SubAFromDE                                          ; $40f5: $df
	ldh [$df], a                                     ; $40f6: $e0 $df
	adc b                                            ; $40f8: $88
	rst SubAFromDE                                          ; $40f9: $df
	ldh a, [hDisp1_OBP1]                                     ; $40fa: $f0 $94
	jr nz, jr_014_40de                               ; $40fc: $20 $e0

	ret nz                                           ; $40fe: $c0

	ret nz                                           ; $40ff: $c0

	ld b, b                                          ; $4100: $40
	ret nz                                           ; $4101: $c0

	jr nz, jr_014_40e4                               ; $4102: $20 $e0

	jr nz, jr_014_40e6                               ; $4104: $20 $e0

	ld h, b                                          ; $4106: $60
	ld a, e                                          ; $4107: $7b
	or $df                                           ; $4108: $f6 $df
	ret nz                                           ; $410a: $c0

	rst SubAFromDE                                          ; $410b: $df
	add b                                            ; $410c: $80
	rst SubAFromDE                                          ; $410d: $df
	ret nz                                           ; $410e: $c0

	rst SubAFromDE                                          ; $410f: $df
	ldh [hDisp1_WX], a                                     ; $4110: $e0 $96
	add hl, bc                                       ; $4112: $09
	rrca                                             ; $4113: $0f
	dec e                                            ; $4114: $1d
	dec de                                           ; $4115: $1b
	rla                                              ; $4116: $17
	rra                                              ; $4117: $1f
	dec d                                            ; $4118: $15
	rra                                              ; $4119: $1f
	rla                                              ; $411a: $17
	ld e, e                                          ; $411b: $5b
	cp $8a                                           ; $411c: $fe $8a
	ld d, $1f                                        ; $411e: $16 $1f
	ld [de], a                                       ; $4120: $12
	rra                                              ; $4121: $1f
	ld a, [bc]                                       ; $4122: $0a
	dec bc                                           ; $4123: $0b
	rlca                                             ; $4124: $07
	rlca                                             ; $4125: $07
	inc e                                            ; $4126: $1c
	rra                                              ; $4127: $1f
	rrca                                             ; $4128: $0f
	rrca                                             ; $4129: $0f
	cp h                                             ; $412a: $bc
	rst SubAFromBC                                          ; $412b: $e7
	inc e                                            ; $412c: $1c
	rst $38                                          ; $412d: $ff
	ld [hl+], a                                      ; $412e: $22
	rst $38                                          ; $412f: $ff
	pop bc                                           ; $4130: $c1
	rst $38                                          ; $4131: $ff
	adc h                                            ; $4132: $8c
	sbc $ff                                          ; $4133: $de $ff
	add [hl]                                         ; $4135: $86
	ld [hl-], a                                      ; $4136: $32
	rst $38                                          ; $4137: $ff
	ld [hl], d                                       ; $4138: $72
	rst $38                                          ; $4139: $ff
	rst SubAFromHL                                          ; $413a: $d7
	rst $38                                          ; $413b: $ff
	rst $38                                          ; $413c: $ff
	sbc h                                            ; $413d: $9c
	rst $38                                          ; $413e: $ff
	sbc l                                            ; $413f: $9d
	cp a                                             ; $4140: $bf
	rst $38                                          ; $4141: $ff
	ld l, h                                          ; $4142: $6c
	rst AddAOntoHL                                          ; $4143: $ef
	rst $38                                          ; $4144: $ff
	rst $38                                          ; $4145: $ff
	ld a, [hl]                                       ; $4146: $7e
	rst $38                                          ; $4147: $ff
	jp $f0c3                                         ; $4148: $c3 $c3 $f0


	sub b                                            ; $414b: $90
	ld [hl], b                                       ; $414c: $70
	ret nc                                           ; $414d: $d0

	ld h, b                                          ; $414e: $60
	sbc $e0                                          ; $414f: $de $e0
	add a                                            ; $4151: $87
	and b                                            ; $4152: $a0
	ldh [$d0], a                                     ; $4153: $e0 $d0
	ld [hl], b                                       ; $4155: $70
	ret nc                                           ; $4156: $d0

	ld [hl], b                                       ; $4157: $70
	db $10                                           ; $4158: $10
	ldh a, [$50]                                     ; $4159: $f0 $50
	ldh a, [$c8]                                     ; $415b: $f0 $c8
	ld hl, sp-$18                                    ; $415d: $f8 $e8
	ld a, b                                          ; $415f: $78
	xor b                                            ; $4160: $a8
	cp b                                             ; $4161: $b8
	sbc b                                            ; $4162: $98
	sbc b                                            ; $4163: $98
	ret z                                            ; $4164: $c8

	ret z                                            ; $4165: $c8

	ld a, b                                          ; $4166: $78
	ld hl, sp-$20                                    ; $4167: $f8 $e0
	ldh [$aa], a                                     ; $4169: $e0 $aa
	nop                                              ; $416b: $00
	jp hl                                            ; $416c: $e9


	rst SubAFromDE                                          ; $416d: $df
	ld bc, $0399                                     ; $416e: $01 $99 $03
	ld [bc], a                                       ; $4171: $02
	inc bc                                           ; $4172: $03
	ld [bc], a                                       ; $4173: $02
	rlca                                             ; $4174: $07
	ld b, $fd                                        ; $4175: $06 $fd
	rst SubAFromDE                                          ; $4177: $df
	dec c                                            ; $4178: $0d
	sbc b                                            ; $4179: $98
	ld d, d                                          ; $417a: $52
	ld e, a                                          ; $417b: $5f
	ld h, h                                          ; $417c: $64
	ld a, a                                          ; $417d: $7f
	pop bc                                           ; $417e: $c1
	rst $38                                          ; $417f: $ff
	ld a, e                                          ; $4180: $7b
	ld a, e                                          ; $4181: $7b
	db $fc                                           ; $4182: $fc
	add b                                            ; $4183: $80
	add h                                            ; $4184: $84
	rst $38                                          ; $4185: $ff
	sub [hl]                                         ; $4186: $96
	rst $38                                          ; $4187: $ff
	rst SubAFromHL                                          ; $4188: $d7
	ld a, [$fdff]                                    ; $4189: $fa $ff $fd
	rst $38                                          ; $418c: $ff
	jp nc, Jump_014_56ef                             ; $418d: $d2 $ef $56

	rst $38                                          ; $4190: $ff
	ld h, d                                          ; $4191: $62
	rst $38                                          ; $4192: $ff
	ld [hl], c                                       ; $4193: $71
	nop                                              ; $4194: $00
	nop                                              ; $4195: $00
	ldh [$e0], a                                     ; $4196: $e0 $e0
	ld b, b                                          ; $4198: $40
	ret nz                                           ; $4199: $c0

	ld h, h                                          ; $419a: $64
	db $fc                                           ; $419b: $fc
	ret                                              ; $419c: $c9


	ld sp, hl                                        ; $419d: $f9
	sbc [hl]                                         ; $419e: $9e
	cp $04                                           ; $419f: $fe $04
	db $fc                                           ; $41a1: $fc
	add e                                            ; $41a2: $83
	add b                                            ; $41a3: $80
	rst $38                                          ; $41a4: $ff
	xor $fe                                          ; $41a5: $ee $fe
	or c                                             ; $41a7: $b1
	rst $38                                          ; $41a8: $ff
	and $be                                          ; $41a9: $e6 $be
	db $fc                                           ; $41ab: $fc
	db $fc                                           ; $41ac: $fc
	and e                                            ; $41ad: $a3
	rst $38                                          ; $41ae: $ff
	db $fc                                           ; $41af: $fc
	call c, Call_014_50f0                            ; $41b0: $dc $f0 $50
	ldh [$a0], a                                     ; $41b3: $e0 $a0
	add hl, bc                                       ; $41b5: $09
	rrca                                             ; $41b6: $0f
	ld a, [bc]                                       ; $41b7: $0a
	dec c                                            ; $41b8: $0d
	rlca                                             ; $41b9: $07
	rlca                                             ; $41ba: $07
	dec b                                            ; $41bb: $05
	rlca                                             ; $41bc: $07
	dec bc                                           ; $41bd: $0b
	rrca                                             ; $41be: $0f
	dec bc                                           ; $41bf: $0b
	rrca                                             ; $41c0: $0f
	rla                                              ; $41c1: $17
	rra                                              ; $41c2: $1f
	add b                                            ; $41c3: $80
	cpl                                              ; $41c4: $2f
	ccf                                              ; $41c5: $3f
	ld e, [hl]                                       ; $41c6: $5e
	ld a, a                                          ; $41c7: $7f
	cp a                                             ; $41c8: $bf
	db $fc                                           ; $41c9: $fc
	rra                                              ; $41ca: $1f
	inc e                                            ; $41cb: $1c
	nop                                              ; $41cc: $00
	ld bc, $0f0e                                     ; $41cd: $01 $0e $0f
	db $fc                                           ; $41d0: $fc
	rst $38                                          ; $41d1: $ff
	rrca                                             ; $41d2: $0f
	rrca                                             ; $41d3: $0f
	nop                                              ; $41d4: $00
	nop                                              ; $41d5: $00
	rst GetHLinHL                                          ; $41d6: $cf
	ld hl, sp-$79                                    ; $41d7: $f8 $87
	rst $38                                          ; $41d9: $ff
	cp a                                             ; $41da: $bf
	ld hl, sp-$39                                    ; $41db: $f8 $c7
	db $fc                                           ; $41dd: $fc
	ld a, a                                          ; $41de: $7f
	rst $38                                          ; $41df: $ff
	ld d, e                                          ; $41e0: $53
	rst $38                                          ; $41e1: $ff
	reti                                             ; $41e2: $d9


	sub e                                            ; $41e3: $93
	rst $38                                          ; $41e4: $ff
	ld l, e                                          ; $41e5: $6b
	db $fd                                           ; $41e6: $fd
	dec a                                            ; $41e7: $3d
	or $76                                           ; $41e8: $f6 $76
	db $eb                                           ; $41ea: $eb
	rst $38                                          ; $41eb: $ff
	rst FarCall                                          ; $41ec: $f7

jr_014_41ed:
	ld a, [bc]                                       ; $41ed: $0a
	adc a                                            ; $41ee: $8f
	ld a, c                                          ; $41ef: $79
	sbc $ff                                          ; $41f0: $de $ff
	sbc [hl]                                         ; $41f2: $9e
	ld sp, hl                                        ; $41f3: $f9
	ld a, e                                          ; $41f4: $7b
	sbc $df                                          ; $41f5: $de $df
	ldh [hDisp1_SCX], a                                     ; $41f7: $e0 $91
	sub b                                            ; $41f9: $90
	ldh a, [$e8]                                     ; $41fa: $f0 $e8
	ret c                                            ; $41fc: $d8

	cp b                                             ; $41fd: $b8
	add sp, $18                                      ; $41fe: $e8 $18
	ld hl, sp-$78                                    ; $4200: $f8 $88
	ld hl, sp-$30                                    ; $4202: $f8 $d0
	ldh a, [$a0]                                     ; $4204: $f0 $a0
	ldh [$7b], a                                     ; $4206: $e0 $7b
	cp $9c                                           ; $4208: $fe $9c
	ld h, b                                          ; $420a: $60
	jr nz, jr_014_41ed                               ; $420b: $20 $e0

	ld [hl], a                                       ; $420d: $77
	cp $7f                                           ; $420e: $fe $7f
	adc d                                            ; $4210: $8a
	rst SubAFromDE                                          ; $4211: $df
	ldh a, [rIE]                                     ; $4212: $f0 $ff
	ret z                                            ; $4214: $c8

	nop                                              ; $4215: $00
	ei                                               ; $4216: $fb
	rst SubAFromDE                                          ; $4217: $df
	inc b                                            ; $4218: $04
	rst SubAFromDE                                          ; $4219: $df
	inc bc                                           ; $421a: $03
	rst SubAFromDE                                          ; $421b: $df
	ld bc, $ddfd                                     ; $421c: $01 $fd $dd
	ld bc, $06df                                     ; $421f: $01 $df $06
	sub l                                            ; $4222: $95
	rrca                                             ; $4223: $0f
	add hl, bc                                       ; $4224: $09
	rra                                              ; $4225: $1f
	ld de, $121f                                     ; $4226: $11 $1f $12
	rrca                                             ; $4229: $0f
	add hl, bc                                       ; $422a: $09
	ld b, $07                                        ; $422b: $06 $07
	db $fd                                           ; $422d: $fd
	rst SubAFromDE                                          ; $422e: $df
	rst FarCall                                          ; $422f: $f7
	add l                                            ; $4230: $85
	ld c, h                                          ; $4231: $4c
	ld a, a                                          ; $4232: $7f
	and $ff                                          ; $4233: $e6 $ff
	rra                                              ; $4235: $1f
	rst $38                                          ; $4236: $ff
	jp z, $94ff                                      ; $4237: $ca $ff $94

	rst $38                                          ; $423a: $ff
	sub [hl]                                         ; $423b: $96
	rst $38                                          ; $423c: $ff
	rst FarCall                                          ; $423d: $f7
	db $fd                                           ; $423e: $fd
	rst $38                                          ; $423f: $ff
	db $ec                                           ; $4240: $ec
	ld a, a                                          ; $4241: $7f
	ld [hl], l                                       ; $4242: $75
	xor [hl]                                         ; $4243: $ae
	sbc e                                            ; $4244: $9b
	cp a                                             ; $4245: $bf
	sbc c                                            ; $4246: $99
	cp a                                             ; $4247: $bf
	cp c                                             ; $4248: $b9

jr_014_4249:
	rst $38                                          ; $4249: $ff
	and $fb                                          ; $424a: $e6 $fb
	rst SubAFromDE                                          ; $424c: $df

jr_014_424d:
	ret nc                                           ; $424d: $d0

	sub [hl]                                         ; $424e: $96
	jr c, jr_014_4249                                ; $424f: $38 $f8

	ldh a, [$f0]                                     ; $4251: $f0 $f0
	jr z, jr_014_424d                                ; $4253: $28 $f8

	sub h                                            ; $4255: $94
	db $fc                                           ; $4256: $fc
	ld d, h                                          ; $4257: $54
	ld a, e                                          ; $4258: $7b
	cp $92                                           ; $4259: $fe $92
	db $f4                                           ; $425b: $f4
	db $fc                                           ; $425c: $fc
	db $ec                                           ; $425d: $ec
	cp h                                             ; $425e: $bc

jr_014_425f:
	db $ec                                           ; $425f: $ec
	call nc, $94fc                                   ; $4260: $d4 $fc $94
	ld hl, sp-$68                                    ; $4263: $f8 $98
	ldh a, [$30]                                     ; $4265: $f0 $30
	ld [bc], a                                       ; $4267: $02
	sbc $03                                          ; $4268: $de $03
	ld l, a                                          ; $426a: $6f
	and [hl]                                         ; $426b: $a6
	ld l, a                                          ; $426c: $6f
	and h                                            ; $426d: $a4
	ld a, a                                          ; $426e: $7f
	ei                                               ; $426f: $fb
	ld a, a                                          ; $4270: $7f
	xor $6f                                          ; $4271: $ee $6f
	cp $6f                                           ; $4273: $fe $6f
	add sp, -$6e                                     ; $4275: $e8 $92
	ccf                                              ; $4277: $3f
	ldh a, [$3f]                                     ; $4278: $f0 $3f
	rst $38                                          ; $427a: $ff
	ldh a, [rIE]                                     ; $427b: $f0 $ff
	rst AddAOntoHL                                          ; $427d: $ef
	rst $38                                          ; $427e: $ff
	or c                                             ; $427f: $b1
	rst $38                                          ; $4280: $ff
	ld a, $ff                                        ; $4281: $3e $ff
	ld l, c                                          ; $4283: $69
	ld a, e                                          ; $4284: $7b
	cp $92                                           ; $4285: $fe $92
	ld sp, hl                                        ; $4287: $f9
	rst $38                                          ; $4288: $ff
	db $db                                           ; $4289: $db
	rst AddAOntoHL                                          ; $428a: $ef
	xor [hl]                                         ; $428b: $ae
	rst SubAFromDE                                          ; $428c: $df
	rst SubAFromDE                                          ; $428d: $df
	rst $38                                          ; $428e: $ff
	xor b                                            ; $428f: $a8
	cp b                                             ; $4290: $b8
	ld l, a                                          ; $4291: $6f
	ld a, a                                          ; $4292: $7f
	sbc a                                            ; $4293: $9f
	sbc $ff                                          ; $4294: $de $ff
	add b                                            ; $4296: $80
	ld hl, sp+$78                                    ; $4297: $f8 $78
	db $e4                                           ; $4299: $e4
	db $fc                                           ; $429a: $fc
	ld a, [$fa96]                                    ; $429b: $fa $96 $fa
	sbc [hl]                                         ; $429e: $9e
	ret                                              ; $429f: $c9


jr_014_42a0:
	rst $38                                          ; $42a0: $ff
	push hl                                          ; $42a1: $e5
	rst $38                                          ; $42a2: $ff
	ld h, l                                          ; $42a3: $65
	rst $38                                          ; $42a4: $ff
	dec e                                            ; $42a5: $1d
	rst $38                                          ; $42a6: $ff
	cp l                                             ; $42a7: $bd
	rst SubAFromDE                                          ; $42a8: $df
	ld e, l                                          ; $42a9: $5d
	rst AddAOntoHL                                          ; $42aa: $ef
	xor l                                            ; $42ab: $ad
	ld [hl], a                                       ; $42ac: $77
	ld [hl], l                                       ; $42ad: $75
	ei                                               ; $42ae: $fb
	xor c                                            ; $42af: $a9
	rst AddAOntoHL                                          ; $42b0: $ef
	and l                                            ; $42b1: $a5
	rst SubAFromBC                                          ; $42b2: $e7
	ld sp, hl                                        ; $42b3: $f9
	rst $38                                          ; $42b4: $ff
	sbc a                                            ; $42b5: $9f
	sbc h                                            ; $42b6: $9c
	rst $38                                          ; $42b7: $ff
	db $fc                                           ; $42b8: $fc
	db $fc                                           ; $42b9: $fc
	ldh [$dd], a                                     ; $42ba: $e0 $dd
	ld l, a                                          ; $42bc: $6f
	jr nz, jr_014_431e                               ; $42bd: $20 $5f

	jr z, jr_014_42a0                                ; $42bf: $28 $df

	rlca                                             ; $42c1: $07
	ld [hl], a                                       ; $42c2: $77
	ld a, [hl]                                       ; $42c3: $7e
	ld [hl], e                                       ; $42c4: $73
	ld [hl], b                                       ; $42c5: $70
	inc sp                                           ; $42c6: $33
	jr nz, jr_014_425f                               ; $42c7: $20 $96

	rst $38                                          ; $42c9: $ff
	push af                                          ; $42ca: $f5
	ld l, [hl]                                       ; $42cb: $6e
	db $db                                           ; $42cc: $db
	ld a, a                                          ; $42cd: $7f
	reti                                             ; $42ce: $d9


	ld a, a                                          ; $42cf: $7f
	ld sp, hl                                        ; $42d0: $f9
	ld a, a                                          ; $42d1: $7f
	ld l, e                                          ; $42d2: $6b
	jr nz, jr_014_42f4                               ; $42d3: $20 $1f

	ld b, b                                          ; $42d5: $40
	sbc h                                            ; $42d6: $9c
	cp a                                             ; $42d7: $bf
	ldh a, [c]                                       ; $42d8: $f2
	cp a                                             ; $42d9: $bf
	inc de                                           ; $42da: $13
	ld b, b                                          ; $42db: $40
	ld a, h                                          ; $42dc: $7c
	nop                                              ; $42dd: $00
	rst $38                                          ; $42de: $ff
	rst SubAFromDE                                          ; $42df: $df
	ld b, $9a                                        ; $42e0: $06 $9a
	ld c, $09                                        ; $42e2: $0e $09
	rrca                                             ; $42e4: $0f
	add hl, bc                                       ; $42e5: $09
	ld [de], a                                       ; $42e6: $12
	sbc $1f                                          ; $42e7: $de $1f
	sub a                                            ; $42e9: $97
	add hl, hl                                       ; $42ea: $29
	ccf                                              ; $42eb: $3f
	ld e, a                                          ; $42ec: $5f
	ld a, a                                          ; $42ed: $7f
	ld c, e                                          ; $42ee: $4b
	ld a, h                                          ; $42ef: $7c
	ld c, e                                          ; $42f0: $4b
	ld a, h                                          ; $42f1: $7c
	db $dd                                           ; $42f2: $dd
	ccf                                              ; $42f3: $3f

jr_014_42f4:
	db $dd                                           ; $42f4: $dd
	rrca                                             ; $42f5: $0f
	rst SubAFromDE                                          ; $42f6: $df
	inc bc                                           ; $42f7: $03
	db $fd                                           ; $42f8: $fd
	rst SubAFromDE                                          ; $42f9: $df
	inc e                                            ; $42fa: $1c
	add b                                            ; $42fb: $80
	cp l                                             ; $42fc: $bd
	rst $38                                          ; $42fd: $ff
	db $e3                                           ; $42fe: $e3
	rst $38                                          ; $42ff: $ff
	inc hl                                           ; $4300: $23
	cp $27                                           ; $4301: $fe $27
	db $fc                                           ; $4303: $fc
	rst SubAFromBC                                          ; $4304: $e7
	db $fd                                           ; $4305: $fd
	rst SubAFromDE                                          ; $4306: $df
	db $fd                                           ; $4307: $fd
	sbc a                                            ; $4308: $9f
	cp $bd                                           ; $4309: $fe $bd
	ei                                               ; $430b: $fb
	call z, $cafb                                    ; $430c: $cc $fb $ca
	dec a                                            ; $430f: $3d
	db $fd                                           ; $4310: $fd
	ld a, $ff                                        ; $4311: $3e $ff
	rst $38                                          ; $4313: $ff
	rst JumpTable                                          ; $4314: $c7
	rst JumpTable                                          ; $4315: $c7
	nop                                              ; $4316: $00
	nop                                              ; $4317: $00
	rra                                              ; $4318: $1f
	rra                                              ; $4319: $1f
	ld a, b                                          ; $431a: $78
	adc c                                            ; $431b: $89
	ld e, a                                          ; $431c: $5f
	rst $38                                          ; $431d: $ff

jr_014_431e:
	rst $38                                          ; $431e: $ff
	db $fc                                           ; $431f: $fc
	rrca                                             ; $4320: $0f
	ld hl, sp+$5f                                    ; $4321: $f8 $5f
	cp $5f                                           ; $4323: $fe $5f
	db $fc                                           ; $4325: $fc
	rrca                                             ; $4326: $0f
	cp $07                                           ; $4327: $fe $07
	db $fc                                           ; $4329: $fc
	ld e, a                                          ; $432a: $5f
	cp $4f                                           ; $432b: $fe $4f
	ld sp, hl                                        ; $432d: $f9
	sbc a                                            ; $432e: $9f
	cp $ff                                           ; $432f: $fe $ff
	db $fd                                           ; $4331: $fd
	sbc $ff                                          ; $4332: $de $ff
	rst SubAFromDE                                          ; $4334: $df
	adc a                                            ; $4335: $8f
	rst $38                                          ; $4336: $ff
	rst SubAFromDE                                          ; $4337: $df
	add b                                            ; $4338: $80
	adc d                                            ; $4339: $8a
	ld h, b                                          ; $433a: $60
	ldh [$b0], a                                     ; $433b: $e0 $b0
	ldh a, [rBCPS]                                   ; $433d: $f0 $68
	ld hl, sp+$38                                    ; $433f: $f8 $38
	ld hl, sp+$08                                    ; $4341: $f8 $08
	ld hl, sp+$64                                    ; $4343: $f8 $64
	db $fc                                           ; $4345: $fc
	inc [hl]                                         ; $4346: $34
	db $fc                                           ; $4347: $fc
	inc e                                            ; $4348: $1c
	db $fc                                           ; $4349: $fc
	inc d                                            ; $434a: $14
	db $f4                                           ; $434b: $f4
	ld [$28f8], sp                                   ; $434c: $08 $f8 $28
	ld a, e                                          ; $434f: $7b
	cp $99                                           ; $4350: $fe $99
	ld a, h                                          ; $4352: $7c
	db $fc                                           ; $4353: $fc
	cp b                                             ; $4354: $b8
	ld hl, sp-$20                                    ; $4355: $f8 $e0
	ldh [$b3], a                                     ; $4357: $e0 $b3
	nop                                              ; $4359: $00
	db $fd                                           ; $435a: $fd
	rst SubAFromDE                                          ; $435b: $df
	rlca                                             ; $435c: $07
	rst SubAFromDE                                          ; $435d: $df
	ld de, $0fdf                                     ; $435e: $11 $df $0f
	sub h                                            ; $4361: $94
	inc b                                            ; $4362: $04
	rlca                                             ; $4363: $07
	inc bc                                           ; $4364: $03
	inc bc                                           ; $4365: $03
	ld [bc], a                                       ; $4366: $02
	inc bc                                           ; $4367: $03
	inc b                                            ; $4368: $04
	rlca                                             ; $4369: $07
	inc b                                            ; $436a: $04
	rlca                                             ; $436b: $07
	ld b, $7b                                        ; $436c: $06 $7b
	or $df                                           ; $436e: $f6 $df
	inc bc                                           ; $4370: $03
	rst SubAFromDE                                          ; $4371: $df
	ld bc, $03df                                     ; $4372: $01 $df $03
	rst SubAFromDE                                          ; $4375: $df
	rlca                                             ; $4376: $07
	rst $38                                          ; $4377: $ff
	rst SubAFromDE                                          ; $4378: $df
	inc a                                            ; $4379: $3c
	add e                                            ; $437a: $83
	db $e3                                           ; $437b: $e3
	rst $38                                          ; $437c: $ff
	ld de, $89ff                                     ; $437d: $11 $ff $89
	rst $38                                          ; $4380: $ff
	adc $ff                                          ; $4381: $ce $ff
	ld a, [hl-]                                      ; $4383: $3a
	rst $38                                          ; $4384: $ff
	ld l, e                                          ; $4385: $6b
	rst $38                                          ; $4386: $ff
	ld e, c                                          ; $4387: $59
	rst $38                                          ; $4388: $ff
	ld sp, hl                                        ; $4389: $f9
	rst AddAOntoHL                                          ; $438a: $ef
	db $fd                                           ; $438b: $fd
	and a                                            ; $438c: $a7
	rst $38                                          ; $438d: $ff
	ldh [c], a                                       ; $438e: $e2
	cp a                                             ; $438f: $bf
	ld l, a                                          ; $4390: $6f
	rst $38                                          ; $4391: $ff
	halt                                             ; $4392: $76
	rst $38                                          ; $4393: $ff
	adc b                                            ; $4394: $88
	rst $38                                          ; $4395: $ff
	adc a                                            ; $4396: $8f
	db $fd                                           ; $4397: $fd
	rst SubAFromDE                                          ; $4398: $df
	ld b, b                                          ; $4399: $40
	rst SubAFromDE                                          ; $439a: $df
	ldh [$99], a                                     ; $439b: $e0 $99
	ld b, b                                          ; $439d: $40
	ret nz                                           ; $439e: $c0

	and b                                            ; $439f: $a0
	ldh [$50], a                                     ; $43a0: $e0 $50
	ldh a, [$6f]                                     ; $43a2: $f0 $6f
	cp $8e                                           ; $43a4: $fe $8e
	ldh [$f0], a                                     ; $43a6: $e0 $f0
	ldh [$a0], a                                     ; $43a8: $e0 $a0
	ldh [rAUD4LEN], a                                ; $43aa: $e0 $20
	ldh [$60], a                                     ; $43ac: $e0 $60
	ret nz                                           ; $43ae: $c0

	ret nz                                           ; $43af: $c0

	ldh [$e0], a                                     ; $43b0: $e0 $e0
	rrca                                             ; $43b2: $0f
	add hl, bc                                       ; $43b3: $09
	ld c, $0b                                        ; $43b4: $0e $0b
	ld b, $de                                        ; $43b6: $06 $de
	rlca                                             ; $43b8: $07
	add b                                            ; $43b9: $80
	dec b                                            ; $43ba: $05
	rlca                                             ; $43bb: $07
	dec bc                                           ; $43bc: $0b
	ld c, $0b                                        ; $43bd: $0e $0b
	ld c, $08                                        ; $43bf: $0e $08
	rrca                                             ; $43c1: $0f
	ld a, [bc]                                       ; $43c2: $0a
	rrca                                             ; $43c3: $0f
	inc de                                           ; $43c4: $13
	rra                                              ; $43c5: $1f
	rla                                              ; $43c6: $17
	ld e, $15                                        ; $43c7: $1e $15
	dec e                                            ; $43c9: $1d
	dec de                                           ; $43ca: $1b
	dec de                                           ; $43cb: $1b
	inc d                                            ; $43cc: $14
	rla                                              ; $43cd: $17
	rrca                                             ; $43ce: $0f
	rrca                                             ; $43cf: $0f
	nop                                              ; $43d0: $00
	nop                                              ; $43d1: $00
	ld a, l                                          ; $43d2: $7d
	rst SubAFromHL                                          ; $43d3: $d7
	ld a, $f3                                        ; $43d4: $3e $f3
	ld e, [hl]                                       ; $43d6: $5e
	ei                                               ; $43d7: $fb
	adc a                                            ; $43d8: $8f
	sbc l                                            ; $43d9: $9d
	rst $38                                          ; $43da: $ff
	ld sp, $ffde                                     ; $43db: $31 $de $ff
	add d                                            ; $43de: $82
	ld c, h                                          ; $43df: $4c
	rst $38                                          ; $43e0: $ff
	ld c, [hl]                                       ; $43e1: $4e
	rst $38                                          ; $43e2: $ff
	db $eb                                           ; $43e3: $eb
	rst $38                                          ; $43e4: $ff
	rst $38                                          ; $43e5: $ff
	add hl, sp                                       ; $43e6: $39
	rst $38                                          ; $43e7: $ff
	cp c                                             ; $43e8: $b9
	db $fd                                           ; $43e9: $fd
	rst $38                                          ; $43ea: $ff
	or [hl]                                          ; $43eb: $b6
	rst FarCall                                          ; $43ec: $f7
	rst $38                                          ; $43ed: $ff
	rst $38                                          ; $43ee: $ff
	cp $ff                                           ; $43ef: $fe $ff
	rlca                                             ; $43f1: $07
	rlca                                             ; $43f2: $07
	sub b                                            ; $43f3: $90
	ldh a, [$b8]                                     ; $43f4: $f0 $b8
	ret c                                            ; $43f6: $d8

	add sp, -$08                                     ; $43f7: $e8 $f8
	xor b                                            ; $43f9: $a8
	ld hl, sp-$18                                    ; $43fa: $f8 $e8
	ld e, e                                          ; $43fc: $5b
	cp $93                                           ; $43fd: $fe $93
	ld l, b                                          ; $43ff: $68
	ld hl, sp+$48                                    ; $4400: $f8 $48
	ld hl, sp+$50                                    ; $4402: $f8 $50
	ret nc                                           ; $4404: $d0

	ldh [$e0], a                                     ; $4405: $e0 $e0
	jr c, @-$06                                      ; $4407: $38 $f8

	ldh a, [$f0]                                     ; $4409: $f0 $f0
	sbc a                                            ; $440b: $9f
	nop                                              ; $440c: $00
	ld sp, hl                                        ; $440d: $f9
	rst SubAFromDE                                          ; $440e: $df
	rrca                                             ; $440f: $0f
	adc c                                            ; $4410: $89
	ld b, h                                          ; $4411: $44
	ld b, a                                          ; $4412: $47
	ld a, $3f                                        ; $4413: $3e $3f
	ld de, $0c1f                                     ; $4415: $11 $1f $0c
	rrca                                             ; $4418: $0f
	add hl, bc                                       ; $4419: $09
	rrca                                             ; $441a: $0f
	ld de, $131f                                     ; $441b: $11 $1f $13
	rra                                              ; $441e: $1f
	dec bc                                           ; $441f: $0b
	ld c, $07                                        ; $4420: $0e $07
	rlca                                             ; $4422: $07
	ld [bc], a                                       ; $4423: $02
	ld bc, $0103                                     ; $4424: $01 $03 $01
	ld sp, hl                                        ; $4427: $f9
	rst SubAFromDE                                          ; $4428: $df
	ld [hl], b                                       ; $4429: $70
	sbc h                                            ; $442a: $9c
	call $63fd                                       ; $442b: $cd $fd $63
	sbc $ff                                          ; $442e: $de $ff
	adc a                                            ; $4430: $8f
	and d                                            ; $4431: $a2
	rst $38                                          ; $4432: $ff
	ld c, c                                          ; $4433: $49
	rst $38                                          ; $4434: $ff
	ld h, l                                          ; $4435: $65
	rst $38                                          ; $4436: $ff
	ld [hl], l                                       ; $4437: $75
	rst SubAFromDE                                          ; $4438: $df
	rst $38                                          ; $4439: $ff
	rst GetHLinHL                                          ; $443a: $cf
	cp $4b                                           ; $443b: $fe $4b
	cp $b1                                           ; $443d: $fe $b1
	rst $38                                          ; $443f: $ff
	sbc l                                            ; $4440: $9d
	push af                                          ; $4441: $f5
	rst SubAFromDE                                          ; $4442: $df
	add b                                            ; $4443: $80
	ld [hl], a                                       ; $4444: $77
	db $fc                                           ; $4445: $fc
	sbc l                                            ; $4446: $9d
	ld b, b                                          ; $4447: $40
	ret nz                                           ; $4448: $c0

	ld l, a                                          ; $4449: $6f
	cp $de                                           ; $444a: $fe $de
	ret nz                                           ; $444c: $c0

	ld a, e                                          ; $444d: $7b
	ld sp, hl                                        ; $444e: $f9
	sbc $03                                          ; $444f: $de $03
	sbc b                                            ; $4451: $98
	ld [bc], a                                       ; $4452: $02
	inc bc                                           ; $4453: $03
	inc bc                                           ; $4454: $03
	dec b                                            ; $4455: $05
	rlca                                             ; $4456: $07
	add hl, bc                                       ; $4457: $09
	ld c, $7b                                        ; $4458: $0e $7b
	and a                                            ; $445a: $a7
	sbc c                                            ; $445b: $99
	rrca                                             ; $445c: $0f
	dec bc                                           ; $445d: $0b
	rrca                                             ; $445e: $0f
	rla                                              ; $445f: $17
	rra                                              ; $4460: $1f
	dec d                                            ; $4461: $15
	sbc $1f                                          ; $4462: $de $1f
	add b                                            ; $4464: $80
	ld e, $17                                        ; $4465: $1e $17
	ccf                                              ; $4467: $3f
	inc l                                            ; $4468: $2c
	ccf                                              ; $4469: $3f
	ld a, $07                                        ; $446a: $3e $07
	rlca                                             ; $446c: $07
	nop                                              ; $446d: $00
	nop                                              ; $446e: $00
	rst $38                                          ; $446f: $ff
	sbc c                                            ; $4470: $99
	rst $38                                          ; $4471: $ff
	ld h, e                                          ; $4472: $63
	db $fc                                           ; $4473: $fc
	rlca                                             ; $4474: $07
	cp $fd                                           ; $4475: $fe $fd
	rst $38                                          ; $4477: $ff
	cp $87                                           ; $4478: $fe $87
	rst $38                                          ; $447a: $ff
	ld b, $fd                                        ; $447b: $06 $fd
	adc a                                            ; $447d: $8f
	ld hl, sp-$25                                    ; $447e: $f8 $db
	rst $38                                          ; $4480: $ff
	ld [hl], l                                       ; $4481: $75
	ei                                               ; $4482: $fb
	ld c, e                                          ; $4483: $4b
	sub h                                            ; $4484: $94
	rst $38                                          ; $4485: $ff
	push hl                                          ; $4486: $e5
	rst $38                                          ; $4487: $ff
	cp l                                             ; $4488: $bd
	ld a, a                                          ; $4489: $7f
	ld a, a                                          ; $448a: $7f
	rst $38                                          ; $448b: $ff
	db $fc                                           ; $448c: $fc
	rst $38                                          ; $448d: $ff
	rrca                                             ; $448e: $0f
	rrca                                             ; $448f: $0f
	ld h, a                                          ; $4490: $67
	xor h                                            ; $4491: $ac
	ld a, a                                          ; $4492: $7f
	or [hl]                                          ; $4493: $b6
	ld a, a                                          ; $4494: $7f
	db $fc                                           ; $4495: $fc
	sub b                                            ; $4496: $90
	and b                                            ; $4497: $a0
	ldh [hDisp1_SCY], a                                     ; $4498: $e0 $90
	ldh a, [$d0]                                     ; $449a: $f0 $d0
	ld [hl], b                                       ; $449c: $70
	ld a, b                                          ; $449d: $78
	cp b                                             ; $449e: $b8
	xor b                                            ; $449f: $a8
	ret c                                            ; $44a0: $d8

	call nz, $e2fc                                   ; $44a1: $c4 $fc $e2
	cp $f1                                           ; $44a4: $fe $f1
	sbc $ff                                          ; $44a6: $de $ff
	rst SubAFromDE                                          ; $44a8: $df
	ret nz                                           ; $44a9: $c0

	add d                                            ; $44aa: $82
	ld [bc], a                                       ; $44ab: $02
	db $fd                                           ; $44ac: $fd
	rst SubAFromDE                                          ; $44ad: $df
	ld e, $89                                        ; $44ae: $1e $89
	adc c                                            ; $44b0: $89
	adc a                                            ; $44b1: $8f
	ld l, h                                          ; $44b2: $6c
	ld l, a                                          ; $44b3: $6f
	inc hl                                           ; $44b4: $23
	ccf                                              ; $44b5: $3f
	add hl, de                                       ; $44b6: $19
	rra                                              ; $44b7: $1f
	ld [de], a                                       ; $44b8: $12
	rra                                              ; $44b9: $1f
	ld [hl+], a                                      ; $44ba: $22
	ccf                                              ; $44bb: $3f
	ld h, $3f                                        ; $44bc: $26 $3f
	rla                                              ; $44be: $17
	dec e                                            ; $44bf: $1d
	rrca                                             ; $44c0: $0f
	ld c, $05                                        ; $44c1: $0e $05
	inc bc                                           ; $44c3: $03
	rlca                                             ; $44c4: $07
	inc bc                                           ; $44c5: $03
	sbc $07                                          ; $44c6: $de $07
	sbc [hl]                                         ; $44c8: $9e
	inc b                                            ; $44c9: $04
	db $fd                                           ; $44ca: $fd
	rst SubAFromDE                                          ; $44cb: $df
	ldh [hDisp0_BGP], a                                     ; $44cc: $e0 $85
	sbc d                                            ; $44ce: $9a
	ld a, [$ffc7]                                    ; $44cf: $fa $c7 $ff
	cp $fe                                           ; $44d2: $fe $fe
	ld b, l                                          ; $44d4: $45
	rst $38                                          ; $44d5: $ff
	sub d                                            ; $44d6: $92
	rst $38                                          ; $44d7: $ff
	jp z, $eaff                                      ; $44d8: $ca $ff $ea

	cp a                                             ; $44db: $bf
	cp $9f                                           ; $44dc: $fe $9f
	db $fd                                           ; $44de: $fd
	or a                                             ; $44df: $b7
	db $dd                                           ; $44e0: $dd
	ld a, d                                          ; $44e1: $7a
	rst $38                                          ; $44e2: $ff
	ld [hl-], a                                      ; $44e3: $32
	rst $38                                          ; $44e4: $ff
	inc sp                                           ; $44e5: $33
	cp $c6                                           ; $44e6: $fe $c6
	di                                               ; $44e8: $f3
	db $d3                                           ; $44e9: $d3
	add b                                            ; $44ea: $80
	ld sp, hl                                        ; $44eb: $f9
	rst SubAFromDE                                          ; $44ec: $df
	ld bc, $7ff2                                     ; $44ed: $01 $f2 $7f
	ldh a, [$80]                                     ; $44f0: $f0 $80
	ld [bc], a                                       ; $44f2: $02
	inc b                                            ; $44f3: $04
	add hl, bc                                       ; $44f4: $09
	ld [$1012], sp                                   ; $44f5: $08 $12 $10
	inc h                                            ; $44f8: $24
	jr z, jr_014_453f                                ; $44f9: $28 $44

	nop                                              ; $44fb: $00
	nop                                              ; $44fc: $00
	dec a                                            ; $44fd: $3d
	dec a                                            ; $44fe: $3d
	inc de                                           ; $44ff: $13
	rra                                              ; $4500: $1f
	ld sp, hl                                        ; $4501: $f9
	rst $38                                          ; $4502: $ff
	ld b, a                                          ; $4503: $47
	ld a, a                                          ; $4504: $7f
	ld [hl-], a                                      ; $4505: $32
	ccf                                              ; $4506: $3f
	dec h                                            ; $4507: $25
	ccf                                              ; $4508: $3f
	ld b, l                                          ; $4509: $45
	ld a, a                                          ; $450a: $7f
	ld c, l                                          ; $450b: $4d
	ld a, a                                          ; $450c: $7f
	cpl                                              ; $450d: $2f
	dec sp                                           ; $450e: $3b
	rra                                              ; $450f: $1f
	dec e                                            ; $4510: $1d
	sub a                                            ; $4511: $97
	dec bc                                           ; $4512: $0b
	ld b, $0f                                        ; $4513: $06 $0f
	ld b, $0f                                        ; $4515: $06 $0f
	ld c, $0f                                        ; $4517: $0e $0f
	add hl, bc                                       ; $4519: $09
	ld l, a                                          ; $451a: $6f
	add b                                            ; $451b: $80
	rst SubAFromBC                                          ; $451c: $e7
	sbc [hl]                                         ; $451d: $9e
	inc bc                                           ; $451e: $03
	and $80                                          ; $451f: $e6 $80
	inc e                                            ; $4521: $1c
	ld [bc], a                                       ; $4522: $02
	cp $01                                           ; $4523: $fe $01
	add [hl]                                         ; $4525: $86
	ld bc, $ffe3                                     ; $4526: $01 $e3 $ff
	ld b, [hl]                                       ; $4529: $46
	ei                                               ; $452a: $fb

jr_014_452b:
	ld e, a                                          ; $452b: $5f
	rst SubAFromBC                                          ; $452c: $e7
	cp l                                             ; $452d: $bd
	rst $38                                          ; $452e: $ff
	ld c, e                                          ; $452f: $4b
	cp $3f                                           ; $4530: $fe $3f
	db $fd                                           ; $4532: $fd
	rst $38                                          ; $4533: $ff
	db $fc                                           ; $4534: $fc
	adc a                                            ; $4535: $8f
	rst $38                                          ; $4536: $ff
	ld a, a                                          ; $4537: $7f
	rst $38                                          ; $4538: $ff
	and h                                            ; $4539: $a4
	db $fc                                           ; $453a: $fc
	cp $ce                                           ; $453b: $fe $ce
	rst GetHLinHL                                          ; $453d: $cf
	rst $38                                          ; $453e: $ff

jr_014_453f:
	ld sp, hl                                        ; $453f: $f9
	ld a, e                                          ; $4540: $7b
	or $95                                           ; $4541: $f6 $95
	db $fc                                           ; $4543: $fc
	rst $38                                          ; $4544: $ff
	rrca                                             ; $4545: $0f
	rrca                                             ; $4546: $0f
	ldh [$e0], a                                     ; $4547: $e0 $e0
	jr nz, jr_014_452b                               ; $4549: $20 $e0

	ret nz                                           ; $454b: $c0

	ret nz                                           ; $454c: $c0

	ld l, a                                          ; $454d: $6f
	ld b, h                                          ; $454e: $44
	sbc l                                            ; $454f: $9d
	ret nz                                           ; $4550: $c0

	ld b, b                                          ; $4551: $40
	ld e, a                                          ; $4552: $5f
	ld c, h                                          ; $4553: $4c
	ld e, a                                          ; $4554: $5f
	ld b, h                                          ; $4555: $44
	rst SubAFromDE                                          ; $4556: $df
	add hl, de                                       ; $4557: $19
	sub a                                            ; $4558: $97
	dec a                                            ; $4559: $3d
	dec h                                            ; $455a: $25
	ld a, $27                                        ; $455b: $3e $27
	inc e                                            ; $455d: $1c
	rla                                              ; $455e: $17
	inc c                                            ; $455f: $0c
	rrca                                             ; $4560: $0f
	db $db                                           ; $4561: $db
	ld bc, $8463                                     ; $4562: $01 $63 $84
	add b                                            ; $4565: $80
	inc bc                                           ; $4566: $03
	rra                                              ; $4567: $1f
	rra                                              ; $4568: $1f
	ld bc, $fe01                                     ; $4569: $01 $01 $fe
	rst $38                                          ; $456c: $ff
	sbc h                                            ; $456d: $9c
	rst SubAFromBC                                          ; $456e: $e7
	ld hl, sp+$1f                                    ; $456f: $f8 $1f
	ldh a, [rIE]                                     ; $4571: $f0 $ff
	ld b, b                                          ; $4573: $40
	rst $38                                          ; $4574: $ff
	ret nz                                           ; $4575: $c0

	rst $38                                          ; $4576: $ff
	db $e4                                           ; $4577: $e4
	rst $38                                          ; $4578: $ff
	ld [hl+], a                                      ; $4579: $22
	rst $38                                          ; $457a: $ff
	ld h, c                                          ; $457b: $61
	cp a                                             ; $457c: $bf
	pop af                                           ; $457d: $f1
	rst SubAFromDE                                          ; $457e: $df
	ldh a, [$9f]                                     ; $457f: $f0 $9f
	ldh a, [rIE]                                     ; $4581: $f0 $ff
	cp b                                             ; $4583: $b8
	rst $38                                          ; $4584: $ff
	sbc h                                            ; $4585: $9c
	ld hl, sp-$01                                    ; $4586: $f8 $ff
	dec e                                            ; $4588: $1d
	sbc $ff                                          ; $4589: $de $ff
	db $dd                                           ; $458b: $dd
	add b                                            ; $458c: $80
	sbc l                                            ; $458d: $9d
	ld b, b                                          ; $458e: $40
	ret nz                                           ; $458f: $c0

	ld [hl], a                                       ; $4590: $77
	cp $7f                                           ; $4591: $fe $7f
	sbc b                                            ; $4593: $98
	sbc [hl]                                         ; $4594: $9e
	and b                                            ; $4595: $a0
	ld a, e                                          ; $4596: $7b
	cp $9c                                           ; $4597: $fe $9c
	ld d, b                                          ; $4599: $50
	ldh a, [$d0]                                     ; $459a: $f0 $d0
	ld a, e                                          ; $459c: $7b
	cp $97                                           ; $459d: $fe $97
	ld h, b                                          ; $459f: $60
	ldh [rLCDC], a                                   ; $45a0: $e0 $40
	ret nz                                           ; $45a2: $c0

	add b                                            ; $45a3: $80
	add b                                            ; $45a4: $80
	ldh a, [$f0]                                     ; $45a5: $f0 $f0
	ld l, a                                          ; $45a7: $6f
	add [hl]                                         ; $45a8: $86
	ld c, a                                          ; $45a9: $4f
	sub b                                            ; $45aa: $90
	sub c                                            ; $45ab: $91
	inc bc                                           ; $45ac: $03
	ld [bc], a                                       ; $45ad: $02
	rlca                                             ; $45ae: $07
	dec b                                            ; $45af: $05
	ld c, $0a                                        ; $45b0: $0e $0a
	inc e                                            ; $45b2: $1c
	inc d                                            ; $45b3: $14
	jr c, jr_014_45de                                ; $45b4: $38 $28

	ld [hl], b                                       ; $45b6: $70
	ld d, b                                          ; $45b7: $50
	ld h, b                                          ; $45b8: $60
	ld h, b                                          ; $45b9: $60
	ld sp, hl                                        ; $45ba: $f9
	sbc l                                            ; $45bb: $9d
	jr jr_014_45ce                                   ; $45bc: $18 $10

	ld [hl], a                                       ; $45be: $77
	ldh a, [$7f]                                     ; $45bf: $f0 $7f
	cp a                                             ; $45c1: $bf
	scf                                              ; $45c2: $37
	ld e, h                                          ; $45c3: $5c
	rst $38                                          ; $45c4: $ff
	sbc l                                            ; $45c5: $9d
	inc c                                            ; $45c6: $0c
	ld [$d06f], sp                                   ; $45c7: $08 $6f $d0
	daa                                              ; $45ca: $27
	ldh [$66], a                                     ; $45cb: $e0 $66
	ld h, d                                          ; $45cd: $62

jr_014_45ce:
	ld a, a                                          ; $45ce: $7f
	ldh [c], a                                       ; $45cf: $e2
	ld a, a                                          ; $45d0: $7f
	sbc $7f                                          ; $45d1: $de $7f
	jp c, $d67f                                      ; $45d3: $da $7f $d6

	ld a, a                                          ; $45d6: $7f
	jp nc, $ce7f                                     ; $45d7: $d2 $7f $ce

	ld l, e                                          ; $45da: $6b
	ld a, [hl-]                                      ; $45db: $3a
	sub e                                            ; $45dc: $93
	ld [bc], a                                       ; $45dd: $02

jr_014_45de:
	inc bc                                           ; $45de: $03
	inc bc                                           ; $45df: $03
	inc b                                            ; $45e0: $04
	rlca                                             ; $45e1: $07
	add hl, bc                                       ; $45e2: $09
	ld c, $0e                                        ; $45e3: $0e $0e
	add hl, bc                                       ; $45e5: $09
	rrca                                             ; $45e6: $0f
	rrca                                             ; $45e7: $0f
	dec bc                                           ; $45e8: $0b
	ld a, e                                          ; $45e9: $7b
	cp $80                                           ; $45ea: $fe $80
	ld a, [bc]                                       ; $45ec: $0a
	rrca                                             ; $45ed: $0f
	dec bc                                           ; $45ee: $0b
	ld c, $14                                        ; $45ef: $0e $14
	rra                                              ; $45f1: $1f
	ld d, $1f                                        ; $45f2: $16 $1f
	rla                                              ; $45f4: $17
	rra                                              ; $45f5: $1f
	inc d                                            ; $45f6: $14
	rra                                              ; $45f7: $1f
	rrca                                             ; $45f8: $0f
	rrca                                             ; $45f9: $0f
	nop                                              ; $45fa: $00
	nop                                              ; $45fb: $00
	rst $38                                          ; $45fc: $ff
	rrca                                             ; $45fd: $0f
	ld hl, sp-$01                                    ; $45fe: $f8 $ff
	ld l, e                                          ; $4600: $6b
	db $fc                                           ; $4601: $fc
	ld b, h                                          ; $4602: $44
	rst $38                                          ; $4603: $ff
	jp $76ff                                         ; $4604: $c3 $ff $76


	rst $38                                          ; $4607: $ff
	ld c, a                                          ; $4608: $4f
	cp c                                             ; $4609: $b9
	rst JumpTable                                          ; $460a: $c7
	ld a, a                                          ; $460b: $7f
	add hl, hl                                       ; $460c: $29
	sbc b                                            ; $460d: $98
	db $fc                                           ; $460e: $fc
	ld c, e                                          ; $460f: $4b
	rst $38                                          ; $4610: $ff
	push af                                          ; $4611: $f5
	ei                                               ; $4612: $fb
	ld c, a                                          ; $4613: $4f
	rst GetHLinHL                                          ; $4614: $cf
	ld h, [hl]                                       ; $4615: $66

jr_014_4616:
	ret nz                                           ; $4616: $c0

	ld [hl], a                                       ; $4617: $77
	xor d                                            ; $4618: $aa
	ld a, a                                          ; $4619: $7f
	inc [hl]                                         ; $461a: $34
	rst SubAFromDE                                          ; $461b: $df
	ret nz                                           ; $461c: $c0

	ld a, a                                          ; $461d: $7f
	ld [hl+], a                                      ; $461e: $22
	ld [hl], a                                       ; $461f: $77
	cp $87                                           ; $4620: $fe $87
	sub b                                            ; $4622: $90
	ldh a, [$50]                                     ; $4623: $f0 $50
	ldh a, [rOBP0]                                   ; $4625: $f0 $48
	ld hl, sp-$18                                    ; $4627: $f8 $e8
	ld hl, sp-$4c                                    ; $4629: $f8 $b4
	db $fc                                           ; $462b: $fc
	db $f4                                           ; $462c: $f4
	db $fc                                           ; $462d: $fc
	sub h                                            ; $462e: $94
	sbc h                                            ; $462f: $9c
	ret z                                            ; $4630: $c8

	ret z                                            ; $4631: $c8

	ret nz                                           ; $4632: $c0

	ret nz                                           ; $4633: $c0

	jr nc, jr_014_467e                               ; $4634: $30 $48

	ld [hl], b                                       ; $4636: $70
	adc b                                            ; $4637: $88
	ld h, b                                          ; $4638: $60
	sub b                                            ; $4639: $90
	ld a, e                                          ; $463a: $7b
	cp $95                                           ; $463b: $fe $95
	sbc b                                            ; $463d: $98
	ld [hl], b                                       ; $463e: $70
	adc b                                            ; $463f: $88
	jr nc, @+$4a                                     ; $4640: $30 $48

	jr @+$26                                         ; $4642: $18 $24

	ld c, $10                                        ; $4644: $0e $10
	nop                                              ; $4646: $00
	ld a, e                                          ; $4647: $7b
	call z, Call_014_7ff7                            ; $4648: $cc $f7 $7f
	adc [hl]                                         ; $464b: $8e
	sbc h                                            ; $464c: $9c
	db $10                                           ; $464d: $10
	rra                                              ; $464e: $1f
	jr jr_014_46cc                                   ; $464f: $18 $7b

	sub d                                            ; $4651: $92

jr_014_4652:
	sbc [hl]                                         ; $4652: $9e
	ld [$117a], sp                                   ; $4653: $08 $7a $11
	sbc d                                            ; $4656: $9a
	dec b                                            ; $4657: $05
	rlca                                             ; $4658: $07
	ld [$110f], sp                                   ; $4659: $08 $0f $11
	ld a, e                                          ; $465c: $7b
	add h                                            ; $465d: $84
	ld a, a                                          ; $465e: $7f
	ld [hl], h                                       ; $465f: $74
	rst SubAFromDE                                          ; $4660: $df
	inc bc                                           ; $4661: $03
	ld a, c                                          ; $4662: $79
	add l                                            ; $4663: $85
	sbc $07                                          ; $4664: $de $07

jr_014_4666:
	ld a, e                                          ; $4666: $7b
	ld h, $80                                        ; $4667: $26 $80
	nop                                              ; $4669: $00
	ret nz                                           ; $466a: $c0

	ret nz                                           ; $466b: $c0

	jr c, jr_014_4666                                ; $466c: $38 $f8

	adc h                                            ; $466e: $8c
	db $fc                                           ; $466f: $fc
	rst $38                                          ; $4670: $ff
	cp $8b                                           ; $4671: $fe $8b
	rst $38                                          ; $4673: $ff
	dec h                                            ; $4674: $25
	rst $38                                          ; $4675: $ff
	sub l                                            ; $4676: $95
	rst $38                                          ; $4677: $ff
	push de                                          ; $4678: $d5
	ld a, a                                          ; $4679: $7f
	db $fd                                           ; $467a: $fd
	ccf                                              ; $467b: $3f
	ei                                               ; $467c: $fb
	ld l, a                                          ; $467d: $6f

jr_014_467e:
	cp e                                             ; $467e: $bb
	push af                                          ; $467f: $f5
	rst $38                                          ; $4680: $ff
	ld h, l                                          ; $4681: $65
	cp $66                                           ; $4682: $fe $66
	db $fc                                           ; $4684: $fc
	adc h                                            ; $4685: $8c
	cp $1e                                           ; $4686: $fe $1e
	sub c                                            ; $4688: $91
	ld c, $01                                        ; $4689: $0e $01
	inc c                                            ; $468b: $0c
	ld [bc], a                                       ; $468c: $02
	jr jr_014_4693                                   ; $468d: $18 $04

	db $10                                           ; $468f: $10
	jr z, jr_014_46b2                                ; $4690: $28 $20

	ret nc                                           ; $4692: $d0

jr_014_4693:
	ret nz                                           ; $4693: $c0

	jr nz, jr_014_4616                               ; $4694: $20 $80

	ret nz                                           ; $4696: $c0

	ld [hl], a                                       ; $4697: $77
	jr nz, jr_014_46f8                               ; $4698: $20 $5e

	call z, $dffd                                    ; $469a: $cc $fd $df
	db $e3                                           ; $469d: $e3
	sbc h                                            ; $469e: $9c
	inc e                                            ; $469f: $1c
	rst $38                                          ; $46a0: $ff
	nop                                              ; $46a1: $00
	ld a, e                                          ; $46a2: $7b
	ld b, d                                          ; $46a3: $42
	rst SubAFromDE                                          ; $46a4: $df
	cp $de                                           ; $46a5: $fe $de
	rst $38                                          ; $46a7: $ff
	ld a, [hl]                                       ; $46a8: $7e
	ld e, e                                          ; $46a9: $5b
	ld a, [hl]                                       ; $46aa: $7e
	ld l, d                                          ; $46ab: $6a
	sbc h                                            ; $46ac: $9c
	ld hl, sp+$70                                    ; $46ad: $f8 $70
	ld [hl], b                                       ; $46af: $70
	ld h, l                                          ; $46b0: $65
	ld d, [hl]                                       ; $46b1: $56

jr_014_46b2:
	db $dd                                           ; $46b2: $dd
	ret nz                                           ; $46b3: $c0

	halt                                             ; $46b4: $76
	jr c, jr_014_4736                                ; $46b5: $38 $7f

	sub [hl]                                         ; $46b7: $96
	sbc h                                            ; $46b8: $9c
	ld a, $3f                                        ; $46b9: $3e $3f
	ld de, $7e7b                                     ; $46bb: $11 $7b $7e
	sbc d                                            ; $46be: $9a
	ld b, $07                                        ; $46bf: $06 $07
	dec b                                            ; $46c1: $05
	rlca                                             ; $46c2: $07
	add hl, bc                                       ; $46c3: $09
	ld [hl], d                                       ; $46c4: $72
	ld a, [$079d]                                    ; $46c5: $fa $9d $07
	ld b, $76                                        ; $46c8: $06 $76
	add sp, $6e                                      ; $46ca: $e8 $6e

jr_014_46cc:
	inc d                                            ; $46cc: $14
	rst SubAFromDE                                          ; $46cd: $df
	jr c, jr_014_4652                                ; $46ce: $38 $82

	add $fe                                          ; $46d0: $c6 $fe
	ld h, e                                          ; $46d2: $63
	rst $38                                          ; $46d3: $ff
	inc [hl]                                         ; $46d4: $34
	rst $38                                          ; $46d5: $ff
	ld l, b                                          ; $46d6: $68
	rst $38                                          ; $46d7: $ff
	and l                                            ; $46d8: $a5
	rst $38                                          ; $46d9: $ff
	ld b, h                                          ; $46da: $44
	rst $38                                          ; $46db: $ff
	ld h, [hl]                                       ; $46dc: $66
	rst $38                                          ; $46dd: $ff
	halt                                             ; $46de: $76
	rst SubAFromDE                                          ; $46df: $df
	rst $38                                          ; $46e0: $ff
	db $dd                                           ; $46e1: $dd
	halt                                             ; $46e2: $76
	rst SubAFromDE                                          ; $46e3: $df
	cp $cd                                           ; $46e4: $fe $cd
	rst $38                                          ; $46e6: $ff
	call z, $31ff                                    ; $46e7: $cc $ff $31
	rst $38                                          ; $46ea: $ff
	add e                                            ; $46eb: $83
	nop                                              ; $46ec: $00
	ld a, c                                          ; $46ed: $79
	dec [hl]                                         ; $46ee: $35
	sub a                                            ; $46ef: $97
	add h                                            ; $46f0: $84
	adc d                                            ; $46f1: $8a
	adc b                                            ; $46f2: $88
	sub h                                            ; $46f3: $94
	ret nc                                           ; $46f4: $d0

	add sp, $60                                      ; $46f5: $e8 $60
	ret nc                                           ; $46f7: $d0

jr_014_46f8:
	ld l, [hl]                                       ; $46f8: $6e
	ld e, $7f                                        ; $46f9: $1e $7f
	cp $df                                           ; $46fb: $fe $df
	ldh [$72], a                                     ; $46fd: $e0 $72
	rrca                                             ; $46ff: $0f
	ld a, d                                          ; $4700: $7a
	ld e, $ff                                        ; $4701: $1e $ff
	rst SubAFromDE                                          ; $4703: $df
	ld h, b                                          ; $4704: $60
	ld l, [hl]                                       ; $4705: $6e
	sub b                                            ; $4706: $90
	ld a, [hl]                                       ; $4707: $7e
	ld l, $7f                                        ; $4708: $2e $7f
	and e                                            ; $470a: $a3
	ld a, a                                          ; $470b: $7f
	xor h                                            ; $470c: $ac
	ld b, b                                          ; $470d: $40
	or $2a                                           ; $470e: $f6 $2a
	ld h, b                                          ; $4710: $60
	ld a, [hl]                                       ; $4711: $7e
	ld [de], a                                       ; $4712: $12
	ldh [$d0], a                                     ; $4713: $e0 $d0
	ld a, [hl]                                       ; $4715: $7e
	jr nc, @+$71                                     ; $4716: $30 $6f

	cp $7c                                           ; $4718: $fe $7c
	adc $9e                                          ; $471a: $ce $9e
	ld [bc], a                                       ; $471c: $02
	ld a, b                                          ; $471d: $78
	and b                                            ; $471e: $a0
	db $e3                                           ; $471f: $e3
	ld a, a                                          ; $4720: $7f
	ld l, b                                          ; $4721: $68
	ld a, a                                          ; $4722: $7f
	cp $98                                           ; $4723: $fe $98
	ld b, b                                          ; $4725: $40
	nop                                              ; $4726: $00
	jr nz, jr_014_4729                               ; $4727: $20 $00

jr_014_4729:
	stop                                             ; $4729: $10 $00
	ld [$00b1], sp                                   ; $472b: $08 $b1 $00
	ei                                               ; $472e: $fb
	rst SubAFromDE                                          ; $472f: $df
	inc bc                                           ; $4730: $03
	add a                                            ; $4731: $87
	inc b                                            ; $4732: $04
	rlca                                             ; $4733: $07
	rrca                                             ; $4734: $0f
	rrca                                             ; $4735: $0f

jr_014_4736:
	inc b                                            ; $4736: $04
	rlca                                             ; $4737: $07
	ld b, $07                                        ; $4738: $06 $07
	inc b                                            ; $473a: $04
	rlca                                             ; $473b: $07
	add hl, bc                                       ; $473c: $09
	rrca                                             ; $473d: $0f
	ld e, $1f                                        ; $473e: $1e $1f
	inc bc                                           ; $4740: $03
	inc bc                                           ; $4741: $03
	ld bc, $0701                                     ; $4742: $01 $01 $07
	rlca                                             ; $4745: $07
	rrca                                             ; $4746: $0f
	add hl, bc                                       ; $4747: $09
	rrca                                             ; $4748: $0f
	add hl, bc                                       ; $4749: $09
	db $fd                                           ; $474a: $fd
	rst SubAFromDE                                          ; $474b: $df
	rst FarCall                                          ; $474c: $f7
	add l                                            ; $474d: $85
	inc e                                            ; $474e: $1c
	rst $38                                          ; $474f: $ff
	ld [$28ff], sp                                   ; $4750: $08 $ff $28
	rst $38                                          ; $4753: $ff
	db $f4                                           ; $4754: $f4
	rst $38                                          ; $4755: $ff
	ld l, [hl]                                       ; $4756: $6e
	rst $38                                          ; $4757: $ff
	ret                                              ; $4758: $c9


	rst $38                                          ; $4759: $ff
	ld e, l                                          ; $475a: $5d
	rst FarCall                                          ; $475b: $f7
	sbc $b3                                          ; $475c: $de $b3
	rst $38                                          ; $475e: $ff
	ld hl, $0cff                                     ; $475f: $21 $ff $0c
	rst FarCall                                          ; $4762: $f7
	call c, $8aff                                    ; $4763: $dc $ff $8a
	rst $38                                          ; $4766: $ff
	ld bc, $ddfb                                     ; $4767: $01 $fb $dd
	add b                                            ; $476a: $80
	sbc c                                            ; $476b: $99
	ld b, b                                          ; $476c: $40
	ret nz                                           ; $476d: $c0

	ld b, b                                          ; $476e: $40
	ret nz                                           ; $476f: $c0

	jr nz, @-$1e                                     ; $4770: $20 $e0

	ld [hl], a                                       ; $4772: $77
	cp $9e                                           ; $4773: $fe $9e
	and b                                            ; $4775: $a0
	ld a, e                                          ; $4776: $7b
	db $fc                                           ; $4777: $fc
	rst SubAFromDE                                          ; $4778: $df
	ldh [$97], a                                     ; $4779: $e0 $97
	ld h, b                                          ; $477b: $60
	and b                                            ; $477c: $a0
	ldh [$a0], a                                     ; $477d: $e0 $a0
	ret nz                                           ; $477f: $c0

	ret nz                                           ; $4780: $c0

	ld a, [bc]                                       ; $4781: $0a
	rrca                                             ; $4782: $0f
	ld [hl], a                                       ; $4783: $77
	cp d                                             ; $4784: $ba
	ld a, a                                          ; $4785: $7f
	ld a, [$07df]                                    ; $4786: $fa $df $07
	rst SubAFromDE                                          ; $4789: $df
	ld bc, $dfff                                     ; $478a: $01 $ff $df
	ld bc, $029c                                     ; $478d: $01 $9c $02
	inc bc                                           ; $4790: $03
	ld [bc], a                                       ; $4791: $02
	db $dd                                           ; $4792: $dd
	inc bc                                           ; $4793: $03
	rst SubAFromDE                                          ; $4794: $df
	ld [bc], a                                       ; $4795: $02
	add h                                            ; $4796: $84
	inc bc                                           ; $4797: $03
	ld b, $05                                        ; $4798: $06 $05
	rrca                                             ; $479a: $0f
	rrca                                             ; $479b: $0f
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	rst $38                                          ; $479e: $ff
	cp c                                             ; $479f: $b9
	ld a, [hl]                                       ; $47a0: $7e
	jp $ff3c                                         ; $47a1: $c3 $3c $ff


	xor c                                            ; $47a4: $a9
	rst SubAFromHL                                          ; $47a5: $d7
	jp $feff                                         ; $47a6: $c3 $ff $fe


	cp $e6                                           ; $47a9: $fe $e6
	cp $4d                                           ; $47ab: $fe $4d
	rst $38                                          ; $47ad: $ff
	cp d                                             ; $47ae: $ba
	rst $38                                          ; $47af: $ff
	ld l, l                                          ; $47b0: $6d
	rst AddAOntoHL                                          ; $47b1: $ef
	sbc $c7                                          ; $47b2: $de $c7
	sub h                                            ; $47b4: $94
	ld b, [hl]                                       ; $47b5: $46
	ld b, l                                          ; $47b6: $45
	rst JumpTable                                          ; $47b7: $c7
	rst $38                                          ; $47b8: $ff
	cp $e3                                           ; $47b9: $fe $e3
	db $e3                                           ; $47bb: $e3
	nop                                              ; $47bc: $00
	nop                                              ; $47bd: $00
	ld b, b                                          ; $47be: $40
	ret nz                                           ; $47bf: $c0

	ld a, e                                          ; $47c0: $7b
	cp c                                             ; $47c1: $b9
	ld a, a                                          ; $47c2: $7f
	cp $96                                           ; $47c3: $fe $96
	ld h, b                                          ; $47c5: $60
	ld d, b                                          ; $47c6: $50
	or b                                             ; $47c7: $b0
	ldh a, [hDisp1_SCY]                                     ; $47c8: $f0 $90
	ld [hl], b                                       ; $47ca: $70
	ld d, b                                          ; $47cb: $50
	jr nz, jr_014_47ee                               ; $47cc: $20 $20

	reti                                             ; $47ce: $d9


	add b                                            ; $47cf: $80
	rst SubAFromDE                                          ; $47d0: $df
	ret nz                                           ; $47d1: $c0

	sbc e                                            ; $47d2: $9b
	ld [hl], b                                       ; $47d3: $70
	ldh a, [$c0]                                     ; $47d4: $f0 $c0
	ret nz                                           ; $47d6: $c0

	ld [hl], e                                       ; $47d7: $73
	ret nz                                           ; $47d8: $c0

	sbc [hl]                                         ; $47d9: $9e
	db $db                                           ; $47da: $db
	rla                                              ; $47db: $17
	ret nz                                           ; $47dc: $c0

	sbc e                                            ; $47dd: $9b
	ld bc, $dff9                                     ; $47de: $01 $f9 $df
	ld bc, $03df                                     ; $47e1: $01 $df $03
	db $db                                           ; $47e4: $db
	ld bc, $029b                                     ; $47e5: $01 $9b $02
	inc bc                                           ; $47e8: $03
	rlca                                             ; $47e9: $07
	rlca                                             ; $47ea: $07
	ld sp, hl                                        ; $47eb: $f9
	rst SubAFromDE                                          ; $47ec: $df
	ld a, a                                          ; $47ed: $7f

jr_014_47ee:
	db $fd                                           ; $47ee: $fd
	rst SubAFromDE                                          ; $47ef: $df
	dec a                                            ; $47f0: $3d
	add l                                            ; $47f1: $85

jr_014_47f2:
	rst JumpTable                                          ; $47f2: $c7
	rst $38                                          ; $47f3: $ff
	ld [bc], a                                       ; $47f4: $02
	rst $38                                          ; $47f5: $ff
	jp z, $3dff                                      ; $47f6: $ca $ff $3d

	rst $38                                          ; $47f9: $ff
	sbc e                                            ; $47fa: $9b
	rst $38                                          ; $47fb: $ff
	ld [hl-], a                                      ; $47fc: $32
	rst $38                                          ; $47fd: $ff
	ld d, a                                          ; $47fe: $57
	db $fd                                           ; $47ff: $fd
	or a                                             ; $4800: $b7
	db $ec                                           ; $4801: $ec
	rst $38                                          ; $4802: $ff
	ret z                                            ; $4803: $c8

	ld a, a                                          ; $4804: $7f
	ld b, e                                          ; $4805: $43
	ld a, l                                          ; $4806: $7d
	ld [hl], a                                       ; $4807: $77
	ld a, a                                          ; $4808: $7f
	ld h, d                                          ; $4809: $62
	rst $38                                          ; $480a: $ff
	ret nz                                           ; $480b: $c0

	db $fd                                           ; $480c: $fd
	rst SubAFromDE                                          ; $480d: $df
	ret nz                                           ; $480e: $c0

	add b                                            ; $480f: $80
	jr nz, jr_014_47f2                               ; $4810: $20 $e0

	nop                                              ; $4812: $00
	db $fd                                           ; $4813: $fd
	db $10                                           ; $4814: $10
	ldh a, [rP1]                                     ; $4815: $f0 $00
	cp $88                                           ; $4817: $fe $88
	ld hl, sp+$48                                    ; $4819: $f8 $48
	ld hl, sp+$40                                    ; $481b: $f8 $40
	cp $a8                                           ; $481d: $fe $a8

jr_014_481f:
	ld hl, sp-$38                                    ; $481f: $f8 $c8
	ld a, b                                          ; $4821: $78
	ldh a, [$3c]                                     ; $4822: $f0 $3c
	ret c                                            ; $4824: $d8

	jr z, jr_014_481f                                ; $4825: $28 $f8

	xor b                                            ; $4827: $a8
	ldh a, [rSVBK]                                   ; $4828: $f0 $70
	rst SubAFromBC                                          ; $482a: $e7
	sbc c                                            ; $482b: $99
	rst $38                                          ; $482c: $ff
	sbc l                                            ; $482d: $9d
	ld h, e                                          ; $482e: $63
	sbc [hl]                                         ; $482f: $9e
	ld h, e                                          ; $4830: $63
	rst SubAFromBC                                          ; $4831: $e7
	add b                                            ; $4832: $80
	ld a, a                                          ; $4833: $7f
	call z, $e43f                                    ; $4834: $cc $3f $e4
	rra                                              ; $4837: $1f
	rst $38                                          ; $4838: $ff
	call nc, $20eb                                   ; $4839: $d4 $eb $20
	ccf                                              ; $483c: $3f
	db $10                                           ; $483d: $10
	rra                                              ; $483e: $1f
	rra                                              ; $483f: $1f
	dec de                                           ; $4840: $1b
	inc e                                            ; $4841: $1c
	rra                                              ; $4842: $1f
	jr nz, @+$41                                     ; $4843: $20 $3f

	ld b, c                                          ; $4845: $41
	ld a, a                                          ; $4846: $7f
	add a                                            ; $4847: $87
	rst $38                                          ; $4848: $ff
	jp Jump_014_7fff                                 ; $4849: $c3 $ff $7f


	ld a, h                                          ; $484c: $7c
	rrca                                             ; $484d: $0f
	rrca                                             ; $484e: $0f
	ld bc, $0001                                     ; $484f: $01 $01 $00
	add b                                            ; $4852: $80
	nop                                              ; $4853: $00
	ldh [$60], a                                     ; $4854: $e0 $60
	sbc h                                            ; $4856: $9c
	db $fc                                           ; $4857: $fc
	ld c, $fa                                        ; $4858: $0e $fa
	scf                                              ; $485a: $37
	ret z                                            ; $485b: $c8

	ldh a, [c]                                       ; $485c: $f2
	adc $dc                                          ; $485d: $ce $dc
	db $ec                                           ; $485f: $ec
	ld hl, sp-$08                                    ; $4860: $f8 $f8
	jr nz, @-$04                                     ; $4862: $20 $fa

	ld b, b                                          ; $4864: $40
	ret nz                                           ; $4865: $c0

	ldh a, [$f0]                                     ; $4866: $f0 $f0
	ld e, [hl]                                       ; $4868: $5e
	cp $ba                                           ; $4869: $fe $ba
	or $f1                                           ; $486b: $f6 $f1
	rst $38                                          ; $486d: $ff
	ccf                                              ; $486e: $3f
	db $fd                                           ; $486f: $fd
	jp $df73                                         ; $4870: $c3 $73 $df


	pop bc                                           ; $4873: $c1
	ld h, a                                          ; $4874: $67
	add b                                            ; $4875: $80
	ld a, a                                          ; $4876: $7f
	cp $7f                                           ; $4877: $fe $7f
	add b                                            ; $4879: $80
	ld a, a                                          ; $487a: $7f
	cp $77                                           ; $487b: $fe $77
	add b                                            ; $487d: $80

jr_014_487e:
	ld a, a                                          ; $487e: $7f
	cp $77                                           ; $487f: $fe $77
	add b                                            ; $4881: $80
	sbc l                                            ; $4882: $9d
	ld hl, sp+$38                                    ; $4883: $f8 $38
	ld l, a                                          ; $4885: $6f
	add b                                            ; $4886: $80
	ld l, a                                          ; $4887: $6f
	ret nz                                           ; $4888: $c0

	sbc l                                            ; $4889: $9d
	ld [hl], $ca                                     ; $488a: $36 $ca
	ld l, e                                          ; $488c: $6b
	ret nz                                           ; $488d: $c0

	sbc d                                            ; $488e: $9a
	ldh [rLCDC], a                                   ; $488f: $e0 $40
	ret nz                                           ; $4891: $c0

	ld hl, sp-$08                                    ; $4892: $f8 $f8
	ld h, e                                          ; $4894: $63
	ret nz                                           ; $4895: $c0

	sbc [hl]                                         ; $4896: $9e
	ld b, e                                          ; $4897: $43
	ld a, e                                          ; $4898: $7b
	ret nz                                           ; $4899: $c0

	ld a, a                                          ; $489a: $7f
	sbc h                                            ; $489b: $9c
	sbc [hl]                                         ; $489c: $9e
	inc bc                                           ; $489d: $03
	ld a, e                                          ; $489e: $7b
	cp $7f                                           ; $489f: $fe $7f
	ld c, $9c                                        ; $48a1: $0e $9c
	ld b, $00                                        ; $48a3: $06 $00
	ld c, $7b                                        ; $48a5: $0e $7b
	cp $8e                                           ; $48a7: $fe $8e
	inc e                                            ; $48a9: $1c
	ld [$0815], sp                                   ; $48aa: $08 $15 $08
	rla                                              ; $48ad: $17
	ld a, [de]                                       ; $48ae: $1a
	dec h                                            ; $48af: $25
	inc e                                            ; $48b0: $1c
	inc hl                                           ; $48b1: $23
	inc a                                            ; $48b2: $3c
	ld b, e                                          ; $48b3: $43
	jr c, jr_014_48fd                                ; $48b4: $38 $47

	jr c, jr_014_487e                                ; $48b6: $38 $c6

	halt                                             ; $48b8: $76
	adc c                                            ; $48b9: $89
	db $f4                                           ; $48ba: $f4
	sbc h                                            ; $48bb: $9c
	ld b, b                                          ; $48bc: $40
	nop                                              ; $48bd: $00
	add b                                            ; $48be: $80
	ld a, e                                          ; $48bf: $7b
	cp $9e                                           ; $48c0: $fe $9e
	jr nz, @+$75                                     ; $48c2: $20 $73

	ld hl, sp-$05                                    ; $48c4: $f8 $fb
	adc d                                            ; $48c6: $8a
	ldh [$6c], a                                     ; $48c7: $e0 $6c
	sub e                                            ; $48c9: $93
	jr c, @-$37                                      ; $48ca: $38 $c7

jr_014_48cc:
	ld a, $41                                        ; $48cc: $3e $41
	ld a, [de]                                       ; $48ce: $1a
	ld h, l                                          ; $48cf: $65
	inc e                                            ; $48d0: $1c
	inc hl                                           ; $48d1: $23
	inc c                                            ; $48d2: $0c
	ld [hl-], a                                      ; $48d3: $32
	ld b, $19                                        ; $48d4: $06 $19
	add hl, bc                                       ; $48d6: $09
	ld d, $0c                                        ; $48d7: $16 $0c
	ld de, $0904                                     ; $48d9: $11 $04 $09
	ld a, e                                          ; $48dc: $7b
	cp b                                             ; $48dd: $b8
	ld a, a                                          ; $48de: $7f
	or d                                             ; $48df: $b2
	ld a, a                                          ; $48e0: $7f
	xor [hl]                                         ; $48e1: $ae
	ld [hl], a                                       ; $48e2: $77
	xor b                                            ; $48e3: $a8
	ld a, a                                          ; $48e4: $7f
	and d                                            ; $48e5: $a2
	ld l, a                                          ; $48e6: $6f
	sub $7f                                          ; $48e7: $d6 $7f
	ld a, [$d67e]                                    ; $48e9: $fa $7e $d6
	ld a, [hl]                                       ; $48ec: $7e
	call c, $f86f                                    ; $48ed: $dc $6f $f8
	ld [hl], a                                       ; $48f0: $77
	or $9e                                           ; $48f1: $f6 $9e
	ld h, b                                          ; $48f3: $60
	ld a, e                                          ; $48f4: $7b
	cp d                                             ; $48f5: $ba
	sbc [hl]                                         ; $48f6: $9e
	db $10                                           ; $48f7: $10
	ld l, [hl]                                       ; $48f8: $6e
	add a                                            ; $48f9: $87
	inc bc                                           ; $48fa: $03
	add b                                            ; $48fb: $80
	inc bc                                           ; $48fc: $03

jr_014_48fd:
	add b                                            ; $48fd: $80
	inc bc                                           ; $48fe: $03
	add b                                            ; $48ff: $80
	rla                                              ; $4900: $17
	add b                                            ; $4901: $80
	ld l, $20                                        ; $4902: $2e $20
	sbc h                                            ; $4904: $9c
	db $eb                                           ; $4905: $eb
	ld a, a                                          ; $4906: $7f
	ld d, h                                          ; $4907: $54
	ld a, e                                          ; $4908: $7b
	cp $9e                                           ; $4909: $fe $9e
	ld h, e                                          ; $490b: $63
	ld e, [hl]                                       ; $490c: $5e
	jr nz, @+$44                                     ; $490d: $20 $42

	and b                                            ; $490f: $a0
	sbc d                                            ; $4910: $9a
	cp b                                             ; $4911: $b8
	ret c                                            ; $4912: $d8

	xor b                                            ; $4913: $a8
	ld hl, sp+$28                                    ; $4914: $f8 $28
	ld [bc], a                                       ; $4916: $02
	and b                                            ; $4917: $a0
	sbc [hl]                                         ; $4918: $9e
	push af                                          ; $4919: $f5
	cp $df                                           ; $491a: $fe $df
	rlca                                             ; $491c: $07
	sbc [hl]                                         ; $491d: $9e
	jr @+$7c                                         ; $491e: $18 $7a

	add hl, hl                                       ; $4920: $29
	sbc b                                            ; $4921: $98
	ld b, d                                          ; $4922: $42
	ld a, a                                          ; $4923: $7f
	add d                                            ; $4924: $82
	ld a, a                                          ; $4925: $7f
	add e                                            ; $4926: $83
	ld a, a                                          ; $4927: $7f
	sbc [hl]                                         ; $4928: $9e
	ld a, e                                          ; $4929: $7b
	ld hl, sp-$62                                    ; $492a: $f8 $9e
	adc d                                            ; $492c: $8a
	ld a, e                                          ; $492d: $7b
	cp $98                                           ; $492e: $fe $98
	sbc d                                            ; $4930: $9a
	ccf                                              ; $4931: $3f
	ld d, d                                          ; $4932: $52
	ccf                                              ; $4933: $3f
	ld b, b                                          ; $4934: $40
	rlca                                             ; $4935: $07
	jr c, jr_014_49b3                                ; $4936: $38 $7b

	ld e, d                                          ; $4938: $5a
	rst SubAFromDE                                          ; $4939: $df
	jr nz, jr_014_48cc                               ; $493a: $20 $90

	rst SubAFromDE                                          ; $493c: $df
	rst $38                                          ; $493d: $ff
	nop                                              ; $493e: $00
	rst $38                                          ; $493f: $ff
	ldh [c], a                                       ; $4940: $e2
	rst $38                                          ; $4941: $ff
	and d                                            ; $4942: $a2
	rst $38                                          ; $4943: $ff
	rst AddAOntoHL                                          ; $4944: $ef
	rst $38                                          ; $4945: $ff
	jp nz, $1fff                                     ; $4946: $c2 $ff $1f

	rst $38                                          ; $4949: $ff
	add d                                            ; $494a: $82
	ld a, e                                          ; $494b: $7b
	ld a, [$429e]                                    ; $494c: $fa $9e $42
	ld a, e                                          ; $494f: $7b
	cp $7f                                           ; $4950: $fe $7f
	db $ec                                           ; $4952: $ec
	sbc d                                            ; $4953: $9a
	nop                                              ; $4954: $00
	rst JumpTable                                          ; $4955: $c7
	jr c, jr_014_4958                                ; $4956: $38 $00

jr_014_4958:
	rst JumpTable                                          ; $4958: $c7
	ld [hl], a                                       ; $4959: $77
	ld c, h                                          ; $495a: $4c
	adc a                                            ; $495b: $8f
	add b                                            ; $495c: $80
	ld [hl], b                                       ; $495d: $70
	ldh a, [$08]                                     ; $495e: $f0 $08
	ld hl, sp+$04                                    ; $4960: $f8 $04
	db $fc                                           ; $4962: $fc
	jp nz, $02fc                                     ; $4963: $c2 $fc $02

	cp $c1                                           ; $4966: $fe $c1
	cp $01                                           ; $4968: $fe $01
	cp $a9                                           ; $496a: $fe $a9
	ld a, e                                          ; $496c: $7b
	cp $96                                           ; $496d: $fe $96
	ld de, $22fc                                     ; $496f: $11 $fc $22
	ld hl, sp+$06                                    ; $4972: $f8 $06
	ret nz                                           ; $4974: $c0

	jr c, jr_014_4977                                ; $4975: $38 $00

jr_014_4977:
	ret nz                                           ; $4977: $c0

	adc c                                            ; $4978: $89
	ld bc, $dff7                                     ; $4979: $01 $f7 $df
	ld bc, $f867                                     ; $497c: $01 $67 $f8
	rst SubAFromDE                                          ; $497f: $df
	inc bc                                           ; $4980: $03
	di                                               ; $4981: $f3
	rst SubAFromDE                                          ; $4982: $df
	ld e, $85                                        ; $4983: $1e $85
	ld h, e                                          ; $4985: $63
	ld a, a                                          ; $4986: $7f
	add c                                            ; $4987: $81
	rst $38                                          ; $4988: $ff
	push hl                                          ; $4989: $e5
	rst $38                                          ; $498a: $ff
	sbc [hl]                                         ; $498b: $9e
	rst $38                                          ; $498c: $ff
	call $99ff                                       ; $498d: $cd $ff $99
	rst $38                                          ; $4990: $ff
	dec hl                                           ; $4991: $2b
	cp $db                                           ; $4992: $fe $db
	or $7f                                           ; $4994: $f6 $7f
	ld h, h                                          ; $4996: $64
	ccf                                              ; $4997: $3f
	ld hl, $3b3e                                     ; $4998: $21 $3e $3b
	ccf                                              ; $499b: $3f
	ld sp, $203f                                     ; $499c: $31 $3f $20
	db $fd                                           ; $499f: $fd
	rst SubAFromDE                                          ; $49a0: $df
	ldh [hDisp0_BGP], a                                     ; $49a1: $e0 $85
	sub b                                            ; $49a3: $90
	ldh a, [rP1]                                     ; $49a4: $f0 $00
	db $fd                                           ; $49a6: $fd
	ld [$88f8], sp                                   ; $49a7: $08 $f8 $88
	ld hl, sp-$3c                                    ; $49aa: $f8 $c4
	db $fc                                           ; $49ac: $fc
	inc h                                            ; $49ad: $24
	db $fc                                           ; $49ae: $fc
	and b                                            ; $49af: $a0
	cp $d4                                           ; $49b0: $fe $d4
	ld a, h                                          ; $49b2: $7c

jr_014_49b3:
	db $e4                                           ; $49b3: $e4
	inc a                                            ; $49b4: $3c
	ld hl, sp-$62                                    ; $49b5: $f8 $9e
	db $ec                                           ; $49b7: $ec
	sub h                                            ; $49b8: $94
	db $fc                                           ; $49b9: $fc
	ld d, h                                          ; $49ba: $54
	ld hl, sp+$38                                    ; $49bb: $f8 $38
	ld [hl], e                                       ; $49bd: $73
	or b                                             ; $49be: $b0
	sub b                                            ; $49bf: $90
	ld [bc], a                                       ; $49c0: $02
	inc bc                                           ; $49c1: $03
	ld [bc], a                                       ; $49c2: $02
	ld bc, $3301                                     ; $49c3: $01 $01 $33
	inc sp                                           ; $49c6: $33
	ld l, $3f                                        ; $49c7: $2e $3f
	ld l, $3b                                        ; $49c9: $2e $3b
	dec hl                                           ; $49cb: $2b
	scf                                              ; $49cc: $37
	rra                                              ; $49cd: $1f
	rra                                              ; $49ce: $1f
	push af                                          ; $49cf: $f5
	add b                                            ; $49d0: $80
	ld e, a                                          ; $49d1: $5f
	ld [hl], a                                       ; $49d2: $77
	adc a                                            ; $49d3: $8f
	ld hl, sp-$59                                    ; $49d4: $f8 $a7
	rst $38                                          ; $49d6: $ff
	push hl                                          ; $49d7: $e5
	ld a, d                                          ; $49d8: $7a
	ldh [rIE], a                                     ; $49d9: $e0 $ff
	sbc b                                            ; $49db: $98
	rst $38                                          ; $49dc: $ff
	rlca                                             ; $49dd: $07
	rst $38                                          ; $49de: $ff
	nop                                              ; $49df: $00
	rst $38                                          ; $49e0: $ff
	ld hl, sp-$01                                    ; $49e1: $f8 $ff
	inc c                                            ; $49e3: $0c
	rrca                                             ; $49e4: $0f
	ld b, $07                                        ; $49e5: $06 $07
	dec de                                           ; $49e7: $1b
	dec e                                            ; $49e8: $1d
	inc d                                            ; $49e9: $14
	dec de                                           ; $49ea: $1b
	rla                                              ; $49eb: $17
	rra                                              ; $49ec: $1f
	jr @+$1a                                         ; $49ed: $18 $18

	nop                                              ; $49ef: $00
	sub d                                            ; $49f0: $92
	nop                                              ; $49f1: $00
	add sp, $38                                      ; $49f2: $e8 $38
	db $f4                                           ; $49f4: $f4
	ld a, h                                          ; $49f5: $7c
	db $fc                                           ; $49f6: $fc
	call z, $60be                                    ; $49f7: $cc $be $60
	ld a, $f2                                        ; $49fa: $3e $f2
	call z, $ddcc                                    ; $49fc: $cc $cc $dd
	add b                                            ; $49ff: $80
	sub l                                            ; $4a00: $95
	ld b, b                                          ; $4a01: $40
	ret nz                                           ; $4a02: $c0

	nop                                              ; $4a03: $00
	db $f4                                           ; $4a04: $f4
	ld h, b                                          ; $4a05: $60

jr_014_4a06:
	ldh [$c0], a                                     ; $4a06: $e0 $c0
	ret nz                                           ; $4a08: $c0

	add b                                            ; $4a09: $80
	add sp, -$09                                     ; $4a0a: $e8 $f7
	ld [hl], a                                       ; $4a0c: $77
	add b                                            ; $4a0d: $80
	sbc l                                            ; $4a0e: $9d

jr_014_4a0f:
	db $10                                           ; $4a0f: $10
	ldh a, [$67]                                     ; $4a10: $f0 $67
	add b                                            ; $4a12: $80
	sbc l                                            ; $4a13: $9d
	and h                                            ; $4a14: $a4
	db $fc                                           ; $4a15: $fc
	ld [hl], a                                       ; $4a16: $77
	add b                                            ; $4a17: $80
	sbc l                                            ; $4a18: $9d
	db $fc                                           ; $4a19: $fc
	sbc h                                            ; $4a1a: $9c
	ld l, a                                          ; $4a1b: $6f
	add b                                            ; $4a1c: $80
	ld l, e                                          ; $4a1d: $6b
	ret nz                                           ; $4a1e: $c0

	sbc [hl]                                         ; $4a1f: $9e
	ld h, d                                          ; $4a20: $62
	ld e, a                                          ; $4a21: $5f
	ret nz                                           ; $4a22: $c0

	sbc l                                            ; $4a23: $9d

jr_014_4a24:
	jr nz, jr_014_4a06                               ; $4a24: $20 $e0

	ld [hl], e                                       ; $4a26: $73
	ret nz                                           ; $4a27: $c0

	sbc [hl]                                         ; $4a28: $9e
	add b                                            ; $4a29: $80
	ld h, a                                          ; $4a2a: $67
	add hl, bc                                       ; $4a2b: $09
	sbc l                                            ; $4a2c: $9d
	nop                                              ; $4a2d: $00
	inc bc                                           ; $4a2e: $03
	ld a, e                                          ; $4a2f: $7b

jr_014_4a30:
	cp $9a                                           ; $4a30: $fe $9a
	rlca                                             ; $4a32: $07
	nop                                              ; $4a33: $00
	ld b, $00                                        ; $4a34: $06 $00
	ld c, $7b                                        ; $4a36: $0e $7b
	cp $8e                                           ; $4a38: $fe $8e
	inc e                                            ; $4a3a: $1c
	ld [$0815], sp                                   ; $4a3b: $08 $15 $08
	rla                                              ; $4a3e: $17
	ld a, [de]                                       ; $4a3f: $1a
	dec h                                            ; $4a40: $25
	inc e                                            ; $4a41: $1c
	inc hl                                           ; $4a42: $23
	inc a                                            ; $4a43: $3c
	ld b, e                                          ; $4a44: $43
	jr c, jr_014_4a8e                                ; $4a45: $38 $47

	jr c, jr_014_4a0f                                ; $4a47: $38 $c6

	halt                                             ; $4a49: $76
	adc c                                            ; $4a4a: $89
	db $f4                                           ; $4a4b: $f4
	sbc h                                            ; $4a4c: $9c
	ld b, b                                          ; $4a4d: $40
	nop                                              ; $4a4e: $00
	add b                                            ; $4a4f: $80
	ld a, e                                          ; $4a50: $7b
	cp $7f                                           ; $4a51: $fe $7f
	inc c                                            ; $4a53: $0c
	ld [hl], a                                       ; $4a54: $77
	ld hl, sp+$6b                                    ; $4a55: $f8 $6b
	add l                                            ; $4a57: $85
	adc e                                            ; $4a58: $8b
	ld l, h                                          ; $4a59: $6c
	sub e                                            ; $4a5a: $93
	jr c, jr_014_4a24                                ; $4a5b: $38 $c7

	ld a, $41                                        ; $4a5d: $3e $41
	ld a, [de]                                       ; $4a5f: $1a
	ld h, l                                          ; $4a60: $65
	inc e                                            ; $4a61: $1c
	inc hl                                           ; $4a62: $23
	inc c                                            ; $4a63: $0c
	ld [hl-], a                                      ; $4a64: $32
	ld b, $19                                        ; $4a65: $06 $19
	add hl, bc                                       ; $4a67: $09
	ld d, $0c                                        ; $4a68: $16 $0c
	ld de, $0904                                     ; $4a6a: $11 $04 $09
	ld a, e                                          ; $4a6d: $7b
	cp b                                             ; $4a6e: $b8
	ld a, a                                          ; $4a6f: $7f
	or d                                             ; $4a70: $b2
	ld a, a                                          ; $4a71: $7f
	xor [hl]                                         ; $4a72: $ae
	ld [hl], a                                       ; $4a73: $77
	xor b                                            ; $4a74: $a8
	ld a, a                                          ; $4a75: $7f
	and d                                            ; $4a76: $a2
	ld l, a                                          ; $4a77: $6f
	sub $7f                                          ; $4a78: $d6 $7f
	ld a, [$487f]                                    ; $4a7a: $fa $7f $48
	sbc [hl]                                         ; $4a7d: $9e
	ldh [rOCPD], a                                   ; $4a7e: $e0 $6b
	ld hl, sp+$77                                    ; $4a80: $f8 $77
	or $9e                                           ; $4a82: $f6 $9e
	ld h, b                                          ; $4a84: $60
	ld a, e                                          ; $4a85: $7b
	cp d                                             ; $4a86: $ba
	sbc [hl]                                         ; $4a87: $9e
	db $10                                           ; $4a88: $10
	inc bc                                           ; $4a89: $03
	add b                                            ; $4a8a: $80
	inc bc                                           ; $4a8b: $03
	add b                                            ; $4a8c: $80
	inc bc                                           ; $4a8d: $03

jr_014_4a8e:
	add b                                            ; $4a8e: $80
	inc bc                                           ; $4a8f: $03
	add b                                            ; $4a90: $80
	ld a, [hl+]                                      ; $4a91: $2a
	jr nz, jr_014_4a30                               ; $4a92: $20 $9c

	ld [hl], l                                       ; $4a94: $75
	ccf                                              ; $4a95: $3f
	ld a, [hl+]                                      ; $4a96: $2a
	ld a, e                                          ; $4a97: $7b
	cp $5a                                           ; $4a98: $fe $5a
	jr nz, jr_014_4ae6                               ; $4a9a: $20 $4a

	and b                                            ; $4a9c: $a0
	sbc b                                            ; $4a9d: $98
	cp h                                             ; $4a9e: $bc
	db $fc                                           ; $4a9f: $fc
	ld e, h                                          ; $4aa0: $5c
	db $ec                                           ; $4aa1: $ec
	ld d, h                                          ; $4aa2: $54
	db $fc                                           ; $4aa3: $fc
	sub h                                            ; $4aa4: $94
	ld a, [bc]                                       ; $4aa5: $0a
	and b                                            ; $4aa6: $a0
	ld [hl], a                                       ; $4aa7: $77
	db $fc                                           ; $4aa8: $fc
	sub d                                            ; $4aa9: $92
	jr nc, jr_014_4abc                               ; $4aaa: $30 $10

	cpl                                              ; $4aac: $2f
	rra                                              ; $4aad: $1f
	ld [hl+], a                                      ; $4aae: $22
	rra                                              ; $4aaf: $1f
	ld [hl+], a                                      ; $4ab0: $22
	ccf                                              ; $4ab1: $3f
	ld b, d                                          ; $4ab2: $42
	ccf                                              ; $4ab3: $3f
	ld c, a                                          ; $4ab4: $4f
	ld a, a                                          ; $4ab5: $7f
	adc c                                            ; $4ab6: $89
	ld a, e                                          ; $4ab7: $7b
	cp $92                                           ; $4ab8: $fe $92
	sub c                                            ; $4aba: $91
	ld a, a                                          ; $4abb: $7f

jr_014_4abc:
	and c                                            ; $4abc: $a1
	ld a, a                                          ; $4abd: $7f
	add d                                            ; $4abe: $82
	ld a, a                                          ; $4abf: $7f
	add h                                            ; $4ac0: $84
	ccf                                              ; $4ac1: $3f
	ld c, b                                          ; $4ac2: $48
	rra                                              ; $4ac3: $1f
	jr nz, jr_014_4ac9                               ; $4ac4: $20 $03

	inc e                                            ; $4ac6: $1c
	ld a, e                                          ; $4ac7: $7b
	ld e, [hl]                                       ; $4ac8: $5e

jr_014_4ac9:
	rst SubAFromDE                                          ; $4ac9: $df
	cp $9c                                           ; $4aca: $fe $9c
	ld bc, $88ff                                     ; $4acc: $01 $ff $88
	ld a, e                                          ; $4acf: $7b
	cp $9c                                           ; $4ad0: $fe $9c
	cp [hl]                                          ; $4ad2: $be
	rst $38                                          ; $4ad3: $ff
	ld [$fe7b], sp                                   ; $4ad4: $08 $7b $fe
	sbc [hl]                                         ; $4ad7: $9e
	ld a, a                                          ; $4ad8: $7f
	ld a, e                                          ; $4ad9: $7b
	db $fc                                           ; $4ada: $fc
	sbc [hl]                                         ; $4adb: $9e
	add hl, bc                                       ; $4adc: $09
	ld a, e                                          ; $4add: $7b
	cp $77                                           ; $4ade: $fe $77
	db $f4                                           ; $4ae0: $f4
	sbc d                                            ; $4ae1: $9a
	nop                                              ; $4ae2: $00
	rst GetHLinHL                                          ; $4ae3: $cf
	jr nc, jr_014_4ae6                               ; $4ae4: $30 $00

jr_014_4ae6:
	rst GetHLinHL                                          ; $4ae6: $cf
	cp $df                                           ; $4ae7: $fe $df
	ret nz                                           ; $4ae9: $c0

	ld a, a                                          ; $4aea: $7f
	xor l                                            ; $4aeb: $ad
	ld [hl], a                                       ; $4aec: $77
	add c                                            ; $4aed: $81
	sbc [hl]                                         ; $4aee: $9e
	inc b                                            ; $4aef: $04
	ld l, a                                          ; $4af0: $6f
	cp $9d                                           ; $4af1: $fe $9d
	db $fc                                           ; $4af3: $fc
	ld d, d                                          ; $4af4: $52
	ld a, e                                          ; $4af5: $7b
	cp $96                                           ; $4af6: $fe $96
	ld [de], a                                       ; $4af8: $12
	ld hl, sp+$24                                    ; $4af9: $f8 $24
	ldh a, [$c8]                                     ; $4afb: $f0 $c8
	ret nz                                           ; $4afd: $c0

	jr nc, jr_014_4b00                               ; $4afe: $30 $00

jr_014_4b00:
	ret nz                                           ; $4b00: $c0

	rlc b                                            ; $4b01: $cb $00
	ei                                               ; $4b03: $fb
	rst SubAFromDE                                          ; $4b04: $df
	inc bc                                           ; $4b05: $03
	adc a                                            ; $4b06: $8f
	inc b                                            ; $4b07: $04
	rlca                                             ; $4b08: $07
	rrca                                             ; $4b09: $0f
	rrca                                             ; $4b0a: $0f
	inc b                                            ; $4b0b: $04
	rlca                                             ; $4b0c: $07
	ld b, $07                                        ; $4b0d: $06 $07
	inc b                                            ; $4b0f: $04
	rlca                                             ; $4b10: $07
	add hl, bc                                       ; $4b11: $09
	rrca                                             ; $4b12: $0f
	ld e, $1f                                        ; $4b13: $1e $1f
	inc bc                                           ; $4b15: $03
	inc bc                                           ; $4b16: $03
	db $db                                           ; $4b17: $db
	ld bc, $03df                                     ; $4b18: $01 $df $03
	db $fd                                           ; $4b1b: $fd
	rst SubAFromDE                                          ; $4b1c: $df
	rst FarCall                                          ; $4b1d: $f7
	add l                                            ; $4b1e: $85
	inc e                                            ; $4b1f: $1c
	rst $38                                          ; $4b20: $ff
	ld [$28ff], sp                                   ; $4b21: $08 $ff $28
	rst $38                                          ; $4b24: $ff
	db $f4                                           ; $4b25: $f4
	rst $38                                          ; $4b26: $ff
	ld l, [hl]                                       ; $4b27: $6e
	rst $38                                          ; $4b28: $ff
	ret                                              ; $4b29: $c9


	rst $38                                          ; $4b2a: $ff
	ld e, l                                          ; $4b2b: $5d
	rst FarCall                                          ; $4b2c: $f7
	sbc $b3                                          ; $4b2d: $de $b3
	rst $38                                          ; $4b2f: $ff
	ld hl, $0cff                                     ; $4b30: $21 $ff $0c
	rst FarCall                                          ; $4b33: $f7
	call c, $8aff                                    ; $4b34: $dc $ff $8a
	rst $38                                          ; $4b37: $ff
	ld bc, $ddfb                                     ; $4b38: $01 $fb $dd
	add b                                            ; $4b3b: $80
	sbc c                                            ; $4b3c: $99
	ld b, b                                          ; $4b3d: $40
	ret nz                                           ; $4b3e: $c0

	ld b, b                                          ; $4b3f: $40
	ret nz                                           ; $4b40: $c0

	jr nz, @-$1e                                     ; $4b41: $20 $e0

	ld [hl], a                                       ; $4b43: $77
	cp $9e                                           ; $4b44: $fe $9e
	and b                                            ; $4b46: $a0
	ld a, e                                          ; $4b47: $7b
	db $fc                                           ; $4b48: $fc
	rst SubAFromDE                                          ; $4b49: $df
	ldh [$99], a                                     ; $4b4a: $e0 $99
	ld h, b                                          ; $4b4c: $60
	and b                                            ; $4b4d: $a0
	ldh [$a0], a                                     ; $4b4e: $e0 $a0
	ret nz                                           ; $4b50: $c0

	ret nz                                           ; $4b51: $c0

	ld [hl], a                                       ; $4b52: $77
	xor [hl]                                         ; $4b53: $ae
	sbc [hl]                                         ; $4b54: $9e
	dec b                                            ; $4b55: $05
	ld a, e                                          ; $4b56: $7b
	xor b                                            ; $4b57: $a8
	ld a, a                                          ; $4b58: $7f
	xor d                                            ; $4b59: $aa
	sub [hl]                                         ; $4b5a: $96
	dec e                                            ; $4b5b: $1d
	rla                                              ; $4b5c: $17
	ld e, $12                                        ; $4b5d: $1e $12
	dec c                                            ; $4b5f: $0d
	dec c                                            ; $4b60: $0d
	ld [bc], a                                       ; $4b61: $02
	inc bc                                           ; $4b62: $03
	ld [bc], a                                       ; $4b63: $02
	db $dd                                           ; $4b64: $dd
	inc bc                                           ; $4b65: $03
	rst SubAFromDE                                          ; $4b66: $df
	ld [bc], a                                       ; $4b67: $02
	add h                                            ; $4b68: $84
	inc bc                                           ; $4b69: $03
	ld b, $05                                        ; $4b6a: $06 $05
	rrca                                             ; $4b6c: $0f
	rrca                                             ; $4b6d: $0f
	nop                                              ; $4b6e: $00
	nop                                              ; $4b6f: $00
	rst $38                                          ; $4b70: $ff
	cp c                                             ; $4b71: $b9
	ld a, [hl]                                       ; $4b72: $7e
	jp $ff3c                                         ; $4b73: $c3 $3c $ff


	xor c                                            ; $4b76: $a9
	rst SubAFromHL                                          ; $4b77: $d7
	jp $feff                                         ; $4b78: $c3 $ff $fe


	cp $e6                                           ; $4b7b: $fe $e6
	cp $4d                                           ; $4b7d: $fe $4d
	rst $38                                          ; $4b7f: $ff
	cp d                                             ; $4b80: $ba
	rst $38                                          ; $4b81: $ff
	ld l, l                                          ; $4b82: $6d
	rst AddAOntoHL                                          ; $4b83: $ef
	sbc $c7                                          ; $4b84: $de $c7
	sub h                                            ; $4b86: $94
	ld b, [hl]                                       ; $4b87: $46
	ld b, l                                          ; $4b88: $45
	rst JumpTable                                          ; $4b89: $c7
	rst $38                                          ; $4b8a: $ff
	cp $e3                                           ; $4b8b: $fe $e3
	db $e3                                           ; $4b8d: $e3
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	ld b, b                                          ; $4b90: $40
	ret nz                                           ; $4b91: $c0

	ld a, e                                          ; $4b92: $7b
	cp c                                             ; $4b93: $b9
	ld a, a                                          ; $4b94: $7f
	cp $96                                           ; $4b95: $fe $96
	ld h, b                                          ; $4b97: $60
	ld d, b                                          ; $4b98: $50
	or b                                             ; $4b99: $b0
	ldh a, [hDisp1_SCY]                                     ; $4b9a: $f0 $90
	ld [hl], b                                       ; $4b9c: $70
	ld d, b                                          ; $4b9d: $50
	jr nz, jr_014_4bc0                               ; $4b9e: $20 $20

	reti                                             ; $4ba0: $d9


	add b                                            ; $4ba1: $80
	rst SubAFromDE                                          ; $4ba2: $df
	ret nz                                           ; $4ba3: $c0

	sbc c                                            ; $4ba4: $99
	ld [hl], b                                       ; $4ba5: $70
	ldh a, [$c0]                                     ; $4ba6: $f0 $c0
	ret nz                                           ; $4ba8: $c0

	nop                                              ; $4ba9: $00
	nop                                              ; $4baa: $00
	ld c, a                                          ; $4bab: $4f
	and b                                            ; $4bac: $a0
	rst SubAFromDE                                          ; $4bad: $df
	inc c                                            ; $4bae: $0c
	push af                                          ; $4baf: $f5
	ld b, a                                          ; $4bb0: $47
	and b                                            ; $4bb1: $a0
	sub b                                            ; $4bb2: $90
	pop de                                           ; $4bb3: $d1
	rst $38                                          ; $4bb4: $ff
	ld e, c                                          ; $4bb5: $59
	ld a, a                                          ; $4bb6: $7f
	ld [hl-], a                                      ; $4bb7: $32
	ld a, $22                                        ; $4bb8: $3e $22
	ld a, $37                                        ; $4bba: $3e $37
	ccf                                              ; $4bbc: $3f
	ccf                                              ; $4bbd: $3f
	cpl                                              ; $4bbe: $2f
	halt                                             ; $4bbf: $76

jr_014_4bc0:
	ld e, [hl]                                       ; $4bc0: $5e
	add a                                            ; $4bc1: $87
	sbc $ff                                          ; $4bc2: $de $ff
	rst SubAFromDE                                          ; $4bc4: $df
	db $fc                                           ; $4bc5: $fc
	ld b, a                                          ; $4bc6: $47
	and b                                            ; $4bc7: $a0
	rst FarCall                                          ; $4bc8: $f7
	rst SubAFromDE                                          ; $4bc9: $df
	ldh a, [$fd]                                     ; $4bca: $f0 $fd
	rst GetHLinHL                                          ; $4bcc: $cf
	nop                                              ; $4bcd: $00
	ei                                               ; $4bce: $fb
	rst SubAFromDE                                          ; $4bcf: $df
	inc bc                                           ; $4bd0: $03
	adc a                                            ; $4bd1: $8f
	inc b                                            ; $4bd2: $04
	rlca                                             ; $4bd3: $07
	rrca                                             ; $4bd4: $0f
	rrca                                             ; $4bd5: $0f
	inc b                                            ; $4bd6: $04
	rlca                                             ; $4bd7: $07
	ld b, $07                                        ; $4bd8: $06 $07
	inc b                                            ; $4bda: $04
	rlca                                             ; $4bdb: $07
	add hl, bc                                       ; $4bdc: $09
	rrca                                             ; $4bdd: $0f
	ld e, $1f                                        ; $4bde: $1e $1f
	inc bc                                           ; $4be0: $03
	inc bc                                           ; $4be1: $03
	db $db                                           ; $4be2: $db
	ld bc, $03df                                     ; $4be3: $01 $df $03
	db $fd                                           ; $4be6: $fd
	rst SubAFromDE                                          ; $4be7: $df
	rst FarCall                                          ; $4be8: $f7
	add l                                            ; $4be9: $85
	inc e                                            ; $4bea: $1c
	rst $38                                          ; $4beb: $ff
	ld [$28ff], sp                                   ; $4bec: $08 $ff $28
	rst $38                                          ; $4bef: $ff
	db $f4                                           ; $4bf0: $f4
	rst $38                                          ; $4bf1: $ff
	ld l, [hl]                                       ; $4bf2: $6e
	rst $38                                          ; $4bf3: $ff
	ret                                              ; $4bf4: $c9


	rst $38                                          ; $4bf5: $ff
	ld e, l                                          ; $4bf6: $5d
	rst FarCall                                          ; $4bf7: $f7
	sbc $b3                                          ; $4bf8: $de $b3
	rst $38                                          ; $4bfa: $ff
	ld hl, $00ff                                     ; $4bfb: $21 $ff $00
	rst $38                                          ; $4bfe: $ff
	ld d, d                                          ; $4bff: $52
	rst $38                                          ; $4c00: $ff
	adc h                                            ; $4c01: $8c
	rst $38                                          ; $4c02: $ff
	ld bc, $ddfb                                     ; $4c03: $01 $fb $dd
	add b                                            ; $4c06: $80
	sbc c                                            ; $4c07: $99
	ld b, b                                          ; $4c08: $40
	ret nz                                           ; $4c09: $c0

	ld b, b                                          ; $4c0a: $40
	ret nz                                           ; $4c0b: $c0

	jr nz, @-$1e                                     ; $4c0c: $20 $e0

	ld [hl], a                                       ; $4c0e: $77
	cp $9e                                           ; $4c0f: $fe $9e
	and b                                            ; $4c11: $a0
	ld a, e                                          ; $4c12: $7b
	db $fc                                           ; $4c13: $fc
	rst SubAFromDE                                          ; $4c14: $df
	ldh [$99], a                                     ; $4c15: $e0 $99
	ld h, b                                          ; $4c17: $60
	and b                                            ; $4c18: $a0
	ldh [$a0], a                                     ; $4c19: $e0 $a0
	ret nz                                           ; $4c1b: $c0

	ret nz                                           ; $4c1c: $c0

	ld [hl], a                                       ; $4c1d: $77
	xor [hl]                                         ; $4c1e: $ae
	sbc [hl]                                         ; $4c1f: $9e
	dec b                                            ; $4c20: $05
	ld a, e                                          ; $4c21: $7b
	xor b                                            ; $4c22: $a8
	ld a, a                                          ; $4c23: $7f
	xor d                                            ; $4c24: $aa
	sub [hl]                                         ; $4c25: $96
	dec e                                            ; $4c26: $1d
	rla                                              ; $4c27: $17
	ld e, $12                                        ; $4c28: $1e $12
	dec c                                            ; $4c2a: $0d
	dec c                                            ; $4c2b: $0d
	ld [bc], a                                       ; $4c2c: $02
	inc bc                                           ; $4c2d: $03
	ld [bc], a                                       ; $4c2e: $02
	db $dd                                           ; $4c2f: $dd
	inc bc                                           ; $4c30: $03
	rst SubAFromDE                                          ; $4c31: $df
	ld [bc], a                                       ; $4c32: $02
	add h                                            ; $4c33: $84
	inc bc                                           ; $4c34: $03
	ld b, $05                                        ; $4c35: $06 $05
	rrca                                             ; $4c37: $0f
	rrca                                             ; $4c38: $0f
	nop                                              ; $4c39: $00
	nop                                              ; $4c3a: $00
	rst $38                                          ; $4c3b: $ff
	cp c                                             ; $4c3c: $b9
	ld a, [hl]                                       ; $4c3d: $7e
	jp $ff3c                                         ; $4c3e: $c3 $3c $ff


	xor c                                            ; $4c41: $a9
	rst SubAFromHL                                          ; $4c42: $d7
	jp $feff                                         ; $4c43: $c3 $ff $fe


	cp $e6                                           ; $4c46: $fe $e6
	cp $4d                                           ; $4c48: $fe $4d
	rst $38                                          ; $4c4a: $ff
	cp d                                             ; $4c4b: $ba
	rst $38                                          ; $4c4c: $ff
	ld l, l                                          ; $4c4d: $6d
	rst AddAOntoHL                                          ; $4c4e: $ef
	sbc $c7                                          ; $4c4f: $de $c7
	sub h                                            ; $4c51: $94
	ld b, [hl]                                       ; $4c52: $46
	ld b, l                                          ; $4c53: $45
	rst JumpTable                                          ; $4c54: $c7
	rst $38                                          ; $4c55: $ff
	cp $e3                                           ; $4c56: $fe $e3
	db $e3                                           ; $4c58: $e3
	nop                                              ; $4c59: $00
	nop                                              ; $4c5a: $00
	ld b, b                                          ; $4c5b: $40
	ret nz                                           ; $4c5c: $c0

	ld a, e                                          ; $4c5d: $7b
	cp c                                             ; $4c5e: $b9
	ld a, a                                          ; $4c5f: $7f
	cp $96                                           ; $4c60: $fe $96
	ld h, b                                          ; $4c62: $60
	ld d, b                                          ; $4c63: $50
	or b                                             ; $4c64: $b0
	ldh a, [hDisp1_SCY]                                     ; $4c65: $f0 $90
	ld [hl], b                                       ; $4c67: $70
	ld d, b                                          ; $4c68: $50
	jr nz, jr_014_4c8b                               ; $4c69: $20 $20

	reti                                             ; $4c6b: $d9


	add b                                            ; $4c6c: $80
	rst SubAFromDE                                          ; $4c6d: $df
	ret nz                                           ; $4c6e: $c0

	sbc c                                            ; $4c6f: $99
	ld [hl], b                                       ; $4c70: $70
	ldh a, [$c0]                                     ; $4c71: $f0 $c0
	ret nz                                           ; $4c73: $c0

	nop                                              ; $4c74: $00
	nop                                              ; $4c75: $00
	ld c, a                                          ; $4c76: $4f
	and b                                            ; $4c77: $a0
	rst SubAFromDE                                          ; $4c78: $df
	inc c                                            ; $4c79: $0c
	push af                                          ; $4c7a: $f5
	ld l, e                                          ; $4c7b: $6b
	and b                                            ; $4c7c: $a0
	sbc [hl]                                         ; $4c7d: $9e
	db $db                                           ; $4c7e: $db
	ld h, a                                          ; $4c7f: $67
	and b                                            ; $4c80: $a0
	sub b                                            ; $4c81: $90
	pop de                                           ; $4c82: $d1
	rst $38                                          ; $4c83: $ff
	ld e, c                                          ; $4c84: $59
	ld a, a                                          ; $4c85: $7f
	ld [hl-], a                                      ; $4c86: $32
	ld a, $22                                        ; $4c87: $3e $22
	ld a, $37                                        ; $4c89: $3e $37

jr_014_4c8b:
	ccf                                              ; $4c8b: $3f
	ccf                                              ; $4c8c: $3f
	cpl                                              ; $4c8d: $2f
	halt                                             ; $4c8e: $76
	ld e, [hl]                                       ; $4c8f: $5e
	add a                                            ; $4c90: $87
	sbc $ff                                          ; $4c91: $de $ff
	rst SubAFromDE                                          ; $4c93: $df
	db $fc                                           ; $4c94: $fc
	ld b, a                                          ; $4c95: $47
	and b                                            ; $4c96: $a0
	rst FarCall                                          ; $4c97: $f7
	rst SubAFromDE                                          ; $4c98: $df
	ldh a, [$fd]                                     ; $4c99: $f0 $fd
	xor d                                            ; $4c9b: $aa
	nop                                              ; $4c9c: $00
	ei                                               ; $4c9d: $fb
	rst SubAFromDE                                          ; $4c9e: $df
	inc bc                                           ; $4c9f: $03
	adc a                                            ; $4ca0: $8f
	inc b                                            ; $4ca1: $04
	rlca                                             ; $4ca2: $07
	rrca                                             ; $4ca3: $0f
	rrca                                             ; $4ca4: $0f
	inc b                                            ; $4ca5: $04
	rlca                                             ; $4ca6: $07
	ld b, $07                                        ; $4ca7: $06 $07
	inc b                                            ; $4ca9: $04
	rlca                                             ; $4caa: $07
	add hl, bc                                       ; $4cab: $09
	rrca                                             ; $4cac: $0f
	ld e, $1f                                        ; $4cad: $1e $1f
	inc bc                                           ; $4caf: $03
	inc bc                                           ; $4cb0: $03
	db $db                                           ; $4cb1: $db
	ld bc, $03df                                     ; $4cb2: $01 $df $03
	db $fd                                           ; $4cb5: $fd
	rst SubAFromDE                                          ; $4cb6: $df
	rst FarCall                                          ; $4cb7: $f7
	add l                                            ; $4cb8: $85
	inc e                                            ; $4cb9: $1c
	rst $38                                          ; $4cba: $ff
	ld [$28ff], sp                                   ; $4cbb: $08 $ff $28
	rst $38                                          ; $4cbe: $ff
	db $f4                                           ; $4cbf: $f4
	rst $38                                          ; $4cc0: $ff
	ld l, [hl]                                       ; $4cc1: $6e
	rst $38                                          ; $4cc2: $ff
	ret                                              ; $4cc3: $c9


	rst $38                                          ; $4cc4: $ff
	ld e, l                                          ; $4cc5: $5d
	rst FarCall                                          ; $4cc6: $f7
	sbc $b3                                          ; $4cc7: $de $b3
	rst $38                                          ; $4cc9: $ff
	ld hl, $0cff                                     ; $4cca: $21 $ff $0c
	rst FarCall                                          ; $4ccd: $f7
	call c, $8aff                                    ; $4cce: $dc $ff $8a
	rst $38                                          ; $4cd1: $ff
	ld bc, $ddfb                                     ; $4cd2: $01 $fb $dd
	add b                                            ; $4cd5: $80
	sbc c                                            ; $4cd6: $99
	ld b, b                                          ; $4cd7: $40
	ret nz                                           ; $4cd8: $c0

	ld b, b                                          ; $4cd9: $40
	ret nz                                           ; $4cda: $c0

	jr nz, @-$1e                                     ; $4cdb: $20 $e0

	ld [hl], a                                       ; $4cdd: $77
	cp $9e                                           ; $4cde: $fe $9e
	and b                                            ; $4ce0: $a0
	ld a, e                                          ; $4ce1: $7b
	db $fc                                           ; $4ce2: $fc
	rst SubAFromDE                                          ; $4ce3: $df
	ldh [$99], a                                     ; $4ce4: $e0 $99
	ld h, b                                          ; $4ce6: $60
	and b                                            ; $4ce7: $a0
	ldh [$a0], a                                     ; $4ce8: $e0 $a0
	ret nz                                           ; $4cea: $c0

	ret nz                                           ; $4ceb: $c0

	ld [hl], a                                       ; $4cec: $77
	xor [hl]                                         ; $4ced: $ae
	sbc [hl]                                         ; $4cee: $9e
	dec b                                            ; $4cef: $05
	ld a, e                                          ; $4cf0: $7b
	xor b                                            ; $4cf1: $a8
	ld a, a                                          ; $4cf2: $7f
	xor d                                            ; $4cf3: $aa
	sub [hl]                                         ; $4cf4: $96
	dec e                                            ; $4cf5: $1d
	rla                                              ; $4cf6: $17
	ld e, $12                                        ; $4cf7: $1e $12
	dec c                                            ; $4cf9: $0d
	dec c                                            ; $4cfa: $0d
	ld [bc], a                                       ; $4cfb: $02
	inc bc                                           ; $4cfc: $03
	ld [bc], a                                       ; $4cfd: $02
	db $dd                                           ; $4cfe: $dd
	inc bc                                           ; $4cff: $03
	rst SubAFromDE                                          ; $4d00: $df
	ld [bc], a                                       ; $4d01: $02
	add h                                            ; $4d02: $84
	inc bc                                           ; $4d03: $03
	ld b, $05                                        ; $4d04: $06 $05
	rrca                                             ; $4d06: $0f
	rrca                                             ; $4d07: $0f
	nop                                              ; $4d08: $00
	nop                                              ; $4d09: $00
	rst $38                                          ; $4d0a: $ff
	cp c                                             ; $4d0b: $b9
	ld a, [hl]                                       ; $4d0c: $7e
	jp $ff3c                                         ; $4d0d: $c3 $3c $ff


	xor c                                            ; $4d10: $a9
	rst SubAFromHL                                          ; $4d11: $d7
	jp $feff                                         ; $4d12: $c3 $ff $fe


	cp $e6                                           ; $4d15: $fe $e6
	cp $4d                                           ; $4d17: $fe $4d
	rst $38                                          ; $4d19: $ff
	cp d                                             ; $4d1a: $ba
	rst $38                                          ; $4d1b: $ff
	ld l, l                                          ; $4d1c: $6d
	rst AddAOntoHL                                          ; $4d1d: $ef
	sbc $c7                                          ; $4d1e: $de $c7
	sub h                                            ; $4d20: $94
	ld b, [hl]                                       ; $4d21: $46
	ld b, l                                          ; $4d22: $45
	rst JumpTable                                          ; $4d23: $c7
	rst $38                                          ; $4d24: $ff
	cp $e3                                           ; $4d25: $fe $e3
	db $e3                                           ; $4d27: $e3
	nop                                              ; $4d28: $00
	nop                                              ; $4d29: $00
	ld b, b                                          ; $4d2a: $40
	ret nz                                           ; $4d2b: $c0

	ld a, e                                          ; $4d2c: $7b
	cp c                                             ; $4d2d: $b9
	ld a, a                                          ; $4d2e: $7f
	cp $96                                           ; $4d2f: $fe $96
	ld h, b                                          ; $4d31: $60
	ld d, b                                          ; $4d32: $50
	or b                                             ; $4d33: $b0
	ldh a, [hDisp1_SCY]                                     ; $4d34: $f0 $90
	ld [hl], b                                       ; $4d36: $70
	ld d, b                                          ; $4d37: $50
	jr nz, @+$22                                     ; $4d38: $20 $20

	reti                                             ; $4d3a: $d9


	add b                                            ; $4d3b: $80
	rst SubAFromDE                                          ; $4d3c: $df
	ret nz                                           ; $4d3d: $c0

	sbc c                                            ; $4d3e: $99
	ld [hl], b                                       ; $4d3f: $70
	ldh a, [$c0]                                     ; $4d40: $f0 $c0
	ret nz                                           ; $4d42: $c0

	nop                                              ; $4d43: $00
	nop                                              ; $4d44: $00
	sbc d                                            ; $4d45: $9a
	nop                                              ; $4d46: $00
	ei                                               ; $4d47: $fb
	rst SubAFromDE                                          ; $4d48: $df
	inc bc                                           ; $4d49: $03
	add b                                            ; $4d4a: $80
	inc b                                            ; $4d4b: $04
	rlca                                             ; $4d4c: $07
	add hl, bc                                       ; $4d4d: $09
	ld c, $09                                        ; $4d4e: $0e $09
	rrca                                             ; $4d50: $0f
	ld [de], a                                       ; $4d51: $12
	rra                                              ; $4d52: $1f
	inc e                                            ; $4d53: $1c
	rra                                              ; $4d54: $1f
	dec d                                            ; $4d55: $15
	rla                                              ; $4d56: $17
	inc bc                                           ; $4d57: $03
	ld [bc], a                                       ; $4d58: $02
	ld bc, $0503                                     ; $4d59: $01 $03 $05
	ld b, $05                                        ; $4d5c: $06 $05
	rlca                                             ; $4d5e: $07
	dec b                                            ; $4d5f: $05
	rlca                                             ; $4d60: $07
	inc bc                                           ; $4d61: $03
	inc bc                                           ; $4d62: $03
	db $10                                           ; $4d63: $10
	db $10                                           ; $4d64: $10
	ld [$f71c], sp                                   ; $4d65: $08 $1c $f7
	rst $38                                          ; $4d68: $ff
	ld [$ff8c], sp                                   ; $4d69: $08 $8c $ff
	db $fc                                           ; $4d6c: $fc
	inc bc                                           ; $4d6d: $03

jr_014_4d6e:
	cp $fd                                           ; $4d6e: $fe $fd

jr_014_4d70:
	ld c, e                                          ; $4d70: $4b
	cp $a5                                           ; $4d71: $fe $a5
	rst $38                                          ; $4d73: $ff
	and h                                            ; $4d74: $a4
	rst $38                                          ; $4d75: $ff
	or [hl]                                          ; $4d76: $b6
	ld e, e                                          ; $4d77: $5b
	rst $38                                          ; $4d78: $ff
	call $ce77                                       ; $4d79: $cd $77 $ce
	rst $38                                          ; $4d7c: $ff
	call z, $fe7b                                    ; $4d7d: $cc $7b $fe
	sbc h                                            ; $4d80: $9c
	ld sp, $83ff                                     ; $4d81: $31 $ff $83
	ei                                               ; $4d84: $fb
	rst SubAFromDE                                          ; $4d85: $df
	add b                                            ; $4d86: $80
	sub [hl]                                         ; $4d87: $96
	ld b, b                                          ; $4d88: $40
	ret nz                                           ; $4d89: $c0

	ld b, b                                          ; $4d8a: $40
	ret nz                                           ; $4d8b: $c0

	jr nz, jr_014_4d6e                               ; $4d8c: $20 $e0

	jr nz, jr_014_4d70                               ; $4d8e: $20 $e0

	and b                                            ; $4d90: $a0
	ld a, e                                          ; $4d91: $7b
	cp $99                                           ; $4d92: $fe $99
	ld h, b                                          ; $4d94: $60
	ldh [$60], a                                     ; $4d95: $e0 $60
	and b                                            ; $4d97: $a0
	ldh [rAUD4LEN], a                                ; $4d98: $e0 $20
	ld a, e                                          ; $4d9a: $7b

Call_014_4d9b:
	db $fd                                           ; $4d9b: $fd
	ld a, e                                          ; $4d9c: $7b
	cp $7f                                           ; $4d9d: $fe $7f
	or h                                             ; $4d9f: $b4
	ld a, a                                          ; $4da0: $7f
	cp d                                             ; $4da1: $ba
	ld a, e                                          ; $4da2: $7b
	or a                                             ; $4da3: $b7
	sbc [hl]                                         ; $4da4: $9e
	ld b, $7b                                        ; $4da5: $06 $7b
	xor h                                            ; $4da7: $ac
	ret c                                            ; $4da8: $d8

	ld bc, $dffb                                     ; $4da9: $01 $fb $df
	ld bc, $03df                                     ; $4dac: $01 $df $03
	rst $38                                          ; $4daf: $ff
	ld a, a                                          ; $4db0: $7f
	and a                                            ; $4db1: $a7
	add b                                            ; $4db2: $80
	daa                                              ; $4db3: $27
	rst SubAFromDE                                          ; $4db4: $df
	adc l                                            ; $4db5: $8d
	ld a, [$70cf]                                    ; $4db6: $fa $cf $70
	rst $38                                          ; $4db9: $ff
	ld a, e                                          ; $4dba: $7b
	adc a                                            ; $4dbb: $8f
	db $fd                                           ; $4dbc: $fd
	adc a                                            ; $4dbd: $8f
	ld sp, hl                                        ; $4dbe: $f9
	sbc $72                                          ; $4dbf: $de $72
	sbc $72                                          ; $4dc1: $de $72
	cp $22                                           ; $4dc3: $fe $22
	cp $92                                           ; $4dc5: $fe $92
	rst $38                                          ; $4dc7: $ff
	reti                                             ; $4dc8: $d9


	xor a                                            ; $4dc9: $af
	rst $38                                          ; $4dca: $ff
	dec e                                            ; $4dcb: $1d
	rst $38                                          ; $4dcc: $ff
	pop af                                           ; $4dcd: $f1
	rst $38                                          ; $4dce: $ff
	ccf                                              ; $4dcf: $3f
	ccf                                              ; $4dd0: $3f
	and b                                            ; $4dd1: $a0
	rst SubAFromDE                                          ; $4dd2: $df
	ldh [$7b], a                                     ; $4dd3: $e0 $7b
	or e                                             ; $4dd5: $b3
	ld a, a                                          ; $4dd6: $7f
	cp $7f                                           ; $4dd7: $fe $7f
	and d                                            ; $4dd9: $a2
	rst SubAFromDE                                          ; $4dda: $df
	add b                                            ; $4ddb: $80
	pop af                                           ; $4ddc: $f1
	ld [hl], a                                       ; $4ddd: $77
	xor $00                                          ; $4dde: $ee $00
	ld bc, $dffb                                     ; $4de0: $01 $fb $df
	inc bc                                           ; $4de3: $03
	add b                                            ; $4de4: $80
	inc b                                            ; $4de5: $04
	rlca                                             ; $4de6: $07
	add hl, bc                                       ; $4de7: $09
	ld c, $09                                        ; $4de8: $0e $09
	rrca                                             ; $4dea: $0f
	ld [de], a                                       ; $4deb: $12
	rra                                              ; $4dec: $1f
	inc e                                            ; $4ded: $1c
	rra                                              ; $4dee: $1f
	dec d                                            ; $4def: $15
	rla                                              ; $4df0: $17
	inc bc                                           ; $4df1: $03
	ld [bc], a                                       ; $4df2: $02
	ld bc, $0503                                     ; $4df3: $01 $03 $05
	ld b, $05                                        ; $4df6: $06 $05
	rlca                                             ; $4df8: $07
	dec b                                            ; $4df9: $05
	rlca                                             ; $4dfa: $07
	inc bc                                           ; $4dfb: $03
	inc bc                                           ; $4dfc: $03
	db $10                                           ; $4dfd: $10
	db $10                                           ; $4dfe: $10
	ld [$f71c], sp                                   ; $4dff: $08 $1c $f7
	rst $38                                          ; $4e02: $ff
	ld [$ff8c], sp                                   ; $4e03: $08 $8c $ff
	db $fc                                           ; $4e06: $fc
	inc bc                                           ; $4e07: $03

jr_014_4e08:
	cp $fd                                           ; $4e08: $fe $fd

jr_014_4e0a:
	ld c, e                                          ; $4e0a: $4b
	cp $a5                                           ; $4e0b: $fe $a5
	rst $38                                          ; $4e0d: $ff
	and h                                            ; $4e0e: $a4
	rst $38                                          ; $4e0f: $ff
	or [hl]                                          ; $4e10: $b6
	ld e, e                                          ; $4e11: $5b
	rst $38                                          ; $4e12: $ff
	call $ce77                                       ; $4e13: $cd $77 $ce
	rst $38                                          ; $4e16: $ff
	call z, $fe7b                                    ; $4e17: $cc $7b $fe
	sbc h                                            ; $4e1a: $9c
	ld sp, $83ff                                     ; $4e1b: $31 $ff $83
	ei                                               ; $4e1e: $fb
	rst SubAFromDE                                          ; $4e1f: $df
	add b                                            ; $4e20: $80
	sub [hl]                                         ; $4e21: $96
	ld b, b                                          ; $4e22: $40
	ret nz                                           ; $4e23: $c0

	ld b, b                                          ; $4e24: $40
	ret nz                                           ; $4e25: $c0

	jr nz, jr_014_4e08                               ; $4e26: $20 $e0

	jr nz, jr_014_4e0a                               ; $4e28: $20 $e0

	and b                                            ; $4e2a: $a0
	ld a, e                                          ; $4e2b: $7b
	cp $99                                           ; $4e2c: $fe $99
	ld h, b                                          ; $4e2e: $60
	ldh [$60], a                                     ; $4e2f: $e0 $60
	and b                                            ; $4e31: $a0
	ldh [rAUD4LEN], a                                ; $4e32: $e0 $20
	ld a, e                                          ; $4e34: $7b
	db $fd                                           ; $4e35: $fd
	ld a, e                                          ; $4e36: $7b
	cp $7f                                           ; $4e37: $fe $7f
	or h                                             ; $4e39: $b4
	ld a, a                                          ; $4e3a: $7f
	cp d                                             ; $4e3b: $ba
	ld a, e                                          ; $4e3c: $7b
	or a                                             ; $4e3d: $b7
	sbc [hl]                                         ; $4e3e: $9e
	ld b, $7b                                        ; $4e3f: $06 $7b
	xor h                                            ; $4e41: $ac
	sbc [hl]                                         ; $4e42: $9e
	ld bc, $77f1                                     ; $4e43: $01 $f1 $77
	xor $7f                                          ; $4e46: $ee $7f
	and a                                            ; $4e48: $a7
	add b                                            ; $4e49: $80
	daa                                              ; $4e4a: $27
	rst SubAFromDE                                          ; $4e4b: $df
	adc l                                            ; $4e4c: $8d
	ld a, [$70cf]                                    ; $4e4d: $fa $cf $70
	rst $38                                          ; $4e50: $ff
	ld a, e                                          ; $4e51: $7b
	adc a                                            ; $4e52: $8f
	db $fd                                           ; $4e53: $fd
	adc a                                            ; $4e54: $8f
	ld sp, hl                                        ; $4e55: $f9
	sbc [hl]                                         ; $4e56: $9e
	ldh a, [c]                                       ; $4e57: $f2
	ld e, [hl]                                       ; $4e58: $5e
	ld [hl], d                                       ; $4e59: $72
	ld a, h                                          ; $4e5a: $7c
	ld h, h                                          ; $4e5b: $64
	ld a, h                                          ; $4e5c: $7c
	ld h, h                                          ; $4e5d: $64
	ld a, $26                                        ; $4e5e: $3e $26
	dec a                                            ; $4e60: $3d
	ccf                                              ; $4e61: $3f
	rst FarCall                                          ; $4e62: $f7
	rst AddAOntoHL                                          ; $4e63: $ef
	rst JumpTable                                          ; $4e64: $c7
	rst $38                                          ; $4e65: $ff
	ld a, h                                          ; $4e66: $7c
	ld a, h                                          ; $4e67: $7c
	and b                                            ; $4e68: $a0
	rst SubAFromDE                                          ; $4e69: $df
	ldh [$7b], a                                     ; $4e6a: $e0 $7b
	or e                                             ; $4e6c: $b3
	ld a, a                                          ; $4e6d: $7f
	cp $7f                                           ; $4e6e: $fe $7f
	and d                                            ; $4e70: $a2
	rst SubAFromDE                                          ; $4e71: $df
	add b                                            ; $4e72: $80
	pop af                                           ; $4e73: $f1
	ld e, a                                          ; $4e74: $5f
	xor $43                                          ; $4e75: $ee $43
	ld b, b                                          ; $4e77: $40
	ld a, e                                          ; $4e78: $7b
	adc d                                            ; $4e79: $8a
	dec de                                           ; $4e7a: $1b
	ld b, b                                          ; $4e7b: $40
	sbc [hl]                                         ; $4e7c: $9e
	ld bc, $447b                                     ; $4e7d: $01 $7b $44
	ld a, a                                          ; $4e80: $7f
	ld a, $9e                                        ; $4e81: $3e $9e
	ld c, d                                          ; $4e83: $4a
	ld a, e                                          ; $4e84: $7b
	ld b, b                                          ; $4e85: $40
	sbc [hl]                                         ; $4e86: $9e
	sub e                                            ; $4e87: $93
	ld d, a                                          ; $4e88: $57
	ld h, b                                          ; $4e89: $60
	reti                                             ; $4e8a: $d9


	ld bc, $6267                                     ; $4e8b: $01 $67 $62
	rst SubAFromDE                                          ; $4e8e: $df
	inc bc                                           ; $4e8f: $03
	ld b, a                                          ; $4e90: $47
	ld h, b                                          ; $4e91: $60
	adc l                                            ; $4e92: $8d
	sbc $72                                          ; $4e93: $de $72
	sbc $72                                          ; $4e95: $de $72
	cp $22                                           ; $4e97: $fe $22
	cp $92                                           ; $4e99: $fe $92
	rst $38                                          ; $4e9b: $ff
	reti                                             ; $4e9c: $d9


	rst AddAOntoHL                                          ; $4e9d: $ef
	cp a                                             ; $4e9e: $bf
	dec e                                            ; $4e9f: $1d
	ei                                               ; $4ea0: $fb
	pop af                                           ; $4ea1: $f1
	rst $38                                          ; $4ea2: $ff
	ccf                                              ; $4ea3: $3f
	ccf                                              ; $4ea4: $3f
	ld [bc], a                                       ; $4ea5: $02
	ret nz                                           ; $4ea6: $c0

	ld c, $c0                                        ; $4ea7: $0e $c0
	ld [hl], e                                       ; $4ea9: $73
	add b                                            ; $4eaa: $80
	sub a                                            ; $4eab: $97
	rra                                              ; $4eac: $1f
	dec e                                            ; $4ead: $1d
	ccf                                              ; $4eae: $3f
	inc h                                            ; $4eaf: $24
	rra                                              ; $4eb0: $1f
	inc de                                           ; $4eb1: $13
	dec c                                            ; $4eb2: $0d
	dec c                                            ; $4eb3: $0d
	ld d, a                                          ; $4eb4: $57
	add d                                            ; $4eb5: $82
	ld e, e                                          ; $4eb6: $5b
	add b                                            ; $4eb7: $80
	sub d                                            ; $4eb8: $92
	db $dd                                           ; $4eb9: $dd
	inc bc                                           ; $4eba: $03
	cp $83                                           ; $4ebb: $fe $83
	cp $ff                                           ; $4ebd: $fe $ff
	rst $38                                          ; $4ebf: $ff
	add a                                            ; $4ec0: $87
	db $fd                                           ; $4ec1: $fd
	rst GetHLinHL                                          ; $4ec2: $cf
	ld a, c                                          ; $4ec3: $79
	rst GetHLinHL                                          ; $4ec4: $cf
	ld a, c                                          ; $4ec5: $79
	ld a, e                                          ; $4ec6: $7b
	add b                                            ; $4ec7: $80
	sbc h                                            ; $4ec8: $9c
	or d                                             ; $4ec9: $b2
	rst $38                                          ; $4eca: $ff
	sbc c                                            ; $4ecb: $99
	ld e, a                                          ; $4ecc: $5f
	add b                                            ; $4ecd: $80
	halt                                             ; $4ece: $76
	ldh [$97], a                                     ; $4ecf: $e0 $97
	ldh a, [$d0]                                     ; $4ed1: $f0 $d0
	ldh a, [hDisp1_SCY]                                     ; $4ed3: $f0 $90
	ldh [rAUD4LEN], a                                ; $4ed5: $e0 $20
	ret nz                                           ; $4ed7: $c0

	ret nz                                           ; $4ed8: $c0

	ld [hl], $e0                                     ; $4ed9: $36 $e0
	dec bc                                           ; $4edb: $0b
	add b                                            ; $4edc: $80
	sbc [hl]                                         ; $4edd: $9e
	or e                                             ; $4ede: $b3
	or h                                             ; $4edf: $b4
	nop                                              ; $4ee0: $00
	sub e                                            ; $4ee1: $93
	inc bc                                           ; $4ee2: $03
	ld [bc], a                                       ; $4ee3: $02
	dec b                                            ; $4ee4: $05
	rlca                                             ; $4ee5: $07
	rlca                                             ; $4ee6: $07
	dec b                                            ; $4ee7: $05
	rlca                                             ; $4ee8: $07
	ld b, $03                                        ; $4ee9: $06 $03
	ld [bc], a                                       ; $4eeb: $02
	ld bc, $f101                                     ; $4eec: $01 $01 $f1
	ld [hl], a                                       ; $4eef: $77
	xor $80                                          ; $4ef0: $ee $80
	rst $38                                          ; $4ef2: $ff
	db $fc                                           ; $4ef3: $fc
	daa                                              ; $4ef4: $27
	rst SubAFromDE                                          ; $4ef5: $df
	adc l                                            ; $4ef6: $8d
	ld a, [$70cf]                                    ; $4ef7: $fa $cf $70
	rst $38                                          ; $4efa: $ff
	ld a, e                                          ; $4efb: $7b
	adc a                                            ; $4efc: $8f
	db $fd                                           ; $4efd: $fd
	adc a                                            ; $4efe: $8f
	ld sp, hl                                        ; $4eff: $f9
	sbc [hl]                                         ; $4f00: $9e
	ldh a, [c]                                       ; $4f01: $f2
	ld e, [hl]                                       ; $4f02: $5e
	ld [hl], d                                       ; $4f03: $72
	ld a, h                                          ; $4f04: $7c
	ld h, h                                          ; $4f05: $64
	ld a, h                                          ; $4f06: $7c
	ld h, h                                          ; $4f07: $64
	ld a, $26                                        ; $4f08: $3e $26
	dec a                                            ; $4f0a: $3d
	ccf                                              ; $4f0b: $3f
	rst FarCall                                          ; $4f0c: $f7
	rst AddAOntoHL                                          ; $4f0d: $ef
	rst JumpTable                                          ; $4f0e: $c7
	rst $38                                          ; $4f0f: $ff
	ld a, h                                          ; $4f10: $7c
	sub d                                            ; $4f11: $92
	ld a, h                                          ; $4f12: $7c
	and b                                            ; $4f13: $a0
	ldh [$e0], a                                     ; $4f14: $e0 $e0
	ld h, b                                          ; $4f16: $60
	and b                                            ; $4f17: $a0
	ldh [$a0], a                                     ; $4f18: $e0 $a0
	ldh [rLCDC], a                                   ; $4f1a: $e0 $40
	ret nz                                           ; $4f1c: $c0

	add b                                            ; $4f1d: $80
	add b                                            ; $4f1e: $80
	pop af                                           ; $4f1f: $f1
	ld e, a                                          ; $4f20: $5f
	xor $df                                          ; $4f21: $ee $df
	inc bc                                           ; $4f23: $03
	sub e                                            ; $4f24: $93
	inc b                                            ; $4f25: $04
	rlca                                             ; $4f26: $07
	add hl, bc                                       ; $4f27: $09
	ld c, $09                                        ; $4f28: $0e $09
	rrca                                             ; $4f2a: $0f
	ld [de], a                                       ; $4f2b: $12
	rra                                              ; $4f2c: $1f
	inc e                                            ; $4f2d: $1c
	rra                                              ; $4f2e: $1f
	dec d                                            ; $4f2f: $15
	rla                                              ; $4f30: $17
	ld a, e                                          ; $4f31: $7b
	sub h                                            ; $4f32: $94
	ld a, e                                          ; $4f33: $7b
	adc d                                            ; $4f34: $8a
	ld [hl], a                                       ; $4f35: $77
	cp $df                                           ; $4f36: $fe $df
	inc bc                                           ; $4f38: $03
	rst SubAFromDE                                          ; $4f39: $df
	db $10                                           ; $4f3a: $10
	add c                                            ; $4f3b: $81
	ld [$f71c], sp                                   ; $4f3c: $08 $1c $f7
	rst $38                                          ; $4f3f: $ff
	ld [$fcff], sp                                   ; $4f40: $08 $ff $fc
	inc bc                                           ; $4f43: $03
	cp $fd                                           ; $4f44: $fe $fd
	ld c, e                                          ; $4f46: $4b
	cp $a5                                           ; $4f47: $fe $a5
	rst $38                                          ; $4f49: $ff
	and h                                            ; $4f4a: $a4
	rst $38                                          ; $4f4b: $ff
	or [hl]                                          ; $4f4c: $b6
	ld e, e                                          ; $4f4d: $5b
	rst $38                                          ; $4f4e: $ff
	ld bc, $ccff                                     ; $4f4f: $01 $ff $cc
	rst $38                                          ; $4f52: $ff
	adc $ff                                          ; $4f53: $ce $ff
	ld c, d                                          ; $4f55: $4a
	rst $38                                          ; $4f56: $ff
	ld sp, $93ff                                     ; $4f57: $31 $ff $93
	ld d, a                                          ; $4f5a: $57
	ld h, b                                          ; $4f5b: $60
	reti                                             ; $4f5c: $d9


	ld bc, $6267                                     ; $4f5d: $01 $67 $62
	rst SubAFromDE                                          ; $4f60: $df
	inc bc                                           ; $4f61: $03
	ld b, a                                          ; $4f62: $47
	ld h, b                                          ; $4f63: $60

jr_014_4f64:
	adc l                                            ; $4f64: $8d
	sbc $72                                          ; $4f65: $de $72
	sbc $72                                          ; $4f67: $de $72
	cp $22                                           ; $4f69: $fe $22
	cp $92                                           ; $4f6b: $fe $92
	rst $38                                          ; $4f6d: $ff
	reti                                             ; $4f6e: $d9


	rst AddAOntoHL                                          ; $4f6f: $ef
	cp a                                             ; $4f70: $bf
	dec e                                            ; $4f71: $1d
	ei                                               ; $4f72: $fb
	pop af                                           ; $4f73: $f1
	rst $38                                          ; $4f74: $ff
	ccf                                              ; $4f75: $3f
	ccf                                              ; $4f76: $3f
	dec bc                                           ; $4f77: $0b
	and b                                            ; $4f78: $a0
	sbc [hl]                                         ; $4f79: $9e
	add e                                            ; $4f7a: $83
	ld h, a                                          ; $4f7b: $67
	ld d, [hl]                                       ; $4f7c: $56
	ld a, a                                          ; $4f7d: $7f
	ld b, b                                          ; $4f7e: $40
	ld a, a                                          ; $4f7f: $7f
	cp $9c                                           ; $4f80: $fe $9c
	jr nz, jr_014_4f64                               ; $4f82: $20 $e0

	jr nz, jr_014_5001                               ; $4f84: $20 $7b

	ld [hl], $7f                                     ; $4f86: $36 $7f
	cp $9e                                           ; $4f88: $fe $9e
	ld h, b                                          ; $4f8a: $60
	ld [hl], a                                       ; $4f8b: $77
	dec l                                            ; $4f8c: $2d
	sbc [hl]                                         ; $4f8d: $9e
	jr nz, @+$7d                                     ; $4f8e: $20 $7b

	db $fd                                           ; $4f90: $fd
	ld a, e                                          ; $4f91: $7b
	cp $b1                                           ; $4f92: $fe $b1
	nop                                              ; $4f94: $00
	db $fd                                           ; $4f95: $fd
	rst SubAFromDE                                          ; $4f96: $df
	inc bc                                           ; $4f97: $03
	add b                                            ; $4f98: $80
	inc c                                            ; $4f99: $0c
	rrca                                             ; $4f9a: $0f
	inc de                                           ; $4f9b: $13
	rra                                              ; $4f9c: $1f
	inc a                                            ; $4f9d: $3c
	ccf                                              ; $4f9e: $3f
	add hl, bc                                       ; $4f9f: $09
	rrca                                             ; $4fa0: $0f
	ld [de], a                                       ; $4fa1: $12
	rra                                              ; $4fa2: $1f
	inc d                                            ; $4fa3: $14
	rra                                              ; $4fa4: $1f
	add hl, de                                       ; $4fa5: $19
	rra                                              ; $4fa6: $1f
	dec de                                           ; $4fa7: $1b
	ld e, $0f                                        ; $4fa8: $1e $0f
	rrca                                             ; $4faa: $0f
	dec bc                                           ; $4fab: $0b
	ld a, [bc]                                       ; $4fac: $0a
	ld bc, $0103                                     ; $4fad: $01 $03 $01
	inc bc                                           ; $4fb0: $03
	ld [bc], a                                       ; $4fb1: $02
	ld [bc], a                                       ; $4fb2: $02
	ld [$e408], sp                                   ; $4fb3: $08 $08 $e4
	db $ec                                           ; $4fb6: $ec
	rra                                              ; $4fb7: $1f
	adc d                                            ; $4fb8: $8a
	rst $38                                          ; $4fb9: $ff
	ld [$10ff], sp                                   ; $4fba: $08 $ff $10
	rst $38                                          ; $4fbd: $ff

jr_014_4fbe:
	and $ff                                          ; $4fbe: $e6 $ff
	add hl, de                                       ; $4fc0: $19
	rst $38                                          ; $4fc1: $ff
	ld d, h                                          ; $4fc2: $54
	rst $38                                          ; $4fc3: $ff
	call nc, $d6ff                                   ; $4fc4: $d4 $ff $d6
	dec hl                                           ; $4fc7: $2b
	rst SubAFromDE                                          ; $4fc8: $df
	db $ed                                           ; $4fc9: $ed
	ld [hl], a                                       ; $4fca: $77
	adc $ff                                          ; $4fcb: $ce $ff
	call z, $fe7b                                    ; $4fcd: $cc $7b $fe
	sbc h                                            ; $4fd0: $9c
	ld sp, $83fe                                     ; $4fd1: $31 $fe $83
	ei                                               ; $4fd4: $fb
	rst SubAFromDE                                          ; $4fd5: $df
	add b                                            ; $4fd6: $80
	sub h                                            ; $4fd7: $94
	ld b, b                                          ; $4fd8: $40
	ret nz                                           ; $4fd9: $c0

	jr nz, @-$1e                                     ; $4fda: $20 $e0

	jr nz, jr_014_4fbe                               ; $4fdc: $20 $e0

	sub b                                            ; $4fde: $90
	ldh a, [$50]                                     ; $4fdf: $f0 $50
	ldh a, [$30]                                     ; $4fe1: $f0 $30
	sbc $f0                                          ; $4fe3: $de $f0
	add [hl]                                         ; $4fe5: $86
	ld [hl], b                                       ; $4fe6: $70
	or b                                             ; $4fe7: $b0
	ld h, b                                          ; $4fe8: $60
	and b                                            ; $4fe9: $a0
	ld b, b                                          ; $4fea: $40
	ret nz                                           ; $4feb: $c0

	ld b, b                                          ; $4fec: $40
	ret nz                                           ; $4fed: $c0

	add b                                            ; $4fee: $80
	add b                                            ; $4fef: $80
	ld bc, $0201                                     ; $4ff0: $01 $01 $02
	inc bc                                           ; $4ff3: $03
	ld [bc], a                                       ; $4ff4: $02
	inc bc                                           ; $4ff5: $03
	inc b                                            ; $4ff6: $04
	rlca                                             ; $4ff7: $07
	inc c                                            ; $4ff8: $0c
	dec bc                                           ; $4ff9: $0b
	ld c, $0b                                        ; $4ffa: $0e $0b
	inc b                                            ; $4ffc: $04
	rlca                                             ; $4ffd: $07
	inc bc                                           ; $4ffe: $03
	ld a, e                                          ; $4fff: $7b
	db $f4                                           ; $5000: $f4

jr_014_5001:
	sbc $03                                          ; $5001: $de $03
	add d                                            ; $5003: $82
	ld [bc], a                                       ; $5004: $02
	ld bc, $0001                                     ; $5005: $01 $01 $00
	nop                                              ; $5008: $00
	ld bc, $0301                                     ; $5009: $01 $01 $03
	inc bc                                           ; $500c: $03
	nop                                              ; $500d: $00
	nop                                              ; $500e: $00
	rst $38                                          ; $500f: $ff
	rst $38                                          ; $5010: $ff
	add d                                            ; $5011: $82
	rst $38                                          ; $5012: $ff
	ld [bc], a                                       ; $5013: $02
	rst $38                                          ; $5014: $ff
	cp $83                                           ; $5015: $fe $83
	cp $ff                                           ; $5017: $fe $ff
	xor $d7                                          ; $5019: $ee $d7
	db $ed                                           ; $501b: $ed
	rst SubAFromHL                                          ; $501c: $d7
	ld a, h                                          ; $501d: $7c
	rst JumpTable                                          ; $501e: $c7
	jr c, @+$01                                      ; $501f: $38 $ff

	ld a, e                                          ; $5021: $7b
	db $ed                                           ; $5022: $ed
	rst SubAFromDE                                          ; $5023: $df
	rst $38                                          ; $5024: $ff
	ld [hl], a                                       ; $5025: $77
	ei                                               ; $5026: $fb
	ld a, a                                          ; $5027: $7f
	adc c                                            ; $5028: $89
	sbc h                                            ; $5029: $9c
	pop af                                           ; $502a: $f1
	ccf                                              ; $502b: $3f
	ccf                                              ; $502c: $3f
	db $dd                                           ; $502d: $dd
	add b                                            ; $502e: $80
	ld [hl], a                                       ; $502f: $77
	or [hl]                                          ; $5030: $b6
	ld a, a                                          ; $5031: $7f
	and h                                            ; $5032: $a4
	ld a, a                                          ; $5033: $7f
	xor [hl]                                         ; $5034: $ae
	sbc d                                            ; $5035: $9a
	ldh [$a0], a                                     ; $5036: $e0 $a0
	ldh [$e0], a                                     ; $5038: $e0 $e0
	ld b, b                                          ; $503a: $40
	db $dd                                           ; $503b: $dd
	ret nz                                           ; $503c: $c0

	sbc h                                            ; $503d: $9c
	ld b, b                                          ; $503e: $40
	add b                                            ; $503f: $80
	add b                                            ; $5040: $80
	ld l, a                                          ; $5041: $6f
	adc d                                            ; $5042: $8a
	rst $38                                          ; $5043: $ff
	dec d                                            ; $5044: $15
	ld [bc], a                                       ; $5045: $02
	db $fd                                           ; $5046: $fd
	rst SubAFromDE                                          ; $5047: $df
	inc bc                                           ; $5048: $03
	add b                                            ; $5049: $80
	inc c                                            ; $504a: $0c
	rrca                                             ; $504b: $0f
	inc de                                           ; $504c: $13
	rra                                              ; $504d: $1f
	inc a                                            ; $504e: $3c
	ccf                                              ; $504f: $3f
	add hl, bc                                       ; $5050: $09
	rrca                                             ; $5051: $0f
	ld [de], a                                       ; $5052: $12
	rra                                              ; $5053: $1f
	inc d                                            ; $5054: $14
	rra                                              ; $5055: $1f
	add hl, de                                       ; $5056: $19
	rra                                              ; $5057: $1f
	dec de                                           ; $5058: $1b
	ld e, $0f                                        ; $5059: $1e $0f
	rrca                                             ; $505b: $0f
	dec bc                                           ; $505c: $0b
	ld a, [bc]                                       ; $505d: $0a
	ld bc, $0103                                     ; $505e: $01 $03 $01
	inc bc                                           ; $5061: $03
	ld [bc], a                                       ; $5062: $02
	ld [bc], a                                       ; $5063: $02
	ld [$e408], sp                                   ; $5064: $08 $08 $e4
	db $ec                                           ; $5067: $ec
	rra                                              ; $5068: $1f
	adc d                                            ; $5069: $8a
	rst $38                                          ; $506a: $ff
	ld [$10ff], sp                                   ; $506b: $08 $ff $10
	rst $38                                          ; $506e: $ff

jr_014_506f:
	and $ff                                          ; $506f: $e6 $ff
	add hl, de                                       ; $5071: $19
	rst $38                                          ; $5072: $ff
	ld d, h                                          ; $5073: $54
	rst $38                                          ; $5074: $ff
	call nc, $d6ff                                   ; $5075: $d4 $ff $d6
	dec hl                                           ; $5078: $2b
	rst SubAFromDE                                          ; $5079: $df
	db $ed                                           ; $507a: $ed
	ld [hl], a                                       ; $507b: $77
	adc $ff                                          ; $507c: $ce $ff
	call z, $fe7b                                    ; $507e: $cc $7b $fe
	sbc h                                            ; $5081: $9c
	ld sp, $83fe                                     ; $5082: $31 $fe $83
	ei                                               ; $5085: $fb
	rst SubAFromDE                                          ; $5086: $df
	add b                                            ; $5087: $80
	sub h                                            ; $5088: $94
	ld b, b                                          ; $5089: $40
	ret nz                                           ; $508a: $c0

	jr nz, @-$1e                                     ; $508b: $20 $e0

	jr nz, jr_014_506f                               ; $508d: $20 $e0

	sub b                                            ; $508f: $90
	ldh a, [$50]                                     ; $5090: $f0 $50
	ldh a, [$30]                                     ; $5092: $f0 $30
	sbc $f0                                          ; $5094: $de $f0
	add [hl]                                         ; $5096: $86
	ld [hl], b                                       ; $5097: $70
	or b                                             ; $5098: $b0
	ld h, b                                          ; $5099: $60
	and b                                            ; $509a: $a0
	ld b, b                                          ; $509b: $40
	ret nz                                           ; $509c: $c0

	ld b, b                                          ; $509d: $40
	ret nz                                           ; $509e: $c0

	add b                                            ; $509f: $80
	add b                                            ; $50a0: $80
	ld bc, $0201                                     ; $50a1: $01 $01 $02
	inc bc                                           ; $50a4: $03
	ld [bc], a                                       ; $50a5: $02
	inc bc                                           ; $50a6: $03
	inc b                                            ; $50a7: $04
	rlca                                             ; $50a8: $07
	inc c                                            ; $50a9: $0c
	dec bc                                           ; $50aa: $0b
	ld c, $0b                                        ; $50ab: $0e $0b
	inc b                                            ; $50ad: $04
	rlca                                             ; $50ae: $07
	inc bc                                           ; $50af: $03
	ld a, e                                          ; $50b0: $7b
	db $f4                                           ; $50b1: $f4
	sbc $03                                          ; $50b2: $de $03
	add d                                            ; $50b4: $82
	ld [bc], a                                       ; $50b5: $02
	ld bc, $0001                                     ; $50b6: $01 $01 $00
	nop                                              ; $50b9: $00
	ld bc, $0301                                     ; $50ba: $01 $01 $03
	inc bc                                           ; $50bd: $03
	nop                                              ; $50be: $00
	nop                                              ; $50bf: $00
	rst $38                                          ; $50c0: $ff
	rst $38                                          ; $50c1: $ff
	add d                                            ; $50c2: $82
	rst $38                                          ; $50c3: $ff
	ld [bc], a                                       ; $50c4: $02
	rst $38                                          ; $50c5: $ff
	cp $83                                           ; $50c6: $fe $83
	cp $ff                                           ; $50c8: $fe $ff
	xor $d7                                          ; $50ca: $ee $d7
	db $ed                                           ; $50cc: $ed
	rst SubAFromHL                                          ; $50cd: $d7
	ld a, h                                          ; $50ce: $7c
	rst JumpTable                                          ; $50cf: $c7
	jr c, @+$01                                      ; $50d0: $38 $ff

	ld a, e                                          ; $50d2: $7b
	db $ed                                           ; $50d3: $ed
	rst SubAFromDE                                          ; $50d4: $df
	rst $38                                          ; $50d5: $ff
	ld [hl], a                                       ; $50d6: $77
	ei                                               ; $50d7: $fb
	ld a, a                                          ; $50d8: $7f
	adc c                                            ; $50d9: $89
	sbc h                                            ; $50da: $9c
	pop af                                           ; $50db: $f1
	ccf                                              ; $50dc: $3f
	ccf                                              ; $50dd: $3f
	db $dd                                           ; $50de: $dd
	add b                                            ; $50df: $80
	ld [hl], a                                       ; $50e0: $77
	or [hl]                                          ; $50e1: $b6
	ld a, a                                          ; $50e2: $7f
	and h                                            ; $50e3: $a4
	ld a, a                                          ; $50e4: $7f
	xor [hl]                                         ; $50e5: $ae
	sbc d                                            ; $50e6: $9a
	ldh [$a0], a                                     ; $50e7: $e0 $a0
	ldh [$e0], a                                     ; $50e9: $e0 $e0
	ld b, b                                          ; $50eb: $40
	db $dd                                           ; $50ec: $dd
	ret nz                                           ; $50ed: $c0

	sbc h                                            ; $50ee: $9c
	ld b, b                                          ; $50ef: $40

Call_014_50f0:
	add b                                            ; $50f0: $80
	add b                                            ; $50f1: $80
	ld l, a                                          ; $50f2: $6f
	adc d                                            ; $50f3: $8a
	ld [hl], a                                       ; $50f4: $77
	cp d                                             ; $50f5: $ba
	ld l, a                                          ; $50f6: $6f
	sbc [hl]                                         ; $50f7: $9e
	ld [hl], a                                       ; $50f8: $77
	cp $6f                                           ; $50f9: $fe $6f
	db $f4                                           ; $50fb: $f4
	ld h, a                                          ; $50fc: $67
	and b                                            ; $50fd: $a0
	ld [hl], a                                       ; $50fe: $77
	db $e4                                           ; $50ff: $e4
	ld [hl], a                                       ; $5100: $77
	and b                                            ; $5101: $a0
	sub b                                            ; $5102: $90
	ld b, c                                          ; $5103: $41
	rst $38                                          ; $5104: $ff
	jr c, @+$01                                      ; $5105: $38 $ff

	rra                                              ; $5107: $1f

jr_014_5108:
	push af                                          ; $5108: $f5
	rra                                              ; $5109: $1f
	rst $38                                          ; $510a: $ff
	scf                                              ; $510b: $37
	db $eb                                           ; $510c: $eb
	ld [hl], a                                       ; $510d: $77
	db $eb                                           ; $510e: $eb
	cp [hl]                                          ; $510f: $be
	db $e3                                           ; $5110: $e3
	inc e                                            ; $5111: $1c
	ld e, a                                          ; $5112: $5f
	and b                                            ; $5113: $a0
	adc h                                            ; $5114: $8c
	ld hl, sp-$01                                    ; $5115: $f8 $ff
	adc a                                            ; $5117: $8f
	db $fc                                           ; $5118: $fc
	db $fc                                           ; $5119: $fc
	cp a                                             ; $511a: $bf
	and c                                            ; $511b: $a1
	ld a, a                                          ; $511c: $7f
	pop af                                           ; $511d: $f1
	ccf                                              ; $511e: $3f
	jp hl                                            ; $511f: $e9


	ld a, $ea                                        ; $5120: $3e $ea
	inc e                                            ; $5122: $1c
	db $fc                                           ; $5123: $fc
	jr nc, @-$0e                                     ; $5124: $30 $f0

	jr nz, jr_014_5108                               ; $5126: $20 $e0

	ld a, e                                          ; $5128: $7b
	and l                                            ; $5129: $a5
	ld h, e                                          ; $512a: $63
	and b                                            ; $512b: $a0
	rst SubAFromDE                                          ; $512c: $df
	add b                                            ; $512d: $80
	rst SubAFromDE                                          ; $512e: $df
	ret nz                                           ; $512f: $c0

	ei                                               ; $5130: $fb
	rst SubAFromDE                                          ; $5131: $df
	ret nz                                           ; $5132: $c0

	ld a, a                                          ; $5133: $7f
	db $e4                                           ; $5134: $e4
	add a                                            ; $5135: $87
	ret z                                            ; $5136: $c8

	ld hl, sp+$3c                                    ; $5137: $f8 $3c
	db $fc                                           ; $5139: $fc
	sub b                                            ; $513a: $90
	ldh a, [rOBP0]                                   ; $513b: $f0 $48
	ld hl, sp+$28                                    ; $513d: $f8 $28
	ld hl, sp-$68                                    ; $513f: $f8 $98
	ld hl, sp-$28                                    ; $5141: $f8 $d8
	ld a, b                                          ; $5143: $78
	ldh a, [$f0]                                     ; $5144: $f0 $f0
	call c, $9e5c                                    ; $5146: $dc $5c $9e
	jp nc, $e2be                                     ; $5149: $d2 $be $e2

	ld a, a                                          ; $514c: $7f
	ld h, c                                          ; $514d: $61
	cpl                                              ; $514e: $2f
	ldh [$df], a                                     ; $514f: $e0 $df
	db $fc                                           ; $5151: $fc
	sub h                                            ; $5152: $94
	sbc $52                                          ; $5153: $de $52
	cp [hl]                                          ; $5155: $be
	ldh [c], a                                       ; $5156: $e2
	cp a                                             ; $5157: $bf
	pop hl                                           ; $5158: $e1
	ld a, a                                          ; $5159: $7f
	ld h, c                                          ; $515a: $61
	cp a                                             ; $515b: $bf
	or c                                             ; $515c: $b1
	ld a, a                                          ; $515d: $7f
	ld h, e                                          ; $515e: $63
	and d                                            ; $515f: $a2
	ld [hl], a                                       ; $5160: $77
	and h                                            ; $5161: $a4
	ld b, a                                          ; $5162: $47
	and b                                            ; $5163: $a0
	ld a, a                                          ; $5164: $7f
	ld d, h                                          ; $5165: $54
	sbc e                                            ; $5166: $9b
	rlca                                             ; $5167: $07
	inc b                                            ; $5168: $04
	rlca                                             ; $5169: $07
	inc b                                            ; $516a: $04
	halt                                             ; $516b: $76
	add sp, $27                                      ; $516c: $e8 $27
	ld b, b                                          ; $516e: $40
	sub d                                            ; $516f: $92
	pop bc                                           ; $5170: $c1
	ld a, a                                          ; $5171: $7f
	ld b, b                                          ; $5172: $40
	rst $38                                          ; $5173: $ff
	ld a, a                                          ; $5174: $7f
	pop bc                                           ; $5175: $c1
	ld a, a                                          ; $5176: $7f
	rst $38                                          ; $5177: $ff
	ld [hl], a                                       ; $5178: $77
	db $eb                                           ; $5179: $eb
	or a                                             ; $517a: $b7
	db $eb                                           ; $517b: $eb
	ld a, $43                                        ; $517c: $3e $43
	ld b, b                                          ; $517e: $40
	ld l, [hl]                                       ; $517f: $6e
	ldh [c], a                                       ; $5180: $e2
	ld a, a                                          ; $5181: $7f
	add h                                            ; $5182: $84
	ld a, a                                          ; $5183: $7f
	sbc h                                            ; $5184: $9c
	sub l                                            ; $5185: $95
	ld a, [hl]                                       ; $5186: $7e
	jp nc, $e27e                                     ; $5187: $d2 $7e $e2

	db $fc                                           ; $518a: $fc
	call nz, $d878                                   ; $518b: $c4 $78 $d8
	ldh [$e0], a                                     ; $518e: $e0 $e0
	ld b, a                                          ; $5190: $47
	ld b, b                                          ; $5191: $40
	ld [hl], a                                       ; $5192: $77
	or [hl]                                          ; $5193: $b6
	halt                                             ; $5194: $76
	ld a, h                                          ; $5195: $7c
	ld a, a                                          ; $5196: $7f
	cp $7e                                           ; $5197: $fe $7e
	ld e, $9c                                        ; $5199: $1e $9c
	ld a, [bc]                                       ; $519b: $0a
	rrca                                             ; $519c: $0f
	inc c                                            ; $519d: $0c
	sbc $0f                                          ; $519e: $de $0f
	adc l                                            ; $51a0: $8d
	ld c, $0d                                        ; $51a1: $0e $0d
	ld e, $13                                        ; $51a3: $1e $13
	ld a, $23                                        ; $51a5: $3e $23
	ld e, $17                                        ; $51a7: $1e $17
	dec e                                            ; $51a9: $1d
	rra                                              ; $51aa: $1f
	db $10                                           ; $51ab: $10
	rra                                              ; $51ac: $1f
	ld [$080f], sp                                   ; $51ad: $08 $0f $08
	rrca                                             ; $51b0: $0f
	ld b, $07                                        ; $51b1: $06 $07
	ld l, [hl]                                       ; $51b3: $6e
	ld l, [hl]                                       ; $51b4: $6e
	ccf                                              ; $51b5: $3f
	add b                                            ; $51b6: $80
	rst SubAFromDE                                          ; $51b7: $df
	db $10                                           ; $51b8: $10
	sbc h                                            ; $51b9: $9c
	daa                                              ; $51ba: $27
	scf                                              ; $51bb: $37
	ld hl, sp+$7a                                    ; $51bc: $f8 $7a
	ld [bc], a                                       ; $51be: $02
	ld a, l                                          ; $51bf: $7d
	cp $8f                                           ; $51c0: $fe $8f
	ld h, a                                          ; $51c2: $67
	rst $38                                          ; $51c3: $ff
	sbc b                                            ; $51c4: $98
	rst $38                                          ; $51c5: $ff
	ld a, [hl+]                                      ; $51c6: $2a
	rst $38                                          ; $51c7: $ff
	dec hl                                           ; $51c8: $2b
	rst $38                                          ; $51c9: $ff
	ld l, e                                          ; $51ca: $6b
	call nc, $b7fb                                   ; $51cb: $d4 $fb $b7
	xor $73                                          ; $51ce: $ee $73
	rst $38                                          ; $51d0: $ff
	inc sp                                           ; $51d1: $33
	ld a, e                                          ; $51d2: $7b
	cp $9c                                           ; $51d3: $fe $9c
	adc h                                            ; $51d5: $8c
	ld a, a                                          ; $51d6: $7f
	ret                                              ; $51d7: $c9


	halt                                             ; $51d8: $76
	and b                                            ; $51d9: $a0
	ld [hl], a                                       ; $51da: $77
	ld h, b                                          ; $51db: $60
	rst SubAFromDE                                          ; $51dc: $df
	rst $38                                          ; $51dd: $ff
	ld a, a                                          ; $51de: $7f
	ld h, d                                          ; $51df: $62
	ld a, [hl]                                       ; $51e0: $7e
	sbc [hl]                                         ; $51e1: $9e
	inc bc                                           ; $51e2: $03
	ld h, b                                          ; $51e3: $60
	ld b, e                                          ; $51e4: $43
	ld h, b                                          ; $51e5: $60
	inc sp                                           ; $51e6: $33
	and b                                            ; $51e7: $a0
	sbc [hl]                                         ; $51e8: $9e
	add h                                            ; $51e9: $84
	ld a, e                                          ; $51ea: $7b
	and h                                            ; $51eb: $a4
	ld a, a                                          ; $51ec: $7f
	sbc [hl]                                         ; $51ed: $9e
	sbc [hl]                                         ; $51ee: $9e
	ld d, d                                          ; $51ef: $52
	ld l, a                                          ; $51f0: $6f
	and b                                            ; $51f1: $a0
	ld hl, $9ae0                                     ; $51f2: $21 $e0 $9a
	rst SubAFromBC                                          ; $51f5: $e7
	rst $38                                          ; $51f6: $ff
	rst JumpTable                                          ; $51f7: $c7
	ld a, h                                          ; $51f8: $7c
	ld a, h                                          ; $51f9: $7c
	add hl, bc                                       ; $51fa: $09
	ld h, b                                          ; $51fb: $60
	sbc [hl]                                         ; $51fc: $9e
	or e                                             ; $51fd: $b3
	ld a, [hl+]                                      ; $51fe: $2a
	ld b, b                                          ; $51ff: $40
	sub [hl]                                         ; $5200: $96
	ld [hl], b                                       ; $5201: $70
	ret nc                                           ; $5202: $d0

	ret nc                                           ; $5203: $d0

	add b                                            ; $5204: $80
	ret nz                                           ; $5205: $c0

	add b                                            ; $5206: $80
	ret nz                                           ; $5207: $c0

	ld b, b                                          ; $5208: $40
	ld b, b                                          ; $5209: $40
	dec e                                            ; $520a: $1d
	ld h, b                                          ; $520b: $60
	ld l, a                                          ; $520c: $6f
	nop                                              ; $520d: $00
	or $7f                                           ; $520e: $f6 $7f
	ld c, h                                          ; $5210: $4c
	sub h                                            ; $5211: $94
	ld b, h                                          ; $5212: $44
	jr z, jr_014_5215                                ; $5213: $28 $00

jr_014_5215:
	stop                                             ; $5215: $10 $00
	jr z, jr_014_5219                                ; $5217: $28 $00

jr_014_5219:
	nop                                              ; $5219: $00
	ld b, h                                          ; $521a: $44
	nop                                              ; $521b: $00
	ld [bc], a                                       ; $521c: $02
	ldh a, [$9c]                                     ; $521d: $f0 $9c
	ld [$0800], sp                                   ; $521f: $08 $00 $08
	ld a, e                                          ; $5222: $7b
	db $fd                                           ; $5223: $fd
	sbc h                                            ; $5224: $9c
	nop                                              ; $5225: $00
	ld a, $41                                        ; $5226: $3e $41
	ld [hl], a                                       ; $5228: $77
	ld a, [$f277]                                    ; $5229: $fa $77 $f2
	ldh a, [c]                                       ; $522c: $f2
	ld a, a                                          ; $522d: $7f
	rst JumpTable                                          ; $522e: $c7
	sub h                                            ; $522f: $94
	ld [$0104], sp                              ; $5230: $08 $04 $01
	ld [bc], a                                       ; $5233: $02
	nop                                              ; $5234: $00
	ld bc, $0204                                     ; $5235: $01 $04 $02
	nop                                              ; $5238: $00
	inc b                                            ; $5239: $04
	ld bc, $e27b                                     ; $523a: $01 $7b $e2
	ld a, a                                          ; $523d: $7f
	ldh a, [rBGP]                                    ; $523e: $f0 $47
	ldh [$9d], a                                     ; $5240: $e0 $9d
	jr nz, jr_014_5284                               ; $5242: $20 $40

	ld a, e                                          ; $5244: $7b
	sbc l                                            ; $5245: $9d
	sub a                                            ; $5246: $97
	nop                                              ; $5247: $00
	ld b, b                                          ; $5248: $40
	add b                                            ; $5249: $80
	nop                                              ; $524a: $00
	ld b, b                                          ; $524b: $40
	nop                                              ; $524c: $00
	nop                                              ; $524d: $00
	jr nz, jr_014_5293                               ; $524e: $20 $43

	ldh [$03], a                                     ; $5250: $e0 $03
	add b                                            ; $5252: $80
	inc bc                                           ; $5253: $03
	add b                                            ; $5254: $80
	inc bc                                           ; $5255: $03
	add b                                            ; $5256: $80
	scf                                              ; $5257: $37
	add b                                            ; $5258: $80
	rst JumpTable                                          ; $5259: $c7
	nop                                              ; $525a: $00
	db $fd                                           ; $525b: $fd
	rst SubAFromDE                                          ; $525c: $df
	inc bc                                           ; $525d: $03
	add b                                            ; $525e: $80
	inc c                                            ; $525f: $0c
	rrca                                             ; $5260: $0f
	inc de                                           ; $5261: $13
	rra                                              ; $5262: $1f
	inc a                                            ; $5263: $3c
	ccf                                              ; $5264: $3f
	add hl, bc                                       ; $5265: $09
	rrca                                             ; $5266: $0f
	ld [de], a                                       ; $5267: $12
	rra                                              ; $5268: $1f
	inc d                                            ; $5269: $14
	rra                                              ; $526a: $1f
	add hl, de                                       ; $526b: $19
	rra                                              ; $526c: $1f
	dec de                                           ; $526d: $1b
	ld e, $0f                                        ; $526e: $1e $0f
	ld c, $0b                                        ; $5270: $0e $0b
	dec bc                                           ; $5272: $0b
	ld bc, $0103                                     ; $5273: $01 $03 $01
	inc bc                                           ; $5276: $03
	ld [bc], a                                       ; $5277: $02
	ld [bc], a                                       ; $5278: $02
	ld [$e408], sp                                   ; $5279: $08 $08 $e4
	db $ec                                           ; $527c: $ec
	rra                                              ; $527d: $1f
	add h                                            ; $527e: $84
	rst $38                                          ; $527f: $ff
	ld [$10ff], sp                                   ; $5280: $08 $ff $10
	rst $38                                          ; $5283: $ff

jr_014_5284:
	and $ff                                          ; $5284: $e6 $ff
	add hl, de                                       ; $5286: $19
	rst $38                                          ; $5287: $ff
	ld d, h                                          ; $5288: $54
	rst $38                                          ; $5289: $ff
	call nc, $d6ff                                   ; $528a: $d4 $ff $d6
	dec hl                                           ; $528d: $2b
	rst SubAFromDE                                          ; $528e: $df
	ld hl, $ccff                                     ; $528f: $21 $ff $cc
	rst $38                                          ; $5292: $ff

jr_014_5293:
	adc $ff                                          ; $5293: $ce $ff
	ld c, d                                          ; $5295: $4a
	rst $38                                          ; $5296: $ff
	ld sp, $83fe                                     ; $5297: $31 $fe $83
	ei                                               ; $529a: $fb
	rst SubAFromDE                                          ; $529b: $df
	add b                                            ; $529c: $80
	sub h                                            ; $529d: $94
	ld b, b                                          ; $529e: $40
	ret nz                                           ; $529f: $c0

	jr nz, @-$1e                                     ; $52a0: $20 $e0

	jr nz, jr_014_5284                               ; $52a2: $20 $e0

	sub b                                            ; $52a4: $90
	ldh a, [$50]                                     ; $52a5: $f0 $50
	ldh a, [$30]                                     ; $52a7: $f0 $30
	sbc $f0                                          ; $52a9: $de $f0
	sub l                                            ; $52ab: $95
	ld [hl], b                                       ; $52ac: $70
	or b                                             ; $52ad: $b0
	ld h, b                                          ; $52ae: $60
	and b                                            ; $52af: $a0
	ld b, b                                          ; $52b0: $40
	ret nz                                           ; $52b1: $c0

	ld b, b                                          ; $52b2: $40
	ret nz                                           ; $52b3: $c0

	add b                                            ; $52b4: $80
	add b                                            ; $52b5: $80
	inc bc                                           ; $52b6: $03
	and b                                            ; $52b7: $a0
	rrca                                             ; $52b8: $0f
	and b                                            ; $52b9: $a0
	sbc [hl]                                         ; $52ba: $9e
	sub e                                            ; $52bb: $93
	rlca                                             ; $52bc: $07
	and b                                            ; $52bd: $a0
	rst SubAFromDE                                          ; $52be: $df
	ld bc, $0292                                     ; $52bf: $01 $92 $02
	inc bc                                           ; $52c2: $03
	ld [bc], a                                       ; $52c3: $02
	inc bc                                           ; $52c4: $03
	inc b                                            ; $52c5: $04
	rlca                                             ; $52c6: $07
	inc c                                            ; $52c7: $0c
	dec bc                                           ; $52c8: $0b
	ld c, $0b                                        ; $52c9: $0e $0b
	inc b                                            ; $52cb: $04
	rlca                                             ; $52cc: $07
	inc bc                                           ; $52cd: $03
	ld a, e                                          ; $52ce: $7b
	db $f4                                           ; $52cf: $f4
	sbc $03                                          ; $52d0: $de $03
	add d                                            ; $52d2: $82
	ld [bc], a                                       ; $52d3: $02
	ld bc, $0001                                     ; $52d4: $01 $01 $00
	nop                                              ; $52d7: $00
	ld bc, $0301                                     ; $52d8: $01 $01 $03
	inc bc                                           ; $52db: $03
	nop                                              ; $52dc: $00
	nop                                              ; $52dd: $00
	rst $38                                          ; $52de: $ff
	rst $38                                          ; $52df: $ff
	add d                                            ; $52e0: $82
	rst $38                                          ; $52e1: $ff
	ld [bc], a                                       ; $52e2: $02
	rst $38                                          ; $52e3: $ff
	cp $83                                           ; $52e4: $fe $83
	cp $ff                                           ; $52e6: $fe $ff
	xor $d7                                          ; $52e8: $ee $d7
	db $ed                                           ; $52ea: $ed
	rst SubAFromHL                                          ; $52eb: $d7
	ld a, h                                          ; $52ec: $7c
	rst JumpTable                                          ; $52ed: $c7
	jr c, @+$01                                      ; $52ee: $38 $ff

	ld a, e                                          ; $52f0: $7b
	db $ed                                           ; $52f1: $ed
	rst SubAFromDE                                          ; $52f2: $df
	rst $38                                          ; $52f3: $ff
	ld [hl], a                                       ; $52f4: $77
	ei                                               ; $52f5: $fb
	ld a, a                                          ; $52f6: $7f
	adc c                                            ; $52f7: $89
	sbc h                                            ; $52f8: $9c
	pop af                                           ; $52f9: $f1
	ccf                                              ; $52fa: $3f
	ccf                                              ; $52fb: $3f
	db $dd                                           ; $52fc: $dd
	add b                                            ; $52fd: $80
	ld [hl], a                                       ; $52fe: $77
	or [hl]                                          ; $52ff: $b6
	ld a, a                                          ; $5300: $7f
	and h                                            ; $5301: $a4
	ld a, a                                          ; $5302: $7f
	xor [hl]                                         ; $5303: $ae
	sbc d                                            ; $5304: $9a
	ldh [$a0], a                                     ; $5305: $e0 $a0
	ldh [$e0], a                                     ; $5307: $e0 $e0
	ld b, b                                          ; $5309: $40
	db $dd                                           ; $530a: $dd
	ret nz                                           ; $530b: $c0

	sbc [hl]                                         ; $530c: $9e
	ld b, b                                          ; $530d: $40
	ld l, a                                          ; $530e: $6f
	ld c, b                                          ; $530f: $48
	ld [hl], a                                       ; $5310: $77
	ld a, [$a01f]                                    ; $5311: $fa $1f $a0
	ld [hl], a                                       ; $5314: $77
	db $e4                                           ; $5315: $e4
	inc de                                           ; $5316: $13
	and b                                            ; $5317: $a0
	sbc d                                            ; $5318: $9a
	rst SubAFromBC                                          ; $5319: $e7
	rst $38                                          ; $531a: $ff
	rst JumpTable                                          ; $531b: $c7
	ld a, h                                          ; $531c: $7c
	ld a, h                                          ; $531d: $7c
	rlca                                             ; $531e: $07
	and b                                            ; $531f: $a0
	sbc d                                            ; $5320: $9a
	nop                                              ; $5321: $00
	ei                                               ; $5322: $fb
	sub a                                            ; $5323: $97
	rla                                              ; $5324: $17
	rra                                              ; $5325: $1f
	ld [$050f], sp                                   ; $5326: $08 $0f $05
	rlca                                             ; $5329: $07
	ld a, [bc]                                       ; $532a: $0a
	rrca                                             ; $532b: $0f
	ld [hl], a                                       ; $532c: $77
	cp $7f                                           ; $532d: $fe $7f
	ld hl, sp-$22                                    ; $532f: $f8 $de
	inc bc                                           ; $5331: $03
	sbc h                                            ; $5332: $9c
	ld [bc], a                                       ; $5333: $02
	inc bc                                           ; $5334: $03
	ld [bc], a                                       ; $5335: $02
	db $db                                           ; $5336: $db
	ld bc, $08df                                     ; $5337: $01 $df $08
	adc b                                            ; $533a: $88
	inc b                                            ; $533b: $04
	inc c                                            ; $533c: $0c
	ei                                               ; $533d: $fb

jr_014_533e:
	rst $38                                          ; $533e: $ff
	inc b                                            ; $533f: $04

jr_014_5340:
	rst $38                                          ; $5340: $ff
	call c, $22ff                                    ; $5341: $dc $ff $22
	rst $38                                          ; $5344: $ff
	ld c, c                                          ; $5345: $49
	rst $38                                          ; $5346: $ff
	and h                                            ; $5347: $a4
	rst $38                                          ; $5348: $ff
	or h                                             ; $5349: $b4
	rst SubAFromDE                                          ; $534a: $df
	or [hl]                                          ; $534b: $b6
	ld e, e                                          ; $534c: $5b
	rst $38                                          ; $534d: $ff
	rst GetHLinHL                                          ; $534e: $cf
	ld [hl], a                                       ; $534f: $77
	call z, Call_014_77ff                            ; $5350: $cc $ff $77
	cp $9c                                           ; $5353: $fe $9c
	ld sp, $83ff                                     ; $5355: $31 $ff $83
	ei                                               ; $5358: $fb
	rst SubAFromDE                                          ; $5359: $df
	ret nz                                           ; $535a: $c0

	sbc b                                            ; $535b: $98
	jr nz, jr_014_533e                               ; $535c: $20 $e0

	jr nz, jr_014_5340                               ; $535e: $20 $e0

	db $10                                           ; $5360: $10
	ldh a, [hDisp1_SCY]                                     ; $5361: $f0 $90
	ld [hl], e                                       ; $5363: $73
	cp $9b                                           ; $5364: $fe $9b
	ld d, b                                          ; $5366: $50
	ldh a, [$e0]                                     ; $5367: $f0 $e0
	and b                                            ; $5369: $a0
	ld [hl], a                                       ; $536a: $77
	cp $9e                                           ; $536b: $fe $9e
	ld b, b                                          ; $536d: $40
	sbc $c0                                          ; $536e: $de $c0
	ld a, a                                          ; $5370: $7f
	or a                                             ; $5371: $b7
	sbc [hl]                                         ; $5372: $9e
	inc b                                            ; $5373: $04
	sbc $07                                          ; $5374: $de $07
	sub a                                            ; $5376: $97
	rrca                                             ; $5377: $0f
	add hl, bc                                       ; $5378: $09
	dec bc                                           ; $5379: $0b
	rrca                                             ; $537a: $0f
	ld c, $0b                                        ; $537b: $0e $0b
	ld b, $07                                        ; $537d: $06 $07
	db $dd                                           ; $537f: $dd
	ld bc, $dff9                                     ; $5380: $01 $f9 $df
	ld bc, $03df                                     ; $5383: $01 $df $03
	rst $38                                          ; $5386: $ff
	sbc b                                            ; $5387: $98
	db $fc                                           ; $5388: $fc
	rst $38                                          ; $5389: $ff
	add d                                            ; $538a: $82
	rst $38                                          ; $538b: $ff
	inc sp                                           ; $538c: $33
	rst $38                                          ; $538d: $ff
	ld c, e                                          ; $538e: $4b
	sbc $ff                                          ; $538f: $de $ff
	adc b                                            ; $5391: $88
	add h                                            ; $5392: $84
	rst $38                                          ; $5393: $ff
	adc $7b                                          ; $5394: $ce $7b
	rst GetHLinHL                                          ; $5396: $cf
	ld a, c                                          ; $5397: $79
	rst $38                                          ; $5398: $ff
	ld sp, $b2fe                                     ; $5399: $31 $fe $b2
	rst $38                                          ; $539c: $ff
	rst $38                                          ; $539d: $ff
	db $db                                           ; $539e: $db
	rst $38                                          ; $539f: $ff
	xor l                                            ; $53a0: $ad
	rst $38                                          ; $53a1: $ff
	dec de                                           ; $53a2: $1b
	rst $38                                          ; $53a3: $ff
	pop af                                           ; $53a4: $f1
	rst $38                                          ; $53a5: $ff
	ccf                                              ; $53a6: $3f
	ccf                                              ; $53a7: $3f
	ld b, b                                          ; $53a8: $40
	ld a, e                                          ; $53a9: $7b
	and [hl]                                         ; $53aa: $a6
	sbc $e0                                          ; $53ab: $de $e0
	sbc [hl]                                         ; $53ad: $9e
	jr nz, jr_014_5427                               ; $53ae: $20 $77

	xor a                                            ; $53b0: $af
	sbc [hl]                                         ; $53b1: $9e
	ld h, b                                          ; $53b2: $60
	ld [hl], e                                       ; $53b3: $73
	xor [hl]                                         ; $53b4: $ae
	rst SubAFromDE                                          ; $53b5: $df
	add b                                            ; $53b6: $80
	ld sp, hl                                        ; $53b7: $f9
	ld [hl], a                                       ; $53b8: $77
	or $56                                           ; $53b9: $f6 $56
	ld bc, $97fb                                     ; $53bb: $01 $fb $97
	rla                                              ; $53be: $17
	rra                                              ; $53bf: $1f
	ld [$050f], sp                                   ; $53c0: $08 $0f $05
	rlca                                             ; $53c3: $07
	ld a, [bc]                                       ; $53c4: $0a
	rrca                                             ; $53c5: $0f
	ld [hl], a                                       ; $53c6: $77
	cp $7f                                           ; $53c7: $fe $7f
	ld hl, sp-$22                                    ; $53c9: $f8 $de
	inc bc                                           ; $53cb: $03
	sbc h                                            ; $53cc: $9c
	ld [bc], a                                       ; $53cd: $02
	inc bc                                           ; $53ce: $03
	ld [bc], a                                       ; $53cf: $02
	db $db                                           ; $53d0: $db
	ld bc, $08df                                     ; $53d1: $01 $df $08
	adc b                                            ; $53d4: $88
	inc b                                            ; $53d5: $04
	inc c                                            ; $53d6: $0c
	ei                                               ; $53d7: $fb

jr_014_53d8:
	rst $38                                          ; $53d8: $ff
	inc b                                            ; $53d9: $04

jr_014_53da:
	rst $38                                          ; $53da: $ff
	call c, $22ff                                    ; $53db: $dc $ff $22
	rst $38                                          ; $53de: $ff
	ld c, c                                          ; $53df: $49
	rst $38                                          ; $53e0: $ff
	and h                                            ; $53e1: $a4
	rst $38                                          ; $53e2: $ff
	or h                                             ; $53e3: $b4
	rst SubAFromDE                                          ; $53e4: $df
	or [hl]                                          ; $53e5: $b6
	ld e, e                                          ; $53e6: $5b
	rst $38                                          ; $53e7: $ff
	rst GetHLinHL                                          ; $53e8: $cf
	ld [hl], a                                       ; $53e9: $77
	call z, Call_014_77ff                            ; $53ea: $cc $ff $77
	cp $9c                                           ; $53ed: $fe $9c
	ld sp, $83ff                                     ; $53ef: $31 $ff $83
	ei                                               ; $53f2: $fb
	rst SubAFromDE                                          ; $53f3: $df
	ret nz                                           ; $53f4: $c0

	sbc b                                            ; $53f5: $98
	jr nz, jr_014_53d8                               ; $53f6: $20 $e0

	jr nz, jr_014_53da                               ; $53f8: $20 $e0

	db $10                                           ; $53fa: $10
	ldh a, [hDisp1_SCY]                                     ; $53fb: $f0 $90
	ld [hl], e                                       ; $53fd: $73
	cp $9b                                           ; $53fe: $fe $9b
	ld d, b                                          ; $5400: $50
	ldh a, [$e0]                                     ; $5401: $f0 $e0
	and b                                            ; $5403: $a0
	ld [hl], a                                       ; $5404: $77
	cp $9e                                           ; $5405: $fe $9e
	ld b, b                                          ; $5407: $40
	sbc $c0                                          ; $5408: $de $c0
	inc sp                                           ; $540a: $33
	ret nz                                           ; $540b: $c0

	sbc h                                            ; $540c: $9c
	add a                                            ; $540d: $87
	rst $38                                          ; $540e: $ff
	call z, $be73                                    ; $540f: $cc $73 $be
	ld a, e                                          ; $5412: $7b
	ret nz                                           ; $5413: $c0

	sub l                                            ; $5414: $95
	cp $ff                                           ; $5415: $fe $ff
	db $e4                                           ; $5417: $e4
	sbc a                                            ; $5418: $9f
	ld l, a                                          ; $5419: $6f
	ld [hl], a                                       ; $541a: $77
	rra                                              ; $541b: $1f
	rra                                              ; $541c: $1f
	ld bc, $7b01                                     ; $541d: $01 $01 $7b
	adc l                                            ; $5420: $8d
	sbc [hl]                                         ; $5421: $9e
	inc bc                                           ; $5422: $03
	db $dd                                           ; $5423: $dd
	ld bc, $dff9                                     ; $5424: $01 $f9 $df

jr_014_5427:
	ld bc, $03df                                     ; $5427: $01 $df $03
	rst $38                                          ; $542a: $ff
	sbc b                                            ; $542b: $98
	db $fc                                           ; $542c: $fc
	rst $38                                          ; $542d: $ff
	add d                                            ; $542e: $82
	rst $38                                          ; $542f: $ff
	inc sp                                           ; $5430: $33
	rst $38                                          ; $5431: $ff
	ld c, e                                          ; $5432: $4b
	sbc $ff                                          ; $5433: $de $ff
	adc b                                            ; $5435: $88
	add h                                            ; $5436: $84
	rst $38                                          ; $5437: $ff
	adc $7b                                          ; $5438: $ce $7b
	rst GetHLinHL                                          ; $543a: $cf
	ld a, c                                          ; $543b: $79
	rst $38                                          ; $543c: $ff
	ld sp, $b2fe                                     ; $543d: $31 $fe $b2
	rst $38                                          ; $5440: $ff
	rst $38                                          ; $5441: $ff
	db $db                                           ; $5442: $db
	rst $38                                          ; $5443: $ff
	xor l                                            ; $5444: $ad
	rst $38                                          ; $5445: $ff
	dec de                                           ; $5446: $1b
	rst $38                                          ; $5447: $ff
	pop af                                           ; $5448: $f1
	rst $38                                          ; $5449: $ff
	ccf                                              ; $544a: $3f
	ccf                                              ; $544b: $3f
	ld b, b                                          ; $544c: $40
	ld a, e                                          ; $544d: $7b
	add [hl]                                         ; $544e: $86
	rst SubAFromDE                                          ; $544f: $df
	ldh [$9d], a                                     ; $5450: $e0 $9d
	ldh a, [rAUD1SWEEP]                              ; $5452: $f0 $10
	ld [hl], a                                       ; $5454: $77
	adc b                                            ; $5455: $88
	ld a, a                                          ; $5456: $7f
	ld a, l                                          ; $5457: $7d
	sbc e                                            ; $5458: $9b
	ret nz                                           ; $5459: $c0

	ld b, b                                          ; $545a: $40
	add b                                            ; $545b: $80
	add b                                            ; $545c: $80
	rst FarCall                                          ; $545d: $f7
	ld [hl], a                                       ; $545e: $77
	db $f4                                           ; $545f: $f4
	dec bc                                           ; $5460: $0b
	add b                                            ; $5461: $80
	sbc [hl]                                         ; $5462: $9e
	or e                                             ; $5463: $b3
	rrca                                             ; $5464: $0f
	nop                                              ; $5465: $00
	rst SubAFromDE                                          ; $5466: $df
	pop bc                                           ; $5467: $c1
	sbc e                                            ; $5468: $9b
	cp $bf                                           ; $5469: $fe $bf
	db $e4                                           ; $546b: $e4
	rst SubAFromDE                                          ; $546c: $df
	rla                                              ; $546d: $17
	ld h, b                                          ; $546e: $60
	rra                                              ; $546f: $1f
	ret nz                                           ; $5470: $c0

	rst SubAFromDE                                          ; $5471: $df
	ld [hl], c                                       ; $5472: $71
	sub e                                            ; $5473: $93
	ld sp, hl                                        ; $5474: $f9
	sbc c                                            ; $5475: $99
	ld sp, hl                                        ; $5476: $f9
	adc c                                            ; $5477: $89
	ld a, [hl]                                       ; $5478: $7e
	ld c, a                                          ; $5479: $4f
	inc h                                            ; $547a: $24
	ccf                                              ; $547b: $3f
	ccf                                              ; $547c: $3f
	scf                                              ; $547d: $37
	rrca                                             ; $547e: $0f
	rrca                                             ; $547f: $0f
	inc bc                                           ; $5480: $03
	ret nz                                           ; $5481: $c0

	ld l, e                                          ; $5482: $6b
	ret nz                                           ; $5483: $c0

	adc a                                            ; $5484: $8f
	ld c, $0f                                        ; $5485: $0e $0f
	dec e                                            ; $5487: $1d
	rla                                              ; $5488: $17
	dec sp                                           ; $5489: $3b
	dec hl                                           ; $548a: $2b
	ld a, e                                          ; $548b: $7b
	ld c, d                                          ; $548c: $4a
	ld a, e                                          ; $548d: $7b
	ld e, d                                          ; $548e: $5a
	ld sp, hl                                        ; $548f: $f9
	adc c                                            ; $5490: $89
	db $fd                                           ; $5491: $fd
	add l                                            ; $5492: $85
	db $fd                                           ; $5493: $fd
	add l                                            ; $5494: $85
	rlca                                             ; $5495: $07
	ret nz                                           ; $5496: $c0

	ld b, $a0                                        ; $5497: $06 $a0
	inc bc                                           ; $5499: $03
	nop                                              ; $549a: $00
	daa                                              ; $549b: $27
	ld b, b                                          ; $549c: $40
	ld [hl], e                                       ; $549d: $73
	sub h                                            ; $549e: $94
	ld a, [hl+]                                      ; $549f: $2a
	nop                                              ; $54a0: $00
	sbc d                                            ; $54a1: $9a
	inc bc                                           ; $54a2: $03
	rst $38                                          ; $54a3: $ff
	nop                                              ; $54a4: $00
	rst $38                                          ; $54a5: $ff
	adc $6f                                          ; $54a6: $ce $6f
	and b                                            ; $54a8: $a0
	ld a, a                                          ; $54a9: $7f
	rst SubAFromHL                                          ; $54aa: $d7
	sbc [hl]                                         ; $54ab: $9e
	inc b                                            ; $54ac: $04
	sbc $07                                          ; $54ad: $de $07
	sub a                                            ; $54af: $97
	rrca                                             ; $54b0: $0f
	add hl, bc                                       ; $54b1: $09
	dec bc                                           ; $54b2: $0b
	rrca                                             ; $54b3: $0f
	ld c, $0b                                        ; $54b4: $0e $0b
	ld b, $07                                        ; $54b6: $06 $07
	ccf                                              ; $54b8: $3f
	ld h, b                                          ; $54b9: $60
	ld l, [hl]                                       ; $54ba: $6e
	ld h, b                                          ; $54bb: $60
	ld a, [hl]                                       ; $54bc: $7e
	ld h, [hl]                                       ; $54bd: $66
	ld [hl], l                                       ; $54be: $75
	rst AddAOntoHL                                          ; $54bf: $ef
	sbc [hl]                                         ; $54c0: $9e
	ld h, b                                          ; $54c1: $60
	ld [hl], c                                       ; $54c2: $71
	xor $5e                                          ; $54c3: $ee $5e
	ld e, [hl]                                       ; $54c5: $5e
	ld [hl], a                                       ; $54c6: $77
	or $77                                           ; $54c7: $f6 $77
	ret nz                                           ; $54c9: $c0

	rst SubAFromDE                                          ; $54ca: $df
	rrca                                             ; $54cb: $0f
	sub a                                            ; $54cc: $97
	dec de                                           ; $54cd: $1b
	dec e                                            ; $54ce: $1d
	rra                                              ; $54cf: $1f
	rla                                              ; $54d0: $17
	ld e, $17                                        ; $54d1: $1e $17
	ld a, [bc]                                       ; $54d3: $0a
	dec bc                                           ; $54d4: $0b
	ld e, a                                          ; $54d5: $5f
	jp nz, $be6f                                     ; $54d6: $c2 $6f $be

	ld a, $00                                        ; $54d9: $3e $00
	adc a                                            ; $54db: $8f
	cp $92                                           ; $54dc: $fe $92
	ld a, h                                          ; $54de: $7c
	ld h, h                                          ; $54df: $64
	ld a, h                                          ; $54e0: $7c
	ld a, h                                          ; $54e1: $7c
	ld l, $3e                                        ; $54e2: $2e $3e
	dec [hl]                                         ; $54e4: $35
	ccf                                              ; $54e5: $3f
	rst AddAOntoHL                                          ; $54e6: $ef
	rst $38                                          ; $54e7: $ff
	rst JumpTable                                          ; $54e8: $c7
	rst $38                                          ; $54e9: $ff
	ld a, h                                          ; $54ea: $7c
	ld a, h                                          ; $54eb: $7c
	ld h, a                                          ; $54ec: $67
	and b                                            ; $54ed: $a0
	ld a, [hl]                                       ; $54ee: $7e
	ld [bc], a                                       ; $54ef: $02
	sbc e                                            ; $54f0: $9b
	ld hl, sp-$38                                    ; $54f1: $f8 $c8
	or b                                             ; $54f3: $b0
	or b                                             ; $54f4: $b0
	ld d, [hl]                                       ; $54f5: $56
	ld [bc], a                                       ; $54f6: $02
	ld e, a                                          ; $54f7: $5f
	and b                                            ; $54f8: $a0
	ld [hl], a                                       ; $54f9: $77
	ld h, b                                          ; $54fa: $60
	sbc c                                            ; $54fb: $99
	add hl, bc                                       ; $54fc: $09
	rrca                                             ; $54fd: $0f
	add hl, bc                                       ; $54fe: $09
	ld c, $06                                        ; $54ff: $0e $06
	dec b                                            ; $5501: $05
	ld [hl], a                                       ; $5502: $77
	ld a, [hl+]                                      ; $5503: $2a
	ld c, a                                          ; $5504: $4f
	ld h, b                                          ; $5505: $60
	ld [hl], e                                       ; $5506: $73
	ldh [$9e], a                                     ; $5507: $e0 $9e
	dec b                                            ; $5509: $05
	rra                                              ; $550a: $1f
	ldh [$09], a                                     ; $550b: $e0 $09
	nop                                              ; $550d: $00
	sbc [hl]                                         ; $550e: $9e
	or e                                             ; $550f: $b3
	reti                                             ; $5510: $d9


	nop                                              ; $5511: $00
	ei                                               ; $5512: $fb
	sub a                                            ; $5513: $97
	rla                                              ; $5514: $17
	rra                                              ; $5515: $1f
	ld [$050f], sp                                   ; $5516: $08 $0f $05
	rlca                                             ; $5519: $07
	ld a, [bc]                                       ; $551a: $0a
	rrca                                             ; $551b: $0f
	ld [hl], a                                       ; $551c: $77
	cp $7f                                           ; $551d: $fe $7f
	ld hl, sp-$22                                    ; $551f: $f8 $de
	inc bc                                           ; $5521: $03
	sbc h                                            ; $5522: $9c
	ld [bc], a                                       ; $5523: $02
	inc bc                                           ; $5524: $03
	ld [bc], a                                       ; $5525: $02
	db $db                                           ; $5526: $db
	ld bc, $08df                                     ; $5527: $01 $df $08
	adc b                                            ; $552a: $88
	inc b                                            ; $552b: $04
	inc c                                            ; $552c: $0c
	ei                                               ; $552d: $fb

jr_014_552e:
	rst $38                                          ; $552e: $ff
	inc b                                            ; $552f: $04

jr_014_5530:
	rst $38                                          ; $5530: $ff
	call c, $22ff                                    ; $5531: $dc $ff $22
	rst $38                                          ; $5534: $ff
	ld c, c                                          ; $5535: $49
	rst $38                                          ; $5536: $ff
	and h                                            ; $5537: $a4
	rst $38                                          ; $5538: $ff
	or h                                             ; $5539: $b4
	rst SubAFromDE                                          ; $553a: $df
	or [hl]                                          ; $553b: $b6
	ld e, e                                          ; $553c: $5b
	rst $38                                          ; $553d: $ff
	rst GetHLinHL                                          ; $553e: $cf
	ld [hl], a                                       ; $553f: $77
	call z, Call_014_77ff                            ; $5540: $cc $ff $77
	cp $9c                                           ; $5543: $fe $9c
	ld sp, $83ff                                     ; $5545: $31 $ff $83
	ei                                               ; $5548: $fb
	rst SubAFromDE                                          ; $5549: $df
	ret nz                                           ; $554a: $c0

	sbc b                                            ; $554b: $98
	jr nz, jr_014_552e                               ; $554c: $20 $e0

	jr nz, jr_014_5530                               ; $554e: $20 $e0

	db $10                                           ; $5550: $10
	ldh a, [hDisp1_SCY]                                     ; $5551: $f0 $90
	ld [hl], e                                       ; $5553: $73
	cp $9b                                           ; $5554: $fe $9b
	ld d, b                                          ; $5556: $50
	ldh a, [$e0]                                     ; $5557: $f0 $e0
	and b                                            ; $5559: $a0
	ld [hl], a                                       ; $555a: $77
	cp $9e                                           ; $555b: $fe $9e
	ld b, b                                          ; $555d: $40
	sbc $c0                                          ; $555e: $de $c0
	ld a, a                                          ; $5560: $7f
	or a                                             ; $5561: $b7
	sbc [hl]                                         ; $5562: $9e
	inc b                                            ; $5563: $04
	sbc $07                                          ; $5564: $de $07
	sub a                                            ; $5566: $97
	rrca                                             ; $5567: $0f
	add hl, bc                                       ; $5568: $09
	dec bc                                           ; $5569: $0b
	rrca                                             ; $556a: $0f
	ld c, $0b                                        ; $556b: $0e $0b
	ld b, $07                                        ; $556d: $06 $07
	db $dd                                           ; $556f: $dd
	ld bc, $dff9                                     ; $5570: $01 $f9 $df
	ld bc, $03df                                     ; $5573: $01 $df $03
	rst $38                                          ; $5576: $ff
	sbc b                                            ; $5577: $98
	db $fc                                           ; $5578: $fc
	rst $38                                          ; $5579: $ff
	add d                                            ; $557a: $82
	rst $38                                          ; $557b: $ff
	inc sp                                           ; $557c: $33
	rst $38                                          ; $557d: $ff
	ld c, e                                          ; $557e: $4b
	sbc $ff                                          ; $557f: $de $ff
	adc b                                            ; $5581: $88
	add h                                            ; $5582: $84
	rst $38                                          ; $5583: $ff
	adc $7b                                          ; $5584: $ce $7b
	rst GetHLinHL                                          ; $5586: $cf
	ld a, c                                          ; $5587: $79
	rst $38                                          ; $5588: $ff
	ld sp, $b2fe                                     ; $5589: $31 $fe $b2
	rst $38                                          ; $558c: $ff
	rst $38                                          ; $558d: $ff
	db $db                                           ; $558e: $db
	rst $38                                          ; $558f: $ff
	xor l                                            ; $5590: $ad
	rst $38                                          ; $5591: $ff
	dec de                                           ; $5592: $1b
	rst $38                                          ; $5593: $ff
	pop af                                           ; $5594: $f1
	rst $38                                          ; $5595: $ff
	ccf                                              ; $5596: $3f
	ccf                                              ; $5597: $3f
	ld b, b                                          ; $5598: $40
	ld a, e                                          ; $5599: $7b
	and [hl]                                         ; $559a: $a6
	sbc $e0                                          ; $559b: $de $e0
	sbc [hl]                                         ; $559d: $9e
	jr nz, jr_014_5617                               ; $559e: $20 $77

	xor a                                            ; $55a0: $af
	sbc [hl]                                         ; $55a1: $9e
	ld h, b                                          ; $55a2: $60
	ld [hl], e                                       ; $55a3: $73
	xor [hl]                                         ; $55a4: $ae
	rst SubAFromDE                                          ; $55a5: $df
	add b                                            ; $55a6: $80
	ld sp, hl                                        ; $55a7: $f9
	ld [hl], a                                       ; $55a8: $77
	or $77                                           ; $55a9: $f6 $77
	and b                                            ; $55ab: $a0
	rst SubAFromDE                                          ; $55ac: $df
	rrca                                             ; $55ad: $0f
	sub a                                            ; $55ae: $97
	dec de                                           ; $55af: $1b
	dec e                                            ; $55b0: $1d
	rra                                              ; $55b1: $1f
	rla                                              ; $55b2: $17
	ld e, $17                                        ; $55b3: $1e $17
	ld a, [bc]                                       ; $55b5: $0a
	dec bc                                           ; $55b6: $0b
	ld e, a                                          ; $55b7: $5f
	and d                                            ; $55b8: $a2
	ld l, a                                          ; $55b9: $6f
	sbc [hl]                                         ; $55ba: $9e
	ccf                                              ; $55bb: $3f
	and b                                            ; $55bc: $a0
	adc a                                            ; $55bd: $8f
	cp $92                                           ; $55be: $fe $92
	ld a, h                                          ; $55c0: $7c
	ld h, h                                          ; $55c1: $64
	ld a, h                                          ; $55c2: $7c
	ld a, h                                          ; $55c3: $7c
	ld l, $3e                                        ; $55c4: $2e $3e
	dec [hl]                                         ; $55c6: $35
	ccf                                              ; $55c7: $3f
	rst AddAOntoHL                                          ; $55c8: $ef
	rst $38                                          ; $55c9: $ff
	rst JumpTable                                          ; $55ca: $c7
	rst $38                                          ; $55cb: $ff
	ld a, h                                          ; $55cc: $7c
	ld a, h                                          ; $55cd: $7c
	ld h, a                                          ; $55ce: $67
	and b                                            ; $55cf: $a0
	ld a, a                                          ; $55d0: $7f
	ld c, d                                          ; $55d1: $4a
	sbc e                                            ; $55d2: $9b
	ld hl, sp-$38                                    ; $55d3: $f8 $c8
	or b                                             ; $55d5: $b0
	or b                                             ; $55d6: $b0
	ld e, a                                          ; $55d7: $5f
	and h                                            ; $55d8: $a4
	ld h, a                                          ; $55d9: $67
	and b                                            ; $55da: $a0
	inc sp                                           ; $55db: $33
	nop                                              ; $55dc: $00
	sbc b                                            ; $55dd: $98
	jp $cc7f                                         ; $55de: $c3 $7f $cc


	rst $38                                          ; $55e1: $ff
	adc $ff                                          ; $55e2: $ce $ff
	jp z, $007b                                      ; $55e4: $ca $7b $00

	sbc [hl]                                         ; $55e7: $9e
	sub e                                            ; $55e8: $93
	and h                                            ; $55e9: $a4
	nop                                              ; $55ea: $00
	ei                                               ; $55eb: $fb
	rst SubAFromDE                                          ; $55ec: $df
	ld bc, $0287                                     ; $55ed: $01 $87 $02
	inc bc                                           ; $55f0: $03
	inc b                                            ; $55f1: $04
	rlca                                             ; $55f2: $07
	dec b                                            ; $55f3: $05
	rlca                                             ; $55f4: $07
	ld b, $07                                        ; $55f5: $06 $07
	dec c                                            ; $55f7: $0d
	rrca                                             ; $55f8: $0f
	ld a, [bc]                                       ; $55f9: $0a
	rrca                                             ; $55fa: $0f
	inc de                                           ; $55fb: $13
	rra                                              ; $55fc: $1f
	rrca                                             ; $55fd: $0f
	ld c, $07                                        ; $55fe: $0e $07
	rlca                                             ; $5600: $07
	inc bc                                           ; $5601: $03
	ld [bc], a                                       ; $5602: $02
	dec b                                            ; $5603: $05
	rlca                                             ; $5604: $07
	ld [bc], a                                       ; $5605: $02
	inc bc                                           ; $5606: $03
	db $fd                                           ; $5607: $fd
	rst SubAFromDE                                          ; $5608: $df
	rst AddAOntoHL                                          ; $5609: $ef
	add l                                            ; $560a: $85
	db $10                                           ; $560b: $10
	rst $38                                          ; $560c: $ff
	db $10                                           ; $560d: $10
	rst $38                                          ; $560e: $ff

jr_014_560f:
	xor $ff                                          ; $560f: $ee $ff
	ld sp, $a4ff                                     ; $5611: $31 $ff $a4
	rst $38                                          ; $5614: $ff
	ld [hl], d                                       ; $5615: $72
	rst SubAFromDE                                          ; $5616: $df

jr_014_5617:
	push af                                          ; $5617: $f5
	sbc a                                            ; $5618: $9f
	rst $38                                          ; $5619: $ff
	rst GetHLinHL                                          ; $561a: $cf
	ld [hl], a                                       ; $561b: $77
	call z, $ceff                                    ; $561c: $cc $ff $ce
	rst $38                                          ; $561f: $ff
	call z, $31ff                                    ; $5620: $cc $ff $31
	cp $83                                           ; $5623: $fe $83
	ei                                               ; $5625: $fb
	rst SubAFromDE                                          ; $5626: $df
	add b                                            ; $5627: $80
	adc a                                            ; $5628: $8f
	ld b, b                                          ; $5629: $40
	ret nz                                           ; $562a: $c0

	ld b, b                                          ; $562b: $40
	ret nz                                           ; $562c: $c0

	jr nz, jr_014_560f                               ; $562d: $20 $e0

	and b                                            ; $562f: $a0
	ldh [$60], a                                     ; $5630: $e0 $60
	ldh [$30], a                                     ; $5632: $e0 $30
	ldh a, [hDisp0_WY]                                     ; $5634: $f0 $88
	ld hl, sp-$10                                    ; $5636: $f8 $f0
	ldh a, [$7b]                                     ; $5638: $f0 $7b
	push af                                          ; $563a: $f5
	sbc c                                            ; $563b: $99
	and b                                            ; $563c: $a0
	ld b, b                                          ; $563d: $40
	ret nz                                           ; $563e: $c0

	and b                                            ; $563f: $a0
	ldh [$03], a                                     ; $5640: $e0 $03
	ld a, e                                          ; $5642: $7b
	xor b                                            ; $5643: $a8
	sbc $07                                          ; $5644: $de $07
	sbc b                                            ; $5646: $98
	inc b                                            ; $5647: $04
	rrca                                             ; $5648: $0f
	add hl, bc                                       ; $5649: $09
	ld e, $12                                        ; $564a: $1e $12
	dec c                                            ; $564c: $0d
	dec c                                            ; $564d: $0d
	ld [hl], a                                       ; $564e: $77
	sbc b                                            ; $564f: $98
	ld l, a                                          ; $5650: $6f
	cp $de                                           ; $5651: $fe $de
	inc bc                                           ; $5653: $03
	ld a, e                                          ; $5654: $7b
	ei                                               ; $5655: $fb
	rst $38                                          ; $5656: $ff
	rst SubAFromDE                                          ; $5657: $df
	rst $38                                          ; $5658: $ff
	adc d                                            ; $5659: $8a
	xor c                                            ; $565a: $a9
	rst SubAFromDE                                          ; $565b: $df
	ld e, $f7                                        ; $565c: $1e $f7
	cp $93                                           ; $565e: $fe $93
	rst $38                                          ; $5660: $ff
	ld sp, hl                                        ; $5661: $f9
	xor a                                            ; $5662: $af
	rst $38                                          ; $5663: $ff
	jr z, @+$01                                      ; $5664: $28 $ff

	ld b, h                                          ; $5666: $44
	rst $38                                          ; $5667: $ff
	ld b, d                                          ; $5668: $42
	rst $38                                          ; $5669: $ff
	add d                                            ; $566a: $82
	rst $38                                          ; $566b: $ff
	push bc                                          ; $566c: $c5
	rst $38                                          ; $566d: $ff
	cp c                                             ; $566e: $b9
	ld a, e                                          ; $566f: $7b
	ld hl, sp-$64                                    ; $5670: $f8 $9c
	inc a                                            ; $5672: $3c
	rst $38                                          ; $5673: $ff
	rst $38                                          ; $5674: $ff
	ld a, e                                          ; $5675: $7b
	ldh [c], a                                       ; $5676: $e2
	ld [hl], a                                       ; $5677: $77
	xor d                                            ; $5678: $aa
	ld a, a                                          ; $5679: $7f
	cp $7f                                           ; $567a: $fe $7f
	ld a, [$c0df]                                    ; $567c: $fa $df $c0
	ld [hl], a                                       ; $567f: $77
	sbc d                                            ; $5680: $9a
	ld l, a                                          ; $5681: $6f
	sbc b                                            ; $5682: $98
	ld [hl], a                                       ; $5683: $77
	cp $de                                           ; $5684: $fe $de
	ret nz                                           ; $5686: $c0

	sbc d                                            ; $5687: $9a
	ld b, b                                          ; $5688: $40
	add b                                            ; $5689: $80
	add b                                            ; $568a: $80
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	dec d                                            ; $568d: $15
	ld bc, $dffb                                     ; $568e: $01 $fb $df
	ld bc, $028f                                     ; $5691: $01 $8f $02
	inc bc                                           ; $5694: $03
	ld [bc], a                                       ; $5695: $02
	inc bc                                           ; $5696: $03
	inc b                                            ; $5697: $04
	rlca                                             ; $5698: $07
	dec b                                            ; $5699: $05
	rlca                                             ; $569a: $07
	ld b, $07                                        ; $569b: $06 $07
	inc c                                            ; $569d: $0c
	rrca                                             ; $569e: $0f
	ld de, $0f1f                                     ; $569f: $11 $1f $0f
	rrca                                             ; $56a2: $0f
	ld a, e                                          ; $56a3: $7b
	push af                                          ; $56a4: $f5
	sbc d                                            ; $56a5: $9a
	dec b                                            ; $56a6: $05
	ld [bc], a                                       ; $56a7: $02
	inc bc                                           ; $56a8: $03
	dec b                                            ; $56a9: $05
	rlca                                             ; $56aa: $07
	db $fd                                           ; $56ab: $fd
	rst SubAFromDE                                          ; $56ac: $df
	rst FarCall                                          ; $56ad: $f7
	add l                                            ; $56ae: $85
	ld [$08ff], sp                                   ; $56af: $08 $ff $08
	rst $38                                          ; $56b2: $ff
	ld [hl], a                                       ; $56b3: $77
	rst $38                                          ; $56b4: $ff
	adc h                                            ; $56b5: $8c
	rst $38                                          ; $56b6: $ff
	dec h                                            ; $56b7: $25
	rst $38                                          ; $56b8: $ff
	ld c, [hl]                                       ; $56b9: $4e
	ei                                               ; $56ba: $fb
	xor a                                            ; $56bb: $af
	ld sp, hl                                        ; $56bc: $f9
	rst $38                                          ; $56bd: $ff
	ldh a, [rIE]                                     ; $56be: $f0 $ff
	dec sp                                           ; $56c0: $3b
	xor $73                                          ; $56c1: $ee $73
	rst $38                                          ; $56c3: $ff
	inc sp                                           ; $56c4: $33
	rst $38                                          ; $56c5: $ff
	adc h                                            ; $56c6: $8c
	ld a, a                                          ; $56c7: $7f
	pop de                                           ; $56c8: $d1
	ei                                               ; $56c9: $fb
	rst SubAFromDE                                          ; $56ca: $df
	add b                                            ; $56cb: $80
	adc d                                            ; $56cc: $8a
	ld b, b                                          ; $56cd: $40
	ret nz                                           ; $56ce: $c0

	jr nz, @-$1e                                     ; $56cf: $20 $e0

	and b                                            ; $56d1: $a0
	ldh [$60], a                                     ; $56d2: $e0 $60
	ldh [$b0], a                                     ; $56d4: $e0 $b0
	ldh a, [$50]                                     ; $56d6: $f0 $50
	ldh a, [$c8]                                     ; $56d8: $f0 $c8
	ld hl, sp-$10                                    ; $56da: $f8 $f0
	ld [hl], b                                       ; $56dc: $70
	ldh [$e0], a                                     ; $56dd: $e0 $e0
	ret nz                                           ; $56df: $c0

	ld b, b                                          ; $56e0: $40
	and b                                            ; $56e1: $a0
	ld a, e                                          ; $56e2: $7b
	db $fc                                           ; $56e3: $fc
	ld [hl], a                                       ; $56e4: $77
	xor d                                            ; $56e5: $aa
	ld a, a                                          ; $56e6: $7f
	cp $7f                                           ; $56e7: $fe $7f
	ld a, [$03df]                                    ; $56e9: $fa $df $03
	ld [hl], a                                       ; $56ec: $77
	sbc d                                            ; $56ed: $9a
	ld l, a                                          ; $56ee: $6f

Jump_014_56ef:
	sbc b                                            ; $56ef: $98
	ld [hl], a                                       ; $56f0: $77
	cp $de                                           ; $56f1: $fe $de
	inc bc                                           ; $56f3: $03
	add e                                            ; $56f4: $83
	ld [bc], a                                       ; $56f5: $02
	ld bc, $0001                                     ; $56f6: $01 $01 $00
	nop                                              ; $56f9: $00
	rst $38                                          ; $56fa: $ff
	xor $bd                                          ; $56fb: $ee $bd
	rst SubAFromBC                                          ; $56fd: $e7
	ld a, c                                          ; $56fe: $79
	rst GetHLinHL                                          ; $56ff: $cf
	ld a, l                                          ; $5700: $7d
	set 7, a                                         ; $5701: $cb $ff
	sbc a                                            ; $5703: $9f
	push af                                          ; $5704: $f5
	rst $38                                          ; $5705: $ff
	inc d                                            ; $5706: $14
	rst $38                                          ; $5707: $ff
	ld [hl+], a                                      ; $5708: $22
	rst $38                                          ; $5709: $ff
	ld b, d                                          ; $570a: $42
	rst $38                                          ; $570b: $ff
	ld b, c                                          ; $570c: $41
	rst $38                                          ; $570d: $ff
	and e                                            ; $570e: $a3
	rst $38                                          ; $570f: $ff
	sbc l                                            ; $5710: $9d
	ld a, e                                          ; $5711: $7b
	ld hl, sp-$6b                                    ; $5712: $f8 $95
	inc a                                            ; $5714: $3c
	rst $38                                          ; $5715: $ff
	rst $38                                          ; $5716: $ff
	nop                                              ; $5717: $00
	rst $38                                          ; $5718: $ff
	rst $38                                          ; $5719: $ff
	ret nz                                           ; $571a: $c0

	ld b, b                                          ; $571b: $40
	ldh [rAUD4LEN], a                                ; $571c: $e0 $20
	ld a, e                                          ; $571e: $7b
	cp $9c                                           ; $571f: $fe $9c
	and b                                            ; $5721: $a0
	ret nz                                           ; $5722: $c0

	ret nz                                           ; $5723: $c0

	ld [hl], a                                       ; $5724: $77

jr_014_5725:
	sbc d                                            ; $5725: $9a
	ld [hl], a                                       ; $5726: $77
	sbc b                                            ; $5727: $98
	ld l, a                                          ; $5728: $6f
	cp $de                                           ; $5729: $fe $de
	ret nz                                           ; $572b: $c0

	ld a, e                                          ; $572c: $7b
	ei                                               ; $572d: $fb
	ei                                               ; $572e: $fb
	dec de                                           ; $572f: $1b
	ld h, b                                          ; $5730: $60
	sbc [hl]                                         ; $5731: $9e
	db $dd                                           ; $5732: $dd
	rlca                                             ; $5733: $07
	ld h, b                                          ; $5734: $60
	ld e, a                                          ; $5735: $5f
	nop                                              ; $5736: $00
	ld l, a                                          ; $5737: $6f
	ld [bc], a                                       ; $5738: $02
	sub d                                            ; $5739: $92
	dec c                                            ; $573a: $0d
	rrca                                             ; $573b: $0f
	ld a, [bc]                                       ; $573c: $0a
	rrca                                             ; $573d: $0f
	inc de                                           ; $573e: $13
	rra                                              ; $573f: $1f
	rrca                                             ; $5740: $0f
	ld c, $07                                        ; $5741: $0e $07
	rlca                                             ; $5743: $07
	inc bc                                           ; $5744: $03
	ld [bc], a                                       ; $5745: $02
	dec b                                            ; $5746: $05
	ld a, e                                          ; $5747: $7b
	ld c, b                                          ; $5748: $48
	db $fd                                           ; $5749: $fd
	rst SubAFromDE                                          ; $574a: $df
	rst AddAOntoHL                                          ; $574b: $ef
	add h                                            ; $574c: $84
	db $10                                           ; $574d: $10
	rst $38                                          ; $574e: $ff
	db $10                                           ; $574f: $10
	rst $38                                          ; $5750: $ff
	xor $ff                                          ; $5751: $ee $ff
	ld sp, $a4ff                                     ; $5753: $31 $ff $a4
	rst $38                                          ; $5756: $ff
	ld [hl], d                                       ; $5757: $72
	rst SubAFromDE                                          ; $5758: $df
	push af                                          ; $5759: $f5
	sbc a                                            ; $575a: $9f
	rst $38                                          ; $575b: $ff
	rst GetHLinHL                                          ; $575c: $cf
	ld [hl], a                                       ; $575d: $77
	call z, $ceff                                    ; $575e: $cc $ff $ce
	rst $38                                          ; $5761: $ff
	call z, $31ff                                    ; $5762: $cc $ff $31
	cp $83                                           ; $5765: $fe $83
	inc bc                                           ; $5767: $03
	ld a, e                                          ; $5768: $7b
	ret z                                            ; $5769: $c8

	sbc $07                                          ; $576a: $de $07
	sbc b                                            ; $576c: $98
	inc b                                            ; $576d: $04
	rrca                                             ; $576e: $0f
	add hl, bc                                       ; $576f: $09
	ld e, $12                                        ; $5770: $1e $12
	dec c                                            ; $5772: $0d
	dec c                                            ; $5773: $0d
	ld c, a                                          ; $5774: $4f
	jr nz, @+$79                                     ; $5775: $20 $77

	inc c                                            ; $5777: $0c
	rst SubAFromDE                                          ; $5778: $df
	rst $38                                          ; $5779: $ff

jr_014_577a:
	sub d                                            ; $577a: $92
	xor c                                            ; $577b: $a9
	rst SubAFromDE                                          ; $577c: $df
	ld e, $f7                                        ; $577d: $1e $f7
	cp $93                                           ; $577f: $fe $93
	rst $38                                          ; $5781: $ff
	ld sp, hl                                        ; $5782: $f9
	xor a                                            ; $5783: $af
	rst $38                                          ; $5784: $ff
	jr z, @+$01                                      ; $5785: $28 $ff

	ld b, h                                          ; $5787: $44
	ld a, e                                          ; $5788: $7b
	jr z, jr_014_5725                                ; $5789: $28 $9a

	add d                                            ; $578b: $82
	rst $38                                          ; $578c: $ff
	push bc                                          ; $578d: $c5
	rst $38                                          ; $578e: $ff
	cp c                                             ; $578f: $b9
	ld h, e                                          ; $5790: $63
	jr nz, jr_014_580a                               ; $5791: $20 $77

	ld l, b                                          ; $5793: $68
	ld a, a                                          ; $5794: $7f
	cp $77                                           ; $5795: $fe $77
	jr nc, jr_014_57d8                               ; $5797: $30 $3f

	jr nz, jr_014_577a                               ; $5799: $20 $df

	add b                                            ; $579b: $80
	ei                                               ; $579c: $fb
	dec de                                           ; $579d: $1b
	add b                                            ; $579e: $80
	sbc [hl]                                         ; $579f: $9e
	sub e                                            ; $57a0: $93
	pop hl                                           ; $57a1: $e1
	and a                                            ; $57a2: $a7
	nop                                              ; $57a3: $00
	rst SubAFromDE                                          ; $57a4: $df
	inc bc                                           ; $57a5: $03
	sbc [hl]                                         ; $57a6: $9e
	inc b                                            ; $57a7: $04
	db $dd                                           ; $57a8: $dd
	rlca                                             ; $57a9: $07
	sub h                                            ; $57aa: $94
	inc b                                            ; $57ab: $04
	rrca                                             ; $57ac: $0f
	add hl, bc                                       ; $57ad: $09
	ld e, $12                                        ; $57ae: $1e $12
	dec c                                            ; $57b0: $0d
	dec c                                            ; $57b1: $0d
	ld bc, $0201                                     ; $57b2: $01 $01 $02
	inc bc                                           ; $57b5: $03
	ld l, a                                          ; $57b6: $6f
	cp $de                                           ; $57b7: $fe $de
	inc bc                                           ; $57b9: $03
	ld a, e                                          ; $57ba: $7b
	ei                                               ; $57bb: $fb
	rst $38                                          ; $57bc: $ff
	rst SubAFromDE                                          ; $57bd: $df
	rst $38                                          ; $57be: $ff
	adc d                                            ; $57bf: $8a
	xor c                                            ; $57c0: $a9
	rst SubAFromDE                                          ; $57c1: $df

jr_014_57c2:
	ld e, $f7                                        ; $57c2: $1e $f7

jr_014_57c4:
	cp $93                                           ; $57c4: $fe $93
	rst $38                                          ; $57c6: $ff
	ld sp, hl                                        ; $57c7: $f9
	xor a                                            ; $57c8: $af
	rst $38                                          ; $57c9: $ff
	jr z, @+$01                                      ; $57ca: $28 $ff

	ld b, h                                          ; $57cc: $44
	rst $38                                          ; $57cd: $ff
	ld b, d                                          ; $57ce: $42
	rst $38                                          ; $57cf: $ff
	add d                                            ; $57d0: $82
	rst $38                                          ; $57d1: $ff
	push bc                                          ; $57d2: $c5
	rst $38                                          ; $57d3: $ff
	cp c                                             ; $57d4: $b9
	ld a, e                                          ; $57d5: $7b
	ld hl, sp-$64                                    ; $57d6: $f8 $9c

jr_014_57d8:
	inc a                                            ; $57d8: $3c
	rst $38                                          ; $57d9: $ff
	rst $38                                          ; $57da: $ff
	ld a, e                                          ; $57db: $7b
	ldh [c], a                                       ; $57dc: $e2
	sbc b                                            ; $57dd: $98
	ld b, b                                          ; $57de: $40
	ret nz                                           ; $57df: $c0

	jr nz, jr_014_57c2                               ; $57e0: $20 $e0

	jr nz, jr_014_57c4                               ; $57e2: $20 $e0

	ld b, b                                          ; $57e4: $40
	sbc $c0                                          ; $57e5: $de $c0
	rst $38                                          ; $57e7: $ff
	db $dd                                           ; $57e8: $dd
	add b                                            ; $57e9: $80
	ld a, a                                          ; $57ea: $7f
	or $6f                                           ; $57eb: $f6 $6f
	cp $de                                           ; $57ed: $fe $de
	ret nz                                           ; $57ef: $c0

	sbc h                                            ; $57f0: $9c
	ld b, b                                          ; $57f1: $40
	add b                                            ; $57f2: $80
	add b                                            ; $57f3: $80
	ld sp, hl                                        ; $57f4: $f9
	ld [hl], a                                       ; $57f5: $77
	xor b                                            ; $57f6: $a8
	ld a, a                                          ; $57f7: $7f
	sbc b                                            ; $57f8: $98
	adc h                                            ; $57f9: $8c
	dec b                                            ; $57fa: $05
	rlca                                             ; $57fb: $07
	ld b, $07                                        ; $57fc: $06 $07
	dec c                                            ; $57fe: $0d
	rrca                                             ; $57ff: $0f
	ld a, [bc]                                       ; $5800: $0a
	rrca                                             ; $5801: $0f
	inc de                                           ; $5802: $13
	rra                                              ; $5803: $1f
	rrca                                             ; $5804: $0f
	ld c, $07                                        ; $5805: $0e $07
	ld b, $03                                        ; $5807: $06 $03
	inc bc                                           ; $5809: $03

jr_014_580a:
	dec b                                            ; $580a: $05
	rlca                                             ; $580b: $07
	ld [bc], a                                       ; $580c: $02
	ld a, e                                          ; $580d: $7b
	sbc [hl]                                         ; $580e: $9e
	rst $38                                          ; $580f: $ff
	rst SubAFromDE                                          ; $5810: $df
	rst AddAOntoHL                                          ; $5811: $ef
	adc a                                            ; $5812: $8f
	db $10                                           ; $5813: $10
	rst $38                                          ; $5814: $ff
	db $10                                           ; $5815: $10
	rst $38                                          ; $5816: $ff
	xor $ff                                          ; $5817: $ee $ff
	ld sp, $a4ff                                     ; $5819: $31 $ff $a4
	rst $38                                          ; $581c: $ff
	ld [hl], d                                       ; $581d: $72
	rst SubAFromDE                                          ; $581e: $df
	push af                                          ; $581f: $f5
	sbc a                                            ; $5820: $9f
	rst $38                                          ; $5821: $ff
	rrca                                             ; $5822: $0f
	ld a, e                                          ; $5823: $7b
	and [hl]                                         ; $5824: $a6
	sbc b                                            ; $5825: $98
	call z, $ceff                                    ; $5826: $cc $ff $ce
	rst $38                                          ; $5829: $ff
	ld sp, $83fe                                     ; $582a: $31 $fe $83
	ei                                               ; $582d: $fb
	ld l, a                                          ; $582e: $6f
	xor b                                            ; $582f: $a8
	ld a, a                                          ; $5830: $7f
	sbc b                                            ; $5831: $98
	sub l                                            ; $5832: $95
	and b                                            ; $5833: $a0
	ldh [$60], a                                     ; $5834: $e0 $60
	ldh [$30], a                                     ; $5836: $e0 $30
	ldh a, [hDisp0_WY]                                     ; $5838: $f0 $88
	ld hl, sp-$10                                    ; $583a: $f8 $f0
	ldh a, [$7b]                                     ; $583c: $f0 $7b
	push af                                          ; $583e: $f5
	sbc d                                            ; $583f: $9a
	and b                                            ; $5840: $a0
	ld b, b                                          ; $5841: $40
	ret nz                                           ; $5842: $c0

	and b                                            ; $5843: $a0
	ldh [$0b], a                                     ; $5844: $e0 $0b
	ret nz                                           ; $5846: $c0

	sbc [hl]                                         ; $5847: $9e
	sub e                                            ; $5848: $93
	rst SubAFromHL                                          ; $5849: $d7
	ld [bc], a                                       ; $584a: $02
	or $df                                           ; $584b: $f6 $df
	ld bc, $0294                                     ; $584d: $01 $94 $02
	inc bc                                           ; $5850: $03
	inc b                                            ; $5851: $04
	ld [bc], a                                       ; $5852: $02
	dec b                                            ; $5853: $05
	inc b                                            ; $5854: $04
	ld a, [bc]                                       ; $5855: $0a
	nop                                              ; $5856: $00
	inc c                                            ; $5857: $0c
	nop                                              ; $5858: $00
	ld [$eb5f], sp                                   ; $5859: $08 $5f $eb
	rst SubAFromDE                                          ; $585c: $df
	rra                                              ; $585d: $1f
	sub b                                            ; $585e: $90
	ccf                                              ; $585f: $3f
	jr nc, jr_014_58c1                               ; $5860: $30 $5f

	ld [hl], b                                       ; $5862: $70
	ld a, a                                          ; $5863: $7f
	sub b                                            ; $5864: $90
	rst $38                                          ; $5865: $ff
	add hl, sp                                       ; $5866: $39
	add a                                            ; $5867: $87
	ld b, a                                          ; $5868: $47
	ld [bc], a                                       ; $5869: $02
	add e                                            ; $586a: $83
	ld b, $07                                        ; $586b: $06 $07
	ld b, $de                                        ; $586d: $06 $de
	rlca                                             ; $586f: $07
	ld a, a                                          ; $5870: $7f
	db $fc                                           ; $5871: $fc
	ld a, a                                          ; $5872: $7f
	push de                                          ; $5873: $d5
	ld [hl], a                                       ; $5874: $77
	cp $df                                           ; $5875: $fe $df
	inc bc                                           ; $5877: $03
	ld [$8091], a                                    ; $5878: $ea $91 $80
	ret nz                                           ; $587b: $c0

	nop                                              ; $587c: $00
	ld h, b                                          ; $587d: $60
	db $10                                           ; $587e: $10
	jr c, jr_014_5885                                ; $587f: $38 $04

	ld c, $01                                        ; $5881: $0e $01
	inc bc                                           ; $5883: $03
	inc bc                                           ; $5884: $03

jr_014_5885:
	ld b, $07                                        ; $5885: $06 $07
	inc b                                            ; $5887: $04
	ld l, e                                          ; $5888: $6b
	call z, $03df                                    ; $5889: $cc $df $03
	db $dd                                           ; $588c: $dd
	ld bc, $dff5                                     ; $588d: $01 $f5 $df
	inc bc                                           ; $5890: $03
	rst SubAFromDE                                          ; $5891: $df
	rlca                                             ; $5892: $07
	sbc c                                            ; $5893: $99
	rrca                                             ; $5894: $0f
	dec bc                                           ; $5895: $0b
	rrca                                             ; $5896: $0f
	ld [$0607], sp                                   ; $5897: $08 $07 $06
	ld [hl], a                                       ; $589a: $77
	db $e4                                           ; $589b: $e4
	di                                               ; $589c: $f3
	rst SubAFromDE                                          ; $589d: $df
	ld bc, $0fdf                                     ; $589e: $01 $df $0f
	ld a, e                                          ; $58a1: $7b
	or a                                             ; $58a2: $b7
	ld a, a                                          ; $58a3: $7f
	or [hl]                                          ; $58a4: $b6
	add a                                            ; $58a5: $87
	ld b, b                                          ; $58a6: $40
	rst GetHLinHL                                          ; $58a7: $cf
	rst GetHLinHL                                          ; $58a8: $cf
	ld hl, sp+$7f                                    ; $58a9: $f8 $7f
	ldh [$7f], a                                     ; $58ab: $e0 $7f
	add b                                            ; $58ad: $80
	rst $38                                          ; $58ae: $ff
	rrca                                             ; $58af: $0f
	rst $38                                          ; $58b0: $ff
	inc sp                                           ; $58b1: $33
	rst $38                                          ; $58b2: $ff
	ld b, d                                          ; $58b3: $42
	rst $38                                          ; $58b4: $ff
	add c                                            ; $58b5: $81
	rst $38                                          ; $58b6: $ff
	inc b                                            ; $58b7: $04
	rst $38                                          ; $58b8: $ff
	add hl, bc                                       ; $58b9: $09
	rst $38                                          ; $58ba: $ff
	add hl, de                                       ; $58bb: $19
	rst $38                                          ; $58bc: $ff
	ld [hl], e                                       ; $58bd: $73
	ld a, e                                          ; $58be: $7b
	cp $97                                           ; $58bf: $fe $97

jr_014_58c1:
	di                                               ; $58c1: $f3
	rst $38                                          ; $58c2: $ff
	rst FarCall                                          ; $58c3: $f7
	rst $38                                          ; $58c4: $ff
	ld h, [hl]                                       ; $58c5: $66
	ld a, a                                          ; $58c6: $7f
	inc h                                            ; $58c7: $24
	ccf                                              ; $58c8: $3f
	ld [hl], a                                       ; $58c9: $77
	cp $96                                           ; $58ca: $fe $96
	inc d                                            ; $58cc: $14
	rra                                              ; $58cd: $1f
	inc d                                            ; $58ce: $14
	rra                                              ; $58cf: $1f
	ld a, [de]                                       ; $58d0: $1a
	rra                                              ; $58d1: $1f
	dec bc                                           ; $58d2: $0b
	rrca                                             ; $58d3: $0f
	rlca                                             ; $58d4: $07
	ld l, e                                          ; $58d5: $6b
	sbc b                                            ; $58d6: $98
	rst SubAFromDE                                          ; $58d7: $df
	rrca                                             ; $58d8: $0f
	sub d                                            ; $58d9: $92
	jr nc, jr_014_591b                               ; $58da: $30 $3f

	ret nz                                           ; $58dc: $c0

	rst $38                                          ; $58dd: $ff
	dec b                                            ; $58de: $05
	rst $38                                          ; $58df: $ff
	xor d                                            ; $58e0: $aa
	rst $38                                          ; $58e1: $ff
	ld d, h                                          ; $58e2: $54
	rst $38                                          ; $58e3: $ff
	jr z, @+$01                                      ; $58e4: $28 $ff

	nop                                              ; $58e6: $00
	ld a, e                                          ; $58e7: $7b
	ret z                                            ; $58e8: $c8

	add b                                            ; $58e9: $80
	ld h, c                                          ; $58ea: $61
	rst $38                                          ; $58eb: $ff
	cp a                                             ; $58ec: $bf
	rst $38                                          ; $58ed: $ff
	sub l                                            ; $58ee: $95
	rst $38                                          ; $58ef: $ff
	ret z                                            ; $58f0: $c8

	rst $38                                          ; $58f1: $ff
	push bc                                          ; $58f2: $c5
	rst $38                                          ; $58f3: $ff
	ld l, d                                          ; $58f4: $6a
	ld a, a                                          ; $58f5: $7f

jr_014_58f6:
	ld h, c                                          ; $58f6: $61
	ld a, a                                          ; $58f7: $7f
	ld [hl], l                                       ; $58f8: $75
	ld a, a                                          ; $58f9: $7f
	rst $38                                          ; $58fa: $ff
	rst SubAFromDE                                          ; $58fb: $df
	rst $38                                          ; $58fc: $ff
	adc a                                            ; $58fd: $8f
	cp $e6                                           ; $58fe: $fe $e6
	cp $3e                                           ; $5900: $fe $3e
	sbc $3e                                          ; $5902: $de $3e
	db $f4                                           ; $5904: $f4
	db $f4                                           ; $5905: $f4
	ret nz                                           ; $5906: $c0

	ret nz                                           ; $5907: $c0

	add b                                            ; $5908: $80
	sbc [hl]                                         ; $5909: $9e
	add b                                            ; $590a: $80
	push af                                          ; $590b: $f5
	rst SubAFromDE                                          ; $590c: $df
	rlca                                             ; $590d: $07
	db $dd                                           ; $590e: $dd
	rst $38                                          ; $590f: $ff
	ei                                               ; $5910: $fb
	rst SubAFromDE                                          ; $5911: $df
	ldh a, [$80]                                     ; $5912: $f0 $80
	jr nz, jr_014_58f6                               ; $5914: $20 $e0

	ld c, h                                          ; $5916: $4c
	call z, $fff3                                    ; $5917: $cc $f3 $ff
	ret nz                                           ; $591a: $c0

jr_014_591b:
	rst $38                                          ; $591b: $ff
	ld b, b                                          ; $591c: $40
	cp a                                             ; $591d: $bf
	ld a, a                                          ; $591e: $7f
	add [hl]                                         ; $591f: $86
	sbc a                                            ; $5920: $9f
	rst $38                                          ; $5921: $ff
	ldh a, [c]                                       ; $5922: $f2
	rst $38                                          ; $5923: $ff
	cp [hl]                                          ; $5924: $be
	jp rIE                                         ; $5925: $c3 $ff $ff


	cp l                                             ; $5928: $bd
	xor $d9                                          ; $5929: $ee $d9
	ccf                                              ; $592b: $3f
	ei                                               ; $592c: $fb
	rst JumpTable                                          ; $592d: $c7
	ei                                               ; $592e: $fb
	and [hl]                                         ; $592f: $a6
	cp a                                             ; $5930: $bf
	call nz, $857f                                   ; $5931: $c4 $7f $85
	db $fd                                           ; $5934: $fd
	cp a                                             ; $5935: $bf
	ld sp, hl                                        ; $5936: $f9
	cp [hl]                                          ; $5937: $be
	jp $c7bc                                         ; $5938: $c3 $bc $c7


	or h                                             ; $593b: $b4
	rst GetHLinHL                                          ; $593c: $cf
	ld e, b                                          ; $593d: $58
	rst AddAOntoHL                                          ; $593e: $ef
	ld d, b                                          ; $593f: $50
	rst $38                                          ; $5940: $ff
	ld sp, $e3ff                                     ; $5941: $31 $ff $e3
	rst $38                                          ; $5944: $ff
	ld l, a                                          ; $5945: $6f
	rst $38                                          ; $5946: $ff
	rst SubAFromDE                                          ; $5947: $df
	ccf                                              ; $5948: $3f
	rst $38                                          ; $5949: $ff
	add b                                            ; $594a: $80
	ld a, a                                          ; $594b: $7f
	ldh a, [$7f]                                     ; $594c: $f0 $7f
	ld a, e                                          ; $594e: $7b
	ld c, h                                          ; $594f: $4c
	sbc h                                            ; $5950: $9c
	rra                                              ; $5951: $1f
	rst $38                                          ; $5952: $ff
	ccf                                              ; $5953: $3f
	ld a, e                                          ; $5954: $7b
	cp $9a                                           ; $5955: $fe $9a
	ld a, e                                          ; $5957: $7b
	rst $38                                          ; $5958: $ff
	ld sp, hl                                        ; $5959: $f9
	rst $38                                          ; $595a: $ff
	ld hl, sp+$7b                                    ; $595b: $f8 $7b
	cp $9e                                           ; $595d: $fe $9e
	db $fc                                           ; $595f: $fc
	ld a, e                                          ; $5960: $7b
	cp $95                                           ; $5961: $fe $95
	halt                                             ; $5963: $76
	rst $38                                          ; $5964: $ff
	cp e                                             ; $5965: $bb
	rst $38                                          ; $5966: $ff
	ld a, l                                          ; $5967: $7d
	rst $38                                          ; $5968: $ff
	and $e7                                          ; $5969: $e6 $e7
	add e                                            ; $596b: $83
	add e                                            ; $596c: $83
	ld b, a                                          ; $596d: $47
	inc c                                            ; $596e: $0c
	rst FarCall                                          ; $596f: $f7
	rst SubAFromDE                                          ; $5970: $df
	ld hl, sp-$21                                    ; $5971: $f8 $df
	cp $df                                           ; $5973: $fe $df
	rst $38                                          ; $5975: $ff
	ld c, a                                          ; $5976: $4f
	ldh [$df], a                                     ; $5977: $e0 $df
	add b                                            ; $5979: $80
	sub h                                            ; $597a: $94
	ld b, b                                          ; $597b: $40
	ret nz                                           ; $597c: $c0

	ld b, b                                          ; $597d: $40
	ret nz                                           ; $597e: $c0

	ld a, b                                          ; $597f: $78
	ld hl, sp+$67                                    ; $5980: $f8 $67
	rst $38                                          ; $5982: $ff
	ld h, d                                          ; $5983: $62
	rst $38                                          ; $5984: $ff
	pop de                                           ; $5985: $d1
	ld a, e                                          ; $5986: $7b
	jr c, jr_014_5a08                                ; $5987: $38 $7f

	cp $9c                                           ; $5989: $fe $9c
	jp hl                                            ; $598b: $e9


	rst $38                                          ; $598c: $ff
	push hl                                          ; $598d: $e5
	ld a, e                                          ; $598e: $7b
	cp $98                                           ; $598f: $fe $98
	and h                                            ; $5991: $a4
	rst $38                                          ; $5992: $ff
	sub h                                            ; $5993: $94
	rst $38                                          ; $5994: $ff
	ld [de], a                                       ; $5995: $12
	rst $38                                          ; $5996: $ff
	ld a, [bc]                                       ; $5997: $0a
	ld a, d                                          ; $5998: $7a
	ld [$fe7f], a                                    ; $5999: $ea $7f $fe
	sbc b                                            ; $599c: $98
	inc c                                            ; $599d: $0c
	rst $38                                          ; $599e: $ff
	add $ff                                          ; $599f: $c6 $ff
	add [hl]                                         ; $59a1: $86
	rst $38                                          ; $59a2: $ff
	and a                                            ; $59a3: $a7
	sbc $ff                                          ; $59a4: $de $ff
	adc h                                            ; $59a6: $8c
	rst AddAOntoHL                                          ; $59a7: $ef
	rra                                              ; $59a8: $1f
	rst FarCall                                          ; $59a9: $f7
	rrca                                             ; $59aa: $0f
	rst $38                                          ; $59ab: $ff
	rst $38                                          ; $59ac: $ff
	cp $fe                                           ; $59ad: $fe $fe
	ld c, $fe                                        ; $59af: $0e $fe
	add a                                            ; $59b1: $87
	rst $38                                          ; $59b2: $ff
	jp $e1ff                                         ; $59b3: $c3 $ff $e1


	rst $38                                          ; $59b6: $ff
	ld [hl], b                                       ; $59b7: $70
	rst $38                                          ; $59b8: $ff
	xor b                                            ; $59b9: $a8
	ld a, d                                          ; $59ba: $7a
	or $9e                                           ; $59bb: $f6 $9e
	ld [$f67a], sp                                   ; $59bd: $08 $7a $f6
	ld l, a                                          ; $59c0: $6f
	cp $9a                                           ; $59c1: $fe $9a
	add e                                            ; $59c3: $83
	rst $38                                          ; $59c4: $ff
	rlca                                             ; $59c5: $07
	rst $38                                          ; $59c6: $ff
	rst SubAFromBC                                          ; $59c7: $e7
	sbc $ff                                          ; $59c8: $de $ff
	rst SubAFromDE                                          ; $59ca: $df
	ld a, a                                          ; $59cb: $7f
	rst SubAFromDE                                          ; $59cc: $df
	ccf                                              ; $59cd: $3f
	sbc h                                            ; $59ce: $9c
	ld e, $1f                                        ; $59cf: $1e $1f
	rrca                                             ; $59d1: $0f
	ld a, d                                          ; $59d2: $7a
	ret z                                            ; $59d3: $c8

	pop af                                           ; $59d4: $f1

jr_014_59d5:
	ld e, [hl]                                       ; $59d5: $5e
	cp $f7                                           ; $59d6: $fe $f7
	rst SubAFromDE                                          ; $59d8: $df
	ld b, $96                                        ; $59d9: $06 $96
	add hl, bc                                       ; $59db: $09
	rrca                                             ; $59dc: $0f
	sub c                                            ; $59dd: $91
	sbc a                                            ; $59de: $9f
	ld h, a                                          ; $59df: $67
	rst $38                                          ; $59e0: $ff
	jr @+$01                                         ; $59e1: $18 $ff

	adc h                                            ; $59e3: $8c
	ld a, e                                          ; $59e4: $7b
	cp [hl]                                          ; $59e5: $be
	sbc d                                            ; $59e6: $9a
	adc b                                            ; $59e7: $88
	rst $38                                          ; $59e8: $ff
	or b                                             ; $59e9: $b0
	rst $38                                          ; $59ea: $ff
	ldh [$7b], a                                     ; $59eb: $e0 $7b
	cp $9e                                           ; $59ed: $fe $9e
	pop bc                                           ; $59ef: $c1
	ld a, e                                          ; $59f0: $7b
	ld l, [hl]                                       ; $59f1: $6e
	ld a, a                                          ; $59f2: $7f
	and h                                            ; $59f3: $a4
	adc b                                            ; $59f4: $88
	ld l, l                                          ; $59f5: $6d
	rst $38                                          ; $59f6: $ff
	ld d, l                                          ; $59f7: $55
	rst $38                                          ; $59f8: $ff
	xor a                                            ; $59f9: $af
	rst $38                                          ; $59fa: $ff
	sbc a                                            ; $59fb: $9f
	cp $5f                                           ; $59fc: $fe $5f
	cp $4f                                           ; $59fe: $fe $4f
	rst $38                                          ; $5a00: $ff
	inc hl                                           ; $5a01: $23
	rst $38                                          ; $5a02: $ff
	sbc c                                            ; $5a03: $99
	rst $38                                          ; $5a04: $ff
	add h                                            ; $5a05: $84
	rst $38                                          ; $5a06: $ff
	ld [hl], d                                       ; $5a07: $72

jr_014_5a08:
	ld a, a                                          ; $5a08: $7f
	dec c                                            ; $5a09: $0d
	rrca                                             ; $5a0a: $0f
	ld [bc], a                                       ; $5a0b: $02
	ld a, d                                          ; $5a0c: $7a
	ld [hl], d                                       ; $5a0d: $72
	rst SubAFromDE                                          ; $5a0e: $df
	ldh [$98], a                                     ; $5a0f: $e0 $98
	sbc b                                            ; $5a11: $98
	ld hl, sp-$31                                    ; $5a12: $f8 $cf
	rst $38                                          ; $5a14: $ff
	ld h, e                                          ; $5a15: $63
	rst $38                                          ; $5a16: $ff
	jr nc, @+$7c                                     ; $5a17: $30 $7a

	ld c, b                                          ; $5a19: $48
	sbc [hl]                                         ; $5a1a: $9e
	ld e, $7b                                        ; $5a1b: $1e $7b
	adc b                                            ; $5a1d: $88
	sbc [hl]                                         ; $5a1e: $9e
	ld b, e                                          ; $5a1f: $43
	ld a, d                                          ; $5a20: $7a
	ld [hl], d                                       ; $5a21: $72
	ld a, a                                          ; $5a22: $7f
	ld c, h                                          ; $5a23: $4c
	sbc d                                            ; $5a24: $9a
	adc [hl]                                         ; $5a25: $8e
	rst $38                                          ; $5a26: $ff
	rla                                              ; $5a27: $17
	rst $38                                          ; $5a28: $ff
	dec bc                                           ; $5a29: $0b
	ld a, d                                          ; $5a2a: $7a
	ld e, [hl]                                       ; $5a2b: $5e
	ld [hl], a                                       ; $5a2c: $77
	db $fc                                           ; $5a2d: $fc
	ld a, a                                          ; $5a2e: $7f
	ld e, [hl]                                       ; $5a2f: $5e
	sbc c                                            ; $5a30: $99
	ld h, a                                          ; $5a31: $67
	ld a, a                                          ; $5a32: $7f
	ld a, [hl]                                       ; $5a33: $7e
	ld a, a                                          ; $5a34: $7f
	inc a                                            ; $5a35: $3c
	ccf                                              ; $5a36: $3f
	ld [hl], l                                       ; $5a37: $75
	and b                                            ; $5a38: $a0
	ld l, [hl]                                       ; $5a39: $6e
	ld b, b                                          ; $5a3a: $40
	rst SubAFromDE                                          ; $5a3b: $df
	ld a, a                                          ; $5a3c: $7f
	scf                                              ; $5a3d: $37
	add b                                            ; $5a3e: $80
	rst $38                                          ; $5a3f: $ff
	rst SubAFromDE                                          ; $5a40: $df
	jr nc, jr_014_59d5                               ; $5a41: $30 $92

	ret z                                            ; $5a43: $c8

	ld hl, sp+$08                                    ; $5a44: $f8 $08
	ld hl, sp+$0c                                    ; $5a46: $f8 $0c
	db $fc                                           ; $5a48: $fc
	inc [hl]                                         ; $5a49: $34
	db $fc                                           ; $5a4a: $fc
	call nz, $86fc                                   ; $5a4b: $c4 $fc $86
	cp $79                                           ; $5a4e: $fe $79
	ld a, d                                          ; $5a50: $7a
	ld a, [hl+]                                      ; $5a51: $2a
	ld a, a                                          ; $5a52: $7f
	or h                                             ; $5a53: $b4
	sbc b                                            ; $5a54: $98
	jr nz, @+$01                                     ; $5a55: $20 $ff

	ld b, c                                          ; $5a57: $41
	rst $38                                          ; $5a58: $ff
	add d                                            ; $5a59: $82
	rst $38                                          ; $5a5a: $ff
	ld bc, $fc7b                                     ; $5a5b: $01 $7b $fc
	adc h                                            ; $5a5e: $8c
	push af                                          ; $5a5f: $f5
	ld a, a                                          ; $5a60: $7f
	ld a, [$fd0f]                                    ; $5a61: $fa $0f $fd
	add a                                            ; $5a64: $87
	db $fc                                           ; $5a65: $fc
	add a                                            ; $5a66: $87
	db $f4                                           ; $5a67: $f4
	rrca                                             ; $5a68: $0f
	db $ec                                           ; $5a69: $ec
	sbc a                                            ; $5a6a: $9f
	db $fc                                           ; $5a6b: $fc
	rst $38                                          ; $5a6c: $ff
	ld a, h                                          ; $5a6d: $7c
	rst $38                                          ; $5a6e: $ff
	dec a                                            ; $5a6f: $3d
	rst $38                                          ; $5a70: $ff
	ld a, [$fa7b]                                    ; $5a71: $fa $7b $fa
	ld a, a                                          ; $5a74: $7f
	ld d, h                                          ; $5a75: $54
	ld a, a                                          ; $5a76: $7f
	call c, $4295                                    ; $5a77: $dc $95 $42
	ld a, [hl]                                       ; $5a7a: $7e
	db $e4                                           ; $5a7b: $e4
	db $fc                                           ; $5a7c: $fc
	ld hl, sp-$08                                    ; $5a7d: $f8 $f8
	ld h, b                                          ; $5a7f: $60
	ldh [$a0], a                                     ; $5a80: $e0 $a0
	ldh [rPCM34], a                                  ; $5a82: $e0 $77
	db $fc                                           ; $5a84: $fc
	db $dd                                           ; $5a85: $dd
	ldh [$7e], a                                     ; $5a86: $e0 $7e
	or [hl]                                          ; $5a88: $b6
	db $dd                                           ; $5a89: $dd
	db $fc                                           ; $5a8a: $fc
	rst SubAFromDE                                          ; $5a8b: $df
	ld hl, sp-$21                                    ; $5a8c: $f8 $df
	ldh a, [$df]                                     ; $5a8e: $f0 $df
	ldh [$df], a                                     ; $5a90: $e0 $df
	ldh a, [hDisp0_WX]                                     ; $5a92: $f0 $89
	ld hl, sp-$68                                    ; $5a94: $f8 $98
	ld a, b                                          ; $5a96: $78
	adc b                                            ; $5a97: $88
	db $fc                                           ; $5a98: $fc
	inc c                                            ; $5a99: $0c
	cp $1e                                           ; $5a9a: $fe $1e
	ei                                               ; $5a9c: $fb
	scf                                              ; $5a9d: $37
	rst $38                                          ; $5a9e: $ff
	db $e3                                           ; $5a9f: $e3
	cp $66                                           ; $5aa0: $fe $66
	call c, $ffbc                                    ; $5aa2: $dc $bc $ff
	sbc a                                            ; $5aa5: $9f
	rst $38                                          ; $5aa6: $ff
	rst $38                                          ; $5aa7: $ff
	db $fc                                           ; $5aa8: $fc
	db $fc                                           ; $5aa9: $fc
	ld h, [hl]                                       ; $5aaa: $66
	add [hl]                                         ; $5aab: $86
	ld a, c                                          ; $5aac: $79
	ld a, b                                          ; $5aad: $78
	sub a                                            ; $5aae: $97
	ret nz                                           ; $5aaf: $c0

	ld h, b                                          ; $5ab0: $60
	ldh [hDisp1_SCY], a                                     ; $5ab1: $e0 $90
	ldh a, [$50]                                     ; $5ab3: $f0 $50
	ldh a, [hDisp1_SCY]                                     ; $5ab5: $f0 $90
	ld a, c                                          ; $5ab7: $79
	ldh a, [c]                                       ; $5ab8: $f2
	ld a, a                                          ; $5ab9: $7f
	cp $76                                           ; $5aba: $fe $76
	halt                                             ; $5abc: $76
	ld a, a                                          ; $5abd: $7f
	cp d                                             ; $5abe: $ba
	ld h, a                                          ; $5abf: $67
	db $f4                                           ; $5ac0: $f4
	ld c, l                                          ; $5ac1: $4d
	call nz, Call_014_7eea                           ; $5ac2: $c4 $ea $7e
	and b                                            ; $5ac5: $a0
	sbc c                                            ; $5ac6: $99
	ld e, $18                                        ; $5ac7: $1e $18
	jr nz, jr_014_5aeb                               ; $5ac9: $20 $20

	ld b, b                                          ; $5acb: $40
	ret nz                                           ; $5acc: $c0

	ld a, e                                          ; $5acd: $7b
	or c                                             ; $5ace: $b1
	di                                               ; $5acf: $f3
	ld a, h                                          ; $5ad0: $7c
	sub e                                            ; $5ad1: $93
	sub e                                            ; $5ad2: $93
	jr jr_014_5ad5                                   ; $5ad3: $18 $00

jr_014_5ad5:
	stop                                             ; $5ad5: $10 $00
	jr nc, jr_014_5ad9                               ; $5ad7: $30 $00

jr_014_5ad9:
	jr nz, jr_014_5aeb                               ; $5ad9: $20 $10

	jr nz, jr_014_5add                               ; $5adb: $20 $00

jr_014_5add:
	nop                                              ; $5add: $00
	jr nz, jr_014_5b5b                               ; $5ade: $20 $7b

	cp $f3                                           ; $5ae0: $fe $f3
	ld a, h                                          ; $5ae2: $7c
	sbc h                                            ; $5ae3: $9c
	sbc [hl]                                         ; $5ae4: $9e
	ld b, $78                                        ; $5ae5: $06 $78
	ld l, [hl]                                       ; $5ae7: $6e
	adc [hl]                                         ; $5ae8: $8e
	inc e                                            ; $5ae9: $1c
	nop                                              ; $5aea: $00

jr_014_5aeb:
	jr jr_014_5b05                                   ; $5aeb: $18 $18

	jr nz, jr_014_5b1f                               ; $5aed: $20 $30

	ld b, b                                          ; $5aef: $40
	ld h, b                                          ; $5af0: $60
	db $10                                           ; $5af1: $10
	ld h, b                                          ; $5af2: $60
	add b                                            ; $5af3: $80
	ld b, b                                          ; $5af4: $40
	and b                                            ; $5af5: $a0
	ret nz                                           ; $5af6: $c0

	nop                                              ; $5af7: $00
	add b                                            ; $5af8: $80
	ld b, b                                          ; $5af9: $40
	ld a, e                                          ; $5afa: $7b
	cp e                                             ; $5afb: $bb
	ld h, a                                          ; $5afc: $67
	cp b                                             ; $5afd: $b8
	ld a, l                                          ; $5afe: $7d
	jp c, Jump_014_707c                              ; $5aff: $da $7c $70

	ld a, [hl]                                       ; $5b02: $7e
	sub a                                            ; $5b03: $97
	sbc b                                            ; $5b04: $98

jr_014_5b05:
	db $10                                           ; $5b05: $10
	ld e, $20                                        ; $5b06: $1e $20
	inc e                                            ; $5b08: $1c
	jr nz, @+$3a                                     ; $5b09: $20 $38

	ld b, b                                          ; $5b0b: $40
	ld a, e                                          ; $5b0c: $7b
	call c, $e37b                                    ; $5b0d: $dc $7b $e3
	ld a, e                                          ; $5b10: $7b
	sbc $6f                                          ; $5b11: $de $6f
	pop hl                                           ; $5b13: $e1
	sub a                                            ; $5b14: $97
	rra                                              ; $5b15: $1f
	nop                                              ; $5b16: $00
	ld a, [hl]                                       ; $5b17: $7e
	nop                                              ; $5b18: $00
	ld hl, sp+$00                                    ; $5b19: $f8 $00
	ldh [rP1], a                                     ; $5b1b: $e0 $00
	ld a, e                                          ; $5b1d: $7b
	adc c                                            ; $5b1e: $89

jr_014_5b1f:
	db $ed                                           ; $5b1f: $ed
	sub d                                            ; $5b20: $92
	nop                                              ; $5b21: $00
	db $fd                                           ; $5b22: $fd
	rst SubAFromDE                                          ; $5b23: $df
	ld bc, $0296                                     ; $5b24: $01 $96 $02
	inc bc                                           ; $5b27: $03
	inc b                                            ; $5b28: $04
	rlca                                             ; $5b29: $07
	add hl, bc                                       ; $5b2a: $09
	rrca                                             ; $5b2b: $0f
	ld [de], a                                       ; $5b2c: $12
	rra                                              ; $5b2d: $1f
	inc d                                            ; $5b2e: $14
	ld [hl], e                                       ; $5b2f: $73
	cp $df                                           ; $5b30: $fe $df
	rrca                                             ; $5b32: $0f
	sbc d                                            ; $5b33: $9a
	rlca                                             ; $5b34: $07
	ld b, $05                                        ; $5b35: $06 $05
	rlca                                             ; $5b37: $07
	dec b                                            ; $5b38: $05
	ld a, e                                          ; $5b39: $7b
	db $fc                                           ; $5b3a: $fc
	ld a, a                                          ; $5b3b: $7f
	add sp, -$03                                     ; $5b3c: $e8 $fd
	rst SubAFromDE                                          ; $5b3e: $df
	rst AddAOntoHL                                          ; $5b3f: $ef

jr_014_5b40:
	sub [hl]                                         ; $5b40: $96
	ld de, $04ff                                     ; $5b41: $11 $ff $04
	rst $38                                          ; $5b44: $ff
	ld [hl+], a                                      ; $5b45: $22
	rst $38                                          ; $5b46: $ff
	ld b, l                                          ; $5b47: $45
	rst $38                                          ; $5b48: $ff
	sub d                                            ; $5b49: $92
	ld [hl], e                                       ; $5b4a: $73
	cp $de                                           ; $5b4b: $fe $de
	rst $38                                          ; $5b4d: $ff
	sub [hl]                                         ; $5b4e: $96
	call z, $ce77                                    ; $5b4f: $cc $77 $ce
	rst $38                                          ; $5b52: $ff
	call z, $39ff                                    ; $5b53: $cc $ff $39
	rst $38                                          ; $5b56: $ff
	and a                                            ; $5b57: $a7
	ei                                               ; $5b58: $fb
	rst SubAFromDE                                          ; $5b59: $df
	add b                                            ; $5b5a: $80

jr_014_5b5b:
	sbc d                                            ; $5b5b: $9a
	ld b, b                                          ; $5b5c: $40
	ret nz                                           ; $5b5d: $c0

	ld b, b                                          ; $5b5e: $40
	ret nz                                           ; $5b5f: $c0

	jr nz, jr_014_5b40                               ; $5b60: $20 $de

	ldh [$97], a                                     ; $5b62: $e0 $97
	or b                                             ; $5b64: $b0
	ldh a, [$d0]                                     ; $5b65: $f0 $d0
	ldh a, [$30]                                     ; $5b67: $f0 $30
	ldh a, [$a0]                                     ; $5b69: $f0 $a0
	ldh [rPCM34], a                                  ; $5b6b: $e0 $77
	cp $7f                                           ; $5b6d: $fe $7f
	ldh a, [$7f]                                     ; $5b6f: $f0 $7f
	cp $91                                           ; $5b71: $fe $91
	inc bc                                           ; $5b73: $03
	ld [bc], a                                       ; $5b74: $02
	dec b                                            ; $5b75: $05
	rlca                                             ; $5b76: $07
	rlca                                             ; $5b77: $07
	dec b                                            ; $5b78: $05
	rlca                                             ; $5b79: $07
	inc b                                            ; $5b7a: $04
	rlca                                             ; $5b7b: $07
	inc b                                            ; $5b7c: $04
	rrca                                             ; $5b7d: $0f
	add hl, bc                                       ; $5b7e: $09
	rlca                                             ; $5b7f: $07
	rlca                                             ; $5b80: $07
	db $dd                                           ; $5b81: $dd
	ld bc, $dff9                                     ; $5b82: $01 $f9 $df
	ld bc, $03df                                     ; $5b85: $01 $df $03
	rst $38                                          ; $5b88: $ff
	sub d                                            ; $5b89: $92
	rst $38                                          ; $5b8a: $ff
	push hl                                          ; $5b8b: $e5
	rra                                              ; $5b8c: $1f
	ldh a, [rIF]                                     ; $5b8d: $f0 $0f
	ld sp, hl                                        ; $5b8f: $f9
	cp $87                                           ; $5b90: $fe $87
	rst $38                                          ; $5b92: $ff
	rst $38                                          ; $5b93: $ff
	add hl, bc                                       ; $5b94: $09
	rst $38                                          ; $5b95: $ff
	dec b                                            ; $5b96: $05
	ld [hl], e                                       ; $5b97: $73
	cp $df                                           ; $5b98: $fe $df
	cp $93                                           ; $5b9a: $fe $93
	rst $38                                          ; $5b9c: $ff
	sbc c                                            ; $5b9d: $99
	sbc a                                            ; $5b9e: $9f
	ld sp, hl                                        ; $5b9f: $f9
	jp hl                                            ; $5ba0: $e9


	sbc a                                            ; $5ba1: $9f
	rra                                              ; $5ba2: $1f
	ld sp, hl                                        ; $5ba3: $f9
	pop af                                           ; $5ba4: $f1
	rst $38                                          ; $5ba5: $ff
	ccf                                              ; $5ba6: $3f
	ccf                                              ; $5ba7: $3f
	ld h, a                                          ; $5ba8: $67
	cp b                                             ; $5ba9: $b8
	ld a, a                                          ; $5baa: $7f
	cp $df                                           ; $5bab: $fe $df
	ret nz                                           ; $5bad: $c0

	pop af                                           ; $5bae: $f1
	rst SubAFromDE                                          ; $5baf: $df
	add b                                            ; $5bb0: $80
	rst $38                                          ; $5bb1: $ff
	or l                                             ; $5bb2: $b5
	ld bc, $dffd                                     ; $5bb3: $01 $fd $df
	ld bc, $0296                                     ; $5bb6: $01 $96 $02
	inc bc                                           ; $5bb9: $03
	inc b                                            ; $5bba: $04
	rlca                                             ; $5bbb: $07
	add hl, bc                                       ; $5bbc: $09
	rrca                                             ; $5bbd: $0f
	ld [de], a                                       ; $5bbe: $12
	rra                                              ; $5bbf: $1f
	inc d                                            ; $5bc0: $14
	ld [hl], e                                       ; $5bc1: $73
	cp $df                                           ; $5bc2: $fe $df
	rrca                                             ; $5bc4: $0f
	sbc d                                            ; $5bc5: $9a
	rlca                                             ; $5bc6: $07
	ld b, $05                                        ; $5bc7: $06 $05
	rlca                                             ; $5bc9: $07
	dec b                                            ; $5bca: $05
	ld a, e                                          ; $5bcb: $7b
	db $fc                                           ; $5bcc: $fc
	ld a, a                                          ; $5bcd: $7f
	add sp, -$03                                     ; $5bce: $e8 $fd
	rst SubAFromDE                                          ; $5bd0: $df
	rst AddAOntoHL                                          ; $5bd1: $ef

jr_014_5bd2:
	sub [hl]                                         ; $5bd2: $96
	ld de, $04ff                                     ; $5bd3: $11 $ff $04
	rst $38                                          ; $5bd6: $ff
	ld [hl+], a                                      ; $5bd7: $22
	rst $38                                          ; $5bd8: $ff
	ld b, l                                          ; $5bd9: $45
	rst $38                                          ; $5bda: $ff
	sub d                                            ; $5bdb: $92
	ld [hl], e                                       ; $5bdc: $73
	cp $de                                           ; $5bdd: $fe $de
	rst $38                                          ; $5bdf: $ff
	sub [hl]                                         ; $5be0: $96
	call z, $ce77                                    ; $5be1: $cc $77 $ce
	rst $38                                          ; $5be4: $ff
	call z, $39ff                                    ; $5be5: $cc $ff $39
	rst $38                                          ; $5be8: $ff
	and a                                            ; $5be9: $a7
	ei                                               ; $5bea: $fb
	rst SubAFromDE                                          ; $5beb: $df
	add b                                            ; $5bec: $80
	sbc d                                            ; $5bed: $9a
	ld b, b                                          ; $5bee: $40
	ret nz                                           ; $5bef: $c0

	ld b, b                                          ; $5bf0: $40
	ret nz                                           ; $5bf1: $c0

	jr nz, jr_014_5bd2                               ; $5bf2: $20 $de

	ldh [$97], a                                     ; $5bf4: $e0 $97
	or b                                             ; $5bf6: $b0
	ldh a, [$d0]                                     ; $5bf7: $f0 $d0
	ldh a, [$30]                                     ; $5bf9: $f0 $30
	ldh a, [$a0]                                     ; $5bfb: $f0 $a0
	ldh [rPCM34], a                                  ; $5bfd: $e0 $77
	cp $7f                                           ; $5bff: $fe $7f
	ldh a, [$7f]                                     ; $5c01: $f0 $7f
	cp $91                                           ; $5c03: $fe $91
	inc bc                                           ; $5c05: $03
	ld [bc], a                                       ; $5c06: $02
	dec b                                            ; $5c07: $05
	rlca                                             ; $5c08: $07
	rlca                                             ; $5c09: $07
	dec b                                            ; $5c0a: $05
	rlca                                             ; $5c0b: $07
	inc b                                            ; $5c0c: $04
	rlca                                             ; $5c0d: $07
	inc b                                            ; $5c0e: $04

jr_014_5c0f:
	rrca                                             ; $5c0f: $0f
	add hl, bc                                       ; $5c10: $09
	rlca                                             ; $5c11: $07
	rlca                                             ; $5c12: $07
	db $dd                                           ; $5c13: $dd
	ld bc, $dff9                                     ; $5c14: $01 $f9 $df
	ld bc, $03df                                     ; $5c17: $01 $df $03
	rst $38                                          ; $5c1a: $ff
	sub d                                            ; $5c1b: $92
	rst $38                                          ; $5c1c: $ff
	push hl                                          ; $5c1d: $e5
	rra                                              ; $5c1e: $1f
	ldh a, [rIF]                                     ; $5c1f: $f0 $0f
	ld sp, hl                                        ; $5c21: $f9
	cp $87                                           ; $5c22: $fe $87
	rst $38                                          ; $5c24: $ff
	rst $38                                          ; $5c25: $ff
	add hl, bc                                       ; $5c26: $09
	rst $38                                          ; $5c27: $ff
	dec b                                            ; $5c28: $05
	ld [hl], e                                       ; $5c29: $73
	cp $df                                           ; $5c2a: $fe $df
	cp $93                                           ; $5c2c: $fe $93
	rst $38                                          ; $5c2e: $ff
	sbc c                                            ; $5c2f: $99
	sbc a                                            ; $5c30: $9f
	ld sp, hl                                        ; $5c31: $f9
	jp hl                                            ; $5c32: $e9


	sbc a                                            ; $5c33: $9f
	rra                                              ; $5c34: $1f
	ld sp, hl                                        ; $5c35: $f9
	pop af                                           ; $5c36: $f1
	rst $38                                          ; $5c37: $ff
	ccf                                              ; $5c38: $3f
	ccf                                              ; $5c39: $3f
	ld h, a                                          ; $5c3a: $67
	cp b                                             ; $5c3b: $b8
	ld a, a                                          ; $5c3c: $7f
	cp $df                                           ; $5c3d: $fe $df
	ret nz                                           ; $5c3f: $c0

	pop af                                           ; $5c40: $f1
	rst SubAFromDE                                          ; $5c41: $df
	add b                                            ; $5c42: $80
	ccf                                              ; $5c43: $3f
	ret nz                                           ; $5c44: $c0

	adc a                                            ; $5c45: $8f
	ld [bc], a                                       ; $5c46: $02
	cp $fc                                           ; $5c47: $fe $fc
	db $fc                                           ; $5c49: $fc
	ld a, h                                          ; $5c4a: $7c
	ld h, h                                          ; $5c4b: $64
	ld a, $26                                        ; $5c4c: $3e $26
	dec h                                            ; $5c4e: $25
	ccf                                              ; $5c4f: $3f
	rst $38                                          ; $5c50: $ff
	rst SubAFromBC                                          ; $5c51: $e7
	rst JumpTable                                          ; $5c52: $c7
	rst $38                                          ; $5c53: $ff
	ld a, h                                          ; $5c54: $7c
	ld a, h                                          ; $5c55: $7c
	rlca                                             ; $5c56: $07
	ret nz                                           ; $5c57: $c0

	rst SubAFromDE                                          ; $5c58: $df
	ld b, b                                          ; $5c59: $40
	ld a, a                                          ; $5c5a: $7f
	rst SubAFromDE                                          ; $5c5b: $df
	sbc c                                            ; $5c5c: $99
	pop af                                           ; $5c5d: $f1
	sub c                                            ; $5c5e: $91
	ld [hl], d                                       ; $5c5f: $72
	ld d, e                                          ; $5c60: $53
	inc [hl]                                         ; $5c61: $34
	scf                                              ; $5c62: $37
	ld c, a                                          ; $5c63: $4f

jr_014_5c64:
	nop                                              ; $5c64: $00
	sbc c                                            ; $5c65: $99
	ld [hl], l                                       ; $5c66: $75
	ld [hl], a                                       ; $5c67: $77
	push af                                          ; $5c68: $f5
	sub [hl]                                         ; $5c69: $96
	ld h, l                                          ; $5c6a: $65
	ld h, a                                          ; $5c6b: $67
	ld l, a                                          ; $5c6c: $6f
	nop                                              ; $5c6d: $00
	rst SubAFromDE                                          ; $5c6e: $df
	ld b, $99                                        ; $5c6f: $06 $99
	adc a                                            ; $5c71: $8f
	adc c                                            ; $5c72: $89
	ld e, [hl]                                       ; $5c73: $5e
	sub $58                                          ; $5c74: $d6 $58
	ret c                                            ; $5c76: $d8

	ld e, a                                          ; $5c77: $5f
	jr nz, jr_014_5c0f                               ; $5c78: $20 $95

	and h                                            ; $5c7a: $a4
	db $e4                                           ; $5c7b: $e4
	xor [hl]                                         ; $5c7c: $ae
	ld [$e5a7], a                                    ; $5c7d: $ea $a7 $e5
	ld [hl+], a                                      ; $5c80: $22
	ldh [c], a                                       ; $5c81: $e2
	jr nz, jr_014_5c64                               ; $5c82: $20 $e0

	ei                                               ; $5c84: $fb
	rst SubAFromDE                                          ; $5c85: $df
	ld sp, $7a9a                                     ; $5c86: $31 $9a $7a
	ld c, e                                          ; $5c89: $4b
	ld [hl-], a                                      ; $5c8a: $32
	inc sp                                           ; $5c8b: $33
	inc b                                            ; $5c8c: $04
	sbc $07                                          ; $5c8d: $de $07
	sbc c                                            ; $5c8f: $99
	dec c                                            ; $5c90: $0d
	rrca                                             ; $5c91: $0f
	dec bc                                           ; $5c92: $0b
	rrca                                             ; $5c93: $0f
	inc c                                            ; $5c94: $0c
	rrca                                             ; $5c95: $0f
	ld a, d                                          ; $5c96: $7a
	jp nz, $0b6f                                     ; $5c97: $c2 $6f $0b

	sbc [hl]                                         ; $5c9a: $9e
	rlca                                             ; $5c9b: $07
	db $fd                                           ; $5c9c: $fd
	rst SubAFromDE                                          ; $5c9d: $df
	rst FarCall                                          ; $5c9e: $f7
	sub [hl]                                         ; $5c9f: $96
	adc b                                            ; $5ca0: $88
	rst $38                                          ; $5ca1: $ff
	jr nz, @+$01                                     ; $5ca2: $20 $ff

	ld b, h                                          ; $5ca4: $44
	rst $38                                          ; $5ca5: $ff
	and d                                            ; $5ca6: $a2
	rst $38                                          ; $5ca7: $ff
	ld c, c                                          ; $5ca8: $49
	ld [hl], e                                       ; $5ca9: $73
	cp $de                                           ; $5caa: $fe $de
	rst $38                                          ; $5cac: $ff
	sub [hl]                                         ; $5cad: $96
	inc sp                                           ; $5cae: $33
	xor $73                                          ; $5caf: $ee $73
	rst $38                                          ; $5cb1: $ff
	inc sp                                           ; $5cb2: $33
	rst $38                                          ; $5cb3: $ff
	add h                                            ; $5cb4: $84
	rst $38                                          ; $5cb5: $ff
	pop bc                                           ; $5cb6: $c1
	ld l, a                                          ; $5cb7: $6f
	sub $77                                          ; $5cb8: $d6 $77
	call nc, $f276                                   ; $5cba: $d4 $76 $f2
	ld e, [hl]                                       ; $5cbd: $5e
	db $e4                                           ; $5cbe: $e4
	ld h, [hl]                                       ; $5cbf: $66
	sub $7f                                          ; $5cc0: $d6 $7f
	add hl, sp                                       ; $5cc2: $39
	ld a, a                                          ; $5cc3: $7f
	dec e                                            ; $5cc4: $1d
	sub d                                            ; $5cc5: $92

jr_014_5cc6:
	ret nz                                           ; $5cc6: $c0

	rst $38                                          ; $5cc7: $ff
	rst $38                                          ; $5cc8: $ff
	ld sp, $9fff                                     ; $5cc9: $31 $ff $9f
	ld hl, sp-$31                                    ; $5ccc: $f8 $cf
	ld hl, sp-$11                                    ; $5cce: $f8 $ef
	or b                                             ; $5cd0: $b0
	rst $38                                          ; $5cd1: $ff
	and b                                            ; $5cd2: $a0
	db $dd                                           ; $5cd3: $dd
	rst $38                                          ; $5cd4: $ff
	sub a                                            ; $5cd5: $97
	adc b                                            ; $5cd6: $88
	ld a, a                                          ; $5cd7: $7f
	sbc h                                            ; $5cd8: $9c
	inc a                                            ; $5cd9: $3c
	rst $38                                          ; $5cda: $ff
	cp a                                             ; $5cdb: $bf
	db $fc                                           ; $5cdc: $fc
	cp $7a                                           ; $5cdd: $fe $7a
	ldh [$7e], a                                     ; $5cdf: $e0 $7e
	adc d                                            ; $5ce1: $8a
	db $dd                                           ; $5ce2: $dd
	ret nz                                           ; $5ce3: $c0

	push de                                          ; $5ce4: $d5
	add b                                            ; $5ce5: $80
	ld [hl], a                                       ; $5ce6: $77
	jr z, jr_014_5cc6                                ; $5ce7: $28 $dd

	add b                                            ; $5ce9: $80
	halt                                             ; $5cea: $76
	ld l, [hl]                                       ; $5ceb: $6e
	rst SubAFromDE                                          ; $5cec: $df
	ldh [rIE], a                                     ; $5ced: $e0 $ff
	rst SubAFromDE                                          ; $5cef: $df
	inc c                                            ; $5cf0: $0c
	sub e                                            ; $5cf1: $93
	ld e, $12                                        ; $5cf2: $1e $12
	dec e                                            ; $5cf4: $1d
	dec e                                            ; $5cf5: $1d
	ld [bc], a                                       ; $5cf6: $02
	inc bc                                           ; $5cf7: $03
	ld b, d                                          ; $5cf8: $42
	ld b, e                                          ; $5cf9: $43
	db $e4                                           ; $5cfa: $e4
	and a                                            ; $5cfb: $a7
	rst JumpTable                                          ; $5cfc: $c7
	rst JumpTable                                          ; $5cfd: $c7
	ld b, a                                          ; $5cfe: $47
	ld h, b                                          ; $5cff: $60
	ld l, a                                          ; $5d00: $6f
	or $7f                                           ; $5d01: $f6 $7f
	db $10                                           ; $5d03: $10
	ld a, e                                          ; $5d04: $7b
	cp $9c                                           ; $5d05: $fe $9c
	inc b                                            ; $5d07: $04
	inc bc                                           ; $5d08: $03
	ld [bc], a                                       ; $5d09: $02
	ld e, [hl]                                       ; $5d0a: $5e
	ld h, d                                          ; $5d0b: $62
	ld l, a                                          ; $5d0c: $6f
	ld a, d                                          ; $5d0d: $7a
	ld [hl], a                                       ; $5d0e: $77
	add b                                            ; $5d0f: $80
	sub [hl]                                         ; $5d10: $96
	add b                                            ; $5d11: $80
	rst $38                                          ; $5d12: $ff
	ret nz                                           ; $5d13: $c0

	ld a, a                                          ; $5d14: $7f
	rst $38                                          ; $5d15: $ff
	ld hl, $7fff                                     ; $5d16: $21 $ff $7f
	add b                                            ; $5d19: $80
	ld a, e                                          ; $5d1a: $7b
	add h                                            ; $5d1b: $84
	ld [hl], a                                       ; $5d1c: $77
	cp $df                                           ; $5d1d: $fe $df
	ld a, a                                          ; $5d1f: $7f
	ld a, [hl]                                       ; $5d20: $7e
	ld h, b                                          ; $5d21: $60
	sub l                                            ; $5d22: $95
	ld sp, hl                                        ; $5d23: $f9
	sbc a                                            ; $5d24: $9f
	sub a                                            ; $5d25: $97
	ld sp, hl                                        ; $5d26: $f9
	ld hl, sp-$61                                    ; $5d27: $f8 $9f
	adc a                                            ; $5d29: $8f
	rst $38                                          ; $5d2a: $ff
	db $fc                                           ; $5d2b: $fc
	db $fc                                           ; $5d2c: $fc
	scf                                              ; $5d2d: $37
	add b                                            ; $5d2e: $80
	ld h, [hl]                                       ; $5d2f: $66
	and d                                            ; $5d30: $a2
	halt                                             ; $5d31: $76
	adc [hl]                                         ; $5d32: $8e
	ld l, e                                          ; $5d33: $6b
	and d                                            ; $5d34: $a2
	ld a, d                                          ; $5d35: $7a
	ld [bc], a                                       ; $5d36: $02
	rst SubAFromDE                                          ; $5d37: $df
	rrca                                             ; $5d38: $0f
	pop af                                           ; $5d39: $f1
	ld e, e                                          ; $5d3a: $5b
	and b                                            ; $5d3b: $a0
	sbc l                                            ; $5d3c: $9d
	and c                                            ; $5d3d: $a1
	rst $38                                          ; $5d3e: $ff
	ld a, e                                          ; $5d3f: $7b
	ld hl, sp+$77                                    ; $5d40: $f8 $77
	and d                                            ; $5d42: $a2
	adc a                                            ; $5d43: $8f
	ld b, b                                          ; $5d44: $40
	ld a, a                                          ; $5d45: $7f
	ccf                                              ; $5d46: $3f
	ccf                                              ; $5d47: $3f
	ld a, $22                                        ; $5d48: $3e $22
	ld a, a                                          ; $5d4a: $7f
	ld [hl], e                                       ; $5d4b: $73
	ld e, c                                          ; $5d4c: $59
	ld a, a                                          ; $5d4d: $7f
	rst $38                                          ; $5d4e: $ff
	ld sp, hl                                        ; $5d4f: $f9
	ld hl, sp-$01                                    ; $5d50: $f8 $ff
	rrca                                             ; $5d52: $0f
	rrca                                             ; $5d53: $0f
	ld [hl], a                                       ; $5d54: $77
	and b                                            ; $5d55: $a0
	ld a, [hl]                                       ; $5d56: $7e
	ld e, [hl]                                       ; $5d57: $5e
	sbc c                                            ; $5d58: $99
	ldh a, [hDisp1_SCY]                                     ; $5d59: $f0 $90
	ld hl, sp-$38                                    ; $5d5b: $f8 $c8
	or b                                             ; $5d5d: $b0
	or b                                             ; $5d5e: $b0
	ld c, a                                          ; $5d5f: $4f
	and b                                            ; $5d60: $a0
	ld a, e                                          ; $5d61: $7b
	add sp, -$64                                     ; $5d62: $e8 $9c
	ldh [$80], a                                     ; $5d64: $e0 $80
	add b                                            ; $5d66: $80
	and e                                            ; $5d67: $a3
	nop                                              ; $5d68: $00
	sub c                                            ; $5d69: $91
	inc bc                                           ; $5d6a: $03
	ld [bc], a                                       ; $5d6b: $02
	dec b                                            ; $5d6c: $05
	rlca                                             ; $5d6d: $07
	rlca                                             ; $5d6e: $07
	dec b                                            ; $5d6f: $05
	rlca                                             ; $5d70: $07
	inc b                                            ; $5d71: $04
	rlca                                             ; $5d72: $07
	inc b                                            ; $5d73: $04
	rrca                                             ; $5d74: $0f
	add hl, bc                                       ; $5d75: $09
	rlca                                             ; $5d76: $07
	rlca                                             ; $5d77: $07
	db $dd                                           ; $5d78: $dd
	ld bc, $dff9                                     ; $5d79: $01 $f9 $df
	ld bc, $03df                                     ; $5d7c: $01 $df $03
	rst $38                                          ; $5d7f: $ff
	sub d                                            ; $5d80: $92
	rst $38                                          ; $5d81: $ff
	push hl                                          ; $5d82: $e5
	rra                                              ; $5d83: $1f
	ldh a, [rIF]                                     ; $5d84: $f0 $0f
	ld sp, hl                                        ; $5d86: $f9
	cp $87                                           ; $5d87: $fe $87
	rst $38                                          ; $5d89: $ff
	rst $38                                          ; $5d8a: $ff
	add hl, bc                                       ; $5d8b: $09
	rst $38                                          ; $5d8c: $ff
	dec b                                            ; $5d8d: $05
	ld [hl], e                                       ; $5d8e: $73
	cp $df                                           ; $5d8f: $fe $df
	cp $8e                                           ; $5d91: $fe $8e
	rst $38                                          ; $5d93: $ff
	sbc c                                            ; $5d94: $99
	sbc a                                            ; $5d95: $9f
	ld sp, hl                                        ; $5d96: $f9
	jp hl                                            ; $5d97: $e9


	sbc a                                            ; $5d98: $9f
	rra                                              ; $5d99: $1f
	ld sp, hl                                        ; $5d9a: $f9
	pop af                                           ; $5d9b: $f1
	rst $38                                          ; $5d9c: $ff
	ccf                                              ; $5d9d: $3f
	ccf                                              ; $5d9e: $3f
	and b                                            ; $5d9f: $a0
	ldh [$a0], a                                     ; $5da0: $e0 $a0
	ldh [rAUD4LEN], a                                ; $5da2: $e0 $20
	ld [hl], e                                       ; $5da4: $73
	cp $df                                           ; $5da5: $fe $df
	ret nz                                           ; $5da7: $c0

	pop af                                           ; $5da8: $f1
	rst SubAFromDE                                          ; $5da9: $df
	add b                                            ; $5daa: $80
	ccf                                              ; $5dab: $3f
	ret nz                                           ; $5dac: $c0

	adc a                                            ; $5dad: $8f
	ld [bc], a                                       ; $5dae: $02
	cp $fc                                           ; $5daf: $fe $fc
	db $fc                                           ; $5db1: $fc
	ld a, h                                          ; $5db2: $7c
	ld h, h                                          ; $5db3: $64
	ld a, $26                                        ; $5db4: $3e $26
	dec h                                            ; $5db6: $25
	ccf                                              ; $5db7: $3f
	rst $38                                          ; $5db8: $ff
	rst SubAFromBC                                          ; $5db9: $e7
	rst JumpTable                                          ; $5dba: $c7
	rst $38                                          ; $5dbb: $ff
	ld a, h                                          ; $5dbc: $7c
	ld a, h                                          ; $5dbd: $7c
	rlca                                             ; $5dbe: $07
	ret nz                                           ; $5dbf: $c0

	ld l, a                                          ; $5dc0: $6f
	halt                                             ; $5dc1: $76
	sub [hl]                                         ; $5dc2: $96
	ld [bc], a                                       ; $5dc3: $02
	inc bc                                           ; $5dc4: $03
	inc b                                            ; $5dc5: $04
	rlca                                             ; $5dc6: $07
	add hl, bc                                       ; $5dc7: $09
	rrca                                             ; $5dc8: $0f
	ld [de], a                                       ; $5dc9: $12
	rra                                              ; $5dca: $1f
	inc d                                            ; $5dcb: $14
	ld [hl], e                                       ; $5dcc: $73
	cp $df                                           ; $5dcd: $fe $df
	rrca                                             ; $5dcf: $0f
	sbc d                                            ; $5dd0: $9a
	rlca                                             ; $5dd1: $07
	ld b, $05                                        ; $5dd2: $06 $05
	ld b, $05                                        ; $5dd4: $06 $05
	ld a, e                                          ; $5dd6: $7b
	ld c, c                                          ; $5dd7: $49
	ld a, a                                          ; $5dd8: $7f
	add sp, -$03                                     ; $5dd9: $e8 $fd
	rst SubAFromDE                                          ; $5ddb: $df

jr_014_5ddc:
	rst AddAOntoHL                                          ; $5ddc: $ef
	sub [hl]                                         ; $5ddd: $96
	ld de, $04ff                                     ; $5dde: $11 $ff $04
	rst $38                                          ; $5de1: $ff
	ld [hl+], a                                      ; $5de2: $22
	rst $38                                          ; $5de3: $ff
	ld b, l                                          ; $5de4: $45
	rst $38                                          ; $5de5: $ff
	sub d                                            ; $5de6: $92
	ld [hl], e                                       ; $5de7: $73
	cp $de                                           ; $5de8: $fe $de
	rst $38                                          ; $5dea: $ff
	ld a, a                                          ; $5deb: $7f
	adc b                                            ; $5dec: $88
	sbc b                                            ; $5ded: $98
	call z, $ceff                                    ; $5dee: $cc $ff $ce
	rst $38                                          ; $5df1: $ff
	add hl, sp                                       ; $5df2: $39
	rst $38                                          ; $5df3: $ff
	and a                                            ; $5df4: $a7
	ld h, a                                          ; $5df5: $67
	or [hl]                                          ; $5df6: $b6
	sbc d                                            ; $5df7: $9a
	ld b, b                                          ; $5df8: $40
	ret nz                                           ; $5df9: $c0

	ld b, b                                          ; $5dfa: $40
	ret nz                                           ; $5dfb: $c0

	jr nz, jr_014_5ddc                               ; $5dfc: $20 $de

	ldh [$99], a                                     ; $5dfe: $e0 $99
	or b                                             ; $5e00: $b0
	ldh a, [$d0]                                     ; $5e01: $f0 $d0
	ldh a, [$30]                                     ; $5e03: $f0 $30
	ldh a, [rPCM34]                                  ; $5e05: $f0 $77
	adc d                                            ; $5e07: $8a
	ld l, a                                          ; $5e08: $6f
	adc b                                            ; $5e09: $88
	sbc a                                            ; $5e0a: $9f
	nop                                              ; $5e0b: $00
	ei                                               ; $5e0c: $fb
	rst SubAFromDE                                          ; $5e0d: $df
	ld bc, $0298                                     ; $5e0e: $01 $98 $02
	inc bc                                           ; $5e11: $03
	ld [bc], a                                       ; $5e12: $02
	inc bc                                           ; $5e13: $03
	dec b                                            ; $5e14: $05
	rlca                                             ; $5e15: $07
	ld b, $7b                                        ; $5e16: $06 $7b
	cp $7f                                           ; $5e18: $fe $7f
	ld a, [$0f9b]                                    ; $5e1a: $fa $9b $0f
	ld c, $07                                        ; $5e1d: $0e $07
	rlca                                             ; $5e1f: $07
	ld a, e                                          ; $5e20: $7b
	pop af                                           ; $5e21: $f1
	ld a, e                                          ; $5e22: $7b
	ldh a, [$7f]                                     ; $5e23: $f0 $7f
	cp $80                                           ; $5e25: $fe $80
	ld a, [bc]                                       ; $5e27: $0a
	dec de                                           ; $5e28: $1b
	inc b                                            ; $5e29: $04
	ld c, $7b                                        ; $5e2a: $0e $7b
	ld a, a                                          ; $5e2c: $7f
	add h                                            ; $5e2d: $84

jr_014_5e2e:
	rst $38                                          ; $5e2e: $ff
	ld l, h                                          ; $5e2f: $6c

jr_014_5e30:
	rst $38                                          ; $5e30: $ff
	jp nc, $15ff                                     ; $5e31: $d2 $ff $15

	rst $38                                          ; $5e34: $ff
	or h                                             ; $5e35: $b4
	rst AddAOntoHL                                          ; $5e36: $ef
	or l                                             ; $5e37: $b5

jr_014_5e38:
	rst AddAOntoHL                                          ; $5e38: $ef
	or a                                             ; $5e39: $b7
	ld c, e                                          ; $5e3a: $4b
	rst $38                                          ; $5e3b: $ff
	call $ce77                                       ; $5e3c: $cd $77 $ce
	rst $38                                          ; $5e3f: $ff
	call z, $cdff                                    ; $5e40: $cc $ff $cd
	rst $38                                          ; $5e43: $ff
	ld sp, $9efe                                     ; $5e44: $31 $fe $9e
	add e                                            ; $5e47: $83
	ei                                               ; $5e48: $fb
	rst SubAFromDE                                          ; $5e49: $df
	ret nz                                           ; $5e4a: $c0

	sub [hl]                                         ; $5e4b: $96
	jr nz, jr_014_5e2e                               ; $5e4c: $20 $e0

	jr nz, jr_014_5e30                               ; $5e4e: $20 $e0

	db $10                                           ; $5e50: $10
	ldh a, [hDisp1_SCY]                                     ; $5e51: $f0 $90
	ldh a, [$50]                                     ; $5e53: $f0 $50
	ld a, e                                          ; $5e55: $7b
	cp $9e                                           ; $5e56: $fe $9e
	jr nc, jr_014_5e38                               ; $5e58: $30 $de

	ldh a, [$7f]                                     ; $5e5a: $f0 $7f
	or $99                                           ; $5e5c: $f6 $99
	ld c, b                                          ; $5e5e: $48
	ld hl, sp+$48                                    ; $5e5f: $f8 $48
	ld hl, sp-$70                                    ; $5e61: $f8 $90
	ldh a, [rPCM34]                                  ; $5e63: $f0 $77
	cp d                                             ; $5e65: $ba
	sbc [hl]                                         ; $5e66: $9e
	inc b                                            ; $5e67: $04
	ld a, e                                          ; $5e68: $7b
	or d                                             ; $5e69: $b2
	db $dd                                           ; $5e6a: $dd
	ld bc, $9877                                     ; $5e6b: $01 $77 $98
	db $db                                           ; $5e6e: $db
	ld bc, $8c6f                                     ; $5e6f: $01 $6f $8c
	rst SubAFromDE                                          ; $5e72: $df
	inc bc                                           ; $5e73: $03
	rst $38                                          ; $5e74: $ff
	adc e                                            ; $5e75: $8b
	ld a, l                                          ; $5e76: $7d
	rst $38                                          ; $5e77: $ff
	ld b, l                                          ; $5e78: $45
	rst $38                                          ; $5e79: $ff
	sub d                                            ; $5e7a: $92
	rst AddAOntoHL                                          ; $5e7b: $ef
	push bc                                          ; $5e7c: $c5
	cp $ff                                           ; $5e7d: $fe $ff
	ld a, c                                          ; $5e7f: $79
	rst $38                                          ; $5e80: $ff
	inc sp                                           ; $5e81: $33
	db $fd                                           ; $5e82: $fd
	and a                                            ; $5e83: $a7
	ld a, b                                          ; $5e84: $78
	rst $38                                          ; $5e85: $ff
	nop                                              ; $5e86: $00
	rst $38                                          ; $5e87: $ff
	and l                                            ; $5e88: $a5
	ld e, d                                          ; $5e89: $5a
	sbc $ff                                          ; $5e8a: $de $ff
	adc b                                            ; $5e8c: $88
	reti                                             ; $5e8d: $d9


	cp a                                             ; $5e8e: $bf
	rst $38                                          ; $5e8f: $ff
	add hl, de                                       ; $5e90: $19
	rst $38                                          ; $5e91: $ff
	pop af                                           ; $5e92: $f1
	rst $38                                          ; $5e93: $ff
	ccf                                              ; $5e94: $3f
	ccf                                              ; $5e95: $3f
	ret nc                                           ; $5e96: $d0

	ldh a, [$28]                                     ; $5e97: $f0 $28
	ld hl, sp+$28                                    ; $5e99: $f8 $28
	ld hl, sp+$50                                    ; $5e9b: $f8 $50
	ldh a, [$a0]                                     ; $5e9d: $f0 $a0
	ldh [$c0], a                                     ; $5e9f: $e0 $c0
	ret nz                                           ; $5ea1: $c0

	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	reti                                             ; $5ea4: $d9


	add b                                            ; $5ea5: $80
	ei                                               ; $5ea6: $fb
	ld [hl], a                                       ; $5ea7: $77
	ld hl, sp-$50                                    ; $5ea8: $f8 $b0
	nop                                              ; $5eaa: $00
	ei                                               ; $5eab: $fb
	rst SubAFromDE                                          ; $5eac: $df
	ld bc, $0298                                     ; $5ead: $01 $98 $02
	inc bc                                           ; $5eb0: $03
	ld [bc], a                                       ; $5eb1: $02
	inc bc                                           ; $5eb2: $03
	dec b                                            ; $5eb3: $05
	rlca                                             ; $5eb4: $07
	ld b, $7b                                        ; $5eb5: $06 $7b
	cp $7f                                           ; $5eb7: $fe $7f
	ld a, [$0f9b]                                    ; $5eb9: $fa $9b $0f
	ld c, $07                                        ; $5ebc: $0e $07
	rlca                                             ; $5ebe: $07
	ld a, e                                          ; $5ebf: $7b
	pop af                                           ; $5ec0: $f1
	ld a, e                                          ; $5ec1: $7b
	ldh a, [$7f]                                     ; $5ec2: $f0 $7f
	cp $80                                           ; $5ec4: $fe $80
	ld a, [bc]                                       ; $5ec6: $0a
	dec de                                           ; $5ec7: $1b
	inc b                                            ; $5ec8: $04
	ld c, $7b                                        ; $5ec9: $0e $7b
	ld a, a                                          ; $5ecb: $7f
	add h                                            ; $5ecc: $84

jr_014_5ecd:
	rst $38                                          ; $5ecd: $ff
	ld l, h                                          ; $5ece: $6c

jr_014_5ecf:
	rst $38                                          ; $5ecf: $ff
	jp nc, $15ff                                     ; $5ed0: $d2 $ff $15

	rst $38                                          ; $5ed3: $ff
	or h                                             ; $5ed4: $b4
	rst AddAOntoHL                                          ; $5ed5: $ef
	or l                                             ; $5ed6: $b5

jr_014_5ed7:
	rst AddAOntoHL                                          ; $5ed7: $ef
	or a                                             ; $5ed8: $b7
	ld c, e                                          ; $5ed9: $4b
	rst $38                                          ; $5eda: $ff
	call $ce77                                       ; $5edb: $cd $77 $ce
	rst $38                                          ; $5ede: $ff
	call z, $cdff                                    ; $5edf: $cc $ff $cd
	rst $38                                          ; $5ee2: $ff
	ld sp, $9efe                                     ; $5ee3: $31 $fe $9e
	add e                                            ; $5ee6: $83
	ei                                               ; $5ee7: $fb
	rst SubAFromDE                                          ; $5ee8: $df
	ret nz                                           ; $5ee9: $c0

	sub [hl]                                         ; $5eea: $96
	jr nz, jr_014_5ecd                               ; $5eeb: $20 $e0

	jr nz, jr_014_5ecf                               ; $5eed: $20 $e0

	db $10                                           ; $5eef: $10
	ldh a, [hDisp1_SCY]                                     ; $5ef0: $f0 $90
	ldh a, [$50]                                     ; $5ef2: $f0 $50
	ld a, e                                          ; $5ef4: $7b
	cp $9e                                           ; $5ef5: $fe $9e
	jr nc, jr_014_5ed7                               ; $5ef7: $30 $de

	ldh a, [$7f]                                     ; $5ef9: $f0 $7f
	or $99                                           ; $5efb: $f6 $99
	ld c, b                                          ; $5efd: $48
	ld hl, sp+$48                                    ; $5efe: $f8 $48
	ld hl, sp-$70                                    ; $5f00: $f8 $90
	ldh a, [rPCM34]                                  ; $5f02: $f0 $77
	cp d                                             ; $5f04: $ba
	sbc [hl]                                         ; $5f05: $9e
	inc b                                            ; $5f06: $04
	ld a, e                                          ; $5f07: $7b
	or d                                             ; $5f08: $b2
	db $dd                                           ; $5f09: $dd
	ld bc, $9877                                     ; $5f0a: $01 $77 $98
	db $db                                           ; $5f0d: $db
	ld bc, $8c6f                                     ; $5f0e: $01 $6f $8c
	rst SubAFromDE                                          ; $5f11: $df
	inc bc                                           ; $5f12: $03
	rst $38                                          ; $5f13: $ff
	adc e                                            ; $5f14: $8b
	ld a, l                                          ; $5f15: $7d
	rst $38                                          ; $5f16: $ff
	ld b, l                                          ; $5f17: $45
	rst $38                                          ; $5f18: $ff
	sub d                                            ; $5f19: $92
	rst AddAOntoHL                                          ; $5f1a: $ef
	push bc                                          ; $5f1b: $c5
	cp $ff                                           ; $5f1c: $fe $ff
	ld a, c                                          ; $5f1e: $79
	rst $38                                          ; $5f1f: $ff
	inc sp                                           ; $5f20: $33
	db $fd                                           ; $5f21: $fd
	and a                                            ; $5f22: $a7
	ld a, b                                          ; $5f23: $78
	rst $38                                          ; $5f24: $ff
	nop                                              ; $5f25: $00
	rst $38                                          ; $5f26: $ff
	and l                                            ; $5f27: $a5
	ld e, d                                          ; $5f28: $5a
	sbc $ff                                          ; $5f29: $de $ff
	adc b                                            ; $5f2b: $88
	reti                                             ; $5f2c: $d9


	cp a                                             ; $5f2d: $bf
	rst $38                                          ; $5f2e: $ff
	add hl, de                                       ; $5f2f: $19
	rst $38                                          ; $5f30: $ff
	pop af                                           ; $5f31: $f1
	rst $38                                          ; $5f32: $ff
	ccf                                              ; $5f33: $3f
	ccf                                              ; $5f34: $3f
	ret nc                                           ; $5f35: $d0

	ldh a, [$28]                                     ; $5f36: $f0 $28
	ld hl, sp+$28                                    ; $5f38: $f8 $28
	ld hl, sp+$50                                    ; $5f3a: $f8 $50
	ldh a, [$a0]                                     ; $5f3c: $f0 $a0
	ldh [$c0], a                                     ; $5f3e: $e0 $c0
	ret nz                                           ; $5f40: $c0

	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	reti                                             ; $5f43: $d9


	add b                                            ; $5f44: $80
	ei                                               ; $5f45: $fb
	ld [hl], a                                       ; $5f46: $77
	ld hl, sp+$1f                                    ; $5f47: $f8 $1f
	and b                                            ; $5f49: $a0
	ld [hl], a                                       ; $5f4a: $77
	ldh a, [c]                                       ; $5f4b: $f2
	daa                                              ; $5f4c: $27
	and b                                            ; $5f4d: $a0
	sub l                                            ; $5f4e: $95
	ld a, $26                                        ; $5f4f: $3e $26
	dec a                                            ; $5f51: $3d
	ccf                                              ; $5f52: $3f
	rst SubAFromBC                                          ; $5f53: $e7
	rst $38                                          ; $5f54: $ff
	rst JumpTable                                          ; $5f55: $c7
	rst $38                                          ; $5f56: $ff
	ld a, h                                          ; $5f57: $7c
	ld a, h                                          ; $5f58: $7c
	cp b                                             ; $5f59: $b8
	nop                                              ; $5f5a: $00
	ei                                               ; $5f5b: $fb
	rst SubAFromDE                                          ; $5f5c: $df
	ld bc, $0298                                     ; $5f5d: $01 $98 $02
	inc bc                                           ; $5f60: $03
	ld [bc], a                                       ; $5f61: $02
	inc bc                                           ; $5f62: $03
	dec b                                            ; $5f63: $05
	rlca                                             ; $5f64: $07
	ld b, $7b                                        ; $5f65: $06 $7b
	cp $7f                                           ; $5f67: $fe $7f
	ld a, [$0f9b]                                    ; $5f69: $fa $9b $0f
	ld c, $07                                        ; $5f6c: $0e $07
	ld b, $dd                                        ; $5f6e: $06 $dd
	inc bc                                           ; $5f70: $03
	ld a, a                                          ; $5f71: $7f
	or $7f                                           ; $5f72: $f6 $7f
	cp $80                                           ; $5f74: $fe $80
	ld a, [bc]                                       ; $5f76: $0a
	dec de                                           ; $5f77: $1b
	inc b                                            ; $5f78: $04
	ld c, $7b                                        ; $5f79: $0e $7b
	ld a, a                                          ; $5f7b: $7f
	add h                                            ; $5f7c: $84

jr_014_5f7d:
	rst $38                                          ; $5f7d: $ff
	ld l, h                                          ; $5f7e: $6c

jr_014_5f7f:
	rst $38                                          ; $5f7f: $ff
	jp nc, $15ff                                     ; $5f80: $d2 $ff $15

	rst $38                                          ; $5f83: $ff
	or h                                             ; $5f84: $b4
	rst AddAOntoHL                                          ; $5f85: $ef
	or l                                             ; $5f86: $b5

jr_014_5f87:
	rst AddAOntoHL                                          ; $5f87: $ef
	or a                                             ; $5f88: $b7
	ld c, e                                          ; $5f89: $4b
	rst $38                                          ; $5f8a: $ff
	ld bc, $ccff                                     ; $5f8b: $01 $ff $cc
	rst $38                                          ; $5f8e: $ff
	adc $ff                                          ; $5f8f: $ce $ff
	ld c, e                                          ; $5f91: $4b
	rst $38                                          ; $5f92: $ff
	ld sp, $9efe                                     ; $5f93: $31 $fe $9e
	add e                                            ; $5f96: $83
	ei                                               ; $5f97: $fb
	rst SubAFromDE                                          ; $5f98: $df
	ret nz                                           ; $5f99: $c0

	sub [hl]                                         ; $5f9a: $96
	jr nz, jr_014_5f7d                               ; $5f9b: $20 $e0

	jr nz, jr_014_5f7f                               ; $5f9d: $20 $e0

	db $10                                           ; $5f9f: $10
	ldh a, [hDisp1_SCY]                                     ; $5fa0: $f0 $90
	ldh a, [$50]                                     ; $5fa2: $f0 $50
	ld a, e                                          ; $5fa4: $7b
	cp $9e                                           ; $5fa5: $fe $9e
	jr nc, jr_014_5f87                               ; $5fa7: $30 $de

	ldh a, [$7f]                                     ; $5fa9: $f0 $7f
	or $99                                           ; $5fab: $f6 $99
	ld c, b                                          ; $5fad: $48
	ld hl, sp+$48                                    ; $5fae: $f8 $48
	ld hl, sp-$70                                    ; $5fb0: $f8 $90
	ldh a, [$0b]                                     ; $5fb2: $f0 $0b
	ret nz                                           ; $5fb4: $c0

	sbc b                                            ; $5fb5: $98
	sub e                                            ; $5fb6: $93
	inc bc                                           ; $5fb7: $03
	inc bc                                           ; $5fb8: $03
	inc b                                            ; $5fb9: $04
	rlca                                             ; $5fba: $07
	inc b                                            ; $5fbb: $04
	rlca                                             ; $5fbc: $07
	ld a, e                                          ; $5fbd: $7b
	add e                                            ; $5fbe: $83
	sbc h                                            ; $5fbf: $9c
	ld [bc], a                                       ; $5fc0: $02
	ld bc, $7701                                     ; $5fc1: $01 $01 $77
	ld a, b                                          ; $5fc4: $78
	db $db                                           ; $5fc5: $db
	ld bc, $6c6f                                     ; $5fc6: $01 $6f $6c
	rst SubAFromDE                                          ; $5fc9: $df
	inc bc                                           ; $5fca: $03
	rst $38                                          ; $5fcb: $ff
	sub b                                            ; $5fcc: $90
	db $fd                                           ; $5fcd: $fd
	rst $38                                          ; $5fce: $ff
	ei                                               ; $5fcf: $fb
	rst SubAFromDE                                          ; $5fd0: $df
	cp $af                                           ; $5fd1: $fe $af
	db $fd                                           ; $5fd3: $fd
	and [hl]                                         ; $5fd4: $a6
	rst $38                                          ; $5fd5: $ff
	ld hl, $73ff                                     ; $5fd6: $21 $ff $73
	call $00ff                                       ; $5fd9: $cd $ff $00
	ld a, e                                          ; $5fdc: $7b
	cp $9d                                           ; $5fdd: $fe $9d
	and l                                            ; $5fdf: $a5
	ld e, d                                          ; $5fe0: $5a
	sbc $ff                                          ; $5fe1: $de $ff
	adc b                                            ; $5fe3: $88
	reti                                             ; $5fe4: $d9


	cp a                                             ; $5fe5: $bf
	rst $38                                          ; $5fe6: $ff
	add hl, de                                       ; $5fe7: $19
	rst $38                                          ; $5fe8: $ff
	pop af                                           ; $5fe9: $f1
	rst $38                                          ; $5fea: $ff
	ccf                                              ; $5feb: $3f
	ccf                                              ; $5fec: $3f
	ret nc                                           ; $5fed: $d0

	ldh a, [$28]                                     ; $5fee: $f0 $28
	ld hl, sp+$28                                    ; $5ff0: $f8 $28
	ld hl, sp+$50                                    ; $5ff2: $f8 $50
	ldh a, [$a0]                                     ; $5ff4: $f0 $a0
	ldh [$c0], a                                     ; $5ff6: $e0 $c0
	ret nz                                           ; $5ff8: $c0

	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	reti                                             ; $5ffb: $d9


	add b                                            ; $5ffc: $80
	ei                                               ; $5ffd: $fb
	ld [hl], a                                       ; $5ffe: $77
	ld hl, sp+$1f                                    ; $5fff: $f8 $1f
	and b                                            ; $6001: $a0
	ld [hl], a                                       ; $6002: $77
	ldh a, [c]                                       ; $6003: $f2
	daa                                              ; $6004: $27
	and b                                            ; $6005: $a0
	sub l                                            ; $6006: $95
	ld a, $26                                        ; $6007: $3e $26
	dec a                                            ; $6009: $3d
	ccf                                              ; $600a: $3f
	rst SubAFromBC                                          ; $600b: $e7
	rst $38                                          ; $600c: $ff
	rst JumpTable                                          ; $600d: $c7
	rst $38                                          ; $600e: $ff
	ld a, h                                          ; $600f: $7c
	ld a, h                                          ; $6010: $7c
	ld b, b                                          ; $6011: $40
	ld bc, $dffb                                     ; $6012: $01 $fb $df
	ld bc, $028f                                     ; $6015: $01 $8f $02
	inc bc                                           ; $6018: $03
	ld [bc], a                                       ; $6019: $02
	inc bc                                           ; $601a: $03
	dec b                                            ; $601b: $05
	rlca                                             ; $601c: $07
	ld b, $07                                        ; $601d: $06 $07
	ld [hl], $37                                     ; $601f: $36 $37
	ld [hl], l                                       ; $6021: $75
	ld d, a                                          ; $6022: $57
	rst AddAOntoHL                                          ; $6023: $ef
	xor [hl]                                         ; $6024: $ae
	ld b, a                                          ; $6025: $47
	ld b, a                                          ; $6026: $47
	ld a, e                                          ; $6027: $7b
	pop af                                           ; $6028: $f1
	ld a, e                                          ; $6029: $7b
	ldh a, [$7f]                                     ; $602a: $f0 $7f
	cp $80                                           ; $602c: $fe $80
	ld a, [bc]                                       ; $602e: $0a
	dec de                                           ; $602f: $1b
	inc b                                            ; $6030: $04
	ld c, $7b                                        ; $6031: $0e $7b
	ld a, a                                          ; $6033: $7f
	add h                                            ; $6034: $84
	rst $38                                          ; $6035: $ff
	ld l, h                                          ; $6036: $6c
	rst $38                                          ; $6037: $ff
	jp nc, $15ff                                     ; $6038: $d2 $ff $15

	rst $38                                          ; $603b: $ff
	or h                                             ; $603c: $b4
	rst AddAOntoHL                                          ; $603d: $ef
	or l                                             ; $603e: $b5
	rst AddAOntoHL                                          ; $603f: $ef
	or a                                             ; $6040: $b7

jr_014_6041:
	ld c, e                                          ; $6041: $4b
	rst $38                                          ; $6042: $ff
	call $ce77                                       ; $6043: $cd $77 $ce
	rst $38                                          ; $6046: $ff
	call z, $cdff                                    ; $6047: $cc $ff $cd
	rst $38                                          ; $604a: $ff
	ld sp, $9efe                                     ; $604b: $31 $fe $9e
	daa                                              ; $604e: $27
	db $fd                                           ; $604f: $fd
	rst SubAFromDE                                          ; $6050: $df
	ld b, $94                                        ; $6051: $06 $94
	rst GetHLinHL                                          ; $6053: $cf
	ret                                              ; $6054: $c9


	ld h, $e6                                        ; $6055: $26 $e6
	jr nz, @-$1e                                     ; $6057: $20 $e0

	db $10                                           ; $6059: $10
	ldh a, [hDisp1_SCY]                                     ; $605a: $f0 $90
	ldh a, [$50]                                     ; $605c: $f0 $50
	ld a, e                                          ; $605e: $7b
	cp $9e                                           ; $605f: $fe $9e
	jr nc, jr_014_6041                               ; $6061: $30 $de

	ldh a, [$7f]                                     ; $6063: $f0 $7f
	or $91                                           ; $6065: $f6 $91
	ld c, b                                          ; $6067: $48
	ld hl, sp+$48                                    ; $6068: $f8 $48
	ld hl, sp-$70                                    ; $606a: $f8 $90
	ldh a, [$03]                                     ; $606c: $f0 $03
	ld [bc], a                                       ; $606e: $02
	rlca                                             ; $606f: $07
	inc b                                            ; $6070: $04
	rlca                                             ; $6071: $07
	inc b                                            ; $6072: $04
	inc bc                                           ; $6073: $03
	inc bc                                           ; $6074: $03
	ld h, a                                          ; $6075: $67
	sbc b                                            ; $6076: $98
	db $db                                           ; $6077: $db
	ld bc, $f46f                                     ; $6078: $01 $6f $f4

Call_014_607b:
	ld [hl], a                                       ; $607b: $77
	ld [$fd98], a                                    ; $607c: $ea $98 $fd
	ccf                                              ; $607f: $3f
	push hl                                          ; $6080: $e5
	ld a, a                                          ; $6081: $7f
	sub d                                            ; $6082: $92
	rst AddAOntoHL                                          ; $6083: $ef
	jp $ffde                                         ; $6084: $c3 $de $ff


	sbc [hl]                                         ; $6087: $9e
	add c                                            ; $6088: $81
	ld a, e                                          ; $6089: $7b
	cp $bf                                           ; $608a: $fe $bf
	rst $38                                          ; $608c: $ff
	rst $38                                          ; $608d: $ff
	sbc l                                            ; $608e: $9d
	and l                                            ; $608f: $a5
	ld e, d                                          ; $6090: $5a
	sbc $ff                                          ; $6091: $de $ff
	adc a                                            ; $6093: $8f
	reti                                             ; $6094: $d9


	cp a                                             ; $6095: $bf
	rst $38                                          ; $6096: $ff
	add hl, de                                       ; $6097: $19
	rst $38                                          ; $6098: $ff
	pop af                                           ; $6099: $f1
	rst $38                                          ; $609a: $ff
	ccf                                              ; $609b: $3f
	ccf                                              ; $609c: $3f
	ret nc                                           ; $609d: $d0

	ldh a, [$28]                                     ; $609e: $f0 $28
	ld hl, sp+$68                                    ; $60a0: $f8 $68
	cp b                                             ; $60a2: $b8
	ld [hl], b                                       ; $60a3: $70
	ld a, e                                          ; $60a4: $7b
	xor a                                            ; $60a5: $af
	sbc c                                            ; $60a6: $99
	ld hl, sp-$38                                    ; $60a7: $f8 $c8
	ld a, h                                          ; $60a9: $7c
	ld h, h                                          ; $60aa: $64
	sbc b                                            ; $60ab: $98
	sbc b                                            ; $60ac: $98
	db $db                                           ; $60ad: $db
	add b                                            ; $60ae: $80
	ei                                               ; $60af: $fb
	ld h, a                                          ; $60b0: $67
	ld hl, sp-$01                                    ; $60b1: $f8 $ff
	rst SubAFromDE                                          ; $60b3: $df
	ld sp, $7a9b                                     ; $60b4: $31 $9b $7a
	ld c, e                                          ; $60b7: $4b
	ld a, [hl-]                                      ; $60b8: $3a
	dec sp                                           ; $60b9: $3b
	ld [hl], a                                       ; $60ba: $77
	ld b, b                                          ; $60bb: $40
	ld a, a                                          ; $60bc: $7f
	cp $7f                                           ; $60bd: $fe $7f
	ld a, [$0f9b]                                    ; $60bf: $fa $9b $0f
	ld c, $07                                        ; $60c2: $0e $07
	rlca                                             ; $60c4: $07
	inc bc                                           ; $60c5: $03
	ld b, b                                          ; $60c6: $40
	ld l, a                                          ; $60c7: $6f
	ld b, b                                          ; $60c8: $40
	sbc [hl]                                         ; $60c9: $9e
	scf                                              ; $60ca: $37
	ei                                               ; $60cb: $fb
	rst SubAFromDE                                          ; $60cc: $df
	ret nz                                           ; $60cd: $c0

	sub a                                            ; $60ce: $97
	inc h                                            ; $60cf: $24
	db $e4                                           ; $60d0: $e4
	ld l, $ea                                        ; $60d1: $2e $ea
	rla                                              ; $60d3: $17
	push af                                          ; $60d4: $f5
	sub d                                            ; $60d5: $92
	ldh a, [c]                                       ; $60d6: $f2
	inc bc                                           ; $60d7: $03
	ld b, b                                          ; $60d8: $40
	ld h, e                                          ; $60d9: $63
	ld b, b                                          ; $60da: $40
	ld [hl], a                                       ; $60db: $77
	ldh a, [c]                                       ; $60dc: $f2
	daa                                              ; $60dd: $27
	ld b, b                                          ; $60de: $40
	sub l                                            ; $60df: $95
	ld a, $26                                        ; $60e0: $3e $26
	dec a                                            ; $60e2: $3d
	ccf                                              ; $60e3: $3f
	rst SubAFromBC                                          ; $60e4: $e7
	rst $38                                          ; $60e5: $ff
	rst JumpTable                                          ; $60e6: $c7
	rst $38                                          ; $60e7: $ff
	ld a, h                                          ; $60e8: $7c
	ld a, h                                          ; $60e9: $7c
	ld [hl], a                                       ; $60ea: $77
	ld b, b                                          ; $60eb: $40
	sub a                                            ; $60ec: $97
	ld a, b                                          ; $60ed: $78
	cp b                                             ; $60ee: $b8
	ld a, h                                          ; $60ef: $7c
	call nz, $88f8                                   ; $60f0: $c4 $f8 $88
	ldh a, [$f0]                                     ; $60f3: $f0 $f0
	ld [hl], a                                       ; $60f5: $77
	ld c, [hl]                                       ; $60f6: $4e
	ld b, a                                          ; $60f7: $47
	ld b, b                                          ; $60f8: $40
	dec sp                                           ; $60f9: $3b
	ld h, b                                          ; $60fa: $60
	sbc [hl]                                         ; $60fb: $9e
	ld e, e                                          ; $60fc: $5b
	ld e, e                                          ; $60fd: $5b
	ld h, b                                          ; $60fe: $60
	sub b                                            ; $60ff: $90
	add e                                            ; $6100: $83
	ld [bc], a                                       ; $6101: $02
	inc bc                                           ; $6102: $03
	ld b, $05                                        ; $6103: $06 $05
	ld b, $07                                        ; $6105: $06 $07
	rrca                                             ; $6107: $0f
	add hl, bc                                       ; $6108: $09
	rra                                              ; $6109: $1f
	inc de                                           ; $610a: $13
	ld a, $26                                        ; $610b: $3e $26
	jr jr_014_6127                                   ; $610d: $18 $18

	ld a, $c0                                        ; $610f: $3e $c0
	sbc b                                            ; $6111: $98
	ld a, l                                          ; $6112: $7d
	rst $38                                          ; $6113: $ff
	ld b, l                                          ; $6114: $45
	rst $38                                          ; $6115: $ff
	sub d                                            ; $6116: $92
	rst AddAOntoHL                                          ; $6117: $ef
	pop bc                                           ; $6118: $c1
	ld [bc], a                                       ; $6119: $02
	ret nz                                           ; $611a: $c0

	ld [bc], a                                       ; $611b: $02
	ret nz                                           ; $611c: $c0

	ld a, [hl-]                                      ; $611d: $3a
	ret nz                                           ; $611e: $c0

	sbc e                                            ; $611f: $9b
	dec e                                            ; $6120: $1d
	rra                                              ; $6121: $1f
	dec a                                            ; $6122: $3d
	daa                                              ; $6123: $27
	dec bc                                           ; $6124: $0b
	ld h, b                                          ; $6125: $60
	sbc [hl]                                         ; $6126: $9e

jr_014_6127:
	or e                                             ; $6127: $b3
	ld h, [hl]                                       ; $6128: $66
	ret nz                                           ; $6129: $c0

	sbc l                                            ; $612a: $9d
	inc l                                            ; $612b: $2c
	db $ec                                           ; $612c: $ec
	ld a, $c0                                        ; $612d: $3e $c0
	sub e                                            ; $612f: $93
	ld c, h                                          ; $6130: $4c
	db $fc                                           ; $6131: $fc
	sbc [hl]                                         ; $6132: $9e
	ldh a, [c]                                       ; $6133: $f2
	ld a, $27                                        ; $6134: $3e $27
	ld e, $13                                        ; $6136: $1e $13
	rrca                                             ; $6138: $0f
	add hl, bc                                       ; $6139: $09
	rlca                                             ; $613a: $07
	rlca                                             ; $613b: $07
	ld h, $c0                                        ; $613c: $26 $c0
	cpl                                              ; $613e: $2f
	ld b, b                                          ; $613f: $40
	ld e, [hl]                                       ; $6140: $5e
	ret nz                                           ; $6141: $c0

	sub l                                            ; $6142: $95
	cp $e2                                           ; $6143: $fe $e2
	db $fc                                           ; $6145: $fc
	adc h                                            ; $6146: $8c
	ld a, b                                          ; $6147: $78
	ret c                                            ; $6148: $d8

	ld [hl], b                                       ; $6149: $70
	ldh a, [$e0]                                     ; $614a: $f0 $e0
	ldh [rPCM34], a                                  ; $614c: $e0 $77
	ld d, d                                          ; $614e: $52
	ld a, $c0                                        ; $614f: $3e $c0
	sbc [hl]                                         ; $6151: $9e
	ld bc, $dffb                                     ; $6152: $01 $fb $df
	ld bc, $0298                                     ; $6155: $01 $98 $02
	inc bc                                           ; $6158: $03
	ld [bc], a                                       ; $6159: $02
	inc bc                                           ; $615a: $03
	dec b                                            ; $615b: $05
	rlca                                             ; $615c: $07
	ld b, $7b                                        ; $615d: $06 $7b
	cp $7f                                           ; $615f: $fe $7f
	ld a, [$0f9b]                                    ; $6161: $fa $9b $0f
	ld c, $07                                        ; $6164: $0e $07
	rlca                                             ; $6166: $07
	ld a, e                                          ; $6167: $7b
	pop af                                           ; $6168: $f1
	ld a, e                                          ; $6169: $7b
	ldh a, [$7f]                                     ; $616a: $f0 $7f
	cp $80                                           ; $616c: $fe $80
	ld a, [bc]                                       ; $616e: $0a
	dec de                                           ; $616f: $1b
	inc b                                            ; $6170: $04
	ld c, $7b                                        ; $6171: $0e $7b
	ld a, a                                          ; $6173: $7f
	add h                                            ; $6174: $84
	rst $38                                          ; $6175: $ff
	ld l, h                                          ; $6176: $6c

jr_014_6177:
	rst $38                                          ; $6177: $ff
	jp nc, $15ff                                     ; $6178: $d2 $ff $15

	rst $38                                          ; $617b: $ff
	or h                                             ; $617c: $b4
	rst AddAOntoHL                                          ; $617d: $ef
	or l                                             ; $617e: $b5
	rst AddAOntoHL                                          ; $617f: $ef
	or a                                             ; $6180: $b7

jr_014_6181:
	ld c, e                                          ; $6181: $4b
	rst $38                                          ; $6182: $ff
	call $ce77                                       ; $6183: $cd $77 $ce
	rst $38                                          ; $6186: $ff
	call z, $cdff                                    ; $6187: $cc $ff $cd
	rst $38                                          ; $618a: $ff
	ld sp, $9efe                                     ; $618b: $31 $fe $9e
	add e                                            ; $618e: $83
	db $fd                                           ; $618f: $fd
	rst SubAFromDE                                          ; $6190: $df
	add b                                            ; $6191: $80
	sub h                                            ; $6192: $94
	ld b, b                                          ; $6193: $40
	ret nz                                           ; $6194: $c0

	jr nz, jr_014_6177                               ; $6195: $20 $e0

	jr nz, @-$1e                                     ; $6197: $20 $e0

	db $10                                           ; $6199: $10
	ldh a, [hDisp1_SCY]                                     ; $619a: $f0 $90
	ldh a, [$50]                                     ; $619c: $f0 $50
	ld a, e                                          ; $619e: $7b
	cp $9e                                           ; $619f: $fe $9e
	jr nc, jr_014_6181                               ; $61a1: $30 $de

	ldh a, [$7f]                                     ; $61a3: $f0 $7f
	or $99                                           ; $61a5: $f6 $99
	ld c, b                                          ; $61a7: $48
	ld hl, sp+$48                                    ; $61a8: $f8 $48
	ld hl, sp-$70                                    ; $61aa: $f8 $90
	ldh a, [rPCM34]                                  ; $61ac: $f0 $77
	cp d                                             ; $61ae: $ba
	sbc [hl]                                         ; $61af: $9e
	ld b, $77                                        ; $61b0: $06 $77
	and a                                            ; $61b2: $a7
	sbc h                                            ; $61b3: $9c
	dec b                                            ; $61b4: $05
	rrca                                             ; $61b5: $0f
	dec bc                                           ; $61b6: $0b
	ld a, e                                          ; $61b7: $7b
	cp $9e                                           ; $61b8: $fe $9e
	add hl, bc                                       ; $61ba: $09
	ld a, e                                          ; $61bb: $7b
	xor l                                            ; $61bc: $ad
	sbc h                                            ; $61bd: $9c
	rlca                                             ; $61be: $07
	ld bc, $6f01                                     ; $61bf: $01 $01 $6f
	adc h                                            ; $61c2: $8c
	rst SubAFromDE                                          ; $61c3: $df
	inc bc                                           ; $61c4: $03
	rst $38                                          ; $61c5: $ff
	sub b                                            ; $61c6: $90
	ld a, l                                          ; $61c7: $7d
	rst $38                                          ; $61c8: $ff
	ld e, [hl]                                       ; $61c9: $5e
	rst $38                                          ; $61ca: $ff
	rst $38                                          ; $61cb: $ff
	ldh [c], a                                       ; $61cc: $e2
	rst $38                                          ; $61cd: $ff
	add c                                            ; $61ce: $81
	rst $38                                          ; $61cf: $ff
	rra                                              ; $61d0: $1f
	rst $38                                          ; $61d1: $ff
	ld a, a                                          ; $61d2: $7f
	add c                                            ; $61d3: $81
	rst $38                                          ; $61d4: $ff
	nop                                              ; $61d5: $00
	ld a, e                                          ; $61d6: $7b
	cp $9d                                           ; $61d7: $fe $9d
	and l                                            ; $61d9: $a5
	ld e, d                                          ; $61da: $5a
	sbc $ff                                          ; $61db: $de $ff
	sub l                                            ; $61dd: $95
	reti                                             ; $61de: $d9


	cp a                                             ; $61df: $bf
	rst $38                                          ; $61e0: $ff
	add hl, de                                       ; $61e1: $19
	rst $38                                          ; $61e2: $ff
	pop af                                           ; $61e3: $f1
	rst $38                                          ; $61e4: $ff
	ccf                                              ; $61e5: $3f
	ccf                                              ; $61e6: $3f
	ret nc                                           ; $61e7: $d0

	ld l, e                                          ; $61e8: $6b
	cp b                                             ; $61e9: $b8
	ld a, a                                          ; $61ea: $7f
	and d                                            ; $61eb: $a2
	rst SubAFromDE                                          ; $61ec: $df
	ret nz                                           ; $61ed: $c0

	ld [hl], a                                       ; $61ee: $77
	sub [hl]                                         ; $61ef: $96
	db $db                                           ; $61f0: $db
	add b                                            ; $61f1: $80
	ei                                               ; $61f2: $fb
	ld h, a                                          ; $61f3: $67
	ld hl, sp+$67                                    ; $61f4: $f8 $67
	inc a                                            ; $61f6: $3c
	db $dd                                           ; $61f7: $dd
	ld bc, $dff1                                     ; $61f8: $01 $f1 $df
	inc bc                                           ; $61fb: $03
	sbc e                                            ; $61fc: $9b
	rra                                              ; $61fd: $1f
	inc e                                            ; $61fe: $1c
	ld a, a                                          ; $61ff: $7f
	ld h, e                                          ; $6200: $63
	ld a, e                                          ; $6201: $7b
	and b                                            ; $6202: $a0
	sub h                                            ; $6203: $94
	sbc l                                            ; $6204: $9d
	rst $38                                          ; $6205: $ff
	dec a                                            ; $6206: $3d
	rst $38                                          ; $6207: $ff
	add hl, sp                                       ; $6208: $39
	rst $38                                          ; $6209: $ff
	inc sp                                           ; $620a: $33
	rst $38                                          ; $620b: $ff
	add a                                            ; $620c: $87
	ld a, a                                          ; $620d: $7f
	ld a, a                                          ; $620e: $7f
	ld c, a                                          ; $620f: $4f
	add b                                            ; $6210: $80
	sbc b                                            ; $6211: $98
	cp $9f                                           ; $6212: $fe $9f
	rst $38                                          ; $6214: $ff
	add d                                            ; $6215: $82
	rst $38                                          ; $6216: $ff
	pop hl                                           ; $6217: $e1
	sbc a                                            ; $6218: $9f
	sbc $ff                                          ; $6219: $de $ff
	inc bc                                           ; $621b: $03
	add b                                            ; $621c: $80
	inc de                                           ; $621d: $13
	add b                                            ; $621e: $80
	ld l, e                                          ; $621f: $6b
	xor h                                            ; $6220: $ac
	ld a, d                                          ; $6221: $7a
	or a                                             ; $6222: $b7
	sbc l                                            ; $6223: $9d
	rlca                                             ; $6224: $07
	inc b                                            ; $6225: $04
	ld [hl], a                                       ; $6226: $77
	cp $7f                                           ; $6227: $fe $7f
	ld hl, sp+$57                                    ; $6229: $f8 $57
	ld [hl], d                                       ; $622b: $72
	db $dd                                           ; $622c: $dd
	ld bc, $ad7a                                     ; $622d: $01 $7a $ad
	sbc $03                                          ; $6230: $de $03
	ld a, a                                          ; $6232: $7f
	ld a, [$a27a]                                    ; $6233: $fa $7a $a2
	sbc [hl]                                         ; $6236: $9e
	inc bc                                           ; $6237: $03
	db $dd                                           ; $6238: $dd
	ld bc, $73df                                     ; $6239: $01 $df $73
	adc c                                            ; $623c: $89
	rst $38                                          ; $623d: $ff
	adc h                                            ; $623e: $8c
	dec b                                            ; $623f: $05
	dec c                                            ; $6240: $0d
	ld [bc], a                                       ; $6241: $02
	rlca                                             ; $6242: $07
	dec a                                            ; $6243: $3d
	ccf                                              ; $6244: $3f
	jp nz, $36ff                                     ; $6245: $c2 $ff $36

	rst $38                                          ; $6248: $ff
	ld l, c                                          ; $6249: $69
	rst $38                                          ; $624a: $ff
	adc d                                            ; $624b: $8a
	rst $38                                          ; $624c: $ff
	ld e, d                                          ; $624d: $5a
	rst FarCall                                          ; $624e: $f7
	ld e, d                                          ; $624f: $5a
	rst FarCall                                          ; $6250: $f7
	db $db                                           ; $6251: $db
	and l                                            ; $6252: $a5
	ld [hl], e                                       ; $6253: $73
	ld a, c                                          ; $6254: $79
	sub a                                            ; $6255: $97
	rst SubAFromBC                                          ; $6256: $e7
	rst $38                                          ; $6257: $ff
	and $ff                                          ; $6258: $e6 $ff
	add b                                            ; $625a: $80
	rst $38                                          ; $625b: $ff
	pop af                                           ; $625c: $f1
	nop                                              ; $625d: $00
	ld a, e                                          ; $625e: $7b
	sbc h                                            ; $625f: $9c
	rst SubAFromDE                                          ; $6260: $df
	ret nz                                           ; $6261: $c0

	halt                                             ; $6262: $76
	and h                                            ; $6263: $a4
	ld a, a                                          ; $6264: $7f
	cp $9e                                           ; $6265: $fe $9e
	adc b                                            ; $6267: $88
	ld a, e                                          ; $6268: $7b
	halt                                             ; $6269: $76
	sbc [hl]                                         ; $626a: $9e
	xor b                                            ; $626b: $a8
	ld a, e                                          ; $626c: $7b
	cp $8d                                           ; $626d: $fe $8d
	sbc b                                            ; $626f: $98
	ld hl, sp-$08                                    ; $6270: $f8 $f8
	ld a, b                                          ; $6272: $78
	ret z                                            ; $6273: $c8

	ld a, b                                          ; $6274: $78
	and h                                            ; $6275: $a4
	db $fc                                           ; $6276: $fc
	and h                                            ; $6277: $a4
	db $fc                                           ; $6278: $fc
	ld c, b                                          ; $6279: $48
	ld hl, sp-$01                                    ; $627a: $f8 $ff
	dec b                                            ; $627c: $05
	rst $38                                          ; $627d: $ff
	ld [hl], a                                       ; $627e: $77
	rst $38                                          ; $627f: $ff
	push af                                          ; $6280: $f5
	ld a, e                                          ; $6281: $7b
	call nc, Call_014_727e                           ; $6282: $d4 $7e $72
	sbc h                                            ; $6285: $9c
	dec de                                           ; $6286: $1b
	db $fc                                           ; $6287: $fc
	db $fc                                           ; $6288: $fc
	ld b, a                                          ; $6289: $47
	ld [hl], d                                       ; $628a: $72
	rst $38                                          ; $628b: $ff
	sub b                                            ; $628c: $90
	cp $df                                           ; $628d: $fe $df
	cp $e7                                           ; $628f: $fe $e7
	rst $38                                          ; $6291: $ff
	ld h, c                                          ; $6292: $61
	rst $38                                          ; $6293: $ff
	pop af                                           ; $6294: $f1
	rst GetHLinHL                                          ; $6295: $cf
	ld a, a                                          ; $6296: $7f
	rst $38                                          ; $6297: $ff
	rst $38                                          ; $6298: $ff
	ld b, b                                          ; $6299: $40
	ld a, a                                          ; $629a: $7f
	add b                                            ; $629b: $80
	ld a, e                                          ; $629c: $7b
	xor l                                            ; $629d: $ad
	adc h                                            ; $629e: $8c
	jp nc, $ffad                                     ; $629f: $d2 $ad $ff

	rst $38                                          ; $62a2: $ff
	ld a, a                                          ; $62a3: $7f
	ld l, h                                          ; $62a4: $6c
	ld e, a                                          ; $62a5: $5f
	ld a, a                                          ; $62a6: $7f
	adc h                                            ; $62a7: $8c
	rst $38                                          ; $62a8: $ff
	ld hl, sp-$01                                    ; $62a9: $f8 $ff
	rra                                              ; $62ab: $1f
	rra                                              ; $62ac: $1f
	add sp, -$08                                     ; $62ad: $e8 $f8
	and h                                            ; $62af: $a4
	ld a, h                                          ; $62b0: $7c
	inc h                                            ; $62b1: $24
	ld a, e                                          ; $62b2: $7b
	cp b                                             ; $62b3: $b8
	ld a, a                                          ; $62b4: $7f
	ld e, $df                                        ; $62b5: $1e $df
	ldh [rPCM12], a                                  ; $62b7: $e0 $76
	jr c, jr_014_633a                                ; $62b9: $38 $7f

	cp $77                                           ; $62bb: $fe $77
	db $fd                                           ; $62bd: $fd
	db $db                                           ; $62be: $db
	add b                                            ; $62bf: $80
	ld [hl], a                                       ; $62c0: $77
	ld hl, sp+$7e                                    ; $62c1: $f8 $7e
	ldh [c], a                                       ; $62c3: $e2
	rrca                                             ; $62c4: $0f
	ret nz                                           ; $62c5: $c0

	rst FarCall                                          ; $62c6: $f7
	rst SubAFromDE                                          ; $62c7: $df
	inc c                                            ; $62c8: $0c
	rst SubAFromDE                                          ; $62c9: $df
	ld a, [bc]                                       ; $62ca: $0a
	db $db                                           ; $62cb: $db
	add hl, bc                                       ; $62cc: $09
	rst SubAFromDE                                          ; $62cd: $df
	ld a, [bc]                                       ; $62ce: $0a
	rst SubAFromDE                                          ; $62cf: $df
	ld a, b                                          ; $62d0: $78
	rst SubAFromDE                                          ; $62d1: $df
	ld hl, sp-$21                                    ; $62d2: $f8 $df
	ld [hl], b                                       ; $62d4: $70
	ld c, a                                          ; $62d5: $4f
	ld [hl], h                                       ; $62d6: $74
	rst SubAFromDE                                          ; $62d7: $df
	rlca                                             ; $62d8: $07
	reti                                             ; $62d9: $d9


	inc b                                            ; $62da: $04

jr_014_62db:
	rst SubAFromDE                                          ; $62db: $df
	dec b                                            ; $62dc: $05
	rst SubAFromDE                                          ; $62dd: $df
	inc a                                            ; $62de: $3c
	rst SubAFromDE                                          ; $62df: $df
	ld a, h                                          ; $62e0: $7c
	rst SubAFromDE                                          ; $62e1: $df
	jr c, jr_014_62db                                ; $62e2: $38 $f7

	rst SubAFromDE                                          ; $62e4: $df
	ld [hl], b                                       ; $62e5: $70
	rst SubAFromDE                                          ; $62e6: $df
	ret nc                                           ; $62e7: $d0

	reti                                             ; $62e8: $d9


	db $10                                           ; $62e9: $10
	db $dd                                           ; $62ea: $dd
	ldh a, [$df]                                     ; $62eb: $f0 $df
	ldh [$f9], a                                     ; $62ed: $e0 $f9
	and e                                            ; $62ef: $a3
	nop                                              ; $62f0: $00
	ei                                               ; $62f1: $fb
	rst SubAFromDE                                          ; $62f2: $df
	ld bc, $0298                                     ; $62f3: $01 $98 $02
	inc bc                                           ; $62f6: $03
	ld [bc], a                                       ; $62f7: $02
	inc bc                                           ; $62f8: $03
	dec b                                            ; $62f9: $05
	rlca                                             ; $62fa: $07
	ld b, $7b                                        ; $62fb: $06 $7b
	cp $9c                                           ; $62fd: $fe $9c
	dec c                                            ; $62ff: $0d
	rrca                                             ; $6300: $0f
	ld [bc], a                                       ; $6301: $02
	db $dd                                           ; $6302: $dd
	inc bc                                           ; $6303: $03
	sbc e                                            ; $6304: $9b
	ld [bc], a                                       ; $6305: $02
	dec b                                            ; $6306: $05
	rlca                                             ; $6307: $07
	rrca                                             ; $6308: $0f
	ld a, e                                          ; $6309: $7b
	or $80                                           ; $630a: $f6 $80
	ld a, [bc]                                       ; $630c: $0a
	dec de                                           ; $630d: $1b
	inc b                                            ; $630e: $04
	ld c, $7b                                        ; $630f: $0e $7b
	ld a, a                                          ; $6311: $7f
	add h                                            ; $6312: $84
	rst $38                                          ; $6313: $ff
	ld l, l                                          ; $6314: $6d
	rst $38                                          ; $6315: $ff
	sub d                                            ; $6316: $92
	rst $38                                          ; $6317: $ff
	ld e, c                                          ; $6318: $59
	rst $38                                          ; $6319: $ff
	cp d                                             ; $631a: $ba
	rst AddAOntoHL                                          ; $631b: $ef
	cp e                                             ; $631c: $bb
	xor $b6                                          ; $631d: $ee $b6
	ld c, a                                          ; $631f: $4f
	rst $38                                          ; $6320: $ff
	call $ce77                                       ; $6321: $cd $77 $ce
	rst $38                                          ; $6324: $ff
	call z, $cdff                                    ; $6325: $cc $ff $cd
	rst $38                                          ; $6328: $ff
	ld sp, $9efe                                     ; $6329: $31 $fe $9e
	add e                                            ; $632c: $83
	db $fd                                           ; $632d: $fd
	rst SubAFromDE                                          ; $632e: $df
	add b                                            ; $632f: $80
	add l                                            ; $6330: $85
	ld b, b                                          ; $6331: $40
	ret nz                                           ; $6332: $c0

	and b                                            ; $6333: $a0
	ldh [$60], a                                     ; $6334: $e0 $60
	ldh [$50], a                                     ; $6336: $e0 $50
	ldh a, [$b0]                                     ; $6338: $f0 $b0

jr_014_633a:
	ldh a, [hDisp1_SCY]                                     ; $633a: $f0 $90
	ldh a, [$50]                                     ; $633c: $f0 $50
	ldh a, [$30]                                     ; $633e: $f0 $30
	ldh a, [$d8]                                     ; $6340: $f0 $d8
	ld hl, sp-$50                                    ; $6342: $f8 $b0
	ldh a, [$28]                                     ; $6344: $f0 $28
	ld hl, sp+$54                                    ; $6346: $f8 $54
	db $fc                                           ; $6348: $fc
	sbc [hl]                                         ; $6349: $9e
	cp $dd                                           ; $634a: $fe $dd
	ld bc, $03df                                     ; $634c: $01 $df $03
	sbc c                                            ; $634f: $99
	rrca                                             ; $6350: $0f
	inc c                                            ; $6351: $0c
	dec de                                           ; $6352: $1b
	inc d                                            ; $6353: $14
	rrca                                             ; $6354: $0f
	rrca                                             ; $6355: $0f
	reti                                             ; $6356: $d9


	ld bc, $8c67                                     ; $6357: $01 $67 $8c
	rst SubAFromDE                                          ; $635a: $df
	inc bc                                           ; $635b: $03
	rst $38                                          ; $635c: $ff
	sbc b                                            ; $635d: $98
	ld a, l                                          ; $635e: $7d
	rst $38                                          ; $635f: $ff
	rst $38                                          ; $6360: $ff
	rst JumpTable                                          ; $6361: $c7
	dec sp                                           ; $6362: $3b
	cp $a9                                           ; $6363: $fe $a9
	sbc $ff                                          ; $6365: $de $ff
	add a                                            ; $6367: $87
	rst SubAFromHL                                          ; $6368: $d7
	xor e                                            ; $6369: $ab

jr_014_636a:
	xor e                                            ; $636a: $ab
	push de                                          ; $636b: $d5
	ld d, l                                          ; $636c: $55
	db $eb                                           ; $636d: $eb
	ld b, c                                          ; $636e: $41
	rst $38                                          ; $636f: $ff
	rst $38                                          ; $6370: $ff
	cp a                                             ; $6371: $bf
	cp $92                                           ; $6372: $fe $92
	rst $38                                          ; $6374: $ff
	reti                                             ; $6375: $d9


	rst AddAOntoHL                                          ; $6376: $ef
	cp a                                             ; $6377: $bf
	dec e                                            ; $6378: $1d
	ei                                               ; $6379: $fb
	pop af                                           ; $637a: $f1
	rst $38                                          ; $637b: $ff
	ccf                                              ; $637c: $3f
	ccf                                              ; $637d: $3f
	sub b                                            ; $637e: $90
	ldh a, [$7b]                                     ; $637f: $f0 $7b
	and a                                            ; $6381: $a7
	sub h                                            ; $6382: $94
	ld h, b                                          ; $6383: $60
	ret nz                                           ; $6384: $c0

	ld b, b                                          ; $6385: $40
	ldh [rAUD4LEN], a                                ; $6386: $e0 $20
	jr nz, jr_014_636a                               ; $6388: $20 $e0

	ldh [$a0], a                                     ; $638a: $e0 $a0
	ldh [$e0], a                                     ; $638c: $e0 $e0
	push af                                          ; $638e: $f5
	rst SubAFromDE                                          ; $638f: $df
	add b                                            ; $6390: $80
	rst $38                                          ; $6391: $ff
	or [hl]                                          ; $6392: $b6
	nop                                              ; $6393: $00
	ei                                               ; $6394: $fb
	rst SubAFromDE                                          ; $6395: $df
	ld bc, $0298                                     ; $6396: $01 $98 $02
	inc bc                                           ; $6399: $03
	ld [bc], a                                       ; $639a: $02
	inc bc                                           ; $639b: $03
	dec b                                            ; $639c: $05
	rlca                                             ; $639d: $07
	ld b, $7b                                        ; $639e: $06 $7b
	cp $9d                                           ; $63a0: $fe $9d
	dec c                                            ; $63a2: $0d
	rrca                                             ; $63a3: $0f
	ld a, e                                          ; $63a4: $7b
	push af                                          ; $63a5: $f5
	rst SubAFromDE                                          ; $63a6: $df
	inc bc                                           ; $63a7: $03
	add b                                            ; $63a8: $80
	ld [bc], a                                       ; $63a9: $02
	dec b                                            ; $63aa: $05
	rlca                                             ; $63ab: $07
	rrca                                             ; $63ac: $0f
	rrca                                             ; $63ad: $0f
	ld [bc], a                                       ; $63ae: $02
	inc bc                                           ; $63af: $03
	ld a, [bc]                                       ; $63b0: $0a
	dec de                                           ; $63b1: $1b
	inc b                                            ; $63b2: $04
	ld c, $7b                                        ; $63b3: $0e $7b
	ld a, a                                          ; $63b5: $7f
	add h                                            ; $63b6: $84
	rst $38                                          ; $63b7: $ff
	ld l, l                                          ; $63b8: $6d
	rst $38                                          ; $63b9: $ff
	sub d                                            ; $63ba: $92
	rst $38                                          ; $63bb: $ff
	ld e, c                                          ; $63bc: $59
	rst $38                                          ; $63bd: $ff
	cp d                                             ; $63be: $ba
	rst AddAOntoHL                                          ; $63bf: $ef
	cp e                                             ; $63c0: $bb
	xor $b6                                          ; $63c1: $ee $b6
	ld c, a                                          ; $63c3: $4f
	rst $38                                          ; $63c4: $ff
	call $ce77                                       ; $63c5: $cd $77 $ce
	sub a                                            ; $63c8: $97
	rst $38                                          ; $63c9: $ff
	call z, $cdff                                    ; $63ca: $cc $ff $cd
	rst $38                                          ; $63cd: $ff
	ld sp, $83fe                                     ; $63ce: $31 $fe $83
	db $fd                                           ; $63d1: $fd
	rst SubAFromDE                                          ; $63d2: $df
	add b                                            ; $63d3: $80
	add l                                            ; $63d4: $85
	ld b, b                                          ; $63d5: $40
	ret nz                                           ; $63d6: $c0

	and b                                            ; $63d7: $a0
	ldh [$60], a                                     ; $63d8: $e0 $60
	ldh [$50], a                                     ; $63da: $e0 $50
	ldh a, [$b0]                                     ; $63dc: $f0 $b0
	ldh a, [hDisp1_SCY]                                     ; $63de: $f0 $90
	ldh a, [$50]                                     ; $63e0: $f0 $50
	ldh a, [$30]                                     ; $63e2: $f0 $30
	ldh a, [$d8]                                     ; $63e4: $f0 $d8
	ld hl, sp-$50                                    ; $63e6: $f8 $b0
	ldh a, [$28]                                     ; $63e8: $f0 $28
	ld hl, sp+$54                                    ; $63ea: $f8 $54
	db $fc                                           ; $63ec: $fc
	sbc [hl]                                         ; $63ed: $9e
	cp $dd                                           ; $63ee: $fe $dd
	ld bc, $03df                                     ; $63f0: $01 $df $03
	sbc c                                            ; $63f3: $99
	rrca                                             ; $63f4: $0f
	inc c                                            ; $63f5: $0c
	dec de                                           ; $63f6: $1b
	inc d                                            ; $63f7: $14
	rrca                                             ; $63f8: $0f
	rrca                                             ; $63f9: $0f
	reti                                             ; $63fa: $d9


	ld bc, $8c67                                     ; $63fb: $01 $67 $8c
	rst SubAFromDE                                          ; $63fe: $df
	inc bc                                           ; $63ff: $03
	rst $38                                          ; $6400: $ff
	sbc b                                            ; $6401: $98
	ld a, l                                          ; $6402: $7d
	rst $38                                          ; $6403: $ff
	rst $38                                          ; $6404: $ff
	rst JumpTable                                          ; $6405: $c7
	dec sp                                           ; $6406: $3b
	cp $a9                                           ; $6407: $fe $a9
	sbc $ff                                          ; $6409: $de $ff
	add a                                            ; $640b: $87
	rst SubAFromHL                                          ; $640c: $d7
	xor e                                            ; $640d: $ab

jr_014_640e:
	xor e                                            ; $640e: $ab
	push de                                          ; $640f: $d5
	ld d, l                                          ; $6410: $55
	db $eb                                           ; $6411: $eb
	ld b, c                                          ; $6412: $41
	rst $38                                          ; $6413: $ff
	rst $38                                          ; $6414: $ff
	cp a                                             ; $6415: $bf
	cp $92                                           ; $6416: $fe $92
	rst $38                                          ; $6418: $ff
	reti                                             ; $6419: $d9


	rst AddAOntoHL                                          ; $641a: $ef
	cp a                                             ; $641b: $bf
	dec e                                            ; $641c: $1d
	ei                                               ; $641d: $fb
	pop af                                           ; $641e: $f1
	rst $38                                          ; $641f: $ff
	ccf                                              ; $6420: $3f
	ccf                                              ; $6421: $3f
	sub b                                            ; $6422: $90
	ldh a, [$7b]                                     ; $6423: $f0 $7b
	and a                                            ; $6425: $a7
	sub h                                            ; $6426: $94
	ld h, b                                          ; $6427: $60
	ret nz                                           ; $6428: $c0

	ld b, b                                          ; $6429: $40
	ldh [rAUD4LEN], a                                ; $642a: $e0 $20
	jr nz, jr_014_640e                               ; $642c: $20 $e0

	ldh [$a0], a                                     ; $642e: $e0 $a0
	ldh [$e0], a                                     ; $6430: $e0 $e0
	push af                                          ; $6432: $f5
	rst SubAFromDE                                          ; $6433: $df
	add b                                            ; $6434: $80
	ccf                                              ; $6435: $3f
	ret nz                                           ; $6436: $c0

	sbc [hl]                                         ; $6437: $9e
	pop bc                                           ; $6438: $c1
	sbc $ff                                          ; $6439: $de $ff
	sub e                                            ; $643b: $93
	ld a, h                                          ; $643c: $7c
	ld h, h                                          ; $643d: $64
	ld a, $26                                        ; $643e: $3e $26
	dec a                                            ; $6440: $3d
	ccf                                              ; $6441: $3f
	rst FarCall                                          ; $6442: $f7
	rst AddAOntoHL                                          ; $6443: $ef
	rst JumpTable                                          ; $6444: $c7
	rst $38                                          ; $6445: $ff
	ld a, h                                          ; $6446: $7c
	ld a, h                                          ; $6447: $7c
	di                                               ; $6448: $f3
	nop                                              ; $6449: $00
	ei                                               ; $644a: $fb
	rst SubAFromDE                                          ; $644b: $df
	ld bc, $0298                                     ; $644c: $01 $98 $02
	inc bc                                           ; $644f: $03
	ld [bc], a                                       ; $6450: $02
	inc bc                                           ; $6451: $03
	dec b                                            ; $6452: $05
	rlca                                             ; $6453: $07
	ld b, $7b                                        ; $6454: $06 $7b
	cp $9d                                           ; $6456: $fe $9d
	dec c                                            ; $6458: $0d
	rrca                                             ; $6459: $0f
	ld a, e                                          ; $645a: $7b
	push af                                          ; $645b: $f5
	rst SubAFromDE                                          ; $645c: $df
	inc bc                                           ; $645d: $03
	add b                                            ; $645e: $80
	ld [bc], a                                       ; $645f: $02
	dec b                                            ; $6460: $05
	rlca                                             ; $6461: $07
	rrca                                             ; $6462: $0f
	rrca                                             ; $6463: $0f
	ld [bc], a                                       ; $6464: $02
	inc bc                                           ; $6465: $03
	ld a, [bc]                                       ; $6466: $0a
	dec de                                           ; $6467: $1b
	inc b                                            ; $6468: $04
	ld c, $7b                                        ; $6469: $0e $7b
	ld a, a                                          ; $646b: $7f
	add h                                            ; $646c: $84
	rst $38                                          ; $646d: $ff
	ld l, l                                          ; $646e: $6d
	rst $38                                          ; $646f: $ff
	sub d                                            ; $6470: $92
	rst $38                                          ; $6471: $ff
	ld e, c                                          ; $6472: $59
	rst $38                                          ; $6473: $ff
	cp d                                             ; $6474: $ba
	rst AddAOntoHL                                          ; $6475: $ef
	cp e                                             ; $6476: $bb
	xor $b6                                          ; $6477: $ee $b6
	ld c, a                                          ; $6479: $4f
	rst $38                                          ; $647a: $ff
	call $ce77                                       ; $647b: $cd $77 $ce
	sub a                                            ; $647e: $97
	rst $38                                          ; $647f: $ff
	call z, $cdff                                    ; $6480: $cc $ff $cd
	rst $38                                          ; $6483: $ff
	ld sp, $83fe                                     ; $6484: $31 $fe $83
	db $fd                                           ; $6487: $fd
	rst SubAFromDE                                          ; $6488: $df
	add b                                            ; $6489: $80
	add b                                            ; $648a: $80
	ld b, b                                          ; $648b: $40
	ret nz                                           ; $648c: $c0

	and b                                            ; $648d: $a0
	ldh [$60], a                                     ; $648e: $e0 $60
	ldh [$50], a                                     ; $6490: $e0 $50
	ldh a, [$b0]                                     ; $6492: $f0 $b0
	ldh a, [hDisp1_SCY]                                     ; $6494: $f0 $90
	ldh a, [$50]                                     ; $6496: $f0 $50
	ldh a, [$30]                                     ; $6498: $f0 $30
	ldh a, [$d8]                                     ; $649a: $f0 $d8
	ld hl, sp-$50                                    ; $649c: $f8 $b0
	ldh a, [$28]                                     ; $649e: $f0 $28
	ld hl, sp+$54                                    ; $64a0: $f8 $54
	db $fc                                           ; $64a2: $fc
	sbc [hl]                                         ; $64a3: $9e
	cp $1d                                           ; $64a4: $fe $1d
	dec e                                            ; $64a6: $1d
	rra                                              ; $64a7: $1f
	inc de                                           ; $64a8: $13
	add hl, bc                                       ; $64a9: $09
	sbc d                                            ; $64aa: $9a
	rrca                                             ; $64ab: $0f
	rlca                                             ; $64ac: $07
	inc b                                            ; $64ad: $04
	inc bc                                           ; $64ae: $03
	inc bc                                           ; $64af: $03
	ld [hl], a                                       ; $64b0: $77
	sbc d                                            ; $64b1: $9a
	db $db                                           ; $64b2: $db
	ld bc, $8c67                                     ; $64b3: $01 $67 $8c
	ld [hl], a                                       ; $64b6: $77
	db $ec                                           ; $64b7: $ec
	sbc b                                            ; $64b8: $98
	ld a, l                                          ; $64b9: $7d
	rst $38                                          ; $64ba: $ff
	rst $38                                          ; $64bb: $ff
	rst JumpTable                                          ; $64bc: $c7
	dec sp                                           ; $64bd: $3b
	cp $a9                                           ; $64be: $fe $a9
	sbc $ff                                          ; $64c0: $de $ff
	add b                                            ; $64c2: $80
	rst SubAFromHL                                          ; $64c3: $d7
	xor e                                            ; $64c4: $ab
	xor e                                            ; $64c5: $ab
	push de                                          ; $64c6: $d5
	ld d, l                                          ; $64c7: $55
	db $eb                                           ; $64c8: $eb
	ld b, c                                          ; $64c9: $41
	rst $38                                          ; $64ca: $ff
	rst $38                                          ; $64cb: $ff
	cp a                                             ; $64cc: $bf
	cp $92                                           ; $64cd: $fe $92
	rst $38                                          ; $64cf: $ff
	reti                                             ; $64d0: $d9


	rst AddAOntoHL                                          ; $64d1: $ef
	cp a                                             ; $64d2: $bf
	dec e                                            ; $64d3: $1d
	ei                                               ; $64d4: $fb
	pop af                                           ; $64d5: $f1
	rst $38                                          ; $64d6: $ff
	ccf                                              ; $64d7: $3f
	ccf                                              ; $64d8: $3f
	sub b                                            ; $64d9: $90
	ldh a, [$f8]                                     ; $64da: $f0 $f8
	ld a, b                                          ; $64dc: $78
	ld hl, sp+$48                                    ; $64dd: $f8 $48
	sub b                                            ; $64df: $90
	ld [hl], b                                       ; $64e0: $70
	ldh [$9c], a                                     ; $64e1: $e0 $9c
	jr nz, @-$3e                                     ; $64e3: $20 $c0

	ret nz                                           ; $64e5: $c0

	pop af                                           ; $64e6: $f1
	rst SubAFromDE                                          ; $64e7: $df
	add b                                            ; $64e8: $80
	ld sp, hl                                        ; $64e9: $f9
	daa                                              ; $64ea: $27
	ld b, b                                          ; $64eb: $40
	sbc l                                            ; $64ec: $9d
	ld c, $0f                                        ; $64ed: $0e $0f
	dec bc                                           ; $64ef: $0b
	ld b, b                                          ; $64f0: $40
	sbc [hl]                                         ; $64f1: $9e
	or e                                             ; $64f2: $b3
	ld l, e                                          ; $64f3: $6b
	ld h, d                                          ; $64f4: $62
	sbc [hl]                                         ; $64f5: $9e
	ld [bc], a                                       ; $64f6: $02
	ld [hl], a                                       ; $64f7: $77
	ld l, d                                          ; $64f8: $6a
	scf                                              ; $64f9: $37
	ld h, b                                          ; $64fa: $60
	sbc l                                            ; $64fb: $9d
	cp b                                             ; $64fc: $b8
	ld hl, sp+$7b                                    ; $64fd: $f8 $7b
	add d                                            ; $64ff: $82
	sbc [hl]                                         ; $6500: $9e
	ldh a, [$37]                                     ; $6501: $f0 $37
	add d                                            ; $6503: $82
	ld l, a                                          ; $6504: $6f
	add b                                            ; $6505: $80
	inc sp                                           ; $6506: $33
	and b                                            ; $6507: $a0
	sbc d                                            ; $6508: $9a
	ld bc, $ceff                                     ; $6509: $01 $ff $ce
	rst $38                                          ; $650c: $ff
	ld b, h                                          ; $650d: $44
	ld l, [hl]                                       ; $650e: $6e
	ldh [$df], a                                     ; $650f: $e0 $df
	inc bc                                           ; $6511: $03
	rst SubAFromDE                                          ; $6512: $df
	ld bc, $07df                                     ; $6513: $01 $df $07
	sbc c                                            ; $6516: $99
	rrca                                             ; $6517: $0f
	add hl, bc                                       ; $6518: $09
	ld c, $0b                                        ; $6519: $0e $0b
	dec b                                            ; $651b: $05
	rlca                                             ; $651c: $07
	ld [hl], a                                       ; $651d: $77
	db $f4                                           ; $651e: $f4
	dec de                                           ; $651f: $1b
	nop                                              ; $6520: $00
	sbc h                                            ; $6521: $9c
	xor d                                            ; $6522: $aa
	xor e                                            ; $6523: $ab
	rst SubAFromHL                                          ; $6524: $d7
	scf                                              ; $6525: $37
	nop                                              ; $6526: $00
	ld a, d                                          ; $6527: $7a
	and a                                            ; $6528: $a7
	ld a, a                                          ; $6529: $7f
	cp $98                                           ; $652a: $fe $98
	jr nz, @-$5e                                     ; $652c: $20 $a0

	ldh [$a0], a                                     ; $652e: $e0 $a0
	ld h, b                                          ; $6530: $60
	ret nz                                           ; $6531: $c0

	ld b, b                                          ; $6532: $40
	ld e, a                                          ; $6533: $5f
	ld c, $03                                        ; $6534: $0e $03
	add b                                            ; $6536: $80
	ld l, a                                          ; $6537: $6f
	add b                                            ; $6538: $80
	sbc [hl]                                         ; $6539: $9e
	or e                                             ; $653a: $b3
	call z, $fb00                                    ; $653b: $cc $00 $fb
	rst SubAFromDE                                          ; $653e: $df
	ld bc, $0298                                     ; $653f: $01 $98 $02
	inc bc                                           ; $6542: $03
	ld [bc], a                                       ; $6543: $02
	inc bc                                           ; $6544: $03
	dec b                                            ; $6545: $05
	rlca                                             ; $6546: $07
	ld b, $7b                                        ; $6547: $06 $7b
	cp $80                                           ; $6549: $fe $80
	dec c                                            ; $654b: $0d
	rrca                                             ; $654c: $0f
	inc bc                                           ; $654d: $03
	ld [bc], a                                       ; $654e: $02
	dec sp                                           ; $654f: $3b
	ld a, [hl-]                                      ; $6550: $3a
	ccf                                              ; $6551: $3f
	daa                                              ; $6552: $27
	inc de                                           ; $6553: $13
	rra                                              ; $6554: $1f
	rrca                                             ; $6555: $0f
	add hl, bc                                       ; $6556: $09
	ld b, $05                                        ; $6557: $06 $05
	ld a, [bc]                                       ; $6559: $0a
	dec de                                           ; $655a: $1b
	inc b                                            ; $655b: $04
	ld c, $7b                                        ; $655c: $0e $7b
	ld a, a                                          ; $655e: $7f
	add h                                            ; $655f: $84
	rst $38                                          ; $6560: $ff
	ld l, l                                          ; $6561: $6d
	rst $38                                          ; $6562: $ff
	sub d                                            ; $6563: $92
	rst $38                                          ; $6564: $ff
	ld e, c                                          ; $6565: $59
	rst $38                                          ; $6566: $ff
	cp d                                             ; $6567: $ba
	rst AddAOntoHL                                          ; $6568: $ef
	cp e                                             ; $6569: $bb
	sub b                                            ; $656a: $90
	xor $f6                                          ; $656b: $ee $f6
	rrca                                             ; $656d: $0f
	rst $38                                          ; $656e: $ff
	ld bc, $ccff                                     ; $656f: $01 $ff $cc
	rst $38                                          ; $6572: $ff
	adc $ff                                          ; $6573: $ce $ff
	ld c, e                                          ; $6575: $4b
	rst $38                                          ; $6576: $ff
	ld sp, $83fe                                     ; $6577: $31 $fe $83
	db $fd                                           ; $657a: $fd
	rst SubAFromDE                                          ; $657b: $df
	add b                                            ; $657c: $80
	add e                                            ; $657d: $83
	ld b, b                                          ; $657e: $40
	ret nz                                           ; $657f: $c0

	and b                                            ; $6580: $a0
	ldh [$60], a                                     ; $6581: $e0 $60
	ldh [$50], a                                     ; $6583: $e0 $50
	ldh a, [$b0]                                     ; $6585: $f0 $b0
	ldh a, [hDisp1_SCY]                                     ; $6587: $f0 $90
	ldh a, [$50]                                     ; $6589: $f0 $50
	ldh a, [$38]                                     ; $658b: $f0 $38
	ld hl, sp-$22                                    ; $658d: $f8 $de
	or $af                                           ; $658f: $f6 $af
	pop af                                           ; $6591: $f1
	ld h, [hl]                                       ; $6592: $66
	sbc $78                                          ; $6593: $de $78
	ret z                                            ; $6595: $c8

	ldh a, [hDisp1_SCY]                                     ; $6596: $f0 $90
	inc bc                                           ; $6598: $03
	ld [bc], a                                       ; $6599: $02
	db $dd                                           ; $659a: $dd
	ld bc, $9a67                                     ; $659b: $01 $67 $9a
	db $db                                           ; $659e: $db
	ld bc, $f267                                     ; $659f: $01 $67 $f2
	rst SubAFromDE                                          ; $65a2: $df
	inc bc                                           ; $65a3: $03
	rst $38                                          ; $65a4: $ff
	sbc b                                            ; $65a5: $98
	ld a, l                                          ; $65a6: $7d
	rst $38                                          ; $65a7: $ff
	rst $38                                          ; $65a8: $ff
	rst JumpTable                                          ; $65a9: $c7
	dec sp                                           ; $65aa: $3b
	cp $a9                                           ; $65ab: $fe $a9
	sbc $ff                                          ; $65ad: $de $ff
	add b                                            ; $65af: $80
	rst SubAFromHL                                          ; $65b0: $d7
	xor e                                            ; $65b1: $ab
	xor e                                            ; $65b2: $ab
	push de                                          ; $65b3: $d5
	ld d, l                                          ; $65b4: $55
	db $eb                                           ; $65b5: $eb
	ld b, c                                          ; $65b6: $41
	rst $38                                          ; $65b7: $ff
	rst $38                                          ; $65b8: $ff
	cp a                                             ; $65b9: $bf
	cp $92                                           ; $65ba: $fe $92
	rst $38                                          ; $65bc: $ff
	reti                                             ; $65bd: $d9


	rst AddAOntoHL                                          ; $65be: $ef
	cp a                                             ; $65bf: $bf
	dec e                                            ; $65c0: $1d
	ei                                               ; $65c1: $fb
	pop af                                           ; $65c2: $f1
	rst $38                                          ; $65c3: $ff
	ccf                                              ; $65c4: $3f
	ccf                                              ; $65c5: $3f
	ldh a, [$30]                                     ; $65c6: $f0 $30
	ret nc                                           ; $65c8: $d0

	ld [hl], b                                       ; $65c9: $70
	and b                                            ; $65ca: $a0
	ldh [rLCDC], a                                   ; $65cb: $e0 $40
	ret nz                                           ; $65cd: $c0

	add b                                            ; $65ce: $80
	sbc [hl]                                         ; $65cf: $9e
	add b                                            ; $65d0: $80
	rst AddAOntoHL                                          ; $65d1: $ef
	ld [hl], a                                       ; $65d2: $77
	db $ec                                           ; $65d3: $ec
	ccf                                              ; $65d4: $3f
	ld h, b                                          ; $65d5: $60
	sbc c                                            ; $65d6: $99
	or [hl]                                          ; $65d7: $b6
	ld c, a                                          ; $65d8: $4f
	rst $38                                          ; $65d9: $ff
	call $c67f                                       ; $65da: $cd $7f $c6
	ld a, e                                          ; $65dd: $7b
	ld e, [hl]                                       ; $65de: $5e
	sbc [hl]                                         ; $65df: $9e
	call Call_014_607b                               ; $65e0: $cd $7b $60
	sbc [hl]                                         ; $65e3: $9e
	sub e                                            ; $65e4: $93
	ld b, a                                          ; $65e5: $47
	add b                                            ; $65e6: $80
	push af                                          ; $65e7: $f5
	ld [hl], a                                       ; $65e8: $77
	ldh a, [c]                                       ; $65e9: $f2
	ld b, a                                          ; $65ea: $47
	add b                                            ; $65eb: $80
	sbc [hl]                                         ; $65ec: $9e
	pop bc                                           ; $65ed: $c1
	sbc $ff                                          ; $65ee: $de $ff
	sub e                                            ; $65f0: $93
	ld a, h                                          ; $65f1: $7c
	ld h, h                                          ; $65f2: $64
	ld a, $26                                        ; $65f3: $3e $26
	dec a                                            ; $65f5: $3d
	ccf                                              ; $65f6: $3f
	rst FarCall                                          ; $65f7: $f7
	rst AddAOntoHL                                          ; $65f8: $ef

jr_014_65f9:
	rst JumpTable                                          ; $65f9: $c7
	rst $38                                          ; $65fa: $ff
	ld a, h                                          ; $65fb: $7c
	ld a, h                                          ; $65fc: $7c
	rlca                                             ; $65fd: $07
	add b                                            ; $65fe: $80

jr_014_65ff:
	ld a, [hl+]                                      ; $65ff: $2a
	ret nz                                           ; $6600: $c0

	sbc h                                            ; $6601: $9c
	dec sp                                           ; $6602: $3b

jr_014_6603:
	ccf                                              ; $6603: $3f
	ld h, $6e                                        ; $6604: $26 $6e
	ret nz                                           ; $6606: $c0

	sbc d                                            ; $6607: $9a
	nop                                              ; $6608: $00
	ei                                               ; $6609: $fb
	rst SubAFromDE                                          ; $660a: $df
	ld bc, $029c                                     ; $660b: $01 $9c $02
	inc bc                                           ; $660e: $03
	ld [bc], a                                       ; $660f: $02
	sbc $03                                          ; $6610: $de $03
	sbc c                                            ; $6612: $99
	ld c, $0f                                        ; $6613: $0e $0f
	db $10                                           ; $6615: $10
	rra                                              ; $6616: $1f
	rrca                                             ; $6617: $0f
	rrca                                             ; $6618: $0f
	sbc $01                                          ; $6619: $de $01
	cp a                                             ; $661b: $bf
	ld bc, $dc01                                     ; $661c: $01 $01 $dc
	ld bc, $dfff                                     ; $661f: $01 $ff $df
	ld a, a                                          ; $6622: $7f
	sub d                                            ; $6623: $92
	add b                                            ; $6624: $80
	rst $38                                          ; $6625: $ff
	jr z, jr_014_65ff                                ; $6626: $28 $d7

	jr nc, jr_014_65f9                               ; $6628: $30 $cf

	jr z, jr_014_6603                                ; $662a: $28 $d7

	db $fc                                           ; $662c: $fc
	rst $38                                          ; $662d: $ff
	inc bc                                           ; $662e: $03
	rst $38                                          ; $662f: $ff
	nop                                              ; $6630: $00
	db $dd                                           ; $6631: $dd
	rst $38                                          ; $6632: $ff
	sbc d                                            ; $6633: $9a
	xor l                                            ; $6634: $ad
	ld [hl], a                                       ; $6635: $77
	sbc $ff                                          ; $6636: $de $ff
	call z, $fe7b                                    ; $6638: $cc $7b $fe
	sbc h                                            ; $663b: $9c
	ld sp, $83ff                                     ; $663c: $31 $ff $83
	db $fd                                           ; $663f: $fd
	rst SubAFromDE                                          ; $6640: $df
	add b                                            ; $6641: $80
	sbc e                                            ; $6642: $9b
	ld b, b                                          ; $6643: $40
	ret nz                                           ; $6644: $c0

	jr nz, @-$1e                                     ; $6645: $20 $e0

	ld l, a                                          ; $6647: $6f
	cp $da                                           ; $6648: $fe $da
	ldh [$9a], a                                     ; $664a: $e0 $9a
	and b                                            ; $664c: $a0
	ldh [$a0], a                                     ; $664d: $e0 $a0
	ret nz                                           ; $664f: $c0

	ret nz                                           ; $6650: $c0

	db $dd                                           ; $6651: $dd
	add b                                            ; $6652: $80
	rst $38                                          ; $6653: $ff
	rst SubAFromDE                                          ; $6654: $df
	dec c                                            ; $6655: $0d

jr_014_6656:
	sub a                                            ; $6656: $97
	inc de                                           ; $6657: $13
	ld e, $13                                        ; $6658: $1e $13
	rra                                              ; $665a: $1f
	rrca                                             ; $665b: $0f
	add hl, bc                                       ; $665c: $09
	rlca                                             ; $665d: $07
	rlca                                             ; $665e: $07
	ld [hl], a                                       ; $665f: $77
	sbc b                                            ; $6660: $98
	rst SubAFromDE                                          ; $6661: $df
	ld bc, $9773                                     ; $6662: $01 $73 $97
	ld a, e                                          ; $6665: $7b
	db $fc                                           ; $6666: $fc
	sbc l                                            ; $6667: $9d
	inc c                                            ; $6668: $0c

jr_014_6669:
	rrca                                             ; $6669: $0f
	ld [hl], a                                       ; $666a: $77
	xor $93                                          ; $666b: $ee $93
	rst $38                                          ; $666d: $ff
	cp $f9                                           ; $666e: $fe $f9
	sbc a                                            ; $6670: $9f
	ld sp, hl                                        ; $6671: $f9
	xor [hl]                                         ; $6672: $ae
	db $fd                                           ; $6673: $fd
	xor a                                            ; $6674: $af
	rst $38                                          ; $6675: $ff
	ld [hl+], a                                      ; $6676: $22
	rst $38                                          ; $6677: $ff
	and c                                            ; $6678: $a1
	sbc $ff                                          ; $6679: $de $ff
	sbc [hl]                                         ; $667b: $9e
	jr z, jr_014_66f9                                ; $667c: $28 $7b

	cp $90                                           ; $667e: $fe $90
	jr jr_014_6669                                   ; $6680: $18 $e7

	db $e4                                           ; $6682: $e4
	rst SubAFromBC                                          ; $6683: $e7
	rst SubAFromBC                                          ; $6684: $e7
	rst $38                                          ; $6685: $ff
	ld a, [hl]                                       ; $6686: $7e
	rst $38                                          ; $6687: $ff
	rst $38                                          ; $6688: $ff
	db $fc                                           ; $6689: $fc
	rst $38                                          ; $668a: $ff
	rrca                                             ; $668b: $0f
	rrca                                             ; $668c: $0f
	ret nz                                           ; $668d: $c0

	ld b, b                                          ; $668e: $40
	ld [hl], e                                       ; $668f: $73
	xor e                                            ; $6690: $ab
	ld a, a                                          ; $6691: $7f
	or b                                             ; $6692: $b0
	sbc h                                            ; $6693: $9c
	jr nz, jr_014_6656                               ; $6694: $20 $c0

	ld b, b                                          ; $6696: $40

jr_014_6697:
	reti                                             ; $6697: $d9


	add b                                            ; $6698: $80
	ld a, a                                          ; $6699: $7f
	or $db                                           ; $669a: $f6 $db
	ret nz                                           ; $669c: $c0

jr_014_669d:
	rst SubAFromDE                                          ; $669d: $df
	ldh [$df], a                                     ; $669e: $e0 $df
	ret nz                                           ; $66a0: $c0

jr_014_66a1:
	adc h                                            ; $66a1: $8c
	ld [bc], a                                       ; $66a2: $02
	db $dd                                           ; $66a3: $dd
	ld bc, $dfe0                                     ; $66a4: $01 $e0 $df
	rst SubAFromDE                                          ; $66a7: $df
	ld bc, $029c                                     ; $66a8: $01 $9c $02
	inc bc                                           ; $66ab: $03
	ld [bc], a                                       ; $66ac: $02
	sbc $03                                          ; $66ad: $de $03
	sbc c                                            ; $66af: $99
	ld c, $0f                                        ; $66b0: $0e $0f
	db $10                                           ; $66b2: $10
	rra                                              ; $66b3: $1f
	rrca                                             ; $66b4: $0f
	rrca                                             ; $66b5: $0f
	ld [hl], a                                       ; $66b6: $77
	call $fe7b                                       ; $66b7: $cd $7b $fe
	sbc $01                                          ; $66ba: $de $01
	rst SubAFromDE                                          ; $66bc: $df
	rst $38                                          ; $66bd: $ff
	rst $38                                          ; $66be: $ff
	rst SubAFromDE                                          ; $66bf: $df
	ld a, a                                          ; $66c0: $7f
	sub d                                            ; $66c1: $92
	add b                                            ; $66c2: $80
	rst $38                                          ; $66c3: $ff
	jr z, jr_014_669d                                ; $66c4: $28 $d7

	jr nc, jr_014_6697                               ; $66c6: $30 $cf

	jr z, jr_014_66a1                                ; $66c8: $28 $d7

	db $fc                                           ; $66ca: $fc
	rst $38                                          ; $66cb: $ff
	inc bc                                           ; $66cc: $03
	rst $38                                          ; $66cd: $ff
	nop                                              ; $66ce: $00
	db $dd                                           ; $66cf: $dd
	rst $38                                          ; $66d0: $ff
	sbc d                                            ; $66d1: $9a
	xor l                                            ; $66d2: $ad
	ld [hl], a                                       ; $66d3: $77
	sbc $ff                                          ; $66d4: $de $ff
	call z, $fe7b                                    ; $66d6: $cc $7b $fe
	sbc h                                            ; $66d9: $9c
	ld sp, $83ff                                     ; $66da: $31 $ff $83
	db $fd                                           ; $66dd: $fd
	rst SubAFromDE                                          ; $66de: $df
	add b                                            ; $66df: $80
	sbc e                                            ; $66e0: $9b
	ld b, b                                          ; $66e1: $40
	ret nz                                           ; $66e2: $c0

	jr nz, @-$1e                                     ; $66e3: $20 $e0

	ld l, a                                          ; $66e5: $6f
	cp $da                                           ; $66e6: $fe $da
	ldh [$8e], a                                     ; $66e8: $e0 $8e
	and b                                            ; $66ea: $a0
	ldh [$a0], a                                     ; $66eb: $e0 $a0
	ret nz                                           ; $66ed: $c0

	ret nz                                           ; $66ee: $c0

	add b                                            ; $66ef: $80
	add b                                            ; $66f0: $80
	add a                                            ; $66f1: $87
	add a                                            ; $66f2: $87
	rla                                              ; $66f3: $17
	db $fc                                           ; $66f4: $fc
	rst SubAFromBC                                          ; $66f5: $e7
	cp h                                             ; $66f6: $bc
	ld a, a                                          ; $66f7: $7f
	ld a, h                                          ; $66f8: $7c

jr_014_66f9:
	rlca                                             ; $66f9: $07
	ld b, $6f                                        ; $66fa: $06 $6f
	ld a, b                                          ; $66fc: $78
	db $dd                                           ; $66fd: $dd
	ld bc, $9773                                     ; $66fe: $01 $73 $97
	ld a, e                                          ; $6701: $7b

jr_014_6702:
	db $fc                                           ; $6702: $fc
	sub e                                            ; $6703: $93
	inc c                                            ; $6704: $0c
	rrca                                             ; $6705: $0f
	rlca                                             ; $6706: $07
	rlca                                             ; $6707: $07
	nop                                              ; $6708: $00
	nop                                              ; $6709: $00
	rst $38                                          ; $670a: $ff
	cp $ff                                           ; $670b: $fe $ff
	db $10                                           ; $670d: $10
	rst $38                                          ; $670e: $ff
	jr nz, @+$6d                                     ; $670f: $20 $6b

	cp $df                                           ; $6711: $fe $df
	rst $38                                          ; $6713: $ff
	sbc [hl]                                         ; $6714: $9e
	jr z, jr_014_6792                                ; $6715: $28 $7b

	cp $86                                           ; $6717: $fe $86
	jr jr_014_6702                                   ; $6719: $18 $e7

	db $e4                                           ; $671b: $e4
	rst SubAFromBC                                          ; $671c: $e7
	rst SubAFromBC                                          ; $671d: $e7
	rst $38                                          ; $671e: $ff
	ld a, [hl]                                       ; $671f: $7e
	rst $38                                          ; $6720: $ff
	rst $38                                          ; $6721: $ff
	db $fc                                           ; $6722: $fc
	rst $38                                          ; $6723: $ff
	rrca                                             ; $6724: $0f
	rrca                                             ; $6725: $0f
	ld hl, sp+$7f                                    ; $6726: $f8 $7f
	add sp, $3f                                      ; $6728: $e8 $3f
	push af                                          ; $672a: $f5
	ccf                                              ; $672b: $3f

jr_014_672c:
	rst $38                                          ; $672c: $ff
	rst $38                                          ; $672d: $ff
	add e                                            ; $672e: $83
	add e                                            ; $672f: $83
	add b                                            ; $6730: $80
	add b                                            ; $6731: $80
	ld [hl], a                                       ; $6732: $77
	sub [hl]                                         ; $6733: $96
	db $dd                                           ; $6734: $dd
	add b                                            ; $6735: $80
	sbc l                                            ; $6736: $9d
	ret nz                                           ; $6737: $c0

	ld b, b                                          ; $6738: $40
	db $db                                           ; $6739: $db
	ret nz                                           ; $673a: $c0

	rst SubAFromDE                                          ; $673b: $df
	ldh [$dd], a                                     ; $673c: $e0 $dd
	ret nz                                           ; $673e: $c0

	sbc [hl]                                         ; $673f: $9e
	ld h, b                                          ; $6740: $60
	ld a, e                                          ; $6741: $7b
	adc d                                            ; $6742: $8a
	ld a, a                                          ; $6743: $7f
	sub c                                            ; $6744: $91
	rst SubAFromDE                                          ; $6745: $df
	ret nz                                           ; $6746: $c0

	ld [$417b], a                                    ; $6747: $ea $7b $41
	adc l                                            ; $674a: $8d
	ld d, b                                          ; $674b: $50
	xor a                                            ; $674c: $af
	cpl                                              ; $674d: $2f
	ret nc                                           ; $674e: $d0

	inc d                                            ; $674f: $14
	ld l, e                                          ; $6750: $6b
	ld [$0637], sp                                   ; $6751: $08 $37 $06
	add hl, sp                                       ; $6754: $39
	ld [$0217], sp                                   ; $6755: $08 $17 $02
	dec b                                            ; $6758: $05
	ld bc, $0002                                     ; $6759: $01 $02 $00
	inc bc                                           ; $675c: $03
	ld [hl], a                                       ; $675d: $77
	ld hl, $7bfa                                     ; $675e: $21 $fa $7b
	dec e                                            ; $6761: $1d
	sbc [hl]                                         ; $6762: $9e
	add b                                            ; $6763: $80
	ld a, e                                          ; $6764: $7b
	call c, $207f                                    ; $6765: $dc $7f $20
	ld a, a                                          ; $6768: $7f
	or $8b                                           ; $6769: $f6 $8b
	adc a                                            ; $676b: $8f
	ld [hl], b                                       ; $676c: $70
	ld h, b                                          ; $676d: $60
	sbc a                                            ; $676e: $9f
	rra                                              ; $676f: $1f
	ldh [rP1], a                                     ; $6770: $e0 $00
	rst $38                                          ; $6772: $ff
	inc sp                                           ; $6773: $33
	call z, $ff00                                    ; $6774: $cc $00 $ff
	add $39                                          ; $6777: $c6 $39
	nop                                              ; $6779: $00
	rst $38                                          ; $677a: $ff
	jr c, jr_014_67c4                                ; $677b: $38 $47

	inc bc                                           ; $677d: $03
	inc a                                            ; $677e: $3c
	ld [hl], a                                       ; $677f: $77
	ldh [$80], a                                     ; $6780: $e0 $80
	ccf                                              ; $6782: $3f
	ret nz                                           ; $6783: $c0

	ret nz                                           ; $6784: $c0

	ccf                                              ; $6785: $3f
	ld a, a                                          ; $6786: $7f
	add b                                            ; $6787: $80
	ld bc, $fffe                                     ; $6788: $01 $fe $ff
	nop                                              ; $678b: $00

jr_014_678c:
	inc e                                            ; $678c: $1c
	db $e3                                           ; $678d: $e3
	pop hl                                           ; $678e: $e1
	ld e, $1e                                        ; $678f: $1e $1e
	pop hl                                           ; $6791: $e1

jr_014_6792:
	pop af                                           ; $6792: $f1
	ld c, $0c                                        ; $6793: $0e $0c
	di                                               ; $6795: $f3
	ld hl, sp+$06                                    ; $6796: $f8 $06
	inc b                                            ; $6798: $04
	ld hl, sp+$30                                    ; $6799: $f8 $30
	call z, $f000                                    ; $679b: $cc $00 $f0
	nop                                              ; $679e: $00
	db $fc                                           ; $679f: $fc
	ld hl, sp-$73                                    ; $67a0: $f8 $8d
	ld b, $f8                                        ; $67a2: $06 $f8
	ld b, $0c                                        ; $67a4: $06 $0c
	ldh a, [c]                                       ; $67a6: $f2
	jr nc, @-$32                                     ; $67a7: $30 $cc

	ret nz                                           ; $67a9: $c0

	jr c, jr_014_672c                                ; $67aa: $38 $80

	ld [hl], b                                       ; $67ac: $70
	ld b, b                                          ; $67ad: $40
	and b                                            ; $67ae: $a0
	add b                                            ; $67af: $80
	ld b, b                                          ; $67b0: $40
	nop                                              ; $67b1: $00
	ret nz                                           ; $67b2: $c0

	nop                                              ; $67b3: $00
	ld a, e                                          ; $67b4: $7b
	ld d, [hl]                                       ; $67b5: $56
	ld hl, sp-$21                                    ; $67b6: $f8 $df
	ccf                                              ; $67b8: $3f
	adc [hl]                                         ; $67b9: $8e
	ld b, b                                          ; $67ba: $40
	jr nc, jr_014_678c                               ; $67bb: $30 $cf

	rra                                              ; $67bd: $1f
	ldh [rIF], a                                     ; $67be: $e0 $0f
	ld [hl], b                                       ; $67c0: $70
	add hl, bc                                       ; $67c1: $09
	ld [hl], $07                                     ; $67c2: $36 $07

jr_014_67c4:
	jr c, @+$03                                      ; $67c4: $38 $01

	ld e, $02                                        ; $67c6: $1e $02
	dec c                                            ; $67c8: $0d
	ld bc, $4706                                     ; $67c9: $01 $06 $47
	add b                                            ; $67cc: $80
	ld l, a                                          ; $67cd: $6f
	ld a, h                                          ; $67ce: $7c
	ld a, a                                          ; $67cf: $7f
	db $fc                                           ; $67d0: $fc
	ld a, a                                          ; $67d1: $7f
	sbc [hl]                                         ; $67d2: $9e
	sub l                                            ; $67d3: $95
	ldh [$1f], a                                     ; $67d4: $e0 $1f
	rst $38                                          ; $67d6: $ff
	nop                                              ; $67d7: $00
	and b                                            ; $67d8: $a0
	ld e, a                                          ; $67d9: $5f
	ld a, a                                          ; $67da: $7f
	add b                                            ; $67db: $80
	add b                                            ; $67dc: $80
	ld a, a                                          ; $67dd: $7f
	ld [hl], a                                       ; $67de: $77
	ld a, b                                          ; $67df: $78
	sbc e                                            ; $67e0: $9b
	ld a, $41                                        ; $67e1: $3e $41

jr_014_67e3:
	ld bc, $3e3e                                     ; $67e3: $01 $3e $3e
	ret nz                                           ; $67e6: $c0

	ld c, [hl]                                       ; $67e7: $4e
	jr nc, jr_014_682c                               ; $67e8: $30 $42

	ret nz                                           ; $67ea: $c0

	ld a, a                                          ; $67eb: $7f
	ldh a, [c]                                       ; $67ec: $f2
	ld a, a                                          ; $67ed: $7f
	cp $9a                                           ; $67ee: $fe $9a
	sub b                                            ; $67f0: $90
	rst $38                                          ; $67f1: $ff
	sub c                                            ; $67f2: $91
	rst $38                                          ; $67f3: $ff
	rst $38                                          ; $67f4: $ff
	sbc $7f                                          ; $67f5: $de $7f
	sbc h                                            ; $67f7: $9c
	ld e, l                                          ; $67f8: $5d
	ld a, a                                          ; $67f9: $7f
	ld a, a                                          ; $67fa: $7f
	ld [hl], $c0                                     ; $67fb: $36 $c0
	db $dd                                           ; $67fd: $dd
	add b                                            ; $67fe: $80
	ld sp, hl                                        ; $67ff: $f9
	sbc e                                            ; $6800: $9b
	ld c, c                                          ; $6801: $49
	ld a, a                                          ; $6802: $7f
	scf                                              ; $6803: $37
	scf                                              ; $6804: $37
	ldh [$c9], a                                     ; $6805: $e0 $c9
	rst SubAFromDE                                          ; $6807: $df
	ld c, $9d                                        ; $6808: $0e $9d
	ld de, $fd1f                                     ; $680a: $11 $1f $fd
	rst SubAFromDE                                          ; $680d: $df
	rra                                              ; $680e: $1f
	sbc h                                            ; $680f: $9c
	jr nz, jr_014_6851                               ; $6810: $20 $3f

	ld b, b                                          ; $6812: $40
	ld a, c                                          ; $6813: $79
	jp c, $fe67                                      ; $6814: $da $67 $fe

	db $db                                           ; $6817: $db
	rst $38                                          ; $6818: $ff
	db $dd                                           ; $6819: $dd
	ld a, a                                          ; $681a: $7f
	rst SubAFromDE                                          ; $681b: $df
	ccf                                              ; $681c: $3f
	db $fd                                           ; $681d: $fd
	rst SubAFromDE                                          ; $681e: $df
	ret nz                                           ; $681f: $c0

	ld a, [hl]                                       ; $6820: $7e
	ld e, [hl]                                       ; $6821: $5e
	adc l                                            ; $6822: $8d
	db $10                                           ; $6823: $10
	ldh a, [$08]                                     ; $6824: $f0 $08
	ld hl, sp+$08                                    ; $6826: $f8 $08
	ld hl, sp+$0c                                    ; $6828: $f8 $0c
	db $fc                                           ; $682a: $fc
	ld a, [bc]                                       ; $682b: $0a

jr_014_682c:
	cp $01                                           ; $682c: $fe $01
	rst $38                                          ; $682e: $ff
	cp $fe                                           ; $682f: $fe $fe
	ld hl, sp-$18                                    ; $6831: $f8 $e8
	ld hl, sp-$58                                    ; $6833: $f8 $a8
	ld a, e                                          ; $6835: $7b
	cp $98                                           ; $6836: $fe $98
	ret c                                            ; $6838: $d8

	ldh a, [rAUD1SWEEP]                              ; $6839: $f0 $10
	inc l                                            ; $683b: $2c
	ccf                                              ; $683c: $3f
	ld sp, $753f                                     ; $683d: $31 $3f $75
	adc [hl]                                         ; $6840: $8e
	jp hl                                            ; $6841: $e9


	ld a, e                                          ; $6842: $7b
	jr nz, jr_014_67e3                               ; $6843: $20 $9e

	rrca                                             ; $6845: $0f
	ld a, c                                          ; $6846: $79
	adc e                                            ; $6847: $8b
	ld a, a                                          ; $6848: $7f
	xor e                                            ; $6849: $ab
	sub [hl]                                         ; $684a: $96
	ret nz                                           ; $684b: $c0

	ld a, a                                          ; $684c: $7f
	ld b, b                                          ; $684d: $40
	ccf                                              ; $684e: $3f
	jr nz, jr_014_6890                               ; $684f: $20 $3f

jr_014_6851:
	ccf                                              ; $6851: $3f
	ld a, a                                          ; $6852: $7f
	ld b, b                                          ; $6853: $40
	ld a, e                                          ; $6854: $7b
	cp $9c                                           ; $6855: $fe $9c
	ld c, [hl]                                       ; $6857: $4e
	ccf                                              ; $6858: $3f
	inc h                                            ; $6859: $24
	ld a, e                                          ; $685a: $7b
	cp $8c                                           ; $685b: $fe $8c
	ccf                                              ; $685d: $3f
	rra                                              ; $685e: $1f
	ld d, $1f                                        ; $685f: $16 $1f
	rra                                              ; $6861: $1f
	pop hl                                           ; $6862: $e1
	pop hl                                           ; $6863: $e1
	cp $9f                                           ; $6864: $fe $9f
	ld a, [$fd0f]                                    ; $6866: $fa $0f $fd
	rrca                                             ; $6869: $0f
	rst $38                                          ; $686a: $ff
	rra                                              ; $686b: $1f
	ldh a, [$30]                                     ; $686c: $f0 $30
	ldh [rAUD4LEN], a                                ; $686e: $e0 $20
	ld a, c                                          ; $6870: $79
	db $ec                                           ; $6871: $ec
	ld h, l                                          ; $6872: $65
	ld [hl], a                                       ; $6873: $77
	sbc [hl]                                         ; $6874: $9e
	ld h, b                                          ; $6875: $60
	db $dd                                           ; $6876: $dd

jr_014_6877:
	ret nz                                           ; $6877: $c0

	ld [hl], l                                       ; $6878: $75
	rst SubAFromHL                                          ; $6879: $d7
	sbc d                                            ; $687a: $9a
	jr nc, @-$0e                                     ; $687b: $30 $f0

	jr jr_014_6877                                   ; $687d: $18 $f8

	ld c, b                                          ; $687f: $48
	ld a, e                                          ; $6880: $7b
	adc a                                            ; $6881: $8f
	rst SubAFromDE                                          ; $6882: $df
	ldh a, [$ed]                                     ; $6883: $f0 $ed
	sbc c                                            ; $6885: $99
	ld e, e                                          ; $6886: $5b
	ld a, a                                          ; $6887: $7f
	ld c, d                                          ; $6888: $4a
	ld a, [hl]                                       ; $6889: $7e
	ld [hl], $36                                     ; $688a: $36 $36
	push hl                                          ; $688c: $e5
	rst SubAFromDE                                          ; $688d: $df
	ld hl, sp-$62                                    ; $688e: $f8 $9e

jr_014_6890:
	ld b, $7b                                        ; $6890: $06 $7b
	ld c, h                                          ; $6892: $4c
	ld a, e                                          ; $6893: $7b
	ld a, l                                          ; $6894: $7d
	sbc c                                            ; $6895: $99
	ld a, a                                          ; $6896: $7f
	nop                                              ; $6897: $00
	rst $38                                          ; $6898: $ff
	ret nz                                           ; $6899: $c0

	rst $38                                          ; $689a: $ff
	jr nc, jr_014_6918                               ; $689b: $30 $7b

	ld l, a                                          ; $689d: $6f
	sub e                                            ; $689e: $93
	ld a, a                                          ; $689f: $7f
	rst SubAFromDE                                          ; $68a0: $df
	rst $38                                          ; $68a1: $ff
	db $db                                           ; $68a2: $db
	rst $38                                          ; $68a3: $ff
	set 7, a                                         ; $68a4: $cb $ff
	inc bc                                           ; $68a6: $03
	cp $0e                                           ; $68a7: $fe $0e
	cp $fe                                           ; $68a9: $fe $fe
	ei                                               ; $68ab: $fb
	ld a, c                                          ; $68ac: $79
	ld l, h                                          ; $68ad: $6c
	ld a, e                                          ; $68ae: $7b
	sub h                                            ; $68af: $94
	ld h, a                                          ; $68b0: $67
	cp $75                                           ; $68b1: $fe $75
	ld b, $5e                                        ; $68b3: $06 $5e
	sbc [hl]                                         ; $68b5: $9e
	ld h, [hl]                                       ; $68b6: $66
	ld c, d                                          ; $68b7: $4a
	reti                                             ; $68b8: $d9


	ld bc, $93f3                                     ; $68b9: $01 $f3 $93
	add $fe                                          ; $68bc: $c6 $fe
	sub a                                            ; $68be: $97
	db $fd                                           ; $68bf: $fd
	rst SubAFromHL                                          ; $68c0: $d7
	ld a, l                                          ; $68c1: $7d
	rst FarCall                                          ; $68c2: $f7
	ld a, l                                          ; $68c3: $7d
	xor $3a                                          ; $68c4: $ee $3a
	cp $32                                           ; $68c6: $fe $32
	sbc $fe                                          ; $68c8: $de $fe
	sbc b                                            ; $68ca: $98
	ld a, [hl+]                                      ; $68cb: $2a
	cp $12                                           ; $68cc: $fe $12
	cp $92                                           ; $68ce: $fe $92
	db $fc                                           ; $68d0: $fc
	sub h                                            ; $68d1: $94
	ld a, e                                          ; $68d2: $7b
	cp $9e                                           ; $68d3: $fe $9e
	db $fc                                           ; $68d5: $fc
	sbc $7c                                          ; $68d6: $de $7c
	sbc b                                            ; $68d8: $98
	ld e, h                                          ; $68d9: $5c
	ld a, b                                          ; $68da: $78
	ld a, b                                          ; $68db: $78
	ld c, b                                          ; $68dc: $48
	ld a, b                                          ; $68dd: $78
	jr nc, @+$32                                     ; $68de: $30 $30

	db $e4                                           ; $68e0: $e4
	ld a, c                                          ; $68e1: $79
	call nz, $029d                                   ; $68e2: $c4 $9d $02
	db $fd                                           ; $68e5: $fd
	ld [hl], l                                       ; $68e6: $75
	cp h                                             ; $68e7: $bc
	ld a, l                                          ; $68e8: $7d
	call nz, $f099                                   ; $68e9: $c4 $99 $f0
	rrca                                             ; $68ec: $0f
	nop                                              ; $68ed: $00
	rst $38                                          ; $68ee: $ff
	rst SubAFromBC                                          ; $68ef: $e7
	jr jr_014_6969                                   ; $68f0: $18 $77

	ld d, [hl]                                       ; $68f2: $56
	add e                                            ; $68f3: $83
	ld c, $f1                                        ; $68f4: $0e $f1
	inc e                                            ; $68f6: $1c
	db $e3                                           ; $68f7: $e3
	nop                                              ; $68f8: $00
	cp $70                                           ; $68f9: $fe $70
	adc b                                            ; $68fb: $88
	add b                                            ; $68fc: $80
	ld a, b                                          ; $68fd: $78
	nop                                              ; $68fe: $00
	ld hl, sp-$10                                    ; $68ff: $f8 $f0
	inc c                                            ; $6901: $0c
	db $fc                                           ; $6902: $fc
	ld [bc], a                                       ; $6903: $02
	nop                                              ; $6904: $00
	cp $3c                                           ; $6905: $fe $3c
	jp nz, $8c70                                     ; $6907: $c2 $70 $8c

	nop                                              ; $690a: $00
	ld hl, sp+$60                                    ; $690b: $f8 $60
	sub b                                            ; $690d: $90
	ret nz                                           ; $690e: $c0

	jr nz, jr_014_695a                               ; $690f: $20 $49

	ld h, b                                          ; $6911: $60
	ld [hl], e                                       ; $6912: $73
	ld h, b                                          ; $6913: $60
	ld a, h                                          ; $6914: $7c
	ld [hl], c                                       ; $6915: $71
	sbc c                                            ; $6916: $99
	inc b                                            ; $6917: $04

jr_014_6918:
	rlca                                             ; $6918: $07
	ld b, $05                                        ; $6919: $06 $05
	rlca                                             ; $691b: $07
	inc b                                            ; $691c: $04
	halt                                             ; $691d: $76
	ld [hl], $df                                     ; $691e: $36 $df
	rra                                              ; $6920: $1f
	ld a, a                                          ; $6921: $7f
	push af                                          ; $6922: $f5
	ld a, h                                          ; $6923: $7c
	ld h, b                                          ; $6924: $60
	ld a, a                                          ; $6925: $7f
	db $f4                                           ; $6926: $f4
	ld a, a                                          ; $6927: $7f
	cp $7f                                           ; $6928: $fe $7f
	ld a, [$01df]                                    ; $692a: $fa $df $01
	ld e, h                                          ; $692d: $5c
	ld bc, $dffb                                     ; $692e: $01 $fb $df
	inc bc                                           ; $6931: $03
	add a                                            ; $6932: $87
	rrca                                             ; $6933: $0f
	inc c                                            ; $6934: $0c
	rra                                              ; $6935: $1f
	db $10                                           ; $6936: $10
	ccf                                              ; $6937: $3f
	jr nz, jr_014_6976                               ; $6938: $20 $3c

	inc hl                                           ; $693a: $23
	ld [hl], b                                       ; $693b: $70
	ld c, a                                          ; $693c: $4f
	ld b, e                                          ; $693d: $43
	ld a, h                                          ; $693e: $7c
	adc a                                            ; $693f: $8f
	ldh a, [rIE]                                     ; $6940: $f0 $ff
	add b                                            ; $6942: $80
	rst $38                                          ; $6943: $ff
	add b                                            ; $6944: $80
	cp $81                                           ; $6945: $fe $81
	db $fc                                           ; $6947: $fc
	add e                                            ; $6948: $83
	ld sp, hl                                        ; $6949: $f9
	add [hl]                                         ; $694a: $86
	db $fd                                           ; $694b: $fd
	rst SubAFromDE                                          ; $694c: $df
	db $fc                                           ; $694d: $fc
	sub e                                            ; $694e: $93
	rst GetHLinHL                                          ; $694f: $cf
	inc sp                                           ; $6950: $33
	sbc a                                            ; $6951: $9f
	ld h, b                                          ; $6952: $60
	sbc a                                            ; $6953: $9f
	ld h, b                                          ; $6954: $60
	ccf                                              ; $6955: $3f
	ret nz                                           ; $6956: $c0

	ld a, a                                          ; $6957: $7f
	add b                                            ; $6958: $80
	rst $38                                          ; $6959: $ff

jr_014_695a:
	nop                                              ; $695a: $00
	ld l, a                                          ; $695b: $6f
	cp $98                                           ; $695c: $fe $98
	add a                                            ; $695e: $87
	ld a, b                                          ; $695f: $78
	nop                                              ; $6960: $00
	rst $38                                          ; $6961: $ff
	ld a, b                                          ; $6962: $78
	add a                                            ; $6963: $87
	rst $38                                          ; $6964: $ff
	ld hl, sp-$21                                    ; $6965: $f8 $df
	ret nz                                           ; $6967: $c0

	add b                                            ; $6968: $80

jr_014_6969:
	ldh [rAUD4LEN], a                                ; $6969: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $696b: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $696d: $f0 $10
	ld hl, sp+$08                                    ; $696f: $f8 $08
	ld hl, sp+$08                                    ; $6971: $f8 $08
	db $f4                                           ; $6973: $f4
	inc c                                            ; $6974: $0c
	db $e4                                           ; $6975: $e4

jr_014_6976:
	inc e                                            ; $6976: $1c
	call z, $1c34                                    ; $6977: $cc $34 $1c
	db $e4                                           ; $697a: $e4
	inc a                                            ; $697b: $3c
	call nz, $04fc                                   ; $697c: $c4 $fc $04
	ld [hl], e                                       ; $697f: $73
	ld c, h                                          ; $6980: $4c
	ld [hl], e                                       ; $6981: $73
	ld c, h                                          ; $6982: $4c
	inc sp                                           ; $6983: $33
	inc l                                            ; $6984: $2c
	inc sp                                           ; $6985: $33
	inc l                                            ; $6986: $2c
	add hl, de                                       ; $6987: $19
	sbc d                                            ; $6988: $9a
	ld d, $0d                                        ; $6989: $16 $0d
	ld c, $03                                        ; $698b: $0e $03
	inc bc                                           ; $698d: $03
	rst AddAOntoHL                                          ; $698e: $ef
	ld h, a                                          ; $698f: $67
	or b                                             ; $6990: $b0
	ld [hl], e                                       ; $6991: $73
	cp $9c                                           ; $6992: $fe $9c
	inc bc                                           ; $6994: $03
	db $fc                                           ; $6995: $fc
	db $fc                                           ; $6996: $fc
	pop af                                           ; $6997: $f1
	ld [hl], a                                       ; $6998: $77
	or b                                             ; $6999: $b0
	ld [hl], a                                       ; $699a: $77
	xor b                                            ; $699b: $a8
	ld a, a                                          ; $699c: $7f
	and d                                            ; $699d: $a2
	rst SubAFromDE                                          ; $699e: $df
	ret nz                                           ; $699f: $c0

	rst SubAFromBC                                          ; $69a0: $e7
	rst SubAFromDE                                          ; $69a1: $df
	inc bc                                           ; $69a2: $03
	ld a, a                                          ; $69a3: $7f
	and d                                            ; $69a4: $a2
	ld a, a                                          ; $69a5: $7f
	sbc [hl]                                         ; $69a6: $9e
	ld [hl], a                                       ; $69a7: $77
	sbc b                                            ; $69a8: $98
	ld [hl], a                                       ; $69a9: $77
	sub b                                            ; $69aa: $90
	ld a, a                                          ; $69ab: $7f
	ld c, d                                          ; $69ac: $4a
	ld a, a                                          ; $69ad: $7f
	ld b, [hl]                                       ; $69ae: $46
	ld a, a                                          ; $69af: $7f
	ld b, d                                          ; $69b0: $42
	ld [hl], a                                       ; $69b1: $77
	inc a                                            ; $69b2: $3c
	ld a, a                                          ; $69b3: $7f
	ld [hl], $6f                                     ; $69b4: $36 $6f
	ld b, b                                          ; $69b6: $40
	ld a, a                                          ; $69b7: $7f
	and [hl]                                         ; $69b8: $a6
	ld d, e                                          ; $69b9: $53
	sbc b                                            ; $69ba: $98
	sbc b                                            ; $69bb: $98
	nop                                              ; $69bc: $00
	ld a, b                                          ; $69bd: $78
	add a                                            ; $69be: $87
	nop                                              ; $69bf: $00
	rst $38                                          ; $69c0: $ff
	add a                                            ; $69c1: $87
	ld a, b                                          ; $69c2: $78
	ld [hl], a                                       ; $69c3: $77
	or $37                                           ; $69c4: $f6 $37
	ld b, b                                          ; $69c6: $40
	ld a, a                                          ; $69c7: $7f
	ld c, d                                          ; $69c8: $4a
	ld a, a                                          ; $69c9: $7f
	ld b, [hl]                                       ; $69ca: $46
	ld a, a                                          ; $69cb: $7f
	ld b, d                                          ; $69cc: $42
	ld a, a                                          ; $69cd: $7f
	ld a, $7f                                        ; $69ce: $3e $7f
	ld a, [hl-]                                      ; $69d0: $3a
	ld a, a                                          ; $69d1: $7f
	ld [hl], $7e                                     ; $69d2: $36 $7e
	ldh a, [c]                                       ; $69d4: $f2
	ld a, [hl]                                       ; $69d5: $7e
	xor $7e                                          ; $69d6: $ee $7e
	ld [$e67e], a                                    ; $69d8: $ea $7e $e6
	ld a, [hl]                                       ; $69db: $7e
	ldh [c], a                                       ; $69dc: $e2
	ld a, [hl]                                       ; $69dd: $7e
	sbc $27                                          ; $69de: $de $27
	ld b, b                                          ; $69e0: $40
	ld a, [hl]                                       ; $69e1: $7e
	ld [$e67e], a                                    ; $69e2: $ea $7e $e6
	halt                                             ; $69e5: $76
	ldh [$7e], a                                     ; $69e6: $e0 $7e
	jp c, Jump_014_4003                              ; $69e8: $da $03 $40

	inc hl                                           ; $69eb: $23
	ld b, b                                          ; $69ec: $40
	ld l, [hl]                                       ; $69ed: $6e
	add b                                            ; $69ee: $80
	ld a, a                                          ; $69ef: $7f
	cp $9b                                           ; $69f0: $fe $9b
	ld a, a                                          ; $69f2: $7f
	ld b, b                                          ; $69f3: $40
	ld a, a                                          ; $69f4: $7f
	ld b, b                                          ; $69f5: $40
	ld [hl], a                                       ; $69f6: $77
	ld b, [hl]                                       ; $69f7: $46
	halt                                             ; $69f8: $76
	add b                                            ; $69f9: $80
	sbc e                                            ; $69fa: $9b
	ld hl, sp-$79                                    ; $69fb: $f8 $87
	db $e3                                           ; $69fd: $e3
	sbc h                                            ; $69fe: $9c
	ld l, a                                          ; $69ff: $6f
	ld b, b                                          ; $6a00: $40
	sbc l                                            ; $6a01: $9d
	ccf                                              ; $6a02: $3f
	jp $a077                                         ; $6a03: $c3 $77 $a0


	sbc l                                            ; $6a06: $9d
	rst SubAFromDE                                          ; $6a07: $df
	jr nz, @+$79                                     ; $6a08: $20 $77

	cp $6e                                           ; $6a0a: $fe $6e
	halt                                             ; $6a0c: $76
	ld a, a                                          ; $6a0d: $7f
	cp $9a                                           ; $6a0e: $fe $9a
	ld a, [hl]                                       ; $6a10: $7e
	add c                                            ; $6a11: $81
	db $fc                                           ; $6a12: $fc
	inc bc                                           ; $6a13: $03
	db $fc                                           ; $6a14: $fc
	ld h, e                                          ; $6a15: $63
	ld l, [hl]                                       ; $6a16: $6e
	ld d, a                                          ; $6a17: $57
	ld b, b                                          ; $6a18: $40
	ld a, a                                          ; $6a19: $7f
	ld c, b                                          ; $6a1a: $48
	sub c                                            ; $6a1b: $91
	add h                                            ; $6a1c: $84
	ld a, h                                          ; $6a1d: $7c
	inc e                                            ; $6a1e: $1c
	db $e4                                           ; $6a1f: $e4
	ld a, h                                          ; $6a20: $7c
	add h                                            ; $6a21: $84
	db $fc                                           ; $6a22: $fc
	inc b                                            ; $6a23: $04
	db $fc                                           ; $6a24: $fc
	inc b                                            ; $6a25: $04
	ld b, a                                          ; $6a26: $47
	ld a, b                                          ; $6a27: $78
	ld a, a                                          ; $6a28: $7f
	ld b, b                                          ; $6a29: $40
	ld [hl], a                                       ; $6a2a: $77
	xor b                                            ; $6a2b: $a8
	daa                                              ; $6a2c: $27
	ld b, b                                          ; $6a2d: $40
	sub a                                            ; $6a2e: $97

jr_014_6a2f:
	ld sp, hl                                        ; $6a2f: $f9
	ld b, $f9                                        ; $6a30: $06 $f9
	ld b, $fb                                        ; $6a32: $06 $fb
	inc b                                            ; $6a34: $04

jr_014_6a35:
	di                                               ; $6a35: $f3
	inc c                                            ; $6a36: $0c
	ld [hl], e                                       ; $6a37: $73
	cp $9e                                           ; $6a38: $fe $9e
	rrca                                             ; $6a3a: $0f
	inc bc                                           ; $6a3b: $03
	ld b, b                                          ; $6a3c: $40
	inc bc                                           ; $6a3d: $03
	ld b, b                                          ; $6a3e: $40
	ld l, a                                          ; $6a3f: $6f
	ld b, b                                          ; $6a40: $40
	sub [hl]                                         ; $6a41: $96
	ldh a, [hDisp1_LCDC]                                     ; $6a42: $f0 $8f
	ldh [$9f], a                                     ; $6a44: $e0 $9f
	rst GetHLinHL                                          ; $6a46: $cf
	or b                                             ; $6a47: $b0
	sbc a                                            ; $6a48: $9f
	ldh [$bf], a                                     ; $6a49: $e0 $bf
	ld [hl], e                                       ; $6a4b: $73
	call z, $8076                                    ; $6a4c: $cc $76 $80
	sbc e                                            ; $6a4f: $9b
	cp $01                                           ; $6a50: $fe $01
	cp $01                                           ; $6a52: $fe $01
	ld h, [hl]                                       ; $6a54: $66
	add d                                            ; $6a55: $82
	ld a, a                                          ; $6a56: $7f
	or $7e                                           ; $6a57: $f6 $7e
	add b                                            ; $6a59: $80
	ld a, a                                          ; $6a5a: $7f
	pop af                                           ; $6a5b: $f1
	ld b, [hl]                                       ; $6a5c: $46
	add b                                            ; $6a5d: $80
	sub l                                            ; $6a5e: $95
	ld h, b                                          ; $6a5f: $60
	and b                                            ; $6a60: $a0
	jr nc, @-$2e                                     ; $6a61: $30 $d0

	jr nc, jr_014_6a35                               ; $6a63: $30 $d0

	jr c, jr_014_6a2f                                ; $6a65: $38 $c8

jr_014_6a67:
	jr c, @-$36                                      ; $6a67: $38 $c8

	ld l, a                                          ; $6a69: $6f
	ld b, [hl]                                       ; $6a6a: $46
	ld [hl], a                                       ; $6a6b: $77
	cp $9d                                           ; $6a6c: $fe $9d
	call nz, Call_014_773c                           ; $6a6e: $c4 $3c $77
	or b                                             ; $6a71: $b0
	rla                                              ; $6a72: $17
	ld b, b                                          ; $6a73: $40
	ld a, a                                          ; $6a74: $7f
	cp [hl]                                          ; $6a75: $be
	ld a, [hl]                                       ; $6a76: $7e
	db $fc                                           ; $6a77: $fc
	sub a                                            ; $6a78: $97
	ld hl, sp+$07                                    ; $6a79: $f8 $07
	di                                               ; $6a7b: $f3
	inc c                                            ; $6a7c: $0c
	rst SubAFromBC                                          ; $6a7d: $e7
	jr jr_014_6a67                                   ; $6a7e: $18 $e7

	jr jr_014_6ab8                                   ; $6a80: $18 $36

	add b                                            ; $6a82: $80
	ld a, a                                          ; $6a83: $7f
	ld b, c                                          ; $6a84: $41
	ld a, a                                          ; $6a85: $7f
	or b                                             ; $6a86: $b0
	rla                                              ; $6a87: $17
	ld b, b                                          ; $6a88: $40
	sbc [hl]                                         ; $6a89: $9e
	nop                                              ; $6a8a: $00
	rst $38                                          ; $6a8b: $ff
	rst SubAFromDE                                          ; $6a8c: $df
	rlca                                             ; $6a8d: $07
	adc e                                            ; $6a8e: $8b
	ld [hl+], a                                      ; $6a8f: $22
	inc hl                                           ; $6a90: $23
	rra                                              ; $6a91: $1f
	rra                                              ; $6a92: $1f
	ld [$060f], sp                                   ; $6a93: $08 $0f $06
	rlca                                             ; $6a96: $07
	inc b                                            ; $6a97: $04
	rlca                                             ; $6a98: $07
	ld [$090f], sp                                   ; $6a99: $08 $0f $09
	rrca                                             ; $6a9c: $0f
	dec b                                            ; $6a9d: $05
	rlca                                             ; $6a9e: $07
	inc bc                                           ; $6a9f: $03
	inc bc                                           ; $6aa0: $03
	ld bc, $7b00                                     ; $6aa1: $01 $00 $7b
	cp $dc                                           ; $6aa4: $fe $dc
	ld bc, $dfff                                     ; $6aa6: $01 $ff $df
	cp b                                             ; $6aa9: $b8
	sbc h                                            ; $6aaa: $9c
	ld h, [hl]                                       ; $6aab: $66
	cp $31                                           ; $6aac: $fe $31
	sbc $ff                                          ; $6aae: $de $ff
	adc a                                            ; $6ab0: $8f
	ld d, c                                          ; $6ab1: $51
	rst $38                                          ; $6ab2: $ff
	and h                                            ; $6ab3: $a4
	rst $38                                          ; $6ab4: $ff
	or d                                             ; $6ab5: $b2
	rst $38                                          ; $6ab6: $ff
	cp d                                             ; $6ab7: $ba

jr_014_6ab8:
	rst AddAOntoHL                                          ; $6ab8: $ef
	rst $38                                          ; $6ab9: $ff
	ld h, a                                          ; $6aba: $67
	rst $38                                          ; $6abb: $ff
	xor l                                            ; $6abc: $ad
	ld [hl], a                                       ; $6abd: $77
	sbc $ff                                          ; $6abe: $de $ff
	call z, $fe7b                                    ; $6ac0: $cc $7b $fe
	ld a, a                                          ; $6ac3: $7f
	jp hl                                            ; $6ac4: $e9


	sbc [hl]                                         ; $6ac5: $9e
	add e                                            ; $6ac6: $83
	db $fd                                           ; $6ac7: $fd
	rst SubAFromDE                                          ; $6ac8: $df
	add b                                            ; $6ac9: $80
	rst SubAFromDE                                          ; $6aca: $df
	ret nz                                           ; $6acb: $c0

	rst SubAFromDE                                          ; $6acc: $df
	add b                                            ; $6acd: $80
	sbc e                                            ; $6ace: $9b
	ld b, b                                          ; $6acf: $40
	ret nz                                           ; $6ad0: $c0

	and b                                            ; $6ad1: $a0
	ldh [$6f], a                                     ; $6ad2: $e0 $6f
	cp $9c                                           ; $6ad4: $fe $9c
	ld h, b                                          ; $6ad6: $60
	ldh [$60], a                                     ; $6ad7: $e0 $60
	ld a, e                                          ; $6ad9: $7b
	ld sp, hl                                        ; $6ada: $f9
	ld [hl], a                                       ; $6adb: $77
	db $ec                                           ; $6adc: $ec
	rst SubAFromDE                                          ; $6add: $df
	add b                                            ; $6ade: $80
	rst $38                                          ; $6adf: $ff
	rst SubAFromDE                                          ; $6ae0: $df
	dec c                                            ; $6ae1: $0d
	sbc d                                            ; $6ae2: $9a
	ld e, $13                                        ; $6ae3: $1e $13
	rra                                              ; $6ae5: $1f
	inc de                                           ; $6ae6: $13
	add hl, bc                                       ; $6ae7: $09
	sbc $0f                                          ; $6ae8: $de $0f
	rst $38                                          ; $6aea: $ff
	rst SubAFromHL                                          ; $6aeb: $d7
	ld bc, $03df                                     ; $6aec: $01 $df $03
	adc [hl]                                         ; $6aef: $8e
	inc c                                            ; $6af0: $0c
	rrca                                             ; $6af1: $0f
	rlca                                             ; $6af2: $07
	rlca                                             ; $6af3: $07
	nop                                              ; $6af4: $00
	nop                                              ; $6af5: $00
	cp $ff                                           ; $6af6: $fe $ff
	rst $38                                          ; $6af8: $ff
	xor c                                            ; $6af9: $a9
	cp a                                             ; $6afa: $bf
	ret nc                                           ; $6afb: $d0

	sbc a                                            ; $6afc: $9f
	jp hl                                            ; $6afd: $e9


	add [hl]                                         ; $6afe: $86
	rst $38                                          ; $6aff: $ff
	add c                                            ; $6b00: $81
	db $dd                                           ; $6b01: $dd
	rst $38                                          ; $6b02: $ff
	adc e                                            ; $6b03: $8b
	nop                                              ; $6b04: $00
	rra                                              ; $6b05: $1f
	ldh a, [$f8]                                     ; $6b06: $f0 $f8
	rst $38                                          ; $6b08: $ff
	rst SubAFromBC                                          ; $6b09: $e7
	daa                                              ; $6b0a: $27
	daa                                              ; $6b0b: $27
	db $e4                                           ; $6b0c: $e4
	db $fc                                           ; $6b0d: $fc
	rst $38                                          ; $6b0e: $ff
	ld a, a                                          ; $6b0f: $7f
	rst $38                                          ; $6b10: $ff
	db $fc                                           ; $6b11: $fc
	rst $38                                          ; $6b12: $ff
	inc bc                                           ; $6b13: $03
	inc bc                                           ; $6b14: $03
	ld b, b                                          ; $6b15: $40
	ret nz                                           ; $6b16: $c0

	jr nz, jr_014_6b84                               ; $6b17: $20 $6b

	xor h                                            ; $6b19: $ac
	ld a, a                                          ; $6b1a: $7f
	ld hl, sp+$6f                                    ; $6b1b: $f8 $6f
	xor [hl]                                         ; $6b1d: $ae
	reti                                             ; $6b1e: $d9


	add b                                            ; $6b1f: $80
	rst SubAFromDE                                          ; $6b20: $df
	ret nz                                           ; $6b21: $c0

	sbc e                                            ; $6b22: $9b
	ld [hl], b                                       ; $6b23: $70
	ldh a, [$c0]                                     ; $6b24: $f0 $c0
	ret nz                                           ; $6b26: $c0

	adc [hl]                                         ; $6b27: $8e
	inc bc                                           ; $6b28: $03
	rst $38                                          ; $6b29: $ff
	rst SubAFromDE                                          ; $6b2a: $df
	rlca                                             ; $6b2b: $07
	adc e                                            ; $6b2c: $8b
	ld [hl+], a                                      ; $6b2d: $22
	inc hl                                           ; $6b2e: $23
	rra                                              ; $6b2f: $1f
	rra                                              ; $6b30: $1f
	ld [$060f], sp                                   ; $6b31: $08 $0f $06
	rlca                                             ; $6b34: $07
	inc b                                            ; $6b35: $04
	rlca                                             ; $6b36: $07
	ld [$090f], sp                                   ; $6b37: $08 $0f $09
	rrca                                             ; $6b3a: $0f
	dec b                                            ; $6b3b: $05
	rlca                                             ; $6b3c: $07
	inc bc                                           ; $6b3d: $03
	inc bc                                           ; $6b3e: $03
	ld bc, $7b00                                     ; $6b3f: $01 $00 $7b
	cp $dc                                           ; $6b42: $fe $dc
	ld bc, $dfff                                     ; $6b44: $01 $ff $df
	cp b                                             ; $6b47: $b8
	sbc h                                            ; $6b48: $9c
	ld h, [hl]                                       ; $6b49: $66
	cp $31                                           ; $6b4a: $fe $31
	sbc $ff                                          ; $6b4c: $de $ff
	adc a                                            ; $6b4e: $8f
	ld d, c                                          ; $6b4f: $51
	rst $38                                          ; $6b50: $ff
	and h                                            ; $6b51: $a4
	rst $38                                          ; $6b52: $ff
	or d                                             ; $6b53: $b2
	rst $38                                          ; $6b54: $ff
	cp d                                             ; $6b55: $ba
	rst AddAOntoHL                                          ; $6b56: $ef
	rst $38                                          ; $6b57: $ff
	ld h, a                                          ; $6b58: $67
	rst $38                                          ; $6b59: $ff
	xor l                                            ; $6b5a: $ad
	ld [hl], a                                       ; $6b5b: $77
	sbc $ff                                          ; $6b5c: $de $ff
	call z, $fe7b                                    ; $6b5e: $cc $7b $fe
	ld a, a                                          ; $6b61: $7f
	jp hl                                            ; $6b62: $e9


	sbc [hl]                                         ; $6b63: $9e
	or e                                             ; $6b64: $b3
	db $fd                                           ; $6b65: $fd
	rst SubAFromDE                                          ; $6b66: $df
	add b                                            ; $6b67: $80
	rst SubAFromDE                                          ; $6b68: $df
	ret nz                                           ; $6b69: $c0

	rst SubAFromDE                                          ; $6b6a: $df
	add b                                            ; $6b6b: $80
	sbc e                                            ; $6b6c: $9b
	ld b, b                                          ; $6b6d: $40
	ret nz                                           ; $6b6e: $c0

	and b                                            ; $6b6f: $a0
	ldh [$6f], a                                     ; $6b70: $e0 $6f
	cp $9c                                           ; $6b72: $fe $9c
	ld h, b                                          ; $6b74: $60
	ldh [$60], a                                     ; $6b75: $e0 $60
	ld a, e                                          ; $6b77: $7b
	ld sp, hl                                        ; $6b78: $f9
	ld [hl], a                                       ; $6b79: $77
	db $ec                                           ; $6b7a: $ec
	rst SubAFromDE                                          ; $6b7b: $df
	add b                                            ; $6b7c: $80
	rst SubAFromDE                                          ; $6b7d: $df
	rrca                                             ; $6b7e: $0f
	sub b                                            ; $6b7f: $90
	rra                                              ; $6b80: $1f
	ld a, [de]                                       ; $6b81: $1a
	ld l, e                                          ; $6b82: $6b
	ld a, l                                          ; $6b83: $7d

jr_014_6b84:
	ld sp, hl                                        ; $6b84: $f9
	sbc [hl]                                         ; $6b85: $9e
	ld hl, sp-$61                                    ; $6b86: $f8 $9f
	ld c, b                                          ; $6b88: $48
	ld a, a                                          ; $6b89: $7f
	ccf                                              ; $6b8a: $3f
	ccf                                              ; $6b8b: $3f
	rra                                              ; $6b8c: $1f
	db $10                                           ; $6b8d: $10
	ld de, $1fde                                     ; $6b8e: $11 $de $1f
	add b                                            ; $6b91: $80
	ld e, $12                                        ; $6b92: $1e $12
	ld [de], a                                       ; $6b94: $12
	ld e, $3f                                        ; $6b95: $1e $3f
	ccf                                              ; $6b97: $3f
	rst JumpTable                                          ; $6b98: $c7
	rst $38                                          ; $6b99: $ff
	ld a, a                                          ; $6b9a: $7f
	ld a, a                                          ; $6b9b: $7f
	nop                                              ; $6b9c: $00
	nop                                              ; $6b9d: $00
	db $e4                                           ; $6b9e: $e4
	db $fc                                           ; $6b9f: $fc
	jp nz, $b2be                                     ; $6ba0: $c2 $be $b2

	ld a, [hl]                                       ; $6ba3: $7e
	ld a, c                                          ; $6ba4: $79
	rst GetHLinHL                                          ; $6ba5: $cf
	db $fd                                           ; $6ba6: $fd
	add a                                            ; $6ba7: $87
	ld a, c                                          ; $6ba8: $79
	rst GetHLinHL                                          ; $6ba9: $cf
	ld a, [$fcfe]                                    ; $6baa: $fa $fe $fc
	inc c                                            ; $6bad: $0c
	ld hl, sp+$08                                    ; $6bae: $f8 $08
	adc b                                            ; $6bb0: $88
	sbc [hl]                                         ; $6bb1: $9e
	ld hl, sp-$22                                    ; $6bb2: $f8 $de
	ld a, b                                          ; $6bb4: $78
	sub [hl]                                         ; $6bb5: $96
	ld c, b                                          ; $6bb6: $48
	ret z                                            ; $6bb7: $c8

	ld hl, sp-$04                                    ; $6bb8: $f8 $fc
	db $fc                                           ; $6bba: $fc
	rst JumpTable                                          ; $6bbb: $c7
	rst $38                                          ; $6bbc: $ff
	inc a                                            ; $6bbd: $3c
	inc a                                            ; $6bbe: $3c
	cpl                                              ; $6bbf: $2f
	ld h, b                                          ; $6bc0: $60
	sbc b                                            ; $6bc1: $98
	add hl, bc                                       ; $6bc2: $09
	nop                                              ; $6bc3: $00
	dec c                                            ; $6bc4: $0d
	nop                                              ; $6bc5: $00
	rrca                                             ; $6bc6: $0f
	ld bc, $7b07                                     ; $6bc7: $01 $07 $7b
	cp $6f                                           ; $6bca: $fe $6f
	add b                                            ; $6bcc: $80
	add b                                            ; $6bcd: $80
	ret z                                            ; $6bce: $c8

	ret nz                                           ; $6bcf: $c0

	sbc b                                            ; $6bd0: $98
	add b                                            ; $6bd1: $80
	ld a, b                                          ; $6bd2: $78
	ret nz                                           ; $6bd3: $c0

	cp b                                             ; $6bd4: $b8
	ldh [$b0], a                                     ; $6bd5: $e0 $b0
	ldh [$b4], a                                     ; $6bd7: $e0 $b4
	ldh [$bc], a                                     ; $6bd9: $e0 $bc
	ldh [$78], a                                     ; $6bdb: $e0 $78
	ldh [$78], a                                     ; $6bdd: $e0 $78
	and b                                            ; $6bdf: $a0
	ldh a, [c]                                       ; $6be0: $f2
	and b                                            ; $6be1: $a0
	or $c0                                           ; $6be2: $f6 $c0
	cp $80                                           ; $6be4: $fe $80
	db $fc                                           ; $6be6: $fc
	add b                                            ; $6be7: $80
	rla                                              ; $6be8: $17
	nop                                              ; $6be9: $00
	rra                                              ; $6bea: $1f
	ld bc, $8e5e                                     ; $6beb: $01 $5e $8e
	rlca                                             ; $6bee: $07
	ld e, a                                          ; $6bef: $5f
	add hl, bc                                       ; $6bf0: $09
	ld a, a                                          ; $6bf1: $7f
	add hl, bc                                       ; $6bf2: $09
	inc a                                            ; $6bf3: $3c
	rlca                                             ; $6bf4: $07
	ccf                                              ; $6bf5: $3f
	inc bc                                           ; $6bf6: $03
	rra                                              ; $6bf7: $1f
	ld bc, $010f                                     ; $6bf8: $01 $0f $01
	cpl                                              ; $6bfb: $2f
	ld bc, $0137                                     ; $6bfc: $01 $37 $01
	ld a, e                                          ; $6bff: $7b
	ld hl, sp-$74                                    ; $6c00: $f8 $8c
	inc bc                                           ; $6c02: $03
	inc c                                            ; $6c03: $0c
	rrca                                             ; $6c04: $0f
	rlca                                             ; $6c05: $07
	rlca                                             ; $6c06: $07
	nop                                              ; $6c07: $00
	nop                                              ; $6c08: $00
	cp $ff                                           ; $6c09: $fe $ff
	db $fc                                           ; $6c0b: $fc
	xor e                                            ; $6c0c: $ab
	cp e                                             ; $6c0d: $bb
	rst SubAFromHL                                          ; $6c0e: $d7
	sub a                                            ; $6c0f: $97
	db $ec                                           ; $6c10: $ec
	adc a                                            ; $6c11: $8f
	ld hl, sp-$79                                    ; $6c12: $f8 $87
	db $fc                                           ; $6c14: $fc
	sbc $ff                                          ; $6c15: $de $ff
	ld a, a                                          ; $6c17: $7f
	jp nc, $f080                                     ; $6c18: $d2 $80 $f0

	ld hl, sp-$01                                    ; $6c1b: $f8 $ff
	rst $38                                          ; $6c1d: $ff
	daa                                              ; $6c1e: $27
	ccf                                              ; $6c1f: $3f
	db $e4                                           ; $6c20: $e4
	db $fc                                           ; $6c21: $fc
	rst $38                                          ; $6c22: $ff
	ld a, a                                          ; $6c23: $7f
	rst $38                                          ; $6c24: $ff
	db $fc                                           ; $6c25: $fc
	rst $38                                          ; $6c26: $ff
	inc bc                                           ; $6c27: $03
	inc bc                                           ; $6c28: $03
	ld a, b                                          ; $6c29: $78
	ret nz                                           ; $6c2a: $c0

	ld a, [hl-]                                      ; $6c2b: $3a
	ldh [$3e], a                                     ; $6c2c: $e0 $3e
	ldh [$9c], a                                     ; $6c2e: $e0 $9c
	ldh a, [$dc]                                     ; $6c30: $f0 $dc
	ld [hl], b                                       ; $6c32: $70
	sbc b                                            ; $6c33: $98
	ldh a, [$bc]                                     ; $6c34: $f0 $bc
	ldh [$f8], a                                     ; $6c36: $e0 $f8
	ret nz                                           ; $6c38: $c0

	sbc h                                            ; $6c39: $9c
	ld hl, sp-$80                                    ; $6c3a: $f8 $80
	ldh a, [$7b]                                     ; $6c3c: $f0 $7b
	cp $77                                           ; $6c3e: $fe $77
	ld a, [$e098]                                    ; $6c40: $fa $98 $e0
	ret nz                                           ; $6c43: $c0

	ld [hl], b                                       ; $6c44: $70
	ldh a, [$c0]                                     ; $6c45: $f0 $c0
	ret nz                                           ; $6c47: $c0

	nop                                              ; $6c48: $00
	ld a, d                                          ; $6c49: $7a
	ret c                                            ; $6c4a: $d8

	ld a, d                                          ; $6c4b: $7a
	ret nc                                           ; $6c4c: $d0

	ld a, e                                          ; $6c4d: $7b
	db $fc                                           ; $6c4e: $fc
	db $dd                                           ; $6c4f: $dd
	rlca                                             ; $6c50: $07
	ld a, e                                          ; $6c51: $7b
	ld [de], a                                       ; $6c52: $12
	adc e                                            ; $6c53: $8b
	rla                                              ; $6c54: $17
	ccf                                              ; $6c55: $3f
	daa                                              ; $6c56: $27
	dec a                                            ; $6c57: $3d
	cpl                                              ; $6c58: $2f
	jr jr_014_6c7a                                   ; $6c59: $18 $1f

	inc c                                            ; $6c5b: $0c
	rrca                                             ; $6c5c: $0f
	inc b                                            ; $6c5d: $04
	rlca                                             ; $6c5e: $07
	ld b, $07                                        ; $6c5f: $06 $07
	ld [bc], a                                       ; $6c61: $02
	inc bc                                           ; $6c62: $03
	ld c, $0e                                        ; $6c63: $0e $0e
	ld [hl], a                                       ; $6c65: $77
	ld a, a                                          ; $6c66: $7f
	adc h                                            ; $6c67: $8c
	sbc $ff                                          ; $6c68: $de $ff
	adc a                                            ; $6c6a: $8f
	adc d                                            ; $6c6b: $8a
	rst $38                                          ; $6c6c: $ff
	dec h                                            ; $6c6d: $25
	rst $38                                          ; $6c6e: $ff
	ld c, l                                          ; $6c6f: $4d
	rst $38                                          ; $6c70: $ff
	ld e, l                                          ; $6c71: $5d
	rst FarCall                                          ; $6c72: $f7
	rst $38                                          ; $6c73: $ff
	and $ff                                          ; $6c74: $e6 $ff
	or l                                             ; $6c76: $b5
	xor $7b                                          ; $6c77: $ee $7b
	rst $38                                          ; $6c79: $ff

jr_014_6c7a:
	or e                                             ; $6c7a: $b3
	ld a, e                                          ; $6c7b: $7b
	cp $7f                                           ; $6c7c: $fe $7f
	jp hl                                            ; $6c7e: $e9


	adc d                                            ; $6c7f: $8a
	pop bc                                           ; $6c80: $c1
	rst $38                                          ; $6c81: $ff
	rst $38                                          ; $6c82: $ff
	ldh a, [$f0]                                     ; $6c83: $f0 $f0
	ld b, h                                          ; $6c85: $44
	call nz, $f8f8                                   ; $6c86: $c4 $f8 $f8
	db $10                                           ; $6c89: $10
	ldh a, [$60]                                     ; $6c8a: $f0 $60
	ldh [rAUD4LEN], a                                ; $6c8c: $e0 $20
	ldh [rAUD1SWEEP], a                              ; $6c8e: $e0 $10
	ldh a, [hDisp1_SCY]                                     ; $6c90: $f0 $90
	ldh a, [$e0]                                     ; $6c92: $f0 $e0
	ldh [$de], a                                     ; $6c94: $e0 $de
	ret nz                                           ; $6c96: $c0

	sbc [hl]                                         ; $6c97: $9e
	ld b, b                                          ; $6c98: $40
	ld a, d                                          ; $6c99: $7a
	cp l                                             ; $6c9a: $bd
	sbc $e0                                          ; $6c9b: $de $e0
	db $dd                                           ; $6c9d: $dd
	ret nz                                           ; $6c9e: $c0

	sub a                                            ; $6c9f: $97
	inc sp                                           ; $6ca0: $33
	dec a                                            ; $6ca1: $3d
	ld de, $101e                                     ; $6ca2: $11 $1e $10
	rra                                              ; $6ca5: $1f
	jr @+$21                                         ; $6ca6: $18 $1f

	sbc $0f                                          ; $6ca8: $de $0f
	ld a, a                                          ; $6caa: $7f
	inc bc                                           ; $6cab: $03
	rst SubAFromDE                                          ; $6cac: $df
	ld [$0fde], sp                                   ; $6cad: $08 $de $0f
	adc d                                            ; $6cb0: $8a
	rra                                              ; $6cb1: $1f
	ld de, $3e2a                                     ; $6cb2: $11 $2a $3e
	inc l                                            ; $6cb5: $2c
	inc a                                            ; $6cb6: $3c
	inc d                                            ; $6cb7: $14
	inc e                                            ; $6cb8: $1c
	inc c                                            ; $6cb9: $0c
	inc c                                            ; $6cba: $0c
	inc bc                                           ; $6cbb: $03
	inc bc                                           ; $6cbc: $03
	ccf                                              ; $6cbd: $3f
	ccf                                              ; $6cbe: $3f
	add sp, $58                                      ; $6cbf: $e8 $58
	ret nc                                           ; $6cc1: $d0

	or b                                             ; $6cc2: $b0
	sub b                                            ; $6cc3: $90
	ld [hl], b                                       ; $6cc4: $70
	db $10                                           ; $6cc5: $10
	sbc $f0                                          ; $6cc6: $de $f0
	ld a, [hl]                                       ; $6cc8: $7e
	add $98                                          ; $6cc9: $c6 $98
	call nz, $fc7c                                   ; $6ccb: $c4 $7c $fc
	db $fc                                           ; $6cce: $fc
	inc a                                            ; $6ccf: $3c
	inc h                                            ; $6cd0: $24
	inc h                                            ; $6cd1: $24
	sbc $3c                                          ; $6cd2: $de $3c
	ld a, a                                          ; $6cd4: $7f
	db $fc                                           ; $6cd5: $fc
	sub a                                            ; $6cd6: $97
	ld [hl-], a                                      ; $6cd7: $32
	ld a, $0e                                        ; $6cd8: $3e $0e
	ld c, $e0                                        ; $6cda: $0e $e0
	ldh [$fe], a                                     ; $6cdc: $e0 $fe
	cp $dd                                           ; $6cde: $fe $dd
	ld bc, $039b                                     ; $6ce0: $01 $9b $03
	ld [bc], a                                       ; $6ce3: $02
	inc bc                                           ; $6ce4: $03
	ld [bc], a                                       ; $6ce5: $02
	ld a, d                                          ; $6ce6: $7a
	jp $fe77                                         ; $6ce7: $c3 $77 $fe


	sbc [hl]                                         ; $6cea: $9e
	dec b                                            ; $6ceb: $05
	ld a, d                                          ; $6cec: $7a
	cp a                                             ; $6ced: $bf
	ld [hl], e                                       ; $6cee: $73
	cp $7f                                           ; $6cef: $fe $7f
	or $77                                           ; $6cf1: $f6 $77
	cp $df                                           ; $6cf3: $fe $df
	inc bc                                           ; $6cf5: $03
	db $fd                                           ; $6cf6: $fd
	ld [hl], a                                       ; $6cf7: $77
	sbc $80                                          ; $6cf8: $de $80
	rrca                                             ; $6cfa: $0f
	inc c                                            ; $6cfb: $0c
	rra                                              ; $6cfc: $1f
	db $10                                           ; $6cfd: $10
	ccf                                              ; $6cfe: $3f
	jr nz, jr_014_6d80                               ; $6cff: $20 $7f

	ld b, b                                          ; $6d01: $40
	rst $38                                          ; $6d02: $ff
	add c                                            ; $6d03: $81
	rst $38                                          ; $6d04: $ff
	ld [de], a                                       ; $6d05: $12
	rst $38                                          ; $6d06: $ff
	inc h                                            ; $6d07: $24
	rst $38                                          ; $6d08: $ff
	ld c, b                                          ; $6d09: $48
	rst $38                                          ; $6d0a: $ff
	ld c, c                                          ; $6d0b: $49
	rst $38                                          ; $6d0c: $ff
	sub c                                            ; $6d0d: $91
	rst $38                                          ; $6d0e: $ff
	cp e                                             ; $6d0f: $bb
	rst SubAFromBC                                          ; $6d10: $e7
	ld h, a                                          ; $6d11: $67
	add sp, $6f                                      ; $6d12: $e8 $6f
	ret z                                            ; $6d14: $c8

	ld c, a                                          ; $6d15: $4f
	ret nc                                           ; $6d16: $d0

	rst SubAFromDE                                          ; $6d17: $df
	sub e                                            ; $6d18: $93
	sbc $9f                                          ; $6d19: $de $9f
	sbc c                                            ; $6d1b: $99
	ld e, a                                          ; $6d1c: $5f
	db $d3                                           ; $6d1d: $d3
	ld e, a                                          ; $6d1e: $5f
	db $d3                                           ; $6d1f: $d3
	call z, Call_014_6fcc                            ; $6d20: $cc $cc $6f
	ret nc                                           ; $6d23: $d0

	push af                                          ; $6d24: $f5
	rst SubAFromDE                                          ; $6d25: $df
	ccf                                              ; $6d26: $3f
	add b                                            ; $6d27: $80
	rst $38                                          ; $6d28: $ff
	ret nz                                           ; $6d29: $c0

	rst $38                                          ; $6d2a: $ff
	rrca                                             ; $6d2b: $0f
	cp $02                                           ; $6d2c: $fe $02
	db $fc                                           ; $6d2e: $fc
	inc e                                            ; $6d2f: $1c
	ldh a, [rSVBK]                                   ; $6d30: $f0 $70
	ret nz                                           ; $6d32: $c0

	ret nz                                           ; $6d33: $c0

	ldh [$e0], a                                     ; $6d34: $e0 $e0
	ldh a, [rSVBK]                                   ; $6d36: $f0 $70
	ret c                                            ; $6d38: $d8

	ld a, b                                          ; $6d39: $78
	add h                                            ; $6d3a: $84
	db $fc                                           ; $6d3b: $fc
	inc b                                            ; $6d3c: $04
	db $fc                                           ; $6d3d: $fc
	ld [bc], a                                       ; $6d3e: $02
	cp $06                                           ; $6d3f: $fe $06
	cp $1f                                           ; $6d41: $fe $1f
	ei                                               ; $6d43: $fb
	rst $38                                          ; $6d44: $ff
	db $eb                                           ; $6d45: $eb
	rst $38                                          ; $6d46: $ff
	add d                                            ; $6d47: $82
	push bc                                          ; $6d48: $c5
	ei                                               ; $6d49: $fb
	adc a                                            ; $6d4a: $8f
	ld a, [$b2cf]                                    ; $6d4b: $fa $cf $b2
	ld a, a                                          ; $6d4e: $7f
	ld sp, hl                                        ; $6d4f: $f9
	ld a, a                                          ; $6d50: $7f
	ldh a, [$1f]                                     ; $6d51: $f0 $1f
	ld hl, sp-$01                                    ; $6d53: $f8 $ff
	db $ed                                           ; $6d55: $ed
	rst $38                                          ; $6d56: $ff
	xor e                                            ; $6d57: $ab
	rst $38                                          ; $6d58: $ff
	ld c, $ff                                        ; $6d59: $0e $ff
	db $d3                                           ; $6d5b: $d3
	rst $38                                          ; $6d5c: $ff
	or [hl]                                          ; $6d5d: $b6
	cp $ec                                           ; $6d5e: $fe $ec
	db $fc                                           ; $6d60: $fc
	sbc b                                            ; $6d61: $98
	sbc b                                            ; $6d62: $98
	jr nz, jr_014_6d85                               ; $6d63: $20 $20

	ld h, l                                          ; $6d65: $65
	ret z                                            ; $6d66: $c8

	ld a, a                                          ; $6d67: $7f
	ld a, $9e                                        ; $6d68: $3e $9e
	ld d, b                                          ; $6d6a: $50
	ld a, e                                          ; $6d6b: $7b
	cp $7e                                           ; $6d6c: $fe $7e
	xor [hl]                                         ; $6d6e: $ae
	ld [hl], l                                       ; $6d6f: $75
	jp nz, $ee7f                                     ; $6d70: $c2 $7f $ee

	rst SubAFromDE                                          ; $6d73: $df
	add b                                            ; $6d74: $80
	db $ed                                           ; $6d75: $ed
	ld l, a                                          ; $6d76: $6f
	ld [hl], $7f                                     ; $6d77: $36 $7f
	cp $dd                                           ; $6d79: $fe $dd
	ld bc, $07df                                     ; $6d7b: $01 $df $07
	halt                                             ; $6d7e: $76
	and b                                            ; $6d7f: $a0

jr_014_6d80:
	halt                                             ; $6d80: $76
	ld a, $75                                        ; $6d81: $3e $75
	sbc $87                                          ; $6d83: $de $87

jr_014_6d85:
	add hl, de                                       ; $6d85: $19
	rra                                              ; $6d86: $1f
	ld h, b                                          ; $6d87: $60
	ld a, a                                          ; $6d88: $7f
	add b                                            ; $6d89: $80
	rst $38                                          ; $6d8a: $ff
	add b                                            ; $6d8b: $80
	rst $38                                          ; $6d8c: $ff
	call nz, $e07f                                   ; $6d8d: $c4 $7f $e0
	ccf                                              ; $6d90: $3f
	db $f4                                           ; $6d91: $f4
	rra                                              ; $6d92: $1f
	db $fc                                           ; $6d93: $fc
	rra                                              ; $6d94: $1f
	call z, $fdff                                    ; $6d95: $cc $ff $fd

jr_014_6d98:
	scf                                              ; $6d98: $37
	rst $38                                          ; $6d99: $ff
	adc $3f                                          ; $6d9a: $ce $3f
	cp $7a                                           ; $6d9c: $fe $7a
	cpl                                              ; $6d9e: $2f
	or $df                                           ; $6d9f: $f6 $df
	rra                                              ; $6da1: $1f
	adc l                                            ; $6da2: $8d
	jr nz, jr_014_6de4                               ; $6da3: $20 $3f

	ld b, l                                          ; $6da5: $45
	ld a, a                                          ; $6da6: $7f
	sub b                                            ; $6da7: $90
	rst $38                                          ; $6da8: $ff
	cp $ff                                           ; $6da9: $fe $ff
	pop af                                           ; $6dab: $f1
	sbc a                                            ; $6dac: $9f
	ret nc                                           ; $6dad: $d0

	rst $38                                          ; $6dae: $ff
	ld hl, sp-$11                                    ; $6daf: $f8 $ef
	rst $38                                          ; $6db1: $ff
	add a                                            ; $6db2: $87
	rst $38                                          ; $6db3: $ff
	adc l                                            ; $6db4: $8d
	push af                                          ; $6db5: $f5
	ld [hl], l                                       ; $6db6: $75
	jr c, jr_014_6d98                                ; $6db7: $38 $df

	ldh [hDisp0_SCY], a                                     ; $6db9: $e0 $83
	ret nc                                           ; $6dbb: $d0

	ldh a, [rOBP0]                                   ; $6dbc: $f0 $48
	ld hl, sp+$28                                    ; $6dbe: $f8 $28
	ld hl, sp+$38                                    ; $6dc0: $f8 $38
	ld hl, sp-$28                                    ; $6dc2: $f8 $d8
	ld hl, sp+$64                                    ; $6dc4: $f8 $64
	db $fc                                           ; $6dc6: $fc
	ld a, [bc]                                       ; $6dc7: $0a
	cp $ff                                           ; $6dc8: $fe $ff
	cp c                                             ; $6dca: $b9
	rst AddAOntoHL                                          ; $6dcb: $ef
	cp e                                             ; $6dcc: $bb
	cp $c7                                           ; $6dcd: $fe $c7
	cp d                                             ; $6dcf: $ba
	cp e                                             ; $6dd0: $bb
	add c                                            ; $6dd1: $81
	add c                                            ; $6dd2: $81
	ret nz                                           ; $6dd3: $c0

	ret nz                                           ; $6dd4: $c0

	db $fc                                           ; $6dd5: $fc
	inc a                                            ; $6dd6: $3c
	ld c, a                                          ; $6dd7: $4f
	or b                                             ; $6dd8: $b0
	db $fd                                           ; $6dd9: $fd
	sub a                                            ; $6dda: $97
	adc $fe                                          ; $6ddb: $ce $fe
	ld a, [hl+]                                      ; $6ddd: $2a
	ld a, [$f838]                                    ; $6dde: $fa $38 $f8
	ld c, b                                          ; $6de1: $48
	ret z                                            ; $6de2: $c8

	ld l, a                                          ; $6de3: $6f

jr_014_6de4:
	ld c, [hl]                                       ; $6de4: $4e
	cpl                                              ; $6de5: $2f
	ld c, b                                          ; $6de6: $48
	ld [hl], a                                       ; $6de7: $77
	ld b, l                                          ; $6de8: $45
	sub c                                            ; $6de9: $91
	nop                                              ; $6dea: $00
	inc bc                                           ; $6deb: $03
	ld bc, $0106                                     ; $6dec: $01 $06 $01
	ld b, $00                                        ; $6def: $06 $00
	rrca                                             ; $6df1: $0f
	db $10                                           ; $6df2: $10
	rra                                              ; $6df3: $1f
	ld [hl+], a                                      ; $6df4: $22
	dec a                                            ; $6df5: $3d
	jr nz, jr_014_6e37                               ; $6df6: $20 $3f

	ld [hl], a                                       ; $6df8: $77
	cp $7f                                           ; $6df9: $fe $7f
	or $7e                                           ; $6dfb: $f6 $7e
	ld [hl-], a                                      ; $6dfd: $32
	ld a, e                                          ; $6dfe: $7b
	ld b, b                                          ; $6dff: $40
	add l                                            ; $6e00: $85
	inc b                                            ; $6e01: $04
	nop                                              ; $6e02: $00
	ld c, d                                          ; $6e03: $4a
	jr z, jr_014_6e16                                ; $6e04: $28 $10

	ld l, d                                          ; $6e06: $6a
	or [hl]                                          ; $6e07: $b6
	ret nc                                           ; $6e08: $d0

	inc l                                            ; $6e09: $2c
	sub d                                            ; $6e0a: $92
	xor $24                                          ; $6e0b: $ee $24
	call c, $f804                                    ; $6e0d: $dc $04 $f8
	ld c, h                                          ; $6e10: $4c
	or h                                             ; $6e11: $b4
	adc b                                            ; $6e12: $88
	ld a, b                                          ; $6e13: $78
	ld d, b                                          ; $6e14: $50
	or b                                             ; $6e15: $b0

jr_014_6e16:
	db $10                                           ; $6e16: $10
	ldh a, [rAUD1SWEEP]                              ; $6e17: $f0 $10
	ldh a, [rAUD4LEN]                                ; $6e19: $f0 $20
	ld a, [hl+]                                      ; $6e1b: $2a
	ld hl, sp-$21                                    ; $6e1c: $f8 $df
	ldh [hDisp0_BGP], a                                     ; $6e1e: $e0 $85
	ld hl, sp+$18                                    ; $6e20: $f8 $18
	db $fc                                           ; $6e22: $fc
	db $e4                                           ; $6e23: $e4
	cp $12                                           ; $6e24: $fe $12
	rst $38                                          ; $6e26: $ff
	ld sp, hl                                        ; $6e27: $f9
	adc a                                            ; $6e28: $8f
	adc [hl]                                         ; $6e29: $8e
	add c                                            ; $6e2a: $81
	add c                                            ; $6e2b: $81
	nop                                              ; $6e2c: $00
	nop                                              ; $6e2d: $00
	inc bc                                           ; $6e2e: $03
	inc bc                                           ; $6e2f: $03
	dec b                                            ; $6e30: $05
	ld b, $0a                                        ; $6e31: $06 $0a
	rrca                                             ; $6e33: $0f
	inc de                                           ; $6e34: $13
	rra                                              ; $6e35: $1f
	inc e                                            ; $6e36: $1c

jr_014_6e37:
	rra                                              ; $6e37: $1f
	add hl, bc                                       ; $6e38: $09
	ld c, $76                                        ; $6e39: $0e $76
	inc e                                            ; $6e3b: $1c
	ld a, d                                          ; $6e3c: $7a
	sbc $73                                          ; $6e3d: $de $73
	db $fd                                           ; $6e3f: $fd
	rst SubAFromDE                                          ; $6e40: $df
	rra                                              ; $6e41: $1f
	add b                                            ; $6e42: $80
	ld h, h                                          ; $6e43: $64
	ld a, a                                          ; $6e44: $7f
	add a                                            ; $6e45: $87
	db $fc                                           ; $6e46: $fc
	add b                                            ; $6e47: $80
	add b                                            ; $6e48: $80

jr_014_6e49:
	ldh [$60], a                                     ; $6e49: $e0 $60
	rst $38                                          ; $6e4b: $ff
	rst $38                                          ; $6e4c: $ff
	ld [hl], a                                       ; $6e4d: $77
	adc h                                            ; $6e4e: $8c

jr_014_6e4f:
	ld sp, hl                                        ; $6e4f: $f9
	rlca                                             ; $6e50: $07
	rst $38                                          ; $6e51: $ff
	rst JumpTable                                          ; $6e52: $c7
	inc a                                            ; $6e53: $3c
	db $fc                                           ; $6e54: $fc
	jr jr_014_6e4f                                   ; $6e55: $18 $f8

	jr nc, jr_014_6e49                               ; $6e57: $30 $f0

	sbc b                                            ; $6e59: $98
	ld hl, sp-$38                                    ; $6e5a: $f8 $c8
	ld hl, sp-$34                                    ; $6e5c: $f8 $cc
	ld a, h                                          ; $6e5e: $7c
	db $e4                                           ; $6e5f: $e4
	db $fc                                           ; $6e60: $fc
	db $ec                                           ; $6e61: $ec
	sbc d                                            ; $6e62: $9a
	inc a                                            ; $6e63: $3c
	ld hl, sp+$38                                    ; $6e64: $f8 $38
	ldh [$e0], a                                     ; $6e66: $e0 $e0
	ld l, e                                          ; $6e68: $6b
	ld [$4094], sp                                   ; $6e69: $08 $94 $40
	db $fc                                           ; $6e6c: $fc
	inc a                                            ; $6e6d: $3c
	call nc, $a8bc                                   ; $6e6e: $d4 $bc $a8
	ld hl, sp+$50                                    ; $6e71: $f8 $50
	ld [hl], b                                       ; $6e73: $70
	ld h, b                                          ; $6e74: $60
	ld h, b                                          ; $6e75: $60
	pop af                                           ; $6e76: $f1
	rst SubAFromDE                                          ; $6e77: $df
	dec bc                                           ; $6e78: $0b
	ld a, l                                          ; $6e79: $7d
	inc [hl]                                         ; $6e7a: $34
	sub [hl]                                         ; $6e7b: $96
	dec hl                                           ; $6e7c: $2b
	cpl                                              ; $6e7d: $2f
	add hl, hl                                       ; $6e7e: $29
	cpl                                              ; $6e7f: $2f
	ld a, [hl-]                                      ; $6e80: $3a
	ccf                                              ; $6e81: $3f
	ld [hl+], a                                      ; $6e82: $22
	ccf                                              ; $6e83: $3f
	rla                                              ; $6e84: $17
	ld a, c                                          ; $6e85: $79
	halt                                             ; $6e86: $76
	sbc c                                            ; $6e87: $99
	ld a, [de]                                       ; $6e88: $1a
	rra                                              ; $6e89: $1f
	ld b, $07                                        ; $6e8a: $06 $07
	inc c                                            ; $6e8c: $0c
	rrca                                             ; $6e8d: $0f
	ld l, l                                          ; $6e8e: $6d
	add $ff                                          ; $6e8f: $c6 $ff
	ld a, d                                          ; $6e91: $7a
	or e                                             ; $6e92: $b3
	adc a                                            ; $6e93: $8f
	add c                                            ; $6e94: $81
	cp a                                             ; $6e95: $bf
	db $ec                                           ; $6e96: $ec
	rst $38                                          ; $6e97: $ff
	ld h, b                                          ; $6e98: $60
	rst $38                                          ; $6e99: $ff
	call z, $dd77                                    ; $6e9a: $cc $77 $dd
	ccf                                              ; $6e9d: $3f
	ei                                               ; $6e9e: $fb
	cp $ff                                           ; $6e9f: $fe $ff
	add d                                            ; $6ea1: $82
	rst $38                                          ; $6ea2: $ff
	ld [hl], $79                                     ; $6ea3: $36 $79
	cp l                                             ; $6ea5: $bd
	ld a, l                                          ; $6ea6: $7d
	rra                                              ; $6ea7: $1f
	sbc e                                            ; $6ea8: $9b
	cp [hl]                                          ; $6ea9: $be
	cp $f0                                           ; $6eaa: $fe $f0
	ldh a, [$6f]                                     ; $6eac: $f0 $6f
	and h                                            ; $6eae: $a4
	ld [hl+], a                                      ; $6eaf: $22
	db $ec                                           ; $6eb0: $ec
	ld hl, sp+$74                                    ; $6eb1: $f8 $74
	cp d                                             ; $6eb3: $ba
	jp hl                                            ; $6eb4: $e9


	and e                                            ; $6eb5: $a3
	nop                                              ; $6eb6: $00
	rst $38                                          ; $6eb7: $ff
	rst SubAFromDE                                          ; $6eb8: $df
	rlca                                             ; $6eb9: $07
	adc e                                            ; $6eba: $8b
	ld [hl+], a                                      ; $6ebb: $22
	inc hl                                           ; $6ebc: $23
	rra                                              ; $6ebd: $1f
	rra                                              ; $6ebe: $1f
	ld [$060f], sp                                   ; $6ebf: $08 $0f $06
	rlca                                             ; $6ec2: $07
	inc b                                            ; $6ec3: $04
	rlca                                             ; $6ec4: $07
	ld [$090f], sp                                   ; $6ec5: $08 $0f $09
	rrca                                             ; $6ec8: $0f
	dec b                                            ; $6ec9: $05
	rlca                                             ; $6eca: $07
	inc bc                                           ; $6ecb: $03
	inc bc                                           ; $6ecc: $03
	ld bc, $7b00                                     ; $6ecd: $01 $00 $7b
	cp $dc                                           ; $6ed0: $fe $dc
	ld bc, $dfff                                     ; $6ed2: $01 $ff $df
	cp b                                             ; $6ed5: $b8
	sbc h                                            ; $6ed6: $9c
	ld h, [hl]                                       ; $6ed7: $66
	cp $31                                           ; $6ed8: $fe $31
	sbc $ff                                          ; $6eda: $de $ff
	adc a                                            ; $6edc: $8f
	ld d, c                                          ; $6edd: $51
	rst $38                                          ; $6ede: $ff
	and h                                            ; $6edf: $a4
	rst $38                                          ; $6ee0: $ff
	or d                                             ; $6ee1: $b2
	rst $38                                          ; $6ee2: $ff
	cp d                                             ; $6ee3: $ba
	rst AddAOntoHL                                          ; $6ee4: $ef
	rst $38                                          ; $6ee5: $ff
	ld h, a                                          ; $6ee6: $67
	rst $38                                          ; $6ee7: $ff
	xor l                                            ; $6ee8: $ad
	ld [hl], a                                       ; $6ee9: $77
	sbc $ff                                          ; $6eea: $de $ff
	call z, $fe7b                                    ; $6eec: $cc $7b $fe
	ld a, a                                          ; $6eef: $7f
	jp hl                                            ; $6ef0: $e9


	sbc [hl]                                         ; $6ef1: $9e
	add e                                            ; $6ef2: $83
	db $fd                                           ; $6ef3: $fd
	rst SubAFromDE                                          ; $6ef4: $df
	add b                                            ; $6ef5: $80
	rst SubAFromDE                                          ; $6ef6: $df
	ret nz                                           ; $6ef7: $c0

	rst SubAFromDE                                          ; $6ef8: $df
	add b                                            ; $6ef9: $80
	sbc e                                            ; $6efa: $9b
	ld b, b                                          ; $6efb: $40
	ret nz                                           ; $6efc: $c0

	and b                                            ; $6efd: $a0
	ldh [$6f], a                                     ; $6efe: $e0 $6f
	cp $9c                                           ; $6f00: $fe $9c
	ld h, b                                          ; $6f02: $60
	ldh [$60], a                                     ; $6f03: $e0 $60
	ld a, e                                          ; $6f05: $7b
	ld sp, hl                                        ; $6f06: $f9
	ld [hl], a                                       ; $6f07: $77
	db $ec                                           ; $6f08: $ec
	rst SubAFromDE                                          ; $6f09: $df
	add b                                            ; $6f0a: $80
	rst $38                                          ; $6f0b: $ff
	rst SubAFromDE                                          ; $6f0c: $df
	dec c                                            ; $6f0d: $0d
	sbc e                                            ; $6f0e: $9b
	ld e, $13                                        ; $6f0f: $1e $13
	rra                                              ; $6f11: $1f
	inc de                                           ; $6f12: $13
	ld a, e                                          ; $6f13: $7b
	and a                                            ; $6f14: $a7
	sbc l                                            ; $6f15: $9d
	rrca                                             ; $6f16: $0f
	nop                                              ; $6f17: $00
	ld l, e                                          ; $6f18: $6b
	xor h                                            ; $6f19: $ac
	db $dd                                           ; $6f1a: $dd
	ld bc, $03df                                     ; $6f1b: $01 $df $03
	adc [hl]                                         ; $6f1e: $8e
	inc c                                            ; $6f1f: $0c
	rrca                                             ; $6f20: $0f
	rlca                                             ; $6f21: $07
	rlca                                             ; $6f22: $07
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	cp $ff                                           ; $6f25: $fe $ff
	cp a                                             ; $6f27: $bf
	jp hl                                            ; $6f28: $e9


	rst $38                                          ; $6f29: $ff
	ldh a, [hDisp1_LCDC]                                     ; $6f2a: $f0 $8f
	ld sp, hl                                        ; $6f2c: $f9
	add a                                            ; $6f2d: $87
	cp $81                                           ; $6f2e: $fe $81
	sbc $ff                                          ; $6f30: $de $ff
	adc d                                            ; $6f32: $8a
	nop                                              ; $6f33: $00
	rst $38                                          ; $6f34: $ff
	db $10                                           ; $6f35: $10
	rst $38                                          ; $6f36: $ff
	ld hl, sp-$01                                    ; $6f37: $f8 $ff
	rst SubAFromBC                                          ; $6f39: $e7
	daa                                              ; $6f3a: $27
	daa                                              ; $6f3b: $27
	db $e4                                           ; $6f3c: $e4
	db $fc                                           ; $6f3d: $fc
	rst $38                                          ; $6f3e: $ff
	ld a, a                                          ; $6f3f: $7f
	rst $38                                          ; $6f40: $ff
	db $fc                                           ; $6f41: $fc
	rst $38                                          ; $6f42: $ff
	rra                                              ; $6f43: $1f

jr_014_6f44:
	rra                                              ; $6f44: $1f
	ld b, b                                          ; $6f45: $40
	ret nz                                           ; $6f46: $c0

	jr nz, @-$21                                     ; $6f47: $20 $dd

	ldh [rPCM34], a                                  ; $6f49: $e0 $77
	xor e                                            ; $6f4b: $ab
	sbc [hl]                                         ; $6f4c: $9e
	jr nz, jr_014_6fbe                               ; $6f4d: $20 $6f

	xor [hl]                                         ; $6f4f: $ae
	reti                                             ; $6f50: $d9


	add b                                            ; $6f51: $80
	rst SubAFromDE                                          ; $6f52: $df
	ret nz                                           ; $6f53: $c0

	rst SubAFromDE                                          ; $6f54: $df
	ldh a, [$df]                                     ; $6f55: $f0 $df
	ret nz                                           ; $6f57: $c0

	ld e, b                                          ; $6f58: $58
	inc bc                                           ; $6f59: $03
	rst $38                                          ; $6f5a: $ff
	rst SubAFromDE                                          ; $6f5b: $df
	ld bc, $0298                                     ; $6f5c: $01 $98 $02
	inc bc                                           ; $6f5f: $03
	dec b                                            ; $6f60: $05
	rlca                                             ; $6f61: $07
	add hl, bc                                       ; $6f62: $09
	rrca                                             ; $6f63: $0f
	jr jr_014_6f44                                   ; $6f64: $18 $de

	rra                                              ; $6f66: $1f
	add b                                            ; $6f67: $80
	cpl                                              ; $6f68: $2f
	inc a                                            ; $6f69: $3c
	rla                                              ; $6f6a: $17
	inc a                                            ; $6f6b: $3c
	cpl                                              ; $6f6c: $2f
	inc a                                            ; $6f6d: $3c
	dec hl                                           ; $6f6e: $2b
	ld a, $23                                        ; $6f6f: $3e $23
	ld a, $11                                        ; $6f71: $3e $11
	rra                                              ; $6f73: $1f
	add hl, de                                       ; $6f74: $19
	rra                                              ; $6f75: $1f
	rrca                                             ; $6f76: $0f
	rrca                                             ; $6f77: $0f
	rlca                                             ; $6f78: $07

jr_014_6f79:
	rlca                                             ; $6f79: $07
	ld sp, $4e31                                     ; $6f7a: $31 $31 $4e
	ld a, [hl]                                       ; $6f7d: $7e
	sub d                                            ; $6f7e: $92
	cp $a4                                           ; $6f7f: $fe $a4
	db $fc                                           ; $6f81: $fc
	jp nz, $b9fe                                     ; $6f82: $c2 $fe $b9

	rst $38                                          ; $6f85: $ff
	db $dd                                           ; $6f86: $dd
	adc d                                            ; $6f87: $8a
	rst FarCall                                          ; $6f88: $f7
	rst AddAOntoHL                                          ; $6f89: $ef
	ei                                               ; $6f8a: $fb
	cp $7e                                           ; $6f8b: $fe $7e
	ld a, [$ff6e]                                    ; $6f8d: $fa $6e $ff
	ld b, l                                          ; $6f90: $45
	rst $38                                          ; $6f91: $ff
	ld hl, $2dff                                     ; $6f92: $21 $ff $2d
	rst $38                                          ; $6f95: $ff
	inc hl                                           ; $6f96: $23
	cp $76                                           ; $6f97: $fe $76
	sbc h                                            ; $6f99: $9c
	db $fc                                           ; $6f9a: $fc
	ld [bc], a                                       ; $6f9b: $02
	inc bc                                           ; $6f9c: $03
	db $db                                           ; $6f9d: $db
	ld bc, $dff1                                     ; $6f9e: $01 $f1 $df
	ld bc, $03df                                     ; $6fa1: $01 $df $03
	rst SubAFromDE                                          ; $6fa4: $df
	rrca                                             ; $6fa5: $0f
	rst SubAFromDE                                          ; $6fa6: $df
	inc bc                                           ; $6fa7: $03
	sub [hl]                                         ; $6fa8: $96
	ld e, $fe                                        ; $6fa9: $1e $fe
	dec b                                            ; $6fab: $05
	rst $38                                          ; $6fac: $ff
	inc bc                                           ; $6fad: $03
	rst $38                                          ; $6fae: $ff
	ld bc, $81ff                                     ; $6faf: $01 $ff $81
	ld a, e                                          ; $6fb2: $7b
	cp $df                                           ; $6fb3: $fe $df
	rst $38                                          ; $6fb5: $ff
	adc l                                            ; $6fb6: $8d

jr_014_6fb7:
	add b                                            ; $6fb7: $80
	rst $38                                          ; $6fb8: $ff
	add h                                            ; $6fb9: $84
	rst $38                                          ; $6fba: $ff
	cp a                                             ; $6fbb: $bf
	rst $38                                          ; $6fbc: $ff
	rst $38                                          ; $6fbd: $ff

jr_014_6fbe:
	call z, $9ffc                                    ; $6fbe: $cc $fc $9f
	rra                                              ; $6fc1: $1f
	rst $38                                          ; $6fc2: $ff
	cp $ff                                           ; $6fc3: $fe $ff
	ccf                                              ; $6fc5: $3f
	rst $38                                          ; $6fc6: $ff
	ldh a, [$f0]                                     ; $6fc7: $f0 $f0
	db $fd                                           ; $6fc9: $fd
	rst SubAFromDE                                          ; $6fca: $df
	ret nz                                           ; $6fcb: $c0

Call_014_6fcc:
	sub l                                            ; $6fcc: $95
	ldh [rAUD4LEN], a                                ; $6fcd: $e0 $20
	ld [hl], b                                       ; $6fcf: $70
	ld d, b                                          ; $6fd0: $50
	or b                                             ; $6fd1: $b0
	sub b                                            ; $6fd2: $90
	ldh [rAUD4LEN], a                                ; $6fd3: $e0 $20
	ret nz                                           ; $6fd5: $c0

	ret nz                                           ; $6fd6: $c0

	reti                                             ; $6fd7: $d9


	add b                                            ; $6fd8: $80
	rst SubAFromDE                                          ; $6fd9: $df
	ret nz                                           ; $6fda: $c0

	sbc e                                            ; $6fdb: $9b
	jr nc, @-$0e                                     ; $6fdc: $30 $f0

	ldh [$e0], a                                     ; $6fde: $e0 $e0
	ld [hl], e                                       ; $6fe0: $73
	or [hl]                                          ; $6fe1: $b6
	adc b                                            ; $6fe2: $88
	nop                                              ; $6fe3: $00
	inc bc                                           ; $6fe4: $03
	nop                                              ; $6fe5: $00
	ld b, $01                                        ; $6fe6: $06 $01
	inc c                                            ; $6fe8: $0c
	ld [bc], a                                       ; $6fe9: $02
	jr jr_014_6ff0                                   ; $6fea: $18 $04

	jr nc, @+$0a                                     ; $6fec: $30 $08

	jr nz, jr_014_7000                               ; $6fee: $20 $10

jr_014_6ff0:
	ld h, b                                          ; $6ff0: $60
	db $10                                           ; $6ff1: $10
	ld b, b                                          ; $6ff2: $40
	jr nz, jr_014_7035                               ; $6ff3: $20 $40

	jr nz, jr_014_6fb7                               ; $6ff5: $20 $c0

	jr nz, jr_014_6f79                               ; $6ff7: $20 $80

	ld b, b                                          ; $6ff9: $40
	ld a, e                                          ; $6ffa: $7b
	cp $96                                           ; $6ffb: $fe $96
	nop                                              ; $6ffd: $00
	add b                                            ; $6ffe: $80
	nop                                              ; $6fff: $00

jr_014_7000:
	ld a, h                                          ; $7000: $7c
	nop                                              ; $7001: $00
	ldh a, [rIF]                                     ; $7002: $f0 $0f
	add b                                            ; $7004: $80
	ld [hl], b                                       ; $7005: $70
	ld a, e                                          ; $7006: $7b
	rst FarCall                                          ; $7007: $f7
	add sp, -$21                                     ; $7008: $e8 $df
	ld e, $80                                        ; $700a: $1e $80
	adc c                                            ; $700c: $89
	adc a                                            ; $700d: $8f
	ld a, h                                          ; $700e: $7c
	ld a, a                                          ; $700f: $7f
	inc hl                                           ; $7010: $23
	ccf                                              ; $7011: $3f
	add hl, de                                       ; $7012: $19
	rra                                              ; $7013: $1f
	ld [de], a                                       ; $7014: $12
	rra                                              ; $7015: $1f
	ld [hl+], a                                      ; $7016: $22
	ccf                                              ; $7017: $3f
	ld h, $3f                                        ; $7018: $26 $3f
	rla                                              ; $701a: $17
	dec e                                            ; $701b: $1d
	rrca                                             ; $701c: $0f
	ld c, $05                                        ; $701d: $0e $05
	inc bc                                           ; $701f: $03
	rlca                                             ; $7020: $07
	inc bc                                           ; $7021: $03
	rlca                                             ; $7022: $07
	inc b                                            ; $7023: $04
	rlca                                             ; $7024: $07
	ld b, $03                                        ; $7025: $06 $03
	inc bc                                           ; $7027: $03
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	ldh [hDisp0_LCDC], a                                     ; $702a: $e0 $82
	ldh [$9a], a                                     ; $702c: $e0 $9a
	ld a, [$ffc7]                                    ; $702e: $fa $c7 $ff
	cp $fe                                           ; $7031: $fe $fe
	ld b, l                                          ; $7033: $45
	rst $38                                          ; $7034: $ff

jr_014_7035:
	sub e                                            ; $7035: $93
	rst $38                                          ; $7036: $ff
	set 7, a                                         ; $7037: $cb $ff
	ld [$febf], a                                    ; $7039: $ea $bf $fe
	sbc a                                            ; $703c: $9f
	db $fd                                           ; $703d: $fd
	or a                                             ; $703e: $b7
	db $dd                                           ; $703f: $dd
	ld a, d                                          ; $7040: $7a
	rst $38                                          ; $7041: $ff
	ld [hl-], a                                      ; $7042: $32
	rst $38                                          ; $7043: $ff
	inc bc                                           ; $7044: $03
	cp $de                                           ; $7045: $fe $de
	ldh [c], a                                       ; $7047: $e2
	cp $f1                                           ; $7048: $fe $f1
	rst SubAFromHL                                          ; $704a: $d7
	add b                                            ; $704b: $80
	di                                               ; $704c: $f3
	ld a, e                                          ; $704d: $7b
	ld [de], a                                       ; $704e: $12
	sbc b                                            ; $704f: $98
	ld c, $1d                                        ; $7050: $0e $1d
	dec d                                            ; $7052: $15
	ccf                                              ; $7053: $3f
	ld a, [hl+]                                      ; $7054: $2a
	rra                                              ; $7055: $1f
	rra                                              ; $7056: $1f
	ld b, a                                          ; $7057: $47
	add sp, -$6d                                     ; $7058: $e8 $93
	inc bc                                           ; $705a: $03
	ld [bc], a                                       ; $705b: $02
	rrca                                             ; $705c: $0f
	inc c                                            ; $705d: $0c
	ccf                                              ; $705e: $3f
	jr nc, @+$01                                     ; $705f: $30 $ff

	db $d3                                           ; $7061: $d3
	db $fc                                           ; $7062: $fc
	inc a                                            ; $7063: $3c
	ldh [$60], a                                     ; $7064: $e0 $60
	ld b, a                                          ; $7066: $47
	jp z, $94ff                                      ; $7067: $ca $ff $94

	pop bc                                           ; $706a: $c1
	ld a, a                                          ; $706b: $7f
	db $ed                                           ; $706c: $ed
	ccf                                              ; $706d: $3f
	ldh a, [$3f]                                     ; $706e: $f0 $3f
	ldh [rIE], a                                     ; $7070: $e0 $ff
	ld b, b                                          ; $7072: $40
	ld a, a                                          ; $7073: $7f
	ld b, b                                          ; $7074: $40
	sbc $7f                                          ; $7075: $de $7f
	ld a, [hl]                                       ; $7077: $7e
	ldh [$9d], a                                     ; $7078: $e0 $9d
	sub b                                            ; $707a: $90
	rst $38                                          ; $707b: $ff

Jump_014_707c:
	sbc $7f                                          ; $707c: $de $7f
	sbc h                                            ; $707e: $9c
	ld c, h                                          ; $707f: $4c
	ld b, h                                          ; $7080: $44
	ld [hl], a                                       ; $7081: $77
	ld a, e                                          ; $7082: $7b
	ei                                               ; $7083: $fb
	sbc d                                            ; $7084: $9a
	ld a, a                                          ; $7085: $7f
	rst $38                                          ; $7086: $ff
	rst $38                                          ; $7087: $ff
	sbc [hl]                                         ; $7088: $9e
	rst $38                                          ; $7089: $ff
	ld c, a                                          ; $708a: $4f
	adc h                                            ; $708b: $8c
	rst GetHLinHL                                          ; $708c: $cf
	add b                                            ; $708d: $80
	rst SubAFromDE                                          ; $708e: $df
	di                                               ; $708f: $f3
	db $fd                                           ; $7090: $fd
	rst SubAFromDE                                          ; $7091: $df
	ld a, a                                          ; $7092: $7f
	rst SubAFromDE                                          ; $7093: $df
	rst $38                                          ; $7094: $ff
	db $eb                                           ; $7095: $eb
	ld l, a                                          ; $7096: $6f
	adc [hl]                                         ; $7097: $8e
	rst SubAFromDE                                          ; $7098: $df
	ldh [$df], a                                     ; $7099: $e0 $df
	ret nz                                           ; $709b: $c0

	ld e, $e0                                        ; $709c: $1e $e0
	ld a, [hl]                                       ; $709e: $7e
	inc b                                            ; $709f: $04
	ld e, [hl]                                       ; $70a0: $5e
	ldh [$7f], a                                     ; $70a1: $e0 $7f
	ld hl, sp-$6d                                    ; $70a3: $f8 $93
	rla                                              ; $70a5: $17
	ld e, $0f                                        ; $70a6: $1e $0f
	dec c                                            ; $70a8: $0d
	ld b, $07                                        ; $70a9: $06 $07
	rlca                                             ; $70ab: $07
	dec b                                            ; $70ac: $05
	rlca                                             ; $70ad: $07
	inc b                                            ; $70ae: $04
	inc bc                                           ; $70af: $03
	ld [bc], a                                       ; $70b0: $02
	halt                                             ; $70b1: $76
	jr z, jr_014_7112                                ; $70b2: $28 $5e

	ldh [$8d], a                                     ; $70b4: $e0 $8d
	sub d                                            ; $70b6: $92
	rst $38                                          ; $70b7: $ff
	adc b                                            ; $70b8: $88
	rst $38                                          ; $70b9: $ff
	adc d                                            ; $70ba: $8a
	rst $38                                          ; $70bb: $ff
	jp z, $eeff                                      ; $70bc: $ca $ff $ee

	rst $38                                          ; $70bf: $ff
	rst FarCall                                          ; $70c0: $f7
	sbc e                                            ; $70c1: $9b
	rst $38                                          ; $70c2: $ff
	adc e                                            ; $70c3: $8b
	rst $38                                          ; $70c4: $ff
	dec bc                                           ; $70c5: $0b
	rst $38                                          ; $70c6: $ff
	rra                                              ; $70c7: $1f
	ld c, [hl]                                       ; $70c8: $4e
	ldh [$d5], a                                     ; $70c9: $e0 $d5
	add b                                            ; $70cb: $80
	push af                                          ; $70cc: $f5
	rst SubAFromDE                                          ; $70cd: $df
	rrca                                             ; $70ce: $0f
	sub a                                            ; $70cf: $97
	ccf                                              ; $70d0: $3f
	dec [hl]                                         ; $70d1: $35
	ld a, [hl-]                                      ; $70d2: $3a
	ld a, [hl+]                                      ; $70d3: $2a
	rra                                              ; $70d4: $1f
	dec d                                            ; $70d5: $15
	rrca                                             ; $70d6: $0f
	rrca                                             ; $70d7: $0f
	db $ed                                           ; $70d8: $ed
	rst SubAFromDE                                          ; $70d9: $df
	ld bc, $8797                                     ; $70da: $01 $97 $87
	add [hl]                                         ; $70dd: $86
	rst $38                                          ; $70de: $ff
	ld a, b                                          ; $70df: $78
	rst $38                                          ; $70e0: $ff
	sub c                                            ; $70e1: $91
	xor $6e                                          ; $70e2: $ee $6e
	ld c, a                                          ; $70e4: $4f
	jp z, $1fdf                                      ; $70e5: $ca $df $1f

	rst SubAFromDE                                          ; $70e8: $df
	rlca                                             ; $70e9: $07
	ld a, d                                          ; $70ea: $7a
	ldh [$97], a                                     ; $70eb: $e0 $97
	rst $38                                          ; $70ed: $ff
	pop hl                                           ; $70ee: $e1
	ccf                                              ; $70ef: $3f
	ld hl, sp+$3f                                    ; $70f0: $f8 $3f
	ldh [$3f], a                                     ; $70f2: $e0 $3f
	ret nz                                           ; $70f4: $c0

	ld a, d                                          ; $70f5: $7a
	sbc $df                                          ; $70f6: $de $df
	ld a, a                                          ; $70f8: $7f
	ld a, a                                          ; $70f9: $7f
	db $fc                                           ; $70fa: $fc
	ld a, a                                          ; $70fb: $7f
	ld a, [hl]                                       ; $70fc: $7e
	sub e                                            ; $70fd: $93
	ld a, b                                          ; $70fe: $78
	ld a, a                                          ; $70ff: $7f
	ld a, a                                          ; $7100: $7f
	ld c, a                                          ; $7101: $4f
	cpl                                              ; $7102: $2f
	add hl, sp                                       ; $7103: $39
	db $fc                                           ; $7104: $fc
	rst $38                                          ; $7105: $ff
	adc a                                            ; $7106: $8f
	rst $38                                          ; $7107: $ff
	db $fc                                           ; $7108: $fc
	rst $38                                          ; $7109: $ff
	ld l, a                                          ; $710a: $6f
	xor [hl]                                         ; $710b: $ae
	rst GetHLinHL                                          ; $710c: $cf
	add b                                            ; $710d: $80
	ld [hl], a                                       ; $710e: $77
	db $ec                                           ; $710f: $ec
	rst SubAFromDE                                          ; $7110: $df
	ret nz                                           ; $7111: $c0

jr_014_7112:
	rst SubAFromDE                                          ; $7112: $df
	ldh a, [rPCM34]                                  ; $7113: $f0 $77
	ld a, [bc]                                       ; $7115: $0a
	rst SubAFromDE                                          ; $7116: $df
	ld h, b                                          ; $7117: $60
	rst SubAFromDE                                          ; $7118: $df
	ld [hl], b                                       ; $7119: $70
	add l                                            ; $711a: $85
	jr z, @+$3a                                      ; $711b: $28 $38

	inc a                                            ; $711d: $3c
	inc a                                            ; $711e: $3c
	ld d, $1e                                        ; $711f: $16 $1e
	dec bc                                           ; $7121: $0b
	rrca                                             ; $7122: $0f
	push bc                                          ; $7123: $c5

jr_014_7124:
	rst JumpTable                                          ; $7124: $c7
	and $e7                                          ; $7125: $e6 $e7
	ld c, d                                          ; $7127: $4a
	ld a, e                                          ; $7128: $7b
	ld a, e                                          ; $7129: $7b
	ld h, a                                          ; $712a: $67
	ld [de], a                                       ; $712b: $12
	dec e                                            ; $712c: $1d
	dec c                                            ; $712d: $0d
	ld c, $66                                        ; $712e: $0e $66
	ld a, c                                          ; $7130: $79
	add hl, sp                                       ; $7131: $39
	ld a, $14                                        ; $7132: $3e $14
	rra                                              ; $7134: $1f
	db $dd                                           ; $7135: $dd
	ld [bc], a                                       ; $7136: $02
	rst SubAFromDE                                          ; $7137: $df
	inc bc                                           ; $7138: $03
	reti                                             ; $7139: $d9


	ld bc, $ca77                                     ; $713a: $01 $77 $ca
	sub d                                            ; $713d: $92
	ld b, b                                          ; $713e: $40
	ret nz                                           ; $713f: $c0

	ldh [$60], a                                     ; $7140: $e0 $60
	jr nz, jr_014_7124                               ; $7142: $20 $e0

	or b                                             ; $7144: $b0
	ld [hl], b                                       ; $7145: $70
	sbc b                                            ; $7146: $98
	ld a, b                                          ; $7147: $78
	ld c, a                                          ; $7148: $4f
	cp a                                             ; $7149: $bf
	pop hl                                           ; $714a: $e1
	ld l, d                                          ; $714b: $6a
	ld [hl-], a                                      ; $714c: $32
	rst SubAFromDE                                          ; $714d: $df
	add b                                            ; $714e: $80
	ld a, a                                          ; $714f: $7f
	ld [$7c89], a                                    ; $7150: $ea $89 $7c
	cp h                                             ; $7153: $bc
	jp nc, $a8b3                                     ; $7154: $d2 $b3 $a8

	add sp, $36                                      ; $7157: $e8 $36
	ld d, [hl]                                       ; $7159: $56
	ld de, $5073                                     ; $715a: $11 $73 $50
	ld [hl], b                                       ; $715d: $70
	ld e, b                                          ; $715e: $58
	ld a, b                                          ; $715f: $78
	ld e, b                                          ; $7160: $58
	ld l, b                                          ; $7161: $68
	ld b, a                                          ; $7162: $47
	ld a, a                                          ; $7163: $7f
	jp nc, $d8ef                                     ; $7164: $d2 $ef $d8

	rst SubAFromBC                                          ; $7167: $e7
	ld e, [hl]                                       ; $7168: $5e
	jr jr_014_71e9                                   ; $7169: $18 $7e

	call z, $fe7f                                    ; $716b: $cc $7f $fe
	add b                                            ; $716e: $80
	inc c                                            ; $716f: $0c
	rrca                                             ; $7170: $0f
	dec c                                            ; $7171: $0d
	adc [hl]                                         ; $7172: $8e
	dec e                                            ; $7173: $1d
	ld e, $1b                                        ; $7174: $1e $1b
	inc e                                            ; $7176: $1c
	inc sp                                           ; $7177: $33
	cp h                                             ; $7178: $bc
	ld h, [hl]                                       ; $7179: $66
	ld a, c                                          ; $717a: $79
	call z, $1bf3                                    ; $717b: $cc $f3 $1b
	push hl                                          ; $717e: $e5
	halt                                             ; $717f: $76
	adc e                                            ; $7180: $8b
	rlca                                             ; $7181: $07
	rlca                                             ; $7182: $07
	rra                                              ; $7183: $1f
	rra                                              ; $7184: $1f
	ld a, [hl-]                                      ; $7185: $3a
	ld [hl], $d0                                     ; $7186: $36 $d0
	add sp, -$6d                                     ; $7188: $e8 $93
	di                                               ; $718a: $f3
	db $eb                                           ; $718b: $eb
	cpl                                              ; $718c: $2f
	and [hl]                                         ; $718d: $a6
	add b                                            ; $718e: $80
	ld a, [hl]                                       ; $718f: $7e
	ret c                                            ; $7190: $d8

	jr z, @-$6b                                      ; $7191: $28 $93

	ld [hl], e                                       ; $7193: $73
	xor e                                            ; $7194: $ab
	ld a, a                                          ; $7195: $7f
	ld d, [hl]                                       ; $7196: $56
	cp [hl]                                          ; $7197: $be
	xor b                                            ; $7198: $a8
	ld hl, sp+$5e                                    ; $7199: $f8 $5e
	cp $f0                                           ; $719b: $fe $f0
	ldh a, [$bc]                                     ; $719d: $f0 $bc
	db $fc                                           ; $719f: $fc
	ret nc                                           ; $71a0: $d0

	ldh a, [$4e]                                     ; $71a1: $f0 $4e
	ld c, a                                          ; $71a3: $4f
	dec e                                            ; $71a4: $1d
	rra                                              ; $71a5: $1f
	ld b, $07                                        ; $71a6: $06 $07
	ld bc, $0c21                                     ; $71a8: $01 $21 $0c
	rrca                                             ; $71ab: $0f
	daa                                              ; $71ac: $27
	daa                                              ; $71ad: $27
	sbc l                                            ; $71ae: $9d
	nop                                              ; $71af: $00
	ld [$8fef], sp                                   ; $71b0: $08 $ef $8f
	jr c, @-$37                                      ; $71b3: $38 $c7

	ld c, a                                          ; $71b5: $4f
	ldh a, [$97]                                     ; $71b6: $f0 $97
	add sp, -$56                                     ; $71b8: $e8 $aa
	db $fd                                           ; $71ba: $fd
	ld d, b                                          ; $71bb: $50
	rst $38                                          ; $71bc: $ff
	adc d                                            ; $71bd: $8a
	rst FarCall                                          ; $71be: $f7
	rst $38                                          ; $71bf: $ff
	rst $38                                          ; $71c0: $ff
	inc e                                            ; $71c1: $1c
	inc e                                            ; $71c2: $1c
	pop af                                           ; $71c3: $f1
	add h                                            ; $71c4: $84
	dec e                                            ; $71c5: $1d
	ldh [c], a                                       ; $71c6: $e2
	cp a                                             ; $71c7: $bf
	ld b, b                                          ; $71c8: $40
	rst $38                                          ; $71c9: $ff
	nop                                              ; $71ca: $00
	rst $38                                          ; $71cb: $ff
	nop                                              ; $71cc: $00
	ld e, $e1                                        ; $71cd: $1e $e1
	adc $f1                                          ; $71cf: $ce $f1
	db $e4                                           ; $71d1: $e4
	ei                                               ; $71d2: $fb
	ld [hl-], a                                      ; $71d3: $32
	dec a                                            ; $71d4: $3d
	add hl, de                                       ; $71d5: $19
	rla                                              ; $71d6: $17
	dec e                                            ; $71d7: $1d
	dec de                                           ; $71d8: $1b
	rra                                              ; $71d9: $1f
	ld a, [de]                                       ; $71da: $1a
	ld d, $1f                                        ; $71db: $16 $1f
	dec de                                           ; $71dd: $1b
	rra                                              ; $71de: $1f
	ld d, $de                                        ; $71df: $16 $de
	ld e, $df                                        ; $71e1: $1e $df
	inc d                                            ; $71e3: $14
	sub l                                            ; $71e4: $95
	reti                                             ; $71e5: $d9


	daa                                              ; $71e6: $27
	xor [hl]                                         ; $71e7: $ae
	ld d, a                                          ; $71e8: $57

jr_014_71e9:
	reti                                             ; $71e9: $d9


	ccf                                              ; $71ea: $3f
	daa                                              ; $71eb: $27
	rst SubAFromDE                                          ; $71ec: $df
	db $fc                                           ; $71ed: $fc
	db $fc                                           ; $71ee: $fc
	db $dd                                           ; $71ef: $dd
	add b                                            ; $71f0: $80
	ld a, a                                          ; $71f1: $7f
	ld a, [hl-]                                      ; $71f2: $3a
	add e                                            ; $71f3: $83
	and b                                            ; $71f4: $a0
	ld h, b                                          ; $71f5: $60
	or b                                             ; $71f6: $b0
	ret nc                                           ; $71f7: $d0

	ret z                                            ; $71f8: $c8

	ld hl, sp+$74                                    ; $71f9: $f8 $74
	db $ec                                           ; $71fb: $ec
	sbc d                                            ; $71fc: $9a
	ld e, [hl]                                       ; $71fd: $5e
	xor [hl]                                         ; $71fe: $ae
	xor $60                                          ; $71ff: $ee $60
	ld h, b                                          ; $7201: $60
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	ld h, [hl]                                       ; $7204: $66
	and $70                                          ; $7205: $e6 $70
	ldh a, [hDisp0_SCX]                                     ; $7207: $f0 $84
	add h                                            ; $7209: $84

jr_014_720a:
	jr z, jr_014_722c                                ; $720a: $28 $20

	nop                                              ; $720c: $00

jr_014_720d:
	add b                                            ; $720d: $80
	ld [$3d08], sp                                   ; $720e: $08 $08 $3d
	ld h, d                                          ; $7211: $62
	rst $38                                          ; $7212: $ff
	rst SubAFromDE                                          ; $7213: $df
	inc b                                            ; $7214: $04
	db $dd                                           ; $7215: $dd
	inc c                                            ; $7216: $0c
	sbc e                                            ; $7217: $9b
	inc d                                            ; $7218: $14
	inc e                                            ; $7219: $1c
	inc d                                            ; $721a: $14
	inc e                                            ; $721b: $1c
	ld a, d                                          ; $721c: $7a
	cp h                                             ; $721d: $bc
	rst SubAFromDE                                          ; $721e: $df
	inc l                                            ; $721f: $2c
	sub l                                            ; $7220: $95
	inc [hl]                                         ; $7221: $34
	inc e                                            ; $7222: $1c
	inc d                                            ; $7223: $14
	inc d                                            ; $7224: $14
	inc e                                            ; $7225: $1c
	inc e                                            ; $7226: $1c
	inc d                                            ; $7227: $14
	inc [hl]                                         ; $7228: $34
	inc a                                            ; $7229: $3c
	jr z, jr_014_720a                                ; $722a: $28 $de

jr_014_722c:
	jr c, jr_014_720d                                ; $722c: $38 $df

	ld [hl], b                                       ; $722e: $70
	rst SubAFromDE                                          ; $722f: $df
	ld b, b                                          ; $7230: $40
	pop af                                           ; $7231: $f1
	rst SubAFromDE                                          ; $7232: $df
	inc e                                            ; $7233: $1c
	sbc c                                            ; $7234: $99
	ld a, [hl+]                                      ; $7235: $2a
	ld [hl], $3e                                     ; $7236: $36 $3e
	ld [hl+], a                                      ; $7238: $22
	ld a, [hl+]                                      ; $7239: $2a
	ld [hl], $3f                                     ; $723a: $36 $3f
	ld d, [hl]                                       ; $723c: $56
	rst SubAFromDE                                          ; $723d: $df
	ld [bc], a                                       ; $723e: $02
	ld a, [hl]                                       ; $723f: $7e
	dec d                                            ; $7240: $15
	rst SubAFromDE                                          ; $7241: $df
	inc b                                            ; $7242: $04
	db $dd                                           ; $7243: $dd
	ld bc, $f87f                                     ; $7244: $01 $7f $f8
	sub a                                            ; $7247: $97
	inc d                                            ; $7248: $14
	rla                                              ; $7249: $17
	ld hl, $343f                                     ; $724a: $21 $3f $34
	dec sp                                           ; $724d: $3b
	add hl, de                                       ; $724e: $19
	ld e, $45                                        ; $724f: $1e $45
	xor $df                                          ; $7251: $ee $df
	sub b                                            ; $7253: $90
	sub c                                            ; $7254: $91
	ld b, b                                          ; $7255: $40
	ret nc                                           ; $7256: $d0

	ld e, b                                          ; $7257: $58
	ret c                                            ; $7258: $d8

	ld [$9898], sp                                   ; $7259: $08 $98 $98
	cp b                                             ; $725c: $b8
	sbc b                                            ; $725d: $98
	ld hl, sp+$30                                    ; $725e: $f8 $30
	ldh a, [$60]                                     ; $7260: $f0 $60
	ldh [$37], a                                     ; $7262: $e0 $37
	ld l, [hl]                                       ; $7264: $6e
	ld l, a                                          ; $7265: $6f
	or h                                             ; $7266: $b4
	rst SubAFromDE                                          ; $7267: $df
	ld h, [hl]                                       ; $7268: $66
	add b                                            ; $7269: $80
	ld e, d                                          ; $726a: $5a
	ld a, [hl]                                       ; $726b: $7e
	ld [hl], h                                       ; $726c: $74
	ld l, h                                          ; $726d: $6c
	jr c, @+$3a                                      ; $726e: $38 $38

	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	jr nc, @+$32                                     ; $7272: $30 $30

	ld l, h                                          ; $7274: $6c
	ld a, h                                          ; $7275: $7c
	adc $fe                                          ; $7276: $ce $fe
	ld h, a                                          ; $7278: $67
	ld a, a                                          ; $7279: $7f
	or $f9                                           ; $727a: $f6 $f9
	dec de                                           ; $727c: $1b
	inc e                                            ; $727d: $1c

Call_014_727e:
	jr c, jr_014_72bf                                ; $727e: $38 $3f

	add hl, bc                                       ; $7280: $09
	rrca                                             ; $7281: $0f
	dec b                                            ; $7282: $05
	rlca                                             ; $7283: $07
	ld [bc], a                                       ; $7284: $02
	inc bc                                           ; $7285: $03
	dec bc                                           ; $7286: $0b
	dec bc                                           ; $7287: $0b
	rla                                              ; $7288: $17
	sbc d                                            ; $7289: $9a
	rra                                              ; $728a: $1f
	jr jr_014_72ac                                   ; $728b: $18 $1f

	inc c                                            ; $728d: $0c
	rrca                                             ; $728e: $0f
	ld [hl], l                                       ; $728f: $75
	cp [hl]                                          ; $7290: $be
	rst SubAFromDE                                          ; $7291: $df
	ld b, $7f                                        ; $7292: $06 $7f
	xor $85                                          ; $7294: $ee $85
	cp l                                             ; $7296: $bd
	ei                                               ; $7297: $fb
	sub $fa                                          ; $7298: $d6 $fa
	cp $c6                                           ; $729a: $fe $c6
	xor h                                            ; $729c: $ac
	ld e, h                                          ; $729d: $5c
	db $f4                                           ; $729e: $f4
	inc c                                            ; $729f: $0c
	ld [hl], h                                       ; $72a0: $74
	adc h                                            ; $72a1: $8c
	or d                                             ; $72a2: $b2
	adc $ee                                          ; $72a3: $ce $ee
	sub $d6                                          ; $72a5: $d6 $d6
	xor $a4                                          ; $72a7: $ee $a4
	call c, $fc0c                                    ; $72a9: $dc $0c $fc

jr_014_72ac:
	inc e                                            ; $72ac: $1c
	db $fc                                           ; $72ad: $fc
	ld hl, sp-$08                                    ; $72ae: $f8 $f8
	and b                                            ; $72b0: $a0
	nop                                              ; $72b1: $00
	rst $38                                          ; $72b2: $ff
	rst SubAFromDE                                          ; $72b3: $df
	rlca                                             ; $72b4: $07
	adc e                                            ; $72b5: $8b
	ld [hl+], a                                      ; $72b6: $22
	inc hl                                           ; $72b7: $23
	rra                                              ; $72b8: $1f
	rra                                              ; $72b9: $1f
	dec bc                                           ; $72ba: $0b
	ld c, $07                                        ; $72bb: $0e $07
	dec b                                            ; $72bd: $05
	rlca                                             ; $72be: $07

jr_014_72bf:
	dec b                                            ; $72bf: $05
	dec bc                                           ; $72c0: $0b
	ld c, $09                                        ; $72c1: $0e $09
	rrca                                             ; $72c3: $0f
	dec b                                            ; $72c4: $05
	rlca                                             ; $72c5: $07
	inc bc                                           ; $72c6: $03
	inc bc                                           ; $72c7: $03
	ld bc, $7b00                                     ; $72c8: $01 $00 $7b
	cp $dc                                           ; $72cb: $fe $dc
	ld bc, $dfff                                     ; $72cd: $01 $ff $df
	cp b                                             ; $72d0: $b8
	adc c                                            ; $72d1: $89
	ld h, [hl]                                       ; $72d2: $66
	cp $f7                                           ; $72d3: $fe $f7
	rst $38                                          ; $72d5: $ff
	rst $38                                          ; $72d6: $ff
	add hl, sp                                       ; $72d7: $39
	rst $38                                          ; $72d8: $ff
	add [hl]                                         ; $72d9: $86
	rst $38                                          ; $72da: $ff
	or [hl]                                          ; $72db: $b6
	rst $38                                          ; $72dc: $ff
	ld a, c                                          ; $72dd: $79
	cp [hl]                                          ; $72de: $be
	rst AddAOntoHL                                          ; $72df: $ef
	rst $38                                          ; $72e0: $ff
	ld h, a                                          ; $72e1: $67
	rst $38                                          ; $72e2: $ff
	xor l                                            ; $72e3: $ad
	ld [hl], a                                       ; $72e4: $77
	sbc $ff                                          ; $72e5: $de $ff
	call z, $fe7b                                    ; $72e7: $cc $7b $fe
	sbc h                                            ; $72ea: $9c
	ld sp, $83ff                                     ; $72eb: $31 $ff $83
	db $fd                                           ; $72ee: $fd
	rst SubAFromDE                                          ; $72ef: $df
	add b                                            ; $72f0: $80
	rst SubAFromDE                                          ; $72f1: $df
	ret nz                                           ; $72f2: $c0

	ld [hl], a                                       ; $72f3: $77
	db $fc                                           ; $72f4: $fc
	sbc l                                            ; $72f5: $9d
	and b                                            ; $72f6: $a0
	ldh [$6f], a                                     ; $72f7: $e0 $6f
	cp $9c                                           ; $72f9: $fe $9c
	ld h, b                                          ; $72fb: $60
	ldh [$60], a                                     ; $72fc: $e0 $60
	ld a, e                                          ; $72fe: $7b
	ld sp, hl                                        ; $72ff: $f9
	ld [hl], a                                       ; $7300: $77
	db $ec                                           ; $7301: $ec
	rst SubAFromDE                                          ; $7302: $df
	add b                                            ; $7303: $80
	rst $38                                          ; $7304: $ff
	rst SubAFromDE                                          ; $7305: $df
	dec c                                            ; $7306: $0d
	sub a                                            ; $7307: $97
	rra                                              ; $7308: $1f
	ld [de], a                                       ; $7309: $12
	rra                                              ; $730a: $1f
	ld [de], a                                       ; $730b: $12
	rrca                                             ; $730c: $0f
	add hl, bc                                       ; $730d: $09
	rrca                                             ; $730e: $0f
	rrca                                             ; $730f: $0f
	ld sp, hl                                        ; $7310: $f9
	db $dd                                           ; $7311: $dd
	ld bc, $03df                                     ; $7312: $01 $df $03
	sub c                                            ; $7315: $91
	rrca                                             ; $7316: $0f
	inc c                                            ; $7317: $0c
	rlca                                             ; $7318: $07
	rlca                                             ; $7319: $07
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	rst $38                                          ; $731c: $ff
	cp $ff                                           ; $731d: $fe $ff
	dec b                                            ; $731f: $05
	rst $38                                          ; $7320: $ff
	adc b                                            ; $7321: $88
	rst $38                                          ; $7322: $ff
	adc c                                            ; $7323: $89
	ld a, e                                          ; $7324: $7b
	and d                                            ; $7325: $a2
	add [hl]                                         ; $7326: $86
	add c                                            ; $7327: $81
	rst $38                                          ; $7328: $ff
	rst $38                                          ; $7329: $ff
	pop bc                                           ; $732a: $c1
	rst $38                                          ; $732b: $ff
	rst SubAFromBC                                          ; $732c: $e7
	cp [hl]                                          ; $732d: $be
	rst $38                                          ; $732e: $ff
	sbc h                                            ; $732f: $9c
	rst FarCall                                          ; $7330: $f7
	inc d                                            ; $7331: $14
	rst SubAFromBC                                          ; $7332: $e7
	inc h                                            ; $7333: $24
	rst $38                                          ; $7334: $ff
	ld a, $ff                                        ; $7335: $3e $ff
	ld a, [hl]                                       ; $7337: $7e
	rst $38                                          ; $7338: $ff
	db $fc                                           ; $7339: $fc
	inc bc                                           ; $733a: $03
	inc bc                                           ; $733b: $03
	ret nz                                           ; $733c: $c0

	ld b, b                                          ; $733d: $40
	ret nz                                           ; $733e: $c0

	ld b, b                                          ; $733f: $40
	ld l, e                                          ; $7340: $6b
	xor e                                            ; $7341: $ab
	sbc [hl]                                         ; $7342: $9e
	jr nz, jr_014_73b4                               ; $7343: $20 $6f

	xor [hl]                                         ; $7345: $ae
	db $dd                                           ; $7346: $dd
	add b                                            ; $7347: $80
	ld [hl], a                                       ; $7348: $77
	ld [$fe7f], a                                    ; $7349: $ea $7f $fe
	rst SubAFromDE                                          ; $734c: $df
	ldh a, [$df]                                     ; $734d: $f0 $df
	add b                                            ; $734f: $80
	ld h, l                                          ; $7350: $65
	inc bc                                           ; $7351: $03
	rst $38                                          ; $7352: $ff
	rst SubAFromDE                                          ; $7353: $df
	rlca                                             ; $7354: $07
	add b                                            ; $7355: $80
	ld [hl+], a                                      ; $7356: $22
	inc hl                                           ; $7357: $23
	rra                                              ; $7358: $1f
	rra                                              ; $7359: $1f
	dec bc                                           ; $735a: $0b
	ld c, $07                                        ; $735b: $0e $07
	dec b                                            ; $735d: $05
	rlca                                             ; $735e: $07
	dec b                                            ; $735f: $05
	dec de                                           ; $7360: $1b
	ld e, $39                                        ; $7361: $1e $39
	cpl                                              ; $7363: $2f
	ld a, l                                          ; $7364: $7d
	ld c, a                                          ; $7365: $4f
	ld a, e                                          ; $7366: $7b
	ld c, e                                          ; $7367: $4b
	dec a                                            ; $7368: $3d
	inc h                                            ; $7369: $24
	ccf                                              ; $736a: $3f
	ld [hl+], a                                      ; $736b: $22
	rra                                              ; $736c: $1f
	inc de                                           ; $736d: $13
	rrca                                             ; $736e: $0f
	add hl, bc                                       ; $736f: $09
	rlca                                             ; $7370: $07
	dec b                                            ; $7371: $05
	nop                                              ; $7372: $00
	nop                                              ; $7373: $00
	cp b                                             ; $7374: $b8
	adc b                                            ; $7375: $88
	cp b                                             ; $7376: $b8
	ld h, [hl]                                       ; $7377: $66
	cp $f7                                           ; $7378: $fe $f7
	rst $38                                          ; $737a: $ff
	rst $38                                          ; $737b: $ff
	add hl, sp                                       ; $737c: $39
	rst $38                                          ; $737d: $ff
	add [hl]                                         ; $737e: $86
	rst $38                                          ; $737f: $ff
	or [hl]                                          ; $7380: $b6
	rst $38                                          ; $7381: $ff
	ld a, c                                          ; $7382: $79
	cp [hl]                                          ; $7383: $be
	rst AddAOntoHL                                          ; $7384: $ef
	rst $38                                          ; $7385: $ff
	ld h, a                                          ; $7386: $67
	rst $38                                          ; $7387: $ff
	xor l                                            ; $7388: $ad
	ld [hl], a                                       ; $7389: $77
	sbc $ff                                          ; $738a: $de $ff
	call z, $fe7b                                    ; $738c: $cc $7b $fe
	sbc h                                            ; $738f: $9c
	ld sp, $83ff                                     ; $7390: $31 $ff $83
	db $fd                                           ; $7393: $fd
	rst SubAFromDE                                          ; $7394: $df
	add b                                            ; $7395: $80
	rst SubAFromDE                                          ; $7396: $df
	ret nz                                           ; $7397: $c0

	ld [hl], a                                       ; $7398: $77
	db $fc                                           ; $7399: $fc
	add a                                            ; $739a: $87
	and b                                            ; $739b: $a0
	ldh [$a4], a                                     ; $739c: $e0 $a4
	db $e4                                           ; $739e: $e4
	xor [hl]                                         ; $739f: $ae
	ld [$eaae], a                                    ; $73a0: $ea $ae $ea
	ld a, [hl]                                       ; $73a3: $7e
	ldh a, [c]                                       ; $73a4: $f2
	ld a, [hl]                                       ; $73a5: $7e
	and d                                            ; $73a6: $a2
	db $fc                                           ; $73a7: $fc
	and h                                            ; $73a8: $a4
	ld hl, sp-$38                                    ; $73a9: $f8 $c8
	ldh a, [hDisp1_SCY]                                     ; $73ab: $f0 $90
	ldh [rAUD4LEN], a                                ; $73ad: $e0 $20
	inc bc                                           ; $73af: $03
	ld [bc], a                                       ; $73b0: $02
	ld bc, $e901                                     ; $73b1: $01 $01 $e9

jr_014_73b4:
	rst SubAFromDE                                          ; $73b4: $df
	rlca                                             ; $73b5: $07
	rst SubAFromDE                                          ; $73b6: $df
	ld bc, $ff99                                     ; $73b7: $01 $99 $ff
	cp $ff                                           ; $73ba: $fe $ff
	nop                                              ; $73bc: $00
	rst $38                                          ; $73bd: $ff
	add c                                            ; $73be: $81
	ld l, e                                          ; $73bf: $6b
	cp $96                                           ; $73c0: $fe $96
	rst $38                                          ; $73c2: $ff
	jp $e7ff                                         ; $73c3: $c3 $ff $e7


	cp l                                             ; $73c6: $bd
	rst $38                                          ; $73c7: $ff
	sbc c                                            ; $73c8: $99
	ld a, a                                          ; $73c9: $7f
	ld c, c                                          ; $73ca: $49
	ld [hl], a                                       ; $73cb: $77
	cp $95                                           ; $73cc: $fe $95
	rst $38                                          ; $73ce: $ff
	ret                                              ; $73cf: $c9


	rst $38                                          ; $73d0: $ff
	ld [rIE], sp                                   ; $73d1: $08 $ff $ff
	ret nz                                           ; $73d4: $c0

	ld b, b                                          ; $73d5: $40
	add b                                            ; $73d6: $80
	add b                                            ; $73d7: $80
	jp hl                                            ; $73d8: $e9


	rst SubAFromDE                                          ; $73d9: $df
	ldh a, [$df]                                     ; $73da: $f0 $df
	ret nz                                           ; $73dc: $c0

	ei                                               ; $73dd: $fb
	rst SubAFromDE                                          ; $73de: $df
	add hl, bc                                       ; $73df: $09
	rst SubAFromDE                                          ; $73e0: $df
	ld [$1690], sp                                   ; $73e1: $08 $90 $16
	ld e, $16                                        ; $73e4: $1e $16
	inc e                                            ; $73e6: $1c
	ld d, $1c                                        ; $73e7: $16 $1c
	dec de                                           ; $73e9: $1b
	ld e, $0b                                        ; $73ea: $1e $0b
	ld c, $0a                                        ; $73ec: $0e $0a
	rrca                                             ; $73ee: $0f
	dec b                                            ; $73ef: $05
	rlca                                             ; $73f0: $07
	inc b                                            ; $73f1: $04
	ld l, e                                          ; $73f2: $6b
	cp $df                                           ; $73f3: $fe $df
	inc a                                            ; $73f5: $3c
	sub d                                            ; $73f6: $92
	ld h, h                                          ; $73f7: $64
	ld a, h                                          ; $73f8: $7c
	ret z                                            ; $73f9: $c8

	ld hl, sp-$38                                    ; $73fa: $f8 $c8
	ld hl, sp+$58                                    ; $73fc: $f8 $58
	ld hl, sp+$68                                    ; $73fe: $f8 $68
	ld hl, sp+$78                                    ; $7400: $f8 $78
	ld a, b                                          ; $7402: $78
	ld l, b                                          ; $7403: $68
	sbc $78                                          ; $7404: $de $78
	sub c                                            ; $7406: $91
	ld b, h                                          ; $7407: $44
	ld a, h                                          ; $7408: $7c
	call nz, $ca7c                                   ; $7409: $c4 $7c $ca
	ld a, [hl]                                       ; $740c: $7e
	sbc l                                            ; $740d: $9d
	rst FarCall                                          ; $740e: $f7
	ld e, l                                          ; $740f: $5d
	rst FarCall                                          ; $7410: $f7
	ld c, c                                          ; $7411: $49
	rst $38                                          ; $7412: $ff
	ld c, c                                          ; $7413: $49
	rst $38                                          ; $7414: $ff
	ld [hl], a                                       ; $7415: $77
	call c, $088b                                    ; $7416: $dc $8b $08
	rrca                                             ; $7419: $0f
	ld c, $0d                                        ; $741a: $0e $0d
	ld e, $17                                        ; $741c: $1e $17
	scf                                              ; $741e: $37
	ld l, $3f                                        ; $741f: $2e $3f
	ld a, [hl-]                                      ; $7421: $3a
	ld c, a                                          ; $7422: $4f
	ld c, d                                          ; $7423: $4a
	ld a, [de]                                       ; $7424: $1a
	dec d                                            ; $7425: $15
	ld a, $2d                                        ; $7426: $3e $2d
	ld [hl], $15                                     ; $7428: $36 $15
	ld h, a                                          ; $742a: $67
	ld h, l                                          ; $742b: $65
	halt                                             ; $742c: $76
	ldh a, [c]                                       ; $742d: $f2
	ld a, a                                          ; $742e: $7f
	cp $80                                           ; $742f: $fe $80
	rrca                                             ; $7431: $0f
	ld [rSTAT], sp                                   ; $7432: $08 $41 $ff
	jr nz, @+$01                                     ; $7435: $20 $ff

	jr nc, @+$01                                     ; $7437: $30 $ff

	ld [bc], a                                       ; $7439: $02
	db $fd                                           ; $743a: $fd
	adc d                                            ; $743b: $8a
	ld [hl], a                                       ; $743c: $77
	add d                                            ; $743d: $82
	rst $38                                          ; $743e: $ff
	sbc $ab                                          ; $743f: $de $ab
	rst $38                                          ; $7441: $ff
	xor c                                            ; $7442: $a9
	rst $38                                          ; $7443: $ff
	dec h                                            ; $7444: $25
	db $fd                                           ; $7445: $fd
	adc a                                            ; $7446: $8f
	db $fd                                           ; $7447: $fd
	xor d                                            ; $7448: $aa
	db $fd                                           ; $7449: $fd
	xor d                                            ; $744a: $aa
	ld a, a                                          ; $744b: $7f
	xor d                                            ; $744c: $aa
	db $fc                                           ; $744d: $fc
	xor e                                            ; $744e: $ab
	cp $9c                                           ; $744f: $fe $9c
	xor l                                            ; $7451: $ad
	rst AddAOntoHL                                          ; $7452: $ef
	cp l                                             ; $7453: $bd
	ld [hl], a                                       ; $7454: $77
	ld [bc], a                                       ; $7455: $02
	reti                                             ; $7456: $d9


	add b                                            ; $7457: $80
	sbc $c0                                          ; $7458: $de $c0
	adc [hl]                                         ; $745a: $8e
	ld b, b                                          ; $745b: $40
	ld h, b                                          ; $745c: $60
	and b                                            ; $745d: $a0
	db $fc                                           ; $745e: $fc
	sbc h                                            ; $745f: $9c
	cp $d2                                           ; $7460: $fe $d2
	cp $ee                                           ; $7462: $fe $ee
	cp b                                             ; $7464: $b8
	xor b                                            ; $7465: $a8
	db $fc                                           ; $7466: $fc
	ld [hl], h                                       ; $7467: $74
	sbc $5a                                          ; $7468: $de $5a
	adc $4e                                          ; $746a: $ce $4e
	ei                                               ; $746c: $fb
	rst SubAFromDE                                          ; $746d: $df
	inc c                                            ; $746e: $0c
	sub b                                            ; $746f: $90
	ld e, $12                                        ; $7470: $1e $12
	dec a                                            ; $7472: $3d
	dec sp                                           ; $7473: $3b
	ld b, $07                                        ; $7474: $06 $07
	dec de                                           ; $7476: $1b
	dec de                                           ; $7477: $1b
	dec a                                            ; $7478: $3d
	daa                                              ; $7479: $27
	ld a, e                                          ; $747a: $7b
	ld a, a                                          ; $747b: $7f
	dec c                                            ; $747c: $0d
	rrca                                             ; $747d: $0f
	ld b, $7b                                        ; $747e: $06 $7b
	and e                                            ; $7480: $a3
	ld [hl], a                                       ; $7481: $77
	db $fc                                           ; $7482: $fc
	rst SubAFromDE                                          ; $7483: $df
	inc bc                                           ; $7484: $03
	ld a, a                                          ; $7485: $7f
	ldh a, [$9d]                                     ; $7486: $f0 $9d
	ld a, $27                                        ; $7488: $3e $27
	ld l, a                                          ; $748a: $6f
	db $fc                                           ; $748b: $fc
	add b                                            ; $748c: $80
	ld l, $37                                        ; $748d: $2e $37
	or l                                             ; $748f: $b5
	xor a                                            ; $7490: $af
	cp h                                             ; $7491: $bc
	and a                                            ; $7492: $a7
	ccf                                              ; $7493: $3f
	ccf                                              ; $7494: $3f
	ld a, [hl+]                                      ; $7495: $2a
	ccf                                              ; $7496: $3f
	ld b, l                                          ; $7497: $45
	ld a, a                                          ; $7498: $7f
	xor b                                            ; $7499: $a8
	rst $38                                          ; $749a: $ff
	dec d                                            ; $749b: $15
	rst $38                                          ; $749c: $ff
	and d                                            ; $749d: $a2
	rst $38                                          ; $749e: $ff
	ei                                               ; $749f: $fb
	rst $38                                          ; $74a0: $ff
	inc a                                            ; $74a1: $3c
	cpl                                              ; $74a2: $2f
	cp a                                             ; $74a3: $bf
	di                                               ; $74a4: $f3
	cp a                                             ; $74a5: $bf
	ei                                               ; $74a6: $fb
	ld e, [hl]                                       ; $74a7: $5e
	ld a, [$febe]                                    ; $74a8: $fa $be $fe
	ld d, d                                          ; $74ab: $52
	add b                                            ; $74ac: $80
	ldh a, [c]                                       ; $74ad: $f2
	or b                                             ; $74ae: $b0
	ldh a, [$50]                                     ; $74af: $f0 $50
	ldh a, [$98]                                     ; $74b1: $f0 $98
	ld hl, sp+$5c                                    ; $74b3: $f8 $5c
	db $f4                                           ; $74b5: $f4
	or [hl]                                          ; $74b6: $b6
	ld a, [$fa56]                                    ; $74b7: $fa $56 $fa
	sbc e                                            ; $74ba: $9b
	db $fd                                           ; $74bb: $fd
	ld d, a                                          ; $74bc: $57
	push af                                          ; $74bd: $f5
	inc sp                                           ; $74be: $33
	di                                               ; $74bf: $f3
	ld d, c                                          ; $74c0: $51
	pop af                                           ; $74c1: $f1
	sub b                                            ; $74c2: $90
	ldh a, [$5c]                                     ; $74c3: $f0 $5c
	ld l, a                                          ; $74c5: $6f
	ld l, d                                          ; $74c6: $6a
	ld e, a                                          ; $74c7: $5f
	ld a, c                                          ; $74c8: $79
	ld c, a                                          ; $74c9: $4f
	ld a, d                                          ; $74ca: $7a
	ld c, a                                          ; $74cb: $4f
	sbc c                                            ; $74cc: $99
	ld a, h                                          ; $74cd: $7c
	ld c, a                                          ; $74ce: $4f
	ld e, d                                          ; $74cf: $5a
	ld l, a                                          ; $74d0: $6f
	ld l, c                                          ; $74d1: $69
	ld e, a                                          ; $74d2: $5f
	ld [hl], a                                       ; $74d3: $77
	ld hl, sp+$7f                                    ; $74d4: $f8 $7f
	db $fc                                           ; $74d6: $fc
	ld a, a                                          ; $74d7: $7f
	ldh a, [$7f]                                     ; $74d8: $f0 $7f
	db $f4                                           ; $74da: $f4
	sbc [hl]                                         ; $74db: $9e
	ld l, h                                          ; $74dc: $6c
	ld a, e                                          ; $74dd: $7b
	db $f4                                           ; $74de: $f4
	ld [hl], a                                       ; $74df: $77
	add sp, -$71                                     ; $74e0: $e8 $8f
	ld [hl], b                                       ; $74e2: $70
	ldh a, [$b8]                                     ; $74e3: $f0 $b8
	add sp, $2c                                      ; $74e5: $e8 $2c
	db $f4                                           ; $74e7: $f4
	xor h                                            ; $74e8: $ac
	db $f4                                           ; $74e9: $f4
	halt                                             ; $74ea: $76
	ld a, [$eaae]                                    ; $74eb: $fa $ae $ea
	ld h, $e6                                        ; $74ee: $26 $e6
	and d                                            ; $74f0: $a2
	ldh [c], a                                       ; $74f1: $e2
	ld b, a                                          ; $74f2: $47
	ldh a, [$7e]                                     ; $74f3: $f0 $7e
	inc e                                            ; $74f5: $1c
	ld [hl], a                                       ; $74f6: $77
	cp $9b                                           ; $74f7: $fe $9b
	dec bc                                           ; $74f9: $0b
	dec c                                            ; $74fa: $0d
	dec c                                            ; $74fb: $0d
	dec bc                                           ; $74fc: $0b
	ld [hl], a                                       ; $74fd: $77
	ld hl, sp+$77                                    ; $74fe: $f8 $77
	inc c                                            ; $7500: $0c
	ld a, e                                          ; $7501: $7b
	ld h, [hl]                                       ; $7502: $66
	ld a, d                                          ; $7503: $7a
	pop bc                                           ; $7504: $c1
	ld a, [hl]                                       ; $7505: $7e
	ld c, b                                          ; $7506: $48
	ld a, a                                          ; $7507: $7f
	cp $7f                                           ; $7508: $fe $7f
	db $fd                                           ; $750a: $fd
	rst SubAFromDE                                          ; $750b: $df
	ld bc, $906f                                     ; $750c: $01 $6f $90
	sbc [hl]                                         ; $750f: $9e
	cp e                                             ; $7510: $bb
	ld a, e                                          ; $7511: $7b
	sub b                                            ; $7512: $90
	adc c                                            ; $7513: $89
	or e                                             ; $7514: $b3
	di                                               ; $7515: $f3
	ld e, c                                          ; $7516: $59
	ld sp, hl                                        ; $7517: $f9
	cp h                                             ; $7518: $bc
	db $f4                                           ; $7519: $f4
	ld d, [hl]                                       ; $751a: $56
	ld a, [$fabe]                                    ; $751b: $fa $be $fa
	sub $f6                                          ; $751e: $d6 $f6
	xor d                                            ; $7520: $aa
	ld a, [$f8d8]                                    ; $7521: $fa $d8 $f8
	xor h                                            ; $7524: $ac
	db $fc                                           ; $7525: $fc
	sbc $7a                                          ; $7526: $de $7a
	ld l, [hl]                                       ; $7528: $6e
	cp $db                                           ; $7529: $fe $db
	ld bc, $93e7                                     ; $752b: $01 $e7 $93
	jp c, $ea7a                                      ; $752e: $da $7a $ea

	ld a, d                                          ; $7531: $7a
	ret c                                            ; $7532: $d8

	ld a, b                                          ; $7533: $78
	add sp, -$08                                     ; $7534: $e8 $f8
	ret nc                                           ; $7536: $d0

	ldh a, [$b0]                                     ; $7537: $f0 $b0
	ldh a, [rPCM34]                                  ; $7539: $f0 $77
	db $fc                                           ; $753b: $fc
	rst SubAFromDE                                          ; $753c: $df
	ldh [$7d], a                                     ; $753d: $e0 $7d
	jp c, $e0df                                      ; $753f: $da $df $e0

	ld a, d                                          ; $7542: $7a
	rst SubAFromHL                                          ; $7543: $d7
	sbc [hl]                                         ; $7544: $9e
	ld b, b                                          ; $7545: $40
	ld a, [$10df]                                    ; $7546: $fa $df $10
	sbc h                                            ; $7549: $9c
	jr z, jr_014_754c                                ; $754a: $28 $00

jr_014_754c:
	sub b                                            ; $754c: $90
	halt                                             ; $754d: $76
	db $dd                                           ; $754e: $dd
	ld a, l                                          ; $754f: $7d
	pop af                                           ; $7550: $f1
	adc e                                            ; $7551: $8b
	ld [bc], a                                       ; $7552: $02
	add l                                            ; $7553: $85
	ld bc, $0102                                     ; $7554: $01 $02 $01
	ld [hl-], a                                      ; $7557: $32
	nop                                              ; $7558: $00
	ld sp, hl                                        ; $7559: $f9
	db $10                                           ; $755a: $10
	ld l, a                                          ; $755b: $6f
	ld c, $31                                        ; $755c: $0e $31
	rlca                                             ; $755e: $07
	jr @+$05                                         ; $755f: $18 $03

	inc c                                            ; $7561: $0c
	ld bc, $0006                                     ; $7562: $01 $06 $00
	inc bc                                           ; $7565: $03
	db $fc                                           ; $7566: $fc
	add h                                            ; $7567: $84
	ld [bc], a                                       ; $7568: $02
	nop                                              ; $7569: $00
	ld h, e                                          ; $756a: $63
	jr nz, jr_014_75c0                               ; $756b: $20 $53

	ld [de], a                                       ; $756d: $12
	dec l                                            ; $756e: $2d
	add hl, bc                                       ; $756f: $09
	ld [hl], $0d                                     ; $7570: $36 $0d
	sub d                                            ; $7572: $92
	ld c, $d1                                        ; $7573: $0e $d1
	add [hl]                                         ; $7575: $86

jr_014_7576:
	ld a, c                                          ; $7576: $79
	rst SubAFromBC                                          ; $7577: $e7
	jr @+$79                                         ; $7578: $18 $77

	adc b                                            ; $757a: $88
	rst $38                                          ; $757b: $ff
	nop                                              ; $757c: $00
	sbc a                                            ; $757d: $9f
	ld h, b                                          ; $757e: $60
	ld a, [bc]                                       ; $757f: $0a
	push af                                          ; $7580: $f5
	nop                                              ; $7581: $00
	rst $38                                          ; $7582: $ff
	cp $df                                           ; $7583: $fe $df
	ld [$1486], sp                                   ; $7585: $08 $86 $14
	nop                                              ; $7588: $00
	ld [$5000], sp                                   ; $7589: $08 $00 $50
	db $10                                           ; $758c: $10
	add sp, -$80                                     ; $758d: $e8 $80
	ld [hl], b                                       ; $758f: $70
	and b                                            ; $7590: $a0
	ld d, c                                          ; $7591: $51
	ldh a, [$0b]                                     ; $7592: $f0 $0b
	di                                               ; $7594: $f3
	inc c                                            ; $7595: $0c
	rst $38                                          ; $7596: $ff
	nop                                              ; $7597: $00
	cp $01                                           ; $7598: $fe $01
	rst $38                                          ; $759a: $ff
	nop                                              ; $759b: $00
	ld a, $c1                                        ; $759c: $3e $c1
	inc c                                            ; $759e: $0c
	di                                               ; $759f: $f3
	ld [hl], e                                       ; $75a0: $73
	ldh [$f9], a                                     ; $75a1: $e0 $f9
	adc e                                            ; $75a3: $8b
	jr jr_014_75b6                                   ; $75a4: $18 $10

	ld h, b                                          ; $75a6: $60

jr_014_75a7:
	ld h, b                                          ; $75a7: $60
	sub b                                            ; $75a8: $90
	ret nz                                           ; $75a9: $c0

	ld h, $84                                        ; $75aa: $26 $84
	ld e, d                                          ; $75ac: $5a
	jr @-$1a                                         ; $75ad: $18 $e4

	ld [hl], b                                       ; $75af: $70
	adc b                                            ; $75b0: $88
	ldh [rAUD2LOW], a                                ; $75b1: $e0 $18
	ld b, b                                          ; $75b3: $40
	or b                                             ; $75b4: $b0
	nop                                              ; $75b5: $00

jr_014_75b6:
	ldh [rP1], a                                     ; $75b6: $e0 $00
	ld [hl], l                                       ; $75b8: $75
	ret nz                                           ; $75b9: $c0

	add d                                            ; $75ba: $82
	jr nz, jr_014_75bd                               ; $75bb: $20 $00

jr_014_75bd:
	jr nc, jr_014_75cf                               ; $75bd: $30 $10

	inc l                                            ; $75bf: $2c

jr_014_75c0:
	inc b                                            ; $75c0: $04
	ld a, [de]                                       ; $75c1: $1a
	inc b                                            ; $75c2: $04
	adc e                                            ; $75c3: $8b
	ld [bc], a                                       ; $75c4: $02
	ld b, l                                          ; $75c5: $45
	ld bc, $1176                                     ; $75c6: $01 $76 $11
	ld l, $0c                                        ; $75c9: $2e $0c
	ld [hl], e                                       ; $75cb: $73
	inc h                                            ; $75cc: $24
	db $db                                           ; $75cd: $db
	ld a, [de]                                       ; $75ce: $1a

jr_014_75cf:
	ld h, l                                          ; $75cf: $65
	rrca                                             ; $75d0: $0f
	jr nc, jr_014_75da                               ; $75d1: $30 $07

	jr @+$03                                         ; $75d3: $18 $01

	ld c, $00                                        ; $75d5: $0e $00
	rlca                                             ; $75d7: $07
	ld a, e                                          ; $75d8: $7b
	ldh [c], a                                       ; $75d9: $e2

jr_014_75da:
	add h                                            ; $75da: $84
	ld [hl-], a                                      ; $75db: $32
	db $10                                           ; $75dc: $10
	xor d                                            ; $75dd: $aa
	db $10                                           ; $75de: $10
	ld l, [hl]                                       ; $75df: $6e
	ld a, [bc]                                       ; $75e0: $0a
	ld d, l                                          ; $75e1: $55
	ld a, [bc]                                       ; $75e2: $0a
	ld d, l                                          ; $75e3: $55
	ld c, $d1                                        ; $75e4: $0e $d1
	ld b, $c9                                        ; $75e6: $06 $c9
	adc a                                            ; $75e8: $8f
	ld [hl], b                                       ; $75e9: $70
	rst SubAFromBC                                          ; $75ea: $e7
	jr jr_014_7654                                   ; $75eb: $18 $67

	sbc b                                            ; $75ed: $98
	rst FarCall                                          ; $75ee: $f7
	ld [$807f], sp                                   ; $75ef: $08 $7f $80
	rst SubAFromBC                                          ; $75f2: $e7
	jr jr_014_7576                                   ; $75f3: $18 $81

	ld a, [hl]                                       ; $75f5: $7e
	ld h, e                                          ; $75f6: $63
	and b                                            ; $75f7: $a0
	ld a, a                                          ; $75f8: $7f
	ld [hl-], a                                      ; $75f9: $32
	rst SubAFromDE                                          ; $75fa: $df
	ld b, b                                          ; $75fb: $40
	adc [hl]                                         ; $75fc: $8e
	and c                                            ; $75fd: $a1
	ret nz                                           ; $75fe: $c0

	ld hl, $36c1                                     ; $75ff: $21 $c1 $36
	jp $f734                                         ; $7602: $c3 $34 $f7


	ld [$00ff], sp                                   ; $7605: $08 $ff $00
	di                                               ; $7608: $f3
	inc c                                            ; $7609: $0c
	db $e3                                           ; $760a: $e3
	inc e                                            ; $760b: $1c
	pop bc                                           ; $760c: $c1
	ld a, $7b                                        ; $760d: $3e $7b
	ldh [c], a                                       ; $760f: $e2
	ld l, a                                          ; $7610: $6f
	ldh [$9e], a                                     ; $7611: $e0 $9e
	inc b                                            ; $7613: $04
	ld [hl], b                                       ; $7614: $70
	db $db                                           ; $7615: $db
	adc [hl]                                         ; $7616: $8e
	ld b, c                                          ; $7617: $41
	add b                                            ; $7618: $80
	ld h, [hl]                                       ; $7619: $66
	and h                                            ; $761a: $a4
	ld e, d                                          ; $761b: $5a
	add sp, $14                                      ; $761c: $e8 $14
	ldh a, [$0c]                                     ; $761e: $f0 $0c
	ldh a, [$08]                                     ; $7620: $f0 $08
	ldh [rAUD2LOW], a                                ; $7622: $e0 $18
	ret nz                                           ; $7624: $c0

	jr nc, jr_014_75a7                               ; $7625: $30 $80

	ld h, b                                          ; $7627: $60
	ld l, e                                          ; $7628: $6b
	add b                                            ; $7629: $80
	push af                                          ; $762a: $f5
	ld l, a                                          ; $762b: $6f
	inc [hl]                                         ; $762c: $34
	sub [hl]                                         ; $762d: $96
	ld b, h                                          ; $762e: $44
	inc b                                            ; $762f: $04

jr_014_7630:
	inc sp                                           ; $7630: $33
	ld de, $0f2e                                     ; $7631: $11 $2e $0f
	db $10                                           ; $7634: $10
	ld b, $09                                        ; $7635: $06 $09
	ld a, e                                          ; $7637: $7b
	add b                                            ; $7638: $80
	push af                                          ; $7639: $f5
	ld a, a                                          ; $763a: $7f
	ld [hl], h                                       ; $763b: $74
	ld l, [hl]                                       ; $763c: $6e
	ldh a, [c]                                       ; $763d: $f2
	sub [hl]                                         ; $763e: $96
	jp $2dc2                                         ; $763f: $c3 $c2 $2d


	rst AddAOntoHL                                          ; $7642: $ef
	db $10                                           ; $7643: $10
	ld [hl], a                                       ; $7644: $77

jr_014_7645:
	adc b                                            ; $7645: $88
	ld [hl+], a                                      ; $7646: $22
	db $dd                                           ; $7647: $dd
	ld d, e                                          ; $7648: $53
	jr nz, @+$7d                                     ; $7649: $20 $7b

	and $9d                                          ; $764b: $e6 $9d
	ld [bc], a                                       ; $764d: $02
	dec b                                            ; $764e: $05
	ld a, e                                          ; $764f: $7b
	ldh [c], a                                       ; $7650: $e2
	rst SubAFromDE                                          ; $7651: $df
	ld [bc], a                                       ; $7652: $02
	sub h                                            ; $7653: $94

jr_014_7654:
	dec h                                            ; $7654: $25
	inc b                                            ; $7655: $04
	ei                                               ; $7656: $fb
	adc h                                            ; $7657: $8c
	ld [hl], d                                       ; $7658: $72
	add sp, $14                                      ; $7659: $e8 $14
	ld d, b                                          ; $765b: $50
	xor b                                            ; $765c: $a8
	nop                                              ; $765d: $00
	ldh a, [$5f]                                     ; $765e: $f0 $5f
	call nz, $209d                                   ; $7660: $c4 $9d $20
	ld d, b                                          ; $7663: $50
	ld l, e                                          ; $7664: $6b
	ret nz                                           ; $7665: $c0

	rst SubAFromDE                                          ; $7666: $df
	ld [hl+], a                                      ; $7667: $22
	sub [hl]                                         ; $7668: $96
	ld d, l                                          ; $7669: $55
	ld [hl+], a                                      ; $766a: $22
	ld e, l                                          ; $766b: $5d
	dec d                                            ; $766c: $15
	ld l, d                                          ; $766d: $6a
	ld a, $c1                                        ; $766e: $3e $c1
	ld [hl], h                                       ; $7670: $74
	adc e                                            ; $7671: $8b
	ld d, e                                          ; $7672: $53
	ret nz                                           ; $7673: $c0

	halt                                             ; $7674: $76
	halt                                             ; $7675: $76
	sbc [hl]                                         ; $7676: $9e
	db $10                                           ; $7677: $10
	ld l, a                                          ; $7678: $6f
	ld hl, sp-$6b                                    ; $7679: $f8 $95
	jr nc, jr_014_7645                               ; $767b: $30 $c8

	ret z                                            ; $767d: $c8

	ld [hl], $de                                     ; $767e: $36 $de
	ld hl, $13ec                                     ; $7680: $21 $ec $13
	nop                                              ; $7683: $00
	cp $f2                                           ; $7684: $fe $f2
	ld [hl], a                                       ; $7686: $77
	ldh [$fd], a                                     ; $7687: $e0 $fd
	sub [hl]                                         ; $7689: $96
	scf                                              ; $768a: $37
	inc d                                            ; $768b: $14
	ld l, e                                          ; $768c: $6b
	dec sp                                           ; $768d: $3b
	ld b, h                                          ; $768e: $44
	cpl                                              ; $768f: $2f
	ld d, b                                          ; $7690: $50
	nop                                              ; $7691: $00
	ccf                                              ; $7692: $3f
	ldh a, [$7e]                                     ; $7693: $f0 $7e
	or $7f                                           ; $7695: $f6 $7f
	ld [de], a                                       ; $7697: $12
	rst SubAFromDE                                          ; $7698: $df
	jr nz, jr_014_7630                               ; $7699: $20 $95

	ld e, h                                          ; $769b: $5c
	ld d, h                                          ; $769c: $54
	xor e                                            ; $769d: $ab
	ld a, [hl]                                       ; $769e: $7e
	add c                                            ; $769f: $81
	sbc b                                            ; $76a0: $98
	ld h, [hl]                                       ; $76a1: $66
	nop                                              ; $76a2: $00
	cp $38                                           ; $76a3: $fe $38
	ld a, c                                          ; $76a5: $79
	ld c, [hl]                                       ; $76a6: $4e
	sbc [hl]                                         ; $76a7: $9e
	sub [hl]                                         ; $76a8: $96
	ld a, c                                          ; $76a9: $79
	cp [hl]                                          ; $76aa: $be
	sbc [hl]                                         ; $76ab: $9e
	dec sp                                           ; $76ac: $3b
	ld a, c                                          ; $76ad: $79
	cp [hl]                                          ; $76ae: $be
	sbc [hl]                                         ; $76af: $9e
	sub e                                            ; $76b0: $93
	ld a, c                                          ; $76b1: $79
	ld c, [hl]                                       ; $76b2: $4e
	ld b, a                                          ; $76b3: $47
	ldh a, [$ac]                                     ; $76b4: $f0 $ac
	nop                                              ; $76b6: $00
	rst $38                                          ; $76b7: $ff
	rst SubAFromDE                                          ; $76b8: $df
	rlca                                             ; $76b9: $07
	adc e                                            ; $76ba: $8b
	ld [hl+], a                                      ; $76bb: $22
	inc hl                                           ; $76bc: $23
	rra                                              ; $76bd: $1f
	rra                                              ; $76be: $1f
	ld [$060f], sp                                   ; $76bf: $08 $0f $06
	rlca                                             ; $76c2: $07
	inc b                                            ; $76c3: $04
	rlca                                             ; $76c4: $07
	ld [$090f], sp                                   ; $76c5: $08 $0f $09
	rrca                                             ; $76c8: $0f
	dec b                                            ; $76c9: $05
	rlca                                             ; $76ca: $07
	inc bc                                           ; $76cb: $03
	inc bc                                           ; $76cc: $03
	ld bc, $7b00                                     ; $76cd: $01 $00 $7b
	cp $de                                           ; $76d0: $fe $de
	ld bc, $dffd                                     ; $76d2: $01 $fd $df
	cp b                                             ; $76d5: $b8
	sbc h                                            ; $76d6: $9c
	ld h, [hl]                                       ; $76d7: $66
	cp $31                                           ; $76d8: $fe $31
	sbc $ff                                          ; $76da: $de $ff
	adc a                                            ; $76dc: $8f
	ld d, c                                          ; $76dd: $51
	rst $38                                          ; $76de: $ff
	and h                                            ; $76df: $a4
	rst $38                                          ; $76e0: $ff
	or d                                             ; $76e1: $b2
	rst $38                                          ; $76e2: $ff
	cp d                                             ; $76e3: $ba
	rst AddAOntoHL                                          ; $76e4: $ef
	rst $38                                          ; $76e5: $ff
	ld h, a                                          ; $76e6: $67
	rst $38                                          ; $76e7: $ff
	xor l                                            ; $76e8: $ad
	ld [hl], a                                       ; $76e9: $77
	sbc $ff                                          ; $76ea: $de $ff
	call z, $fe7b                                    ; $76ec: $cc $7b $fe
	ld a, a                                          ; $76ef: $7f
	jp hl                                            ; $76f0: $e9


	sbc [hl]                                         ; $76f1: $9e
	add e                                            ; $76f2: $83
	db $fd                                           ; $76f3: $fd
	rst SubAFromDE                                          ; $76f4: $df
	add b                                            ; $76f5: $80
	rst SubAFromDE                                          ; $76f6: $df
	ret nz                                           ; $76f7: $c0

	rst SubAFromDE                                          ; $76f8: $df
	add b                                            ; $76f9: $80
	sbc e                                            ; $76fa: $9b
	ld b, b                                          ; $76fb: $40
	ret nz                                           ; $76fc: $c0

	and b                                            ; $76fd: $a0
	ldh [$6f], a                                     ; $76fe: $e0 $6f
	cp $9c                                           ; $7700: $fe $9c
	ld h, b                                          ; $7702: $60
	ldh [$60], a                                     ; $7703: $e0 $60
	ld a, e                                          ; $7705: $7b
	ld sp, hl                                        ; $7706: $f9
	ld [hl], a                                       ; $7707: $77
	db $ec                                           ; $7708: $ec
	rst SubAFromDE                                          ; $7709: $df
	add b                                            ; $770a: $80
	rst $38                                          ; $770b: $ff
	rst SubAFromDE                                          ; $770c: $df
	dec c                                            ; $770d: $0d
	sub [hl]                                         ; $770e: $96
	rra                                              ; $770f: $1f
	ld [de], a                                       ; $7710: $12
	rra                                              ; $7711: $1f
	ld [de], a                                       ; $7712: $12
	rrca                                             ; $7713: $0f
	add hl, bc                                       ; $7714: $09
	ld b, $06                                        ; $7715: $06 $06
	nop                                              ; $7717: $00
	ld [hl], e                                       ; $7718: $73
	xor h                                            ; $7719: $ac
	rst SubAFromDE                                          ; $771a: $df
	ld bc, $039d                                     ; $771b: $01 $9d $03
	ld [bc], a                                       ; $771e: $02
	ld a, e                                          ; $771f: $7b
	cp $8c                                           ; $7720: $fe $8c
	inc bc                                           ; $7722: $03
	inc c                                            ; $7723: $0c
	rrca                                             ; $7724: $0f
	rlca                                             ; $7725: $07
	rlca                                             ; $7726: $07
	nop                                              ; $7727: $00
	nop                                              ; $7728: $00
	rst $38                                          ; $7729: $ff
	cp $df                                           ; $772a: $fe $df
	cp c                                             ; $772c: $b9
	ld e, a                                          ; $772d: $5f
	xor c                                            ; $772e: $a9
	ld h, a                                          ; $772f: $67
	sbc h                                            ; $7730: $9c
	rst $38                                          ; $7731: $ff

jr_014_7732:
	add d                                            ; $7732: $82
	rst $38                                          ; $7733: $ff
	add c                                            ; $7734: $81
	sbc $ff                                          ; $7735: $de $ff
	sbc l                                            ; $7737: $9d
	nop                                              ; $7738: $00
	sbc $7b                                          ; $7739: $de $7b
	sub l                                            ; $773b: $95

Call_014_773c:
	sub e                                            ; $773c: $93
	rst SubAFromBC                                          ; $773d: $e7
	inc h                                            ; $773e: $24
	rst SubAFromBC                                          ; $773f: $e7
	ld h, [hl]                                       ; $7740: $66
	rst $38                                          ; $7741: $ff
	ld a, [hl]                                       ; $7742: $7e
	rst $38                                          ; $7743: $ff
	rst $38                                          ; $7744: $ff
	db $fc                                           ; $7745: $fc
	rst $38                                          ; $7746: $ff
	rrca                                             ; $7747: $0f
	rrca                                             ; $7748: $0f
	ld a, e                                          ; $7749: $7b
	and h                                            ; $774a: $a4
	sbc [hl]                                         ; $774b: $9e
	ld b, b                                          ; $774c: $40
	ld a, e                                          ; $774d: $7b
	xor l                                            ; $774e: $ad
	sbc h                                            ; $774f: $9c
	jr nz, jr_014_7732                               ; $7750: $20 $e0

	ld h, b                                          ; $7752: $60
	ld l, a                                          ; $7753: $6f
	or b                                             ; $7754: $b0
	db $db                                           ; $7755: $db
	add b                                            ; $7756: $80
	ld a, a                                          ; $7757: $7f
	db $ec                                           ; $7758: $ec
	ld a, e                                          ; $7759: $7b
	cp $9a                                           ; $775a: $fe $9a
	ret nz                                           ; $775c: $c0

	ldh [$e0], a                                     ; $775d: $e0 $e0
	ret nz                                           ; $775f: $c0

	ret nz                                           ; $7760: $c0

	sub d                                            ; $7761: $92
	inc bc                                           ; $7762: $03
	rst $38                                          ; $7763: $ff
	rst SubAFromDE                                          ; $7764: $df
	rlca                                             ; $7765: $07
	adc h                                            ; $7766: $8c
	ld [hl+], a                                      ; $7767: $22
	inc hl                                           ; $7768: $23
	rra                                              ; $7769: $1f
	rra                                              ; $776a: $1f
	ld [$060f], sp                                   ; $776b: $08 $0f $06
	rlca                                             ; $776e: $07
	inc b                                            ; $776f: $04
	rlca                                             ; $7770: $07
	ld [$090f], sp                                   ; $7771: $08 $0f $09
	rrca                                             ; $7774: $0f
	dec b                                            ; $7775: $05
	rlca                                             ; $7776: $07
	inc bc                                           ; $7777: $03
	inc bc                                           ; $7778: $03
	ld bc, $01bf                                     ; $7779: $01 $bf $01
	ld bc, $01de                                     ; $777c: $01 $de $01
	db $fd                                           ; $777f: $fd
	rst SubAFromDE                                          ; $7780: $df
	cp b                                             ; $7781: $b8
	sbc h                                            ; $7782: $9c
	ld h, [hl]                                       ; $7783: $66
	cp $31                                           ; $7784: $fe $31
	sbc $ff                                          ; $7786: $de $ff
	adc a                                            ; $7788: $8f
	ld d, c                                          ; $7789: $51
	rst $38                                          ; $778a: $ff
	and h                                            ; $778b: $a4
	rst $38                                          ; $778c: $ff
	or d                                             ; $778d: $b2
	rst $38                                          ; $778e: $ff
	cp d                                             ; $778f: $ba
	rst AddAOntoHL                                          ; $7790: $ef
	rst $38                                          ; $7791: $ff
	ld h, a                                          ; $7792: $67
	rst $38                                          ; $7793: $ff
	xor l                                            ; $7794: $ad
	ld [hl], a                                       ; $7795: $77
	sbc $ff                                          ; $7796: $de $ff
	call z, $fe7b                                    ; $7798: $cc $7b $fe
	ld a, a                                          ; $779b: $7f
	jp hl                                            ; $779c: $e9


	sbc [hl]                                         ; $779d: $9e
	add e                                            ; $779e: $83
	db $fd                                           ; $779f: $fd
	rst SubAFromDE                                          ; $77a0: $df
	add b                                            ; $77a1: $80
	rst SubAFromDE                                          ; $77a2: $df
	ret nz                                           ; $77a3: $c0

	rst SubAFromDE                                          ; $77a4: $df
	add b                                            ; $77a5: $80
	sbc e                                            ; $77a6: $9b
	ld b, b                                          ; $77a7: $40
	ret nz                                           ; $77a8: $c0

	and b                                            ; $77a9: $a0
	ldh [$6f], a                                     ; $77aa: $e0 $6f
	cp $9c                                           ; $77ac: $fe $9c
	ld h, b                                          ; $77ae: $60
	ldh [$60], a                                     ; $77af: $e0 $60
	ld a, e                                          ; $77b1: $7b
	ld sp, hl                                        ; $77b2: $f9
	ld [hl], a                                       ; $77b3: $77
	db $ec                                           ; $77b4: $ec
	rst SubAFromDE                                          ; $77b5: $df
	add b                                            ; $77b6: $80
	rst AddAOntoHL                                          ; $77b7: $ef
	rst SubAFromDE                                          ; $77b8: $df
	ld bc, $0295                                     ; $77b9: $01 $95 $02

jr_014_77bc:
	inc bc                                           ; $77bc: $03
	dec b                                            ; $77bd: $05
	rlca                                             ; $77be: $07
	dec b                                            ; $77bf: $05
	rlca                                             ; $77c0: $07
	ld b, $07                                        ; $77c1: $06 $07
	ld [bc], a                                       ; $77c3: $02
	inc bc                                           ; $77c4: $03
	ld [hl], a                                       ; $77c5: $77
	sbc [hl]                                         ; $77c6: $9e
	rst SubAFromDE                                          ; $77c7: $df
	ld bc, $f57f                                     ; $77c8: $01 $7f $f5
	add b                                            ; $77cb: $80
	rst $38                                          ; $77cc: $ff
	ld hl, sp-$01                                    ; $77cd: $f8 $ff
	add c                                            ; $77cf: $81
	ld a, [hl]                                       ; $77d0: $7e
	ld l, [hl]                                       ; $77d1: $6e
	ld sp, $0331                                     ; $77d2: $31 $31 $03
	ld [bc], a                                       ; $77d5: $02
	inc bc                                           ; $77d6: $03
	ld [bc], a                                       ; $77d7: $02
	pop bc                                           ; $77d8: $c1
	pop bc                                           ; $77d9: $c1
	jr nz, jr_014_77bc                               ; $77da: $20 $e0

	ld d, b                                          ; $77dc: $50
	ldh a, [hDisp1_SCY]                                     ; $77dd: $f0 $90
	ldh a, [rHDMA1]                                  ; $77df: $f0 $51
	pop af                                           ; $77e1: $f1
	ld h, e                                          ; $77e2: $63
	db $e3                                           ; $77e3: $e3
	ret nz                                           ; $77e4: $c0

	ret nz                                           ; $77e5: $c0

	rst $38                                          ; $77e6: $ff
	cp $5f                                           ; $77e7: $fe $5f
	cp c                                             ; $77e9: $b9
	ld e, a                                          ; $77ea: $5f
	sbc b                                            ; $77eb: $98
	xor c                                            ; $77ec: $a9
	ld h, a                                          ; $77ed: $67
	sbc h                                            ; $77ee: $9c
	rst $38                                          ; $77ef: $ff
	add d                                            ; $77f0: $82
	rst $38                                          ; $77f1: $ff
	pop bc                                           ; $77f2: $c1
	sbc $ff                                          ; $77f3: $de $ff
	adc [hl]                                         ; $77f5: $8e
	ld b, b                                          ; $77f6: $40
	xor $39                                          ; $77f7: $ee $39
	rst $38                                          ; $77f9: $ff
	ccf                                              ; $77fa: $3f
	rst AddAOntoHL                                          ; $77fb: $ef
	cp $4b                                           ; $77fc: $fe $4b
	ld a, e                                          ; $77fe: $7b

Call_014_77ff:
	ld d, a                                          ; $77ff: $57
	ld [hl], a                                       ; $7800: $77
	rst $38                                          ; $7801: $ff
	rst $38                                          ; $7802: $ff
	cp $ff                                           ; $7803: $fe $ff
	ccf                                              ; $7805: $3f
	ccf                                              ; $7806: $3f
	ld a, e                                          ; $7807: $7b
	add h                                            ; $7808: $84
	ld a, a                                          ; $7809: $7f
	add a                                            ; $780a: $87
	rst SubAFromDE                                          ; $780b: $df
	ret nz                                           ; $780c: $c0

	ld a, a                                          ; $780d: $7f
	db $fc                                           ; $780e: $fc
	sbc [hl]                                         ; $780f: $9e
	ld b, b                                          ; $7810: $40
	rst SubAFromHL                                          ; $7811: $d7
	add b                                            ; $7812: $80
	ld a, a                                          ; $7813: $7f
	db $f4                                           ; $7814: $f4
	sbc l                                            ; $7815: $9d
	ldh [rAUD4LEN], a                                ; $7816: $e0 $20
	ld a, e                                          ; $7818: $7b
	cp $9a                                           ; $7819: $fe $9a
	ldh [rSVBK], a                                   ; $781b: $e0 $70
	ldh a, [$e0]                                     ; $781d: $f0 $e0
	ldh [$27], a                                     ; $781f: $e0 $27
	adc d                                            ; $7821: $8a
	ld h, a                                          ; $7822: $67
	ld [$dfff], a                                    ; $7823: $ea $ff $df
	inc bc                                           ; $7826: $03
	sub a                                            ; $7827: $97
	ld a, a                                          ; $7828: $7f
	ld a, h                                          ; $7829: $7c
	rst $38                                          ; $782a: $ff
	add b                                            ; $782b: $80
	rst $38                                          ; $782c: $ff
	rst GetHLinHL                                          ; $782d: $cf
	jr nc, @-$0e                                     ; $782e: $30 $f0

	ld [hl], a                                       ; $7830: $77
	adc d                                            ; $7831: $8a
	ld a, a                                          ; $7832: $7f
	db $fc                                           ; $7833: $fc
	ld a, a                                          ; $7834: $7f
	ld b, d                                          ; $7835: $42
	rst SubAFromDE                                          ; $7836: $df
	ret nz                                           ; $7837: $c0

	ld l, a                                          ; $7838: $6f
	db $e4                                           ; $7839: $e4
	rst SubAFromDE                                          ; $783a: $df
	inc bc                                           ; $783b: $03
	rst SubAFromDE                                          ; $783c: $df
	ldh [$7f], a                                     ; $783d: $e0 $7f
	sbc e                                            ; $783f: $9b
	sbc e                                            ; $7840: $9b
	ld e, e                                          ; $7841: $5b
	or a                                             ; $7842: $b7
	ld e, a                                          ; $7843: $5f
	and h                                            ; $7844: $a4
	ld l, a                                          ; $7845: $6f
	add b                                            ; $7846: $80
	sbc $7f                                          ; $7847: $de $7f
	sbc b                                            ; $7849: $98
	ld b, b                                          ; $784a: $40
	ld a, $3d                                        ; $784b: $3e $3d
	ld a, a                                          ; $784d: $7f
	ld h, e                                          ; $784e: $63
	ld a, a                                          ; $784f: $7f
	ld b, [hl]                                       ; $7850: $46
	ld a, e                                          ; $7851: $7b
	db $fc                                           ; $7852: $fc
	sbc e                                            ; $7853: $9b
	ld a, c                                          ; $7854: $79
	rst $38                                          ; $7855: $ff
	rst $38                                          ; $7856: $ff
	pop af                                           ; $7857: $f1
	ld a, e                                          ; $7858: $7b
	add b                                            ; $7859: $80
	rst SubAFromDE                                          ; $785a: $df
	ret nz                                           ; $785b: $c0

	ld a, a                                          ; $785c: $7f
	sub [hl]                                         ; $785d: $96
	sbc c                                            ; $785e: $99
	ldh a, [$d0]                                     ; $785f: $f0 $d0
	ldh a, [rAUD1SWEEP]                              ; $7861: $f0 $10
	ldh [rAUD4LEN], a                                ; $7863: $e0 $20
	ld l, a                                          ; $7865: $6f
	db $10                                           ; $7866: $10
	ld l, e                                          ; $7867: $6b
	ld a, [hl]                                       ; $7868: $7e
	ld a, e                                          ; $7869: $7b
	ld l, a                                          ; $786a: $6f
	rst SubAFromDE                                          ; $786b: $df
	ldh a, [$df]                                     ; $786c: $f0 $df
	ldh [$6f], a                                     ; $786e: $e0 $6f
	or [hl]                                          ; $7870: $b6
	rst $38                                          ; $7871: $ff
	rst SubAFromDE                                          ; $7872: $df
	ld e, $87                                        ; $7873: $1e $87
	adc c                                            ; $7875: $89
	adc a                                            ; $7876: $8f
	ld a, h                                          ; $7877: $7c
	ld a, a                                          ; $7878: $7f
	inc hl                                           ; $7879: $23
	ccf                                              ; $787a: $3f
	add hl, de                                       ; $787b: $19
	rra                                              ; $787c: $1f
	ld [de], a                                       ; $787d: $12
	rra                                              ; $787e: $1f
	ld [hl+], a                                      ; $787f: $22
	ccf                                              ; $7880: $3f
	ld h, $3f                                        ; $7881: $26 $3f
	rla                                              ; $7883: $17
	dec e                                            ; $7884: $1d
	rrca                                             ; $7885: $0f
	ld c, $05                                        ; $7886: $0e $05
	inc bc                                           ; $7888: $03
	rlca                                             ; $7889: $07
	inc bc                                           ; $788a: $03
	rra                                              ; $788b: $1f
	rra                                              ; $788c: $1f
	ei                                               ; $788d: $fb
	rst SubAFromDE                                          ; $788e: $df
	ldh [$9c], a                                     ; $788f: $e0 $9c
	sbc d                                            ; $7891: $9a
	ld a, [$7bc7]                                    ; $7892: $fa $c7 $7b
	jr nc, @-$71                                     ; $7895: $30 $8d

	ld b, l                                          ; $7897: $45
	rst $38                                          ; $7898: $ff
	sub d                                            ; $7899: $92
	rst $38                                          ; $789a: $ff
	jp z, $eaff                                      ; $789b: $ca $ff $ea

	cp a                                             ; $789e: $bf
	cp $9f                                           ; $789f: $fe $9f
	db $fd                                           ; $78a1: $fd
	or a                                             ; $78a2: $b7
	db $dd                                           ; $78a3: $dd
	ld a, d                                          ; $78a4: $7a
	rst $38                                          ; $78a5: $ff
	ld [hl-], a                                      ; $78a6: $32
	rst $38                                          ; $78a7: $ff
	inc sp                                           ; $78a8: $33
	ld sp, hl                                        ; $78a9: $f9
	rst SubAFromDE                                          ; $78aa: $df
	ldh [hDisp1_WX], a                                     ; $78ab: $e0 $96
	db $10                                           ; $78ad: $10
	ldh a, [rAUD2LOW]                                ; $78ae: $f0 $18
	ld hl, sp+$28                                    ; $78b0: $f8 $28
	ld hl, sp-$38                                    ; $78b2: $f8 $c8
	ld hl, sp-$70                                    ; $78b4: $f8 $90
	ld a, e                                          ; $78b6: $7b
	xor b                                            ; $78b7: $a8
	ld l, d                                          ; $78b8: $6a
	sub a                                            ; $78b9: $97
	ld a, [hl]                                       ; $78ba: $7e
	sbc h                                            ; $78bb: $9c
	sub h                                            ; $78bc: $94
	ld b, b                                          ; $78bd: $40
	ccf                                              ; $78be: $3f
	inc h                                            ; $78bf: $24
	ccf                                              ; $78c0: $3f
	ld [hl+], a                                      ; $78c1: $22
	rra                                              ; $78c2: $1f
	add hl, de                                       ; $78c3: $19
	rrca                                             ; $78c4: $0f
	inc c                                            ; $78c5: $0c
	rlca                                             ; $78c6: $07
	ld b, $7a                                        ; $78c7: $06 $7a
	ld c, d                                          ; $78c9: $4a
	ld a, [hl]                                       ; $78ca: $7e
	or [hl]                                          ; $78cb: $b6
	sub h                                            ; $78cc: $94
	rlca                                             ; $78cd: $07
	rst GetHLinHL                                          ; $78ce: $cf
	ret                                              ; $78cf: $c9


	cp a                                             ; $78d0: $bf
	ldh a, [$9f]                                     ; $78d1: $f0 $9f
	di                                               ; $78d3: $f3
	ld e, h                                          ; $78d4: $5c
	ld [hl], h                                       ; $78d5: $74
	jr c, jr_014_7910                                ; $78d6: $38 $38

	ei                                               ; $78d8: $fb
	add c                                            ; $78d9: $81
	rst $38                                          ; $78da: $ff
	add $fd                                          ; $78db: $c6 $fd
	ld a, a                                          ; $78dd: $7f
	cp $c2                                           ; $78de: $fe $c2
	cp $0e                                           ; $78e0: $fe $0e
	cp $1e                                           ; $78e2: $fe $1e
	cp $f2                                           ; $78e4: $fe $f2
	cp $02                                           ; $78e6: $fe $02
	cp $82                                           ; $78e8: $fe $82
	cp $7e                                           ; $78ea: $fe $7e
	db $fd                                           ; $78ec: $fd
	add e                                            ; $78ed: $83
	rst $38                                          ; $78ee: $ff
	rst JumpTable                                          ; $78ef: $c7
	ld a, a                                          ; $78f0: $7f
	ld l, l                                          ; $78f1: $6d
	rra                                              ; $78f2: $1f
	jr jr_014_78fc                                   ; $78f3: $18 $07

	inc b                                            ; $78f5: $04
	inc bc                                           ; $78f6: $03
	inc bc                                           ; $78f7: $03
	halt                                             ; $78f8: $76
	ld b, h                                          ; $78f9: $44
	db $ed                                           ; $78fa: $ed
	rst SubAFromDE                                          ; $78fb: $df

jr_014_78fc:
	add b                                            ; $78fc: $80
	sub a                                            ; $78fd: $97
	ldh a, [rSVBK]                                   ; $78fe: $f0 $70
	ret nc                                           ; $7900: $d0

	ld [hl], b                                       ; $7901: $70
	ret nc                                           ; $7902: $d0

	ldh a, [$30]                                     ; $7903: $f0 $30
	jr nc, @-$01                                     ; $7905: $30 $fd

	rst SubAFromDE                                          ; $7907: $df
	inc b                                            ; $7908: $04
	ld [hl], a                                       ; $7909: $77
	and h                                            ; $790a: $a4
	ld l, [hl]                                       ; $790b: $6e
	db $ec                                           ; $790c: $ec
	rst SubAFromDE                                          ; $790d: $df
	add hl, sp                                       ; $790e: $39
	sub e                                            ; $790f: $93

jr_014_7910:
	ld b, h                                          ; $7910: $44
	ld a, h                                          ; $7911: $7c
	xor d                                            ; $7912: $aa
	cp $b3                                           ; $7913: $fe $b3
	rst $38                                          ; $7915: $ff
	set 7, [hl]                                      ; $7916: $cb $fe
	ld c, a                                          ; $7918: $4f
	ld a, [hl]                                       ; $7919: $7e
	dec sp                                           ; $791a: $3b
	ld a, [hl-]                                      ; $791b: $3a
	ld [hl], a                                       ; $791c: $77
	ld [$f7df], a                                    ; $791d: $ea $df $f7
	sbc d                                            ; $7920: $9a
	ld c, h                                          ; $7921: $4c
	ld a, a                                          ; $7922: $7f
	and $ff                                          ; $7923: $e6 $ff
	rra                                              ; $7925: $1f
	ld a, e                                          ; $7926: $7b
	ld c, b                                          ; $7927: $48
	adc e                                            ; $7928: $8b
	sub h                                            ; $7929: $94
	rst $38                                          ; $792a: $ff
	ld d, $ff                                        ; $792b: $16 $ff
	scf                                              ; $792d: $37
	db $fd                                           ; $792e: $fd
	cp a                                             ; $792f: $bf
	db $ec                                           ; $7930: $ec
	ld a, a                                          ; $7931: $7f
	ld [hl], l                                       ; $7932: $75
	ld l, $1b                                        ; $7933: $2e $1b
	cp a                                             ; $7935: $bf
	sbc c                                            ; $7936: $99
	rst $38                                          ; $7937: $ff
	ld a, c                                          ; $7938: $79
	rst $38                                          ; $7939: $ff
	ld h, $ff                                        ; $793a: $26 $ff
	db $10                                           ; $793c: $10
	db $fd                                           ; $793d: $fd
	rst SubAFromDE                                          ; $793e: $df

jr_014_793f:
	ret nc                                           ; $793f: $d0

	sub [hl]                                         ; $7940: $96
	jr c, @-$06                                      ; $7941: $38 $f8

	ldh a, [$f0]                                     ; $7943: $f0 $f0
	jr z, jr_014_793f                                ; $7945: $28 $f8

	sub h                                            ; $7947: $94
	db $fc                                           ; $7948: $fc
	ld d, h                                          ; $7949: $54
	ld a, e                                          ; $794a: $7b
	cp $85                                           ; $794b: $fe $85
	db $f4                                           ; $794d: $f4
	db $fc                                           ; $794e: $fc
	db $ec                                           ; $794f: $ec
	cp h                                             ; $7950: $bc
	db $ec                                           ; $7951: $ec
	call nc, $94fc                                   ; $7952: $d4 $fc $94
	ld hl, sp-$68                                    ; $7955: $f8 $98
	ldh a, [$30]                                     ; $7957: $f0 $30
	cp $7e                                           ; $7959: $fe $7e
	rst $38                                          ; $795b: $ff
	sbc a                                            ; $795c: $9f
	ld l, e                                          ; $795d: $6b
	halt                                             ; $795e: $76
	dec sp                                           ; $795f: $3b
	inc [hl]                                         ; $7960: $34
	inc e                                            ; $7961: $1c
	inc de                                           ; $7962: $13
	rrca                                             ; $7963: $0f
	ld [$080f], sp                                   ; $7964: $08 $0f $08
	sbc $07                                          ; $7967: $de $07
	ld a, a                                          ; $7969: $7f
	ld a, [hl-]                                      ; $796a: $3a
	ld a, [hl]                                       ; $796b: $7e
	ld h, c                                          ; $796c: $61
	rst SubAFromDE                                          ; $796d: $df
	inc bc                                           ; $796e: $03
	add b                                            ; $796f: $80
	ld [bc], a                                       ; $7970: $02
	ccf                                              ; $7971: $3f
	inc a                                            ; $7972: $3c
	daa                                              ; $7973: $27
	inc a                                            ; $7974: $3c
	inc de                                           ; $7975: $13
	rra                                              ; $7976: $1f
	ld a, [de]                                       ; $7977: $1a
	ld e, $0e                                        ; $7978: $1e $0e
	ld c, $ef                                        ; $797a: $0e $ef
	pop de                                           ; $797c: $d1
	xor a                                            ; $797d: $af
	ld d, b                                          ; $797e: $50
	ld l, a                                          ; $797f: $6f
	sbc [hl]                                         ; $7980: $9e
	ei                                               ; $7981: $fb
	dec bc                                           ; $7982: $0b
	ld sp, hl                                        ; $7983: $f9
	add hl, de                                       ; $7984: $19
	ld hl, sp+$18                                    ; $7985: $f8 $18
	ldh a, [$f0]                                     ; $7987: $f0 $f0
	cp $1e                                           ; $7989: $fe $1e
	ld a, [$fa3e]                                    ; $798b: $fa $3e $fa
	adc $9b                                          ; $798e: $ce $9b
	ld a, [$f65e]                                    ; $7990: $fa $5e $f6
	or $5f                                           ; $7993: $f6 $5f
	ld c, b                                          ; $7995: $48
	ld [hl], c                                       ; $7996: $71
	cp $7a                                           ; $7997: $fe $7a
	ld [bc], a                                       ; $7999: $02
	db $e3                                           ; $799a: $e3
	rst SubAFromDE                                          ; $799b: $df
	dec a                                            ; $799c: $3d
	ld a, a                                          ; $799d: $7f
	or b                                             ; $799e: $b0
	adc e                                            ; $799f: $8b
	ld sp, hl                                        ; $79a0: $f9
	rst $38                                          ; $79a1: $ff
	ld b, a                                          ; $79a2: $47
	ld a, a                                          ; $79a3: $7f
	ld [hl-], a                                      ; $79a4: $32
	ccf                                              ; $79a5: $3f
	dec h                                            ; $79a6: $25
	ccf                                              ; $79a7: $3f
	ld b, l                                          ; $79a8: $45
	ld a, a                                          ; $79a9: $7f
	ld c, l                                          ; $79aa: $4d
	ld a, a                                          ; $79ab: $7f
	cpl                                              ; $79ac: $2f
	dec sp                                           ; $79ad: $3b
	rra                                              ; $79ae: $1f
	dec e                                            ; $79af: $1d
	dec bc                                           ; $79b0: $0b
	ld b, $0f                                        ; $79b1: $06 $0f
	ld b, $f9                                        ; $79b3: $06 $f9
	rst SubAFromDE                                          ; $79b5: $df
	ret nz                                           ; $79b6: $c0

	adc c                                            ; $79b7: $89
	inc [hl]                                         ; $79b8: $34
	db $f4                                           ; $79b9: $f4
	adc [hl]                                         ; $79ba: $8e
	cp $fc                                           ; $79bb: $fe $fc

jr_014_79bd:
	db $fc                                           ; $79bd: $fc
	adc d                                            ; $79be: $8a
	cp $25                                           ; $79bf: $fe $25
	rst $38                                          ; $79c1: $ff
	sub l                                            ; $79c2: $95
	rst $38                                          ; $79c3: $ff
	push de                                          ; $79c4: $d5
	ld a, a                                          ; $79c5: $7f
	db $fd                                           ; $79c6: $fd
	ccf                                              ; $79c7: $3f
	ei                                               ; $79c8: $fb
	ld l, a                                          ; $79c9: $6f
	cp e                                             ; $79ca: $bb
	push af                                          ; $79cb: $f5
	rst $38                                          ; $79cc: $ff
	ld h, l                                          ; $79cd: $65
	ld h, h                                          ; $79ce: $64
	ld a, [$f279]                                    ; $79cf: $fa $79 $f2
	ld a, c                                          ; $79d2: $79
	ld h, h                                          ; $79d3: $64
	ld [hl], a                                       ; $79d4: $77
	cp $df                                           ; $79d5: $fe $df
	rrca                                             ; $79d7: $0f
	sub e                                            ; $79d8: $93
	ld de, $2a1f                                     ; $79d9: $11 $1f $2a
	ccf                                              ; $79dc: $3f
	inc l                                            ; $79dd: $2c
	ccf                                              ; $79de: $3f
	ld [hl-], a                                      ; $79df: $32
	ccf                                              ; $79e0: $3f
	inc de                                           ; $79e1: $13
	rra                                              ; $79e2: $1f
	rrca                                             ; $79e3: $0f
	rrca                                             ; $79e4: $0f
	ld l, h                                          ; $79e5: $6c
	ld a, [$457e]                                    ; $79e6: $fa $7e $45
	sub l                                            ; $79e9: $95
	db $db                                           ; $79ea: $db
	and [hl]                                         ; $79eb: $a6
	ld e, c                                          ; $79ec: $59
	and a                                            ; $79ed: $a7
	ld h, a                                          ; $79ee: $67
	sbc e                                            ; $79ef: $9b
	rst $38                                          ; $79f0: $ff
	add h                                            ; $79f1: $84
	rst $38                                          ; $79f2: $ff
	adc a                                            ; $79f3: $8f
	ld a, c                                          ; $79f4: $79
	inc [hl]                                         ; $79f5: $34
	sub a                                            ; $79f6: $97
	adc b                                            ; $79f7: $88
	rst $38                                          ; $79f8: $ff
	db $e4                                           ; $79f9: $e4
	rst $38                                          ; $79fa: $ff
	cp [hl]                                          ; $79fb: $be
	rst AddAOntoHL                                          ; $79fc: $ef
	rst $38                                          ; $79fd: $ff
	db $fc                                           ; $79fe: $fc
	sbc $ff                                          ; $79ff: $de $ff
	ld l, l                                          ; $7a01: $6d
	ld [$5e77], a                                    ; $7a02: $ea $77 $5e
	ld [hl], c                                       ; $7a05: $71
	ld l, h                                          ; $7a06: $6c
	sbc [hl]                                         ; $7a07: $9e
	ld h, b                                          ; $7a08: $60
	ld e, a                                          ; $7a09: $5f
	ldh a, [$79]                                     ; $7a0a: $f0 $79
	add $71                                          ; $7a0c: $c6 $71
	ldh [rAUDTERM], a                                ; $7a0e: $e0 $25
	db $e4                                           ; $7a10: $e4
	sbc $07                                          ; $7a11: $de $07
	ld a, [hl]                                       ; $7a13: $7e
	adc b                                            ; $7a14: $88
	sbc [hl]                                         ; $7a15: $9e
	ld [bc], a                                       ; $7a16: $02
	ld h, c                                          ; $7a17: $61
	db $e4                                           ; $7a18: $e4
	sbc [hl]                                         ; $7a19: $9e
	cp $3d                                           ; $7a1a: $fe $3d
	db $e4                                           ; $7a1c: $e4
	ld a, [hl]                                       ; $7a1d: $7e
	jr c, jr_014_79bd                                ; $7a1e: $38 $9d

	rst $38                                          ; $7a20: $ff
	ld c, $4e                                        ; $7a21: $0e $4e
	ld c, d                                          ; $7a23: $4a
	db $db                                           ; $7a24: $db
	add b                                            ; $7a25: $80
	rst SubAFromDE                                          ; $7a26: $df
	adc h                                            ; $7a27: $8c
	sub l                                            ; $7a28: $95
	sbc [hl]                                         ; $7a29: $9e
	sbc d                                            ; $7a2a: $9a
	rst $38                                          ; $7a2b: $ff
	pop hl                                           ; $7a2c: $e1
	rst $38                                          ; $7a2d: $ff
	ret                                              ; $7a2e: $c9


	cp $1e                                           ; $7a2f: $fe $1e
	ldh [$60], a                                     ; $7a31: $e0 $60
	db $dd                                           ; $7a33: $dd
	ld bc, $ba7f                                     ; $7a34: $01 $7f $ba
	ld a, a                                          ; $7a37: $7f
	or [hl]                                          ; $7a38: $b6
	ld a, l                                          ; $7a39: $7d
	sbc $99                                          ; $7a3a: $de $99
	ld a, a                                          ; $7a3c: $7f
	ld [hl], c                                       ; $7a3d: $71
	cp $86                                           ; $7a3e: $fe $86
	db $fd                                           ; $7a40: $fd
	db $ed                                           ; $7a41: $ed
	ld h, l                                          ; $7a42: $65
	add sp, -$07                                     ; $7a43: $e8 $f9
	ld a, a                                          ; $7a45: $7f
	and a                                            ; $7a46: $a7
	add b                                            ; $7a47: $80
	db $dd                                           ; $7a48: $dd
	ld [hl-], a                                      ; $7a49: $32
	db $db                                           ; $7a4a: $db
	inc h                                            ; $7a4b: $24
	rst SubAFromBC                                          ; $7a4c: $e7
	ld e, b                                          ; $7a4d: $58
	rst $38                                          ; $7a4e: $ff
	ldh [$3f], a                                     ; $7a4f: $e0 $3f
	jr c, @+$01                                      ; $7a51: $38 $ff

	rst FarCall                                          ; $7a53: $f7
	rst $38                                          ; $7a54: $ff
	sub b                                            ; $7a55: $90
	rst $38                                          ; $7a56: $ff
	adc [hl]                                         ; $7a57: $8e
	ld a, a                                          ; $7a58: $7f
	ld c, l                                          ; $7a59: $4d
	ccf                                              ; $7a5a: $3f
	jr c, jr_014_7a7c                                ; $7a5b: $38 $1f

	add hl, de                                       ; $7a5d: $19
	ld a, a                                          ; $7a5e: $7f
	ld [hl], c                                       ; $7a5f: $71
	ld c, a                                          ; $7a60: $4f
	ld a, a                                          ; $7a61: $7f
	ld [hl+], a                                      ; $7a62: $22
	ld a, $1e                                        ; $7a63: $3e $1e
	ld e, $70                                        ; $7a65: $1e $70
	sbc d                                            ; $7a67: $9a
	or b                                             ; $7a68: $b0
	ld h, b                                          ; $7a69: $60
	and b                                            ; $7a6a: $a0
	ld h, b                                          ; $7a6b: $60
	ldh [$74], a                                     ; $7a6c: $e0 $74
	dec l                                            ; $7a6e: $2d

jr_014_7a6f:
	ld l, h                                          ; $7a6f: $6c
	sbc b                                            ; $7a70: $98
	ld [hl], a                                       ; $7a71: $77
	ei                                               ; $7a72: $fb
	inc l                                            ; $7a73: $2c
	jr z, jr_014_7a6f                                ; $7a74: $28 $f9

	rst SubAFromDE                                          ; $7a76: $df
	jr c, @+$77                                      ; $7a77: $38 $75

	sbc $99                                          ; $7a79: $de $99
	or d                                             ; $7a7b: $b2

jr_014_7a7c:
	cp $ca                                           ; $7a7c: $fe $ca
	cp $4c                                           ; $7a7e: $fe $4c
	ld a, h                                          ; $7a80: $7c
	ld b, a                                          ; $7a81: $47
	sub d                                            ; $7a82: $92
	cp h                                             ; $7a83: $bc
	ld bc, $120b                                     ; $7a84: $01 $0b $12
	cpl                                              ; $7a87: $2f
	ccf                                              ; $7a88: $3f
	sub a                                            ; $7a89: $97
	ld e, $6f                                        ; $7a8a: $1e $6f
	ld a, a                                          ; $7a8c: $7f
	sub b                                            ; $7a8d: $90
	rst $38                                          ; $7a8e: $ff
	ld b, $ff                                        ; $7a8f: $06 $ff
	rst $38                                          ; $7a91: $ff
	or [hl]                                          ; $7a92: $b6
	nop                                              ; $7a93: $00
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	nop                                              ; $7a96: $00
	nop                                              ; $7a97: $00
	ld b, d                                          ; $7a98: $42
	add h                                            ; $7a99: $84
	inc e                                            ; $7a9a: $1c
	ld a, b                                          ; $7a9b: $78
	ld a, [$7ffc]                                    ; $7a9c: $fa $fc $7f
	ld [hl], l                                       ; $7a9f: $75
	sub a                                            ; $7aa0: $97
	ld a, a                                          ; $7aa1: $7f
	rst JumpTable                                          ; $7aa2: $c7
	rst $38                                          ; $7aa3: $ff
	add c                                            ; $7aa4: $81
	cp $0a                                           ; $7aa5: $fe $0a
	db $fc                                           ; $7aa7: $fc
	db $fc                                           ; $7aa8: $fc
	or [hl]                                          ; $7aa9: $b6
	nop                                              ; $7aaa: $00
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	nop                                              ; $7aae: $00
	nop                                              ; $7aaf: $00
	inc b                                            ; $7ab0: $04
	add hl, bc                                       ; $7ab1: $09
	dec de                                           ; $7ab2: $1b
	inc de                                           ; $7ab3: $13
	daa                                              ; $7ab4: $27
	ld a, h                                          ; $7ab5: $7c
	ld c, l                                          ; $7ab6: $4d
	sbc e                                            ; $7ab7: $9b
	rra                                              ; $7ab8: $1f
	ld a, h                                          ; $7ab9: $7c
	ld a, a                                          ; $7aba: $7f
	ldh [$7a], a                                     ; $7abb: $e0 $7a
	adc b                                            ; $7abd: $88
	ld l, a                                          ; $7abe: $6f
	ret nz                                           ; $7abf: $c0

	sbc [hl]                                         ; $7ac0: $9e
	ld de, $32bb                                     ; $7ac1: $11 $bb $32
	ld h, $6d                                        ; $7ac4: $26 $6d
	db $db                                           ; $7ac6: $db
	rst SubAFromDE                                          ; $7ac7: $df
	cp a                                             ; $7ac8: $bf
	ld a, l                                          ; $7ac9: $7d
	halt                                             ; $7aca: $76
	sub l                                            ; $7acb: $95
	ccf                                              ; $7acc: $3f
	ldh [rIE], a                                     ; $7acd: $e0 $ff
	adc $ff                                          ; $7acf: $ce $ff
	db $10                                           ; $7ad1: $10
	rst $38                                          ; $7ad2: $ff
	nop                                              ; $7ad3: $00
	rst $38                                          ; $7ad4: $ff
	rst SubAFromBC                                          ; $7ad5: $e7
	ld a, e                                          ; $7ad6: $7b
	ldh [$7f], a                                     ; $7ad7: $e0 $7f
	call z, $089e                                    ; $7ad9: $cc $9e $08
	cp d                                             ; $7adc: $ba
	jr jr_014_7b4f                                   ; $7add: $18 $70

	ldh [$c0], a                                     ; $7adf: $e0 $c0
	call nz, $9088                                   ; $7ae1: $c4 $88 $90
	sub c                                            ; $7ae4: $91
	add b                                            ; $7ae5: $80
	pop af                                           ; $7ae6: $f1
	ldh a, [rPCM12]                                  ; $7ae7: $f0 $76
	ldh a, [$8c]                                     ; $7ae9: $f0 $8c
	cp $42                                           ; $7aeb: $fe $42
	cp $22                                           ; $7aed: $fe $22
	rst $38                                          ; $7aef: $ff
	add a                                            ; $7af0: $87
	db $fc                                           ; $7af1: $fc
	db $fc                                           ; $7af2: $fc
	xor b                                            ; $7af3: $a8
	nop                                              ; $7af4: $00
	rst $38                                          ; $7af5: $ff
	rst SubAFromDE                                          ; $7af6: $df
	rlca                                             ; $7af7: $07
	adc e                                            ; $7af8: $8b
	ld [hl+], a                                      ; $7af9: $22
	inc hl                                           ; $7afa: $23
	rra                                              ; $7afb: $1f
	rra                                              ; $7afc: $1f
	ld [$060f], sp                                   ; $7afd: $08 $0f $06
	rlca                                             ; $7b00: $07
	inc b                                            ; $7b01: $04
	rlca                                             ; $7b02: $07
	ld [$090f], sp                                   ; $7b03: $08 $0f $09
	rrca                                             ; $7b06: $0f
	dec b                                            ; $7b07: $05
	rlca                                             ; $7b08: $07
	inc bc                                           ; $7b09: $03
	inc bc                                           ; $7b0a: $03
	ld bc, $7b00                                     ; $7b0b: $01 $00 $7b
	cp $dc                                           ; $7b0e: $fe $dc
	ld bc, $dfff                                     ; $7b10: $01 $ff $df
	cp b                                             ; $7b13: $b8
	sbc h                                            ; $7b14: $9c
	ld h, [hl]                                       ; $7b15: $66
	cp $31                                           ; $7b16: $fe $31
	sbc $ff                                          ; $7b18: $de $ff
	adc a                                            ; $7b1a: $8f
	ld d, c                                          ; $7b1b: $51
	rst $38                                          ; $7b1c: $ff
	and h                                            ; $7b1d: $a4
	rst $38                                          ; $7b1e: $ff
	or d                                             ; $7b1f: $b2
	rst $38                                          ; $7b20: $ff
	cp d                                             ; $7b21: $ba
	rst AddAOntoHL                                          ; $7b22: $ef
	rst $38                                          ; $7b23: $ff
	ld h, a                                          ; $7b24: $67
	rst $38                                          ; $7b25: $ff
	xor l                                            ; $7b26: $ad
	ld [hl], a                                       ; $7b27: $77
	sbc $ff                                          ; $7b28: $de $ff
	call z, $fe7b                                    ; $7b2a: $cc $7b $fe
	ld a, a                                          ; $7b2d: $7f
	jp hl                                            ; $7b2e: $e9


	sbc [hl]                                         ; $7b2f: $9e
	add e                                            ; $7b30: $83
	db $fd                                           ; $7b31: $fd
	rst SubAFromDE                                          ; $7b32: $df
	add b                                            ; $7b33: $80
	rst SubAFromDE                                          ; $7b34: $df
	ret nz                                           ; $7b35: $c0

	rst SubAFromDE                                          ; $7b36: $df
	add b                                            ; $7b37: $80
	sbc e                                            ; $7b38: $9b
	ld b, b                                          ; $7b39: $40
	ret nz                                           ; $7b3a: $c0

	and b                                            ; $7b3b: $a0
	ldh [$6f], a                                     ; $7b3c: $e0 $6f
	cp $9c                                           ; $7b3e: $fe $9c
	ld h, b                                          ; $7b40: $60
	ldh [$60], a                                     ; $7b41: $e0 $60
	ld a, e                                          ; $7b43: $7b
	ld sp, hl                                        ; $7b44: $f9
	ld [hl], a                                       ; $7b45: $77
	db $ec                                           ; $7b46: $ec
	rst SubAFromDE                                          ; $7b47: $df
	add b                                            ; $7b48: $80
	rst $38                                          ; $7b49: $ff
	rst SubAFromDE                                          ; $7b4a: $df
	dec c                                            ; $7b4b: $0d
	sbc e                                            ; $7b4c: $9b
	ld e, $13                                        ; $7b4d: $1e $13

jr_014_7b4f:
	rra                                              ; $7b4f: $1f
	inc de                                           ; $7b50: $13
	ld a, e                                          ; $7b51: $7b
	and a                                            ; $7b52: $a7
	sbc l                                            ; $7b53: $9d
	rrca                                             ; $7b54: $0f
	nop                                              ; $7b55: $00
	ld l, e                                          ; $7b56: $6b
	xor h                                            ; $7b57: $ac
	sbc h                                            ; $7b58: $9c
	ld [bc], a                                       ; $7b59: $02
	inc bc                                           ; $7b5a: $03
	ld [bc], a                                       ; $7b5b: $02
	sbc $03                                          ; $7b5c: $de $03
	adc b                                            ; $7b5e: $88
	inc c                                            ; $7b5f: $0c
	rrca                                             ; $7b60: $0f
	rlca                                             ; $7b61: $07
	rlca                                             ; $7b62: $07
	nop                                              ; $7b63: $00
	nop                                              ; $7b64: $00
	cp $ff                                           ; $7b65: $fe $ff
	cpl                                              ; $7b67: $2f
	ld sp, hl                                        ; $7b68: $f9
	sbc a                                            ; $7b69: $9f

jr_014_7b6a:
	ldh a, [$9f]                                     ; $7b6a: $f0 $9f
	jp hl                                            ; $7b6c: $e9


	add [hl]                                         ; $7b6d: $86
	rst $38                                          ; $7b6e: $ff
	sub c                                            ; $7b6f: $91
	rst AddAOntoHL                                          ; $7b70: $ef
	sub b                                            ; $7b71: $90
	rst $38                                          ; $7b72: $ff
	jr @+$01                                         ; $7b73: $18 $ff

	rst SubAFromBC                                          ; $7b75: $e7
	ld a, e                                          ; $7b76: $7b
	db $fc                                           ; $7b77: $fc
	sbc d                                            ; $7b78: $9a
	jr z, jr_014_7b6a                                ; $7b79: $28 $ef

	inc h                                            ; $7b7b: $24
	rst SubAFromBC                                          ; $7b7c: $e7
	ld a, h                                          ; $7b7d: $7c
	sbc $ff                                          ; $7b7e: $de $ff
	sbc c                                            ; $7b80: $99
	db $fc                                           ; $7b81: $fc
	rst $38                                          ; $7b82: $ff
	rrca                                             ; $7b83: $0f
	rrca                                             ; $7b84: $0f
	ld b, b                                          ; $7b85: $40
	ret nz                                           ; $7b86: $c0

	ld l, a                                          ; $7b87: $6f
	xor b                                            ; $7b88: $a8
	sbc [hl]                                         ; $7b89: $9e
	jr nz, jr_014_7c07                               ; $7b8a: $20 $7b

	cp $df                                           ; $7b8c: $fe $df
	ret nz                                           ; $7b8e: $c0

	ld a, a                                          ; $7b8f: $7f
	db $f4                                           ; $7b90: $f4
	db $db                                           ; $7b91: $db
	add b                                            ; $7b92: $80
	ld [hl], a                                       ; $7b93: $77
	ld [$c0df], a                                    ; $7b94: $ea $df $c0
	rst SubAFromDE                                          ; $7b97: $df
	ldh a, [$df]                                     ; $7b98: $f0 $df
	ret nz                                           ; $7b9a: $c0

	cp l                                             ; $7b9b: $bd
	ld [bc], a                                       ; $7b9c: $02
	rst $38                                          ; $7b9d: $ff
	rst SubAFromDE                                          ; $7b9e: $df
	rlca                                             ; $7b9f: $07
	sub b                                            ; $7ba0: $90
	ld [de], a                                       ; $7ba1: $12
	inc de                                           ; $7ba2: $13
	ccf                                              ; $7ba3: $3f
	cpl                                              ; $7ba4: $2f
	ccf                                              ; $7ba5: $3f
	dec h                                            ; $7ba6: $25
	rra                                              ; $7ba7: $1f
	ld de, $131e                                     ; $7ba8: $11 $1e $13
	rra                                              ; $7bab: $1f
	dec de                                           ; $7bac: $1b
	dec e                                            ; $7bad: $1d
	rra                                              ; $7bae: $1f
	inc de                                           ; $7baf: $13
	ld [hl], a                                       ; $7bb0: $77
	cp $7f                                           ; $7bb1: $fe $7f
	push af                                          ; $7bb3: $f5
	sub c                                            ; $7bb4: $91
	ld e, $09                                        ; $7bb5: $1e $09
	rrca                                             ; $7bb7: $0f
	add hl, bc                                       ; $7bb8: $09
	rrca                                             ; $7bb9: $0f
	inc b                                            ; $7bba: $04
	rlca                                             ; $7bbb: $07
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	cp b                                             ; $7bbe: $b8
	cp b                                             ; $7bbf: $b8
	ld h, [hl]                                       ; $7bc0: $66
	cp $31                                           ; $7bc1: $fe $31
	sbc $ff                                          ; $7bc3: $de $ff
	adc a                                            ; $7bc5: $8f
	ld d, c                                          ; $7bc6: $51
	rst $38                                          ; $7bc7: $ff
	and l                                            ; $7bc8: $a5
	rst $38                                          ; $7bc9: $ff
	or d                                             ; $7bca: $b2
	rst $38                                          ; $7bcb: $ff
	cp d                                             ; $7bcc: $ba
	rst AddAOntoHL                                          ; $7bcd: $ef
	rst $38                                          ; $7bce: $ff
	ld h, a                                          ; $7bcf: $67
	rst $38                                          ; $7bd0: $ff
	xor l                                            ; $7bd1: $ad
	ld [hl], a                                       ; $7bd2: $77
	sbc $ff                                          ; $7bd3: $de $ff
	call z, $fe7b                                    ; $7bd5: $cc $7b $fe
	ld a, a                                          ; $7bd8: $7f
	jp hl                                            ; $7bd9: $e9


	sbc [hl]                                         ; $7bda: $9e
	add e                                            ; $7bdb: $83
	db $fd                                           ; $7bdc: $fd
	rst SubAFromDE                                          ; $7bdd: $df
	db $10                                           ; $7bde: $10
	sub d                                            ; $7bdf: $92
	cp b                                             ; $7be0: $b8
	xor b                                            ; $7be1: $a8
	ld hl, sp+$48                                    ; $7be2: $f8 $48
	ldh a, [rAUD1SWEEP]                              ; $7be4: $f0 $10
	ldh a, [hDisp1_SCY]                                     ; $7be6: $f0 $90
	ldh a, [$b0]                                     ; $7be8: $f0 $b0
	ldh a, [$f0]                                     ; $7bea: $f0 $f0
	ret nc                                           ; $7bec: $d0

	ld a, e                                          ; $7bed: $7b
	ld sp, hl                                        ; $7bee: $f9
	ld [hl], a                                       ; $7bef: $77
	cp $9c                                           ; $7bf0: $fe $9c
	and b                                            ; $7bf2: $a0
	ldh [rAUD4LEN], a                                ; $7bf3: $e0 $20
	ld a, e                                          ; $7bf5: $7b
	cp $7f                                           ; $7bf6: $fe $7f
	cp [hl]                                          ; $7bf8: $be
	sbc e                                            ; $7bf9: $9b
	ld [bc], a                                       ; $7bfa: $02
	inc bc                                           ; $7bfb: $03
	ld bc, $f901                                     ; $7bfc: $01 $01 $f9
	db $db                                           ; $7bff: $db
	ld bc, $ee7f                                     ; $7c00: $01 $7f $ee
	ld a, a                                          ; $7c03: $7f
	cp $df                                           ; $7c04: $fe $df
	inc bc                                           ; $7c06: $03

jr_014_7c07:
	sbc h                                            ; $7c07: $9c
	inc c                                            ; $7c08: $0c
	rrca                                             ; $7c09: $0f
	rlca                                             ; $7c0a: $07
	ld a, e                                          ; $7c0b: $7b
	and d                                            ; $7c0c: $a2
	sub [hl]                                         ; $7c0d: $96
	cp $ff                                           ; $7c0e: $fe $ff

jr_014_7c10:
	jr z, @+$01                                      ; $7c10: $28 $ff

	db $10                                           ; $7c12: $10

jr_014_7c13:
	rst $38                                          ; $7c13: $ff
	sub b                                            ; $7c14: $90
	rst AddAOntoHL                                          ; $7c15: $ef
	add b                                            ; $7c16: $80
	ld a, e                                          ; $7c17: $7b
	db $fc                                           ; $7c18: $fc
	sbc d                                            ; $7c19: $9a
	sub b                                            ; $7c1a: $90
	rst $38                                          ; $7c1b: $ff
	jr @+$01                                         ; $7c1c: $18 $ff

	rst SubAFromBC                                          ; $7c1e: $e7
	ld a, e                                          ; $7c1f: $7b
	db $fc                                           ; $7c20: $fc
	sbc d                                            ; $7c21: $9a
	jr z, jr_014_7c13                                ; $7c22: $28 $ef

	inc h                                            ; $7c24: $24
	rst SubAFromBC                                          ; $7c25: $e7
	ld a, h                                          ; $7c26: $7c
	sbc $ff                                          ; $7c27: $de $ff
	sub a                                            ; $7c29: $97
	db $fc                                           ; $7c2a: $fc
	rst $38                                          ; $7c2b: $ff
	rrca                                             ; $7c2c: $0f
	rrca                                             ; $7c2d: $0f
	jr nz, jr_014_7c10                               ; $7c2e: $20 $e0

	ld b, b                                          ; $7c30: $40
	ret nz                                           ; $7c31: $c0

	db $db                                           ; $7c32: $db
	add b                                            ; $7c33: $80
	ld a, a                                          ; $7c34: $7f
	ld hl, sp+$77                                    ; $7c35: $f8 $77
	cp $5f                                           ; $7c37: $fe $5f
	db $f4                                           ; $7c39: $f4
	rst SubAFromDE                                          ; $7c3a: $df
	ret nz                                           ; $7c3b: $c0

	rst SubAFromDE                                          ; $7c3c: $df
	ldh a, [$df]                                     ; $7c3d: $f0 $df
	ret nz                                           ; $7c3f: $c0

	rst $38                                          ; $7c40: $ff
	rst SubAFromDE                                          ; $7c41: $df
	inc bc                                           ; $7c42: $03
	rst SubAFromDE                                          ; $7c43: $df
	ld de, $0fdf                                     ; $7c44: $11 $df $0f
	ld a, a                                          ; $7c47: $7f
	sbc b                                            ; $7c48: $98
	rst SubAFromDE                                          ; $7c49: $df
	inc bc                                           ; $7c4a: $03
	ld a, a                                          ; $7c4b: $7f
	xor d                                            ; $7c4c: $aa
	ld a, a                                          ; $7c4d: $7f
	ld a, [$905f]                                    ; $7c4e: $fa $5f $90
	rst SubAFromDE                                          ; $7c51: $df
	inc l                                            ; $7c52: $2c
	sub d                                            ; $7c53: $92
	ld a, [hl]                                       ; $7c54: $7e
	ld e, d                                          ; $7c55: $5a
	rst $38                                          ; $7c56: $ff
	sbc e                                            ; $7c57: $9b
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	call c, $33dc                                    ; $7c5a: $dc $dc $33
	rst $38                                          ; $7c5d: $ff
	sbc b                                            ; $7c5e: $98
	rst $38                                          ; $7c5f: $ff
	ld a, a                                          ; $7c60: $7f
	ld a, e                                          ; $7c61: $7b
	sbc b                                            ; $7c62: $98
	adc e                                            ; $7c63: $8b
	ld d, d                                          ; $7c64: $52
	rst $38                                          ; $7c65: $ff
	ld e, c                                          ; $7c66: $59
	rst $38                                          ; $7c67: $ff
	db $dd                                           ; $7c68: $dd
	rst FarCall                                          ; $7c69: $f7
	rst $38                                          ; $7c6a: $ff
	or e                                             ; $7c6b: $b3
	rst $38                                          ; $7c6c: $ff
	sub $bb                                          ; $7c6d: $d6 $bb
	ld l, a                                          ; $7c6f: $6f
	rst $38                                          ; $7c70: $ff
	ld h, [hl]                                       ; $7c71: $66
	rst $38                                          ; $7c72: $ff
	and $ff                                          ; $7c73: $e6 $ff
	sbc a                                            ; $7c75: $9f
	ldh [rIE], a                                     ; $7c76: $e0 $ff
	db $fd                                           ; $7c78: $fd
	rst SubAFromDE                                          ; $7c79: $df
	ld b, b                                          ; $7c7a: $40
	rst SubAFromDE                                          ; $7c7b: $df
	ldh [$df], a                                     ; $7c7c: $e0 $df
	ret nz                                           ; $7c7e: $c0

	ld a, a                                          ; $7c7f: $7f
	ld d, b                                          ; $7c80: $50
	sbc l                                            ; $7c81: $9d
	ld d, b                                          ; $7c82: $50
	ldh a, [rPCM34]                                  ; $7c83: $f0 $77
	cp $7f                                           ; $7c85: $fe $7f
	ld b, b                                          ; $7c87: $40
	ld a, a                                          ; $7c88: $7f
	dec sp                                           ; $7c89: $3b
	sbc [hl]                                         ; $7c8a: $9e
	or b                                             ; $7c8b: $b0
	ld a, e                                          ; $7c8c: $7b
	rst FarCall                                          ; $7c8d: $f7
	sbc h                                            ; $7c8e: $9c
	ldh [$60], a                                     ; $7c8f: $e0 $60
	ret nz                                           ; $7c91: $c0

	ld a, e                                          ; $7c92: $7b
	sbc d                                            ; $7c93: $9a
	sbc c                                            ; $7c94: $99
	rst $38                                          ; $7c95: $ff
	sub e                                            ; $7c96: $93
	ld a, a                                          ; $7c97: $7f
	ld d, c                                          ; $7c98: $51
	ccf                                              ; $7c99: $3f
	add hl, sp                                       ; $7c9a: $39
	ld [hl], a                                       ; $7c9b: $77
	ld d, [hl]                                       ; $7c9c: $56
	rst FarCall                                          ; $7c9d: $f7
	db $db                                           ; $7c9e: $db
	ld bc, $069e                                     ; $7c9f: $01 $9e $06
	ld a, e                                          ; $7ca2: $7b
	adc [hl]                                         ; $7ca3: $8e
	cp $7f                                           ; $7ca4: $fe $7f
	cp [hl]                                          ; $7ca6: $be
	ld a, a                                          ; $7ca7: $7f
	ld e, d                                          ; $7ca8: $5a
	adc e                                            ; $7ca9: $8b
	rst $38                                          ; $7caa: $ff
	ld hl, sp-$09                                    ; $7cab: $f8 $f7
	ld b, b                                          ; $7cad: $40
	ld a, a                                          ; $7cae: $7f
	ld c, b                                          ; $7caf: $48
	ld [hl], a                                       ; $7cb0: $77
	ld c, b                                          ; $7cb1: $48
	ld a, a                                          ; $7cb2: $7f
	adc h                                            ; $7cb3: $8c
	rst $38                                          ; $7cb4: $ff
	di                                               ; $7cb5: $f3
	rst $38                                          ; $7cb6: $ff
	adc h                                            ; $7cb7: $8c
	rst $38                                          ; $7cb8: $ff
	inc d                                            ; $7cb9: $14
	rst FarCall                                          ; $7cba: $f7
	ld [de], a                                       ; $7cbb: $12
	di                                               ; $7cbc: $f3
	cp [hl]                                          ; $7cbd: $be
	ld a, e                                          ; $7cbe: $7b
	adc [hl]                                         ; $7cbf: $8e
	ld a, a                                          ; $7cc0: $7f
	inc h                                            ; $7cc1: $24
	rst SubAFromDE                                          ; $7cc2: $df
	rlca                                             ; $7cc3: $07
	halt                                             ; $7cc4: $76
	db $fc                                           ; $7cc5: $fc
	ld [hl], a                                       ; $7cc6: $77
	cp $77                                           ; $7cc7: $fe $77
	ld c, [hl]                                       ; $7cc9: $4e
	ld [hl], a                                       ; $7cca: $77
	ld hl, sp+$77                                    ; $7ccb: $f8 $77
	xor h                                            ; $7ccd: $ac
	ld l, a                                          ; $7cce: $6f
	or $df                                           ; $7ccf: $f6 $df
	ldh [$9b], a                                     ; $7cd1: $e0 $9b
	ld a, b                                          ; $7cd3: $78
	ld hl, sp-$20                                    ; $7cd4: $f8 $e0
	ldh [$fc], a                                     ; $7cd6: $e0 $fc
	rst SubAFromDE                                          ; $7cd8: $df
	rlca                                             ; $7cd9: $07
	sbc b                                            ; $7cda: $98
	jr jr_014_7cfc                                   ; $7cdb: $18 $1f

	jr nz, @+$21                                     ; $7cdd: $20 $1f

	jr nz, @+$41                                     ; $7cdf: $20 $3f

	ld b, b                                          ; $7ce1: $40
	ld e, a                                          ; $7ce2: $5f
	cp $77                                           ; $7ce3: $fe $77
	ldh a, [$7f]                                     ; $7ce5: $f0 $7f
	ld [$e67f], a                                    ; $7ce7: $ea $7f $e6
	ld [$1e7f], a                                    ; $7cea: $ea $7f $1e
	ld a, d                                          ; $7ced: $7a
	cp c                                             ; $7cee: $b9
	ld [hl], a                                       ; $7cef: $77
	cp $f4                                           ; $7cf0: $fe $f4
	ld [hl], a                                       ; $7cf2: $77
	cp b                                             ; $7cf3: $b8
	sbc d                                            ; $7cf4: $9a
	ld h, b                                          ; $7cf5: $60
	ld a, a                                          ; $7cf6: $7f
	add b                                            ; $7cf7: $80
	ld a, a                                          ; $7cf8: $7f
	add b                                            ; $7cf9: $80
	ld a, e                                          ; $7cfa: $7b
	ld l, e                                          ; $7cfb: $6b

jr_014_7cfc:
	ld l, e                                          ; $7cfc: $6b
	cp $3f                                           ; $7cfd: $fe $3f
	add $7a                                          ; $7cff: $c6 $7a
	add c                                            ; $7d01: $81
	sbc [hl]                                         ; $7d02: $9e
	inc b                                            ; $7d03: $04
	ld [hl], a                                       ; $7d04: $77
	cp $9d                                           ; $7d05: $fe $9d
	rlca                                             ; $7d07: $07
	ld [$fe77], sp                                   ; $7d08: $08 $77 $fe
	ld e, e                                          ; $7d0b: $5b
	call nz, $389c                                   ; $7d0c: $c4 $9c $38
	ccf                                              ; $7d0f: $3f
	ld b, b                                          ; $7d10: $40
	ld d, a                                          ; $7d11: $57
	add $6b                                          ; $7d12: $c6 $6b
	ret nz                                           ; $7d14: $c0

	adc c                                            ; $7d15: $89
	db $10                                           ; $7d16: $10
	ld [$0c18], sp                                   ; $7d17: $08 $18 $0c
	inc c                                            ; $7d1a: $0c
	inc b                                            ; $7d1b: $04
	inc b                                            ; $7d1c: $04
	inc bc                                           ; $7d1d: $03
	jp $6766                                         ; $7d1e: $c3 $66 $67


	inc l                                            ; $7d21: $2c
	cpl                                              ; $7d22: $2f
	ld a, [bc]                                       ; $7d23: $0a
	rrca                                             ; $7d24: $0f
	inc c                                            ; $7d25: $0c
	rrca                                             ; $7d26: $0f
	ld l, d                                          ; $7d27: $6a
	ld l, a                                          ; $7d28: $6f
	dec [hl]                                         ; $7d29: $35
	rst FarCall                                          ; $7d2a: $f7
	inc bc                                           ; $7d2b: $03
	ld a, d                                          ; $7d2c: $7a
	ld [$06df], sp                                   ; $7d2d: $08 $df $06
	sbc e                                            ; $7d30: $9b
	inc b                                            ; $7d31: $04
	inc c                                            ; $7d32: $0c
	nop                                              ; $7d33: $00

jr_014_7d34:
	jr jr_014_7d34                                   ; $7d34: $18 $fe

	sbc $08                                          ; $7d36: $de $08
	ld a, e                                          ; $7d38: $7b
	ldh [$9b], a                                     ; $7d39: $e0 $9b
	inc bc                                           ; $7d3b: $03
	ld b, $47                                        ; $7d3c: $06 $47
	dec l                                            ; $7d3e: $2d
	ld a, e                                          ; $7d3f: $7b
	ldh [$99], a                                     ; $7d40: $e0 $99
	dec c                                            ; $7d42: $0d
	rrca                                             ; $7d43: $0f

jr_014_7d44:
	ld a, [bc]                                       ; $7d44: $0a
	ld c, a                                          ; $7d45: $4f
	dec [hl]                                         ; $7d46: $35
	scf                                              ; $7d47: $37
	halt                                             ; $7d48: $76

jr_014_7d49:
	and $df                                          ; $7d49: $e6 $df

jr_014_7d4b:
	ld [bc], a                                       ; $7d4b: $02
	ld a, e                                          ; $7d4c: $7b
	ldh [rVBK], a                                    ; $7d4d: $e0 $4f
	ld c, h                                          ; $7d4f: $4c
	rst FarCall                                          ; $7d50: $f7
	sub [hl]                                         ; $7d51: $96
	ld h, b                                          ; $7d52: $60
	nop                                              ; $7d53: $00
	jr c, jr_014_7d62                                ; $7d54: $38 $0c

	inc e                                            ; $7d56: $1c
	inc c                                            ; $7d57: $0c
	inc c                                            ; $7d58: $0c
	ld c, $0e                                        ; $7d59: $0e $0e
	or $97                                           ; $7d5b: $f6 $97
	add b                                            ; $7d5d: $80
	nop                                              ; $7d5e: $00
	ret nz                                           ; $7d5f: $c0

	nop                                              ; $7d60: $00
	ld h, b                                          ; $7d61: $60

jr_014_7d62:
	db $10                                           ; $7d62: $10
	ld [hl], b                                       ; $7d63: $70
	jr nc, jr_014_7d44                               ; $7d64: $30 $de

	ld [hl], b                                       ; $7d66: $70
	rst SubAFromDE                                          ; $7d67: $df
	jr c, jr_014_7d49                                ; $7d68: $38 $df

	jr jr_014_7d4b                                   ; $7d6a: $18 $df

	rlca                                             ; $7d6c: $07
	rst SubAFromDE                                          ; $7d6d: $df
	rrca                                             ; $7d6e: $0f
	sbc h                                            ; $7d6f: $9c
	ld a, [de]                                       ; $7d70: $1a
	rra                                              ; $7d71: $1f
	rlca                                             ; $7d72: $07
	ld l, [hl]                                       ; $7d73: $6e
	sbc d                                            ; $7d74: $9a
	db $fc                                           ; $7d75: $fc
	sbc e                                            ; $7d76: $9b
	ld c, $3e                                        ; $7d77: $0e $3e
	rra                                              ; $7d79: $1f
	ld a, a                                          ; $7d7a: $7f
	ld c, [hl]                                       ; $7d7b: $4e
	halt                                             ; $7d7c: $76
	rst $38                                          ; $7d7d: $ff
	add e                                            ; $7d7e: $83
	inc [hl]                                         ; $7d7f: $34
	ccf                                              ; $7d80: $3f
	cp b                                             ; $7d81: $b8
	cp a                                             ; $7d82: $bf
	or h                                             ; $7d83: $b4
	cp a                                             ; $7d84: $bf
	jr c, jr_014_7dc6                                ; $7d85: $38 $3f

	inc [hl]                                         ; $7d87: $34
	ccf                                              ; $7d88: $3f
	ld a, [de]                                       ; $7d89: $1a
	rra                                              ; $7d8a: $1f
	cpl                                              ; $7d8b: $2f
	cpl                                              ; $7d8c: $2f
	rst JumpTable                                          ; $7d8d: $c7
	rst JumpTable                                          ; $7d8e: $c7
	add b                                            ; $7d8f: $80
	add b                                            ; $7d90: $80
	ld [bc], a                                       ; $7d91: $02
	ld [bc], a                                       ; $7d92: $02
	ld b, $06                                        ; $7d93: $06 $06
	inc e                                            ; $7d95: $1c
	inc e                                            ; $7d96: $1c
	ld a, h                                          ; $7d97: $7c
	ld a, h                                          ; $7d98: $7c
	ld [hl], b                                       ; $7d99: $70
	ldh a, [$7b]                                     ; $7d9a: $f0 $7b
	or b                                             ; $7d9c: $b0
	ld a, a                                          ; $7d9d: $7f
	xor h                                            ; $7d9e: $ac
	rst SubAFromBC                                          ; $7d9f: $e7
	sbc e                                            ; $7da0: $9b
	stop                                             ; $7da1: $10 $00
	ld [$4f0c], sp                                   ; $7da3: $08 $0c $4f
	ld e, [hl]                                       ; $7da6: $5e
	ld a, c                                          ; $7da7: $79
	push af                                          ; $7da8: $f5
	sbc b                                            ; $7da9: $98
	nop                                              ; $7daa: $00
	jr nz, jr_014_7ddd                               ; $7dab: $20 $30

	jr nc, jr_014_7dbf                               ; $7dad: $30 $10

	db $10                                           ; $7daf: $10
	ld [$e87a], sp                                   ; $7db0: $08 $7a $e8
	rst SubAFromDE                                          ; $7db3: $df
	rlca                                             ; $7db4: $07
	ld a, a                                          ; $7db5: $7f
	inc [hl]                                         ; $7db6: $34
	ld a, a                                          ; $7db7: $7f
	xor h                                            ; $7db8: $ac
	rst SubAFromDE                                          ; $7db9: $df
	ld b, $5d                                        ; $7dba: $06 $5d
	ld b, d                                          ; $7dbc: $42
	rst $38                                          ; $7dbd: $ff
	sbc l                                            ; $7dbe: $9d

jr_014_7dbf:
	dec b                                            ; $7dbf: $05
	dec e                                            ; $7dc0: $1d
	ld b, a                                          ; $7dc1: $47
	add b                                            ; $7dc2: $80
	sbc d                                            ; $7dc3: $9a
	dec [hl]                                         ; $7dc4: $35
	ccf                                              ; $7dc5: $3f

jr_014_7dc6:
	ld a, [hl+]                                      ; $7dc6: $2a
	ccf                                              ; $7dc7: $3f
	dec h                                            ; $7dc8: $25
	ld a, e                                          ; $7dc9: $7b
	db $fc                                           ; $7dca: $fc
	ld a, a                                          ; $7dcb: $7f
	ld hl, sp+$7f                                    ; $7dcc: $f8 $7f
	call nc, Call_014_4d9b                           ; $7dce: $d4 $9b $4d
	ld c, a                                          ; $7dd1: $4f
	add a                                            ; $7dd2: $87
	add a                                            ; $7dd3: $87
	db $fd                                           ; $7dd4: $fd
	rst SubAFromDE                                          ; $7dd5: $df
	inc b                                            ; $7dd6: $04
	rst SubAFromDE                                          ; $7dd7: $df
	ld [$18df], sp                                   ; $7dd8: $08 $df $18
	sbc l                                            ; $7ddb: $9d
	db $10                                           ; $7ddc: $10

jr_014_7ddd:
	jr nc, jr_014_7e5a                               ; $7ddd: $30 $7b

	or d                                             ; $7ddf: $b2
	dec de                                           ; $7de0: $1b
	add d                                            ; $7de1: $82
	sbc e                                            ; $7de2: $9b
	inc b                                            ; $7de3: $04
	inc e                                            ; $7de4: $1c
	ld c, $0e                                        ; $7de5: $0e $0e
	ld e, a                                          ; $7de7: $5f
	inc h                                            ; $7de8: $24
	ld h, [hl]                                       ; $7de9: $66
	cp $9b                                           ; $7dea: $fe $9b
	jr nz, jr_014_7e4e                               ; $7dec: $20 $60

	jr nc, jr_014_7e20                               ; $7dee: $30 $30

	ld [hl], a                                       ; $7df0: $77
	inc b                                            ; $7df1: $04
	sbc d                                            ; $7df2: $9a
	ld c, $0f                                        ; $7df3: $0e $0f
	jr jr_014_7e16                                   ; $7df5: $18 $1f

jr_014_7df7:
	ld [hl-], a                                      ; $7df7: $32
	ld a, e                                          ; $7df8: $7b
	and [hl]                                         ; $7df9: $a6
	rst FarCall                                          ; $7dfa: $f7
	rst SubAFromDE                                          ; $7dfb: $df
	ld c, $9e                                        ; $7dfc: $0e $9e
	rlca                                             ; $7dfe: $07
	ld e, e                                          ; $7dff: $5b
	ldh a, [c]                                       ; $7e00: $f2
	ld h, [hl]                                       ; $7e01: $66
	or b                                             ; $7e02: $b0
	sub b                                            ; $7e03: $90
	ld l, d                                          ; $7e04: $6a

jr_014_7e05:
	ld a, a                                          ; $7e05: $7f
	ld b, l                                          ; $7e06: $45
	ld a, a                                          ; $7e07: $7f
	ld c, d                                          ; $7e08: $4a
	ld a, a                                          ; $7e09: $7f
	ld h, l                                          ; $7e0a: $65
	ld a, a                                          ; $7e0b: $7f
	ld [hl+], a                                      ; $7e0c: $22
	ccf                                              ; $7e0d: $3f
	ld [hl], b                                       ; $7e0e: $70
	ld a, a                                          ; $7e0f: $7f
	sbc b                                            ; $7e10: $98
	sbc a                                            ; $7e11: $9f
	ld c, $70                                        ; $7e12: $0e $70
	xor h                                            ; $7e14: $ac
	rst SubAFromDE                                          ; $7e15: $df

jr_014_7e16:
	jr jr_014_7df7                                   ; $7e16: $18 $df

	jr c, jr_014_7e93                                ; $7e18: $38 $79

	and [hl]                                         ; $7e1a: $a6
	ld a, b                                          ; $7e1b: $78
	db $e4                                           ; $7e1c: $e4
	ld b, $82                                        ; $7e1d: $06 $82
	ld e, e                                          ; $7e1f: $5b

jr_014_7e20:
	ld [hl-], a                                      ; $7e20: $32
	ld e, d                                          ; $7e21: $5a
	add d                                            ; $7e22: $82
	rst SubAFromDE                                          ; $7e23: $df
	jr nc, jr_014_7e05                               ; $7e24: $30 $df

	inc bc                                           ; $7e26: $03
	ld a, a                                          ; $7e27: $7f
	or [hl]                                          ; $7e28: $b6
	sbc h                                            ; $7e29: $9c
	dec e                                            ; $7e2a: $1d
	rra                                              ; $7e2b: $1f
	ld a, [hl-]                                      ; $7e2c: $3a
	ld a, d                                          ; $7e2d: $7a
	xor d                                            ; $7e2e: $aa
	rst FarCall                                          ; $7e2f: $f7
	sbc h                                            ; $7e30: $9c
	ld [$0738], sp                                   ; $7e31: $08 $38 $07
	ld c, [hl]                                       ; $7e34: $4e
	add d                                            ; $7e35: $82
	ld a, a                                          ; $7e36: $7f
	xor [hl]                                         ; $7e37: $ae
	ld a, e                                          ; $7e38: $7b
	ldh a, [c]                                       ; $7e39: $f2
	adc a                                            ; $7e3a: $8f
	ld l, b                                          ; $7e3b: $68
	ld a, a                                          ; $7e3c: $7f
	ld [hl], b                                       ; $7e3d: $70
	ld a, a                                          ; $7e3e: $7f
	ld l, b                                          ; $7e3f: $68
	ld a, a                                          ; $7e40: $7f
	ld a, b                                          ; $7e41: $78
	ld a, a                                          ; $7e42: $7f
	inc [hl]                                         ; $7e43: $34
	ccf                                              ; $7e44: $3f
	ld a, [hl-]                                      ; $7e45: $3a
	ccf                                              ; $7e46: $3f
	sbc l                                            ; $7e47: $9d
	sbc a                                            ; $7e48: $9f
	rrca                                             ; $7e49: $0f
	rrca                                             ; $7e4a: $0f
	ld [hl], a                                       ; $7e4b: $77
	ld l, $df                                        ; $7e4c: $2e $df

jr_014_7e4e:
	inc e                                            ; $7e4e: $1c
	rst SubAFromDE                                          ; $7e4f: $df
	ld a, b                                          ; $7e50: $78
	rst SubAFromDE                                          ; $7e51: $df
	ldh a, [$9d]                                     ; $7e52: $f0 $9d
	ld h, b                                          ; $7e54: $60
	ldh [rPCM12], a                                  ; $7e55: $e0 $76
	add d                                            ; $7e57: $82
	rst $38                                          ; $7e58: $ff
	rst $38                                          ; $7e59: $ff

jr_014_7e5a:
	rst $38                                          ; $7e5a: $ff
	rst $38                                          ; $7e5b: $ff
	rst $38                                          ; $7e5c: $ff
	rst $38                                          ; $7e5d: $ff
	rst $38                                          ; $7e5e: $ff
	rst $38                                          ; $7e5f: $ff
	rst $38                                          ; $7e60: $ff
	rst $38                                          ; $7e61: $ff
	rst $38                                          ; $7e62: $ff
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
	rst $38                                          ; $7e92: $ff

jr_014_7e93:
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

Call_014_7eea:
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

Call_014_7ff7:
	rst $38                                          ; $7ff7: $ff
	rst $38                                          ; $7ff8: $ff
	rst $38                                          ; $7ff9: $ff
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff

Jump_014_7fff:
	rst $38                                          ; $7fff: $ff
