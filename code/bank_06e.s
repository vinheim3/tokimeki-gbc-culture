; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $06e", ROMX[$4000], BANK[$6e]

	sbc e                                            ; $4000: $9b
	cp l                                             ; $4001: $bd
	res 7, e                                         ; $4002: $cb $bb
	call $c1e0                                       ; $4004: $cd $e0 $c1
	sub d                                            ; $4007: $92
	rst $38                                          ; $4008: $ff
	cp a                                             ; $4009: $bf
	rst $38                                          ; $400a: $ff
	and c                                            ; $400b: $a1
	cp a                                             ; $400c: $bf
	add b                                            ; $400d: $80
	adc a                                            ; $400e: $8f
	add b                                            ; $400f: $80
	ld a, a                                          ; $4010: $7f
	ret nz                                           ; $4011: $c0

	ld b, c                                          ; $4012: $41
	ret nz                                           ; $4013: $c0

	ld b, b                                          ; $4014: $40
	ld [hl], e                                       ; $4015: $73

jr_06e_4016:
	cp $9c                                           ; $4016: $fe $9c
	ld e, b                                          ; $4018: $58
	ret nz                                           ; $4019: $c0

	ld a, b                                          ; $401a: $78
	ld [hl], a                                       ; $401b: $77
	cp $99                                           ; $401c: $fe $99
	ret nc                                           ; $401e: $d0

	ld [hl], b                                       ; $401f: $70
	ret nc                                           ; $4020: $d0

	jr nc, @-$1e                                     ; $4021: $30 $e0

	jr nz, @+$7b                                     ; $4023: $20 $79

	and b                                            ; $4025: $a0
	ld a, [de]                                       ; $4026: $1a
	add h                                            ; $4027: $84
	ld a, e                                          ; $4028: $7b
	ld e, b                                          ; $4029: $58
	ld a, a                                          ; $402a: $7f
	sbc $80                                          ; $402b: $de $80
	sub b                                            ; $402d: $90
	ld [hl], b                                       ; $402e: $70
	ret z                                            ; $402f: $c8

	jr c, jr_06e_4016                                ; $4030: $38 $e4

	inc e                                            ; $4032: $1c
	inc [hl]                                         ; $4033: $34
	call z, $6e92                                    ; $4034: $cc $92 $6e
	jp nz, Jump_06e_713e                             ; $4037: $c2 $3e $71

	sbc a                                            ; $403a: $9f
	or c                                             ; $403b: $b1
	rst GetHLinHL                                          ; $403c: $cf
	ld e, c                                          ; $403d: $59
	rst AddAOntoHL                                          ; $403e: $ef
	ld c, b                                          ; $403f: $48
	rst FarCall                                          ; $4040: $f7
	xor h                                            ; $4041: $ac
	ld [hl], a                                       ; $4042: $77
	and h                                            ; $4043: $a4
	ld a, a                                          ; $4044: $7f
	jp nc, Jump_06e_513f                             ; $4045: $d2 $3f $51

	cp a                                             ; $4048: $bf
	add hl, hl                                       ; $4049: $29
	rst SubAFromDE                                          ; $404a: $df
	xor b                                            ; $404b: $a8
	sbc e                                            ; $404c: $9b
	rst SubAFromDE                                          ; $404d: $df
	ld b, h                                          ; $404e: $44
	rst $38                                          ; $404f: $ff
	and d                                            ; $4050: $a2
	ld a, e                                          ; $4051: $7b
	db $f4                                           ; $4052: $f4
	sbc b                                            ; $4053: $98
	ld l, c                                          ; $4054: $69
	sbc a                                            ; $4055: $9f
	and l                                            ; $4056: $a5
	rst SubAFromDE                                          ; $4057: $df
	ld b, d                                          ; $4058: $42
	rst $38                                          ; $4059: $ff
	ld hl, $2e79                                     ; $405a: $21 $79 $2e
	sub c                                            ; $405d: $91
	adc e                                            ; $405e: $8b
	rst $38                                          ; $405f: $ff
	ld h, h                                          ; $4060: $64
	rst $38                                          ; $4061: $ff
	sbc h                                            ; $4062: $9c
	rst $38                                          ; $4063: $ff
	ld c, d                                          ; $4064: $4a
	db $fd                                           ; $4065: $fd
	ld l, d                                          ; $4066: $6a
	db $dd                                           ; $4067: $dd
	ld h, a                                          ; $4068: $67
	call c, $ce75                                    ; $4069: $dc $75 $ce
	ld [hl], a                                       ; $406c: $77
	cp $83                                           ; $406d: $fe $83
	ld h, h                                          ; $406f: $64
	rst SubAFromDE                                          ; $4070: $df
	ld l, c                                          ; $4071: $69

jr_06e_4072:
	rst SubAFromDE                                          ; $4072: $df
	ld c, c                                          ; $4073: $49
	rst $38                                          ; $4074: $ff
	ld c, c                                          ; $4075: $49
	rst $38                                          ; $4076: $ff
	ld d, d                                          ; $4077: $52
	cp $52                                           ; $4078: $fe $52
	cp $94                                           ; $407a: $fe $94
	db $fc                                           ; $407c: $fc
	and h                                            ; $407d: $a4
	db $fc                                           ; $407e: $fc
	xor b                                            ; $407f: $a8
	ld hl, sp+$58                                    ; $4080: $f8 $58
	ld hl, sp+$51                                    ; $4082: $f8 $51
	pop af                                           ; $4084: $f1
	ld h, c                                          ; $4085: $61
	pop hl                                           ; $4086: $e1
	jp $86c3                                         ; $4087: $c3 $c3 $86


	add [hl]                                         ; $408a: $86
	ld l, h                                          ; $408b: $6c
	xor $91                                          ; $408c: $ee $91
	db $10                                           ; $408e: $10
	ldh a, [$08]                                     ; $408f: $f0 $08
	ld hl, sp-$78                                    ; $4091: $f8 $88
	ld a, b                                          ; $4093: $78
	call nz, $c43c                                   ; $4094: $c4 $3c $c4
	inc a                                            ; $4097: $3c
	jp nz, $e23e                                     ; $4098: $c2 $3e $e2

	ld e, $77                                        ; $409b: $1e $77
	cp $97                                           ; $409d: $fe $97
	pop hl                                           ; $409f: $e1
	rra                                              ; $40a0: $1f
	pop hl                                           ; $40a1: $e1
	rra                                              ; $40a2: $1f
	pop af                                           ; $40a3: $f1
	rrca                                             ; $40a4: $0f
	pop af                                           ; $40a5: $f1
	rrca                                             ; $40a6: $0f
	cpl                                              ; $40a7: $2f
	ld l, b                                          ; $40a8: $68
	rst SubAFromDE                                          ; $40a9: $df
	add b                                            ; $40aa: $80
	rst SubAFromDE                                          ; $40ab: $df
	ret nz                                           ; $40ac: $c0

	ld l, a                                          ; $40ad: $6f
	ld [hl-], a                                      ; $40ae: $32
	ld a, h                                          ; $40af: $7c
	and [hl]                                         ; $40b0: $a6
	ld a, a                                          ; $40b1: $7f
	cp $7f                                           ; $40b2: $fe $7f
	ret nz                                           ; $40b4: $c0

	ld a, a                                          ; $40b5: $7f
	ld e, d                                          ; $40b6: $5a
	ld a, a                                          ; $40b7: $7f
	cp [hl]                                          ; $40b8: $be
	ld a, a                                          ; $40b9: $7f
	cp $80                                           ; $40ba: $fe $80
	sub b                                            ; $40bc: $90
	ldh a, [hDisp0_WY]                                     ; $40bd: $f0 $88
	ld hl, sp+$48                                    ; $40bf: $f8 $48
	ld hl, sp-$38                                    ; $40c1: $f8 $c8
	ld hl, sp-$7c                                    ; $40c3: $f8 $84
	db $fc                                           ; $40c5: $fc
	call nc, Call_06e_54ec                           ; $40c6: $d4 $ec $54
	db $ec                                           ; $40c9: $ec
	ld [hl], h                                       ; $40ca: $74
	db $ec                                           ; $40cb: $ec
	ld a, h                                          ; $40cc: $7c
	db $e4                                           ; $40cd: $e4
	db $ec                                           ; $40ce: $ec
	db $f4                                           ; $40cf: $f4
	db $ec                                           ; $40d0: $ec
	db $f4                                           ; $40d1: $f4
	xor h                                            ; $40d2: $ac
	or h                                             ; $40d3: $b4
	and h                                            ; $40d4: $a4
	cp h                                             ; $40d5: $bc
	and h                                            ; $40d6: $a4
	cp h                                             ; $40d7: $bc
	inc h                                            ; $40d8: $24
	inc a                                            ; $40d9: $3c
	jr z, jr_06e_4072                                ; $40da: $28 $96

	jr c, jr_06e_4126                                ; $40dc: $38 $48

	ld a, b                                          ; $40de: $78
	ld c, b                                          ; $40df: $48
	ld a, b                                          ; $40e0: $78
	ld d, b                                          ; $40e1: $50
	ld [hl], b                                       ; $40e2: $70
	ld d, b                                          ; $40e3: $50
	ld [hl], b                                       ; $40e4: $70
	ld [hl], a                                       ; $40e5: $77
	call z, $c67f                                    ; $40e6: $cc $7f $c6
	ld l, h                                          ; $40e9: $6c
	ld [hl], b                                       ; $40ea: $70
	rla                                              ; $40eb: $17
	nop                                              ; $40ec: $00
	jp c, $99ee                                      ; $40ed: $da $ee $99

	db $dd                                           ; $40f0: $dd
	ld de, $9999                                     ; $40f1: $11 $99 $99
	ld [hl+], a                                      ; $40f4: $22
	xor $4f                                          ; $40f5: $ee $4f
	ei                                               ; $40f7: $fb
	sbc [hl]                                         ; $40f8: $9e
	sbc c                                            ; $40f9: $99
	ld [hl], e                                       ; $40fa: $73
	ei                                               ; $40fb: $fb
	ld a, e                                          ; $40fc: $7b
	ld a, [$ee9e]                                    ; $40fd: $fa $9e $ee
	sbc $99                                          ; $4100: $de $99
	ldh a, [rSB]                                     ; $4102: $f0 $01
	add b                                            ; $4104: $80
	dec de                                           ; $4105: $1b
	db $fc                                           ; $4106: $fc
	ldh [rIE], a                                     ; $4107: $e0 $ff
	ld b, e                                          ; $4109: $43
	ld a, a                                          ; $410a: $7f
	db $fd                                           ; $410b: $fd
	rst $38                                          ; $410c: $ff
	ld [de], a                                       ; $410d: $12
	rra                                              ; $410e: $1f
	inc h                                            ; $410f: $24
	ccf                                              ; $4110: $3f
	jr c, jr_06e_4142                                ; $4111: $38 $2f

	ld l, a                                          ; $4113: $6f
	ld e, a                                          ; $4114: $5f
	call nc, $a9bb                                   ; $4115: $d4 $bb $a9
	rst FarCall                                          ; $4118: $f7
	jp hl                                            ; $4119: $e9


	ld [hl], a                                       ; $411a: $77
	ldh a, [c]                                       ; $411b: $f2
	ccf                                              ; $411c: $3f
	ldh a, [c]                                       ; $411d: $f2
	rra                                              ; $411e: $1f
	db $fd                                           ; $411f: $fd
	ld c, $fd                                        ; $4120: $0e $fd
	ld b, $ff                                        ; $4122: $06 $ff
	sbc c                                            ; $4124: $99
	inc b                                            ; $4125: $04

jr_06e_4126:
	ld a, [hl]                                       ; $4126: $7e
	inc b                                            ; $4127: $04
	ld a, [hl-]                                      ; $4128: $3a
	inc c                                            ; $4129: $0c
	add hl, de                                       ; $412a: $19
	ld a, e                                          ; $412b: $7b
	cp $96                                           ; $412c: $fe $96
	add hl, bc                                       ; $412e: $09
	inc c                                            ; $412f: $0c
	dec bc                                           ; $4130: $0b
	inc c                                            ; $4131: $0c
	ld c, $05                                        ; $4132: $0e $05
	inc c                                            ; $4134: $0c
	rlca                                             ; $4135: $07
	dec b                                            ; $4136: $05
	ld [hl], e                                       ; $4137: $73
	cp $9e                                           ; $4138: $fe $9e
	sub l                                            ; $413a: $95
	ld a, e                                          ; $413b: $7b
	cp $80                                           ; $413c: $fe $80
	jp nc, $f203                                     ; $413e: $d2 $03 $f2

	add e                                            ; $4141: $83

jr_06e_4142:
	rst FarCall                                          ; $4142: $f7
	add a                                            ; $4143: $87
	inc l                                            ; $4144: $2c
	di                                               ; $4145: $f3
	reti                                             ; $4146: $d9


	rst SubAFromBC                                          ; $4147: $e7
	or e                                             ; $4148: $b3
	adc $04                                          ; $4149: $ce $04
	rst $38                                          ; $414b: $ff
	dec bc                                           ; $414c: $0b
	rst $38                                          ; $414d: $ff
	ccf                                              ; $414e: $3f
	db $fc                                           ; $414f: $fc
	ld a, a                                          ; $4150: $7f
	ldh [$e3], a                                     ; $4151: $e0 $e3
	jp $87cf                                         ; $4153: $c3 $cf $87


	ld e, [hl]                                       ; $4156: $5e
	sbc $4b                                          ; $4157: $de $4b
	jp z, $c363                                      ; $4159: $ca $63 $c3

	ld h, b                                          ; $415c: $60
	add d                                            ; $415d: $82
	pop bc                                           ; $415e: $c1
	ld h, e                                          ; $415f: $63
	pop hl                                           ; $4160: $e1
	ld h, b                                          ; $4161: $60
	ldh [$60], a                                     ; $4162: $e0 $60
	ldh [rSVBK], a                                   ; $4164: $e0 $70
	ldh [$50], a                                     ; $4166: $e0 $50
	ldh a, [$58]                                     ; $4168: $f0 $58
	ldh a, [$9c]                                     ; $416a: $f0 $9c
	ld hl, sp-$52                                    ; $416c: $f8 $ae
	call c, $deaf                                    ; $416e: $dc $af $de
	or e                                             ; $4171: $b3
	rst SubAFromDE                                          ; $4172: $df
	cp c                                             ; $4173: $b9
	rst SubAFromDE                                          ; $4174: $df
	cp $57                                           ; $4175: $fe $57
	rst SubAFromDE                                          ; $4177: $df
	ld [hl], c                                       ; $4178: $71
	rst SubAFromDE                                          ; $4179: $df
	ld [hl], b                                       ; $417a: $70
	ld a, e                                          ; $417b: $7b
	cp $80                                           ; $417c: $fe $80
	ld [hl], c                                       ; $417e: $71
	rst $38                                          ; $417f: $ff
	or a                                             ; $4180: $b7
	db $fc                                           ; $4181: $fc
	cp h                                             ; $4182: $bc
	db $f4                                           ; $4183: $f4
	ldh a, [$ed]                                     ; $4184: $f0 $ed
	cp a                                             ; $4186: $bf
	db $ed                                           ; $4187: $ed
	ccf                                              ; $4188: $3f
	xor l                                            ; $4189: $ad
	ld a, a                                          ; $418a: $7f
	ld a, l                                          ; $418b: $7d
	rst FarCall                                          ; $418c: $f7
	db $fc                                           ; $418d: $fc
	sub a                                            ; $418e: $97
	cp $13                                           ; $418f: $fe $13
	xor $13                                          ; $4191: $ee $13
	rst $38                                          ; $4193: $ff
	add c                                            ; $4194: $81
	rst $38                                          ; $4195: $ff
	pop bc                                           ; $4196: $c1
	ld a, b                                          ; $4197: $78
	ld h, b                                          ; $4198: $60
	ldh [$e0], a                                     ; $4199: $e0 $e0
	and b                                            ; $419b: $a0
	ldh [$80], a                                     ; $419c: $e0 $80
	ldh [rLCDC], a                                   ; $419e: $e0 $40
	rst JumpTable                                          ; $41a0: $c7
	add b                                            ; $41a1: $80
	dec e                                            ; $41a2: $1d
	ld [bc], a                                       ; $41a3: $02
	ld a, l                                          ; $41a4: $7d
	ld b, $24                                        ; $41a5: $06 $24
	rst $38                                          ; $41a7: $ff
	ld h, $ff                                        ; $41a8: $26 $ff
	scf                                              ; $41aa: $37
	db $fd                                           ; $41ab: $fd
	scf                                              ; $41ac: $37
	db $fd                                           ; $41ad: $fd
	cp l                                             ; $41ae: $bd
	xor $ee                                          ; $41af: $ee $ee
	ld [hl], a                                       ; $41b1: $77
	rst $38                                          ; $41b2: $ff
	ld sp, $10ff                                     ; $41b3: $31 $ff $10
	ei                                               ; $41b6: $fb
	rlca                                             ; $41b7: $07
	rst FarCall                                          ; $41b8: $f7
	rrca                                             ; $41b9: $0f
	ld e, $0a                                        ; $41ba: $1e $0a
	inc bc                                           ; $41bc: $03
	add b                                            ; $41bd: $80
	inc bc                                           ; $41be: $03
	ld bc, $8303                                     ; $41bf: $01 $03 $83
	ld [bc], a                                       ; $41c2: $02
	rst SubAFromBC                                          ; $41c3: $e7
	ld bc, $00f0                                     ; $41c4: $01 $f0 $00
	jp c, $d56d                                      ; $41c7: $da $6d $d5

	ld l, [hl]                                       ; $41ca: $6e
	ld a, l                                          ; $41cb: $7d
	and [hl]                                         ; $41cc: $a6
	ld l, [hl]                                       ; $41cd: $6e
	or e                                             ; $41ce: $b3
	sub l                                            ; $41cf: $95
	ei                                               ; $41d0: $fb
	ld c, d                                          ; $41d1: $4a
	db $fd                                           ; $41d2: $fd
	and h                                            ; $41d3: $a4
	rst $38                                          ; $41d4: $ff
	ldh a, [c]                                       ; $41d5: $f2
	ld a, a                                          ; $41d6: $7f
	ld sp, hl                                        ; $41d7: $f9
	adc a                                            ; $41d8: $8f
	db $fc                                           ; $41d9: $fc
	rst SubAFromBC                                          ; $41da: $e7
	ld a, [hl]                                       ; $41db: $7e
	scf                                              ; $41dc: $37
	add b                                            ; $41dd: $80
	db $fd                                           ; $41de: $fd
	ld a, a                                          ; $41df: $7f
	db $ec                                           ; $41e0: $ec
	rst SubAFromBC                                          ; $41e1: $e7
	ld l, $e5                                        ; $41e2: $2e $e5
	sbc $c5                                          ; $41e4: $de $c5
	ld a, [hl-]                                      ; $41e6: $3a
	dec c                                            ; $41e7: $0d
	add hl, sp                                       ; $41e8: $39
	dec c                                            ; $41e9: $0d
	ld a, l                                          ; $41ea: $7d
	add hl, bc                                       ; $41eb: $09
	ld [hl], e                                       ; $41ec: $73
	add hl, de                                       ; $41ed: $19
	ldh a, [c]                                       ; $41ee: $f2
	dec de                                           ; $41ef: $1b
	db $eb                                           ; $41f0: $eb
	ld [hl-], a                                      ; $41f1: $32
	db $e3                                           ; $41f2: $e3
	halt                                             ; $41f3: $76
	xor l                                            ; $41f4: $ad
	or $37                                           ; $41f5: $f6 $37
	db $ec                                           ; $41f7: $ec
	ld d, [hl]                                       ; $41f8: $56
	db $ed                                           ; $41f9: $ed
	ld c, b                                          ; $41fa: $48
	rst $38                                          ; $41fb: $ff
	adc b                                            ; $41fc: $88
	sub h                                            ; $41fd: $94
	rst $38                                          ; $41fe: $ff
	sbc c                                            ; $41ff: $99
	rst $38                                          ; $4200: $ff
	ld de, $32ff                                     ; $4201: $11 $ff $32
	rst $38                                          ; $4204: $ff
	ld h, h                                          ; $4205: $64
	rst $38                                          ; $4206: $ff
	db $ed                                           ; $4207: $ed
	cp a                                             ; $4208: $bf
	ld c, a                                          ; $4209: $4f
	ld b, b                                          ; $420a: $40
	sub e                                            ; $420b: $93
	ldh [$c0], a                                     ; $420c: $e0 $c0
	jp $4f83                                         ; $420e: $c3 $83 $4f


	rst JumpTable                                          ; $4211: $c7
	ld e, [hl]                                       ; $4212: $5e
	sbc $6b                                          ; $4213: $de $6b
	jp z, $c361                                      ; $4215: $ca $61 $c3

	ld l, a                                          ; $4218: $6f
	ld b, b                                          ; $4219: $40
	ld c, e                                          ; $421a: $4b
	ld h, b                                          ; $421b: $60
	sbc d                                            ; $421c: $9a
	ld bc, $81ff                                     ; $421d: $01 $ff $81
	ld hl, sp-$40                                    ; $4220: $f8 $c0
	db $dd                                           ; $4222: $dd
	ldh [$7f], a                                     ; $4223: $e0 $7f
	and $2f                                          ; $4225: $e6 $2f
	ld h, b                                          ; $4227: $60
	sub [hl]                                         ; $4228: $96
	rst $38                                          ; $4229: $ff
	nop                                              ; $422a: $00
	rst $38                                          ; $422b: $ff
	rlca                                             ; $422c: $07
	ccf                                              ; $422d: $3f
	rrca                                             ; $422e: $0f
	ld b, $02                                        ; $422f: $06 $02
	rlca                                             ; $4231: $07
	daa                                              ; $4232: $27
	ld h, b                                          ; $4233: $60
	sub [hl]                                         ; $4234: $96
	rrca                                             ; $4235: $0f
	db $fc                                           ; $4236: $fc
	add a                                            ; $4237: $87
	cp $e7                                           ; $4238: $fe $e7
	ld a, l                                          ; $423a: $7d
	scf                                              ; $423b: $37
	db $fc                                           ; $423c: $fc
	rst $38                                          ; $423d: $ff
	ld l, a                                          ; $423e: $6f

jr_06e_423f:
	ld h, b                                          ; $423f: $60
	ld b, a                                          ; $4240: $47
	add b                                            ; $4241: $80
	sub l                                            ; $4242: $95
	ret nz                                           ; $4243: $c0

	add b                                            ; $4244: $80
	ld b, e                                          ; $4245: $43
	jp $c74f                                         ; $4246: $c3 $4f $c7


	ld a, [hl]                                       ; $4249: $7e
	sbc $65                                          ; $424a: $de $65
	rst JumpTable                                          ; $424c: $c7
	cpl                                              ; $424d: $2f
	add b                                            ; $424e: $80
	sbc d                                            ; $424f: $9a
	ld a, a                                          ; $4250: $7f
	ld bc, $80f8                                     ; $4251: $01 $f8 $80
	ldh [$7b], a                                     ; $4254: $e0 $7b
	ld a, [hl]                                       ; $4256: $7e
	dec de                                           ; $4257: $1b
	add b                                            ; $4258: $80
	sub [hl]                                         ; $4259: $96
	nop                                              ; $425a: $00
	dec sp                                           ; $425b: $3b
	inc bc                                           ; $425c: $03
	rlca                                             ; $425d: $07
	rlca                                             ; $425e: $07
	rrca                                             ; $425f: $0f
	ld c, $82                                        ; $4260: $0e $82
	inc bc                                           ; $4262: $03
	dec hl                                           ; $4263: $2b
	add b                                            ; $4264: $80
	sub [hl]                                         ; $4265: $96
	rlca                                             ; $4266: $07
	cp $87                                           ; $4267: $fe $87
	db $fd                                           ; $4269: $fd
	rst SubAFromBC                                          ; $426a: $e7
	inc a                                            ; $426b: $3c
	ld a, a                                          ; $426c: $7f
	ld a, $f5                                        ; $426d: $3e $f5
	cpl                                              ; $426f: $2f
	add b                                            ; $4270: $80
	sub l                                            ; $4271: $95
	ld b, b                                          ; $4272: $40
	ret nz                                           ; $4273: $c0

	ld b, a                                          ; $4274: $47
	ret nz                                           ; $4275: $c0

	ld a, b                                          ; $4276: $78
	ret c                                            ; $4277: $d8

	ld l, a                                          ; $4278: $6f
	rst GetHLinHL                                          ; $4279: $cf
	ld h, a                                          ; $427a: $67
	rst SubAFromBC                                          ; $427b: $e7
	cpl                                              ; $427c: $2f
	add b                                            ; $427d: $80
	sbc [hl]                                         ; $427e: $9e
	jr c, jr_06e_423f                                ; $427f: $38 $be

	add b                                            ; $4281: $80
	nop                                              ; $4282: $00
	ldh [$9c], a                                     ; $4283: $e0 $9c
	ldh [$e7], a                                     ; $4285: $e0 $e7
	ret nz                                           ; $4287: $c0

	daa                                              ; $4288: $27
	add b                                            ; $4289: $80
	ld a, a                                          ; $428a: $7f
	sbc $9e                                          ; $428b: $de $9e
	inc bc                                           ; $428d: $03
	cp a                                             ; $428e: $bf
	nop                                              ; $428f: $00
	adc a                                            ; $4290: $8f
	sbc h                                            ; $4291: $9c
	rlca                                             ; $4292: $07
	rst SubAFromBC                                          ; $4293: $e7
	inc bc                                           ; $4294: $03
	dec hl                                           ; $4295: $2b
	add b                                            ; $4296: $80
	adc e                                            ; $4297: $8b
	rlca                                             ; $4298: $07
	dec a                                            ; $4299: $3d
	rst JumpTable                                          ; $429a: $c7
	inc e                                            ; $429b: $1c
	daa                                              ; $429c: $27
	cp $fd                                           ; $429d: $fe $fd
	cp $f5                                           ; $429f: $fe $f5
	ld a, [hl-]                                      ; $42a1: $3a
	dec c                                            ; $42a2: $0d
	dec b                                            ; $42a3: $05
	ld b, $00                                        ; $42a4: $06 $00
	nop                                              ; $42a6: $00
	ld [$0708], sp                                   ; $42a7: $08 $08 $07
	rlca                                             ; $42aa: $07
	nop                                              ; $42ab: $00
	cp [hl]                                          ; $42ac: $be
	rlca                                             ; $42ad: $07
	add b                                            ; $42ae: $80
	ret nz                                           ; $42af: $c0

	ld a, e                                          ; $42b0: $7b
	ld h, $98                                        ; $42b1: $26 $98
	ld a, b                                          ; $42b3: $78
	ldh a, [$fe]                                     ; $42b4: $f0 $fe
	reti                                             ; $42b6: $d9


	rst $38                                          ; $42b7: $ff
	rst JumpTable                                          ; $42b8: $c7
	db $e3                                           ; $42b9: $e3
	db $dd                                           ; $42ba: $dd
	ret nz                                           ; $42bb: $c0

	sbc l                                            ; $42bc: $9d
	ld b, b                                          ; $42bd: $40
	add b                                            ; $42be: $80
	ld [hl], a                                       ; $42bf: $77
	sub l                                            ; $42c0: $95
	rst $38                                          ; $42c1: $ff
	ld [hl], e                                       ; $42c2: $73
	ld a, [$019e]                                    ; $42c3: $fa $9e $01
	cp a                                             ; $42c6: $bf
	inc bc                                           ; $42c7: $03
	rlca                                             ; $42c8: $07
	adc [hl]                                         ; $42c9: $8e
	inc bc                                           ; $42ca: $03
	ld e, $0f                                        ; $42cb: $1e $0f
	ld a, [hl]                                       ; $42cd: $7e
	ccf                                              ; $42ce: $3f
	cp $ff                                           ; $42cf: $fe $ff
	cp $f3                                           ; $42d1: $fe $f3
	rst $38                                          ; $42d3: $ff
	inc bc                                           ; $42d4: $03
	rst $38                                          ; $42d5: $ff
	inc bc                                           ; $42d6: $03
	ld a, $03                                        ; $42d7: $3e $03
	dec e                                            ; $42d9: $1d
	rlca                                             ; $42da: $07
	ld [hl], a                                       ; $42db: $77
	ret nz                                           ; $42dc: $c0

	rst SubAFromDE                                          ; $42dd: $df
	rrca                                             ; $42de: $0f
	inc bc                                           ; $42df: $03
	ret nz                                           ; $42e0: $c0

	dec bc                                           ; $42e1: $0b
	ret nz                                           ; $42e2: $c0

	ld [hl], e                                       ; $42e3: $73
	cp a                                             ; $42e4: $bf
	cp a                                             ; $42e5: $bf
	add a                                            ; $42e6: $87
	ret nz                                           ; $42e7: $c0

	dec hl                                           ; $42e8: $2b
	ret nz                                           ; $42e9: $c0

	ld [hl], a                                       ; $42ea: $77
	ld sp, hl                                        ; $42eb: $f9
	inc bc                                           ; $42ec: $03
	ret nz                                           ; $42ed: $c0

	inc bc                                           ; $42ee: $03
	ret nz                                           ; $42ef: $c0

	scf                                              ; $42f0: $37
	ret nz                                           ; $42f1: $c0

	ld a, [de]                                       ; $42f2: $1a
	ld [bc], a                                       ; $42f3: $02
	add b                                            ; $42f4: $80
	dec de                                           ; $42f5: $1b
	db $fc                                           ; $42f6: $fc
	ldh [rIE], a                                     ; $42f7: $e0 $ff
	ld b, e                                          ; $42f9: $43
	ld a, a                                          ; $42fa: $7f
	db $fd                                           ; $42fb: $fd
	rst $38                                          ; $42fc: $ff
	ld [de], a                                       ; $42fd: $12
	rra                                              ; $42fe: $1f
	inc h                                            ; $42ff: $24
	ccf                                              ; $4300: $3f
	jr c, jr_06e_4332                                ; $4301: $38 $2f

	ld l, a                                          ; $4303: $6f
	ld e, a                                          ; $4304: $5f
	call nc, $a9bb                                   ; $4305: $d4 $bb $a9
	rst FarCall                                          ; $4308: $f7
	jp hl                                            ; $4309: $e9


	ld [hl], a                                       ; $430a: $77
	ldh a, [c]                                       ; $430b: $f2
	ccf                                              ; $430c: $3f
	ldh a, [c]                                       ; $430d: $f2
	rra                                              ; $430e: $1f
	db $fd                                           ; $430f: $fd
	ld c, $fd                                        ; $4310: $0e $fd
	ld b, $ff                                        ; $4312: $06 $ff
	sbc c                                            ; $4314: $99
	inc b                                            ; $4315: $04
	ld a, [hl]                                       ; $4316: $7e
	inc b                                            ; $4317: $04
	ld a, [hl-]                                      ; $4318: $3a
	inc c                                            ; $4319: $0c
	add hl, de                                       ; $431a: $19
	ld a, e                                          ; $431b: $7b
	cp $96                                           ; $431c: $fe $96
	add hl, bc                                       ; $431e: $09
	inc c                                            ; $431f: $0c
	dec bc                                           ; $4320: $0b
	inc c                                            ; $4321: $0c
	ld c, $05                                        ; $4322: $0e $05
	inc c                                            ; $4324: $0c
	rlca                                             ; $4325: $07
	dec b                                            ; $4326: $05
	ld [hl], e                                       ; $4327: $73
	cp $9e                                           ; $4328: $fe $9e
	sub l                                            ; $432a: $95
	ld a, e                                          ; $432b: $7b
	cp $80                                           ; $432c: $fe $80
	jp nc, $f203                                     ; $432e: $d2 $03 $f2

	add e                                            ; $4331: $83

jr_06e_4332:
	rst FarCall                                          ; $4332: $f7
	add a                                            ; $4333: $87
	inc l                                            ; $4334: $2c
	di                                               ; $4335: $f3
	reti                                             ; $4336: $d9


	rst SubAFromBC                                          ; $4337: $e7
	or d                                             ; $4338: $b2
	rst GetHLinHL                                          ; $4339: $cf
	dec b                                            ; $433a: $05
	rst $38                                          ; $433b: $ff
	dec bc                                           ; $433c: $0b
	cp $37                                           ; $433d: $fe $37
	db $fc                                           ; $433f: $fc
	ld a, a                                          ; $4340: $7f
	db $e3                                           ; $4341: $e3
	rst SubAFromBC                                          ; $4342: $e7
	rst JumpTable                                          ; $4343: $c7
	sbc $9e                                          ; $4344: $de $9e
	ld c, e                                          ; $4346: $4b
	jp z, $c343                                      ; $4347: $ca $43 $c3

	ld h, c                                          ; $434a: $61
	jp $8263                                         ; $434b: $c3 $63 $82


	jp nz, $e163                                     ; $434e: $c2 $63 $e1

	ld h, b                                          ; $4351: $60
	ldh [$60], a                                     ; $4352: $e0 $60
	ldh [rSVBK], a                                   ; $4354: $e0 $70
	ldh [$50], a                                     ; $4356: $e0 $50
	ldh a, [$58]                                     ; $4358: $f0 $58
	ldh a, [$9c]                                     ; $435a: $f0 $9c
	ld hl, sp-$52                                    ; $435c: $f8 $ae
	call c, $deaf                                    ; $435e: $dc $af $de
	or e                                             ; $4361: $b3
	rst SubAFromDE                                          ; $4362: $df
	cp c                                             ; $4363: $b9
	rst SubAFromDE                                          ; $4364: $df
	cp $57                                           ; $4365: $fe $57
	rst SubAFromDE                                          ; $4367: $df
	ld [hl], c                                       ; $4368: $71
	rst SubAFromDE                                          ; $4369: $df
	ld [hl], b                                       ; $436a: $70
	ld a, e                                          ; $436b: $7b
	cp $85                                           ; $436c: $fe $85
	ld [hl], c                                       ; $436e: $71
	rst $38                                          ; $436f: $ff
	or a                                             ; $4370: $b7
	db $fc                                           ; $4371: $fc
	cp h                                             ; $4372: $bc
	db $f4                                           ; $4373: $f4
	ldh a, [$ed]                                     ; $4374: $f0 $ed
	cp a                                             ; $4376: $bf
	db $ed                                           ; $4377: $ed
	ccf                                              ; $4378: $3f
	dec l                                            ; $4379: $2d
	rst $38                                          ; $437a: $ff
	cp l                                             ; $437b: $bd
	rst FarCall                                          ; $437c: $f7
	call c, $fe77                                    ; $437d: $dc $77 $fe
	inc de                                           ; $4380: $13
	ld l, [hl]                                       ; $4381: $6e
	sub e                                            ; $4382: $93
	cp a                                             ; $4383: $bf
	pop bc                                           ; $4384: $c1
	ld a, a                                          ; $4385: $7f
	ld h, c                                          ; $4386: $61
	ld hl, sp-$22                                    ; $4387: $f8 $de
	ldh [$7b], a                                     ; $4389: $e0 $7b
	add $81                                          ; $438b: $c6 $81
	ret nz                                           ; $438d: $c0

	jp $0580                                         ; $438e: $c3 $80 $05


	ld [bc], a                                       ; $4391: $02
	dec c                                            ; $4392: $0d
	ld b, $24                                        ; $4393: $06 $24
	rst $38                                          ; $4395: $ff
	ld h, $ff                                        ; $4396: $26 $ff
	scf                                              ; $4398: $37
	db $fd                                           ; $4399: $fd
	dec [hl]                                         ; $439a: $35
	rst $38                                          ; $439b: $ff
	cp [hl]                                          ; $439c: $be
	rst AddAOntoHL                                          ; $439d: $ef

jr_06e_439e:
	rst AddAOntoHL                                          ; $439e: $ef
	ld [hl], l                                       ; $439f: $75
	rst $38                                          ; $43a0: $ff
	jr nc, jr_06e_439e                               ; $43a1: $30 $fb

	rla                                              ; $43a3: $17
	rst FarCall                                          ; $43a4: $f7
	ld c, $fe                                        ; $43a5: $0e $fe
	ld a, [bc]                                       ; $43a7: $0a
	ccf                                              ; $43a8: $3f
	inc bc                                           ; $43a9: $03
	ld bc, $fe7b                                     ; $43aa: $01 $7b $fe
	add b                                            ; $43ad: $80
	inc bc                                           ; $43ae: $03
	ld [bc], a                                       ; $43af: $02
	add a                                            ; $43b0: $87
	ld bc, $0080                                     ; $43b1: $01 $80 $00
	jp c, $d56d                                      ; $43b4: $da $6d $d5

	ld l, [hl]                                       ; $43b7: $6e
	ld a, l                                          ; $43b8: $7d
	and [hl]                                         ; $43b9: $a6
	ld l, [hl]                                       ; $43ba: $6e
	or e                                             ; $43bb: $b3
	sub l                                            ; $43bc: $95
	ei                                               ; $43bd: $fb
	jp z, $e4fd                                      ; $43be: $ca $fd $e4

	ld a, a                                          ; $43c1: $7f
	or d                                             ; $43c2: $b2
	rst SubAFromDE                                          ; $43c3: $df
	ld sp, hl                                        ; $43c4: $f9
	ld l, a                                          ; $43c5: $6f
	ld a, h                                          ; $43c6: $7c
	scf                                              ; $43c7: $37
	cp $7f                                           ; $43c8: $fe $7f
	db $ed                                           ; $43ca: $ed
	rst SubAFromBC                                          ; $43cb: $e7
	xor h                                            ; $43cc: $ac
	add b                                            ; $43cd: $80
	rst SubAFromBC                                          ; $43ce: $e7
	ld l, $e5                                        ; $43cf: $2e $e5
	sbc $c5                                          ; $43d1: $de $c5
	ld a, [hl-]                                      ; $43d3: $3a
	dec c                                            ; $43d4: $0d
	add hl, sp                                       ; $43d5: $39
	dec c                                            ; $43d6: $0d
	ld a, l                                          ; $43d7: $7d
	add hl, bc                                       ; $43d8: $09
	ld [hl], e                                       ; $43d9: $73
	add hl, de                                       ; $43da: $19
	ldh a, [c]                                       ; $43db: $f2
	dec de                                           ; $43dc: $1b
	db $eb                                           ; $43dd: $eb
	ld [hl-], a                                      ; $43de: $32
	db $e3                                           ; $43df: $e3
	halt                                             ; $43e0: $76
	xor l                                            ; $43e1: $ad
	or $37                                           ; $43e2: $f6 $37
	db $ec                                           ; $43e4: $ec
	ld d, [hl]                                       ; $43e5: $56
	db $ed                                           ; $43e6: $ed
	ld c, b                                          ; $43e7: $48
	rst $38                                          ; $43e8: $ff
	adc b                                            ; $43e9: $88
	rst $38                                          ; $43ea: $ff
	sbc c                                            ; $43eb: $99
	rst $38                                          ; $43ec: $ff
	sub a                                            ; $43ed: $97
	ld de, $32ff                                     ; $43ee: $11 $ff $32
	rst $38                                          ; $43f1: $ff
	ld h, h                                          ; $43f2: $64
	rst $38                                          ; $43f3: $ff
	db $ed                                           ; $43f4: $ed
	cp a                                             ; $43f5: $bf
	ld d, e                                          ; $43f6: $53
	ld b, b                                          ; $43f7: $40
	sub d                                            ; $43f8: $92
	ldh [$e3], a                                     ; $43f9: $e0 $e3
	jp $87cf                                         ; $43fb: $c3 $cf $87


	ld e, [hl]                                       ; $43fe: $5e
	sbc $4b                                          ; $43ff: $de $4b
	jp z, $c363                                      ; $4401: $ca $63 $c3

	ld h, b                                          ; $4404: $60
	pop bc                                           ; $4405: $c1
	ld l, a                                          ; $4406: $6f
	ld b, b                                          ; $4407: $40
	ld d, a                                          ; $4408: $57
	ld h, b                                          ; $4409: $60
	sub c                                            ; $440a: $91
	xor $13                                          ; $440b: $ee $13
	rst $38                                          ; $440d: $ff
	add c                                            ; $440e: $81
	rst $38                                          ; $440f: $ff
	pop bc                                           ; $4410: $c1
	ld a, b                                          ; $4411: $78
	ld h, b                                          ; $4412: $60
	ldh [$e0], a                                     ; $4413: $e0 $e0
	and b                                            ; $4415: $a0
	ldh [$e0], a                                     ; $4416: $e0 $e0
	ld b, b                                          ; $4418: $40
	scf                                              ; $4419: $37
	ld h, b                                          ; $441a: $60
	sub [hl]                                         ; $441b: $96
	rst $38                                          ; $441c: $ff
	db $10                                           ; $441d: $10
	ei                                               ; $441e: $fb
	rlca                                             ; $441f: $07
	rst FarCall                                          ; $4420: $f7
	rrca                                             ; $4421: $0f
	ld a, $0a                                        ; $4422: $3e $0a
	inc bc                                           ; $4424: $03
	dec hl                                           ; $4425: $2b
	ld h, b                                          ; $4426: $60
	ld a, [hl]                                       ; $4427: $7e
	xor d                                            ; $4428: $aa
	sub [hl]                                         ; $4429: $96
	ld sp, hl                                        ; $442a: $f9
	adc a                                            ; $442b: $8f
	db $fc                                           ; $442c: $fc
	rst SubAFromBC                                          ; $442d: $e7
	ld a, [hl]                                       ; $442e: $7e
	scf                                              ; $442f: $37
	db $fd                                           ; $4430: $fd
	ld a, a                                          ; $4431: $7f
	db $ec                                           ; $4432: $ec
	ld l, e                                          ; $4433: $6b
	ld h, b                                          ; $4434: $60
	ld c, a                                          ; $4435: $4f
	add b                                            ; $4436: $80
	sub e                                            ; $4437: $93
	ldh [$c0], a                                     ; $4438: $e0 $c0
	ret nz                                           ; $443a: $c0

	add b                                            ; $443b: $80
	ld b, e                                          ; $443c: $43
	jp $c74f                                         ; $443d: $c3 $4f $c7


	ld a, [hl]                                       ; $4440: $7e
	sbc $65                                          ; $4441: $de $65
	rst JumpTable                                          ; $4443: $c7
	inc sp                                           ; $4444: $33
	add b                                            ; $4445: $80
	sbc b                                            ; $4446: $98
	ld bc, $017f                                     ; $4447: $01 $7f $01
	ld hl, sp-$80                                    ; $444a: $f8 $80
	ldh [$c0], a                                     ; $444c: $e0 $c0
	halt                                             ; $444e: $76
	sbc $2f                                          ; $444f: $de $2f
	add b                                            ; $4451: $80
	sub e                                            ; $4452: $93
	rst $38                                          ; $4453: $ff
	nop                                              ; $4454: $00
	rst $38                                          ; $4455: $ff
	nop                                              ; $4456: $00
	dec sp                                           ; $4457: $3b
	inc bc                                           ; $4458: $03
	rlca                                             ; $4459: $07
	rlca                                             ; $445a: $07
	rrca                                             ; $445b: $0f
	ld c, $02                                        ; $445c: $0e $02
	inc bc                                           ; $445e: $03
	inc sp                                           ; $445f: $33
	add b                                            ; $4460: $80
	sub h                                            ; $4461: $94
	rrca                                             ; $4462: $0f
	db $fc                                           ; $4463: $fc
	rlca                                             ; $4464: $07
	cp $87                                           ; $4465: $fe $87
	db $fd                                           ; $4467: $fd
	rst SubAFromBC                                          ; $4468: $e7
	inc a                                            ; $4469: $3c
	ld a, a                                          ; $446a: $7f
	ld a, $f5                                        ; $446b: $3e $f5
	cpl                                              ; $446d: $2f
	add b                                            ; $446e: $80
	sub l                                            ; $446f: $95
	ld b, b                                          ; $4470: $40
	ret nz                                           ; $4471: $c0

	ld b, a                                          ; $4472: $47
	ret nz                                           ; $4473: $c0

	ld a, b                                          ; $4474: $78
	ret c                                            ; $4475: $d8

	ld l, a                                          ; $4476: $6f
	rst GetHLinHL                                          ; $4477: $cf
	ld h, a                                          ; $4478: $67
	rst SubAFromBC                                          ; $4479: $e7
	cpl                                              ; $447a: $2f
	add b                                            ; $447b: $80
	sbc h                                            ; $447c: $9c
	jr c, jr_06e_447f                                ; $447d: $38 $00

jr_06e_447f:
	add b                                            ; $447f: $80
	cp $df                                           ; $4480: $fe $df
	ldh [$9d], a                                     ; $4482: $e0 $9d
	db $e3                                           ; $4484: $e3
	ret nz                                           ; $4485: $c0

	daa                                              ; $4486: $27
	add b                                            ; $4487: $80
	ld a, a                                          ; $4488: $7f
	sbc $9e                                          ; $4489: $de $9e
	inc bc                                           ; $448b: $03
	cp $9b                                           ; $448c: $fe $9b
	rrca                                             ; $448e: $0f
	rlca                                             ; $448f: $07
	add a                                            ; $4490: $87
	inc bc                                           ; $4491: $03
	dec hl                                           ; $4492: $2b
	add b                                            ; $4493: $80
	sub d                                            ; $4494: $92
	rlca                                             ; $4495: $07
	dec a                                            ; $4496: $3d
	rst JumpTable                                          ; $4497: $c7
	inc e                                            ; $4498: $1c
	daa                                              ; $4499: $27
	cp $fd                                           ; $449a: $fe $fd
	cp $f5                                           ; $449c: $fe $f5
	ld a, [hl-]                                      ; $449e: $3a
	dec c                                            ; $449f: $0d
	dec b                                            ; $44a0: $05
	ld b, $7b                                        ; $44a1: $06 $7b
	sub $99                                          ; $44a3: $d6 $99
	rrca                                             ; $44a5: $0f
	ld [$0708], sp                                   ; $44a6: $08 $08 $07
	inc b                                            ; $44a9: $04
	rlca                                             ; $44aa: $07
	ld a, e                                          ; $44ab: $7b
	ret nc                                           ; $44ac: $d0

	rst SubAFromDE                                          ; $44ad: $df
	ret nz                                           ; $44ae: $c0

	rst SubAFromDE                                          ; $44af: $df
	ldh [$98], a                                     ; $44b0: $e0 $98
	ld a, b                                          ; $44b2: $78
	ldh a, [$fe]                                     ; $44b3: $f0 $fe
	reti                                             ; $44b5: $d9


	rst $38                                          ; $44b6: $ff
	rst JumpTable                                          ; $44b7: $c7
	db $e3                                           ; $44b8: $e3
	db $dd                                           ; $44b9: $dd
	ret nz                                           ; $44ba: $c0

	sbc l                                            ; $44bb: $9d
	ld b, b                                          ; $44bc: $40
	add b                                            ; $44bd: $80
	ld [hl], a                                       ; $44be: $77
	sub l                                            ; $44bf: $95
	ld a, a                                          ; $44c0: $7f
	sub b                                            ; $44c1: $90
	ld a, e                                          ; $44c2: $7b
	or $7f                                           ; $44c3: $f6 $7f
	ld l, b                                          ; $44c5: $68
	adc c                                            ; $44c6: $89
	add c                                            ; $44c7: $81
	add b                                            ; $44c8: $80
	inc bc                                           ; $44c9: $03
	nop                                              ; $44ca: $00
	rlca                                             ; $44cb: $07
	inc bc                                           ; $44cc: $03
	ld e, $0f                                        ; $44cd: $1e $0f
	ld a, [hl]                                       ; $44cf: $7e
	ccf                                              ; $44d0: $3f
	cp $ff                                           ; $44d1: $fe $ff
	cp $f3                                           ; $44d3: $fe $f3
	rst $38                                          ; $44d5: $ff
	inc bc                                           ; $44d6: $03
	rst $38                                          ; $44d7: $ff
	inc bc                                           ; $44d8: $03
	ld a, $03                                        ; $44d9: $3e $03
	dec e                                            ; $44db: $1d
	rlca                                             ; $44dc: $07
	ld h, e                                          ; $44dd: $63
	ret nz                                           ; $44de: $c0

	rst SubAFromDE                                          ; $44df: $df
	rlca                                             ; $44e0: $07
	ld a, e                                          ; $44e1: $7b
	sub d                                            ; $44e2: $92
	sbc [hl]                                         ; $44e3: $9e
	jp $c02b                                         ; $44e4: $c3 $2b $c0


	rst SubAFromDE                                          ; $44e7: $df
	ld b, b                                          ; $44e8: $40
	ld a, e                                          ; $44e9: $7b
	ret nz                                           ; $44ea: $c0

	ld a, e                                          ; $44eb: $7b
	ld l, d                                          ; $44ec: $6a
	daa                                              ; $44ed: $27
	ret nz                                           ; $44ee: $c0

	rst SubAFromDE                                          ; $44ef: $df
	inc c                                            ; $44f0: $0c
	ld a, e                                          ; $44f1: $7b
	pop bc                                           ; $44f2: $c1
	ld a, e                                          ; $44f3: $7b
	jr z, jr_06e_451d                                ; $44f4: $28 $27

	ret nz                                           ; $44f6: $c0

	sbc $c0                                          ; $44f7: $de $c0
	sbc l                                            ; $44f9: $9d
	add b                                            ; $44fa: $80
	ld bc, $c017                                     ; $44fb: $01 $17 $c0
	sbc l                                            ; $44fe: $9d
	inc b                                            ; $44ff: $04
	inc bc                                           ; $4500: $03
	ld a, e                                          ; $4501: $7b
	dec c                                            ; $4502: $0d
	sbc l                                            ; $4503: $9d
	add e                                            ; $4504: $83
	nop                                              ; $4505: $00
	inc hl                                           ; $4506: $23
	ld b, b                                          ; $4507: $40
	ld a, e                                          ; $4508: $7b
	ld hl, sp+$2f                                    ; $4509: $f8 $2f
	ret nz                                           ; $450b: $c0

	rst $38                                          ; $450c: $ff
	ld bc, $1b80                                     ; $450d: $01 $80 $1b
	db $fc                                           ; $4510: $fc
	ldh [rIE], a                                     ; $4511: $e0 $ff
	ld b, e                                          ; $4513: $43
	ld a, a                                          ; $4514: $7f
	db $fd                                           ; $4515: $fd
	rst $38                                          ; $4516: $ff
	ld [de], a                                       ; $4517: $12
	rra                                              ; $4518: $1f
	inc h                                            ; $4519: $24
	ccf                                              ; $451a: $3f
	jr c, jr_06e_454c                                ; $451b: $38 $2f

jr_06e_451d:
	ld l, a                                          ; $451d: $6f
	ld e, a                                          ; $451e: $5f
	call nc, $a9bb                                   ; $451f: $d4 $bb $a9
	rst FarCall                                          ; $4522: $f7
	jp hl                                            ; $4523: $e9


	ld [hl], a                                       ; $4524: $77
	ldh a, [c]                                       ; $4525: $f2
	ccf                                              ; $4526: $3f
	ldh a, [c]                                       ; $4527: $f2
	rra                                              ; $4528: $1f
	db $fd                                           ; $4529: $fd
	ld c, $fd                                        ; $452a: $0e $fd
	ld b, $ff                                        ; $452c: $06 $ff
	sbc c                                            ; $452e: $99
	inc b                                            ; $452f: $04
	ld a, [hl]                                       ; $4530: $7e
	inc b                                            ; $4531: $04
	ld a, [hl-]                                      ; $4532: $3a
	inc c                                            ; $4533: $0c
	add hl, de                                       ; $4534: $19
	ld a, e                                          ; $4535: $7b
	cp $96                                           ; $4536: $fe $96
	add hl, bc                                       ; $4538: $09
	inc c                                            ; $4539: $0c
	dec bc                                           ; $453a: $0b
	inc c                                            ; $453b: $0c
	ld c, $05                                        ; $453c: $0e $05
	inc c                                            ; $453e: $0c
	rlca                                             ; $453f: $07
	dec b                                            ; $4540: $05
	ld [hl], e                                       ; $4541: $73
	cp $9e                                           ; $4542: $fe $9e
	sub l                                            ; $4544: $95
	ld a, e                                          ; $4545: $7b
	cp $80                                           ; $4546: $fe $80
	jp nc, $f203                                     ; $4548: $d2 $03 $f2

	add e                                            ; $454b: $83

jr_06e_454c:
	rst FarCall                                          ; $454c: $f7
	add a                                            ; $454d: $87
	inc l                                            ; $454e: $2c
	di                                               ; $454f: $f3
	reti                                             ; $4550: $d9


	rst SubAFromBC                                          ; $4551: $e7
	or e                                             ; $4552: $b3
	adc $04                                          ; $4553: $ce $04
	rst $38                                          ; $4555: $ff
	dec bc                                           ; $4556: $0b
	rst $38                                          ; $4557: $ff
	ccf                                              ; $4558: $3f
	db $fc                                           ; $4559: $fc
	ld a, a                                          ; $455a: $7f
	ldh [$e3], a                                     ; $455b: $e0 $e3
	jp $87cf                                         ; $455d: $c3 $cf $87


	ld e, [hl]                                       ; $4560: $5e
	sbc $4b                                          ; $4561: $de $4b
	jp z, $c363                                      ; $4563: $ca $63 $c3

	ld h, b                                          ; $4566: $60
	add d                                            ; $4567: $82
	pop bc                                           ; $4568: $c1
	ld h, e                                          ; $4569: $63
	pop hl                                           ; $456a: $e1
	ld h, b                                          ; $456b: $60
	ldh [$60], a                                     ; $456c: $e0 $60
	ldh [rSVBK], a                                   ; $456e: $e0 $70
	ldh [$50], a                                     ; $4570: $e0 $50
	ldh a, [$58]                                     ; $4572: $f0 $58
	ldh a, [$9c]                                     ; $4574: $f0 $9c
	ld hl, sp-$52                                    ; $4576: $f8 $ae
	call c, $deaf                                    ; $4578: $dc $af $de
	or e                                             ; $457b: $b3
	rst SubAFromDE                                          ; $457c: $df
	cp c                                             ; $457d: $b9
	rst SubAFromDE                                          ; $457e: $df
	cp $57                                           ; $457f: $fe $57
	rst SubAFromDE                                          ; $4581: $df
	ld [hl], c                                       ; $4582: $71
	rst SubAFromDE                                          ; $4583: $df
	ld [hl], b                                       ; $4584: $70
	ld a, e                                          ; $4585: $7b
	cp $80                                           ; $4586: $fe $80
	ld [hl], c                                       ; $4588: $71
	rst $38                                          ; $4589: $ff
	or a                                             ; $458a: $b7
	db $fc                                           ; $458b: $fc
	cp h                                             ; $458c: $bc
	db $f4                                           ; $458d: $f4
	ldh a, [$ed]                                     ; $458e: $f0 $ed
	cp a                                             ; $4590: $bf
	db $ed                                           ; $4591: $ed
	ccf                                              ; $4592: $3f
	db $ed                                           ; $4593: $ed
	ccf                                              ; $4594: $3f
	ld a, l                                          ; $4595: $7d
	or a                                             ; $4596: $b7
	sbc h                                            ; $4597: $9c
	rst FarCall                                          ; $4598: $f7
	cp $73                                           ; $4599: $fe $73
	cp $13                                           ; $459b: $fe $13
	rst $38                                          ; $459d: $ff
	add c                                            ; $459e: $81
	rst $38                                          ; $459f: $ff
	pop bc                                           ; $45a0: $c1
	ld a, b                                          ; $45a1: $78
	ld h, b                                          ; $45a2: $60
	ldh [$e0], a                                     ; $45a3: $e0 $e0
	and b                                            ; $45a5: $a0
	ldh [$80], a                                     ; $45a6: $e0 $80
	ldh [rLCDC], a                                   ; $45a8: $e0 $40
	jp $0580                                         ; $45aa: $c3 $80 $05


	ld [bc], a                                       ; $45ad: $02
	dec c                                            ; $45ae: $0d
	ld b, $24                                        ; $45af: $06 $24
	rst $38                                          ; $45b1: $ff
	ld h, $ff                                        ; $45b2: $26 $ff
	scf                                              ; $45b4: $37
	db $fd                                           ; $45b5: $fd
	scf                                              ; $45b6: $37
	db $fd                                           ; $45b7: $fd
	cp h                                             ; $45b8: $bc
	rst AddAOntoHL                                          ; $45b9: $ef
	rst SubAFromBC                                          ; $45ba: $e7
	ld a, a                                          ; $45bb: $7f
	rst $38                                          ; $45bc: $ff
	jr nc, @+$01                                     ; $45bd: $30 $ff

	db $10                                           ; $45bf: $10
	ei                                               ; $45c0: $fb
	rlca                                             ; $45c1: $07
	rst FarCall                                          ; $45c2: $f7
	rrca                                             ; $45c3: $0f
	ld a, $0a                                        ; $45c4: $3e $0a
	inc bc                                           ; $45c6: $03
	add b                                            ; $45c7: $80
	inc bc                                           ; $45c8: $03
	ld bc, $0303                                     ; $45c9: $01 $03 $03
	ld [bc], a                                       ; $45cc: $02
	add a                                            ; $45cd: $87
	ld bc, $0080                                     ; $45ce: $01 $80 $00
	jp c, $d56d                                      ; $45d1: $da $6d $d5

	ld l, [hl]                                       ; $45d4: $6e
	ld a, l                                          ; $45d5: $7d
	and [hl]                                         ; $45d6: $a6
	ld l, [hl]                                       ; $45d7: $6e
	or e                                             ; $45d8: $b3
	sub l                                            ; $45d9: $95
	ei                                               ; $45da: $fb
	jp z, $e4fd                                      ; $45db: $ca $fd $e4

	ld a, a                                          ; $45de: $7f
	ldh a, [c]                                       ; $45df: $f2
	rra                                              ; $45e0: $1f
	ld sp, hl                                        ; $45e1: $f9
	adc a                                            ; $45e2: $8f
	db $fc                                           ; $45e3: $fc
	rst SubAFromBC                                          ; $45e4: $e7
	ld a, [hl]                                       ; $45e5: $7e
	scf                                              ; $45e6: $37
	add b                                            ; $45e7: $80
	db $fd                                           ; $45e8: $fd
	ld a, a                                          ; $45e9: $7f
	db $ec                                           ; $45ea: $ec
	rst SubAFromBC                                          ; $45eb: $e7
	ld l, $e5                                        ; $45ec: $2e $e5
	sbc $c5                                          ; $45ee: $de $c5
	ld a, [hl-]                                      ; $45f0: $3a
	dec c                                            ; $45f1: $0d
	add hl, sp                                       ; $45f2: $39
	dec c                                            ; $45f3: $0d
	ld a, l                                          ; $45f4: $7d
	add hl, bc                                       ; $45f5: $09
	ld [hl], e                                       ; $45f6: $73
	add hl, de                                       ; $45f7: $19
	ldh a, [c]                                       ; $45f8: $f2
	dec de                                           ; $45f9: $1b
	db $eb                                           ; $45fa: $eb
	ld [hl-], a                                      ; $45fb: $32
	db $e3                                           ; $45fc: $e3
	halt                                             ; $45fd: $76
	xor l                                            ; $45fe: $ad
	or $37                                           ; $45ff: $f6 $37
	db $ec                                           ; $4601: $ec
	ld d, [hl]                                       ; $4602: $56
	db $ed                                           ; $4603: $ed
	ld c, b                                          ; $4604: $48
	rst $38                                          ; $4605: $ff
	adc b                                            ; $4606: $88
	sub h                                            ; $4607: $94
	rst $38                                          ; $4608: $ff
	sbc c                                            ; $4609: $99
	rst $38                                          ; $460a: $ff
	ld de, $32ff                                     ; $460b: $11 $ff $32
	rst $38                                          ; $460e: $ff
	ld h, h                                          ; $460f: $64
	rst $38                                          ; $4610: $ff
	db $ed                                           ; $4611: $ed
	cp a                                             ; $4612: $bf
	ld c, a                                          ; $4613: $4f
	ld b, b                                          ; $4614: $40
	sub e                                            ; $4615: $93
	ldh [$c0], a                                     ; $4616: $e0 $c0
	jp $4f83                                         ; $4618: $c3 $83 $4f


	rst JumpTable                                          ; $461b: $c7
	ld e, [hl]                                       ; $461c: $5e
	sbc $6b                                          ; $461d: $de $6b
	jp z, $c361                                      ; $461f: $ca $61 $c3

	ld l, a                                          ; $4622: $6f
	ld b, b                                          ; $4623: $40
	ld c, e                                          ; $4624: $4b
	ld h, b                                          ; $4625: $60
	sbc d                                            ; $4626: $9a
	ld bc, $81ff                                     ; $4627: $01 $ff $81
	ld hl, sp-$40                                    ; $462a: $f8 $c0
	db $dd                                           ; $462c: $dd
	ldh [$7f], a                                     ; $462d: $e0 $7f
	and $2f                                          ; $462f: $e6 $2f
	ld h, b                                          ; $4631: $60
	sub [hl]                                         ; $4632: $96
	rst $38                                          ; $4633: $ff
	nop                                              ; $4634: $00
	rst $38                                          ; $4635: $ff
	rlca                                             ; $4636: $07
	ccf                                              ; $4637: $3f
	rrca                                             ; $4638: $0f
	ld b, $02                                        ; $4639: $06 $02
	rlca                                             ; $463b: $07
	daa                                              ; $463c: $27
	ld h, b                                          ; $463d: $60
	sub [hl]                                         ; $463e: $96
	rrca                                             ; $463f: $0f
	db $fc                                           ; $4640: $fc
	add a                                            ; $4641: $87
	cp $e7                                           ; $4642: $fe $e7
	ld a, l                                          ; $4644: $7d
	scf                                              ; $4645: $37
	db $fc                                           ; $4646: $fc
	rst $38                                          ; $4647: $ff
	ld l, a                                          ; $4648: $6f
	ld h, b                                          ; $4649: $60
	ld b, a                                          ; $464a: $47
	add b                                            ; $464b: $80
	sub l                                            ; $464c: $95
	ret nz                                           ; $464d: $c0

	add b                                            ; $464e: $80
	ld b, e                                          ; $464f: $43
	jp $c74f                                         ; $4650: $c3 $4f $c7


	ld a, [hl]                                       ; $4653: $7e
	sbc $65                                          ; $4654: $de $65
	rst JumpTable                                          ; $4656: $c7
	cpl                                              ; $4657: $2f
	add b                                            ; $4658: $80
	sbc d                                            ; $4659: $9a
	ld a, a                                          ; $465a: $7f
	ld bc, $80f8                                     ; $465b: $01 $f8 $80
	ldh [$7b], a                                     ; $465e: $e0 $7b
	ld a, [hl]                                       ; $4660: $7e
	dec de                                           ; $4661: $1b
	add b                                            ; $4662: $80
	sub [hl]                                         ; $4663: $96
	nop                                              ; $4664: $00
	dec sp                                           ; $4665: $3b
	inc bc                                           ; $4666: $03
	rlca                                             ; $4667: $07
	rlca                                             ; $4668: $07
	rrca                                             ; $4669: $0f
	ld c, $02                                        ; $466a: $0e $02
	inc bc                                           ; $466c: $03
	dec hl                                           ; $466d: $2b
	add b                                            ; $466e: $80
	sub [hl]                                         ; $466f: $96
	rlca                                             ; $4670: $07
	cp $87                                           ; $4671: $fe $87
	db $fd                                           ; $4673: $fd
	rst SubAFromBC                                          ; $4674: $e7
	inc a                                            ; $4675: $3c
	ld a, a                                          ; $4676: $7f
	ld a, $f5                                        ; $4677: $3e $f5
	cpl                                              ; $4679: $2f
	add b                                            ; $467a: $80
	sub l                                            ; $467b: $95
	ld b, b                                          ; $467c: $40
	ret nz                                           ; $467d: $c0

	ld b, a                                          ; $467e: $47
	ret nz                                           ; $467f: $c0

	ld a, b                                          ; $4680: $78
	ret c                                            ; $4681: $d8

	ld l, a                                          ; $4682: $6f
	rst GetHLinHL                                          ; $4683: $cf
	ld h, a                                          ; $4684: $67
	rst SubAFromBC                                          ; $4685: $e7
	cpl                                              ; $4686: $2f
	add b                                            ; $4687: $80
	sbc h                                            ; $4688: $9c
	jr c, jr_06e_468b                                ; $4689: $38 $00

jr_06e_468b:
	add b                                            ; $468b: $80
	cp $df                                           ; $468c: $fe $df
	ldh [$9d], a                                     ; $468e: $e0 $9d
	db $e3                                           ; $4690: $e3
	ret nz                                           ; $4691: $c0

	daa                                              ; $4692: $27
	add b                                            ; $4693: $80
	ld a, a                                          ; $4694: $7f
	sbc $9e                                          ; $4695: $de $9e
	inc bc                                           ; $4697: $03
	cp $9b                                           ; $4698: $fe $9b
	rrca                                             ; $469a: $0f
	rlca                                             ; $469b: $07
	add a                                            ; $469c: $87
	inc bc                                           ; $469d: $03
	dec hl                                           ; $469e: $2b
	add b                                            ; $469f: $80
	sub d                                            ; $46a0: $92
	rlca                                             ; $46a1: $07
	dec a                                            ; $46a2: $3d
	rst JumpTable                                          ; $46a3: $c7
	inc e                                            ; $46a4: $1c
	daa                                              ; $46a5: $27
	cp $fd                                           ; $46a6: $fe $fd
	cp $f5                                           ; $46a8: $fe $f5
	ld a, [hl-]                                      ; $46aa: $3a
	dec c                                            ; $46ab: $0d
	dec b                                            ; $46ac: $05
	ld b, $7b                                        ; $46ad: $06 $7b
	sub $9c                                          ; $46af: $d6 $9c
	rrca                                             ; $46b1: $0f
	ld [$de08], sp                                   ; $46b2: $08 $08 $de
	rlca                                             ; $46b5: $07
	ld a, e                                          ; $46b6: $7b
	jp nc, $c39e                                     ; $46b7: $d2 $9e $c3

	ld a, e                                          ; $46ba: $7b
	ld h, $98                                        ; $46bb: $26 $98
	ld a, b                                          ; $46bd: $78
	ldh a, [$fe]                                     ; $46be: $f0 $fe
	reti                                             ; $46c0: $d9


	rst $38                                          ; $46c1: $ff
	rst JumpTable                                          ; $46c2: $c7
	db $e3                                           ; $46c3: $e3
	db $dd                                           ; $46c4: $dd
	ret nz                                           ; $46c5: $c0

	sbc l                                            ; $46c6: $9d
	ld b, b                                          ; $46c7: $40
	add b                                            ; $46c8: $80
	ld [hl], a                                       ; $46c9: $77
	sub l                                            ; $46ca: $95
	ld a, a                                          ; $46cb: $7f
	sub b                                            ; $46cc: $90
	ld a, a                                          ; $46cd: $7f
	rst FarCall                                          ; $46ce: $f7
	ld a, a                                          ; $46cf: $7f
	ld l, e                                          ; $46d0: $6b
	sbc l                                            ; $46d1: $9d
	add b                                            ; $46d2: $80
	add c                                            ; $46d3: $81
	ld a, e                                          ; $46d4: $7b
	xor d                                            ; $46d5: $aa
	ld a, a                                          ; $46d6: $7f
	call c, $1e8f                                    ; $46d7: $dc $8f $1e
	rrca                                             ; $46da: $0f
	ld a, [hl]                                       ; $46db: $7e
	ccf                                              ; $46dc: $3f
	cp $ff                                           ; $46dd: $fe $ff
	cp $f3                                           ; $46df: $fe $f3
	rst $38                                          ; $46e1: $ff
	inc bc                                           ; $46e2: $03
	rst $38                                          ; $46e3: $ff
	inc bc                                           ; $46e4: $03
	ld a, $03                                        ; $46e5: $3e $03
	dec e                                            ; $46e7: $1d
	rlca                                             ; $46e8: $07
	ld e, a                                          ; $46e9: $5f
	ret nz                                           ; $46ea: $c0

	ld a, a                                          ; $46eb: $7f
	ldh [c], a                                       ; $46ec: $e2
	rrca                                             ; $46ed: $0f
	ret nz                                           ; $46ee: $c0

	sbc [hl]                                         ; $46ef: $9e
	ld bc, $c01b                                     ; $46f0: $01 $1b $c0
	rst SubAFromDE                                          ; $46f3: $df
	inc b                                            ; $46f4: $04
	rst SubAFromDE                                          ; $46f5: $df
	inc bc                                           ; $46f6: $03
	rst $38                                          ; $46f7: $ff
	sbc h                                            ; $46f8: $9c
	add e                                            ; $46f9: $83
	nop                                              ; $46fa: $00
	ret nz                                           ; $46fb: $c0

	dec hl                                           ; $46fc: $2b
	ret nz                                           ; $46fd: $c0

	ld [hl], a                                       ; $46fe: $77
	ld hl, sp+$17                                    ; $46ff: $f8 $17
	ret nz                                           ; $4701: $c0

	rst SubAFromDE                                          ; $4702: $df
	rlca                                             ; $4703: $07
	rst $38                                          ; $4704: $ff
	ld [hl], a                                       ; $4705: $77
	add b                                            ; $4706: $80
	inc bc                                           ; $4707: $03
	ret nz                                           ; $4708: $c0

	ld b, e                                          ; $4709: $43
	ret nz                                           ; $470a: $c0

	db $f4                                           ; $470b: $f4
	ld bc, $1b80                                     ; $470c: $01 $80 $1b
	db $fc                                           ; $470f: $fc
	ldh [rIE], a                                     ; $4710: $e0 $ff
	ld b, e                                          ; $4712: $43
	ld a, a                                          ; $4713: $7f
	db $fd                                           ; $4714: $fd
	rst $38                                          ; $4715: $ff
	ld [de], a                                       ; $4716: $12
	rra                                              ; $4717: $1f
	inc h                                            ; $4718: $24
	ccf                                              ; $4719: $3f
	jr c, jr_06e_474b                                ; $471a: $38 $2f

	ld l, a                                          ; $471c: $6f
	ld e, a                                          ; $471d: $5f
	call nc, $a9bb                                   ; $471e: $d4 $bb $a9
	rst FarCall                                          ; $4721: $f7
	jp hl                                            ; $4722: $e9


	ld [hl], a                                       ; $4723: $77
	ldh a, [c]                                       ; $4724: $f2
	ccf                                              ; $4725: $3f
	ldh a, [c]                                       ; $4726: $f2
	rra                                              ; $4727: $1f
	db $fd                                           ; $4728: $fd
	ld c, $fd                                        ; $4729: $0e $fd
	ld b, $ff                                        ; $472b: $06 $ff
	sbc c                                            ; $472d: $99
	inc b                                            ; $472e: $04
	ld a, [hl]                                       ; $472f: $7e
	inc b                                            ; $4730: $04
	ld a, [hl-]                                      ; $4731: $3a
	inc c                                            ; $4732: $0c
	add hl, de                                       ; $4733: $19
	ld a, e                                          ; $4734: $7b
	cp $96                                           ; $4735: $fe $96
	add hl, bc                                       ; $4737: $09
	inc c                                            ; $4738: $0c
	dec bc                                           ; $4739: $0b
	inc c                                            ; $473a: $0c
	ld c, $05                                        ; $473b: $0e $05
	inc c                                            ; $473d: $0c
	rlca                                             ; $473e: $07
	dec b                                            ; $473f: $05
	ld [hl], e                                       ; $4740: $73
	cp $9e                                           ; $4741: $fe $9e
	sub l                                            ; $4743: $95
	ld a, e                                          ; $4744: $7b
	cp $80                                           ; $4745: $fe $80
	jp nc, $f203                                     ; $4747: $d2 $03 $f2

	add e                                            ; $474a: $83

jr_06e_474b:
	rst FarCall                                          ; $474b: $f7
	add a                                            ; $474c: $87
	inc l                                            ; $474d: $2c
	di                                               ; $474e: $f3
	reti                                             ; $474f: $d9


	rst SubAFromBC                                          ; $4750: $e7
	or e                                             ; $4751: $b3
	adc $07                                          ; $4752: $ce $07
	db $fc                                           ; $4754: $fc
	ld [$3fff], sp                                   ; $4755: $08 $ff $3f
	rst $38                                          ; $4758: $ff
	ld a, a                                          ; $4759: $7f
	ldh [$e3], a                                     ; $475a: $e0 $e3
	jp $87cf                                         ; $475c: $c3 $cf $87


	ld e, [hl]                                       ; $475f: $5e
	sbc $4b                                          ; $4760: $de $4b
	jp z, $c363                                      ; $4762: $ca $63 $c3

	ld h, e                                          ; $4765: $63
	add d                                            ; $4766: $82
	jp nz, $e163                                     ; $4767: $c2 $63 $e1

	ld h, b                                          ; $476a: $60
	ldh [$60], a                                     ; $476b: $e0 $60
	ldh [rSVBK], a                                   ; $476d: $e0 $70
	ldh [$50], a                                     ; $476f: $e0 $50
	ldh a, [$58]                                     ; $4771: $f0 $58
	ldh a, [$9c]                                     ; $4773: $f0 $9c
	ld hl, sp-$52                                    ; $4775: $f8 $ae
	call c, $deaf                                    ; $4777: $dc $af $de
	or e                                             ; $477a: $b3
	rst SubAFromDE                                          ; $477b: $df
	cp c                                             ; $477c: $b9
	rst SubAFromDE                                          ; $477d: $df
	cp $57                                           ; $477e: $fe $57
	rst SubAFromDE                                          ; $4780: $df
	ld [hl], c                                       ; $4781: $71
	rst SubAFromDE                                          ; $4782: $df
	ld [hl], b                                       ; $4783: $70
	ld a, e                                          ; $4784: $7b
	cp $80                                           ; $4785: $fe $80
	ld [hl], c                                       ; $4787: $71
	rst $38                                          ; $4788: $ff
	or a                                             ; $4789: $b7
	db $fc                                           ; $478a: $fc
	cp h                                             ; $478b: $bc
	db $f4                                           ; $478c: $f4
	ldh a, [$ed]                                     ; $478d: $f0 $ed

Jump_06e_478f:
	cp a                                             ; $478f: $bf
	db $ed                                           ; $4790: $ed
	ccf                                              ; $4791: $3f
	db $ed                                           ; $4792: $ed
	ccf                                              ; $4793: $3f
	db $dd                                           ; $4794: $dd
	scf                                              ; $4795: $37
	db $fc                                           ; $4796: $fc
	rla                                              ; $4797: $17
	ld a, $d3                                        ; $4798: $3e $d3
	adc $f3                                          ; $479a: $ce $f3
	rst $38                                          ; $479c: $ff
	ld sp, $c1ff                                     ; $479d: $31 $ff $c1
	ld a, b                                          ; $47a0: $78
	ld h, b                                          ; $47a1: $60
	ldh [$e0], a                                     ; $47a2: $e0 $e0
	and b                                            ; $47a4: $a0
	ldh [$80], a                                     ; $47a5: $e0 $80
	ld h, b                                          ; $47a7: $60
	ret nz                                           ; $47a8: $c0

	jp $0580                                         ; $47a9: $c3 $80 $05


	ld [bc], a                                       ; $47ac: $02
	dec c                                            ; $47ad: $0d
	ld b, $24                                        ; $47ae: $06 $24
	rst $38                                          ; $47b0: $ff
	ld h, $ff                                        ; $47b1: $26 $ff
	scf                                              ; $47b3: $37
	db $fd                                           ; $47b4: $fd
	scf                                              ; $47b5: $37
	db $fd                                           ; $47b6: $fd
	cp [hl]                                          ; $47b7: $be
	db $ed                                           ; $47b8: $ed
	push af                                          ; $47b9: $f5
	ld l, a                                          ; $47ba: $6f
	rst AddAOntoHL                                          ; $47bb: $ef
	ld a, $ff                                        ; $47bc: $3e $ff
	ld [hl], b                                       ; $47be: $70
	db $fd                                           ; $47bf: $fd
	inc bc                                           ; $47c0: $03
	rst $38                                          ; $47c1: $ff
	rlca                                             ; $47c2: $07
	ld e, $0e                                        ; $47c3: $1e $0e
	rlca                                             ; $47c5: $07
	adc c                                            ; $47c6: $89
	inc bc                                           ; $47c7: $03
	ld bc, $0303                                     ; $47c8: $01 $03 $03
	ld [bc], a                                       ; $47cb: $02
	add a                                            ; $47cc: $87
	ld bc, $0080                                     ; $47cd: $01 $80 $00
	jp c, $d56d                                      ; $47d0: $da $6d $d5

	ld l, [hl]                                       ; $47d3: $6e
	ld a, l                                          ; $47d4: $7d
	and [hl]                                         ; $47d5: $a6
	ld l, [hl]                                       ; $47d6: $6e
	or e                                             ; $47d7: $b3
	sub l                                            ; $47d8: $95
	ei                                               ; $47d9: $fb
	jp z, $e4fd                                      ; $47da: $ca $fd $e4

	ld a, e                                          ; $47dd: $7b
	ld c, d                                          ; $47de: $4a
	add b                                            ; $47df: $80
	cp c                                             ; $47e0: $b9
	rst GetHLinHL                                          ; $47e1: $cf
	db $fc                                           ; $47e2: $fc
	rst SubAFromBC                                          ; $47e3: $e7
	ld a, [hl]                                       ; $47e4: $7e
	ld [hl], a                                       ; $47e5: $77
	db $fd                                           ; $47e6: $fd
	ld a, a                                          ; $47e7: $7f
	xor h                                            ; $47e8: $ac
	rst SubAFromBC                                          ; $47e9: $e7
	ld l, $e5                                        ; $47ea: $2e $e5
	sbc $c5                                          ; $47ec: $de $c5
	ld a, [hl-]                                      ; $47ee: $3a
	dec c                                            ; $47ef: $0d
	add hl, sp                                       ; $47f0: $39
	dec c                                            ; $47f1: $0d
	ld a, l                                          ; $47f2: $7d
	add hl, bc                                       ; $47f3: $09
	ld [hl], e                                       ; $47f4: $73
	add hl, de                                       ; $47f5: $19
	ldh a, [c]                                       ; $47f6: $f2
	dec de                                           ; $47f7: $1b
	db $eb                                           ; $47f8: $eb
	ld [hl-], a                                      ; $47f9: $32
	db $e3                                           ; $47fa: $e3
	halt                                             ; $47fb: $76
	xor l                                            ; $47fc: $ad
	or $37                                           ; $47fd: $f6 $37
	adc [hl]                                         ; $47ff: $8e
	db $ec                                           ; $4800: $ec
	ld d, [hl]                                       ; $4801: $56
	db $ed                                           ; $4802: $ed
	ld c, b                                          ; $4803: $48
	rst $38                                          ; $4804: $ff
	adc b                                            ; $4805: $88
	rst $38                                          ; $4806: $ff
	sbc c                                            ; $4807: $99
	rst $38                                          ; $4808: $ff
	ld de, $32ff                                     ; $4809: $11 $ff $32
	rst $38                                          ; $480c: $ff
	ld h, h                                          ; $480d: $64
	rst $38                                          ; $480e: $ff
	db $ed                                           ; $480f: $ed
	cp a                                             ; $4810: $bf
	ld c, a                                          ; $4811: $4f
	ld b, b                                          ; $4812: $40
	sub [hl]                                         ; $4813: $96
	ldh [$c0], a                                     ; $4814: $e0 $c0
	jp $4f83                                         ; $4816: $c3 $83 $4f


	rst JumpTable                                          ; $4819: $c7
	ld e, [hl]                                       ; $481a: $5e
	sbc $6b                                          ; $481b: $de $6b
	ld [hl], a                                       ; $481d: $77
	ld a, $73                                        ; $481e: $3e $73
	ld b, b                                          ; $4820: $40
	ld b, e                                          ; $4821: $43
	ld h, b                                          ; $4822: $60
	sbc h                                            ; $4823: $9c
	ld bc, $c0f8                                     ; $4824: $01 $f8 $c0
	db $dd                                           ; $4827: $dd
	ldh [$27], a                                     ; $4828: $e0 $27
	ld h, b                                          ; $482a: $60
	sub a                                            ; $482b: $97
	rst $38                                          ; $482c: $ff
	nop                                              ; $482d: $00
	rst $38                                          ; $482e: $ff
	ld bc, $070f                                     ; $482f: $01 $0f $07
	ld b, $06                                        ; $4832: $06 $06
	daa                                              ; $4834: $27
	ld h, b                                          ; $4835: $60
	sub l                                            ; $4836: $95
	ld sp, hl                                        ; $4837: $f9
	rrca                                             ; $4838: $0f
	db $fc                                           ; $4839: $fc
	rst JumpTable                                          ; $483a: $c7
	cp $e7                                           ; $483b: $fe $e7
	db $fd                                           ; $483d: $fd
	ld [hl], a                                       ; $483e: $77
	cp h                                             ; $483f: $bc
	rst $38                                          ; $4840: $ff
	ld l, a                                          ; $4841: $6f
	ld h, b                                          ; $4842: $60
	ld b, a                                          ; $4843: $47
	add b                                            ; $4844: $80
	sub l                                            ; $4845: $95
	ret nz                                           ; $4846: $c0

	add b                                            ; $4847: $80
	ld b, e                                          ; $4848: $43
	jp $c74f                                         ; $4849: $c3 $4f $c7


	ld a, [hl]                                       ; $484c: $7e
	sbc $65                                          ; $484d: $de $65
	rst JumpTable                                          ; $484f: $c7
	cpl                                              ; $4850: $2f
	add b                                            ; $4851: $80
	sbc d                                            ; $4852: $9a
	ld a, a                                          ; $4853: $7f
	ld bc, $80f8                                     ; $4854: $01 $f8 $80
	ldh [$7b], a                                     ; $4857: $e0 $7b
	ld a, [hl]                                       ; $4859: $7e
	ld a, a                                          ; $485a: $7f
	and $27                                          ; $485b: $e6 $27
	add b                                            ; $485d: $80
	sbc d                                            ; $485e: $9a
	pop af                                           ; $485f: $f1
	nop                                              ; $4860: $00
	inc bc                                           ; $4861: $03
	rlca                                             ; $4862: $07
	rrca                                             ; $4863: $0f
	ld a, e                                          ; $4864: $7b
	ld a, l                                          ; $4865: $7d
	sbc l                                            ; $4866: $9d
	ld [bc], a                                       ; $4867: $02
	inc bc                                           ; $4868: $03
	dec hl                                           ; $4869: $2b
	add b                                            ; $486a: $80
	sub [hl]                                         ; $486b: $96
	rlca                                             ; $486c: $07
	cp $c7                                           ; $486d: $fe $c7
	db $fd                                           ; $486f: $fd
	rst SubAFromBC                                          ; $4870: $e7
	ld a, h                                          ; $4871: $7c
	ld a, a                                          ; $4872: $7f
	ld a, $f5                                        ; $4873: $3e $f5
	cpl                                              ; $4875: $2f
	add b                                            ; $4876: $80
	sub l                                            ; $4877: $95
	ld b, b                                          ; $4878: $40
	ret nz                                           ; $4879: $c0

	ld b, a                                          ; $487a: $47
	rst JumpTable                                          ; $487b: $c7
	ld a, b                                          ; $487c: $78
	ret c                                            ; $487d: $d8

	ld l, a                                          ; $487e: $6f
	rst GetHLinHL                                          ; $487f: $cf
	ld h, a                                          ; $4880: $67
	rst SubAFromBC                                          ; $4881: $e7
	cpl                                              ; $4882: $2f
	add b                                            ; $4883: $80
	sub l                                            ; $4884: $95
	jr c, jr_06e_4887                                ; $4885: $38 $00

jr_06e_4887:
	add b                                            ; $4887: $80
	add b                                            ; $4888: $80
	nop                                              ; $4889: $00
	nop                                              ; $488a: $00
	ldh [$e0], a                                     ; $488b: $e0 $e0
	db $e3                                           ; $488d: $e3
	ret nz                                           ; $488e: $c0

	daa                                              ; $488f: $27
	add b                                            ; $4890: $80
	rst $38                                          ; $4891: $ff
	rst SubAFromDE                                          ; $4892: $df
	rlca                                             ; $4893: $07
	rst $38                                          ; $4894: $ff
	rst SubAFromDE                                          ; $4895: $df
	rrca                                             ; $4896: $0f
	sbc l                                            ; $4897: $9d
	sbc a                                            ; $4898: $9f
	rlca                                             ; $4899: $07
	dec hl                                           ; $489a: $2b
	add b                                            ; $489b: $80
	sub d                                            ; $489c: $92
	rlca                                             ; $489d: $07
	db $fd                                           ; $489e: $fd
	add a                                            ; $489f: $87
	ld a, h                                          ; $48a0: $7c
	ld b, a                                          ; $48a1: $47
	cp $f5                                           ; $48a2: $fe $f5
	cp $e5                                           ; $48a4: $fe $e5
	ld a, [hl-]                                      ; $48a6: $3a
	dec c                                            ; $48a7: $0d
	dec b                                            ; $48a8: $05
	ld b, $7b                                        ; $48a9: $06 $7b
	sub $9b                                          ; $48ab: $d6 $9b
	rlca                                             ; $48ad: $07
	ld [$0f08], sp                                   ; $48ae: $08 $08 $0f
	ld a, e                                          ; $48b1: $7b
	adc $9c                                          ; $48b2: $ce $9c
	add e                                            ; $48b4: $83
	nop                                              ; $48b5: $00
	ret nz                                           ; $48b6: $c0

	ld a, e                                          ; $48b7: $7b
	ld h, $98                                        ; $48b8: $26 $98
	ld a, b                                          ; $48ba: $78
	ldh a, [$fe]                                     ; $48bb: $f0 $fe
	reti                                             ; $48bd: $d9


	rst $38                                          ; $48be: $ff
	rst JumpTable                                          ; $48bf: $c7
	db $e3                                           ; $48c0: $e3
	db $dd                                           ; $48c1: $dd
	ret nz                                           ; $48c2: $c0

	sbc [hl]                                         ; $48c3: $9e
	ld b, b                                          ; $48c4: $40
	ld [hl], a                                       ; $48c5: $77
	sub [hl]                                         ; $48c6: $96
	db $fd                                           ; $48c7: $fd
	sbc $80                                          ; $48c8: $de $80
	cp [hl]                                          ; $48ca: $be
	ld bc, $0703                                     ; $48cb: $01 $03 $07
	adc [hl]                                         ; $48ce: $8e
	inc bc                                           ; $48cf: $03
	ld e, $0f                                        ; $48d0: $1e $0f
	ld a, [hl]                                       ; $48d2: $7e
	ccf                                              ; $48d3: $3f
	cp $ff                                           ; $48d4: $fe $ff
	cp $f3                                           ; $48d6: $fe $f3
	rst $38                                          ; $48d8: $ff
	inc bc                                           ; $48d9: $03
	rst $38                                          ; $48da: $ff
	inc bc                                           ; $48db: $03
	ld a, $03                                        ; $48dc: $3e $03
	dec e                                            ; $48de: $1d
	rlca                                             ; $48df: $07
	inc bc                                           ; $48e0: $03
	ret nz                                           ; $48e1: $c0

	inc bc                                           ; $48e2: $03
	ret nz                                           ; $48e3: $c0

	ld h, a                                          ; $48e4: $67
	ret nz                                           ; $48e5: $c0

	rst SubAFromDE                                          ; $48e6: $df
	rlca                                             ; $48e7: $07
	ld a, a                                          ; $48e8: $7f
	call c, $c39e                                    ; $48e9: $dc $9e $c3
	rra                                              ; $48ec: $1f
	ret nz                                           ; $48ed: $c0

	sbc l                                            ; $48ee: $9d
	add b                                            ; $48ef: $80
	add c                                            ; $48f0: $81
	inc bc                                           ; $48f1: $03
	ret nz                                           ; $48f2: $c0

	sbc l                                            ; $48f3: $9d
	add a                                            ; $48f4: $87
	inc bc                                           ; $48f5: $03
	dec de                                           ; $48f6: $1b
	add b                                            ; $48f7: $80
	ld a, a                                          ; $48f8: $7f
	ret nz                                           ; $48f9: $c0

	sbc l                                            ; $48fa: $9d
	add b                                            ; $48fb: $80
	add e                                            ; $48fc: $83
	dec sp                                           ; $48fd: $3b
	ret nz                                           ; $48fe: $c0

	db $fd                                           ; $48ff: $fd
	ld bc, $1b80                                     ; $4900: $01 $80 $1b
	db $fc                                           ; $4903: $fc
	ldh [rIE], a                                     ; $4904: $e0 $ff
	ld b, e                                          ; $4906: $43
	ld a, a                                          ; $4907: $7f
	db $fd                                           ; $4908: $fd
	rst $38                                          ; $4909: $ff
	ld [de], a                                       ; $490a: $12
	rra                                              ; $490b: $1f
	inc h                                            ; $490c: $24
	ccf                                              ; $490d: $3f
	jr c, jr_06e_493f                                ; $490e: $38 $2f

	ld l, a                                          ; $4910: $6f
	ld e, a                                          ; $4911: $5f
	call nc, $a9bb                                   ; $4912: $d4 $bb $a9
	rst FarCall                                          ; $4915: $f7
	jp hl                                            ; $4916: $e9


	ld [hl], a                                       ; $4917: $77
	ldh a, [c]                                       ; $4918: $f2
	ccf                                              ; $4919: $3f
	ldh a, [c]                                       ; $491a: $f2
	rra                                              ; $491b: $1f
	db $fd                                           ; $491c: $fd
	ld c, $fd                                        ; $491d: $0e $fd
	ld b, $ff                                        ; $491f: $06 $ff
	sbc c                                            ; $4921: $99
	inc b                                            ; $4922: $04
	ld a, [hl]                                       ; $4923: $7e
	inc b                                            ; $4924: $04
	ld a, [hl-]                                      ; $4925: $3a
	inc c                                            ; $4926: $0c
	add hl, de                                       ; $4927: $19
	ld a, e                                          ; $4928: $7b
	cp $96                                           ; $4929: $fe $96
	add hl, bc                                       ; $492b: $09
	inc c                                            ; $492c: $0c
	dec bc                                           ; $492d: $0b
	inc c                                            ; $492e: $0c
	ld c, $05                                        ; $492f: $0e $05
	inc c                                            ; $4931: $0c
	rlca                                             ; $4932: $07
	dec b                                            ; $4933: $05
	ld [hl], e                                       ; $4934: $73
	cp $9e                                           ; $4935: $fe $9e
	sub l                                            ; $4937: $95
	ld a, e                                          ; $4938: $7b
	cp $80                                           ; $4939: $fe $80
	jp nc, $f203                                     ; $493b: $d2 $03 $f2

	add e                                            ; $493e: $83

jr_06e_493f:
	rst FarCall                                          ; $493f: $f7
	add a                                            ; $4940: $87
	inc l                                            ; $4941: $2c
	di                                               ; $4942: $f3
	reti                                             ; $4943: $d9


	rst SubAFromBC                                          ; $4944: $e7
	or e                                             ; $4945: $b3
	adc $05                                          ; $4946: $ce $05
	cp $0e                                           ; $4948: $fe $0e
	rst $38                                          ; $494a: $ff
	ccf                                              ; $494b: $3f
	ld sp, hl                                        ; $494c: $f9
	ld a, a                                          ; $494d: $7f
	ldh [$e0], a                                     ; $494e: $e0 $e0
	rst JumpTable                                          ; $4950: $c7
	rst GetHLinHL                                          ; $4951: $cf
	add a                                            ; $4952: $87
	ld e, [hl]                                       ; $4953: $5e
	sbc $4b                                          ; $4954: $de $4b
	jp z, $c363                                      ; $4956: $ca $63 $c3

	ld h, e                                          ; $4959: $63
	add d                                            ; $495a: $82
	jp nz, $e167                                     ; $495b: $c2 $67 $e1

	ld h, b                                          ; $495e: $60
	ldh [$60], a                                     ; $495f: $e0 $60
	ldh [rSVBK], a                                   ; $4961: $e0 $70
	ldh [$50], a                                     ; $4963: $e0 $50
	ldh a, [$58]                                     ; $4965: $f0 $58
	ldh a, [$9c]                                     ; $4967: $f0 $9c
	ld hl, sp-$52                                    ; $4969: $f8 $ae
	call c, $deaf                                    ; $496b: $dc $af $de
	or e                                             ; $496e: $b3
	rst SubAFromDE                                          ; $496f: $df
	cp c                                             ; $4970: $b9
	rst SubAFromDE                                          ; $4971: $df
	cp $57                                           ; $4972: $fe $57
	rst SubAFromDE                                          ; $4974: $df
	ld [hl], c                                       ; $4975: $71
	rst SubAFromDE                                          ; $4976: $df
	ld [hl], b                                       ; $4977: $70
	ld a, e                                          ; $4978: $7b
	cp $80                                           ; $4979: $fe $80
	ld [hl], c                                       ; $497b: $71
	rst $38                                          ; $497c: $ff
	or a                                             ; $497d: $b7
	db $fc                                           ; $497e: $fc
	cp h                                             ; $497f: $bc
	db $f4                                           ; $4980: $f4
	ldh a, [$ed]                                     ; $4981: $f0 $ed
	cp a                                             ; $4983: $bf
	db $ed                                           ; $4984: $ed
	ccf                                              ; $4985: $3f
	db $ed                                           ; $4986: $ed
	ccf                                              ; $4987: $3f
	db $fd                                           ; $4988: $fd
	scf                                              ; $4989: $37
	db $fc                                           ; $498a: $fc
	rla                                              ; $498b: $17
	ld a, $d3                                        ; $498c: $3e $d3
	sbc $f3                                          ; $498e: $de $f3
	rst AddAOntoHL                                          ; $4990: $ef
	ld sp, $d1bf                                     ; $4991: $31 $bf $d1
	ld e, b                                          ; $4994: $58
	ld h, b                                          ; $4995: $60
	ldh [$e0], a                                     ; $4996: $e0 $e0
	and b                                            ; $4998: $a0
	ldh [$80], a                                     ; $4999: $e0 $80
	ld h, b                                          ; $499b: $60
	ret nz                                           ; $499c: $c0

	jp $0580                                         ; $499d: $c3 $80 $05


	ld [bc], a                                       ; $49a0: $02
	dec c                                            ; $49a1: $0d
	ld b, $24                                        ; $49a2: $06 $24
	rst $38                                          ; $49a4: $ff
	ld h, $ff                                        ; $49a5: $26 $ff
	scf                                              ; $49a7: $37
	db $fd                                           ; $49a8: $fd
	scf                                              ; $49a9: $37
	db $fd                                           ; $49aa: $fd
	cp [hl]                                          ; $49ab: $be
	db $ed                                           ; $49ac: $ed
	db $fd                                           ; $49ad: $fd
	ld h, a                                          ; $49ae: $67
	rst FarCall                                          ; $49af: $f7
	ld l, $ef                                        ; $49b0: $2e $ef
	inc a                                            ; $49b2: $3c
	sbc [hl]                                         ; $49b3: $9e
	ld [hl], c                                       ; $49b4: $71
	db $fd                                           ; $49b5: $fd
	ld h, e                                          ; $49b6: $63
	ld a, [hl]                                       ; $49b7: $7e
	ld b, $0f                                        ; $49b8: $06 $0f
	adc c                                            ; $49ba: $89
	rrca                                             ; $49bb: $0f
	ld bc, $0303                                     ; $49bc: $01 $03 $03
	ld [bc], a                                       ; $49bf: $02
	adc a                                            ; $49c0: $8f
	ld bc, $0080                                     ; $49c1: $01 $80 $00
	jp c, $d56d                                      ; $49c4: $da $6d $d5

	ld l, [hl]                                       ; $49c7: $6e
	ld a, l                                          ; $49c8: $7d
	and [hl]                                         ; $49c9: $a6
	ld l, [hl]                                       ; $49ca: $6e
	or e                                             ; $49cb: $b3
	sub l                                            ; $49cc: $95
	ei                                               ; $49cd: $fb
	jp z, $e4fd                                      ; $49ce: $ca $fd $e4

	ld a, e                                          ; $49d1: $7b
	ld c, d                                          ; $49d2: $4a
	add b                                            ; $49d3: $80
	add hl, sp                                       ; $49d4: $39
	rst GetHLinHL                                          ; $49d5: $cf
	db $fc                                           ; $49d6: $fc
	rst SubAFromBC                                          ; $49d7: $e7
	ld a, [hl]                                       ; $49d8: $7e
	ld [hl], a                                       ; $49d9: $77
	db $fd                                           ; $49da: $fd
	ld a, a                                          ; $49db: $7f
	xor h                                            ; $49dc: $ac
	rst SubAFromBC                                          ; $49dd: $e7
	ld l, $e5                                        ; $49de: $2e $e5
	cp $c5                                           ; $49e0: $fe $c5
	ld a, [hl-]                                      ; $49e2: $3a
	dec c                                            ; $49e3: $0d
	add hl, sp                                       ; $49e4: $39
	dec c                                            ; $49e5: $0d
	ld a, l                                          ; $49e6: $7d
	add hl, bc                                       ; $49e7: $09
	ld [hl], e                                       ; $49e8: $73
	add hl, de                                       ; $49e9: $19
	ldh a, [c]                                       ; $49ea: $f2
	dec de                                           ; $49eb: $1b
	db $eb                                           ; $49ec: $eb
	ld [hl-], a                                      ; $49ed: $32
	db $e3                                           ; $49ee: $e3
	halt                                             ; $49ef: $76
	xor l                                            ; $49f0: $ad
	or $37                                           ; $49f1: $f6 $37
	adc [hl]                                         ; $49f3: $8e
	db $ec                                           ; $49f4: $ec
	ld d, [hl]                                       ; $49f5: $56
	db $ed                                           ; $49f6: $ed
	ld c, b                                          ; $49f7: $48
	rst $38                                          ; $49f8: $ff
	adc b                                            ; $49f9: $88
	rst $38                                          ; $49fa: $ff
	sbc c                                            ; $49fb: $99
	rst $38                                          ; $49fc: $ff
	ld de, $32ff                                     ; $49fd: $11 $ff $32
	rst $38                                          ; $4a00: $ff
	ld h, h                                          ; $4a01: $64
	rst $38                                          ; $4a02: $ff
	db $ed                                           ; $4a03: $ed
	cp a                                             ; $4a04: $bf
	ld c, e                                          ; $4a05: $4b
	ld b, b                                          ; $4a06: $40
	rst SubAFromDE                                          ; $4a07: $df
	ret nz                                           ; $4a08: $c0

	sbc d                                            ; $4a09: $9a
	add e                                            ; $4a0a: $83
	ld c, a                                          ; $4a0b: $4f
	rst JumpTable                                          ; $4a0c: $c7
	ld e, [hl]                                       ; $4a0d: $5e
	sbc $5f                                          ; $4a0e: $de $5f
	ld b, b                                          ; $4a10: $40
	ld b, a                                          ; $4a11: $47
	ld h, b                                          ; $4a12: $60
	sbc c                                            ; $4a13: $99
	ld a, a                                          ; $4a14: $7f
	sub c                                            ; $4a15: $91
	cp b                                             ; $4a16: $b8
	ret nz                                           ; $4a17: $c0

	ldh [$c0], a                                     ; $4a18: $e0 $c0
	rra                                              ; $4a1a: $1f
	ld h, b                                          ; $4a1b: $60
	sub a                                            ; $4a1c: $97
	sbc a                                            ; $4a1d: $9f
	ld [hl], b                                       ; $4a1e: $70
	rst $38                                          ; $4a1f: $ff
	ld h, b                                          ; $4a20: $60
	ld a, a                                          ; $4a21: $7f
	inc bc                                           ; $4a22: $03
	ld e, $06                                        ; $4a23: $1e $06
	sbc $03                                          ; $4a25: $de $03
	inc sp                                           ; $4a27: $33
	ld h, b                                          ; $4a28: $60
	sub l                                            ; $4a29: $95
	ld sp, hl                                        ; $4a2a: $f9
	rrca                                             ; $4a2b: $0f
	inc e                                            ; $4a2c: $1c
	rst SubAFromBC                                          ; $4a2d: $e7
	xor $f7                                          ; $4a2e: $ee $f7
	ld a, l                                          ; $4a30: $7d
	ld a, a                                          ; $4a31: $7f
	cp h                                             ; $4a32: $bc
	rst FarCall                                          ; $4a33: $f7
	ld l, a                                          ; $4a34: $6f
	ld h, b                                          ; $4a35: $60
	ld b, e                                          ; $4a36: $43
	add b                                            ; $4a37: $80
	sub [hl]                                         ; $4a38: $96
	add b                                            ; $4a39: $80
	ld b, e                                          ; $4a3a: $43
	jp $c74f                                         ; $4a3b: $c3 $4f $c7


	ld a, [hl]                                       ; $4a3e: $7e
	sbc $65                                          ; $4a3f: $de $65
	rst JumpTable                                          ; $4a41: $c7
	dec hl                                           ; $4a42: $2b
	add b                                            ; $4a43: $80
	sbc c                                            ; $4a44: $99
	ld de, $80f8                                     ; $4a45: $11 $f8 $80
	ldh [$c0], a                                     ; $4a48: $e0 $c0
	ldh [$7b], a                                     ; $4a4a: $e0 $7b
	and $1f                                          ; $4a4c: $e6 $1f
	add b                                            ; $4a4e: $80
	sub a                                            ; $4a4f: $97
	ld a, e                                          ; $4a50: $7b
	rlca                                             ; $4a51: $07
	rra                                              ; $4a52: $1f
	rrca                                             ; $4a53: $0f
	rlca                                             ; $4a54: $07
	ld b, $02                                        ; $4a55: $06 $02
	inc bc                                           ; $4a57: $03
	cpl                                              ; $4a58: $2f
	add b                                            ; $4a59: $80
	sub l                                            ; $4a5a: $95
	db $fc                                           ; $4a5b: $fc
	rlca                                             ; $4a5c: $07
	cp $c7                                           ; $4a5d: $fe $c7
	db $fd                                           ; $4a5f: $fd
	rst FarCall                                          ; $4a60: $f7
	ld a, h                                          ; $4a61: $7c
	ld a, a                                          ; $4a62: $7f
	ld a, $f5                                        ; $4a63: $3e $f5
	cpl                                              ; $4a65: $2f
	add b                                            ; $4a66: $80
	sub l                                            ; $4a67: $95
	ld b, b                                          ; $4a68: $40
	ret nz                                           ; $4a69: $c0

	ld b, a                                          ; $4a6a: $47
	ret nz                                           ; $4a6b: $c0

	ld a, b                                          ; $4a6c: $78
	ret c                                            ; $4a6d: $d8

	ld l, a                                          ; $4a6e: $6f
	rst GetHLinHL                                          ; $4a6f: $cf
	ld h, a                                          ; $4a70: $67
	rst SubAFromBC                                          ; $4a71: $e7
	cpl                                              ; $4a72: $2f
	add b                                            ; $4a73: $80
	sbc h                                            ; $4a74: $9c
	jr c, jr_06e_4a77                                ; $4a75: $38 $00

jr_06e_4a77:
	add b                                            ; $4a77: $80
	cp $df                                           ; $4a78: $fe $df
	ldh [$9d], a                                     ; $4a7a: $e0 $9d
	db $e3                                           ; $4a7c: $e3
	ret nz                                           ; $4a7d: $c0

	daa                                              ; $4a7e: $27
	add b                                            ; $4a7f: $80
	sbc h                                            ; $4a80: $9c
	ld a, b                                          ; $4a81: $78
	nop                                              ; $4a82: $00
	inc sp                                           ; $4a83: $33
	cp $7f                                           ; $4a84: $fe $7f
	ld a, l                                          ; $4a86: $7d
	sbc l                                            ; $4a87: $9d
	sbc a                                            ; $4a88: $9f
	inc bc                                           ; $4a89: $03
	dec hl                                           ; $4a8a: $2b
	add b                                            ; $4a8b: $80
	sub d                                            ; $4a8c: $92
	rlca                                             ; $4a8d: $07
	dec a                                            ; $4a8e: $3d
	rst JumpTable                                          ; $4a8f: $c7
	inc e                                            ; $4a90: $1c
	daa                                              ; $4a91: $27
	cp $fd                                           ; $4a92: $fe $fd
	cp $f5                                           ; $4a94: $fe $f5
	ld a, [hl-]                                      ; $4a96: $3a
	dec c                                            ; $4a97: $0d
	dec b                                            ; $4a98: $05
	ld b, $77                                        ; $4a99: $06 $77
	sub $df                                          ; $4a9b: $d6 $df
	ld [$0fdf], sp                                   ; $4a9d: $08 $df $0f
	rst $38                                          ; $4aa0: $ff
	sbc h                                            ; $4aa1: $9c
	add a                                            ; $4aa2: $87
	nop                                              ; $4aa3: $00
	ret nz                                           ; $4aa4: $c0

	ld a, e                                          ; $4aa5: $7b
	ld h, $98                                        ; $4aa6: $26 $98
	ld a, b                                          ; $4aa8: $78
	ldh a, [$fe]                                     ; $4aa9: $f0 $fe
	reti                                             ; $4aab: $d9


	rst $38                                          ; $4aac: $ff
	rst JumpTable                                          ; $4aad: $c7
	db $e3                                           ; $4aae: $e3
	db $dd                                           ; $4aaf: $dd
	ret nz                                           ; $4ab0: $c0

	sbc l                                            ; $4ab1: $9d
	ld b, b                                          ; $4ab2: $40
	add b                                            ; $4ab3: $80
	ld [hl], a                                       ; $4ab4: $77
	sub l                                            ; $4ab5: $95
	ld a, a                                          ; $4ab6: $7f
	sub b                                            ; $4ab7: $90
	ld a, a                                          ; $4ab8: $7f
	ld l, h                                          ; $4ab9: $6c
	ld a, a                                          ; $4aba: $7f
	ld l, e                                          ; $4abb: $6b
	adc b                                            ; $4abc: $88
	ret nz                                           ; $4abd: $c0

	ld bc, $0300                                     ; $4abe: $01 $00 $03
	nop                                              ; $4ac1: $00
	rlca                                             ; $4ac2: $07
	inc bc                                           ; $4ac3: $03
	ld e, $0f                                        ; $4ac4: $1e $0f
	ld a, [hl]                                       ; $4ac6: $7e
	ccf                                              ; $4ac7: $3f
	cp $ff                                           ; $4ac8: $fe $ff
	cp $f3                                           ; $4aca: $fe $f3
	rst $38                                          ; $4acc: $ff
	inc bc                                           ; $4acd: $03
	rst $38                                          ; $4ace: $ff
	inc bc                                           ; $4acf: $03
	ld a, $03                                        ; $4ad0: $3e $03
	dec e                                            ; $4ad2: $1d
	rlca                                             ; $4ad3: $07
	ld h, a                                          ; $4ad4: $67
	ret nz                                           ; $4ad5: $c0

	ld a, e                                          ; $4ad6: $7b
	cp [hl]                                          ; $4ad7: $be
	sbc e                                            ; $4ad8: $9b
	rlca                                             ; $4ad9: $07
	add b                                            ; $4ada: $80
	nop                                              ; $4adb: $00
	jp $c023                                         ; $4adc: $c3 $23 $c0


	rst SubAFromDE                                          ; $4adf: $df
	ld b, b                                          ; $4ae0: $40
	sbc l                                            ; $4ae1: $9d
	pop bc                                           ; $4ae2: $c1
	add b                                            ; $4ae3: $80
	rla                                              ; $4ae4: $17
	ret nz                                           ; $4ae5: $c0

	sbc $0f                                          ; $4ae6: $de $0f
	sbc c                                            ; $4ae8: $99
	rlca                                             ; $4ae9: $07
	add a                                            ; $4aea: $87
	rlca                                             ; $4aeb: $07
	ret nz                                           ; $4aec: $c0

	ret nz                                           ; $4aed: $c0

	db $e3                                           ; $4aee: $e3
	inc hl                                           ; $4aef: $23
	add b                                            ; $4af0: $80
	sbc e                                            ; $4af1: $9b
	pop bc                                           ; $4af2: $c1
	ret nz                                           ; $4af3: $c0

	add e                                            ; $4af4: $83
	add b                                            ; $4af5: $80
	inc bc                                           ; $4af6: $03
	ret nz                                           ; $4af7: $c0

	inc bc                                           ; $4af8: $03
	ret nz                                           ; $4af9: $c0

	ld b, a                                          ; $4afa: $47
	ret nz                                           ; $4afb: $c0

	sub $02                                          ; $4afc: $d6 $02
	rst FarCall                                          ; $4afe: $f7
	rst SubAFromDE                                          ; $4aff: $df
	ld bc, $0797                                     ; $4b00: $01 $97 $07
	ld b, $0f                                        ; $4b03: $06 $0f
	ld [$101f], sp                                   ; $4b05: $08 $1f $10
	ccf                                              ; $4b08: $3f
	jr nz, jr_06e_4b7a                               ; $4b09: $20 $6f

	cp $7f                                           ; $4b0b: $fe $7f
	or $7f                                           ; $4b0d: $f6 $7f
	cp $7f                                           ; $4b0f: $fe $7f
	ldh a, [$7f]                                     ; $4b11: $f0 $7f
	cp $95                                           ; $4b13: $fe $95
	rlca                                             ; $4b15: $07
	inc b                                            ; $4b16: $04
	rlca                                             ; $4b17: $07
	inc b                                            ; $4b18: $04
	inc bc                                           ; $4b19: $03
	ld [bc], a                                       ; $4b1a: $02
	ld [bc], a                                       ; $4b1b: $02
	inc bc                                           ; $4b1c: $03
	ld bc, $e701                                     ; $4b1d: $01 $01 $e7
	rst SubAFromDE                                          ; $4b20: $df

jr_06e_4b21:
	rlca                                             ; $4b21: $07
	sbc c                                            ; $4b22: $99
	ccf                                              ; $4b23: $3f
	jr c, @+$01                                      ; $4b24: $38 $ff

	ret nz                                           ; $4b26: $c0

	rst $38                                          ; $4b27: $ff
	nop                                              ; $4b28: $00
	ld e, a                                          ; $4b29: $5f
	cp $91                                           ; $4b2a: $fe $91
	cp $01                                           ; $4b2c: $fe $01
	ld hl, sp+$07                                    ; $4b2e: $f8 $07
	nop                                              ; $4b30: $00
	rst $38                                          ; $4b31: $ff
	add c                                            ; $4b32: $81
	ld a, a                                          ; $4b33: $7f
	adc $3f                                          ; $4b34: $ce $3f
	ldh [$1f], a                                     ; $4b36: $e0 $1f
	ld hl, sp+$07                                    ; $4b38: $f8 $07
	ld l, e                                          ; $4b3a: $6b
	ld [$8090], a                                    ; $4b3b: $ea $90 $80
	cp a                                             ; $4b3e: $bf
	ret nz                                           ; $4b3f: $c0

	ld e, a                                          ; $4b40: $5f
	ld h, b                                          ; $4b41: $60
	ccf                                              ; $4b42: $3f
	jr nz, jr_06e_4b74                               ; $4b43: $20 $2f

	jr nc, jr_06e_4b5e                               ; $4b45: $30 $17

	jr jr_06e_4b54                                   ; $4b47: $18 $0b

	inc c                                            ; $4b49: $0c
	dec b                                            ; $4b4a: $05
	ld b, $6f                                        ; $4b4b: $06 $6f
	xor h                                            ; $4b4d: $ac
	rst SubAFromDE                                          ; $4b4e: $df
	rrca                                             ; $4b4f: $0f
	sbc l                                            ; $4b50: $9d
	rst $38                                          ; $4b51: $ff
	ldh a, [$57]                                     ; $4b52: $f0 $57

jr_06e_4b54:
	add $95                                          ; $4b54: $c6 $95
	db $fc                                           ; $4b56: $fc
	inc bc                                           ; $4b57: $03
	ldh [$1f], a                                     ; $4b58: $e0 $1f
	add a                                            ; $4b5a: $87
	ld a, a                                          ; $4b5b: $7f
	inc e                                            ; $4b5c: $1c
	db $fc                                           ; $4b5d: $fc

jr_06e_4b5e:
	ld h, b                                          ; $4b5e: $60
	ldh [$dd], a                                     ; $4b5f: $e0 $dd
	add c                                            ; $4b61: $81

jr_06e_4b62:
	rst SubAFromDE                                          ; $4b62: $df
	jp Jump_06e_478f                                 ; $4b63: $c3 $8f $47


	rst JumpTable                                          ; $4b66: $c7
	and b                                            ; $4b67: $a0
	ld h, b                                          ; $4b68: $60
	ret nc                                           ; $4b69: $d0

	jr nc, jr_06e_4b54                               ; $4b6a: $30 $e8

	jr jr_06e_4b62                                   ; $4b6c: $18 $f4

	inc c                                            ; $4b6e: $0c
	ldh a, [c]                                       ; $4b6f: $f2
	ld c, $f9                                        ; $4b70: $0e $f9
	rlca                                             ; $4b72: $07
	db $fc                                           ; $4b73: $fc

jr_06e_4b74:
	inc bc                                           ; $4b74: $03
	ld [hl], a                                       ; $4b75: $77
	cp $7f                                           ; $4b76: $fe $7f
	and d                                            ; $4b78: $a2
	ld a, a                                          ; $4b79: $7f

jr_06e_4b7a:
	cp $57                                           ; $4b7a: $fe $57
	xor h                                            ; $4b7c: $ac
	ld [hl], a                                       ; $4b7d: $77
	xor [hl]                                         ; $4b7e: $ae
	sub l                                            ; $4b7f: $95
	inc de                                           ; $4b80: $13
	inc e                                            ; $4b81: $1c
	dec bc                                           ; $4b82: $0b
	inc c                                            ; $4b83: $0c
	add hl, bc                                       ; $4b84: $09
	ld c, $04                                        ; $4b85: $0e $04
	rlca                                             ; $4b87: $07
	ld [bc], a                                       ; $4b88: $02
	inc bc                                           ; $4b89: $03
	ld [hl], a                                       ; $4b8a: $77
	xor b                                            ; $4b8b: $a8
	db $dd                                           ; $4b8c: $dd
	ld bc, $dff5                                     ; $4b8d: $01 $f5 $df
	ld bc, $e97f                                     ; $4b90: $01 $7f $e9
	ld a, a                                          ; $4b93: $7f
	jr c, jr_06e_4b21                                ; $4b94: $38 $8b

	rrca                                             ; $4b96: $0f
	ld c, $13                                        ; $4b97: $0e $13

jr_06e_4b99:
	dec e                                            ; $4b99: $1d
	ccf                                              ; $4b9a: $3f
	ld l, $5f                                        ; $4b9b: $2e $5f
	ld h, c                                          ; $4b9d: $61
	ld c, [hl]                                       ; $4b9e: $4e
	ld [hl], c                                       ; $4b9f: $71
	rst JumpTable                                          ; $4ba0: $c7
	cp b                                             ; $4ba1: $b8
	and a                                            ; $4ba2: $a7
	ret c                                            ; $4ba3: $d8

	or e                                             ; $4ba4: $b3
	call z, $e699                                    ; $4ba5: $cc $99 $e6
	rst $38                                          ; $4ba8: $ff
	rst $38                                          ; $4ba9: $ff
	ld e, e                                          ; $4baa: $5b
	ld a, [hl-]                                      ; $4bab: $3a
	adc h                                            ; $4bac: $8c
	nop                                              ; $4bad: $00
	rra                                              ; $4bae: $1f
	inc bc                                           ; $4baf: $03
	db $fc                                           ; $4bb0: $fc
	rrca                                             ; $4bb1: $0f
	pop af                                           ; $4bb2: $f1
	ld a, a                                          ; $4bb3: $7f
	jp c, $d5e7                                      ; $4bb4: $da $e7 $d5

	xor $ab                                          ; $4bb7: $ee $ab
	call c, $fb95                                    ; $4bb9: $dc $95 $fb
	ld [hl+], a                                      ; $4bbc: $22
	rst $38                                          ; $4bbd: $ff
	push bc                                          ; $4bbe: $c5
	cp $e0                                           ; $4bbf: $fe $e0
	pop bc                                           ; $4bc1: $c1
	sub [hl]                                         ; $4bc2: $96
	ldh [$80], a                                     ; $4bc3: $e0 $80
	add sp, -$80                                     ; $4bc5: $e8 $80
	ldh a, [$80]                                     ; $4bc7: $f0 $80
	ldh [$80], a                                     ; $4bc9: $e0 $80
	add b                                            ; $4bcb: $80
	ld a, [$80df]                                    ; $4bcc: $fa $df $80
	ld a, a                                          ; $4bcf: $7f
	jr z, @-$6b                                      ; $4bd0: $28 $93

	ld e, b                                          ; $4bd2: $58
	jr c, jr_06e_4b99                                ; $4bd3: $38 $c4

	call c, $be32                                    ; $4bd5: $dc $32 $be
	adc c                                            ; $4bd8: $89
	ld c, l                                          ; $4bd9: $4d
	dec b                                            ; $4bda: $05
	ld h, a                                          ; $4bdb: $67
	ld [bc], a                                       ; $4bdc: $02
	ld a, [de]                                       ; $4bdd: $1a
	jp hl                                            ; $4bde: $e9


	halt                                             ; $4bdf: $76
	ld [hl], d                                       ; $4be0: $72
	sbc e                                            ; $4be1: $9b
	rra                                              ; $4be2: $1f
	jr @+$01                                         ; $4be3: $18 $ff

	ldh [$7b], a                                     ; $4be5: $e0 $7b
	or $7b                                           ; $4be7: $f6 $7b
	cp $fd                                           ; $4be9: $fe $fd
	adc c                                            ; $4beb: $89
	inc a                                            ; $4bec: $3c
	nop                                              ; $4bed: $00
	cp $7c                                           ; $4bee: $fe $7c
	db $e3                                           ; $4bf0: $e3
	rst $38                                          ; $4bf1: $ff
	add c                                            ; $4bf2: $81
	di                                               ; $4bf3: $f3
	ld [hl], a                                       ; $4bf4: $77
	add d                                            ; $4bf5: $82
	ld [$fe26], a                                    ; $4bf6: $ea $26 $fe
	ld b, h                                          ; $4bf9: $44
	or l                                             ; $4bfa: $b5
	call z, $9c6b                                    ; $4bfb: $cc $6b $9c
	adc $39                                          ; $4bfe: $ce $39
	sub h                                            ; $4c00: $94
	ld a, e                                          ; $4c01: $7b
	ldh [$c1], a                                     ; $4c02: $e0 $c1
	sbc c                                            ; $4c04: $99
	push bc                                          ; $4c05: $c5
	pop bc                                           ; $4c06: $c1
	jp $41c1                                         ; $4c07: $c3 $c1 $41


	ld b, b                                          ; $4c0a: $40
	ld sp, hl                                        ; $4c0b: $f9
	adc l                                            ; $4c0c: $8d
	stop                                             ; $4c0d: $10 $00
	add hl, de                                       ; $4c0f: $19
	nop                                              ; $4c10: $00
	ld e, $02                                        ; $4c11: $1e $02
	inc a                                            ; $4c13: $3c
	inc b                                            ; $4c14: $04
	jr c, jr_06e_4c1f                                ; $4c15: $38 $08

	ld a, a                                          ; $4c17: $7f
	rrca                                             ; $4c18: $0f
	ld hl, sp-$65                                    ; $4c19: $f8 $9b
	rst SubAFromBC                                          ; $4c1b: $e7
	rst FarCall                                          ; $4c1c: $f7
	add hl, hl                                       ; $4c1d: $29
	xor b                                            ; $4c1e: $a8

jr_06e_4c1f:
	rst AddAOntoHL                                          ; $4c1f: $ef
	rst SubAFromDE                                          ; $4c20: $df
	ccf                                              ; $4c21: $3f
	adc c                                            ; $4c22: $89
	ld a, a                                          ; $4c23: $7f
	ld b, [hl]                                       ; $4c24: $46
	rst $38                                          ; $4c25: $ff
	adc c                                            ; $4c26: $89
	rst $38                                          ; $4c27: $ff
	ld c, $fb                                        ; $4c28: $0e $fb
	rrca                                             ; $4c2a: $0f
	jp $333e                                         ; $4c2b: $c3 $3e $33


	rst $38                                          ; $4c2e: $ff
	rst $38                                          ; $4c2f: $ff
	ld a, a                                          ; $4c30: $7f
	rst $38                                          ; $4c31: $ff
	add b                                            ; $4c32: $80
	rst $38                                          ; $4c33: $ff
	ld h, b                                          ; $4c34: $60
	rra                                              ; $4c35: $1f
	inc e                                            ; $4c36: $1c
	rlca                                             ; $4c37: $07
	inc bc                                           ; $4c38: $03
	ld [hl], a                                       ; $4c39: $77
	ld e, [hl]                                       ; $4c3a: $5e
	rst SubAFromDE                                          ; $4c3b: $df
	rst $38                                          ; $4c3c: $ff
	sub b                                            ; $4c3d: $90
	inc d                                            ; $4c3e: $14
	db $fd                                           ; $4c3f: $fd
	sbc a                                            ; $4c40: $9f
	ld [hl], l                                       ; $4c41: $75
	ld l, a                                          ; $4c42: $6f
	dec [hl]                                         ; $4c43: $35
	push af                                          ; $4c44: $f5
	dec l                                            ; $4c45: $2d
	or l                                             ; $4c46: $b5
	ld l, l                                          ; $4c47: $6d
	dec [hl]                                         ; $4c48: $35
	db $ed                                           ; $4c49: $ed
	ld h, a                                          ; $4c4a: $67
	db $fd                                           ; $4c4b: $fd
	xor l                                            ; $4c4c: $ad
	ld e, d                                          ; $4c4d: $5a
	and d                                            ; $4c4e: $a2
	ldh [$cb], a                                     ; $4c4f: $e0 $cb
	adc a                                            ; $4c51: $8f
	ld b, b                                          ; $4c52: $40
	ret nz                                           ; $4c53: $c0

	ld [hl], b                                       ; $4c54: $70
	pop af                                           ; $4c55: $f1
	adc c                                            ; $4c56: $89
	rst $38                                          ; $4c57: $ff
	adc a                                            ; $4c58: $8f
	sbc $ff                                          ; $4c59: $de $ff
	ld [hl], b                                       ; $4c5b: $70
	jr nc, jr_06e_4c5e                               ; $4c5c: $30 $00

jr_06e_4c5e:
	rrca                                             ; $4c5e: $0f
	nop                                              ; $4c5f: $00
	jr nc, jr_06e_4c62                               ; $4c60: $30 $00

jr_06e_4c62:
	ld h, [hl]                                       ; $4c62: $66
	cp b                                             ; $4c63: $b8
	rst SubAFromDE                                          ; $4c64: $df
	ldh a, [$99]                                     ; $4c65: $f0 $99
	inc a                                            ; $4c67: $3c
	inc c                                            ; $4c68: $0c
	ei                                               ; $4c69: $fb
	di                                               ; $4c6a: $f3
	ret nz                                           ; $4c6b: $c0

	dec c                                            ; $4c6c: $0d
	rst AddAOntoHL                                          ; $4c6d: $ef
	rst SubAFromDE                                          ; $4c6e: $df
	add b                                            ; $4c6f: $80
	add b                                            ; $4c70: $80
	di                                               ; $4c71: $f3
	ld [hl], e                                       ; $4c72: $73
	ld sp, hl                                        ; $4c73: $f9
	adc c                                            ; $4c74: $89
	rst $38                                          ; $4c75: $ff
	ccf                                              ; $4c76: $3f
	rst $38                                          ; $4c77: $ff
	pop bc                                           ; $4c78: $c1
	cp $0f                                           ; $4c79: $fe $0f
	rst $38                                          ; $4c7b: $ff
	pop af                                           ; $4c7c: $f1
	rst $38                                          ; $4c7d: $ff
	ld b, e                                          ; $4c7e: $43
	cp $1f                                           ; $4c7f: $fe $1f

jr_06e_4c81:
	ldh a, [$3f]                                     ; $4c81: $f0 $3f
	rst JumpTable                                          ; $4c83: $c7
	ld a, a                                          ; $4c84: $7f
	ret c                                            ; $4c85: $d8

	rst $38                                          ; $4c86: $ff
	ld [hl], d                                       ; $4c87: $72
	dec a                                            ; $4c88: $3d
	ccf                                              ; $4c89: $3f
	inc e                                            ; $4c8a: $1c
	db $e3                                           ; $4c8b: $e3
	cp $0f                                           ; $4c8c: $fe $0f
	jp nz, $9373                                     ; $4c8e: $c2 $73 $93

	add c                                            ; $4c91: $81
	ld c, e                                          ; $4c92: $4b
	sub c                                            ; $4c93: $91
	add e                                            ; $4c94: $83
	ld e, c                                          ; $4c95: $59
	reti                                             ; $4c96: $d9


	ld c, c                                          ; $4c97: $49
	db $fd                                           ; $4c98: $fd
	ld c, c                                          ; $4c99: $49
	db $db                                           ; $4c9a: $db
	ld l, h                                          ; $4c9b: $6c
	ld b, l                                          ; $4c9c: $45
	ld [bc], a                                       ; $4c9d: $02
	jr nz, jr_06e_4c81                               ; $4c9e: $20 $e1

	sbc d                                            ; $4ca0: $9a
	rrca                                             ; $4ca1: $0f
	ld a, [hl]                                       ; $4ca2: $7e
	ld [hl], a                                       ; $4ca3: $77
	ld hl, sp-$10                                    ; $4ca4: $f8 $f0
	ld a, e                                          ; $4ca6: $7b
	ld l, e                                          ; $4ca7: $6b
	ld a, a                                          ; $4ca8: $7f
	rla                                              ; $4ca9: $17
	sbc [hl]                                         ; $4caa: $9e
	rra                                              ; $4cab: $1f
	ld a, [$049c]                                    ; $4cac: $fa $9c $04
	nop                                              ; $4caf: $00
	inc bc                                           ; $4cb0: $03
	ld a, e                                          ; $4cb1: $7b
	cp $76                                           ; $4cb2: $fe $76
	ld c, d                                          ; $4cb4: $4a
	sbc h                                            ; $4cb5: $9c
	add c                                            ; $4cb6: $81
	nop                                              ; $4cb7: $00
	pop af                                           ; $4cb8: $f1
	ld a, d                                          ; $4cb9: $7a
	ld b, b                                          ; $4cba: $40
	scf                                              ; $4cbb: $37
	ld e, [hl]                                       ; $4cbc: $5e
	ld a, a                                          ; $4cbd: $7f
	ld a, [hl+]                                      ; $4cbe: $2a
	add b                                            ; $4cbf: $80
	ld a, b                                          ; $4cc0: $78
	ld hl, sp-$7a                                    ; $4cc1: $f8 $86
	cp $31                                           ; $4cc3: $fe $31
	rst GetHLinHL                                          ; $4cc5: $cf
	inc e                                            ; $4cc6: $1c
	db $e3                                           ; $4cc7: $e3
	dec bc                                           ; $4cc8: $0b
	ldh a, [$f1]                                     ; $4cc9: $f0 $f1
	inc c                                            ; $4ccb: $0c
	ld c, b                                          ; $4ccc: $48
	add [hl]                                         ; $4ccd: $86
	sub [hl]                                         ; $4cce: $96
	pop hl                                           ; $4ccf: $e1
	jp $b578                                         ; $4cd0: $c3 $78 $b5


	ld l, $da                                        ; $4cd3: $2e $da
	sub a                                            ; $4cd5: $97
	db $ed                                           ; $4cd6: $ed
	ld c, e                                          ; $4cd7: $4b
	ld a, [hl]                                       ; $4cd8: $7e
	ld c, c                                          ; $4cd9: $49
	ld a, a                                          ; $4cda: $7f
	inc h                                            ; $4cdb: $24
	xor l                                            ; $4cdc: $ad
	ld [hl], $6b                                     ; $4cdd: $36 $6b
	sub [hl]                                         ; $4cdf: $96
	or [hl]                                          ; $4ce0: $b6
	ld a, [hl]                                       ; $4ce1: $7e
	sub e                                            ; $4ce2: $93
	halt                                             ; $4ce3: $76
	sbc e                                            ; $4ce4: $9b
	cp l                                             ; $4ce5: $bd
	res 7, e                                         ; $4ce6: $cb $bb
	call $c1e0                                       ; $4ce8: $cd $e0 $c1
	sbc e                                            ; $4ceb: $9b
	rst $38                                          ; $4cec: $ff
	scf                                              ; $4ced: $37

jr_06e_4cee:
	rst $38                                          ; $4cee: $ff
	ld hl, $6477                                     ; $4cef: $21 $77 $64
	sbc h                                            ; $4cf2: $9c
	ld hl, sp+$00                                    ; $4cf3: $f8 $00
	ret nz                                           ; $4cf5: $c0

	db $fc                                           ; $4cf6: $fc

jr_06e_4cf7:
	ld a, [hl]                                       ; $4cf7: $7e
	cp [hl]                                          ; $4cf8: $be
	ld a, a                                          ; $4cf9: $7f
	cp $9e                                           ; $4cfa: $fe $9e
	ld a, b                                          ; $4cfc: $78
	ld a, e                                          ; $4cfd: $7b
	ldh a, [c]                                       ; $4cfe: $f2
	sbc b                                            ; $4cff: $98
	ld hl, sp+$20                                    ; $4d00: $f8 $20
	ldh a, [rAUD4LEN]                                ; $4d02: $f0 $20
	ldh a, [rLCDC]                                   ; $4d04: $f0 $40
	ldh [$62], a                                     ; $4d06: $e0 $62
	ld b, $27                                        ; $4d08: $06 $27
	ld e, b                                          ; $4d0a: $58
	add b                                            ; $4d0b: $80
	jr nz, jr_06e_4cee                               ; $4d0c: $20 $e0

	sub b                                            ; $4d0e: $90
	ld [hl], b                                       ; $4d0f: $70
	ret z                                            ; $4d10: $c8

	jr c, jr_06e_4cf7                                ; $4d11: $38 $e4

	inc e                                            ; $4d13: $1c
	inc [hl]                                         ; $4d14: $34
	call z, $6e92                                    ; $4d15: $cc $92 $6e
	jp nz, Jump_06e_713e                             ; $4d18: $c2 $3e $71

	sbc a                                            ; $4d1b: $9f
	or c                                             ; $4d1c: $b1
	rst GetHLinHL                                          ; $4d1d: $cf
	ld e, c                                          ; $4d1e: $59
	rst AddAOntoHL                                          ; $4d1f: $ef
	ld c, b                                          ; $4d20: $48
	rst FarCall                                          ; $4d21: $f7
	xor h                                            ; $4d22: $ac
	ld [hl], a                                       ; $4d23: $77
	and h                                            ; $4d24: $a4
	ld a, a                                          ; $4d25: $7f
	jp nc, Jump_06e_513f                             ; $4d26: $d2 $3f $51

	cp a                                             ; $4d29: $bf
	add hl, hl                                       ; $4d2a: $29
	sbc c                                            ; $4d2b: $99
	rst SubAFromDE                                          ; $4d2c: $df
	xor b                                            ; $4d2d: $a8
	rst SubAFromDE                                          ; $4d2e: $df
	ld b, h                                          ; $4d2f: $44
	rst $38                                          ; $4d30: $ff
	and d                                            ; $4d31: $a2
	ld a, e                                          ; $4d32: $7b
	db $f4                                           ; $4d33: $f4
	sbc d                                            ; $4d34: $9a
	ld l, c                                          ; $4d35: $69
	sbc a                                            ; $4d36: $9f
	and l                                            ; $4d37: $a5
	rst SubAFromDE                                          ; $4d38: $df
	ld b, d                                          ; $4d39: $42
	ld a, e                                          ; $4d3a: $7b
	sub l                                            ; $4d3b: $95
	add b                                            ; $4d3c: $80
	inc e                                            ; $4d3d: $1c
	rst $38                                          ; $4d3e: $ff
	adc e                                            ; $4d3f: $8b
	rst $38                                          ; $4d40: $ff
	ld h, h                                          ; $4d41: $64
	rst $38                                          ; $4d42: $ff
	sbc h                                            ; $4d43: $9c
	rst $38                                          ; $4d44: $ff
	ld c, d                                          ; $4d45: $4a
	db $fd                                           ; $4d46: $fd
	ld l, d                                          ; $4d47: $6a
	db $dd                                           ; $4d48: $dd
	ld h, a                                          ; $4d49: $67
	call c, $ce75                                    ; $4d4a: $dc $75 $ce
	ld [hl], l                                       ; $4d4d: $75
	adc $b5                                          ; $4d4e: $ce $b5
	adc $a4                                          ; $4d50: $ce $a4
	rst SubAFromDE                                          ; $4d52: $df
	adc c                                            ; $4d53: $89
	rst $38                                          ; $4d54: $ff
	xor c                                            ; $4d55: $a9
	rst $38                                          ; $4d56: $ff
	add hl, hl                                       ; $4d57: $29
	rst $38                                          ; $4d58: $ff
	ld d, d                                          ; $4d59: $52
	cp $52                                           ; $4d5a: $fe $52
	adc [hl]                                         ; $4d5c: $8e
	cp $54                                           ; $4d5d: $fe $54
	db $fc                                           ; $4d5f: $fc
	and h                                            ; $4d60: $a4
	db $fc                                           ; $4d61: $fc
	xor b                                            ; $4d62: $a8
	ld hl, sp+$58                                    ; $4d63: $f8 $58
	ld hl, sp+$51                                    ; $4d65: $f8 $51
	pop af                                           ; $4d67: $f1
	ld h, c                                          ; $4d68: $61
	pop hl                                           ; $4d69: $e1
	jp $86c3                                         ; $4d6a: $c3 $c3 $86


	add [hl]                                         ; $4d6d: $86
	ld l, h                                          ; $4d6e: $6c
	xor $91                                          ; $4d6f: $ee $91
	db $10                                           ; $4d71: $10
	ldh a, [$08]                                     ; $4d72: $f0 $08
	ld hl, sp-$78                                    ; $4d74: $f8 $88
	ld a, b                                          ; $4d76: $78
	call nz, $c43c                                   ; $4d77: $c4 $3c $c4
	inc a                                            ; $4d7a: $3c
	jp nz, $e23e                                     ; $4d7b: $c2 $3e $e2

	ld e, $77                                        ; $4d7e: $1e $77
	cp $97                                           ; $4d80: $fe $97
	pop hl                                           ; $4d82: $e1
	rra                                              ; $4d83: $1f
	pop hl                                           ; $4d84: $e1
	rra                                              ; $4d85: $1f
	pop af                                           ; $4d86: $f1
	rrca                                             ; $4d87: $0f
	pop af                                           ; $4d88: $f1
	rrca                                             ; $4d89: $0f
	cpl                                              ; $4d8a: $2f
	ld l, b                                          ; $4d8b: $68
	rst SubAFromDE                                          ; $4d8c: $df
	add b                                            ; $4d8d: $80
	rst SubAFromDE                                          ; $4d8e: $df
	ret nz                                           ; $4d8f: $c0

	ld a, a                                          ; $4d90: $7f
	ld h, h                                          ; $4d91: $64
	ld [hl], a                                       ; $4d92: $77
	cp $98                                           ; $4d93: $fe $98
	and b                                            ; $4d95: $a0
	ldh [$a0], a                                     ; $4d96: $e0 $a0
	ldh [$60], a                                     ; $4d98: $e0 $60
	ldh [rAUD4LEN], a                                ; $4d9a: $e0 $20
	ld a, e                                          ; $4d9c: $7b
	cp [hl]                                          ; $4d9d: $be
	ld a, a                                          ; $4d9e: $7f
	cp $80                                           ; $4d9f: $fe $80
	sub b                                            ; $4da1: $90
	ldh a, [hDisp0_WY]                                     ; $4da2: $f0 $88
	ld hl, sp+$48                                    ; $4da4: $f8 $48
	ld hl, sp-$38                                    ; $4da6: $f8 $c8
	ld hl, sp-$7c                                    ; $4da8: $f8 $84
	db $fc                                           ; $4daa: $fc
	call nc, Call_06e_54ec                           ; $4dab: $d4 $ec $54
	db $ec                                           ; $4dae: $ec
	ld [hl], h                                       ; $4daf: $74
	db $ec                                           ; $4db0: $ec
	ld a, h                                          ; $4db1: $7c
	db $e4                                           ; $4db2: $e4
	db $ec                                           ; $4db3: $ec
	db $f4                                           ; $4db4: $f4
	db $ec                                           ; $4db5: $ec
	db $f4                                           ; $4db6: $f4
	xor h                                            ; $4db7: $ac
	or h                                             ; $4db8: $b4
	and h                                            ; $4db9: $a4
	cp h                                             ; $4dba: $bc
	and h                                            ; $4dbb: $a4
	cp h                                             ; $4dbc: $bc
	inc h                                            ; $4dbd: $24
	inc a                                            ; $4dbe: $3c
	jr z, @-$6e                                      ; $4dbf: $28 $90

	jr c, jr_06e_4e0b                                ; $4dc1: $38 $48

	ld a, b                                          ; $4dc3: $78
	ld c, b                                          ; $4dc4: $48
	ld a, b                                          ; $4dc5: $78
	ld d, b                                          ; $4dc6: $50
	ld [hl], b                                       ; $4dc7: $70
	ld d, b                                          ; $4dc8: $50
	ld [hl], b                                       ; $4dc9: $70
	or b                                             ; $4dca: $b0
	ldh a, [$a0]                                     ; $4dcb: $f0 $a0
	ldh [rLCDC], a                                   ; $4dcd: $e0 $40
	ret nz                                           ; $4dcf: $c0

	ld l, h                                          ; $4dd0: $6c
	ld l, l                                          ; $4dd1: $6d
	rla                                              ; $4dd2: $17
	nop                                              ; $4dd3: $00
	jp c, $9988                                      ; $4dd4: $da $88 $99

	db $dd                                           ; $4dd7: $dd
	ld de, $9999                                     ; $4dd8: $11 $99 $99
	ld [hl+], a                                      ; $4ddb: $22
	adc b                                            ; $4ddc: $88
	ld c, a                                          ; $4ddd: $4f
	ei                                               ; $4dde: $fb
	sbc [hl]                                         ; $4ddf: $9e
	sbc c                                            ; $4de0: $99
	ld a, e                                          ; $4de1: $7b
	ei                                               ; $4de2: $fb
	ld [hl], e                                       ; $4de3: $73
	db $fd                                           ; $4de4: $fd
	sbc [hl]                                         ; $4de5: $9e
	adc b                                            ; $4de6: $88
	sbc $99                                          ; $4de7: $de $99
	rst AddAOntoHL                                          ; $4de9: $ef
	ld bc, $1b80                                     ; $4dea: $01 $80 $1b
	db $fc                                           ; $4ded: $fc
	ldh [rIE], a                                     ; $4dee: $e0 $ff
	ld b, e                                          ; $4df0: $43
	ld a, a                                          ; $4df1: $7f
	db $fd                                           ; $4df2: $fd
	rst $38                                          ; $4df3: $ff
	ld [de], a                                       ; $4df4: $12
	rra                                              ; $4df5: $1f
	inc h                                            ; $4df6: $24
	ccf                                              ; $4df7: $3f
	jr c, jr_06e_4e29                                ; $4df8: $38 $2f

	ld l, a                                          ; $4dfa: $6f
	ld e, a                                          ; $4dfb: $5f
	call nc, $a9bb                                   ; $4dfc: $d4 $bb $a9
	rst FarCall                                          ; $4dff: $f7
	jp hl                                            ; $4e00: $e9


	ld [hl], a                                       ; $4e01: $77
	ldh a, [c]                                       ; $4e02: $f2
	ccf                                              ; $4e03: $3f
	ldh a, [c]                                       ; $4e04: $f2
	rra                                              ; $4e05: $1f
	db $fd                                           ; $4e06: $fd
	ld c, $fd                                        ; $4e07: $0e $fd
	ld b, $ff                                        ; $4e09: $06 $ff

jr_06e_4e0b:
	sbc c                                            ; $4e0b: $99
	inc b                                            ; $4e0c: $04
	ld a, [hl]                                       ; $4e0d: $7e
	inc b                                            ; $4e0e: $04
	ld a, [hl-]                                      ; $4e0f: $3a
	inc c                                            ; $4e10: $0c
	add hl, de                                       ; $4e11: $19
	ld a, e                                          ; $4e12: $7b
	cp $96                                           ; $4e13: $fe $96
	add hl, bc                                       ; $4e15: $09
	inc c                                            ; $4e16: $0c
	dec bc                                           ; $4e17: $0b
	inc c                                            ; $4e18: $0c
	ld c, $05                                        ; $4e19: $0e $05
	inc c                                            ; $4e1b: $0c
	rlca                                             ; $4e1c: $07
	dec b                                            ; $4e1d: $05
	ld [hl], e                                       ; $4e1e: $73
	cp $9e                                           ; $4e1f: $fe $9e
	sub l                                            ; $4e21: $95
	ld a, e                                          ; $4e22: $7b
	cp $80                                           ; $4e23: $fe $80
	jp nc, $f203                                     ; $4e25: $d2 $03 $f2

	add e                                            ; $4e28: $83

jr_06e_4e29:
	pop af                                           ; $4e29: $f1
	add c                                            ; $4e2a: $81
	inc l                                            ; $4e2b: $2c
	di                                               ; $4e2c: $f3
	reti                                             ; $4e2d: $d9


	rst SubAFromBC                                          ; $4e2e: $e7
	or e                                             ; $4e2f: $b3
	adc $04                                          ; $4e30: $ce $04
	rst $38                                          ; $4e32: $ff
	dec bc                                           ; $4e33: $0b
	rst $38                                          ; $4e34: $ff
	ccf                                              ; $4e35: $3f
	db $fc                                           ; $4e36: $fc
	ld a, a                                          ; $4e37: $7f
	ldh [$e3], a                                     ; $4e38: $e0 $e3
	jp $87cf                                         ; $4e3a: $c3 $cf $87


	ld e, [hl]                                       ; $4e3d: $5e
	sbc $4b                                          ; $4e3e: $de $4b
	jp z, $c363                                      ; $4e40: $ca $63 $c3

	ld h, b                                          ; $4e43: $60
	add d                                            ; $4e44: $82
	pop bc                                           ; $4e45: $c1
	ld h, e                                          ; $4e46: $63
	pop hl                                           ; $4e47: $e1
	ld h, b                                          ; $4e48: $60
	ldh [$60], a                                     ; $4e49: $e0 $60
	ldh [rSVBK], a                                   ; $4e4b: $e0 $70
	ldh [$50], a                                     ; $4e4d: $e0 $50
	ldh a, [$58]                                     ; $4e4f: $f0 $58
	ldh a, [$9c]                                     ; $4e51: $f0 $9c
	ld hl, sp-$52                                    ; $4e53: $f8 $ae
	call c, $deaf                                    ; $4e55: $dc $af $de
	or e                                             ; $4e58: $b3
	rst SubAFromDE                                          ; $4e59: $df
	cp c                                             ; $4e5a: $b9
	rst SubAFromDE                                          ; $4e5b: $df
	cp $57                                           ; $4e5c: $fe $57
	rst SubAFromDE                                          ; $4e5e: $df
	ld [hl], c                                       ; $4e5f: $71
	rst SubAFromDE                                          ; $4e60: $df
	ld [hl], b                                       ; $4e61: $70
	ld [hl], a                                       ; $4e62: $77
	cp $80                                           ; $4e63: $fe $80
	cp $30                                           ; $4e65: $fe $30
	db $fc                                           ; $4e67: $fc
	sub b                                            ; $4e68: $90
	call nc, $ed90                                   ; $4e69: $d4 $90 $ed
	cp a                                             ; $4e6c: $bf
	db $ed                                           ; $4e6d: $ed
	ccf                                              ; $4e6e: $3f
	xor l                                            ; $4e6f: $ad
	ld a, a                                          ; $4e70: $7f
	ld a, l                                          ; $4e71: $7d
	rst FarCall                                          ; $4e72: $f7
	db $fc                                           ; $4e73: $fc
	sub a                                            ; $4e74: $97
	cp $13                                           ; $4e75: $fe $13
	xor $13                                          ; $4e77: $ee $13
	rst $38                                          ; $4e79: $ff
	add c                                            ; $4e7a: $81
	rst $38                                          ; $4e7b: $ff
	pop bc                                           ; $4e7c: $c1
	ld a, b                                          ; $4e7d: $78
	ld h, b                                          ; $4e7e: $60
	ldh [$e0], a                                     ; $4e7f: $e0 $e0
	and b                                            ; $4e81: $a0
	ldh [$e0], a                                     ; $4e82: $e0 $e0
	add b                                            ; $4e84: $80
	ld b, b                                          ; $4e85: $40
	rst JumpTable                                          ; $4e86: $c7
	add b                                            ; $4e87: $80
	dec e                                            ; $4e88: $1d
	ld [bc], a                                       ; $4e89: $02
	ld a, l                                          ; $4e8a: $7d
	ld b, $24                                        ; $4e8b: $06 $24
	rst $38                                          ; $4e8d: $ff
	ld h, $ff                                        ; $4e8e: $26 $ff
	scf                                              ; $4e90: $37
	db $fd                                           ; $4e91: $fd
	scf                                              ; $4e92: $37
	db $fd                                           ; $4e93: $fd
	cp l                                             ; $4e94: $bd
	xor $ee                                          ; $4e95: $ee $ee
	ld [hl], a                                       ; $4e97: $77
	rst $38                                          ; $4e98: $ff
	ld sp, $10ff                                     ; $4e99: $31 $ff $10
	ei                                               ; $4e9c: $fb
	rlca                                             ; $4e9d: $07
	rst FarCall                                          ; $4e9e: $f7
	rrca                                             ; $4e9f: $0f
	ld e, $0a                                        ; $4ea0: $1e $0a
	inc bc                                           ; $4ea2: $03
	inc bc                                           ; $4ea3: $03
	add b                                            ; $4ea4: $80
	ld bc, $8303                                     ; $4ea5: $01 $03 $83
	ld [bc], a                                       ; $4ea8: $02
	rst SubAFromBC                                          ; $4ea9: $e7
	ld bc, $00f1                                     ; $4eaa: $01 $f1 $00
	jp c, $d56d                                      ; $4ead: $da $6d $d5

	ld l, [hl]                                       ; $4eb0: $6e
	ld a, l                                          ; $4eb1: $7d
	and [hl]                                         ; $4eb2: $a6
	ld l, [hl]                                       ; $4eb3: $6e
	or e                                             ; $4eb4: $b3
	sub l                                            ; $4eb5: $95
	ei                                               ; $4eb6: $fb
	ld c, d                                          ; $4eb7: $4a
	db $fd                                           ; $4eb8: $fd
	and h                                            ; $4eb9: $a4
	rst $38                                          ; $4eba: $ff
	ldh a, [c]                                       ; $4ebb: $f2
	ld a, a                                          ; $4ebc: $7f
	ld sp, hl                                        ; $4ebd: $f9
	adc a                                            ; $4ebe: $8f
	db $fc                                           ; $4ebf: $fc
	rst SubAFromBC                                          ; $4ec0: $e7
	ld a, [hl]                                       ; $4ec1: $7e
	scf                                              ; $4ec2: $37
	db $fd                                           ; $4ec3: $fd
	sub [hl]                                         ; $4ec4: $96
	ld a, a                                          ; $4ec5: $7f
	db $ec                                           ; $4ec6: $ec
	rst SubAFromBC                                          ; $4ec7: $e7
	dec l                                            ; $4ec8: $2d
	and $dd                                          ; $4ec9: $e6 $dd
	add $f9                                          ; $4ecb: $c6 $f9
	ld c, $77                                        ; $4ecd: $0e $77
	cp $90                                           ; $4ecf: $fe $90
	ei                                               ; $4ed1: $fb
	inc e                                            ; $4ed2: $1c
	or $15                                           ; $4ed3: $f6 $15
	and $25                                          ; $4ed5: $e6 $25
	db $dd                                           ; $4ed7: $dd
	ld a, e                                          ; $4ed8: $7b
	sub l                                            ; $4ed9: $95
	ei                                               ; $4eda: $fb
	ld a, [hl+]                                      ; $4edb: $2a
	rst FarCall                                          ; $4edc: $f7
	ld [hl+], a                                      ; $4edd: $22
	rst $38                                          ; $4ede: $ff
	ld b, h                                          ; $4edf: $44
	ld a, e                                          ; $4ee0: $7b
	cp $95                                           ; $4ee1: $fe $95
	adc c                                            ; $4ee3: $89
	rst $38                                          ; $4ee4: $ff
	ld de, $32ff                                     ; $4ee5: $11 $ff $32
	rst $38                                          ; $4ee8: $ff
	ld h, h                                          ; $4ee9: $64
	rst $38                                          ; $4eea: $ff
	db $ed                                           ; $4eeb: $ed
	cp a                                             ; $4eec: $bf
	ld c, a                                          ; $4eed: $4f
	ld b, b                                          ; $4eee: $40
	sub e                                            ; $4eef: $93
	ldh [$c0], a                                     ; $4ef0: $e0 $c0
	jp $4f83                                         ; $4ef2: $c3 $83 $4f


	rst JumpTable                                          ; $4ef5: $c7
	ld e, [hl]                                       ; $4ef6: $5e
	sbc $6b                                          ; $4ef7: $de $6b
	jp z, $c361                                      ; $4ef9: $ca $61 $c3

	ld l, a                                          ; $4efc: $6f
	ld b, b                                          ; $4efd: $40
	ld c, e                                          ; $4efe: $4b
	ld h, b                                          ; $4eff: $60
	sbc d                                            ; $4f00: $9a
	ld bc, $81ff                                     ; $4f01: $01 $ff $81
	ld hl, sp-$40                                    ; $4f04: $f8 $c0
	db $dd                                           ; $4f06: $dd
	ldh [$7f], a                                     ; $4f07: $e0 $7f
	and $2f                                          ; $4f09: $e6 $2f
	ld h, b                                          ; $4f0b: $60
	sub [hl]                                         ; $4f0c: $96
	rst $38                                          ; $4f0d: $ff
	nop                                              ; $4f0e: $00
	rst $38                                          ; $4f0f: $ff
	rlca                                             ; $4f10: $07
	ccf                                              ; $4f11: $3f
	rrca                                             ; $4f12: $0f
	ld b, $02                                        ; $4f13: $06 $02
	rlca                                             ; $4f15: $07
	daa                                              ; $4f16: $27
	ld h, b                                          ; $4f17: $60
	sub [hl]                                         ; $4f18: $96
	rrca                                             ; $4f19: $0f
	db $fc                                           ; $4f1a: $fc
	add a                                            ; $4f1b: $87
	cp $e7                                           ; $4f1c: $fe $e7
	ld a, l                                          ; $4f1e: $7d
	scf                                              ; $4f1f: $37
	db $fc                                           ; $4f20: $fc
	rst $38                                          ; $4f21: $ff
	ld l, a                                          ; $4f22: $6f

jr_06e_4f23:
	ld h, b                                          ; $4f23: $60
	ld b, a                                          ; $4f24: $47
	add b                                            ; $4f25: $80
	sub l                                            ; $4f26: $95
	ret nz                                           ; $4f27: $c0

	add b                                            ; $4f28: $80
	ld b, e                                          ; $4f29: $43
	jp $c74f                                         ; $4f2a: $c3 $4f $c7


	ld a, [hl]                                       ; $4f2d: $7e
	sbc $65                                          ; $4f2e: $de $65
	rst JumpTable                                          ; $4f30: $c7
	cpl                                              ; $4f31: $2f
	add b                                            ; $4f32: $80
	sbc d                                            ; $4f33: $9a
	ld a, a                                          ; $4f34: $7f
	ld bc, $80f8                                     ; $4f35: $01 $f8 $80
	ldh [$7b], a                                     ; $4f38: $e0 $7b
	ld a, [hl]                                       ; $4f3a: $7e
	dec de                                           ; $4f3b: $1b
	add b                                            ; $4f3c: $80
	sub [hl]                                         ; $4f3d: $96
	nop                                              ; $4f3e: $00
	dec sp                                           ; $4f3f: $3b
	inc bc                                           ; $4f40: $03
	rlca                                             ; $4f41: $07
	rlca                                             ; $4f42: $07
	rrca                                             ; $4f43: $0f
	ld c, $82                                        ; $4f44: $0e $82
	inc bc                                           ; $4f46: $03
	dec hl                                           ; $4f47: $2b
	add b                                            ; $4f48: $80
	sub [hl]                                         ; $4f49: $96
	rlca                                             ; $4f4a: $07
	cp $87                                           ; $4f4b: $fe $87
	db $fd                                           ; $4f4d: $fd
	rst SubAFromBC                                          ; $4f4e: $e7
	inc a                                            ; $4f4f: $3c
	ld a, a                                          ; $4f50: $7f
	dec a                                            ; $4f51: $3d
	or $2f                                           ; $4f52: $f6 $2f
	add b                                            ; $4f54: $80
	sub l                                            ; $4f55: $95
	ld b, b                                          ; $4f56: $40
	ret nz                                           ; $4f57: $c0

	ld b, a                                          ; $4f58: $47
	ret nz                                           ; $4f59: $c0

	ld a, b                                          ; $4f5a: $78
	ret c                                            ; $4f5b: $d8

	ld l, a                                          ; $4f5c: $6f
	rst GetHLinHL                                          ; $4f5d: $cf
	ld h, a                                          ; $4f5e: $67
	rst SubAFromBC                                          ; $4f5f: $e7
	cpl                                              ; $4f60: $2f
	add b                                            ; $4f61: $80
	sbc [hl]                                         ; $4f62: $9e
	jr c, jr_06e_4f23                                ; $4f63: $38 $be

	add b                                            ; $4f65: $80
	nop                                              ; $4f66: $00
	ldh [$9c], a                                     ; $4f67: $e0 $9c
	ldh [$e7], a                                     ; $4f69: $e0 $e7
	ret nz                                           ; $4f6b: $c0

	daa                                              ; $4f6c: $27
	add b                                            ; $4f6d: $80
	ld a, a                                          ; $4f6e: $7f
	sbc $9e                                          ; $4f6f: $de $9e
	inc bc                                           ; $4f71: $03
	cp a                                             ; $4f72: $bf
	nop                                              ; $4f73: $00
	adc a                                            ; $4f74: $8f
	sbc h                                            ; $4f75: $9c
	rlca                                             ; $4f76: $07
	rst SubAFromBC                                          ; $4f77: $e7
	inc bc                                           ; $4f78: $03
	dec hl                                           ; $4f79: $2b
	add b                                            ; $4f7a: $80
	adc e                                            ; $4f7b: $8b
	rlca                                             ; $4f7c: $07
	dec a                                            ; $4f7d: $3d
	rst JumpTable                                          ; $4f7e: $c7
	inc e                                            ; $4f7f: $1c
	daa                                              ; $4f80: $27
	db $fd                                           ; $4f81: $fd
	cp $fd                                           ; $4f82: $fe $fd
	or $f9                                           ; $4f84: $f6 $f9
	ld c, $05                                        ; $4f86: $0e $05
	ld b, $00                                        ; $4f88: $06 $00
	nop                                              ; $4f8a: $00
	ld [$0708], sp                                   ; $4f8b: $08 $08 $07
	rlca                                             ; $4f8e: $07
	nop                                              ; $4f8f: $00
	cp [hl]                                          ; $4f90: $be
	rlca                                             ; $4f91: $07
	add b                                            ; $4f92: $80
	ret nz                                           ; $4f93: $c0

	ld a, e                                          ; $4f94: $7b
	ld h, $96                                        ; $4f95: $26 $96
	ld a, b                                          ; $4f97: $78
	ldh a, [$fe]                                     ; $4f98: $f0 $fe
	reti                                             ; $4f9a: $d9


	rst $38                                          ; $4f9b: $ff
	rst JumpTable                                          ; $4f9c: $c7
	db $e3                                           ; $4f9d: $e3
	ld b, b                                          ; $4f9e: $40
	ret nz                                           ; $4f9f: $c0

	ld a, e                                          ; $4fa0: $7b
	cp $df                                           ; $4fa1: $fe $df
	add b                                            ; $4fa3: $80
	cp [hl]                                          ; $4fa4: $be
	nop                                              ; $4fa5: $00
	nop                                              ; $4fa6: $00
	add b                                            ; $4fa7: $80
	sbc [hl]                                         ; $4fa8: $9e
	ld bc, $01bd                                     ; $4fa9: $01 $bd $01
	inc bc                                           ; $4fac: $03
	inc bc                                           ; $4fad: $03
	rlca                                             ; $4fae: $07
	adc [hl]                                         ; $4faf: $8e
	inc bc                                           ; $4fb0: $03
	ld e, $0f                                        ; $4fb1: $1e $0f
	ld a, [hl]                                       ; $4fb3: $7e
	ccf                                              ; $4fb4: $3f
	cp $ff                                           ; $4fb5: $fe $ff
	cp $f3                                           ; $4fb7: $fe $f3
	rst $38                                          ; $4fb9: $ff
	inc bc                                           ; $4fba: $03
	rst $38                                          ; $4fbb: $ff
	inc bc                                           ; $4fbc: $03
	ld a, $03                                        ; $4fbd: $3e $03
	dec e                                            ; $4fbf: $1d
	rlca                                             ; $4fc0: $07
	ld [hl], a                                       ; $4fc1: $77
	ret nz                                           ; $4fc2: $c0

	rst SubAFromDE                                          ; $4fc3: $df
	rrca                                             ; $4fc4: $0f
	inc bc                                           ; $4fc5: $03
	ret nz                                           ; $4fc6: $c0

	dec bc                                           ; $4fc7: $0b
	ret nz                                           ; $4fc8: $c0

	ld [hl], e                                       ; $4fc9: $73
	cp a                                             ; $4fca: $bf
	cp a                                             ; $4fcb: $bf
	add a                                            ; $4fcc: $87
	ret nz                                           ; $4fcd: $c0

	dec hl                                           ; $4fce: $2b
	ret nz                                           ; $4fcf: $c0

	sbc [hl]                                         ; $4fd0: $9e
	add c                                            ; $4fd1: $81
	inc bc                                           ; $4fd2: $03
	ret nz                                           ; $4fd3: $c0

	inc bc                                           ; $4fd4: $03
	ret nz                                           ; $4fd5: $c0

	dec hl                                           ; $4fd6: $2b
	ret nz                                           ; $4fd7: $c0

	rra                                              ; $4fd8: $1f
	ld [bc], a                                       ; $4fd9: $02
	add b                                            ; $4fda: $80
	dec de                                           ; $4fdb: $1b
	db $fc                                           ; $4fdc: $fc
	ldh [rIE], a                                     ; $4fdd: $e0 $ff
	ld b, e                                          ; $4fdf: $43
	ld a, a                                          ; $4fe0: $7f
	db $fd                                           ; $4fe1: $fd
	rst $38                                          ; $4fe2: $ff
	ld [de], a                                       ; $4fe3: $12
	rra                                              ; $4fe4: $1f
	inc h                                            ; $4fe5: $24
	ccf                                              ; $4fe6: $3f
	jr c, jr_06e_5018                                ; $4fe7: $38 $2f

	ld l, a                                          ; $4fe9: $6f
	ld e, a                                          ; $4fea: $5f
	call nc, $a9bb                                   ; $4feb: $d4 $bb $a9
	rst FarCall                                          ; $4fee: $f7
	jp hl                                            ; $4fef: $e9


	ld [hl], a                                       ; $4ff0: $77
	ldh a, [c]                                       ; $4ff1: $f2
	ccf                                              ; $4ff2: $3f
	ldh a, [c]                                       ; $4ff3: $f2
	rra                                              ; $4ff4: $1f
	db $fd                                           ; $4ff5: $fd
	ld c, $fd                                        ; $4ff6: $0e $fd
	ld b, $ff                                        ; $4ff8: $06 $ff
	sbc c                                            ; $4ffa: $99
	inc b                                            ; $4ffb: $04
	ld a, [hl]                                       ; $4ffc: $7e
	inc b                                            ; $4ffd: $04
	ld a, [hl-]                                      ; $4ffe: $3a
	inc c                                            ; $4fff: $0c
	add hl, de                                       ; $5000: $19
	ld a, e                                          ; $5001: $7b
	cp $96                                           ; $5002: $fe $96
	add hl, bc                                       ; $5004: $09
	inc c                                            ; $5005: $0c
	dec bc                                           ; $5006: $0b
	inc c                                            ; $5007: $0c
	ld c, $05                                        ; $5008: $0e $05
	inc c                                            ; $500a: $0c
	rlca                                             ; $500b: $07
	dec b                                            ; $500c: $05
	ld [hl], e                                       ; $500d: $73
	cp $9e                                           ; $500e: $fe $9e
	sub l                                            ; $5010: $95
	ld a, e                                          ; $5011: $7b
	cp $80                                           ; $5012: $fe $80
	jp nc, $f203                                     ; $5014: $d2 $03 $f2

	add e                                            ; $5017: $83

jr_06e_5018:
	pop af                                           ; $5018: $f1
	add c                                            ; $5019: $81
	inc l                                            ; $501a: $2c
	di                                               ; $501b: $f3
	reti                                             ; $501c: $d9


	rst SubAFromBC                                          ; $501d: $e7
	or d                                             ; $501e: $b2
	rst GetHLinHL                                          ; $501f: $cf
	dec b                                            ; $5020: $05
	rst $38                                          ; $5021: $ff
	dec bc                                           ; $5022: $0b
	cp $37                                           ; $5023: $fe $37
	db $fc                                           ; $5025: $fc
	ld a, a                                          ; $5026: $7f
	db $e3                                           ; $5027: $e3
	rst SubAFromBC                                          ; $5028: $e7
	rst JumpTable                                          ; $5029: $c7
	sbc $9e                                          ; $502a: $de $9e
	ld c, e                                          ; $502c: $4b
	jp z, $c343                                      ; $502d: $ca $43 $c3

	ld h, c                                          ; $5030: $61
	jp $8263                                         ; $5031: $c3 $63 $82


	jp nz, $e163                                     ; $5034: $c2 $63 $e1

	ld h, b                                          ; $5037: $60
	ldh [$60], a                                     ; $5038: $e0 $60
	ldh [rSVBK], a                                   ; $503a: $e0 $70
	ldh [$50], a                                     ; $503c: $e0 $50
	ldh a, [$58]                                     ; $503e: $f0 $58
	ldh a, [$9c]                                     ; $5040: $f0 $9c
	ld hl, sp-$52                                    ; $5042: $f8 $ae
	call c, $deaf                                    ; $5044: $dc $af $de
	or e                                             ; $5047: $b3
	rst SubAFromDE                                          ; $5048: $df
	cp c                                             ; $5049: $b9
	rst SubAFromDE                                          ; $504a: $df
	cp $57                                           ; $504b: $fe $57
	rst SubAFromDE                                          ; $504d: $df
	ld [hl], c                                       ; $504e: $71
	rst SubAFromDE                                          ; $504f: $df
	ld [hl], b                                       ; $5050: $70
	ld [hl], a                                       ; $5051: $77
	cp $86                                           ; $5052: $fe $86
	cp $30                                           ; $5054: $fe $30
	db $fc                                           ; $5056: $fc
	sub b                                            ; $5057: $90
	call nc, $ed90                                   ; $5058: $d4 $90 $ed
	cp a                                             ; $505b: $bf
	db $ed                                           ; $505c: $ed
	ccf                                              ; $505d: $3f
	dec l                                            ; $505e: $2d
	rst $38                                          ; $505f: $ff
	cp l                                             ; $5060: $bd
	rst FarCall                                          ; $5061: $f7
	call c, $fe77                                    ; $5062: $dc $77 $fe
	inc de                                           ; $5065: $13
	ld l, [hl]                                       ; $5066: $6e
	sub e                                            ; $5067: $93
	cp a                                             ; $5068: $bf
	pop bc                                           ; $5069: $c1
	ld a, a                                          ; $506a: $7f
	ld h, c                                          ; $506b: $61
	ld hl, sp-$22                                    ; $506c: $f8 $de
	ldh [$7b], a                                     ; $506e: $e0 $7b
	add $81                                          ; $5070: $c6 $81
	ret nz                                           ; $5072: $c0

	jp $0580                                         ; $5073: $c3 $80 $05


	ld [bc], a                                       ; $5076: $02
	dec c                                            ; $5077: $0d
	ld b, $24                                        ; $5078: $06 $24
	rst $38                                          ; $507a: $ff
	ld h, $ff                                        ; $507b: $26 $ff
	scf                                              ; $507d: $37
	db $fd                                           ; $507e: $fd
	dec [hl]                                         ; $507f: $35
	rst $38                                          ; $5080: $ff
	cp [hl]                                          ; $5081: $be
	rst AddAOntoHL                                          ; $5082: $ef

jr_06e_5083:
	rst AddAOntoHL                                          ; $5083: $ef
	ld [hl], l                                       ; $5084: $75
	rst $38                                          ; $5085: $ff
	jr nc, jr_06e_5083                               ; $5086: $30 $fb

	rla                                              ; $5088: $17
	rst FarCall                                          ; $5089: $f7
	ld c, $fe                                        ; $508a: $0e $fe
	ld a, [bc]                                       ; $508c: $0a
	ccf                                              ; $508d: $3f
	inc bc                                           ; $508e: $03
	ld bc, $fe7b                                     ; $508f: $01 $7b $fe
	add b                                            ; $5092: $80
	inc bc                                           ; $5093: $03
	ld [bc], a                                       ; $5094: $02

Jump_06e_5095:
	add a                                            ; $5095: $87
	ld bc, $0081                                     ; $5096: $01 $81 $00
	jp c, $d56d                                      ; $5099: $da $6d $d5

	ld l, [hl]                                       ; $509c: $6e
	ld a, l                                          ; $509d: $7d
	and [hl]                                         ; $509e: $a6
	ld l, [hl]                                       ; $509f: $6e
	or e                                             ; $50a0: $b3
	sub l                                            ; $50a1: $95
	ei                                               ; $50a2: $fb
	jp z, $e4fd                                      ; $50a3: $ca $fd $e4

	ld a, a                                          ; $50a6: $7f
	or d                                             ; $50a7: $b2
	rst SubAFromDE                                          ; $50a8: $df
	ld sp, hl                                        ; $50a9: $f9
	ld l, a                                          ; $50aa: $6f
	ld a, h                                          ; $50ab: $7c
	scf                                              ; $50ac: $37
	cp $7f                                           ; $50ad: $fe $7f
	db $ed                                           ; $50af: $ed
	rst SubAFromBC                                          ; $50b0: $e7
	xor h                                            ; $50b1: $ac
	sbc b                                            ; $50b2: $98
	rst SubAFromBC                                          ; $50b3: $e7
	dec l                                            ; $50b4: $2d
	and $dd                                          ; $50b5: $e6 $dd
	add $f9                                          ; $50b7: $c6 $f9
	ld c, $77                                        ; $50b9: $0e $77
	cp $90                                           ; $50bb: $fe $90
	ei                                               ; $50bd: $fb
	inc e                                            ; $50be: $1c
	or $15                                           ; $50bf: $f6 $15
	and $25                                          ; $50c1: $e6 $25
	db $dd                                           ; $50c3: $dd
	ld a, e                                          ; $50c4: $7b
	sub l                                            ; $50c5: $95
	ei                                               ; $50c6: $fb
	ld a, [hl+]                                      ; $50c7: $2a
	rst FarCall                                          ; $50c8: $f7
	ld [hl+], a                                      ; $50c9: $22
	rst $38                                          ; $50ca: $ff
	ld b, h                                          ; $50cb: $44
	ld a, e                                          ; $50cc: $7b
	cp $95                                           ; $50cd: $fe $95
	adc c                                            ; $50cf: $89
	rst $38                                          ; $50d0: $ff
	ld de, $32ff                                     ; $50d1: $11 $ff $32
	rst $38                                          ; $50d4: $ff
	ld h, h                                          ; $50d5: $64
	rst $38                                          ; $50d6: $ff
	db $ed                                           ; $50d7: $ed
	cp a                                             ; $50d8: $bf
	ld d, e                                          ; $50d9: $53
	ld b, b                                          ; $50da: $40
	sub d                                            ; $50db: $92
	ldh [$e3], a                                     ; $50dc: $e0 $e3
	jp $87cf                                         ; $50de: $c3 $cf $87


	ld e, [hl]                                       ; $50e1: $5e
	sbc $4b                                          ; $50e2: $de $4b
	jp z, $c363                                      ; $50e4: $ca $63 $c3

	ld h, b                                          ; $50e7: $60
	pop bc                                           ; $50e8: $c1
	ld l, a                                          ; $50e9: $6f
	ld b, b                                          ; $50ea: $40
	ld d, a                                          ; $50eb: $57
	ld h, b                                          ; $50ec: $60
	sub c                                            ; $50ed: $91
	xor $13                                          ; $50ee: $ee $13
	rst $38                                          ; $50f0: $ff
	add c                                            ; $50f1: $81
	rst $38                                          ; $50f2: $ff
	pop bc                                           ; $50f3: $c1
	ld a, b                                          ; $50f4: $78
	ld h, b                                          ; $50f5: $60
	ldh [$e0], a                                     ; $50f6: $e0 $e0
	and b                                            ; $50f8: $a0
	ldh [$e0], a                                     ; $50f9: $e0 $e0
	ld b, b                                          ; $50fb: $40
	scf                                              ; $50fc: $37
	ld h, b                                          ; $50fd: $60
	sub [hl]                                         ; $50fe: $96
	rst $38                                          ; $50ff: $ff
	db $10                                           ; $5100: $10
	ei                                               ; $5101: $fb
	rlca                                             ; $5102: $07
	rst FarCall                                          ; $5103: $f7
	rrca                                             ; $5104: $0f
	ld a, $0a                                        ; $5105: $3e $0a
	inc bc                                           ; $5107: $03
	dec hl                                           ; $5108: $2b
	ld h, b                                          ; $5109: $60
	ld a, [hl]                                       ; $510a: $7e
	xor d                                            ; $510b: $aa
	sub [hl]                                         ; $510c: $96
	ld sp, hl                                        ; $510d: $f9
	adc a                                            ; $510e: $8f
	db $fc                                           ; $510f: $fc
	rst SubAFromBC                                          ; $5110: $e7
	ld a, [hl]                                       ; $5111: $7e
	scf                                              ; $5112: $37
	db $fd                                           ; $5113: $fd
	ld a, a                                          ; $5114: $7f
	db $ec                                           ; $5115: $ec
	ld l, e                                          ; $5116: $6b
	ld h, b                                          ; $5117: $60
	ld c, a                                          ; $5118: $4f
	add b                                            ; $5119: $80
	sub e                                            ; $511a: $93
	ldh [$c0], a                                     ; $511b: $e0 $c0
	ret nz                                           ; $511d: $c0

	add b                                            ; $511e: $80
	ld b, e                                          ; $511f: $43
	jp $c74f                                         ; $5120: $c3 $4f $c7


	ld a, [hl]                                       ; $5123: $7e
	sbc $65                                          ; $5124: $de $65
	rst JumpTable                                          ; $5126: $c7
	inc sp                                           ; $5127: $33
	add b                                            ; $5128: $80
	sbc b                                            ; $5129: $98
	ld bc, $017f                                     ; $512a: $01 $7f $01
	ld hl, sp-$80                                    ; $512d: $f8 $80
	ldh [$c0], a                                     ; $512f: $e0 $c0
	halt                                             ; $5131: $76
	sbc $2f                                          ; $5132: $de $2f
	add b                                            ; $5134: $80
	sub e                                            ; $5135: $93
	rst $38                                          ; $5136: $ff
	nop                                              ; $5137: $00
	rst $38                                          ; $5138: $ff
	nop                                              ; $5139: $00
	dec sp                                           ; $513a: $3b
	inc bc                                           ; $513b: $03
	rlca                                             ; $513c: $07
	rlca                                             ; $513d: $07
	rrca                                             ; $513e: $0f

Jump_06e_513f:
	ld c, $02                                        ; $513f: $0e $02
	inc bc                                           ; $5141: $03
	inc sp                                           ; $5142: $33
	add b                                            ; $5143: $80
	sub h                                            ; $5144: $94
	rrca                                             ; $5145: $0f
	db $fc                                           ; $5146: $fc
	rlca                                             ; $5147: $07
	cp $87                                           ; $5148: $fe $87
	db $fd                                           ; $514a: $fd
	rst SubAFromBC                                          ; $514b: $e7
	inc a                                            ; $514c: $3c
	ld a, a                                          ; $514d: $7f
	dec a                                            ; $514e: $3d
	or $2f                                           ; $514f: $f6 $2f
	add b                                            ; $5151: $80
	sub l                                            ; $5152: $95
	ld b, b                                          ; $5153: $40
	ret nz                                           ; $5154: $c0

	ld b, a                                          ; $5155: $47
	ret nz                                           ; $5156: $c0

	ld a, b                                          ; $5157: $78
	ret c                                            ; $5158: $d8

	ld l, a                                          ; $5159: $6f
	rst GetHLinHL                                          ; $515a: $cf
	ld h, a                                          ; $515b: $67
	rst SubAFromBC                                          ; $515c: $e7
	cpl                                              ; $515d: $2f
	add b                                            ; $515e: $80
	sbc h                                            ; $515f: $9c
	jr c, jr_06e_5162                                ; $5160: $38 $00

jr_06e_5162:
	add b                                            ; $5162: $80
	cp $df                                           ; $5163: $fe $df
	ldh [$9d], a                                     ; $5165: $e0 $9d
	db $e3                                           ; $5167: $e3
	ret nz                                           ; $5168: $c0

	daa                                              ; $5169: $27
	add b                                            ; $516a: $80
	ld a, a                                          ; $516b: $7f
	sbc $9e                                          ; $516c: $de $9e
	inc bc                                           ; $516e: $03
	cp $9b                                           ; $516f: $fe $9b
	rrca                                             ; $5171: $0f
	rlca                                             ; $5172: $07
	add a                                            ; $5173: $87
	inc bc                                           ; $5174: $03
	dec hl                                           ; $5175: $2b
	add b                                            ; $5176: $80
	sub d                                            ; $5177: $92
	rlca                                             ; $5178: $07
	dec a                                            ; $5179: $3d
	rst JumpTable                                          ; $517a: $c7
	inc e                                            ; $517b: $1c
	daa                                              ; $517c: $27
	db $fd                                           ; $517d: $fd
	cp $fd                                           ; $517e: $fe $fd
	or $f9                                           ; $5180: $f6 $f9
	ld c, $05                                        ; $5182: $0e $05
	ld b, $7b                                        ; $5184: $06 $7b
	sub $99                                          ; $5186: $d6 $99
	rrca                                             ; $5188: $0f
	ld [$0708], sp                                   ; $5189: $08 $08 $07
	inc b                                            ; $518c: $04
	rlca                                             ; $518d: $07
	ld a, e                                          ; $518e: $7b
	ret nc                                           ; $518f: $d0

	rst SubAFromDE                                          ; $5190: $df
	ret nz                                           ; $5191: $c0

	sub h                                            ; $5192: $94
	db $e3                                           ; $5193: $e3
	ldh [$78], a                                     ; $5194: $e0 $78
	ldh a, [$fe]                                     ; $5196: $f0 $fe
	reti                                             ; $5198: $d9


	rst $38                                          ; $5199: $ff
	rst JumpTable                                          ; $519a: $c7
	db $e3                                           ; $519b: $e3
	ld b, b                                          ; $519c: $40
	ret nz                                           ; $519d: $c0

	ld a, e                                          ; $519e: $7b
	cp $df                                           ; $519f: $fe $df
	add b                                            ; $51a1: $80
	db $fd                                           ; $51a2: $fd
	add e                                            ; $51a3: $83
	add b                                            ; $51a4: $80
	ret nz                                           ; $51a5: $c0

	pop bc                                           ; $51a6: $c1
	ld b, b                                          ; $51a7: $40
	pop bc                                           ; $51a8: $c1
	add b                                            ; $51a9: $80
	add e                                            ; $51aa: $83
	add b                                            ; $51ab: $80
	inc bc                                           ; $51ac: $03
	nop                                              ; $51ad: $00
	rlca                                             ; $51ae: $07
	inc bc                                           ; $51af: $03
	ld e, $0f                                        ; $51b0: $1e $0f
	ld a, [hl]                                       ; $51b2: $7e
	ccf                                              ; $51b3: $3f
	cp $ff                                           ; $51b4: $fe $ff
	cp $f3                                           ; $51b6: $fe $f3
	rst $38                                          ; $51b8: $ff
	inc bc                                           ; $51b9: $03
	rst $38                                          ; $51ba: $ff
	inc bc                                           ; $51bb: $03
	ld a, $03                                        ; $51bc: $3e $03
	dec e                                            ; $51be: $1d
	rlca                                             ; $51bf: $07
	ld h, e                                          ; $51c0: $63
	ret nz                                           ; $51c1: $c0

	rst SubAFromDE                                          ; $51c2: $df
	rlca                                             ; $51c3: $07
	sbc e                                            ; $51c4: $9b
	inc bc                                           ; $51c5: $03
	add b                                            ; $51c6: $80
	nop                                              ; $51c7: $00
	jp $e67a                                         ; $51c8: $c3 $7a $e6


	scf                                              ; $51cb: $37
	ret nz                                           ; $51cc: $c0

	sbc [hl]                                         ; $51cd: $9e
	ld b, c                                          ; $51ce: $41
	ld [hl], a                                       ; $51cf: $77
	ret nz                                           ; $51d0: $c0

	ld a, e                                          ; $51d1: $7b
	ld l, d                                          ; $51d2: $6a
	daa                                              ; $51d3: $27
	ret nz                                           ; $51d4: $c0

	rst SubAFromDE                                          ; $51d5: $df
	inc c                                            ; $51d6: $0c
	ld a, e                                          ; $51d7: $7b
	pop bc                                           ; $51d8: $c1
	ld a, e                                          ; $51d9: $7b
	jr z, jr_06e_5203                                ; $51da: $28 $27

	ret nz                                           ; $51dc: $c0

	sbc h                                            ; $51dd: $9c
	pop bc                                           ; $51de: $c1
	ret nz                                           ; $51df: $c0

	pop bc                                           ; $51e0: $c1
	ld a, e                                          ; $51e1: $7b
	add d                                            ; $51e2: $82
	dec de                                           ; $51e3: $1b
	ret nz                                           ; $51e4: $c0

	sbc l                                            ; $51e5: $9d
	inc b                                            ; $51e6: $04
	inc bc                                           ; $51e7: $03
	ld a, e                                          ; $51e8: $7b
	dec c                                            ; $51e9: $0d
	ld a, a                                          ; $51ea: $7f
	sbc [hl]                                         ; $51eb: $9e
	rst SubAFromDE                                          ; $51ec: $df
	ret nz                                           ; $51ed: $c0

	dec hl                                           ; $51ee: $2b
	ret nz                                           ; $51ef: $c0

	sbc l                                            ; $51f0: $9d
	add b                                            ; $51f1: $80
	ld bc, $c27b                                     ; $51f2: $01 $7b $c2
	scf                                              ; $51f5: $37
	ret nz                                           ; $51f6: $c0

	nop                                              ; $51f7: $00
	ld [bc], a                                       ; $51f8: $02
	add b                                            ; $51f9: $80
	dec de                                           ; $51fa: $1b
	db $fc                                           ; $51fb: $fc
	ldh [rIE], a                                     ; $51fc: $e0 $ff
	ld b, e                                          ; $51fe: $43
	ld a, a                                          ; $51ff: $7f
	db $fd                                           ; $5200: $fd
	rst $38                                          ; $5201: $ff
	ld [de], a                                       ; $5202: $12

jr_06e_5203:
	rra                                              ; $5203: $1f
	inc h                                            ; $5204: $24
	ccf                                              ; $5205: $3f
	jr c, jr_06e_5237                                ; $5206: $38 $2f

	ld l, a                                          ; $5208: $6f
	ld e, a                                          ; $5209: $5f
	call nc, $a9bb                                   ; $520a: $d4 $bb $a9
	rst FarCall                                          ; $520d: $f7
	jp hl                                            ; $520e: $e9


	ld [hl], a                                       ; $520f: $77
	ldh a, [c]                                       ; $5210: $f2
	ccf                                              ; $5211: $3f
	ldh a, [c]                                       ; $5212: $f2
	rra                                              ; $5213: $1f
	db $fd                                           ; $5214: $fd
	ld c, $fd                                        ; $5215: $0e $fd
	ld b, $ff                                        ; $5217: $06 $ff
	sbc c                                            ; $5219: $99
	inc b                                            ; $521a: $04
	ld a, [hl]                                       ; $521b: $7e
	inc b                                            ; $521c: $04
	ld a, [hl-]                                      ; $521d: $3a
	inc c                                            ; $521e: $0c
	add hl, de                                       ; $521f: $19
	ld a, e                                          ; $5220: $7b
	cp $96                                           ; $5221: $fe $96
	add hl, bc                                       ; $5223: $09
	inc c                                            ; $5224: $0c
	dec bc                                           ; $5225: $0b
	inc c                                            ; $5226: $0c
	ld c, $05                                        ; $5227: $0e $05
	inc c                                            ; $5229: $0c
	rlca                                             ; $522a: $07
	dec b                                            ; $522b: $05
	ld [hl], e                                       ; $522c: $73
	cp $9e                                           ; $522d: $fe $9e
	sub l                                            ; $522f: $95
	ld a, e                                          ; $5230: $7b
	cp $80                                           ; $5231: $fe $80
	jp nc, $f203                                     ; $5233: $d2 $03 $f2

	add e                                            ; $5236: $83

jr_06e_5237:
	pop af                                           ; $5237: $f1
	add c                                            ; $5238: $81
	inc l                                            ; $5239: $2c
	di                                               ; $523a: $f3
	reti                                             ; $523b: $d9


	rst SubAFromBC                                          ; $523c: $e7
	or e                                             ; $523d: $b3
	adc $04                                          ; $523e: $ce $04
	rst $38                                          ; $5240: $ff
	dec bc                                           ; $5241: $0b
	rst $38                                          ; $5242: $ff
	ccf                                              ; $5243: $3f
	db $fc                                           ; $5244: $fc
	ld a, a                                          ; $5245: $7f
	ldh [$e3], a                                     ; $5246: $e0 $e3
	jp $87cf                                         ; $5248: $c3 $cf $87


	ld e, [hl]                                       ; $524b: $5e
	sbc $4b                                          ; $524c: $de $4b
	jp z, $c363                                      ; $524e: $ca $63 $c3

	ld h, b                                          ; $5251: $60
	add d                                            ; $5252: $82
	pop bc                                           ; $5253: $c1
	ld h, e                                          ; $5254: $63
	pop hl                                           ; $5255: $e1
	ld h, b                                          ; $5256: $60
	ldh [$60], a                                     ; $5257: $e0 $60
	ldh [rSVBK], a                                   ; $5259: $e0 $70
	ldh [$50], a                                     ; $525b: $e0 $50
	ldh a, [$58]                                     ; $525d: $f0 $58
	ldh a, [$9c]                                     ; $525f: $f0 $9c
	ld hl, sp-$52                                    ; $5261: $f8 $ae
	call c, $deaf                                    ; $5263: $dc $af $de
	or e                                             ; $5266: $b3
	rst SubAFromDE                                          ; $5267: $df
	cp c                                             ; $5268: $b9
	rst SubAFromDE                                          ; $5269: $df
	cp $57                                           ; $526a: $fe $57
	rst SubAFromDE                                          ; $526c: $df
	ld [hl], c                                       ; $526d: $71
	rst SubAFromDE                                          ; $526e: $df
	ld [hl], b                                       ; $526f: $70
	ld [hl], a                                       ; $5270: $77
	cp $80                                           ; $5271: $fe $80
	cp $30                                           ; $5273: $fe $30
	db $fc                                           ; $5275: $fc
	sub b                                            ; $5276: $90
	call nc, $ed90                                   ; $5277: $d4 $90 $ed
	cp a                                             ; $527a: $bf
	db $ed                                           ; $527b: $ed
	ccf                                              ; $527c: $3f
	db $ed                                           ; $527d: $ed
	ccf                                              ; $527e: $3f
	ld a, l                                          ; $527f: $7d
	or a                                             ; $5280: $b7
	sbc h                                            ; $5281: $9c
	rst FarCall                                          ; $5282: $f7
	cp $73                                           ; $5283: $fe $73
	cp $13                                           ; $5285: $fe $13
	rst $38                                          ; $5287: $ff
	add c                                            ; $5288: $81
	rst $38                                          ; $5289: $ff
	pop bc                                           ; $528a: $c1
	ld a, b                                          ; $528b: $78
	ld h, b                                          ; $528c: $60
	ldh [$e0], a                                     ; $528d: $e0 $e0
	and b                                            ; $528f: $a0
	ldh [$e0], a                                     ; $5290: $e0 $e0
	add b                                            ; $5292: $80
	ld b, b                                          ; $5293: $40
	jp $0580                                         ; $5294: $c3 $80 $05


	ld [bc], a                                       ; $5297: $02
	dec c                                            ; $5298: $0d
	ld b, $24                                        ; $5299: $06 $24
	rst $38                                          ; $529b: $ff
	ld h, $ff                                        ; $529c: $26 $ff
	scf                                              ; $529e: $37
	db $fd                                           ; $529f: $fd
	scf                                              ; $52a0: $37
	db $fd                                           ; $52a1: $fd
	cp h                                             ; $52a2: $bc
	rst AddAOntoHL                                          ; $52a3: $ef
	rst SubAFromBC                                          ; $52a4: $e7
	ld a, a                                          ; $52a5: $7f
	rst $38                                          ; $52a6: $ff
	jr nc, @+$01                                     ; $52a7: $30 $ff

	db $10                                           ; $52a9: $10
	ei                                               ; $52aa: $fb
	rlca                                             ; $52ab: $07
	rst FarCall                                          ; $52ac: $f7
	rrca                                             ; $52ad: $0f
	ld a, $0a                                        ; $52ae: $3e $0a
	inc bc                                           ; $52b0: $03
	inc bc                                           ; $52b1: $03
	add b                                            ; $52b2: $80
	ld bc, $0303                                     ; $52b3: $01 $03 $03
	ld [bc], a                                       ; $52b6: $02
	add a                                            ; $52b7: $87
	ld bc, $0081                                     ; $52b8: $01 $81 $00
	jp c, $d56d                                      ; $52bb: $da $6d $d5

	ld l, [hl]                                       ; $52be: $6e
	ld a, l                                          ; $52bf: $7d
	and [hl]                                         ; $52c0: $a6
	ld l, [hl]                                       ; $52c1: $6e
	or e                                             ; $52c2: $b3
	sub l                                            ; $52c3: $95
	ei                                               ; $52c4: $fb
	jp z, $e4fd                                      ; $52c5: $ca $fd $e4

	ld a, a                                          ; $52c8: $7f
	ldh a, [c]                                       ; $52c9: $f2
	rra                                              ; $52ca: $1f
	ld sp, hl                                        ; $52cb: $f9
	adc a                                            ; $52cc: $8f
	db $fc                                           ; $52cd: $fc
	rst SubAFromBC                                          ; $52ce: $e7
	ld a, [hl]                                       ; $52cf: $7e
	scf                                              ; $52d0: $37
	db $fd                                           ; $52d1: $fd
	sub [hl]                                         ; $52d2: $96
	ld a, a                                          ; $52d3: $7f
	db $ec                                           ; $52d4: $ec
	rst SubAFromBC                                          ; $52d5: $e7
	dec l                                            ; $52d6: $2d
	and $dd                                          ; $52d7: $e6 $dd
	add $f9                                          ; $52d9: $c6 $f9
	ld c, $77                                        ; $52db: $0e $77
	cp $90                                           ; $52dd: $fe $90
	ei                                               ; $52df: $fb
	inc e                                            ; $52e0: $1c
	or $15                                           ; $52e1: $f6 $15
	and $25                                          ; $52e3: $e6 $25
	db $dd                                           ; $52e5: $dd
	ld a, e                                          ; $52e6: $7b
	sub l                                            ; $52e7: $95
	ei                                               ; $52e8: $fb
	ld a, [hl+]                                      ; $52e9: $2a
	rst FarCall                                          ; $52ea: $f7
	ld [hl+], a                                      ; $52eb: $22
	rst $38                                          ; $52ec: $ff
	ld b, h                                          ; $52ed: $44
	ld a, e                                          ; $52ee: $7b
	cp $95                                           ; $52ef: $fe $95
	adc c                                            ; $52f1: $89
	rst $38                                          ; $52f2: $ff
	ld de, $32ff                                     ; $52f3: $11 $ff $32
	rst $38                                          ; $52f6: $ff
	ld h, h                                          ; $52f7: $64
	rst $38                                          ; $52f8: $ff
	db $ed                                           ; $52f9: $ed
	cp a                                             ; $52fa: $bf
	ld c, a                                          ; $52fb: $4f
	ld b, b                                          ; $52fc: $40
	sub e                                            ; $52fd: $93
	ldh [$c0], a                                     ; $52fe: $e0 $c0
	jp $4f83                                         ; $5300: $c3 $83 $4f


	rst JumpTable                                          ; $5303: $c7
	ld e, [hl]                                       ; $5304: $5e
	sbc $6b                                          ; $5305: $de $6b
	jp z, $c361                                      ; $5307: $ca $61 $c3

	ld l, a                                          ; $530a: $6f
	ld b, b                                          ; $530b: $40
	ld c, e                                          ; $530c: $4b
	ld h, b                                          ; $530d: $60
	sbc d                                            ; $530e: $9a
	ld bc, $81ff                                     ; $530f: $01 $ff $81
	ld hl, sp-$40                                    ; $5312: $f8 $c0
	db $dd                                           ; $5314: $dd
	ldh [$7f], a                                     ; $5315: $e0 $7f
	and $2f                                          ; $5317: $e6 $2f
	ld h, b                                          ; $5319: $60
	sub [hl]                                         ; $531a: $96
	rst $38                                          ; $531b: $ff
	nop                                              ; $531c: $00
	rst $38                                          ; $531d: $ff
	rlca                                             ; $531e: $07
	ccf                                              ; $531f: $3f
	rrca                                             ; $5320: $0f
	ld b, $02                                        ; $5321: $06 $02
	rlca                                             ; $5323: $07
	daa                                              ; $5324: $27
	ld h, b                                          ; $5325: $60
	sub [hl]                                         ; $5326: $96
	rrca                                             ; $5327: $0f
	db $fc                                           ; $5328: $fc
	add a                                            ; $5329: $87
	cp $e7                                           ; $532a: $fe $e7
	ld a, l                                          ; $532c: $7d
	scf                                              ; $532d: $37
	db $fc                                           ; $532e: $fc
	rst $38                                          ; $532f: $ff
	ld l, a                                          ; $5330: $6f
	ld h, b                                          ; $5331: $60
	ld b, a                                          ; $5332: $47
	add b                                            ; $5333: $80
	sub l                                            ; $5334: $95
	ret nz                                           ; $5335: $c0

	add b                                            ; $5336: $80
	ld b, e                                          ; $5337: $43
	jp $c74f                                         ; $5338: $c3 $4f $c7


	ld a, [hl]                                       ; $533b: $7e
	sbc $65                                          ; $533c: $de $65
	rst JumpTable                                          ; $533e: $c7
	cpl                                              ; $533f: $2f
	add b                                            ; $5340: $80
	sbc d                                            ; $5341: $9a
	ld a, a                                          ; $5342: $7f
	ld bc, $80f8                                     ; $5343: $01 $f8 $80
	ldh [$7b], a                                     ; $5346: $e0 $7b
	ld a, [hl]                                       ; $5348: $7e
	dec de                                           ; $5349: $1b
	add b                                            ; $534a: $80
	sub [hl]                                         ; $534b: $96
	nop                                              ; $534c: $00
	dec sp                                           ; $534d: $3b
	inc bc                                           ; $534e: $03
	rlca                                             ; $534f: $07
	rlca                                             ; $5350: $07
	rrca                                             ; $5351: $0f
	ld c, $02                                        ; $5352: $0e $02
	inc bc                                           ; $5354: $03
	dec hl                                           ; $5355: $2b
	add b                                            ; $5356: $80
	sub [hl]                                         ; $5357: $96
	rlca                                             ; $5358: $07
	cp $87                                           ; $5359: $fe $87
	db $fd                                           ; $535b: $fd
	rst SubAFromBC                                          ; $535c: $e7
	inc a                                            ; $535d: $3c
	ld a, a                                          ; $535e: $7f
	dec a                                            ; $535f: $3d
	or $2f                                           ; $5360: $f6 $2f
	add b                                            ; $5362: $80
	sub l                                            ; $5363: $95
	ld b, b                                          ; $5364: $40
	ret nz                                           ; $5365: $c0

	ld b, a                                          ; $5366: $47
	ret nz                                           ; $5367: $c0

	ld a, b                                          ; $5368: $78
	ret c                                            ; $5369: $d8

	ld l, a                                          ; $536a: $6f
	rst GetHLinHL                                          ; $536b: $cf
	ld h, a                                          ; $536c: $67
	rst SubAFromBC                                          ; $536d: $e7
	cpl                                              ; $536e: $2f
	add b                                            ; $536f: $80
	sbc h                                            ; $5370: $9c
	jr c, jr_06e_5373                                ; $5371: $38 $00

jr_06e_5373:
	add b                                            ; $5373: $80
	cp $df                                           ; $5374: $fe $df
	ldh [$9d], a                                     ; $5376: $e0 $9d
	db $e3                                           ; $5378: $e3
	ret nz                                           ; $5379: $c0

	daa                                              ; $537a: $27
	add b                                            ; $537b: $80
	ld a, a                                          ; $537c: $7f
	sbc $9e                                          ; $537d: $de $9e
	inc bc                                           ; $537f: $03
	cp $9b                                           ; $5380: $fe $9b
	rrca                                             ; $5382: $0f
	rlca                                             ; $5383: $07
	add a                                            ; $5384: $87
	inc bc                                           ; $5385: $03
	dec hl                                           ; $5386: $2b
	add b                                            ; $5387: $80
	sub d                                            ; $5388: $92
	rlca                                             ; $5389: $07
	dec a                                            ; $538a: $3d
	rst JumpTable                                          ; $538b: $c7
	inc e                                            ; $538c: $1c
	daa                                              ; $538d: $27
	db $fd                                           ; $538e: $fd
	cp $fd                                           ; $538f: $fe $fd
	or $f9                                           ; $5391: $f6 $f9
	ld c, $05                                        ; $5393: $0e $05
	ld b, $7b                                        ; $5395: $06 $7b
	sub $9c                                          ; $5397: $d6 $9c
	rrca                                             ; $5399: $0f
	ld [$de08], sp                                   ; $539a: $08 $08 $de
	rlca                                             ; $539d: $07
	sbc e                                            ; $539e: $9b
	inc bc                                           ; $539f: $03
	add b                                            ; $53a0: $80
	nop                                              ; $53a1: $00
	jp $267b                                         ; $53a2: $c3 $7b $26


	sub [hl]                                         ; $53a5: $96
	ld a, b                                          ; $53a6: $78
	ldh a, [$fe]                                     ; $53a7: $f0 $fe
	reti                                             ; $53a9: $d9


	rst $38                                          ; $53aa: $ff
	rst JumpTable                                          ; $53ab: $c7
	db $e3                                           ; $53ac: $e3
	ld b, b                                          ; $53ad: $40
	ret nz                                           ; $53ae: $c0

	ld a, e                                          ; $53af: $7b
	cp $df                                           ; $53b0: $fe $df
	add b                                            ; $53b2: $80
	db $fd                                           ; $53b3: $fd
	sbc b                                            ; $53b4: $98
	add b                                            ; $53b5: $80
	ret nz                                           ; $53b6: $c0

	ld b, c                                          ; $53b7: $41
	ld b, b                                          ; $53b8: $40
	pop bc                                           ; $53b9: $c1
	add b                                            ; $53ba: $80
	add e                                            ; $53bb: $83
	ld a, e                                          ; $53bc: $7b
	xor d                                            ; $53bd: $aa
	ld a, a                                          ; $53be: $7f
	call c, $1e8f                                    ; $53bf: $dc $8f $1e
	rrca                                             ; $53c2: $0f
	ld a, [hl]                                       ; $53c3: $7e
	ccf                                              ; $53c4: $3f
	cp $ff                                           ; $53c5: $fe $ff
	cp $f3                                           ; $53c7: $fe $f3
	rst $38                                          ; $53c9: $ff
	inc bc                                           ; $53ca: $03
	rst $38                                          ; $53cb: $ff
	inc bc                                           ; $53cc: $03
	ld a, $03                                        ; $53cd: $3e $03
	dec e                                            ; $53cf: $1d
	rlca                                             ; $53d0: $07
	ld e, a                                          ; $53d1: $5f
	ret nz                                           ; $53d2: $c0

	ld a, a                                          ; $53d3: $7f
	ldh [c], a                                       ; $53d4: $e2
	rrca                                             ; $53d5: $0f
	ret nz                                           ; $53d6: $c0

	ld a, a                                          ; $53d7: $7f
	ldh [$1f], a                                     ; $53d8: $e0 $1f
	ret nz                                           ; $53da: $c0

	rst SubAFromDE                                          ; $53db: $df
	inc b                                            ; $53dc: $04
	rst SubAFromDE                                          ; $53dd: $df
	inc bc                                           ; $53de: $03
	rst $38                                          ; $53df: $ff
	ld a, a                                          ; $53e0: $7f
	sbc [hl]                                         ; $53e1: $9e
	rst SubAFromDE                                          ; $53e2: $df
	ret nz                                           ; $53e3: $c0

	cpl                                              ; $53e4: $2f
	ret nz                                           ; $53e5: $c0

	sbc h                                            ; $53e6: $9c
	add c                                            ; $53e7: $81
	add b                                            ; $53e8: $80
	ld bc, $c27b                                     ; $53e9: $01 $7b $c2
	rra                                              ; $53ec: $1f
	ret nz                                           ; $53ed: $c0

	rst SubAFromDE                                          ; $53ee: $df
	rlca                                             ; $53ef: $07
	rst $38                                          ; $53f0: $ff
	ld [hl], a                                       ; $53f1: $77
	add b                                            ; $53f2: $80
	inc bc                                           ; $53f3: $03
	ret nz                                           ; $53f4: $c0

	ld b, e                                          ; $53f5: $43
	ret nz                                           ; $53f6: $c0

	ldh a, [c]                                       ; $53f7: $f2
	ld bc, $1b80                                     ; $53f8: $01 $80 $1b
	db $fc                                           ; $53fb: $fc
	ldh [rIE], a                                     ; $53fc: $e0 $ff
	ld b, e                                          ; $53fe: $43
	ld a, a                                          ; $53ff: $7f
	db $fd                                           ; $5400: $fd
	rst $38                                          ; $5401: $ff
	ld [de], a                                       ; $5402: $12
	rra                                              ; $5403: $1f
	inc h                                            ; $5404: $24
	ccf                                              ; $5405: $3f
	jr c, jr_06e_5437                                ; $5406: $38 $2f

	ld l, a                                          ; $5408: $6f
	ld e, a                                          ; $5409: $5f
	call nc, $a9bb                                   ; $540a: $d4 $bb $a9
	rst FarCall                                          ; $540d: $f7
	jp hl                                            ; $540e: $e9


	ld [hl], a                                       ; $540f: $77
	ldh a, [c]                                       ; $5410: $f2
	ccf                                              ; $5411: $3f
	ldh a, [c]                                       ; $5412: $f2
	rra                                              ; $5413: $1f
	db $fd                                           ; $5414: $fd
	ld c, $fd                                        ; $5415: $0e $fd
	ld b, $ff                                        ; $5417: $06 $ff
	sbc c                                            ; $5419: $99
	inc b                                            ; $541a: $04
	ld a, [hl]                                       ; $541b: $7e
	inc b                                            ; $541c: $04
	ld a, [hl-]                                      ; $541d: $3a
	inc c                                            ; $541e: $0c
	add hl, de                                       ; $541f: $19
	ld a, e                                          ; $5420: $7b
	cp $96                                           ; $5421: $fe $96
	add hl, bc                                       ; $5423: $09
	inc c                                            ; $5424: $0c
	dec bc                                           ; $5425: $0b
	inc c                                            ; $5426: $0c
	ld c, $05                                        ; $5427: $0e $05
	inc c                                            ; $5429: $0c
	rlca                                             ; $542a: $07
	dec b                                            ; $542b: $05
	ld [hl], e                                       ; $542c: $73
	cp $9e                                           ; $542d: $fe $9e
	sub l                                            ; $542f: $95
	ld a, e                                          ; $5430: $7b
	cp $80                                           ; $5431: $fe $80
	jp nc, $f203                                     ; $5433: $d2 $03 $f2

	add e                                            ; $5436: $83

jr_06e_5437:
	pop af                                           ; $5437: $f1
	add c                                            ; $5438: $81
	inc l                                            ; $5439: $2c
	di                                               ; $543a: $f3
	reti                                             ; $543b: $d9


	rst SubAFromBC                                          ; $543c: $e7
	or e                                             ; $543d: $b3
	adc $07                                          ; $543e: $ce $07
	db $fc                                           ; $5440: $fc
	ld [$3fff], sp                                   ; $5441: $08 $ff $3f
	rst $38                                          ; $5444: $ff
	ld a, a                                          ; $5445: $7f
	ldh [$e3], a                                     ; $5446: $e0 $e3
	jp $87cf                                         ; $5448: $c3 $cf $87


	ld e, [hl]                                       ; $544b: $5e
	sbc $4b                                          ; $544c: $de $4b
	jp z, $c363                                      ; $544e: $ca $63 $c3

	ld h, e                                          ; $5451: $63
	add d                                            ; $5452: $82
	jp nz, $e163                                     ; $5453: $c2 $63 $e1

	ld h, b                                          ; $5456: $60
	ldh [$60], a                                     ; $5457: $e0 $60
	ldh [rSVBK], a                                   ; $5459: $e0 $70
	ldh [$50], a                                     ; $545b: $e0 $50
	ldh a, [$58]                                     ; $545d: $f0 $58
	ldh a, [$9c]                                     ; $545f: $f0 $9c
	ld hl, sp-$52                                    ; $5461: $f8 $ae
	call c, $deaf                                    ; $5463: $dc $af $de
	or e                                             ; $5466: $b3
	rst SubAFromDE                                          ; $5467: $df
	cp c                                             ; $5468: $b9
	rst SubAFromDE                                          ; $5469: $df
	cp $57                                           ; $546a: $fe $57
	rst SubAFromDE                                          ; $546c: $df
	ld [hl], c                                       ; $546d: $71
	rst SubAFromDE                                          ; $546e: $df
	ld [hl], b                                       ; $546f: $70
	ld [hl], a                                       ; $5470: $77
	cp $80                                           ; $5471: $fe $80
	cp $30                                           ; $5473: $fe $30
	db $fc                                           ; $5475: $fc
	sub b                                            ; $5476: $90
	call nc, $ed90                                   ; $5477: $d4 $90 $ed
	cp a                                             ; $547a: $bf
	db $ed                                           ; $547b: $ed
	ccf                                              ; $547c: $3f
	db $ed                                           ; $547d: $ed
	ccf                                              ; $547e: $3f
	db $dd                                           ; $547f: $dd
	scf                                              ; $5480: $37
	db $fc                                           ; $5481: $fc
	rla                                              ; $5482: $17
	ld a, $d3                                        ; $5483: $3e $d3
	adc $f3                                          ; $5485: $ce $f3
	rst $38                                          ; $5487: $ff
	ld sp, $c1ff                                     ; $5488: $31 $ff $c1
	ld a, b                                          ; $548b: $78
	ld h, b                                          ; $548c: $60
	ldh [$e0], a                                     ; $548d: $e0 $e0
	and b                                            ; $548f: $a0
	ldh [$60], a                                     ; $5490: $e0 $60
	add b                                            ; $5492: $80
	ret nz                                           ; $5493: $c0

	jp $0580                                         ; $5494: $c3 $80 $05


	ld [bc], a                                       ; $5497: $02
	dec c                                            ; $5498: $0d
	ld b, $24                                        ; $5499: $06 $24
	rst $38                                          ; $549b: $ff
	ld h, $ff                                        ; $549c: $26 $ff
	scf                                              ; $549e: $37
	db $fd                                           ; $549f: $fd
	scf                                              ; $54a0: $37
	db $fd                                           ; $54a1: $fd
	cp [hl]                                          ; $54a2: $be
	db $ed                                           ; $54a3: $ed
	push af                                          ; $54a4: $f5
	ld l, a                                          ; $54a5: $6f
	rst AddAOntoHL                                          ; $54a6: $ef
	ld a, $ff                                        ; $54a7: $3e $ff
	ld [hl], b                                       ; $54a9: $70
	db $fd                                           ; $54aa: $fd
	inc bc                                           ; $54ab: $03
	rst $38                                          ; $54ac: $ff
	rlca                                             ; $54ad: $07
	ld e, $0e                                        ; $54ae: $1e $0e
	rlca                                             ; $54b0: $07
	inc bc                                           ; $54b1: $03
	adc d                                            ; $54b2: $8a
	ld bc, $0303                                     ; $54b3: $01 $03 $03
	ld [bc], a                                       ; $54b6: $02
	add a                                            ; $54b7: $87
	ld bc, $0081                                     ; $54b8: $01 $81 $00
	jp c, $d56d                                      ; $54bb: $da $6d $d5

	ld l, [hl]                                       ; $54be: $6e
	ld a, l                                          ; $54bf: $7d
	and [hl]                                         ; $54c0: $a6
	ld l, [hl]                                       ; $54c1: $6e
	or e                                             ; $54c2: $b3
	sub l                                            ; $54c3: $95
	ei                                               ; $54c4: $fb
	jp z, $e4fd                                      ; $54c5: $ca $fd $e4

	ld a, e                                          ; $54c8: $7b
	ld c, d                                          ; $54c9: $4a
	adc a                                            ; $54ca: $8f
	cp c                                             ; $54cb: $b9
	rst GetHLinHL                                          ; $54cc: $cf
	db $fc                                           ; $54cd: $fc
	rst SubAFromBC                                          ; $54ce: $e7
	ld a, [hl]                                       ; $54cf: $7e
	ld [hl], a                                       ; $54d0: $77
	db $fd                                           ; $54d1: $fd
	ld a, a                                          ; $54d2: $7f
	xor h                                            ; $54d3: $ac
	rst SubAFromBC                                          ; $54d4: $e7
	dec l                                            ; $54d5: $2d
	and $dd                                          ; $54d6: $e6 $dd
	add $f9                                          ; $54d8: $c6 $f9
	ld c, $77                                        ; $54da: $0e $77
	cp $90                                           ; $54dc: $fe $90
	ei                                               ; $54de: $fb
	inc e                                            ; $54df: $1c
	or $15                                           ; $54e0: $f6 $15
	and $25                                          ; $54e2: $e6 $25
	db $dd                                           ; $54e4: $dd
	ld a, e                                          ; $54e5: $7b
	sub l                                            ; $54e6: $95
	ei                                               ; $54e7: $fb
	ld a, [hl+]                                      ; $54e8: $2a
	rst FarCall                                          ; $54e9: $f7
	ld [hl+], a                                      ; $54ea: $22
	rst $38                                          ; $54eb: $ff

Call_06e_54ec:
	ld b, h                                          ; $54ec: $44
	ld a, e                                          ; $54ed: $7b
	cp $95                                           ; $54ee: $fe $95
	adc c                                            ; $54f0: $89
	rst $38                                          ; $54f1: $ff
	ld de, $32ff                                     ; $54f2: $11 $ff $32
	rst $38                                          ; $54f5: $ff
	ld h, h                                          ; $54f6: $64
	rst $38                                          ; $54f7: $ff
	db $ed                                           ; $54f8: $ed
	cp a                                             ; $54f9: $bf
	ld c, a                                          ; $54fa: $4f
	ld b, b                                          ; $54fb: $40
	sub [hl]                                         ; $54fc: $96
	ldh [$c0], a                                     ; $54fd: $e0 $c0
	jp $4f83                                         ; $54ff: $c3 $83 $4f


	rst JumpTable                                          ; $5502: $c7
	ld e, [hl]                                       ; $5503: $5e
	sbc $6b                                          ; $5504: $de $6b
	ld [hl], a                                       ; $5506: $77
	ld a, $73                                        ; $5507: $3e $73
	ld b, b                                          ; $5509: $40
	ld b, e                                          ; $550a: $43
	ld h, b                                          ; $550b: $60
	sbc h                                            ; $550c: $9c
	ld bc, $c0f8                                     ; $550d: $01 $f8 $c0
	db $dd                                           ; $5510: $dd
	ldh [$27], a                                     ; $5511: $e0 $27
	ld h, b                                          ; $5513: $60
	sub a                                            ; $5514: $97
	rst $38                                          ; $5515: $ff
	nop                                              ; $5516: $00
	rst $38                                          ; $5517: $ff
	ld bc, $070f                                     ; $5518: $01 $0f $07
	ld b, $06                                        ; $551b: $06 $06
	daa                                              ; $551d: $27
	ld h, b                                          ; $551e: $60
	sub l                                            ; $551f: $95
	ld sp, hl                                        ; $5520: $f9
	rrca                                             ; $5521: $0f
	db $fc                                           ; $5522: $fc
	rst JumpTable                                          ; $5523: $c7
	cp $e7                                           ; $5524: $fe $e7
	db $fd                                           ; $5526: $fd
	ld [hl], a                                       ; $5527: $77
	cp h                                             ; $5528: $bc
	rst $38                                          ; $5529: $ff
	ld l, a                                          ; $552a: $6f
	ld h, b                                          ; $552b: $60
	ld b, a                                          ; $552c: $47
	add b                                            ; $552d: $80

jr_06e_552e:
	sub l                                            ; $552e: $95
	ret nz                                           ; $552f: $c0

	add b                                            ; $5530: $80
	ld b, e                                          ; $5531: $43
	jp $c74f                                         ; $5532: $c3 $4f $c7


	ld a, [hl]                                       ; $5535: $7e
	sbc $65                                          ; $5536: $de $65
	rst JumpTable                                          ; $5538: $c7
	cpl                                              ; $5539: $2f
	add b                                            ; $553a: $80
	sbc d                                            ; $553b: $9a
	ld a, a                                          ; $553c: $7f
	ld bc, $80f8                                     ; $553d: $01 $f8 $80
	ldh [$7b], a                                     ; $5540: $e0 $7b
	ld a, [hl]                                       ; $5542: $7e
	ld a, a                                          ; $5543: $7f
	and $27                                          ; $5544: $e6 $27
	add b                                            ; $5546: $80
	sbc d                                            ; $5547: $9a
	pop af                                           ; $5548: $f1
	nop                                              ; $5549: $00
	inc bc                                           ; $554a: $03
	rlca                                             ; $554b: $07
	rrca                                             ; $554c: $0f
	ld a, e                                          ; $554d: $7b
	ld a, l                                          ; $554e: $7d
	sbc l                                            ; $554f: $9d
	ld [bc], a                                       ; $5550: $02
	inc bc                                           ; $5551: $03
	dec hl                                           ; $5552: $2b
	add b                                            ; $5553: $80
	sub [hl]                                         ; $5554: $96
	rlca                                             ; $5555: $07
	cp $c7                                           ; $5556: $fe $c7
	db $fd                                           ; $5558: $fd
	rst SubAFromBC                                          ; $5559: $e7
	ld a, h                                          ; $555a: $7c
	ld a, a                                          ; $555b: $7f
	dec a                                            ; $555c: $3d
	or $2f                                           ; $555d: $f6 $2f
	add b                                            ; $555f: $80
	sub l                                            ; $5560: $95
	ld b, b                                          ; $5561: $40
	ret nz                                           ; $5562: $c0

	ld b, a                                          ; $5563: $47
	ret nz                                           ; $5564: $c0

	ld a, b                                          ; $5565: $78
	ret c                                            ; $5566: $d8

	ld l, a                                          ; $5567: $6f
	rst GetHLinHL                                          ; $5568: $cf
	ld h, a                                          ; $5569: $67
	rst SubAFromBC                                          ; $556a: $e7
	cpl                                              ; $556b: $2f
	add b                                            ; $556c: $80
	sbc [hl]                                         ; $556d: $9e
	jr c, jr_06e_552e                                ; $556e: $38 $be

	add b                                            ; $5570: $80
	nop                                              ; $5571: $00
	ldh [$7e], a                                     ; $5572: $e0 $7e
	inc d                                            ; $5574: $14
	sbc [hl]                                         ; $5575: $9e
	ret nz                                           ; $5576: $c0

	daa                                              ; $5577: $27
	add b                                            ; $5578: $80
	rst $38                                          ; $5579: $ff
	sbc [hl]                                         ; $557a: $9e
	inc bc                                           ; $557b: $03
	cp a                                             ; $557c: $bf
	nop                                              ; $557d: $00
	rrca                                             ; $557e: $0f
	sbc h                                            ; $557f: $9c
	rrca                                             ; $5580: $0f
	sbc a                                            ; $5581: $9f
	inc bc                                           ; $5582: $03
	dec hl                                           ; $5583: $2b
	add b                                            ; $5584: $80
	sub d                                            ; $5585: $92
	rlca                                             ; $5586: $07
	dec a                                            ; $5587: $3d
	rst JumpTable                                          ; $5588: $c7
	inc e                                            ; $5589: $1c
	daa                                              ; $558a: $27
	db $fd                                           ; $558b: $fd
	cp $fd                                           ; $558c: $fe $fd
	or $f9                                           ; $558e: $f6 $f9
	ld c, $05                                        ; $5590: $0e $05
	ld b, $7b                                        ; $5592: $06 $7b
	sub $99                                          ; $5594: $d6 $99
	rlca                                             ; $5596: $07
	ld [$0f08], sp                                   ; $5597: $08 $08 $0f
	rlca                                             ; $559a: $07
	nop                                              ; $559b: $00
	cp a                                             ; $559c: $bf
	add e                                            ; $559d: $83
	ret nz                                           ; $559e: $c0

	ld a, e                                          ; $559f: $7b
	ld h, $96                                        ; $55a0: $26 $96
	ld a, b                                          ; $55a2: $78
	ldh a, [$fe]                                     ; $55a3: $f0 $fe
	reti                                             ; $55a5: $d9


	rst $38                                          ; $55a6: $ff
	rst JumpTable                                          ; $55a7: $c7
	db $e3                                           ; $55a8: $e3
	ld b, b                                          ; $55a9: $40
	ret nz                                           ; $55aa: $c0

	ld a, e                                          ; $55ab: $7b
	cp $df                                           ; $55ac: $fe $df
	add b                                            ; $55ae: $80
	ei                                               ; $55af: $fb
	sbc h                                            ; $55b0: $9c
	add c                                            ; $55b1: $81
	add b                                            ; $55b2: $80
	add c                                            ; $55b3: $81
	cp [hl]                                          ; $55b4: $be
	inc bc                                           ; $55b5: $03
	inc bc                                           ; $55b6: $03
	rlca                                             ; $55b7: $07
	adc [hl]                                         ; $55b8: $8e
	inc bc                                           ; $55b9: $03
	ld e, $0f                                        ; $55ba: $1e $0f
	ld a, [hl]                                       ; $55bc: $7e
	ccf                                              ; $55bd: $3f
	cp $ff                                           ; $55be: $fe $ff
	cp $f3                                           ; $55c0: $fe $f3
	rst $38                                          ; $55c2: $ff
	inc bc                                           ; $55c3: $03
	rst $38                                          ; $55c4: $ff
	inc bc                                           ; $55c5: $03
	ld a, $03                                        ; $55c6: $3e $03
	dec e                                            ; $55c8: $1d
	rlca                                             ; $55c9: $07
	inc bc                                           ; $55ca: $03
	ret nz                                           ; $55cb: $c0

	inc bc                                           ; $55cc: $03
	ret nz                                           ; $55cd: $c0

	ld h, a                                          ; $55ce: $67
	ret nz                                           ; $55cf: $c0

	rst SubAFromDE                                          ; $55d0: $df
	rlca                                             ; $55d1: $07
	ld a, a                                          ; $55d2: $7f
	db $d3                                           ; $55d3: $d3
	sbc [hl]                                         ; $55d4: $9e
	jp $c01f                                         ; $55d5: $c3 $1f $c0


	sbc l                                            ; $55d8: $9d
	add b                                            ; $55d9: $80
	add e                                            ; $55da: $83
	inc bc                                           ; $55db: $03
	ret nz                                           ; $55dc: $c0

	sbc d                                            ; $55dd: $9a
	add a                                            ; $55de: $87
	inc bc                                           ; $55df: $03
	ret nz                                           ; $55e0: $c0

	ret nz                                           ; $55e1: $c0

	db $e3                                           ; $55e2: $e3
	rra                                              ; $55e3: $1f
	ret nz                                           ; $55e4: $c0

	ld a, e                                          ; $55e5: $7b
	cp [hl]                                          ; $55e6: $be
	ccf                                              ; $55e7: $3f
	ret nz                                           ; $55e8: $c0

	db $fd                                           ; $55e9: $fd
	ld bc, $1b80                                     ; $55ea: $01 $80 $1b
	db $fc                                           ; $55ed: $fc
	ldh [rIE], a                                     ; $55ee: $e0 $ff
	ld b, e                                          ; $55f0: $43
	ld a, a                                          ; $55f1: $7f
	db $fd                                           ; $55f2: $fd
	rst $38                                          ; $55f3: $ff
	ld [de], a                                       ; $55f4: $12
	rra                                              ; $55f5: $1f
	inc h                                            ; $55f6: $24
	ccf                                              ; $55f7: $3f
	jr c, jr_06e_5629                                ; $55f8: $38 $2f

	ld l, a                                          ; $55fa: $6f
	ld e, a                                          ; $55fb: $5f
	call nc, $a9bb                                   ; $55fc: $d4 $bb $a9
	rst FarCall                                          ; $55ff: $f7
	jp hl                                            ; $5600: $e9


	ld [hl], a                                       ; $5601: $77
	ldh a, [c]                                       ; $5602: $f2
	ccf                                              ; $5603: $3f
	ldh a, [c]                                       ; $5604: $f2
	rra                                              ; $5605: $1f
	db $fd                                           ; $5606: $fd
	ld c, $fd                                        ; $5607: $0e $fd
	ld b, $ff                                        ; $5609: $06 $ff
	sbc c                                            ; $560b: $99
	inc b                                            ; $560c: $04
	ld a, [hl]                                       ; $560d: $7e
	inc b                                            ; $560e: $04
	ld a, [hl-]                                      ; $560f: $3a
	inc c                                            ; $5610: $0c
	add hl, de                                       ; $5611: $19
	ld a, e                                          ; $5612: $7b
	cp $96                                           ; $5613: $fe $96
	add hl, bc                                       ; $5615: $09
	inc c                                            ; $5616: $0c
	dec bc                                           ; $5617: $0b
	inc c                                            ; $5618: $0c
	ld c, $05                                        ; $5619: $0e $05
	inc c                                            ; $561b: $0c
	rlca                                             ; $561c: $07
	dec b                                            ; $561d: $05
	ld [hl], e                                       ; $561e: $73
	cp $9e                                           ; $561f: $fe $9e
	sub l                                            ; $5621: $95
	ld a, e                                          ; $5622: $7b
	cp $80                                           ; $5623: $fe $80
	jp nc, $f203                                     ; $5625: $d2 $03 $f2

	add e                                            ; $5628: $83

jr_06e_5629:
	pop af                                           ; $5629: $f1
	add c                                            ; $562a: $81
	inc l                                            ; $562b: $2c
	di                                               ; $562c: $f3
	reti                                             ; $562d: $d9


	rst SubAFromBC                                          ; $562e: $e7
	or e                                             ; $562f: $b3
	adc $05                                          ; $5630: $ce $05
	cp $0e                                           ; $5632: $fe $0e
	rst $38                                          ; $5634: $ff
	ccf                                              ; $5635: $3f
	ld sp, hl                                        ; $5636: $f9
	ld a, a                                          ; $5637: $7f
	ldh [$e0], a                                     ; $5638: $e0 $e0
	rst JumpTable                                          ; $563a: $c7
	rst GetHLinHL                                          ; $563b: $cf
	add a                                            ; $563c: $87
	ld e, [hl]                                       ; $563d: $5e
	sbc $4b                                          ; $563e: $de $4b
	jp z, $c363                                      ; $5640: $ca $63 $c3

	ld h, e                                          ; $5643: $63
	add d                                            ; $5644: $82
	jp nz, $e167                                     ; $5645: $c2 $67 $e1

	ld h, b                                          ; $5648: $60
	ldh [$60], a                                     ; $5649: $e0 $60
	ldh [rSVBK], a                                   ; $564b: $e0 $70
	ldh [$50], a                                     ; $564d: $e0 $50
	ldh a, [$58]                                     ; $564f: $f0 $58
	ldh a, [$9c]                                     ; $5651: $f0 $9c
	ld hl, sp-$52                                    ; $5653: $f8 $ae
	call c, $deaf                                    ; $5655: $dc $af $de
	or e                                             ; $5658: $b3
	rst SubAFromDE                                          ; $5659: $df
	cp c                                             ; $565a: $b9
	rst SubAFromDE                                          ; $565b: $df
	cp $57                                           ; $565c: $fe $57
	rst SubAFromDE                                          ; $565e: $df
	ld [hl], c                                       ; $565f: $71
	rst SubAFromDE                                          ; $5660: $df
	ld [hl], b                                       ; $5661: $70
	ld [hl], a                                       ; $5662: $77
	cp $80                                           ; $5663: $fe $80
	cp $30                                           ; $5665: $fe $30
	db $fc                                           ; $5667: $fc
	sub b                                            ; $5668: $90
	call nc, $ed90                                   ; $5669: $d4 $90 $ed
	cp a                                             ; $566c: $bf
	db $ed                                           ; $566d: $ed
	ccf                                              ; $566e: $3f
	db $ed                                           ; $566f: $ed
	ccf                                              ; $5670: $3f
	db $fd                                           ; $5671: $fd
	scf                                              ; $5672: $37
	db $fc                                           ; $5673: $fc
	rla                                              ; $5674: $17
	ld a, $d3                                        ; $5675: $3e $d3
	sbc $f3                                          ; $5677: $de $f3
	rst AddAOntoHL                                          ; $5679: $ef
	ld sp, $d1bf                                     ; $567a: $31 $bf $d1
	ld e, b                                          ; $567d: $58
	ld h, b                                          ; $567e: $60
	ldh [$e0], a                                     ; $567f: $e0 $e0
	and b                                            ; $5681: $a0
	ldh [$60], a                                     ; $5682: $e0 $60
	add b                                            ; $5684: $80
	ret nz                                           ; $5685: $c0

	jp $0580                                         ; $5686: $c3 $80 $05


	ld [bc], a                                       ; $5689: $02
	dec c                                            ; $568a: $0d
	ld b, $24                                        ; $568b: $06 $24
	rst $38                                          ; $568d: $ff
	ld h, $ff                                        ; $568e: $26 $ff
	scf                                              ; $5690: $37
	db $fd                                           ; $5691: $fd
	scf                                              ; $5692: $37
	db $fd                                           ; $5693: $fd
	cp [hl]                                          ; $5694: $be
	db $ed                                           ; $5695: $ed
	db $fd                                           ; $5696: $fd
	ld h, a                                          ; $5697: $67
	rst FarCall                                          ; $5698: $f7
	ld l, $ef                                        ; $5699: $2e $ef
	inc a                                            ; $569b: $3c
	sbc [hl]                                         ; $569c: $9e
	ld [hl], c                                       ; $569d: $71
	db $fd                                           ; $569e: $fd
	ld h, e                                          ; $569f: $63
	ld a, [hl]                                       ; $56a0: $7e
	ld b, $0f                                        ; $56a1: $06 $0f
	rrca                                             ; $56a3: $0f
	adc d                                            ; $56a4: $8a
	ld bc, $0303                                     ; $56a5: $01 $03 $03
	ld [bc], a                                       ; $56a8: $02
	adc a                                            ; $56a9: $8f
	ld bc, $0081                                     ; $56aa: $01 $81 $00
	jp c, $d56d                                      ; $56ad: $da $6d $d5

	ld l, [hl]                                       ; $56b0: $6e
	ld a, l                                          ; $56b1: $7d
	and [hl]                                         ; $56b2: $a6
	ld l, [hl]                                       ; $56b3: $6e
	or e                                             ; $56b4: $b3
	sub l                                            ; $56b5: $95
	ei                                               ; $56b6: $fb
	jp z, $e4fd                                      ; $56b7: $ca $fd $e4

	ld a, e                                          ; $56ba: $7b
	ld c, d                                          ; $56bb: $4a
	adc a                                            ; $56bc: $8f
	add hl, sp                                       ; $56bd: $39
	rst GetHLinHL                                          ; $56be: $cf
	db $fc                                           ; $56bf: $fc
	rst SubAFromBC                                          ; $56c0: $e7
	ld a, [hl]                                       ; $56c1: $7e
	ld [hl], a                                       ; $56c2: $77
	db $fd                                           ; $56c3: $fd
	ld a, a                                          ; $56c4: $7f
	xor h                                            ; $56c5: $ac
	rst SubAFromBC                                          ; $56c6: $e7
	dec l                                            ; $56c7: $2d
	and $dd                                          ; $56c8: $e6 $dd
	add $f9                                          ; $56ca: $c6 $f9
	ld c, $77                                        ; $56cc: $0e $77
	cp $90                                           ; $56ce: $fe $90
	ei                                               ; $56d0: $fb
	inc e                                            ; $56d1: $1c
	or $15                                           ; $56d2: $f6 $15
	and $25                                          ; $56d4: $e6 $25
	db $dd                                           ; $56d6: $dd
	ld a, e                                          ; $56d7: $7b
	sub l                                            ; $56d8: $95
	ei                                               ; $56d9: $fb
	ld a, [hl+]                                      ; $56da: $2a
	rst FarCall                                          ; $56db: $f7
	ld [hl+], a                                      ; $56dc: $22
	rst $38                                          ; $56dd: $ff
	ld b, h                                          ; $56de: $44
	ld a, e                                          ; $56df: $7b
	cp $95                                           ; $56e0: $fe $95
	adc c                                            ; $56e2: $89
	rst $38                                          ; $56e3: $ff
	ld de, $32ff                                     ; $56e4: $11 $ff $32
	rst $38                                          ; $56e7: $ff
	ld h, h                                          ; $56e8: $64
	rst $38                                          ; $56e9: $ff
	db $ed                                           ; $56ea: $ed
	cp a                                             ; $56eb: $bf
	ld c, e                                          ; $56ec: $4b
	ld b, b                                          ; $56ed: $40
	rst SubAFromDE                                          ; $56ee: $df
	ret nz                                           ; $56ef: $c0

	sbc d                                            ; $56f0: $9a
	add e                                            ; $56f1: $83
	ld c, a                                          ; $56f2: $4f
	rst JumpTable                                          ; $56f3: $c7
	ld e, [hl]                                       ; $56f4: $5e
	sbc $5f                                          ; $56f5: $de $5f
	ld b, b                                          ; $56f7: $40
	ld b, a                                          ; $56f8: $47
	ld h, b                                          ; $56f9: $60
	sbc c                                            ; $56fa: $99
	ld a, a                                          ; $56fb: $7f
	sub c                                            ; $56fc: $91
	cp b                                             ; $56fd: $b8
	ret nz                                           ; $56fe: $c0

	ldh [$c0], a                                     ; $56ff: $e0 $c0
	rra                                              ; $5701: $1f
	ld h, b                                          ; $5702: $60
	sub a                                            ; $5703: $97
	sbc a                                            ; $5704: $9f
	ld [hl], b                                       ; $5705: $70
	rst $38                                          ; $5706: $ff
	ld h, b                                          ; $5707: $60
	ld a, a                                          ; $5708: $7f
	inc bc                                           ; $5709: $03
	ld e, $06                                        ; $570a: $1e $06
	sbc $03                                          ; $570c: $de $03
	inc sp                                           ; $570e: $33
	ld h, b                                          ; $570f: $60
	sub l                                            ; $5710: $95
	ld sp, hl                                        ; $5711: $f9
	rrca                                             ; $5712: $0f
	inc e                                            ; $5713: $1c
	rst SubAFromBC                                          ; $5714: $e7
	xor $f7                                          ; $5715: $ee $f7
	ld a, l                                          ; $5717: $7d
	ld a, a                                          ; $5718: $7f
	cp h                                             ; $5719: $bc
	rst FarCall                                          ; $571a: $f7
	ld l, a                                          ; $571b: $6f

jr_06e_571c:
	ld h, b                                          ; $571c: $60
	ld b, e                                          ; $571d: $43
	add b                                            ; $571e: $80
	sub [hl]                                         ; $571f: $96
	add b                                            ; $5720: $80
	ld b, e                                          ; $5721: $43
	jp $c74f                                         ; $5722: $c3 $4f $c7


	ld a, [hl]                                       ; $5725: $7e
	sbc $65                                          ; $5726: $de $65
	rst JumpTable                                          ; $5728: $c7
	dec hl                                           ; $5729: $2b
	add b                                            ; $572a: $80
	sbc c                                            ; $572b: $99
	ld de, $80f8                                     ; $572c: $11 $f8 $80
	ldh [$c0], a                                     ; $572f: $e0 $c0
	ldh [$7b], a                                     ; $5731: $e0 $7b
	and $1f                                          ; $5733: $e6 $1f
	add b                                            ; $5735: $80
	sub a                                            ; $5736: $97
	ld a, e                                          ; $5737: $7b
	rlca                                             ; $5738: $07
	rra                                              ; $5739: $1f
	rrca                                             ; $573a: $0f
	rlca                                             ; $573b: $07
	ld b, $02                                        ; $573c: $06 $02
	inc bc                                           ; $573e: $03
	cpl                                              ; $573f: $2f
	add b                                            ; $5740: $80
	sub l                                            ; $5741: $95
	db $fc                                           ; $5742: $fc
	rlca                                             ; $5743: $07
	cp $c7                                           ; $5744: $fe $c7
	db $fd                                           ; $5746: $fd
	rst FarCall                                          ; $5747: $f7
	ld a, h                                          ; $5748: $7c
	ld a, a                                          ; $5749: $7f
	dec a                                            ; $574a: $3d
	or $2f                                           ; $574b: $f6 $2f
	add b                                            ; $574d: $80
	sub l                                            ; $574e: $95
	ld b, b                                          ; $574f: $40
	ret nz                                           ; $5750: $c0

	ld b, a                                          ; $5751: $47
	ret nz                                           ; $5752: $c0

	ld a, b                                          ; $5753: $78
	ret c                                            ; $5754: $d8

	ld l, a                                          ; $5755: $6f
	rst GetHLinHL                                          ; $5756: $cf
	ld h, a                                          ; $5757: $67
	rst SubAFromBC                                          ; $5758: $e7
	cpl                                              ; $5759: $2f
	add b                                            ; $575a: $80
	sbc [hl]                                         ; $575b: $9e
	jr c, jr_06e_571c                                ; $575c: $38 $be

	add b                                            ; $575e: $80
	nop                                              ; $575f: $00
	ldh [$9c], a                                     ; $5760: $e0 $9c
	ldh [$e3], a                                     ; $5762: $e0 $e3
	ret nz                                           ; $5764: $c0

	daa                                              ; $5765: $27
	add b                                            ; $5766: $80
	sbc [hl]                                         ; $5767: $9e
	ld a, b                                          ; $5768: $78
	cp [hl]                                          ; $5769: $be
	inc sp                                           ; $576a: $33
	nop                                              ; $576b: $00
	rrca                                             ; $576c: $0f
	sbc h                                            ; $576d: $9c
	rlca                                             ; $576e: $07
	sbc a                                            ; $576f: $9f
	inc bc                                           ; $5770: $03
	dec hl                                           ; $5771: $2b
	add b                                            ; $5772: $80
	sub d                                            ; $5773: $92
	rlca                                             ; $5774: $07
	dec a                                            ; $5775: $3d
	rst JumpTable                                          ; $5776: $c7
	inc e                                            ; $5777: $1c
	daa                                              ; $5778: $27
	db $fd                                           ; $5779: $fd
	cp $fd                                           ; $577a: $fe $fd
	or $f9                                           ; $577c: $f6 $f9
	ld c, $05                                        ; $577e: $0e $05
	ld b, $77                                        ; $5780: $06 $77
	sub $df                                          ; $5782: $d6 $df
	ld [$079c], sp                                   ; $5784: $08 $9c $07
	rrca                                             ; $5787: $0f
	nop                                              ; $5788: $00
	cp a                                             ; $5789: $bf
	add a                                            ; $578a: $87
	ret nz                                           ; $578b: $c0

	ld a, e                                          ; $578c: $7b
	ld h, $98                                        ; $578d: $26 $98
	ld a, b                                          ; $578f: $78
	ldh a, [$fe]                                     ; $5790: $f0 $fe
	reti                                             ; $5792: $d9


	rst $38                                          ; $5793: $ff
	rst JumpTable                                          ; $5794: $c7
	db $e3                                           ; $5795: $e3
	db $dd                                           ; $5796: $dd
	ret nz                                           ; $5797: $c0

	sbc l                                            ; $5798: $9d
	ld b, b                                          ; $5799: $40
	add b                                            ; $579a: $80
	ld [hl], a                                       ; $579b: $77
	sub l                                            ; $579c: $95
	ld a, a                                          ; $579d: $7f
	sub b                                            ; $579e: $90
	ld a, a                                          ; $579f: $7f
	ld l, h                                          ; $57a0: $6c
	ld a, a                                          ; $57a1: $7f
	or $9d                                           ; $57a2: $f6 $9d
	ret nz                                           ; $57a4: $c0

	ld bc, $03bf                                     ; $57a5: $01 $bf $03
	rlca                                             ; $57a8: $07
	ld a, [hl]                                       ; $57a9: $7e
	and [hl]                                         ; $57aa: $a6
	sub b                                            ; $57ab: $90
	rrca                                             ; $57ac: $0f
	ld a, [hl]                                       ; $57ad: $7e
	ccf                                              ; $57ae: $3f
	cp $ff                                           ; $57af: $fe $ff
	cp $f3                                           ; $57b1: $fe $f3
	rst $38                                          ; $57b3: $ff
	inc bc                                           ; $57b4: $03
	rst $38                                          ; $57b5: $ff
	inc bc                                           ; $57b6: $03
	ld a, $03                                        ; $57b7: $3e $03
	dec e                                            ; $57b9: $1d
	rlca                                             ; $57ba: $07
	ld h, a                                          ; $57bb: $67
	ret nz                                           ; $57bc: $c0

	rst SubAFromDE                                          ; $57bd: $df
	ld [$fa7f], sp                                   ; $57be: $08 $7f $fa
	ld a, a                                          ; $57c1: $7f
	db $d3                                           ; $57c2: $d3
	sbc [hl]                                         ; $57c3: $9e
	jp $c023                                         ; $57c4: $c3 $23 $c0


	rst SubAFromDE                                          ; $57c7: $df
	ld b, b                                          ; $57c8: $40
	sbc l                                            ; $57c9: $9d
	pop bc                                           ; $57ca: $c1
	add b                                            ; $57cb: $80
	rla                                              ; $57cc: $17
	ret nz                                           ; $57cd: $c0

	sbc $0f                                          ; $57ce: $de $0f
	ld a, e                                          ; $57d0: $7b
	ret nz                                           ; $57d1: $c0

	rst SubAFromDE                                          ; $57d2: $df
	ret nz                                           ; $57d3: $c0

	sbc [hl]                                         ; $57d4: $9e
	db $e3                                           ; $57d5: $e3
	dec hl                                           ; $57d6: $2b
	ret nz                                           ; $57d7: $c0

	rst SubAFromDE                                          ; $57d8: $df
	ret nz                                           ; $57d9: $c0

	inc bc                                           ; $57da: $03
	ret nz                                           ; $57db: $c0

	sbc h                                            ; $57dc: $9c
	rlca                                             ; $57dd: $07
	add a                                            ; $57de: $87
	inc bc                                           ; $57df: $03
	rrca                                             ; $57e0: $0f
	ret nz                                           ; $57e1: $c0

	sbc [hl]                                         ; $57e2: $9e
	add e                                            ; $57e3: $83
	dec sp                                           ; $57e4: $3b
	ret nz                                           ; $57e5: $c0

	ret z                                            ; $57e6: $c8

	ld [bc], a                                       ; $57e7: $02
	rst FarCall                                          ; $57e8: $f7
	rst SubAFromDE                                          ; $57e9: $df
	ld bc, $0797                                     ; $57ea: $01 $97 $07
	ld b, $0f                                        ; $57ed: $06 $0f
	ld [$101f], sp                                   ; $57ef: $08 $1f $10
	ccf                                              ; $57f2: $3f
	jr nz, @+$71                                     ; $57f3: $20 $6f

	cp $7f                                           ; $57f5: $fe $7f
	or $7f                                           ; $57f7: $f6 $7f
	cp $7f                                           ; $57f9: $fe $7f
	ldh a, [$7f]                                     ; $57fb: $f0 $7f
	cp $95                                           ; $57fd: $fe $95
	rlca                                             ; $57ff: $07
	inc b                                            ; $5800: $04
	rlca                                             ; $5801: $07
	inc b                                            ; $5802: $04
	inc bc                                           ; $5803: $03
	ld [bc], a                                       ; $5804: $02
	ld [bc], a                                       ; $5805: $02
	inc bc                                           ; $5806: $03
	ld bc, $e701                                     ; $5807: $01 $01 $e7
	rst SubAFromDE                                          ; $580a: $df
	rlca                                             ; $580b: $07
	sbc d                                            ; $580c: $9a
	ccf                                              ; $580d: $3f
	jr c, @+$01                                      ; $580e: $38 $ff

	ret nz                                           ; $5810: $c0

	rst $38                                          ; $5811: $ff
	cp e                                             ; $5812: $bb
	rst $38                                          ; $5813: $ff
	rst $38                                          ; $5814: $ff
	rst $38                                          ; $5815: $ff
	rst $38                                          ; $5816: $ff
	rst $38                                          ; $5817: $ff
	cp $92                                           ; $5818: $fe $92
	ld bc, $07f8                                     ; $581a: $01 $f8 $07
	nop                                              ; $581d: $00
	rst $38                                          ; $581e: $ff
	add c                                            ; $581f: $81
	ld a, a                                          ; $5820: $7f
	adc $3f                                          ; $5821: $ce $3f
	ldh [$1f], a                                     ; $5823: $e0 $1f
	ld hl, sp+$07                                    ; $5825: $f8 $07
	ld l, e                                          ; $5827: $6b
	ld [$8090], a                                    ; $5828: $ea $90 $80
	cp a                                             ; $582b: $bf
	ret nz                                           ; $582c: $c0

	ld e, a                                          ; $582d: $5f
	ld h, b                                          ; $582e: $60
	ccf                                              ; $582f: $3f
	jr nz, jr_06e_5861                               ; $5830: $20 $2f

	jr nc, jr_06e_584b                               ; $5832: $30 $17

	jr jr_06e_5841                                   ; $5834: $18 $0b

	inc c                                            ; $5836: $0c
	dec b                                            ; $5837: $05
	ld b, $6f                                        ; $5838: $06 $6f
	xor h                                            ; $583a: $ac
	rst SubAFromDE                                          ; $583b: $df
	rrca                                             ; $583c: $0f
	sbc l                                            ; $583d: $9d
	rst $38                                          ; $583e: $ff
	ldh a, [$57]                                     ; $583f: $f0 $57

jr_06e_5841:
	add $95                                          ; $5841: $c6 $95
	db $fc                                           ; $5843: $fc
	inc bc                                           ; $5844: $03
	ldh [$1f], a                                     ; $5845: $e0 $1f
	add a                                            ; $5847: $87
	ld a, a                                          ; $5848: $7f
	inc e                                            ; $5849: $1c
	db $fc                                           ; $584a: $fc

jr_06e_584b:
	ld h, b                                          ; $584b: $60
	ldh [$dd], a                                     ; $584c: $e0 $dd
	add c                                            ; $584e: $81

jr_06e_584f:
	rst SubAFromDE                                          ; $584f: $df
	jp Jump_06e_478f                                 ; $5850: $c3 $8f $47


	rst JumpTable                                          ; $5853: $c7
	and b                                            ; $5854: $a0
	ld h, b                                          ; $5855: $60
	ret nc                                           ; $5856: $d0

	jr nc, jr_06e_5841                               ; $5857: $30 $e8

	jr jr_06e_584f                                   ; $5859: $18 $f4

	inc c                                            ; $585b: $0c
	ldh a, [c]                                       ; $585c: $f2
	ld c, $f9                                        ; $585d: $0e $f9
	rlca                                             ; $585f: $07
	db $fc                                           ; $5860: $fc

jr_06e_5861:
	inc bc                                           ; $5861: $03
	ld [hl], a                                       ; $5862: $77
	cp $7f                                           ; $5863: $fe $7f
	and d                                            ; $5865: $a2
	ld a, a                                          ; $5866: $7f
	cp $57                                           ; $5867: $fe $57
	xor h                                            ; $5869: $ac
	ld [hl], a                                       ; $586a: $77
	xor [hl]                                         ; $586b: $ae
	sbc c                                            ; $586c: $99
	inc de                                           ; $586d: $13
	inc e                                            ; $586e: $1c
	dec bc                                           ; $586f: $0b
	inc c                                            ; $5870: $0c
	add hl, bc                                       ; $5871: $09
	ld c, $77                                        ; $5872: $0e $77
	xor d                                            ; $5874: $aa
	ld [hl], a                                       ; $5875: $77
	xor b                                            ; $5876: $a8
	db $dd                                           ; $5877: $dd
	ld bc, $dff3                                     ; $5878: $01 $f3 $df
	ld bc, $03df                                     ; $587b: $01 $df $03
	adc e                                            ; $587e: $8b
	rrca                                             ; $587f: $0f
	dec c                                            ; $5880: $0d
	rla                                              ; $5881: $17
	inc e                                            ; $5882: $1c
	inc hl                                           ; $5883: $23
	ld a, $41                                        ; $5884: $3e $41
	ld a, a                                          ; $5886: $7f
	ld b, a                                          ; $5887: $47
	ld a, b                                          ; $5888: $78
	sbc h                                            ; $5889: $9c
	db $e3                                           ; $588a: $e3
	cp b                                             ; $588b: $b8
	rst JumpTable                                          ; $588c: $c7
	add e                                            ; $588d: $83
	db $fc                                           ; $588e: $fc
	add h                                            ; $588f: $84
	ei                                               ; $5890: $fb
	rst $38                                          ; $5891: $ff
	rst $38                                          ; $5892: $ff
	ld e, e                                          ; $5893: $5b
	ld a, [hl-]                                      ; $5894: $3a
	adc h                                            ; $5895: $8c
	nop                                              ; $5896: $00
	rra                                              ; $5897: $1f
	inc bc                                           ; $5898: $03
	db $fc                                           ; $5899: $fc
	rrca                                             ; $589a: $0f
	pop af                                           ; $589b: $f1
	ld a, a                                          ; $589c: $7f
	jp c, $d5e7                                      ; $589d: $da $e7 $d5

	xor $ab                                          ; $58a0: $ee $ab
	call c, $fb95                                    ; $58a2: $dc $95 $fb
	ld [hl+], a                                      ; $58a5: $22
	rst $38                                          ; $58a6: $ff
	push bc                                          ; $58a7: $c5
	cp $e0                                           ; $58a8: $fe $e0
	pop bc                                           ; $58aa: $c1
	sub h                                            ; $58ab: $94
	ldh [$80], a                                     ; $58ac: $e0 $80
	add sp, -$80                                     ; $58ae: $e8 $80
	ldh a, [$80]                                     ; $58b0: $f0 $80
	ldh [$80], a                                     ; $58b2: $e0 $80
	ret nz                                           ; $58b4: $c0

	add b                                            ; $58b5: $80
	add b                                            ; $58b6: $80
	cp [hl]                                          ; $58b7: $be
	nop                                              ; $58b8: $00
	nop                                              ; $58b9: $00
	add b                                            ; $58ba: $80
	sub c                                            ; $58bb: $91
	add b                                            ; $58bc: $80
	ld h, b                                          ; $58bd: $60
	ldh [rAUD2LOW], a                                ; $58be: $e0 $18
	ld hl, sp-$3c                                    ; $58c0: $f8 $c4
	db $fc                                           ; $58c2: $fc
	inc [hl]                                         ; $58c3: $34
	inc a                                            ; $58c4: $3c
	ld a, [bc]                                       ; $58c5: $0a
	ld l, [hl]                                       ; $58c6: $6e
	ld a, [bc]                                       ; $58c7: $0a
	sbc $0b                                          ; $58c8: $de $0b
	inc hl                                           ; $58ca: $23
	and b                                            ; $58cb: $a0
	halt                                             ; $58cc: $76
	ld [hl], d                                       ; $58cd: $72
	sbc e                                            ; $58ce: $9b
	rra                                              ; $58cf: $1f
	jr @+$01                                         ; $58d0: $18 $ff

	ldh [$7b], a                                     ; $58d2: $e0 $7b
	or $bc                                           ; $58d4: $f6 $bc
	ld bc, $0000                                     ; $58d6: $01 $00 $00
	inc a                                            ; $58d9: $3c
	cp $8c                                           ; $58da: $fe $8c
	ld a, h                                          ; $58dc: $7c
	db $e3                                           ; $58dd: $e3
	rst $38                                          ; $58de: $ff
	add c                                            ; $58df: $81
	di                                               ; $58e0: $f3
	ld [hl], a                                       ; $58e1: $77
	add d                                            ; $58e2: $82
	ld [$fe26], a                                    ; $58e3: $ea $26 $fe
	ld b, h                                          ; $58e6: $44
	or l                                             ; $58e7: $b5
	call z, $9c6b                                    ; $58e8: $cc $6b $9c
	adc $39                                          ; $58eb: $ce $39
	sub h                                            ; $58ed: $94
	ld a, e                                          ; $58ee: $7b
	ldh [$c1], a                                     ; $58ef: $e0 $c1
	sbc h                                            ; $58f1: $9c
	jp nz, $02c0                                     ; $58f2: $c2 $c0 $02

	cp c                                             ; $58f5: $b9
	ld bc, $0000                                     ; $58f6: $01 $00 $00
	nop                                              ; $58f9: $00
	nop                                              ; $58fa: $00
	db $10                                           ; $58fb: $10
	rra                                              ; $58fc: $1f
	ld e, $92                                        ; $58fd: $1e $92
	ld [bc], a                                       ; $58ff: $02
	inc a                                            ; $5900: $3c
	inc b                                            ; $5901: $04
	jr c, @+$0a                                      ; $5902: $38 $08

	add hl, sp                                       ; $5904: $39
	add hl, bc                                       ; $5905: $09
	ld [hl], d                                       ; $5906: $72
	inc de                                           ; $5907: $13
	push af                                          ; $5908: $f5
	rla                                              ; $5909: $17
	ld a, [$ef1f]                                    ; $590a: $fa $1f $ef
	rst SubAFromDE                                          ; $590d: $df
	ccf                                              ; $590e: $3f
	adc c                                            ; $590f: $89
	ld a, a                                          ; $5910: $7f
	ld b, [hl]                                       ; $5911: $46
	rst $38                                          ; $5912: $ff
	adc c                                            ; $5913: $89
	rst $38                                          ; $5914: $ff
	ld c, $fb                                        ; $5915: $0e $fb
	rrca                                             ; $5917: $0f
	jp $333e                                         ; $5918: $c3 $3e $33


	rst $38                                          ; $591b: $ff
	rst $38                                          ; $591c: $ff
	ld a, a                                          ; $591d: $7f
	rst $38                                          ; $591e: $ff
	add b                                            ; $591f: $80
	rst $38                                          ; $5920: $ff
	ld h, b                                          ; $5921: $60
	rra                                              ; $5922: $1f
	inc e                                            ; $5923: $1c
	rlca                                             ; $5924: $07
	inc bc                                           ; $5925: $03
	ld [hl], a                                       ; $5926: $77
	ld e, [hl]                                       ; $5927: $5e
	rst SubAFromDE                                          ; $5928: $df
	rst $38                                          ; $5929: $ff
	sub b                                            ; $592a: $90
	ld d, $fd                                        ; $592b: $16 $fd
	sbc a                                            ; $592d: $9f
	ld [hl], l                                       ; $592e: $75
	ld l, a                                          ; $592f: $6f
	dec [hl]                                         ; $5930: $35
	push af                                          ; $5931: $f5
	dec l                                            ; $5932: $2d
	or l                                             ; $5933: $b5
	ld l, l                                          ; $5934: $6d
	dec [hl]                                         ; $5935: $35
	db $ed                                           ; $5936: $ed
	ld h, a                                          ; $5937: $67
	db $fd                                           ; $5938: $fd
	xor l                                            ; $5939: $ad
	ld e, d                                          ; $593a: $5a
	and d                                            ; $593b: $a2
	ldh [$cb], a                                     ; $593c: $e0 $cb
	ld l, [hl]                                       ; $593e: $6e
	jp z, $879e                                      ; $593f: $ca $9e $87

	cp b                                             ; $5942: $b8
	adc a                                            ; $5943: $8f
	ld [hl], b                                       ; $5944: $70
	rlca                                             ; $5945: $07
	ld h, b                                          ; $5946: $60
	add b                                            ; $5947: $80
	nop                                              ; $5948: $00
	nop                                              ; $5949: $00
	nop                                              ; $594a: $00
	ldh a, [$98]                                     ; $594b: $f0 $98
	ldh a, [$0c]                                     ; $594d: $f0 $0c
	cp h                                             ; $594f: $bc
	di                                               ; $5950: $f3
	rst $38                                          ; $5951: $ff
	inc c                                            ; $5952: $0c
	adc $3b                                          ; $5953: $ce $3b
	adc $80                                          ; $5955: $ce $80
	add b                                            ; $5957: $80
	di                                               ; $5958: $f3
	ld [hl], e                                       ; $5959: $73
	ld sp, hl                                        ; $595a: $f9
	adc c                                            ; $595b: $89
	rst $38                                          ; $595c: $ff
	ccf                                              ; $595d: $3f
	rst $38                                          ; $595e: $ff
	pop bc                                           ; $595f: $c1
	cp $0f                                           ; $5960: $fe $0f
	rst $38                                          ; $5962: $ff
	pop af                                           ; $5963: $f1
	rst $38                                          ; $5964: $ff
	ld b, e                                          ; $5965: $43
	cp $1f                                           ; $5966: $fe $1f

jr_06e_5968:
	ldh a, [$3f]                                     ; $5968: $f0 $3f
	rst JumpTable                                          ; $596a: $c7
	ld a, a                                          ; $596b: $7f
	ret c                                            ; $596c: $d8

	rst $38                                          ; $596d: $ff
	ld [hl], d                                       ; $596e: $72
	dec a                                            ; $596f: $3d
	ccf                                              ; $5970: $3f
	inc e                                            ; $5971: $1c
	db $e3                                           ; $5972: $e3
	cp $0f                                           ; $5973: $fe $0f
	jp nz, $7392                                     ; $5975: $c2 $92 $73

	add c                                            ; $5978: $81
	ld c, e                                          ; $5979: $4b
	sub c                                            ; $597a: $91
	add e                                            ; $597b: $83
	ld e, c                                          ; $597c: $59
	reti                                             ; $597d: $d9


	ld c, c                                          ; $597e: $49
	db $fd                                           ; $597f: $fd
	ld c, c                                          ; $5980: $49
	db $db                                           ; $5981: $db
	ld l, h                                          ; $5982: $6c
	ld b, l                                          ; $5983: $45
	ld [bc], a                                       ; $5984: $02
	jr nz, jr_06e_5968                               ; $5985: $20 $e1

	sbc h                                            ; $5987: $9c
	rra                                              ; $5988: $1f
	ld c, $07                                        ; $5989: $0e $07
	or e                                             ; $598b: $b3
	ld bc, $ff80                                     ; $598c: $01 $80 $ff
	rlca                                             ; $598f: $07
	nop                                              ; $5990: $00
	nop                                              ; $5991: $00
	nop                                              ; $5992: $00
	inc b                                            ; $5993: $04
	inc bc                                           ; $5994: $03
	ld bc, $0001                                     ; $5995: $01 $01 $00
	add b                                            ; $5998: $80
	ldh a, [$7a]                                     ; $5999: $f0 $7a
	ld b, b                                          ; $599b: $40
	scf                                              ; $599c: $37
	ld e, [hl]                                       ; $599d: $5e
	add b                                            ; $599e: $80
	ld b, b                                          ; $599f: $40
	ret nz                                           ; $59a0: $c0

	ld a, b                                          ; $59a1: $78
	ld hl, sp-$7a                                    ; $59a2: $f8 $86
	cp $31                                           ; $59a4: $fe $31
	rst GetHLinHL                                          ; $59a6: $cf
	inc e                                            ; $59a7: $1c
	db $e3                                           ; $59a8: $e3
	dec bc                                           ; $59a9: $0b
	ldh a, [$f1]                                     ; $59aa: $f0 $f1
	inc c                                            ; $59ac: $0c
	ld c, b                                          ; $59ad: $48
	add [hl]                                         ; $59ae: $86
	sub [hl]                                         ; $59af: $96
	pop hl                                           ; $59b0: $e1
	jp $b578                                         ; $59b1: $c3 $78 $b5


	ld l, $da                                        ; $59b4: $2e $da
	sub a                                            ; $59b6: $97
	db $ed                                           ; $59b7: $ed
	ld c, e                                          ; $59b8: $4b
	ld a, [hl]                                       ; $59b9: $7e
	ld c, c                                          ; $59ba: $49
	ld a, a                                          ; $59bb: $7f
	inc h                                            ; $59bc: $24
	xor l                                            ; $59bd: $ad
	sub h                                            ; $59be: $94
	ld [hl], $6b                                     ; $59bf: $36 $6b
	or [hl]                                          ; $59c1: $b6
	ld a, [hl]                                       ; $59c2: $7e
	sub e                                            ; $59c3: $93
	halt                                             ; $59c4: $76
	sbc e                                            ; $59c5: $9b
	cp l                                             ; $59c6: $bd
	res 7, e                                         ; $59c7: $cb $bb
	call $c1e0                                       ; $59c9: $cd $e0 $c1

jr_06e_59cc:
	sbc d                                            ; $59cc: $9a
	rst $38                                          ; $59cd: $ff
	scf                                              ; $59ce: $37
	rst $38                                          ; $59cf: $ff

jr_06e_59d0:
	ld hl, $b7ff                                     ; $59d0: $21 $ff $b7
	rra                                              ; $59d3: $1f
	ld hl, sp-$40                                    ; $59d4: $f8 $c0
	nop                                              ; $59d6: $00
	nop                                              ; $59d7: $00
	jr nc, jr_06e_5a0a                               ; $59d8: $30 $30

	ld a, b                                          ; $59da: $78
	ld hl, sp-$08                                    ; $59db: $f8 $f8
	sbc b                                            ; $59dd: $98
	jr nz, jr_06e_59d0                               ; $59de: $20 $f0

	jr nz, @-$0e                                     ; $59e0: $20 $f0

	ld b, b                                          ; $59e2: $40
	ldh [rLCDC], a                                   ; $59e3: $e0 $40
	ld [de], a                                       ; $59e5: $12
	add h                                            ; $59e6: $84
	ld a, e                                          ; $59e7: $7b
	ld e, b                                          ; $59e8: $58
	add b                                            ; $59e9: $80
	jr nz, jr_06e_59cc                               ; $59ea: $20 $e0

	sub b                                            ; $59ec: $90
	ld [hl], b                                       ; $59ed: $70
	ret z                                            ; $59ee: $c8

	jr c, @-$1a                                      ; $59ef: $38 $e4

	inc e                                            ; $59f1: $1c
	inc [hl]                                         ; $59f2: $34
	call z, $6e92                                    ; $59f3: $cc $92 $6e
	jp nz, Jump_06e_713e                             ; $59f6: $c2 $3e $71

	sbc a                                            ; $59f9: $9f
	or c                                             ; $59fa: $b1
	rst GetHLinHL                                          ; $59fb: $cf
	ld e, c                                          ; $59fc: $59
	rst AddAOntoHL                                          ; $59fd: $ef
	ld c, b                                          ; $59fe: $48
	rst FarCall                                          ; $59ff: $f7
	xor h                                            ; $5a00: $ac
	ld [hl], a                                       ; $5a01: $77
	and h                                            ; $5a02: $a4
	ld a, a                                          ; $5a03: $7f
	jp nc, Jump_06e_513f                             ; $5a04: $d2 $3f $51

	cp a                                             ; $5a07: $bf
	add hl, hl                                       ; $5a08: $29
	sbc c                                            ; $5a09: $99

jr_06e_5a0a:
	rst SubAFromDE                                          ; $5a0a: $df
	xor b                                            ; $5a0b: $a8
	rst SubAFromDE                                          ; $5a0c: $df
	ld b, h                                          ; $5a0d: $44
	rst $38                                          ; $5a0e: $ff
	and d                                            ; $5a0f: $a2
	ld a, e                                          ; $5a10: $7b
	db $f4                                           ; $5a11: $f4
	sbc d                                            ; $5a12: $9a
	ld c, c                                          ; $5a13: $49
	cp a                                             ; $5a14: $bf
	and l                                            ; $5a15: $a5
	rst SubAFromDE                                          ; $5a16: $df
	ld b, d                                          ; $5a17: $42
	ld a, e                                          ; $5a18: $7b
	sub l                                            ; $5a19: $95
	adc [hl]                                         ; $5a1a: $8e
	inc e                                            ; $5a1b: $1c
	rst $38                                          ; $5a1c: $ff
	adc e                                            ; $5a1d: $8b
	rst $38                                          ; $5a1e: $ff
	ld h, h                                          ; $5a1f: $64
	rst $38                                          ; $5a20: $ff
	sbc h                                            ; $5a21: $9c
	rst $38                                          ; $5a22: $ff
	xor d                                            ; $5a23: $aa
	db $fd                                           ; $5a24: $fd
	xor d                                            ; $5a25: $aa
	db $fd                                           ; $5a26: $fd
	or a                                             ; $5a27: $b7
	db $ec                                           ; $5a28: $ec
	push af                                          ; $5a29: $f5
	xor [hl]                                         ; $5a2a: $ae
	ld [hl], l                                       ; $5a2b: $75
	ld a, e                                          ; $5a2c: $7b
	cp $7f                                           ; $5a2d: $fe $7f

jr_06e_5a2f:
	call nc, $a99c                                   ; $5a2f: $d4 $9c $a9
	ld a, a                                          ; $5a32: $7f
	ret                                              ; $5a33: $c9


	ld a, e                                          ; $5a34: $7b
	cp $8b                                           ; $5a35: $fe $8b
	ld d, d                                          ; $5a37: $52
	cp $52                                           ; $5a38: $fe $52
	cp $94                                           ; $5a3a: $fe $94
	db $fc                                           ; $5a3c: $fc
	and h                                            ; $5a3d: $a4
	db $fc                                           ; $5a3e: $fc
	xor b                                            ; $5a3f: $a8
	ld hl, sp+$58                                    ; $5a40: $f8 $58
	ld hl, sp+$51                                    ; $5a42: $f8 $51
	pop af                                           ; $5a44: $f1
	ld h, c                                          ; $5a45: $61
	pop hl                                           ; $5a46: $e1
	jp $86c3                                         ; $5a47: $c3 $c3 $86


	add [hl]                                         ; $5a4a: $86
	ld l, h                                          ; $5a4b: $6c
	xor $91                                          ; $5a4c: $ee $91
	db $10                                           ; $5a4e: $10
	ldh a, [$08]                                     ; $5a4f: $f0 $08
	ld hl, sp-$78                                    ; $5a51: $f8 $88
	ld a, b                                          ; $5a53: $78
	call nz, $c43c                                   ; $5a54: $c4 $3c $c4
	inc a                                            ; $5a57: $3c
	jp nz, $e23e                                     ; $5a58: $c2 $3e $e2

	ld e, $77                                        ; $5a5b: $1e $77
	cp $97                                           ; $5a5d: $fe $97
	pop hl                                           ; $5a5f: $e1
	rra                                              ; $5a60: $1f
	pop hl                                           ; $5a61: $e1
	rra                                              ; $5a62: $1f
	pop af                                           ; $5a63: $f1
	rrca                                             ; $5a64: $0f
	pop af                                           ; $5a65: $f1
	rrca                                             ; $5a66: $0f
	cpl                                              ; $5a67: $2f
	ld l, b                                          ; $5a68: $68
	rst SubAFromDE                                          ; $5a69: $df
	add b                                            ; $5a6a: $80
	rst SubAFromDE                                          ; $5a6b: $df
	ret nz                                           ; $5a6c: $c0

	ld a, a                                          ; $5a6d: $7f
	ld h, h                                          ; $5a6e: $64
	ld [hl], a                                       ; $5a6f: $77
	cp $98                                           ; $5a70: $fe $98
	and b                                            ; $5a72: $a0
	ldh [$a0], a                                     ; $5a73: $e0 $a0
	ldh [$60], a                                     ; $5a75: $e0 $60
	ldh [rAUD4LEN], a                                ; $5a77: $e0 $20
	ld a, e                                          ; $5a79: $7b
	cp [hl]                                          ; $5a7a: $be
	ld a, a                                          ; $5a7b: $7f
	cp $80                                           ; $5a7c: $fe $80
	sub b                                            ; $5a7e: $90
	ldh a, [hDisp0_WY]                                     ; $5a7f: $f0 $88
	ld hl, sp+$48                                    ; $5a81: $f8 $48
	ld hl, sp-$38                                    ; $5a83: $f8 $c8
	ld hl, sp-$7c                                    ; $5a85: $f8 $84
	db $fc                                           ; $5a87: $fc
	call nc, Call_06e_54ec                           ; $5a88: $d4 $ec $54
	db $ec                                           ; $5a8b: $ec
	ld [hl], h                                       ; $5a8c: $74
	db $ec                                           ; $5a8d: $ec
	ld a, h                                          ; $5a8e: $7c
	db $e4                                           ; $5a8f: $e4
	db $ec                                           ; $5a90: $ec
	db $f4                                           ; $5a91: $f4
	db $ec                                           ; $5a92: $ec
	db $f4                                           ; $5a93: $f4
	xor h                                            ; $5a94: $ac
	or h                                             ; $5a95: $b4
	and h                                            ; $5a96: $a4
	cp h                                             ; $5a97: $bc
	and h                                            ; $5a98: $a4
	cp h                                             ; $5a99: $bc
	inc h                                            ; $5a9a: $24
	inc a                                            ; $5a9b: $3c
	jr z, jr_06e_5a2f                                ; $5a9c: $28 $91

	jr c, jr_06e_5ae8                                ; $5a9e: $38 $48

	ld a, b                                          ; $5aa0: $78
	ld c, b                                          ; $5aa1: $48
	ld a, b                                          ; $5aa2: $78
	ld d, b                                          ; $5aa3: $50
	ld [hl], b                                       ; $5aa4: $70
	ld d, b                                          ; $5aa5: $50
	ld [hl], b                                       ; $5aa6: $70
	or b                                             ; $5aa7: $b0
	ldh a, [$a0]                                     ; $5aa8: $f0 $a0
	ldh [rLCDC], a                                   ; $5aaa: $e0 $40
	ld l, b                                          ; $5aac: $68
	ld l, a                                          ; $5aad: $6f
	rla                                              ; $5aae: $17
	nop                                              ; $5aaf: $00
	jp c, $99ee                                      ; $5ab0: $da $ee $99

	adc b                                            ; $5ab3: $88
	ld de, $9999                                     ; $5ab4: $11 $99 $99
	ld [hl+], a                                      ; $5ab7: $22
	xor $4f                                          ; $5ab8: $ee $4f
	ei                                               ; $5aba: $fb
	sbc [hl]                                         ; $5abb: $9e
	sbc c                                            ; $5abc: $99
	ld a, e                                          ; $5abd: $7b
	ei                                               ; $5abe: $fb
	ld [hl], e                                       ; $5abf: $73
	db $fd                                           ; $5ac0: $fd
	sbc [hl]                                         ; $5ac1: $9e
	xor $de                                          ; $5ac2: $ee $de
	sbc c                                            ; $5ac4: $99
	rst AddAOntoHL                                          ; $5ac5: $ef
	ld bc, $1b80                                     ; $5ac6: $01 $80 $1b
	db $fc                                           ; $5ac9: $fc
	ldh [rIE], a                                     ; $5aca: $e0 $ff
	ld b, e                                          ; $5acc: $43
	ld a, a                                          ; $5acd: $7f
	db $fd                                           ; $5ace: $fd
	rst $38                                          ; $5acf: $ff
	ld [de], a                                       ; $5ad0: $12
	rra                                              ; $5ad1: $1f
	inc h                                            ; $5ad2: $24
	ccf                                              ; $5ad3: $3f
	jr c, jr_06e_5b05                                ; $5ad4: $38 $2f

	ld l, a                                          ; $5ad6: $6f
	ld e, a                                          ; $5ad7: $5f
	call nc, $a9bb                                   ; $5ad8: $d4 $bb $a9
	rst FarCall                                          ; $5adb: $f7
	jp hl                                            ; $5adc: $e9


	ld [hl], a                                       ; $5add: $77
	ldh a, [c]                                       ; $5ade: $f2
	ccf                                              ; $5adf: $3f
	ldh a, [c]                                       ; $5ae0: $f2
	rra                                              ; $5ae1: $1f
	db $fd                                           ; $5ae2: $fd
	ld c, $fd                                        ; $5ae3: $0e $fd
	ld b, $ff                                        ; $5ae5: $06 $ff
	sbc c                                            ; $5ae7: $99

jr_06e_5ae8:
	inc b                                            ; $5ae8: $04
	ld a, [hl]                                       ; $5ae9: $7e
	inc b                                            ; $5aea: $04
	ld a, [hl-]                                      ; $5aeb: $3a
	inc c                                            ; $5aec: $0c
	add hl, de                                       ; $5aed: $19
	ld a, e                                          ; $5aee: $7b
	cp $96                                           ; $5aef: $fe $96
	add hl, bc                                       ; $5af1: $09
	inc c                                            ; $5af2: $0c
	dec bc                                           ; $5af3: $0b
	inc c                                            ; $5af4: $0c
	ld c, $05                                        ; $5af5: $0e $05
	inc c                                            ; $5af7: $0c
	rlca                                             ; $5af8: $07
	dec b                                            ; $5af9: $05
	ld [hl], e                                       ; $5afa: $73
	cp $9e                                           ; $5afb: $fe $9e
	sub l                                            ; $5afd: $95
	ld a, e                                          ; $5afe: $7b
	cp $80                                           ; $5aff: $fe $80
	jp nc, $f203                                     ; $5b01: $d2 $03 $f2

	add e                                            ; $5b04: $83

jr_06e_5b05:
	pop af                                           ; $5b05: $f1
	add c                                            ; $5b06: $81
	inc l                                            ; $5b07: $2c
	di                                               ; $5b08: $f3
	reti                                             ; $5b09: $d9


	rst SubAFromBC                                          ; $5b0a: $e7
	or e                                             ; $5b0b: $b3
	adc $04                                          ; $5b0c: $ce $04
	rst $38                                          ; $5b0e: $ff
	dec bc                                           ; $5b0f: $0b
	rst $38                                          ; $5b10: $ff
	ccf                                              ; $5b11: $3f
	db $fc                                           ; $5b12: $fc
	ld a, a                                          ; $5b13: $7f
	ldh [$e3], a                                     ; $5b14: $e0 $e3
	jp $87cf                                         ; $5b16: $c3 $cf $87


	ld e, [hl]                                       ; $5b19: $5e
	sbc $4b                                          ; $5b1a: $de $4b
	jp z, $c363                                      ; $5b1c: $ca $63 $c3

	ld h, b                                          ; $5b1f: $60
	add d                                            ; $5b20: $82
	pop bc                                           ; $5b21: $c1
	ld h, e                                          ; $5b22: $63
	pop hl                                           ; $5b23: $e1
	ld h, b                                          ; $5b24: $60
	ldh [$60], a                                     ; $5b25: $e0 $60
	ldh [rSVBK], a                                   ; $5b27: $e0 $70
	ldh [$50], a                                     ; $5b29: $e0 $50
	ldh a, [$58]                                     ; $5b2b: $f0 $58
	ldh a, [$9c]                                     ; $5b2d: $f0 $9c
	ld hl, sp-$52                                    ; $5b2f: $f8 $ae
	call c, $deaf                                    ; $5b31: $dc $af $de
	or e                                             ; $5b34: $b3
	rst SubAFromDE                                          ; $5b35: $df
	cp c                                             ; $5b36: $b9
	rst SubAFromDE                                          ; $5b37: $df
	cp $57                                           ; $5b38: $fe $57
	rst SubAFromDE                                          ; $5b3a: $df
	ld [hl], c                                       ; $5b3b: $71
	rst SubAFromDE                                          ; $5b3c: $df
	ld [hl], b                                       ; $5b3d: $70
	ld [hl], a                                       ; $5b3e: $77
	cp $80                                           ; $5b3f: $fe $80
	cp $30                                           ; $5b41: $fe $30
	db $fc                                           ; $5b43: $fc
	sub b                                            ; $5b44: $90
	call nc, $ed90                                   ; $5b45: $d4 $90 $ed
	cp a                                             ; $5b48: $bf
	db $ed                                           ; $5b49: $ed
	ccf                                              ; $5b4a: $3f
	xor l                                            ; $5b4b: $ad
	ld a, a                                          ; $5b4c: $7f
	ld a, l                                          ; $5b4d: $7d
	rst FarCall                                          ; $5b4e: $f7
	db $fc                                           ; $5b4f: $fc
	sub a                                            ; $5b50: $97
	cp $13                                           ; $5b51: $fe $13
	xor $13                                          ; $5b53: $ee $13
	rst $38                                          ; $5b55: $ff
	add c                                            ; $5b56: $81
	rst $38                                          ; $5b57: $ff
	pop bc                                           ; $5b58: $c1
	ld a, b                                          ; $5b59: $78
	ld h, b                                          ; $5b5a: $60
	ldh [$e0], a                                     ; $5b5b: $e0 $e0
	and b                                            ; $5b5d: $a0
	ldh [$e0], a                                     ; $5b5e: $e0 $e0
	add b                                            ; $5b60: $80
	ld b, b                                          ; $5b61: $40
	rst JumpTable                                          ; $5b62: $c7
	add b                                            ; $5b63: $80
	dec e                                            ; $5b64: $1d
	ld [bc], a                                       ; $5b65: $02
	ld a, l                                          ; $5b66: $7d
	ld b, $24                                        ; $5b67: $06 $24
	rst $38                                          ; $5b69: $ff
	ld h, $ff                                        ; $5b6a: $26 $ff
	scf                                              ; $5b6c: $37
	db $fd                                           ; $5b6d: $fd
	scf                                              ; $5b6e: $37
	db $fd                                           ; $5b6f: $fd
	cp l                                             ; $5b70: $bd
	xor $ee                                          ; $5b71: $ee $ee
	ld [hl], a                                       ; $5b73: $77
	rst $38                                          ; $5b74: $ff
	ld sp, $10ff                                     ; $5b75: $31 $ff $10
	ei                                               ; $5b78: $fb
	rlca                                             ; $5b79: $07
	rst FarCall                                          ; $5b7a: $f7
	rrca                                             ; $5b7b: $0f
	ld e, $0a                                        ; $5b7c: $1e $0a
	inc bc                                           ; $5b7e: $03
	inc bc                                           ; $5b7f: $03
	add b                                            ; $5b80: $80
	ld bc, $8303                                     ; $5b81: $01 $03 $83
	ld [bc], a                                       ; $5b84: $02
	rst SubAFromBC                                          ; $5b85: $e7
	ld bc, $00f0                                     ; $5b86: $01 $f0 $00
	jp c, $d56d                                      ; $5b89: $da $6d $d5

	ld l, [hl]                                       ; $5b8c: $6e
	ld a, l                                          ; $5b8d: $7d
	and [hl]                                         ; $5b8e: $a6
	ld l, [hl]                                       ; $5b8f: $6e
	or e                                             ; $5b90: $b3
	sub l                                            ; $5b91: $95
	ei                                               ; $5b92: $fb
	ld c, d                                          ; $5b93: $4a
	db $fd                                           ; $5b94: $fd
	and h                                            ; $5b95: $a4
	rst $38                                          ; $5b96: $ff
	ldh a, [c]                                       ; $5b97: $f2
	ld a, a                                          ; $5b98: $7f
	ld sp, hl                                        ; $5b99: $f9
	adc a                                            ; $5b9a: $8f
	db $fc                                           ; $5b9b: $fc
	rst SubAFromBC                                          ; $5b9c: $e7
	ld a, [hl]                                       ; $5b9d: $7e
	scf                                              ; $5b9e: $37
	db $fd                                           ; $5b9f: $fd
	add b                                            ; $5ba0: $80
	ld a, a                                          ; $5ba1: $7f
	db $ec                                           ; $5ba2: $ec
	rst SubAFromBC                                          ; $5ba3: $e7
	ld l, $e5                                        ; $5ba4: $2e $e5
	sbc $c5                                          ; $5ba6: $de $c5
	ld a, [hl-]                                      ; $5ba8: $3a
	dec c                                            ; $5ba9: $0d
	add hl, sp                                       ; $5baa: $39
	dec c                                            ; $5bab: $0d
	ld a, l                                          ; $5bac: $7d
	add hl, bc                                       ; $5bad: $09
	ld [hl], e                                       ; $5bae: $73
	add hl, de                                       ; $5baf: $19
	ldh a, [c]                                       ; $5bb0: $f2
	dec de                                           ; $5bb1: $1b
	db $eb                                           ; $5bb2: $eb
	ld [hl-], a                                      ; $5bb3: $32
	db $e3                                           ; $5bb4: $e3
	halt                                             ; $5bb5: $76
	xor l                                            ; $5bb6: $ad
	or $37                                           ; $5bb7: $f6 $37
	db $ec                                           ; $5bb9: $ec
	ld d, [hl]                                       ; $5bba: $56
	db $ed                                           ; $5bbb: $ed
	ld c, b                                          ; $5bbc: $48
	rst $38                                          ; $5bbd: $ff
	adc b                                            ; $5bbe: $88
	rst $38                                          ; $5bbf: $ff
	sub l                                            ; $5bc0: $95
	sbc c                                            ; $5bc1: $99
	rst $38                                          ; $5bc2: $ff
	ld de, $32ff                                     ; $5bc3: $11 $ff $32
	rst $38                                          ; $5bc6: $ff
	ld h, h                                          ; $5bc7: $64
	rst $38                                          ; $5bc8: $ff
	db $ed                                           ; $5bc9: $ed
	cp a                                             ; $5bca: $bf
	ld c, a                                          ; $5bcb: $4f
	ld b, b                                          ; $5bcc: $40
	sub e                                            ; $5bcd: $93
	ldh [$c0], a                                     ; $5bce: $e0 $c0
	jp $4f83                                         ; $5bd0: $c3 $83 $4f


	rst JumpTable                                          ; $5bd3: $c7
	ld e, [hl]                                       ; $5bd4: $5e
	sbc $6b                                          ; $5bd5: $de $6b
	jp z, $c361                                      ; $5bd7: $ca $61 $c3

	ld l, a                                          ; $5bda: $6f
	ld b, b                                          ; $5bdb: $40
	ld c, e                                          ; $5bdc: $4b
	ld h, b                                          ; $5bdd: $60
	sbc d                                            ; $5bde: $9a
	ld bc, $81ff                                     ; $5bdf: $01 $ff $81
	ld hl, sp-$40                                    ; $5be2: $f8 $c0
	db $dd                                           ; $5be4: $dd
	ldh [$7f], a                                     ; $5be5: $e0 $7f
	and $2f                                          ; $5be7: $e6 $2f
	ld h, b                                          ; $5be9: $60
	sub [hl]                                         ; $5bea: $96
	rst $38                                          ; $5beb: $ff
	nop                                              ; $5bec: $00
	rst $38                                          ; $5bed: $ff
	rlca                                             ; $5bee: $07
	ccf                                              ; $5bef: $3f
	rrca                                             ; $5bf0: $0f
	ld b, $02                                        ; $5bf1: $06 $02
	rlca                                             ; $5bf3: $07
	daa                                              ; $5bf4: $27
	ld h, b                                          ; $5bf5: $60
	sub [hl]                                         ; $5bf6: $96
	rrca                                             ; $5bf7: $0f
	db $fc                                           ; $5bf8: $fc
	add a                                            ; $5bf9: $87
	cp $e7                                           ; $5bfa: $fe $e7
	ld a, l                                          ; $5bfc: $7d
	scf                                              ; $5bfd: $37
	db $fc                                           ; $5bfe: $fc
	rst $38                                          ; $5bff: $ff
	ld l, a                                          ; $5c00: $6f
	ld h, b                                          ; $5c01: $60
	ld b, a                                          ; $5c02: $47
	add b                                            ; $5c03: $80
	sub l                                            ; $5c04: $95
	ret nz                                           ; $5c05: $c0

	add b                                            ; $5c06: $80
	ld b, e                                          ; $5c07: $43
	jp $c74f                                         ; $5c08: $c3 $4f $c7


	ld a, [hl]                                       ; $5c0b: $7e
	sbc $65                                          ; $5c0c: $de $65
	rst JumpTable                                          ; $5c0e: $c7
	cpl                                              ; $5c0f: $2f
	add b                                            ; $5c10: $80
	sbc d                                            ; $5c11: $9a
	ld a, a                                          ; $5c12: $7f
	ld bc, $80f8                                     ; $5c13: $01 $f8 $80
	ldh [$7b], a                                     ; $5c16: $e0 $7b
	ld a, [hl]                                       ; $5c18: $7e
	dec de                                           ; $5c19: $1b
	add b                                            ; $5c1a: $80
	sub [hl]                                         ; $5c1b: $96
	nop                                              ; $5c1c: $00
	dec sp                                           ; $5c1d: $3b
	inc bc                                           ; $5c1e: $03
	rlca                                             ; $5c1f: $07
	rlca                                             ; $5c20: $07
	rrca                                             ; $5c21: $0f
	ld c, $82                                        ; $5c22: $0e $82
	inc bc                                           ; $5c24: $03
	dec hl                                           ; $5c25: $2b
	add b                                            ; $5c26: $80
	sub [hl]                                         ; $5c27: $96
	rlca                                             ; $5c28: $07
	cp $87                                           ; $5c29: $fe $87
	db $fd                                           ; $5c2b: $fd
	rst SubAFromBC                                          ; $5c2c: $e7
	inc a                                            ; $5c2d: $3c
	ld a, a                                          ; $5c2e: $7f
	ld a, $f5                                        ; $5c2f: $3e $f5
	cpl                                              ; $5c31: $2f
	add b                                            ; $5c32: $80
	sub l                                            ; $5c33: $95
	ld b, b                                          ; $5c34: $40
	ret nz                                           ; $5c35: $c0

	ld b, a                                          ; $5c36: $47
	ret nz                                           ; $5c37: $c0

	ld a, b                                          ; $5c38: $78
	ret c                                            ; $5c39: $d8

	ld l, a                                          ; $5c3a: $6f
	rst GetHLinHL                                          ; $5c3b: $cf
	ld h, a                                          ; $5c3c: $67
	rst SubAFromBC                                          ; $5c3d: $e7
	cpl                                              ; $5c3e: $2f
	add b                                            ; $5c3f: $80
	sbc h                                            ; $5c40: $9c
	jr c, jr_06e_5c43                                ; $5c41: $38 $00

jr_06e_5c43:
	add b                                            ; $5c43: $80
	cp $df                                           ; $5c44: $fe $df
	ldh [$9d], a                                     ; $5c46: $e0 $9d
	rst SubAFromBC                                          ; $5c48: $e7
	ret nz                                           ; $5c49: $c0

	daa                                              ; $5c4a: $27
	add b                                            ; $5c4b: $80
	ld a, a                                          ; $5c4c: $7f
	sbc $9e                                          ; $5c4d: $de $9e
	inc bc                                           ; $5c4f: $03
	cp $9b                                           ; $5c50: $fe $9b
	adc a                                            ; $5c52: $8f
	rlca                                             ; $5c53: $07
	rst SubAFromBC                                          ; $5c54: $e7
	inc bc                                           ; $5c55: $03
	dec hl                                           ; $5c56: $2b
	add b                                            ; $5c57: $80
	adc c                                            ; $5c58: $89
	rlca                                             ; $5c59: $07
	dec a                                            ; $5c5a: $3d
	rst JumpTable                                          ; $5c5b: $c7
	inc e                                            ; $5c5c: $1c
	daa                                              ; $5c5d: $27
	cp $fd                                           ; $5c5e: $fe $fd
	cp $f5                                           ; $5c60: $fe $f5
	ld a, [hl-]                                      ; $5c62: $3a
	dec c                                            ; $5c63: $0d
	dec b                                            ; $5c64: $05
	ld b, $00                                        ; $5c65: $06 $00
	nop                                              ; $5c67: $00
	ld [$0708], sp                                   ; $5c68: $08 $08 $07
	rlca                                             ; $5c6b: $07
	nop                                              ; $5c6c: $00
	nop                                              ; $5c6d: $00
	rlca                                             ; $5c6e: $07
	ld a, e                                          ; $5c6f: $7b
	xor b                                            ; $5c70: $a8
	rst SubAFromDE                                          ; $5c71: $df
	ret nz                                           ; $5c72: $c0

	rst SubAFromDE                                          ; $5c73: $df
	ldh [hDisp1_WX], a                                     ; $5c74: $e0 $96
	ld a, b                                          ; $5c76: $78
	ldh a, [$fe]                                     ; $5c77: $f0 $fe
	reti                                             ; $5c79: $d9


	rst $38                                          ; $5c7a: $ff
	rst JumpTable                                          ; $5c7b: $c7
	db $e3                                           ; $5c7c: $e3
	ld b, b                                          ; $5c7d: $40
	ret nz                                           ; $5c7e: $c0

	ld a, e                                          ; $5c7f: $7b
	cp $df                                           ; $5c80: $fe $df
	add b                                            ; $5c82: $80
	db $fc                                           ; $5c83: $fc
	ld [hl], e                                       ; $5c84: $73
	ld a, [$019e]                                    ; $5c85: $fa $9e $01
	ld a, e                                          ; $5c88: $7b
	xor d                                            ; $5c89: $aa
	ld a, [hl]                                       ; $5c8a: $7e
	xor d                                            ; $5c8b: $aa
	adc a                                            ; $5c8c: $8f
	ld e, $0f                                        ; $5c8d: $1e $0f
	ld a, [hl]                                       ; $5c8f: $7e
	ccf                                              ; $5c90: $3f
	cp $ff                                           ; $5c91: $fe $ff
	cp $f3                                           ; $5c93: $fe $f3
	rst $38                                          ; $5c95: $ff
	inc bc                                           ; $5c96: $03
	rst $38                                          ; $5c97: $ff
	inc bc                                           ; $5c98: $03
	ld a, $03                                        ; $5c99: $3e $03
	dec e                                            ; $5c9b: $1d
	rlca                                             ; $5c9c: $07
	ld [hl], a                                       ; $5c9d: $77
	ret nz                                           ; $5c9e: $c0

	rst SubAFromDE                                          ; $5c9f: $df
	rrca                                             ; $5ca0: $0f
	inc bc                                           ; $5ca1: $03
	ret nz                                           ; $5ca2: $c0

	dec bc                                           ; $5ca3: $0b
	ret nz                                           ; $5ca4: $c0

	ld [hl], e                                       ; $5ca5: $73
	cp a                                             ; $5ca6: $bf
	sbc l                                            ; $5ca7: $9d
	nop                                              ; $5ca8: $00
	add a                                            ; $5ca9: $87
	inc hl                                           ; $5caa: $23
	ret nz                                           ; $5cab: $c0

	ld [hl], a                                       ; $5cac: $77
	ld sp, hl                                        ; $5cad: $f9
	inc bc                                           ; $5cae: $03
	ret nz                                           ; $5caf: $c0

	inc bc                                           ; $5cb0: $03
	ret nz                                           ; $5cb1: $c0

	scf                                              ; $5cb2: $37
	ret nz                                           ; $5cb3: $c0

	inc e                                            ; $5cb4: $1c
	ld [bc], a                                       ; $5cb5: $02
	add b                                            ; $5cb6: $80
	dec de                                           ; $5cb7: $1b
	db $fc                                           ; $5cb8: $fc
	ldh [rIE], a                                     ; $5cb9: $e0 $ff
	ld b, e                                          ; $5cbb: $43
	ld a, a                                          ; $5cbc: $7f
	db $fd                                           ; $5cbd: $fd
	rst $38                                          ; $5cbe: $ff
	ld [de], a                                       ; $5cbf: $12
	rra                                              ; $5cc0: $1f
	inc h                                            ; $5cc1: $24
	ccf                                              ; $5cc2: $3f
	jr c, jr_06e_5cf4                                ; $5cc3: $38 $2f

	ld l, a                                          ; $5cc5: $6f
	ld e, a                                          ; $5cc6: $5f
	call nc, $a9bb                                   ; $5cc7: $d4 $bb $a9
	rst FarCall                                          ; $5cca: $f7
	jp hl                                            ; $5ccb: $e9


	ld [hl], a                                       ; $5ccc: $77
	ldh a, [c]                                       ; $5ccd: $f2
	ccf                                              ; $5cce: $3f
	ldh a, [c]                                       ; $5ccf: $f2
	rra                                              ; $5cd0: $1f
	db $fd                                           ; $5cd1: $fd
	ld c, $fd                                        ; $5cd2: $0e $fd
	ld b, $ff                                        ; $5cd4: $06 $ff
	sbc c                                            ; $5cd6: $99
	inc b                                            ; $5cd7: $04
	ld a, [hl]                                       ; $5cd8: $7e
	inc b                                            ; $5cd9: $04
	ld a, [hl-]                                      ; $5cda: $3a
	inc c                                            ; $5cdb: $0c
	add hl, de                                       ; $5cdc: $19
	ld a, e                                          ; $5cdd: $7b
	cp $96                                           ; $5cde: $fe $96
	add hl, bc                                       ; $5ce0: $09
	inc c                                            ; $5ce1: $0c
	dec bc                                           ; $5ce2: $0b
	inc c                                            ; $5ce3: $0c
	ld c, $05                                        ; $5ce4: $0e $05
	inc c                                            ; $5ce6: $0c
	rlca                                             ; $5ce7: $07
	dec b                                            ; $5ce8: $05
	ld [hl], e                                       ; $5ce9: $73
	cp $9e                                           ; $5cea: $fe $9e
	sub l                                            ; $5cec: $95
	ld a, e                                          ; $5ced: $7b
	cp $80                                           ; $5cee: $fe $80
	jp nc, $f203                                     ; $5cf0: $d2 $03 $f2

	add e                                            ; $5cf3: $83

jr_06e_5cf4:
	pop af                                           ; $5cf4: $f1
	add c                                            ; $5cf5: $81
	inc l                                            ; $5cf6: $2c
	di                                               ; $5cf7: $f3
	reti                                             ; $5cf8: $d9


	rst SubAFromBC                                          ; $5cf9: $e7
	or d                                             ; $5cfa: $b2
	rst GetHLinHL                                          ; $5cfb: $cf
	dec b                                            ; $5cfc: $05
	rst $38                                          ; $5cfd: $ff
	dec bc                                           ; $5cfe: $0b
	cp $37                                           ; $5cff: $fe $37
	db $fc                                           ; $5d01: $fc
	ld a, a                                          ; $5d02: $7f
	db $e3                                           ; $5d03: $e3
	rst SubAFromBC                                          ; $5d04: $e7
	rst JumpTable                                          ; $5d05: $c7
	sbc $9e                                          ; $5d06: $de $9e
	ld c, e                                          ; $5d08: $4b
	jp z, $c343                                      ; $5d09: $ca $43 $c3

	ld h, c                                          ; $5d0c: $61
	jp $8263                                         ; $5d0d: $c3 $63 $82


	jp nz, $e163                                     ; $5d10: $c2 $63 $e1

	ld h, b                                          ; $5d13: $60
	ldh [$60], a                                     ; $5d14: $e0 $60
	ldh [rSVBK], a                                   ; $5d16: $e0 $70
	ldh [$50], a                                     ; $5d18: $e0 $50
	ldh a, [$58]                                     ; $5d1a: $f0 $58
	ldh a, [$9c]                                     ; $5d1c: $f0 $9c
	ld hl, sp-$52                                    ; $5d1e: $f8 $ae
	call c, $deaf                                    ; $5d20: $dc $af $de
	or e                                             ; $5d23: $b3
	rst SubAFromDE                                          ; $5d24: $df
	cp c                                             ; $5d25: $b9
	rst SubAFromDE                                          ; $5d26: $df
	cp $57                                           ; $5d27: $fe $57
	rst SubAFromDE                                          ; $5d29: $df
	ld [hl], c                                       ; $5d2a: $71
	rst SubAFromDE                                          ; $5d2b: $df
	ld [hl], b                                       ; $5d2c: $70
	ld [hl], a                                       ; $5d2d: $77
	cp $86                                           ; $5d2e: $fe $86
	cp $30                                           ; $5d30: $fe $30
	db $fc                                           ; $5d32: $fc
	sub b                                            ; $5d33: $90
	call nc, $ed90                                   ; $5d34: $d4 $90 $ed
	cp a                                             ; $5d37: $bf
	db $ed                                           ; $5d38: $ed
	ccf                                              ; $5d39: $3f
	dec l                                            ; $5d3a: $2d
	rst $38                                          ; $5d3b: $ff
	cp l                                             ; $5d3c: $bd
	rst FarCall                                          ; $5d3d: $f7
	call c, $fe77                                    ; $5d3e: $dc $77 $fe
	inc de                                           ; $5d41: $13
	ld l, [hl]                                       ; $5d42: $6e
	sub e                                            ; $5d43: $93
	cp a                                             ; $5d44: $bf
	pop bc                                           ; $5d45: $c1
	ld a, a                                          ; $5d46: $7f
	ld h, c                                          ; $5d47: $61
	ld hl, sp-$22                                    ; $5d48: $f8 $de
	ldh [$7b], a                                     ; $5d4a: $e0 $7b
	add $81                                          ; $5d4c: $c6 $81
	ret nz                                           ; $5d4e: $c0

	jp $0580                                         ; $5d4f: $c3 $80 $05


	ld [bc], a                                       ; $5d52: $02
	dec c                                            ; $5d53: $0d
	ld b, $24                                        ; $5d54: $06 $24
	rst $38                                          ; $5d56: $ff
	ld h, $ff                                        ; $5d57: $26 $ff
	scf                                              ; $5d59: $37
	db $fd                                           ; $5d5a: $fd
	dec [hl]                                         ; $5d5b: $35
	rst $38                                          ; $5d5c: $ff
	cp [hl]                                          ; $5d5d: $be
	rst AddAOntoHL                                          ; $5d5e: $ef

jr_06e_5d5f:
	rst AddAOntoHL                                          ; $5d5f: $ef
	ld [hl], l                                       ; $5d60: $75
	rst $38                                          ; $5d61: $ff
	jr nc, jr_06e_5d5f                               ; $5d62: $30 $fb

	rla                                              ; $5d64: $17
	rst FarCall                                          ; $5d65: $f7
	ld c, $fe                                        ; $5d66: $0e $fe
	ld a, [bc]                                       ; $5d68: $0a
	ccf                                              ; $5d69: $3f
	inc bc                                           ; $5d6a: $03
	ld bc, $fe7b                                     ; $5d6b: $01 $7b $fe
	add b                                            ; $5d6e: $80
	inc bc                                           ; $5d6f: $03
	ld [bc], a                                       ; $5d70: $02
	add a                                            ; $5d71: $87
	ld bc, $0080                                     ; $5d72: $01 $80 $00
	jp c, $d56d                                      ; $5d75: $da $6d $d5

	ld l, [hl]                                       ; $5d78: $6e
	ld a, l                                          ; $5d79: $7d
	and [hl]                                         ; $5d7a: $a6
	ld l, [hl]                                       ; $5d7b: $6e
	or e                                             ; $5d7c: $b3
	sub l                                            ; $5d7d: $95
	ei                                               ; $5d7e: $fb
	jp z, $e4fd                                      ; $5d7f: $ca $fd $e4

	ld a, a                                          ; $5d82: $7f
	or d                                             ; $5d83: $b2
	rst SubAFromDE                                          ; $5d84: $df
	ld sp, hl                                        ; $5d85: $f9
	ld l, a                                          ; $5d86: $6f
	ld a, h                                          ; $5d87: $7c
	scf                                              ; $5d88: $37
	cp $7f                                           ; $5d89: $fe $7f
	db $ed                                           ; $5d8b: $ed
	rst SubAFromBC                                          ; $5d8c: $e7
	xor h                                            ; $5d8d: $ac
	add b                                            ; $5d8e: $80
	rst SubAFromBC                                          ; $5d8f: $e7
	ld l, $e5                                        ; $5d90: $2e $e5
	sbc $c5                                          ; $5d92: $de $c5
	ld a, [hl-]                                      ; $5d94: $3a
	dec c                                            ; $5d95: $0d
	add hl, sp                                       ; $5d96: $39
	dec c                                            ; $5d97: $0d
	ld a, l                                          ; $5d98: $7d
	add hl, bc                                       ; $5d99: $09
	ld [hl], e                                       ; $5d9a: $73
	add hl, de                                       ; $5d9b: $19
	ldh a, [c]                                       ; $5d9c: $f2
	dec de                                           ; $5d9d: $1b
	db $eb                                           ; $5d9e: $eb
	ld [hl-], a                                      ; $5d9f: $32
	db $e3                                           ; $5da0: $e3
	halt                                             ; $5da1: $76
	xor l                                            ; $5da2: $ad
	or $37                                           ; $5da3: $f6 $37
	db $ec                                           ; $5da5: $ec
	ld d, [hl]                                       ; $5da6: $56
	db $ed                                           ; $5da7: $ed
	ld c, b                                          ; $5da8: $48
	rst $38                                          ; $5da9: $ff
	adc b                                            ; $5daa: $88
	rst $38                                          ; $5dab: $ff
	sbc c                                            ; $5dac: $99
	rst $38                                          ; $5dad: $ff
	sub a                                            ; $5dae: $97
	ld de, $32ff                                     ; $5daf: $11 $ff $32
	rst $38                                          ; $5db2: $ff
	ld h, h                                          ; $5db3: $64
	rst $38                                          ; $5db4: $ff
	db $ed                                           ; $5db5: $ed
	cp a                                             ; $5db6: $bf
	ld d, e                                          ; $5db7: $53
	ld b, b                                          ; $5db8: $40
	sub d                                            ; $5db9: $92
	ldh [$e3], a                                     ; $5dba: $e0 $e3
	jp $87cf                                         ; $5dbc: $c3 $cf $87


	ld e, [hl]                                       ; $5dbf: $5e
	sbc $4b                                          ; $5dc0: $de $4b
	jp z, $c363                                      ; $5dc2: $ca $63 $c3

	ld h, b                                          ; $5dc5: $60
	pop bc                                           ; $5dc6: $c1
	ld l, a                                          ; $5dc7: $6f
	ld b, b                                          ; $5dc8: $40
	ld d, a                                          ; $5dc9: $57
	ld h, b                                          ; $5dca: $60
	sub c                                            ; $5dcb: $91
	xor $13                                          ; $5dcc: $ee $13
	rst $38                                          ; $5dce: $ff
	add c                                            ; $5dcf: $81
	rst $38                                          ; $5dd0: $ff
	pop bc                                           ; $5dd1: $c1
	ld a, b                                          ; $5dd2: $78
	ld h, b                                          ; $5dd3: $60
	ldh [$e0], a                                     ; $5dd4: $e0 $e0
	and b                                            ; $5dd6: $a0
	ldh [$e0], a                                     ; $5dd7: $e0 $e0
	ld b, b                                          ; $5dd9: $40
	scf                                              ; $5dda: $37
	ld h, b                                          ; $5ddb: $60
	sub [hl]                                         ; $5ddc: $96
	rst $38                                          ; $5ddd: $ff
	db $10                                           ; $5dde: $10
	ei                                               ; $5ddf: $fb
	rlca                                             ; $5de0: $07
	rst FarCall                                          ; $5de1: $f7
	rrca                                             ; $5de2: $0f
	ld a, $0a                                        ; $5de3: $3e $0a
	inc bc                                           ; $5de5: $03
	dec hl                                           ; $5de6: $2b
	ld h, b                                          ; $5de7: $60
	ld a, [hl]                                       ; $5de8: $7e
	xor d                                            ; $5de9: $aa
	sub [hl]                                         ; $5dea: $96
	ld sp, hl                                        ; $5deb: $f9
	adc a                                            ; $5dec: $8f
	db $fc                                           ; $5ded: $fc
	rst SubAFromBC                                          ; $5dee: $e7
	ld a, [hl]                                       ; $5def: $7e
	scf                                              ; $5df0: $37
	db $fd                                           ; $5df1: $fd
	ld a, a                                          ; $5df2: $7f
	db $ec                                           ; $5df3: $ec
	ld l, e                                          ; $5df4: $6b
	ld h, b                                          ; $5df5: $60
	ld c, a                                          ; $5df6: $4f
	add b                                            ; $5df7: $80
	sub e                                            ; $5df8: $93
	ldh [$c0], a                                     ; $5df9: $e0 $c0
	ret nz                                           ; $5dfb: $c0

	add b                                            ; $5dfc: $80
	ld b, e                                          ; $5dfd: $43
	jp $c74f                                         ; $5dfe: $c3 $4f $c7


	ld a, [hl]                                       ; $5e01: $7e
	sbc $65                                          ; $5e02: $de $65
	rst JumpTable                                          ; $5e04: $c7
	inc sp                                           ; $5e05: $33
	add b                                            ; $5e06: $80
	sbc b                                            ; $5e07: $98
	ld bc, $017f                                     ; $5e08: $01 $7f $01
	ld hl, sp-$80                                    ; $5e0b: $f8 $80
	ldh [$c0], a                                     ; $5e0d: $e0 $c0
	halt                                             ; $5e0f: $76
	sbc $2f                                          ; $5e10: $de $2f
	add b                                            ; $5e12: $80
	sub e                                            ; $5e13: $93
	rst $38                                          ; $5e14: $ff
	nop                                              ; $5e15: $00
	rst $38                                          ; $5e16: $ff
	nop                                              ; $5e17: $00
	dec sp                                           ; $5e18: $3b
	inc bc                                           ; $5e19: $03
	rlca                                             ; $5e1a: $07
	rlca                                             ; $5e1b: $07
	rrca                                             ; $5e1c: $0f
	ld c, $02                                        ; $5e1d: $0e $02
	inc bc                                           ; $5e1f: $03
	inc sp                                           ; $5e20: $33
	add b                                            ; $5e21: $80
	sub h                                            ; $5e22: $94
	rrca                                             ; $5e23: $0f
	db $fc                                           ; $5e24: $fc
	rlca                                             ; $5e25: $07
	cp $87                                           ; $5e26: $fe $87
	db $fd                                           ; $5e28: $fd
	rst SubAFromBC                                          ; $5e29: $e7
	inc a                                            ; $5e2a: $3c
	ld a, a                                          ; $5e2b: $7f
	ld a, $f5                                        ; $5e2c: $3e $f5
	cpl                                              ; $5e2e: $2f
	add b                                            ; $5e2f: $80
	sub l                                            ; $5e30: $95
	ld b, b                                          ; $5e31: $40
	ret nz                                           ; $5e32: $c0

	ld b, a                                          ; $5e33: $47
	ret nz                                           ; $5e34: $c0

	ld a, b                                          ; $5e35: $78
	ret c                                            ; $5e36: $d8

	ld l, a                                          ; $5e37: $6f
	rst GetHLinHL                                          ; $5e38: $cf
	ld h, a                                          ; $5e39: $67
	rst SubAFromBC                                          ; $5e3a: $e7
	cpl                                              ; $5e3b: $2f
	add b                                            ; $5e3c: $80
	sbc h                                            ; $5e3d: $9c
	jr c, jr_06e_5e40                                ; $5e3e: $38 $00

jr_06e_5e40:
	add b                                            ; $5e40: $80
	cp $df                                           ; $5e41: $fe $df
	ldh [$9d], a                                     ; $5e43: $e0 $9d
	db $e3                                           ; $5e45: $e3
	ret nz                                           ; $5e46: $c0

	daa                                              ; $5e47: $27
	add b                                            ; $5e48: $80
	ld a, a                                          ; $5e49: $7f
	sbc $9e                                          ; $5e4a: $de $9e
	inc bc                                           ; $5e4c: $03
	cp $9b                                           ; $5e4d: $fe $9b
	rrca                                             ; $5e4f: $0f
	rlca                                             ; $5e50: $07
	add a                                            ; $5e51: $87
	inc bc                                           ; $5e52: $03
	dec hl                                           ; $5e53: $2b
	add b                                            ; $5e54: $80
	sub d                                            ; $5e55: $92
	rlca                                             ; $5e56: $07
	dec a                                            ; $5e57: $3d
	rst JumpTable                                          ; $5e58: $c7
	inc e                                            ; $5e59: $1c
	daa                                              ; $5e5a: $27
	cp $fd                                           ; $5e5b: $fe $fd
	cp $f5                                           ; $5e5d: $fe $f5
	ld a, [hl-]                                      ; $5e5f: $3a
	dec c                                            ; $5e60: $0d
	dec b                                            ; $5e61: $05
	ld b, $7b                                        ; $5e62: $06 $7b
	sub $99                                          ; $5e64: $d6 $99
	rrca                                             ; $5e66: $0f
	ld [$0708], sp                                   ; $5e67: $08 $08 $07
	inc b                                            ; $5e6a: $04
	rlca                                             ; $5e6b: $07
	ld a, e                                          ; $5e6c: $7b
	ret nc                                           ; $5e6d: $d0

	rst SubAFromDE                                          ; $5e6e: $df
	ret nz                                           ; $5e6f: $c0

	sub h                                            ; $5e70: $94
	db $e3                                           ; $5e71: $e3
	ldh [$78], a                                     ; $5e72: $e0 $78
	ldh a, [$fe]                                     ; $5e74: $f0 $fe
	reti                                             ; $5e76: $d9


	rst $38                                          ; $5e77: $ff
	rst JumpTable                                          ; $5e78: $c7
	db $e3                                           ; $5e79: $e3
	ld b, b                                          ; $5e7a: $40
	ret nz                                           ; $5e7b: $c0

	ld a, e                                          ; $5e7c: $7b
	cp $df                                           ; $5e7d: $fe $df
	add b                                            ; $5e7f: $80
	db $fd                                           ; $5e80: $fd
	sbc l                                            ; $5e81: $9d
	add b                                            ; $5e82: $80
	ret nz                                           ; $5e83: $c0

	ld a, e                                          ; $5e84: $7b
	db $f4                                           ; $5e85: $f4
	adc b                                            ; $5e86: $88
	add b                                            ; $5e87: $80
	add c                                            ; $5e88: $81
	add b                                            ; $5e89: $80
	inc bc                                           ; $5e8a: $03
	nop                                              ; $5e8b: $00
	rlca                                             ; $5e8c: $07
	inc bc                                           ; $5e8d: $03
	ld e, $0f                                        ; $5e8e: $1e $0f
	ld a, [hl]                                       ; $5e90: $7e
	ccf                                              ; $5e91: $3f
	cp $ff                                           ; $5e92: $fe $ff
	cp $f3                                           ; $5e94: $fe $f3
	rst $38                                          ; $5e96: $ff
	inc bc                                           ; $5e97: $03
	rst $38                                          ; $5e98: $ff
	inc bc                                           ; $5e99: $03
	ld a, $03                                        ; $5e9a: $3e $03
	dec e                                            ; $5e9c: $1d
	rlca                                             ; $5e9d: $07
	ld h, e                                          ; $5e9e: $63
	ret nz                                           ; $5e9f: $c0

	rst SubAFromDE                                          ; $5ea0: $df
	rlca                                             ; $5ea1: $07
	ld a, e                                          ; $5ea2: $7b
	sub d                                            ; $5ea3: $92
	sbc [hl]                                         ; $5ea4: $9e
	jp $e67a                                         ; $5ea5: $c3 $7a $e6


	scf                                              ; $5ea8: $37
	ret nz                                           ; $5ea9: $c0

	rst SubAFromDE                                          ; $5eaa: $df
	ld b, b                                          ; $5eab: $40
	ld a, e                                          ; $5eac: $7b
	ret nz                                           ; $5ead: $c0

	ld a, e                                          ; $5eae: $7b
	ld l, d                                          ; $5eaf: $6a
	daa                                              ; $5eb0: $27
	ret nz                                           ; $5eb1: $c0

	rst SubAFromDE                                          ; $5eb2: $df
	inc c                                            ; $5eb3: $0c
	ld a, e                                          ; $5eb4: $7b
	pop bc                                           ; $5eb5: $c1
	ld a, e                                          ; $5eb6: $7b
	jr z, @+$29                                      ; $5eb7: $28 $27

	ret nz                                           ; $5eb9: $c0

	sbc $c0                                          ; $5eba: $de $c0
	sbc l                                            ; $5ebc: $9d
	add b                                            ; $5ebd: $80
	ld bc, $c017                                     ; $5ebe: $01 $17 $c0
	sbc l                                            ; $5ec1: $9d
	inc b                                            ; $5ec2: $04
	inc bc                                           ; $5ec3: $03
	ld a, e                                          ; $5ec4: $7b
	dec c                                            ; $5ec5: $0d
	sbc h                                            ; $5ec6: $9c
	add e                                            ; $5ec7: $83
	nop                                              ; $5ec8: $00
	ret nz                                           ; $5ec9: $c0

	daa                                              ; $5eca: $27
	ret nz                                           ; $5ecb: $c0

	ld a, e                                          ; $5ecc: $7b
	ld hl, sp+$2f                                    ; $5ecd: $f8 $2f
	ret nz                                           ; $5ecf: $c0

	db $fd                                           ; $5ed0: $fd
	ld bc, $1b80                                     ; $5ed1: $01 $80 $1b
	db $fc                                           ; $5ed4: $fc
	ldh [rIE], a                                     ; $5ed5: $e0 $ff
	ld b, e                                          ; $5ed7: $43
	ld a, a                                          ; $5ed8: $7f
	db $fd                                           ; $5ed9: $fd
	rst $38                                          ; $5eda: $ff
	ld [de], a                                       ; $5edb: $12
	rra                                              ; $5edc: $1f
	inc h                                            ; $5edd: $24
	ccf                                              ; $5ede: $3f
	jr c, jr_06e_5f10                                ; $5edf: $38 $2f

	ld l, a                                          ; $5ee1: $6f
	ld e, a                                          ; $5ee2: $5f
	call nc, $a9bb                                   ; $5ee3: $d4 $bb $a9
	rst FarCall                                          ; $5ee6: $f7
	jp hl                                            ; $5ee7: $e9


	ld [hl], a                                       ; $5ee8: $77
	ldh a, [c]                                       ; $5ee9: $f2
	ccf                                              ; $5eea: $3f
	ldh a, [c]                                       ; $5eeb: $f2
	rra                                              ; $5eec: $1f
	db $fd                                           ; $5eed: $fd
	ld c, $fd                                        ; $5eee: $0e $fd
	ld b, $ff                                        ; $5ef0: $06 $ff
	sbc c                                            ; $5ef2: $99
	inc b                                            ; $5ef3: $04
	ld a, [hl]                                       ; $5ef4: $7e
	inc b                                            ; $5ef5: $04
	ld a, [hl-]                                      ; $5ef6: $3a
	inc c                                            ; $5ef7: $0c
	add hl, de                                       ; $5ef8: $19
	ld a, e                                          ; $5ef9: $7b
	cp $96                                           ; $5efa: $fe $96
	add hl, bc                                       ; $5efc: $09
	inc c                                            ; $5efd: $0c
	dec bc                                           ; $5efe: $0b
	inc c                                            ; $5eff: $0c
	ld c, $05                                        ; $5f00: $0e $05
	inc c                                            ; $5f02: $0c
	rlca                                             ; $5f03: $07
	dec b                                            ; $5f04: $05
	ld [hl], e                                       ; $5f05: $73
	cp $9e                                           ; $5f06: $fe $9e
	sub l                                            ; $5f08: $95
	ld a, e                                          ; $5f09: $7b
	cp $80                                           ; $5f0a: $fe $80
	jp nc, $f203                                     ; $5f0c: $d2 $03 $f2

	add e                                            ; $5f0f: $83

jr_06e_5f10:
	pop af                                           ; $5f10: $f1
	add c                                            ; $5f11: $81
	inc l                                            ; $5f12: $2c
	di                                               ; $5f13: $f3
	reti                                             ; $5f14: $d9


	rst SubAFromBC                                          ; $5f15: $e7
	or e                                             ; $5f16: $b3
	adc $04                                          ; $5f17: $ce $04
	rst $38                                          ; $5f19: $ff
	dec bc                                           ; $5f1a: $0b
	rst $38                                          ; $5f1b: $ff
	ccf                                              ; $5f1c: $3f
	db $fc                                           ; $5f1d: $fc
	ld a, a                                          ; $5f1e: $7f
	ldh [$e3], a                                     ; $5f1f: $e0 $e3
	jp $87cf                                         ; $5f21: $c3 $cf $87


	ld e, [hl]                                       ; $5f24: $5e
	sbc $4b                                          ; $5f25: $de $4b
	jp z, $c363                                      ; $5f27: $ca $63 $c3

	ld h, b                                          ; $5f2a: $60
	add d                                            ; $5f2b: $82
	pop bc                                           ; $5f2c: $c1
	ld h, e                                          ; $5f2d: $63
	pop hl                                           ; $5f2e: $e1
	ld h, b                                          ; $5f2f: $60
	ldh [$60], a                                     ; $5f30: $e0 $60
	ldh [rSVBK], a                                   ; $5f32: $e0 $70
	ldh [$50], a                                     ; $5f34: $e0 $50
	ldh a, [$58]                                     ; $5f36: $f0 $58
	ldh a, [$9c]                                     ; $5f38: $f0 $9c
	ld hl, sp-$52                                    ; $5f3a: $f8 $ae
	call c, $deaf                                    ; $5f3c: $dc $af $de
	or e                                             ; $5f3f: $b3
	rst SubAFromDE                                          ; $5f40: $df
	cp c                                             ; $5f41: $b9
	rst SubAFromDE                                          ; $5f42: $df
	cp $57                                           ; $5f43: $fe $57
	rst SubAFromDE                                          ; $5f45: $df
	ld [hl], c                                       ; $5f46: $71
	rst SubAFromDE                                          ; $5f47: $df
	ld [hl], b                                       ; $5f48: $70
	ld [hl], a                                       ; $5f49: $77
	cp $80                                           ; $5f4a: $fe $80
	cp $30                                           ; $5f4c: $fe $30
	db $fc                                           ; $5f4e: $fc
	sub b                                            ; $5f4f: $90
	call nc, $ed90                                   ; $5f50: $d4 $90 $ed
	cp a                                             ; $5f53: $bf
	db $ed                                           ; $5f54: $ed
	ccf                                              ; $5f55: $3f
	db $ed                                           ; $5f56: $ed
	ccf                                              ; $5f57: $3f
	ld a, l                                          ; $5f58: $7d
	or a                                             ; $5f59: $b7
	sbc h                                            ; $5f5a: $9c
	rst FarCall                                          ; $5f5b: $f7
	cp $73                                           ; $5f5c: $fe $73
	cp $13                                           ; $5f5e: $fe $13
	rst $38                                          ; $5f60: $ff
	add c                                            ; $5f61: $81
	rst $38                                          ; $5f62: $ff
	pop bc                                           ; $5f63: $c1
	ld a, b                                          ; $5f64: $78
	ld h, b                                          ; $5f65: $60
	ldh [$e0], a                                     ; $5f66: $e0 $e0
	and b                                            ; $5f68: $a0
	ldh [$e0], a                                     ; $5f69: $e0 $e0
	add b                                            ; $5f6b: $80
	ld b, b                                          ; $5f6c: $40
	jp $0580                                         ; $5f6d: $c3 $80 $05


	ld [bc], a                                       ; $5f70: $02
	dec c                                            ; $5f71: $0d
	ld b, $24                                        ; $5f72: $06 $24
	rst $38                                          ; $5f74: $ff
	ld h, $ff                                        ; $5f75: $26 $ff
	scf                                              ; $5f77: $37
	db $fd                                           ; $5f78: $fd
	scf                                              ; $5f79: $37
	db $fd                                           ; $5f7a: $fd
	cp h                                             ; $5f7b: $bc
	rst AddAOntoHL                                          ; $5f7c: $ef
	rst SubAFromBC                                          ; $5f7d: $e7
	ld a, a                                          ; $5f7e: $7f
	rst $38                                          ; $5f7f: $ff
	jr nc, @+$01                                     ; $5f80: $30 $ff

	db $10                                           ; $5f82: $10
	ei                                               ; $5f83: $fb
	rlca                                             ; $5f84: $07
	rst FarCall                                          ; $5f85: $f7
	rrca                                             ; $5f86: $0f
	ld a, $0a                                        ; $5f87: $3e $0a
	inc bc                                           ; $5f89: $03
	inc bc                                           ; $5f8a: $03
	add b                                            ; $5f8b: $80
	ld bc, $0303                                     ; $5f8c: $01 $03 $03
	ld [bc], a                                       ; $5f8f: $02
	add a                                            ; $5f90: $87
	ld bc, $0080                                     ; $5f91: $01 $80 $00
	jp c, $d56d                                      ; $5f94: $da $6d $d5

	ld l, [hl]                                       ; $5f97: $6e
	ld a, l                                          ; $5f98: $7d
	and [hl]                                         ; $5f99: $a6
	ld l, [hl]                                       ; $5f9a: $6e
	or e                                             ; $5f9b: $b3
	sub l                                            ; $5f9c: $95
	ei                                               ; $5f9d: $fb
	jp z, $e4fd                                      ; $5f9e: $ca $fd $e4

	ld a, a                                          ; $5fa1: $7f
	ldh a, [c]                                       ; $5fa2: $f2
	rra                                              ; $5fa3: $1f
	ld sp, hl                                        ; $5fa4: $f9
	adc a                                            ; $5fa5: $8f
	db $fc                                           ; $5fa6: $fc
	rst SubAFromBC                                          ; $5fa7: $e7
	ld a, [hl]                                       ; $5fa8: $7e
	scf                                              ; $5fa9: $37
	db $fd                                           ; $5faa: $fd
	add b                                            ; $5fab: $80
	ld a, a                                          ; $5fac: $7f
	db $ec                                           ; $5fad: $ec
	rst SubAFromBC                                          ; $5fae: $e7
	ld l, $e5                                        ; $5faf: $2e $e5
	sbc $c5                                          ; $5fb1: $de $c5
	ld a, [hl-]                                      ; $5fb3: $3a
	dec c                                            ; $5fb4: $0d
	add hl, sp                                       ; $5fb5: $39
	dec c                                            ; $5fb6: $0d
	ld a, l                                          ; $5fb7: $7d
	add hl, bc                                       ; $5fb8: $09
	ld [hl], e                                       ; $5fb9: $73
	add hl, de                                       ; $5fba: $19
	ldh a, [c]                                       ; $5fbb: $f2
	dec de                                           ; $5fbc: $1b
	db $eb                                           ; $5fbd: $eb
	ld [hl-], a                                      ; $5fbe: $32
	db $e3                                           ; $5fbf: $e3
	halt                                             ; $5fc0: $76
	xor l                                            ; $5fc1: $ad
	or $37                                           ; $5fc2: $f6 $37
	db $ec                                           ; $5fc4: $ec
	ld d, [hl]                                       ; $5fc5: $56
	db $ed                                           ; $5fc6: $ed
	ld c, b                                          ; $5fc7: $48
	rst $38                                          ; $5fc8: $ff
	adc b                                            ; $5fc9: $88
	rst $38                                          ; $5fca: $ff
	sub l                                            ; $5fcb: $95
	sbc c                                            ; $5fcc: $99
	rst $38                                          ; $5fcd: $ff
	ld de, $32ff                                     ; $5fce: $11 $ff $32
	rst $38                                          ; $5fd1: $ff
	ld h, h                                          ; $5fd2: $64
	rst $38                                          ; $5fd3: $ff
	db $ed                                           ; $5fd4: $ed
	cp a                                             ; $5fd5: $bf
	ld c, a                                          ; $5fd6: $4f
	ld b, b                                          ; $5fd7: $40
	sub e                                            ; $5fd8: $93
	ldh [$c0], a                                     ; $5fd9: $e0 $c0
	jp $4f83                                         ; $5fdb: $c3 $83 $4f


	rst JumpTable                                          ; $5fde: $c7
	ld e, [hl]                                       ; $5fdf: $5e
	sbc $6b                                          ; $5fe0: $de $6b
	jp z, $c361                                      ; $5fe2: $ca $61 $c3

	ld l, a                                          ; $5fe5: $6f
	ld b, b                                          ; $5fe6: $40
	ld c, e                                          ; $5fe7: $4b
	ld h, b                                          ; $5fe8: $60
	sbc d                                            ; $5fe9: $9a
	ld bc, $81ff                                     ; $5fea: $01 $ff $81
	ld hl, sp-$40                                    ; $5fed: $f8 $c0
	db $dd                                           ; $5fef: $dd
	ldh [$7f], a                                     ; $5ff0: $e0 $7f
	and $2f                                          ; $5ff2: $e6 $2f
	ld h, b                                          ; $5ff4: $60
	sub [hl]                                         ; $5ff5: $96
	rst $38                                          ; $5ff6: $ff
	nop                                              ; $5ff7: $00
	rst $38                                          ; $5ff8: $ff
	rlca                                             ; $5ff9: $07
	ccf                                              ; $5ffa: $3f
	rrca                                             ; $5ffb: $0f
	ld b, $02                                        ; $5ffc: $06 $02
	rlca                                             ; $5ffe: $07
	daa                                              ; $5fff: $27
	ld h, b                                          ; $6000: $60
	sub [hl]                                         ; $6001: $96
	rrca                                             ; $6002: $0f
	db $fc                                           ; $6003: $fc
	add a                                            ; $6004: $87
	cp $e7                                           ; $6005: $fe $e7
	ld a, l                                          ; $6007: $7d
	scf                                              ; $6008: $37
	db $fc                                           ; $6009: $fc
	rst $38                                          ; $600a: $ff
	ld l, a                                          ; $600b: $6f
	ld h, b                                          ; $600c: $60
	ld b, a                                          ; $600d: $47
	add b                                            ; $600e: $80
	sub l                                            ; $600f: $95
	ret nz                                           ; $6010: $c0

	add b                                            ; $6011: $80
	ld b, e                                          ; $6012: $43
	jp $c74f                                         ; $6013: $c3 $4f $c7


	ld a, [hl]                                       ; $6016: $7e
	sbc $65                                          ; $6017: $de $65
	rst JumpTable                                          ; $6019: $c7
	cpl                                              ; $601a: $2f
	add b                                            ; $601b: $80
	sbc d                                            ; $601c: $9a
	ld a, a                                          ; $601d: $7f
	ld bc, $80f8                                     ; $601e: $01 $f8 $80
	ldh [$7b], a                                     ; $6021: $e0 $7b
	ld a, [hl]                                       ; $6023: $7e
	dec de                                           ; $6024: $1b
	add b                                            ; $6025: $80
	sub [hl]                                         ; $6026: $96
	nop                                              ; $6027: $00
	dec sp                                           ; $6028: $3b
	inc bc                                           ; $6029: $03
	rlca                                             ; $602a: $07
	rlca                                             ; $602b: $07
	rrca                                             ; $602c: $0f
	ld c, $02                                        ; $602d: $0e $02
	inc bc                                           ; $602f: $03
	dec hl                                           ; $6030: $2b
	add b                                            ; $6031: $80
	sub [hl]                                         ; $6032: $96
	rlca                                             ; $6033: $07
	cp $87                                           ; $6034: $fe $87
	db $fd                                           ; $6036: $fd
	rst SubAFromBC                                          ; $6037: $e7
	inc a                                            ; $6038: $3c
	ld a, a                                          ; $6039: $7f
	ld a, $f5                                        ; $603a: $3e $f5
	cpl                                              ; $603c: $2f
	add b                                            ; $603d: $80
	sub l                                            ; $603e: $95
	ld b, b                                          ; $603f: $40
	ret nz                                           ; $6040: $c0

	ld b, a                                          ; $6041: $47
	ret nz                                           ; $6042: $c0

	ld a, b                                          ; $6043: $78
	ret c                                            ; $6044: $d8

	ld l, a                                          ; $6045: $6f
	rst GetHLinHL                                          ; $6046: $cf
	ld h, a                                          ; $6047: $67
	rst SubAFromBC                                          ; $6048: $e7
	cpl                                              ; $6049: $2f
	add b                                            ; $604a: $80
	sbc h                                            ; $604b: $9c
	jr c, jr_06e_604e                                ; $604c: $38 $00

jr_06e_604e:
	add b                                            ; $604e: $80
	cp $df                                           ; $604f: $fe $df
	ldh [$9d], a                                     ; $6051: $e0 $9d
	db $e3                                           ; $6053: $e3
	ret nz                                           ; $6054: $c0

	daa                                              ; $6055: $27
	add b                                            ; $6056: $80
	ld a, a                                          ; $6057: $7f
	sbc $9e                                          ; $6058: $de $9e
	inc bc                                           ; $605a: $03
	cp $9b                                           ; $605b: $fe $9b
	rrca                                             ; $605d: $0f
	rlca                                             ; $605e: $07
	add a                                            ; $605f: $87
	inc bc                                           ; $6060: $03
	dec hl                                           ; $6061: $2b
	add b                                            ; $6062: $80
	sub d                                            ; $6063: $92
	rlca                                             ; $6064: $07
	dec a                                            ; $6065: $3d
	rst JumpTable                                          ; $6066: $c7
	inc e                                            ; $6067: $1c
	daa                                              ; $6068: $27
	cp $fd                                           ; $6069: $fe $fd
	cp $f5                                           ; $606b: $fe $f5
	ld a, [hl-]                                      ; $606d: $3a
	dec c                                            ; $606e: $0d
	dec b                                            ; $606f: $05
	ld b, $7b                                        ; $6070: $06 $7b
	sub $9c                                          ; $6072: $d6 $9c
	rrca                                             ; $6074: $0f
	ld [$de08], sp                                   ; $6075: $08 $08 $de
	rlca                                             ; $6078: $07
	ld a, e                                          ; $6079: $7b
	jp nc, $c39e                                     ; $607a: $d2 $9e $c3

	ld a, e                                          ; $607d: $7b
	ld h, $96                                        ; $607e: $26 $96
	ld a, b                                          ; $6080: $78
	ldh a, [$fe]                                     ; $6081: $f0 $fe
	reti                                             ; $6083: $d9


	rst $38                                          ; $6084: $ff
	rst JumpTable                                          ; $6085: $c7
	db $e3                                           ; $6086: $e3
	ld b, b                                          ; $6087: $40
	ret nz                                           ; $6088: $c0

	ld a, e                                          ; $6089: $7b
	cp $df                                           ; $608a: $fe $df
	add b                                            ; $608c: $80
	db $fd                                           ; $608d: $fd
	sbc b                                            ; $608e: $98
	add b                                            ; $608f: $80
	ret nz                                           ; $6090: $c0

	ld b, b                                          ; $6091: $40
	ld b, b                                          ; $6092: $40
	ret nz                                           ; $6093: $c0

	add b                                            ; $6094: $80
	add c                                            ; $6095: $81
	ld a, e                                          ; $6096: $7b
	xor d                                            ; $6097: $aa
	ld a, a                                          ; $6098: $7f
	call c, $1e8f                                    ; $6099: $dc $8f $1e
	rrca                                             ; $609c: $0f
	ld a, [hl]                                       ; $609d: $7e
	ccf                                              ; $609e: $3f
	cp $ff                                           ; $609f: $fe $ff
	cp $f3                                           ; $60a1: $fe $f3
	rst $38                                          ; $60a3: $ff
	inc bc                                           ; $60a4: $03
	rst $38                                          ; $60a5: $ff
	inc bc                                           ; $60a6: $03
	ld a, $03                                        ; $60a7: $3e $03
	dec e                                            ; $60a9: $1d
	rlca                                             ; $60aa: $07
	ld e, a                                          ; $60ab: $5f
	ret nz                                           ; $60ac: $c0

	ld a, a                                          ; $60ad: $7f
	ldh [c], a                                       ; $60ae: $e2
	rrca                                             ; $60af: $0f
	ret nz                                           ; $60b0: $c0

	sbc [hl]                                         ; $60b1: $9e
	ld bc, $c01b                                     ; $60b2: $01 $1b $c0
	rst SubAFromDE                                          ; $60b5: $df
	inc b                                            ; $60b6: $04
	rst SubAFromDE                                          ; $60b7: $df
	inc bc                                           ; $60b8: $03
	rst $38                                          ; $60b9: $ff
	sbc h                                            ; $60ba: $9c
	add e                                            ; $60bb: $83
	nop                                              ; $60bc: $00
	ret nz                                           ; $60bd: $c0

	dec hl                                           ; $60be: $2b
	ret nz                                           ; $60bf: $c0

	ld [hl], a                                       ; $60c0: $77
	ld hl, sp+$17                                    ; $60c1: $f8 $17
	ret nz                                           ; $60c3: $c0

	rst SubAFromDE                                          ; $60c4: $df
	rlca                                             ; $60c5: $07
	rst $38                                          ; $60c6: $ff
	ld [hl], a                                       ; $60c7: $77
	add b                                            ; $60c8: $80
	inc bc                                           ; $60c9: $03
	ret nz                                           ; $60ca: $c0

	ld b, e                                          ; $60cb: $43
	ret nz                                           ; $60cc: $c0

	db $f4                                           ; $60cd: $f4
	ld bc, $1b80                                     ; $60ce: $01 $80 $1b
	db $fc                                           ; $60d1: $fc
	ldh [rIE], a                                     ; $60d2: $e0 $ff
	ld b, e                                          ; $60d4: $43
	ld a, a                                          ; $60d5: $7f
	db $fd                                           ; $60d6: $fd
	rst $38                                          ; $60d7: $ff
	ld [de], a                                       ; $60d8: $12
	rra                                              ; $60d9: $1f
	inc h                                            ; $60da: $24
	ccf                                              ; $60db: $3f
	jr c, jr_06e_610d                                ; $60dc: $38 $2f

	ld l, a                                          ; $60de: $6f
	ld e, a                                          ; $60df: $5f
	call nc, $a9bb                                   ; $60e0: $d4 $bb $a9
	rst FarCall                                          ; $60e3: $f7
	jp hl                                            ; $60e4: $e9


	ld [hl], a                                       ; $60e5: $77
	ldh a, [c]                                       ; $60e6: $f2
	ccf                                              ; $60e7: $3f
	ldh a, [c]                                       ; $60e8: $f2
	rra                                              ; $60e9: $1f
	db $fd                                           ; $60ea: $fd
	ld c, $fd                                        ; $60eb: $0e $fd
	ld b, $ff                                        ; $60ed: $06 $ff
	sbc c                                            ; $60ef: $99
	inc b                                            ; $60f0: $04
	ld a, [hl]                                       ; $60f1: $7e
	inc b                                            ; $60f2: $04
	ld a, [hl-]                                      ; $60f3: $3a
	inc c                                            ; $60f4: $0c
	add hl, de                                       ; $60f5: $19
	ld a, e                                          ; $60f6: $7b
	cp $96                                           ; $60f7: $fe $96
	add hl, bc                                       ; $60f9: $09
	inc c                                            ; $60fa: $0c
	dec bc                                           ; $60fb: $0b
	inc c                                            ; $60fc: $0c
	ld c, $05                                        ; $60fd: $0e $05
	inc c                                            ; $60ff: $0c
	rlca                                             ; $6100: $07
	dec b                                            ; $6101: $05
	ld [hl], e                                       ; $6102: $73
	cp $9e                                           ; $6103: $fe $9e
	sub l                                            ; $6105: $95
	ld a, e                                          ; $6106: $7b
	cp $80                                           ; $6107: $fe $80
	jp nc, $f203                                     ; $6109: $d2 $03 $f2

	add e                                            ; $610c: $83

jr_06e_610d:
	pop af                                           ; $610d: $f1
	add c                                            ; $610e: $81
	inc l                                            ; $610f: $2c
	di                                               ; $6110: $f3
	reti                                             ; $6111: $d9


	rst SubAFromBC                                          ; $6112: $e7
	or e                                             ; $6113: $b3
	adc $07                                          ; $6114: $ce $07
	db $fc                                           ; $6116: $fc
	ld [$3fff], sp                                   ; $6117: $08 $ff $3f
	rst $38                                          ; $611a: $ff
	ld a, a                                          ; $611b: $7f
	ldh [$e3], a                                     ; $611c: $e0 $e3
	jp $87cf                                         ; $611e: $c3 $cf $87


	ld e, [hl]                                       ; $6121: $5e
	sbc $4b                                          ; $6122: $de $4b
	jp z, $c363                                      ; $6124: $ca $63 $c3

	ld h, e                                          ; $6127: $63
	add d                                            ; $6128: $82
	jp nz, $e163                                     ; $6129: $c2 $63 $e1

	ld h, b                                          ; $612c: $60
	ldh [$60], a                                     ; $612d: $e0 $60
	ldh [rSVBK], a                                   ; $612f: $e0 $70
	ldh [$50], a                                     ; $6131: $e0 $50
	ldh a, [$58]                                     ; $6133: $f0 $58
	ldh a, [$9c]                                     ; $6135: $f0 $9c
	ld hl, sp-$52                                    ; $6137: $f8 $ae
	call c, $deaf                                    ; $6139: $dc $af $de
	or e                                             ; $613c: $b3
	rst SubAFromDE                                          ; $613d: $df
	cp c                                             ; $613e: $b9
	rst SubAFromDE                                          ; $613f: $df
	cp $57                                           ; $6140: $fe $57
	rst SubAFromDE                                          ; $6142: $df
	ld [hl], c                                       ; $6143: $71
	rst SubAFromDE                                          ; $6144: $df
	ld [hl], b                                       ; $6145: $70
	ld [hl], a                                       ; $6146: $77
	cp $80                                           ; $6147: $fe $80
	cp $30                                           ; $6149: $fe $30
	db $fc                                           ; $614b: $fc
	sub b                                            ; $614c: $90
	call nc, $ed90                                   ; $614d: $d4 $90 $ed
	cp a                                             ; $6150: $bf
	db $ed                                           ; $6151: $ed
	ccf                                              ; $6152: $3f
	db $ed                                           ; $6153: $ed
	ccf                                              ; $6154: $3f
	db $dd                                           ; $6155: $dd
	scf                                              ; $6156: $37
	db $fc                                           ; $6157: $fc
	rla                                              ; $6158: $17
	ld a, $d3                                        ; $6159: $3e $d3
	adc $f3                                          ; $615b: $ce $f3
	rst $38                                          ; $615d: $ff
	ld sp, $c1ff                                     ; $615e: $31 $ff $c1
	ld a, b                                          ; $6161: $78
	ld h, b                                          ; $6162: $60
	ldh [$e0], a                                     ; $6163: $e0 $e0
	and b                                            ; $6165: $a0
	ldh [$60], a                                     ; $6166: $e0 $60
	add b                                            ; $6168: $80
	ret nz                                           ; $6169: $c0

	jp $0580                                         ; $616a: $c3 $80 $05


	ld [bc], a                                       ; $616d: $02
	dec c                                            ; $616e: $0d
	ld b, $24                                        ; $616f: $06 $24
	rst $38                                          ; $6171: $ff
	ld h, $ff                                        ; $6172: $26 $ff
	scf                                              ; $6174: $37
	db $fd                                           ; $6175: $fd
	scf                                              ; $6176: $37
	db $fd                                           ; $6177: $fd
	cp [hl]                                          ; $6178: $be
	db $ed                                           ; $6179: $ed
	push af                                          ; $617a: $f5
	ld l, a                                          ; $617b: $6f
	rst AddAOntoHL                                          ; $617c: $ef
	ld a, $ff                                        ; $617d: $3e $ff
	ld [hl], b                                       ; $617f: $70
	db $fd                                           ; $6180: $fd
	inc bc                                           ; $6181: $03
	rst $38                                          ; $6182: $ff
	rlca                                             ; $6183: $07
	ld e, $0e                                        ; $6184: $1e $0e
	rlca                                             ; $6186: $07
	inc bc                                           ; $6187: $03
	adc d                                            ; $6188: $8a
	ld bc, $0303                                     ; $6189: $01 $03 $03
	ld [bc], a                                       ; $618c: $02
	add a                                            ; $618d: $87
	ld bc, $0080                                     ; $618e: $01 $80 $00
	jp c, $d56d                                      ; $6191: $da $6d $d5

	ld l, [hl]                                       ; $6194: $6e
	ld a, l                                          ; $6195: $7d
	and [hl]                                         ; $6196: $a6
	ld l, [hl]                                       ; $6197: $6e
	or e                                             ; $6198: $b3
	sub l                                            ; $6199: $95
	ei                                               ; $619a: $fb
	jp z, $e4fd                                      ; $619b: $ca $fd $e4

	ld a, e                                          ; $619e: $7b
	ld c, d                                          ; $619f: $4a
	add b                                            ; $61a0: $80
	cp c                                             ; $61a1: $b9
	rst GetHLinHL                                          ; $61a2: $cf
	db $fc                                           ; $61a3: $fc
	rst SubAFromBC                                          ; $61a4: $e7
	ld a, [hl]                                       ; $61a5: $7e
	ld [hl], a                                       ; $61a6: $77
	db $fd                                           ; $61a7: $fd
	ld a, a                                          ; $61a8: $7f
	xor h                                            ; $61a9: $ac
	rst SubAFromBC                                          ; $61aa: $e7
	ld l, $e5                                        ; $61ab: $2e $e5
	sbc $c5                                          ; $61ad: $de $c5
	ld a, [hl-]                                      ; $61af: $3a
	dec c                                            ; $61b0: $0d
	add hl, sp                                       ; $61b1: $39
	dec c                                            ; $61b2: $0d
	ld a, l                                          ; $61b3: $7d
	add hl, bc                                       ; $61b4: $09
	ld [hl], e                                       ; $61b5: $73
	add hl, de                                       ; $61b6: $19
	ldh a, [c]                                       ; $61b7: $f2
	dec de                                           ; $61b8: $1b
	db $eb                                           ; $61b9: $eb
	ld [hl-], a                                      ; $61ba: $32
	db $e3                                           ; $61bb: $e3
	halt                                             ; $61bc: $76
	xor l                                            ; $61bd: $ad
	or $37                                           ; $61be: $f6 $37
	adc [hl]                                         ; $61c0: $8e
	db $ec                                           ; $61c1: $ec
	ld d, [hl]                                       ; $61c2: $56
	db $ed                                           ; $61c3: $ed
	ld c, b                                          ; $61c4: $48
	rst $38                                          ; $61c5: $ff
	adc b                                            ; $61c6: $88
	rst $38                                          ; $61c7: $ff
	sbc c                                            ; $61c8: $99
	rst $38                                          ; $61c9: $ff
	ld de, $32ff                                     ; $61ca: $11 $ff $32
	rst $38                                          ; $61cd: $ff
	ld h, h                                          ; $61ce: $64
	rst $38                                          ; $61cf: $ff
	db $ed                                           ; $61d0: $ed
	cp a                                             ; $61d1: $bf
	ld c, a                                          ; $61d2: $4f
	ld b, b                                          ; $61d3: $40
	sub [hl]                                         ; $61d4: $96
	ldh [$c0], a                                     ; $61d5: $e0 $c0
	jp $4f83                                         ; $61d7: $c3 $83 $4f


	rst JumpTable                                          ; $61da: $c7
	ld e, [hl]                                       ; $61db: $5e
	sbc $6b                                          ; $61dc: $de $6b
	ld [hl], a                                       ; $61de: $77
	ld a, $73                                        ; $61df: $3e $73
	ld b, b                                          ; $61e1: $40
	ld b, e                                          ; $61e2: $43
	ld h, b                                          ; $61e3: $60
	sbc h                                            ; $61e4: $9c
	ld bc, $c0f8                                     ; $61e5: $01 $f8 $c0
	db $dd                                           ; $61e8: $dd
	ldh [$27], a                                     ; $61e9: $e0 $27
	ld h, b                                          ; $61eb: $60
	sub a                                            ; $61ec: $97
	rst $38                                          ; $61ed: $ff
	nop                                              ; $61ee: $00
	rst $38                                          ; $61ef: $ff
	ld bc, $070f                                     ; $61f0: $01 $0f $07
	ld b, $06                                        ; $61f3: $06 $06
	daa                                              ; $61f5: $27
	ld h, b                                          ; $61f6: $60
	sub l                                            ; $61f7: $95
	ld sp, hl                                        ; $61f8: $f9
	rrca                                             ; $61f9: $0f
	db $fc                                           ; $61fa: $fc
	rst JumpTable                                          ; $61fb: $c7
	cp $e7                                           ; $61fc: $fe $e7
	db $fd                                           ; $61fe: $fd
	ld [hl], a                                       ; $61ff: $77
	cp h                                             ; $6200: $bc
	rst $38                                          ; $6201: $ff
	ld l, a                                          ; $6202: $6f
	ld h, b                                          ; $6203: $60
	ld b, a                                          ; $6204: $47
	add b                                            ; $6205: $80
	sub l                                            ; $6206: $95
	ret nz                                           ; $6207: $c0

	add b                                            ; $6208: $80
	ld b, e                                          ; $6209: $43
	jp $c74f                                         ; $620a: $c3 $4f $c7


	ld a, [hl]                                       ; $620d: $7e
	sbc $65                                          ; $620e: $de $65
	rst JumpTable                                          ; $6210: $c7
	cpl                                              ; $6211: $2f
	add b                                            ; $6212: $80
	sbc d                                            ; $6213: $9a
	ld a, a                                          ; $6214: $7f
	ld bc, $80f8                                     ; $6215: $01 $f8 $80
	ldh [$7b], a                                     ; $6218: $e0 $7b
	ld a, [hl]                                       ; $621a: $7e
	ld a, a                                          ; $621b: $7f
	and $27                                          ; $621c: $e6 $27
	add b                                            ; $621e: $80
	sbc d                                            ; $621f: $9a
	pop af                                           ; $6220: $f1
	nop                                              ; $6221: $00
	inc bc                                           ; $6222: $03
	rlca                                             ; $6223: $07
	rrca                                             ; $6224: $0f
	ld a, e                                          ; $6225: $7b
	ld a, l                                          ; $6226: $7d
	sbc l                                            ; $6227: $9d
	ld [bc], a                                       ; $6228: $02
	inc bc                                           ; $6229: $03
	dec hl                                           ; $622a: $2b
	add b                                            ; $622b: $80
	sub [hl]                                         ; $622c: $96
	rlca                                             ; $622d: $07
	cp $c7                                           ; $622e: $fe $c7
	db $fd                                           ; $6230: $fd
	rst SubAFromBC                                          ; $6231: $e7
	ld a, h                                          ; $6232: $7c
	ld a, a                                          ; $6233: $7f
	ld a, $f5                                        ; $6234: $3e $f5
	cpl                                              ; $6236: $2f
	add b                                            ; $6237: $80
	sub l                                            ; $6238: $95
	ld b, b                                          ; $6239: $40
	ret nz                                           ; $623a: $c0

	ld b, a                                          ; $623b: $47
	rst JumpTable                                          ; $623c: $c7
	ld a, b                                          ; $623d: $78
	ret c                                            ; $623e: $d8

	ld l, a                                          ; $623f: $6f
	rst GetHLinHL                                          ; $6240: $cf
	ld h, a                                          ; $6241: $67
	rst SubAFromBC                                          ; $6242: $e7
	cpl                                              ; $6243: $2f
	add b                                            ; $6244: $80
	sub l                                            ; $6245: $95
	jr c, jr_06e_6248                                ; $6246: $38 $00

jr_06e_6248:
	add b                                            ; $6248: $80
	add b                                            ; $6249: $80
	nop                                              ; $624a: $00
	nop                                              ; $624b: $00
	ldh [$e0], a                                     ; $624c: $e0 $e0
	db $e3                                           ; $624e: $e3
	ret nz                                           ; $624f: $c0

	daa                                              ; $6250: $27
	add b                                            ; $6251: $80
	rst $38                                          ; $6252: $ff
	rst SubAFromDE                                          ; $6253: $df
	rlca                                             ; $6254: $07
	rst $38                                          ; $6255: $ff
	rst SubAFromDE                                          ; $6256: $df
	rrca                                             ; $6257: $0f
	sbc l                                            ; $6258: $9d
	sbc a                                            ; $6259: $9f
	rlca                                             ; $625a: $07
	dec hl                                           ; $625b: $2b
	add b                                            ; $625c: $80
	sub d                                            ; $625d: $92
	rlca                                             ; $625e: $07
	db $fd                                           ; $625f: $fd
	add a                                            ; $6260: $87
	ld a, h                                          ; $6261: $7c
	ld b, a                                          ; $6262: $47
	cp $f5                                           ; $6263: $fe $f5
	cp $e5                                           ; $6265: $fe $e5
	ld a, [hl-]                                      ; $6267: $3a
	dec c                                            ; $6268: $0d
	dec b                                            ; $6269: $05
	ld b, $7b                                        ; $626a: $06 $7b
	sub $9b                                          ; $626c: $d6 $9b
	rlca                                             ; $626e: $07
	ld [$0f08], sp                                   ; $626f: $08 $08 $0f
	ld a, e                                          ; $6272: $7b
	adc $9c                                          ; $6273: $ce $9c
	add e                                            ; $6275: $83
	nop                                              ; $6276: $00
	ret nz                                           ; $6277: $c0

	ld a, e                                          ; $6278: $7b
	ld h, $96                                        ; $6279: $26 $96
	ld a, b                                          ; $627b: $78
	ldh a, [$fe]                                     ; $627c: $f0 $fe
	reti                                             ; $627e: $d9


	rst $38                                          ; $627f: $ff
	rst JumpTable                                          ; $6280: $c7
	db $e3                                           ; $6281: $e3
	ld b, b                                          ; $6282: $40
	ret nz                                           ; $6283: $c0

	ld a, e                                          ; $6284: $7b
	cp $77                                           ; $6285: $fe $77
	sub [hl]                                         ; $6287: $96
	db $fd                                           ; $6288: $fd
	sbc $80                                          ; $6289: $de $80
	cp [hl]                                          ; $628b: $be
	ld bc, $0703                                     ; $628c: $01 $03 $07
	adc [hl]                                         ; $628f: $8e
	inc bc                                           ; $6290: $03
	ld e, $0f                                        ; $6291: $1e $0f
	ld a, [hl]                                       ; $6293: $7e
	ccf                                              ; $6294: $3f
	cp $ff                                           ; $6295: $fe $ff
	cp $f3                                           ; $6297: $fe $f3
	rst $38                                          ; $6299: $ff
	inc bc                                           ; $629a: $03
	rst $38                                          ; $629b: $ff
	inc bc                                           ; $629c: $03
	ld a, $03                                        ; $629d: $3e $03
	dec e                                            ; $629f: $1d
	rlca                                             ; $62a0: $07
	inc bc                                           ; $62a1: $03
	ret nz                                           ; $62a2: $c0

	inc bc                                           ; $62a3: $03
	ret nz                                           ; $62a4: $c0

	ld h, a                                          ; $62a5: $67
	ret nz                                           ; $62a6: $c0

	rst SubAFromDE                                          ; $62a7: $df
	rlca                                             ; $62a8: $07
	ld a, a                                          ; $62a9: $7f
	call c, $c39e                                    ; $62aa: $dc $9e $c3
	rra                                              ; $62ad: $1f
	ret nz                                           ; $62ae: $c0

	sbc l                                            ; $62af: $9d
	add b                                            ; $62b0: $80
	add c                                            ; $62b1: $81
	inc bc                                           ; $62b2: $03
	ret nz                                           ; $62b3: $c0

	sbc d                                            ; $62b4: $9a
	add a                                            ; $62b5: $87
	inc bc                                           ; $62b6: $03
	ret nz                                           ; $62b7: $c0

	ret nz                                           ; $62b8: $c0

	db $e3                                           ; $62b9: $e3
	rra                                              ; $62ba: $1f
	ret nz                                           ; $62bb: $c0

	sbc l                                            ; $62bc: $9d
	add b                                            ; $62bd: $80
	add e                                            ; $62be: $83
	dec sp                                           ; $62bf: $3b
	ret nz                                           ; $62c0: $c0

	rst $38                                          ; $62c1: $ff
	ld bc, $1b80                                     ; $62c2: $01 $80 $1b
	db $fc                                           ; $62c5: $fc
	ldh [rIE], a                                     ; $62c6: $e0 $ff
	ld b, e                                          ; $62c8: $43
	ld a, a                                          ; $62c9: $7f
	db $fd                                           ; $62ca: $fd
	rst $38                                          ; $62cb: $ff
	ld [de], a                                       ; $62cc: $12
	rra                                              ; $62cd: $1f
	inc h                                            ; $62ce: $24
	ccf                                              ; $62cf: $3f
	jr c, jr_06e_6301                                ; $62d0: $38 $2f

	ld l, a                                          ; $62d2: $6f
	ld e, a                                          ; $62d3: $5f
	call nc, $a9bb                                   ; $62d4: $d4 $bb $a9
	rst FarCall                                          ; $62d7: $f7
	jp hl                                            ; $62d8: $e9


	ld [hl], a                                       ; $62d9: $77
	ldh a, [c]                                       ; $62da: $f2
	ccf                                              ; $62db: $3f
	ldh a, [c]                                       ; $62dc: $f2
	rra                                              ; $62dd: $1f
	db $fd                                           ; $62de: $fd
	ld c, $fd                                        ; $62df: $0e $fd
	ld b, $ff                                        ; $62e1: $06 $ff
	sbc c                                            ; $62e3: $99
	inc b                                            ; $62e4: $04
	ld a, [hl]                                       ; $62e5: $7e
	inc b                                            ; $62e6: $04
	ld a, [hl-]                                      ; $62e7: $3a
	inc c                                            ; $62e8: $0c
	add hl, de                                       ; $62e9: $19
	ld a, e                                          ; $62ea: $7b
	cp $96                                           ; $62eb: $fe $96
	add hl, bc                                       ; $62ed: $09
	inc c                                            ; $62ee: $0c
	dec bc                                           ; $62ef: $0b
	inc c                                            ; $62f0: $0c
	ld c, $05                                        ; $62f1: $0e $05
	inc c                                            ; $62f3: $0c
	rlca                                             ; $62f4: $07
	dec b                                            ; $62f5: $05
	ld [hl], e                                       ; $62f6: $73
	cp $9e                                           ; $62f7: $fe $9e
	sub l                                            ; $62f9: $95
	ld a, e                                          ; $62fa: $7b
	cp $80                                           ; $62fb: $fe $80
	jp nc, $f203                                     ; $62fd: $d2 $03 $f2

	add e                                            ; $6300: $83

jr_06e_6301:
	pop af                                           ; $6301: $f1
	add c                                            ; $6302: $81
	inc l                                            ; $6303: $2c
	di                                               ; $6304: $f3
	reti                                             ; $6305: $d9


	rst SubAFromBC                                          ; $6306: $e7
	or e                                             ; $6307: $b3
	adc $05                                          ; $6308: $ce $05
	cp $0e                                           ; $630a: $fe $0e
	rst $38                                          ; $630c: $ff
	ccf                                              ; $630d: $3f
	ld sp, hl                                        ; $630e: $f9
	ld a, a                                          ; $630f: $7f
	ldh [$e0], a                                     ; $6310: $e0 $e0
	rst JumpTable                                          ; $6312: $c7
	rst GetHLinHL                                          ; $6313: $cf
	add a                                            ; $6314: $87
	ld e, [hl]                                       ; $6315: $5e
	sbc $4b                                          ; $6316: $de $4b
	jp z, $c363                                      ; $6318: $ca $63 $c3

	ld h, e                                          ; $631b: $63
	add d                                            ; $631c: $82
	jp nz, $e167                                     ; $631d: $c2 $67 $e1

	ld h, b                                          ; $6320: $60
	ldh [$60], a                                     ; $6321: $e0 $60
	ldh [rSVBK], a                                   ; $6323: $e0 $70
	ldh [$50], a                                     ; $6325: $e0 $50
	ldh a, [$58]                                     ; $6327: $f0 $58
	ldh a, [$9c]                                     ; $6329: $f0 $9c
	ld hl, sp-$52                                    ; $632b: $f8 $ae
	call c, $deaf                                    ; $632d: $dc $af $de
	or e                                             ; $6330: $b3
	rst SubAFromDE                                          ; $6331: $df
	cp c                                             ; $6332: $b9
	rst SubAFromDE                                          ; $6333: $df
	cp $57                                           ; $6334: $fe $57
	rst SubAFromDE                                          ; $6336: $df
	ld [hl], c                                       ; $6337: $71
	rst SubAFromDE                                          ; $6338: $df
	ld [hl], b                                       ; $6339: $70
	ld [hl], a                                       ; $633a: $77
	cp $80                                           ; $633b: $fe $80
	cp $30                                           ; $633d: $fe $30
	db $fc                                           ; $633f: $fc
	sub b                                            ; $6340: $90
	call nc, $ed90                                   ; $6341: $d4 $90 $ed
	cp a                                             ; $6344: $bf
	db $ed                                           ; $6345: $ed
	ccf                                              ; $6346: $3f
	db $ed                                           ; $6347: $ed
	ccf                                              ; $6348: $3f
	db $fd                                           ; $6349: $fd
	scf                                              ; $634a: $37
	db $fc                                           ; $634b: $fc
	rla                                              ; $634c: $17
	ld a, $d3                                        ; $634d: $3e $d3
	sbc $f3                                          ; $634f: $de $f3
	rst AddAOntoHL                                          ; $6351: $ef
	ld sp, $d1bf                                     ; $6352: $31 $bf $d1
	ld e, b                                          ; $6355: $58
	ld h, b                                          ; $6356: $60
	ldh [$e0], a                                     ; $6357: $e0 $e0
	and b                                            ; $6359: $a0
	ldh [$60], a                                     ; $635a: $e0 $60
	add b                                            ; $635c: $80
	ret nz                                           ; $635d: $c0

	jp $0580                                         ; $635e: $c3 $80 $05


	ld [bc], a                                       ; $6361: $02
	dec c                                            ; $6362: $0d
	ld b, $24                                        ; $6363: $06 $24
	rst $38                                          ; $6365: $ff
	ld h, $ff                                        ; $6366: $26 $ff
	scf                                              ; $6368: $37
	db $fd                                           ; $6369: $fd
	scf                                              ; $636a: $37
	db $fd                                           ; $636b: $fd
	cp [hl]                                          ; $636c: $be
	db $ed                                           ; $636d: $ed
	db $fd                                           ; $636e: $fd
	ld h, a                                          ; $636f: $67
	rst FarCall                                          ; $6370: $f7
	ld l, $ef                                        ; $6371: $2e $ef
	inc a                                            ; $6373: $3c
	sbc [hl]                                         ; $6374: $9e
	ld [hl], c                                       ; $6375: $71
	db $fd                                           ; $6376: $fd
	ld h, e                                          ; $6377: $63
	ld a, [hl]                                       ; $6378: $7e
	ld b, $0f                                        ; $6379: $06 $0f
	rrca                                             ; $637b: $0f
	adc d                                            ; $637c: $8a
	ld bc, $0303                                     ; $637d: $01 $03 $03
	ld [bc], a                                       ; $6380: $02
	adc a                                            ; $6381: $8f
	ld bc, $0080                                     ; $6382: $01 $80 $00
	jp c, $d56d                                      ; $6385: $da $6d $d5

	ld l, [hl]                                       ; $6388: $6e
	ld a, l                                          ; $6389: $7d
	and [hl]                                         ; $638a: $a6
	ld l, [hl]                                       ; $638b: $6e
	or e                                             ; $638c: $b3
	sub l                                            ; $638d: $95
	ei                                               ; $638e: $fb
	jp z, $e4fd                                      ; $638f: $ca $fd $e4

	ld a, e                                          ; $6392: $7b
	ld c, d                                          ; $6393: $4a
	add b                                            ; $6394: $80
	add hl, sp                                       ; $6395: $39
	rst GetHLinHL                                          ; $6396: $cf
	db $fc                                           ; $6397: $fc
	rst SubAFromBC                                          ; $6398: $e7
	ld a, [hl]                                       ; $6399: $7e
	ld [hl], a                                       ; $639a: $77
	db $fd                                           ; $639b: $fd
	ld a, a                                          ; $639c: $7f
	xor h                                            ; $639d: $ac
	rst SubAFromBC                                          ; $639e: $e7
	ld l, $e5                                        ; $639f: $2e $e5
	cp $c5                                           ; $63a1: $fe $c5
	ld a, [hl-]                                      ; $63a3: $3a
	dec c                                            ; $63a4: $0d
	add hl, sp                                       ; $63a5: $39
	dec c                                            ; $63a6: $0d
	ld a, l                                          ; $63a7: $7d
	add hl, bc                                       ; $63a8: $09
	ld [hl], e                                       ; $63a9: $73
	add hl, de                                       ; $63aa: $19
	ldh a, [c]                                       ; $63ab: $f2
	dec de                                           ; $63ac: $1b
	db $eb                                           ; $63ad: $eb
	ld [hl-], a                                      ; $63ae: $32
	db $e3                                           ; $63af: $e3
	halt                                             ; $63b0: $76
	xor l                                            ; $63b1: $ad
	or $37                                           ; $63b2: $f6 $37
	adc [hl]                                         ; $63b4: $8e
	db $ec                                           ; $63b5: $ec
	ld d, [hl]                                       ; $63b6: $56
	db $ed                                           ; $63b7: $ed
	ld c, b                                          ; $63b8: $48
	rst $38                                          ; $63b9: $ff
	adc b                                            ; $63ba: $88
	rst $38                                          ; $63bb: $ff
	sbc c                                            ; $63bc: $99
	rst $38                                          ; $63bd: $ff
	ld de, $32ff                                     ; $63be: $11 $ff $32
	rst $38                                          ; $63c1: $ff
	ld h, h                                          ; $63c2: $64
	rst $38                                          ; $63c3: $ff
	db $ed                                           ; $63c4: $ed
	cp a                                             ; $63c5: $bf
	ld c, e                                          ; $63c6: $4b
	ld b, b                                          ; $63c7: $40
	rst SubAFromDE                                          ; $63c8: $df
	ret nz                                           ; $63c9: $c0

	sbc d                                            ; $63ca: $9a
	add e                                            ; $63cb: $83
	ld c, a                                          ; $63cc: $4f
	rst JumpTable                                          ; $63cd: $c7
	ld e, [hl]                                       ; $63ce: $5e
	sbc $5f                                          ; $63cf: $de $5f
	ld b, b                                          ; $63d1: $40
	ld b, a                                          ; $63d2: $47
	ld h, b                                          ; $63d3: $60
	sbc c                                            ; $63d4: $99
	ld a, a                                          ; $63d5: $7f
	sub c                                            ; $63d6: $91
	cp b                                             ; $63d7: $b8
	ret nz                                           ; $63d8: $c0

	ldh [$c0], a                                     ; $63d9: $e0 $c0
	rra                                              ; $63db: $1f
	ld h, b                                          ; $63dc: $60
	sub a                                            ; $63dd: $97
	sbc a                                            ; $63de: $9f
	ld [hl], b                                       ; $63df: $70
	rst $38                                          ; $63e0: $ff
	ld h, b                                          ; $63e1: $60
	ld a, a                                          ; $63e2: $7f
	inc bc                                           ; $63e3: $03
	ld e, $06                                        ; $63e4: $1e $06
	sbc $03                                          ; $63e6: $de $03
	inc sp                                           ; $63e8: $33
	ld h, b                                          ; $63e9: $60
	sub l                                            ; $63ea: $95
	ld sp, hl                                        ; $63eb: $f9
	rrca                                             ; $63ec: $0f
	inc e                                            ; $63ed: $1c
	rst SubAFromBC                                          ; $63ee: $e7
	xor $f7                                          ; $63ef: $ee $f7
	ld a, l                                          ; $63f1: $7d
	ld a, a                                          ; $63f2: $7f
	cp h                                             ; $63f3: $bc
	rst FarCall                                          ; $63f4: $f7
	ld l, a                                          ; $63f5: $6f

jr_06e_63f6:
	ld h, b                                          ; $63f6: $60
	ld b, e                                          ; $63f7: $43
	add b                                            ; $63f8: $80
	sub [hl]                                         ; $63f9: $96
	add b                                            ; $63fa: $80
	ld b, e                                          ; $63fb: $43
	jp $c74f                                         ; $63fc: $c3 $4f $c7


	ld a, [hl]                                       ; $63ff: $7e
	sbc $65                                          ; $6400: $de $65
	rst JumpTable                                          ; $6402: $c7
	dec hl                                           ; $6403: $2b
	add b                                            ; $6404: $80
	sbc c                                            ; $6405: $99
	ld de, $80f8                                     ; $6406: $11 $f8 $80
	ldh [$c0], a                                     ; $6409: $e0 $c0
	ldh [$7b], a                                     ; $640b: $e0 $7b
	and $1f                                          ; $640d: $e6 $1f
	add b                                            ; $640f: $80
	sub a                                            ; $6410: $97
	ld a, e                                          ; $6411: $7b
	rlca                                             ; $6412: $07
	rra                                              ; $6413: $1f
	rrca                                             ; $6414: $0f
	rlca                                             ; $6415: $07
	ld b, $02                                        ; $6416: $06 $02
	inc bc                                           ; $6418: $03
	cpl                                              ; $6419: $2f
	add b                                            ; $641a: $80
	sub l                                            ; $641b: $95
	db $fc                                           ; $641c: $fc
	rlca                                             ; $641d: $07
	cp $c7                                           ; $641e: $fe $c7
	db $fd                                           ; $6420: $fd
	rst FarCall                                          ; $6421: $f7
	ld a, h                                          ; $6422: $7c
	ld a, a                                          ; $6423: $7f
	ld a, $f5                                        ; $6424: $3e $f5
	cpl                                              ; $6426: $2f
	add b                                            ; $6427: $80
	sub l                                            ; $6428: $95
	ld b, b                                          ; $6429: $40
	ret nz                                           ; $642a: $c0

	ld b, a                                          ; $642b: $47
	ret nz                                           ; $642c: $c0

	ld a, b                                          ; $642d: $78
	ret c                                            ; $642e: $d8

	ld l, a                                          ; $642f: $6f
	rst GetHLinHL                                          ; $6430: $cf
	ld h, a                                          ; $6431: $67
	rst SubAFromBC                                          ; $6432: $e7
	cpl                                              ; $6433: $2f
	add b                                            ; $6434: $80
	sbc [hl]                                         ; $6435: $9e
	jr c, jr_06e_63f6                                ; $6436: $38 $be

	add b                                            ; $6438: $80
	nop                                              ; $6439: $00
	ldh [$9c], a                                     ; $643a: $e0 $9c
	ldh [$e3], a                                     ; $643c: $e0 $e3
	ret nz                                           ; $643e: $c0

	daa                                              ; $643f: $27
	add b                                            ; $6440: $80
	sbc [hl]                                         ; $6441: $9e
	ld a, b                                          ; $6442: $78
	cp [hl]                                          ; $6443: $be
	inc sp                                           ; $6444: $33
	nop                                              ; $6445: $00
	rrca                                             ; $6446: $0f
	sbc h                                            ; $6447: $9c
	rlca                                             ; $6448: $07
	sbc a                                            ; $6449: $9f
	inc bc                                           ; $644a: $03
	dec hl                                           ; $644b: $2b
	add b                                            ; $644c: $80
	sub d                                            ; $644d: $92
	rlca                                             ; $644e: $07
	dec a                                            ; $644f: $3d
	rst JumpTable                                          ; $6450: $c7
	inc e                                            ; $6451: $1c
	daa                                              ; $6452: $27
	cp $fd                                           ; $6453: $fe $fd
	cp $f5                                           ; $6455: $fe $f5
	ld a, [hl-]                                      ; $6457: $3a
	dec c                                            ; $6458: $0d
	dec b                                            ; $6459: $05
	ld b, $77                                        ; $645a: $06 $77
	sub $df                                          ; $645c: $d6 $df
	ld [$079c], sp                                   ; $645e: $08 $9c $07
	rrca                                             ; $6461: $0f
	nop                                              ; $6462: $00
	cp a                                             ; $6463: $bf
	add a                                            ; $6464: $87
	ret nz                                           ; $6465: $c0

	ld a, e                                          ; $6466: $7b
	ld h, $98                                        ; $6467: $26 $98
	ld a, b                                          ; $6469: $78
	ldh a, [$fe]                                     ; $646a: $f0 $fe
	reti                                             ; $646c: $d9


	rst $38                                          ; $646d: $ff
	rst JumpTable                                          ; $646e: $c7
	db $e3                                           ; $646f: $e3
	db $dd                                           ; $6470: $dd
	ret nz                                           ; $6471: $c0

	sbc l                                            ; $6472: $9d
	ld b, b                                          ; $6473: $40
	add b                                            ; $6474: $80
	ld [hl], a                                       ; $6475: $77
	sub l                                            ; $6476: $95
	ld a, a                                          ; $6477: $7f
	sub b                                            ; $6478: $90
	ld a, a                                          ; $6479: $7f
	ld l, h                                          ; $647a: $6c
	ld a, a                                          ; $647b: $7f
	or $9d                                           ; $647c: $f6 $9d
	ret nz                                           ; $647e: $c0

	ld bc, $03bf                                     ; $647f: $01 $bf $03
	rlca                                             ; $6482: $07
	ld a, [hl]                                       ; $6483: $7e
	and [hl]                                         ; $6484: $a6
	sub b                                            ; $6485: $90
	rrca                                             ; $6486: $0f
	ld a, [hl]                                       ; $6487: $7e
	ccf                                              ; $6488: $3f
	cp $ff                                           ; $6489: $fe $ff
	cp $f3                                           ; $648b: $fe $f3
	rst $38                                          ; $648d: $ff
	inc bc                                           ; $648e: $03
	rst $38                                          ; $648f: $ff
	inc bc                                           ; $6490: $03
	ld a, $03                                        ; $6491: $3e $03
	dec e                                            ; $6493: $1d
	rlca                                             ; $6494: $07
	ld h, a                                          ; $6495: $67
	ret nz                                           ; $6496: $c0

	rst SubAFromDE                                          ; $6497: $df
	ld [$fa7f], sp                                   ; $6498: $08 $7f $fa
	ld a, a                                          ; $649b: $7f
	db $d3                                           ; $649c: $d3
	sbc [hl]                                         ; $649d: $9e
	jp $c023                                         ; $649e: $c3 $23 $c0


	rst SubAFromDE                                          ; $64a1: $df
	ld b, b                                          ; $64a2: $40
	sbc l                                            ; $64a3: $9d
	pop bc                                           ; $64a4: $c1
	add b                                            ; $64a5: $80
	rla                                              ; $64a6: $17
	ret nz                                           ; $64a7: $c0

	sbc $0f                                          ; $64a8: $de $0f
	ld a, e                                          ; $64aa: $7b
	ret nz                                           ; $64ab: $c0

	rst SubAFromDE                                          ; $64ac: $df
	ret nz                                           ; $64ad: $c0

	sbc [hl]                                         ; $64ae: $9e
	db $e3                                           ; $64af: $e3
	dec hl                                           ; $64b0: $2b
	ret nz                                           ; $64b1: $c0

	rst SubAFromDE                                          ; $64b2: $df
	ret nz                                           ; $64b3: $c0

	inc bc                                           ; $64b4: $03
	ret nz                                           ; $64b5: $c0

	sbc h                                            ; $64b6: $9c
	rlca                                             ; $64b7: $07
	add a                                            ; $64b8: $87
	inc bc                                           ; $64b9: $03
	rrca                                             ; $64ba: $0f
	ret nz                                           ; $64bb: $c0

	sbc [hl]                                         ; $64bc: $9e
	add e                                            ; $64bd: $83
	dec sp                                           ; $64be: $3b
	ret nz                                           ; $64bf: $c0

	ret z                                            ; $64c0: $c8

	ld [bc], a                                       ; $64c1: $02
	db $e3                                           ; $64c2: $e3
	rst SubAFromDE                                          ; $64c3: $df
	rlca                                             ; $64c4: $07
	add b                                            ; $64c5: $80
	dec bc                                           ; $64c6: $0b
	inc c                                            ; $64c7: $0c
	rla                                              ; $64c8: $17
	jr jr_06e_64e9                                   ; $64c9: $18 $1e

	ld de, $1817                                     ; $64cb: $11 $17 $18
	rrca                                             ; $64ce: $0f
	ld [$0b0f], sp                                   ; $64cf: $08 $0f $0b
	ld [$060f], sp                                   ; $64d2: $08 $0f $06
	rlca                                             ; $64d5: $07
	ld b, $07                                        ; $64d6: $06 $07
	dec b                                            ; $64d8: $05
	rlca                                             ; $64d9: $07
	inc b                                            ; $64da: $04
	rlca                                             ; $64db: $07
	dec bc                                           ; $64dc: $0b
	ld c, $0a                                        ; $64dd: $0e $0a
	rrca                                             ; $64df: $0f
	dec c                                            ; $64e0: $0d
	dec bc                                           ; $64e1: $0b
	ld a, [de]                                       ; $64e2: $1a
	dec e                                            ; $64e3: $1d
	dec e                                            ; $64e4: $1d
	add b                                            ; $64e5: $80
	ld d, $1e                                        ; $64e6: $16 $1e
	inc de                                           ; $64e8: $13

jr_06e_64e9:
	dec d                                            ; $64e9: $15
	dec de                                           ; $64ea: $1b
	inc de                                           ; $64eb: $13
	ld e, $14                                        ; $64ec: $1e $14
	rra                                              ; $64ee: $1f
	add hl, de                                       ; $64ef: $19
	rra                                              ; $64f0: $1f
	ld [de], a                                       ; $64f1: $12
	rra                                              ; $64f2: $1f
	inc l                                            ; $64f3: $2c
	ccf                                              ; $64f4: $3f
	ld a, h                                          ; $64f5: $7c
	ld a, a                                          ; $64f6: $7f
	add hl, bc                                       ; $64f7: $09
	rrca                                             ; $64f8: $0f
	inc de                                           ; $64f9: $13
	rra                                              ; $64fa: $1f
	ld d, $1f                                        ; $64fb: $16 $1f
	cpl                                              ; $64fd: $2f
	ld a, $2b                                        ; $64fe: $3e $2b
	ld a, [hl-]                                      ; $6500: $3a
	inc sp                                           ; $6501: $33
	ld [hl-], a                                      ; $6502: $32
	ld [hl+], a                                      ; $6503: $22
	inc hl                                           ; $6504: $23
	rst SubAFromDE                                          ; $6505: $df
	ld hl, $ddeb                                     ; $6506: $21 $eb $dd
	ld bc, $a473                                     ; $6509: $01 $73 $a4
	sbc [hl]                                         ; $650c: $9e
	dec de                                           ; $650d: $1b
	db $eb                                           ; $650e: $eb
	rst SubAFromDE                                          ; $650f: $df
	ld b, $80                                        ; $6510: $06 $80
	dec de                                           ; $6512: $1b
	rra                                              ; $6513: $1f
	dec b                                            ; $6514: $05
	rlca                                             ; $6515: $07
	cp $ff                                           ; $6516: $fe $ff
	ld a, a                                          ; $6518: $7f
	add d                                            ; $6519: $82
	rst SubAFromDE                                          ; $651a: $df
	ccf                                              ; $651b: $3f
	dec sp                                           ; $651c: $3b
	rst JumpTable                                          ; $651d: $c7
	db $ed                                           ; $651e: $ed
	rra                                              ; $651f: $1f
	db $d3                                           ; $6520: $d3
	dec a                                            ; $6521: $3d
	or $f9                                           ; $6522: $f6 $f9
	ld d, h                                          ; $6524: $54
	ei                                               ; $6525: $fb
	call nc, $d8fa                                   ; $6526: $d4 $fa $d8
	ld [hl], d                                       ; $6529: $72
	push de                                          ; $652a: $d5
	ld a, d                                          ; $652b: $7a
	jr z, @+$01                                      ; $652c: $28 $ff

	cp a                                             ; $652e: $bf
	rst $38                                          ; $652f: $ff
	ld [hl], a                                       ; $6530: $77
	sub [hl]                                         ; $6531: $96
	call c, Call_06e_7e8a                            ; $6532: $dc $8a $7e
	ld c, a                                          ; $6535: $4f
	cp a                                             ; $6536: $bf
	cp h                                             ; $6537: $bc
	di                                               ; $6538: $f3
	ld [hl], a                                       ; $6539: $77
	rst GetHLinHL                                          ; $653a: $cf
	ldh [$c1], a                                     ; $653b: $e0 $c1
	add a                                            ; $653d: $87
	ld [bc], a                                       ; $653e: $02
	inc bc                                           ; $653f: $03
	dec b                                            ; $6540: $05
	ld b, $0b                                        ; $6541: $06 $0b
	inc c                                            ; $6543: $0c
	ld d, $19                                        ; $6544: $16 $19
	ld d, $19                                        ; $6546: $16 $19
	inc l                                            ; $6548: $2c
	inc sp                                           ; $6549: $33
	inc l                                            ; $654a: $2c
	inc sp                                           ; $654b: $33
	ld e, b                                          ; $654c: $58
	ld h, a                                          ; $654d: $67
	ld e, b                                          ; $654e: $58
	ld h, a                                          ; $654f: $67
	or b                                             ; $6550: $b0
	rst GetHLinHL                                          ; $6551: $cf
	or b                                             ; $6552: $b0
	rst GetHLinHL                                          ; $6553: $cf
	ld h, b                                          ; $6554: $60
	sbc a                                            ; $6555: $9f
	ld [hl], a                                       ; $6556: $77
	cp $7f                                           ; $6557: $fe $7f
	ld hl, sp-$63                                    ; $6559: $f8 $9d
	ret c                                            ; $655b: $d8

	ld h, a                                          ; $655c: $67
	di                                               ; $655d: $f3
	rst SubAFromDE                                          ; $655e: $df
	inc hl                                           ; $655f: $23
	add b                                            ; $6560: $80
	ld c, l                                          ; $6561: $4d
	ld c, [hl]                                       ; $6562: $4e
	sub $d9                                          ; $6563: $d6 $d9
	xor e                                            ; $6565: $ab
	rst FarCall                                          ; $6566: $f7
	db $ed                                           ; $6567: $ed
	cp [hl]                                          ; $6568: $be
	or [hl]                                          ; $6569: $b6
	ld sp, hl                                        ; $656a: $f9
	ld sp, hl                                        ; $656b: $f9
	and $e3                                          ; $656c: $e6 $e3
	ccf                                              ; $656e: $3f
	dec a                                            ; $656f: $3d
	rst $38                                          ; $6570: $ff
	jp z, $95ff                                      ; $6571: $ca $ff $95

	cp $57                                           ; $6574: $fe $57
	cp h                                             ; $6576: $bc
	ld [$ef3d], a                                    ; $6577: $ea $3d $ef
	add hl, sp                                       ; $657a: $39
	dec d                                            ; $657b: $15
	ld l, e                                          ; $657c: $6b
	ld b, $6b                                        ; $657d: $06 $6b
	and d                                            ; $657f: $a2
	adc [hl]                                         ; $6580: $8e
	ld d, [hl]                                       ; $6581: $56
	dec l                                            ; $6582: $2d
	sub $6d                                          ; $6583: $d6 $6d
	rst SubAFromHL                                          ; $6585: $d7
	ld d, [hl]                                       ; $6586: $56
	cp $d5                                           ; $6587: $fe $d5
	db $fc                                           ; $6589: $fc
	ld a, [$7d79]                                    ; $658a: $fa $79 $7d
	inc sp                                           ; $658d: $33
	db $db                                           ; $658e: $db
	or a                                             ; $658f: $b7
	push de                                          ; $6590: $d5
	cp $e0                                           ; $6591: $fe $e0
	pop bc                                           ; $6593: $c1
	adc e                                            ; $6594: $8b
	rst $38                                          ; $6595: $ff
	ld h, b                                          ; $6596: $60
	rst $38                                          ; $6597: $ff
	ld hl, $13ff                                     ; $6598: $21 $ff $13
	cp $07                                           ; $659b: $fe $07
	db $fc                                           ; $659d: $fc
	ld b, $f8                                        ; $659e: $06 $f8
	ld c, $f8                                        ; $65a0: $0e $f8
	rrca                                             ; $65a2: $0f
	ldh a, [rAUD2HIGH]                               ; $65a3: $f0 $19
	ldh a, [rAUD2LOW]                                ; $65a5: $f0 $18
	ldh [$30], a                                     ; $65a7: $e0 $30
	ld [hl], a                                       ; $65a9: $77
	cp $97                                           ; $65aa: $fe $97
	ret nz                                           ; $65ac: $c0

	ld [hl], b                                       ; $65ad: $70
	ret nz                                           ; $65ae: $c0

	ld a, c                                          ; $65af: $79
	jp $c77f                                         ; $65b0: $c3 $7f $c7


	db $fc                                           ; $65b3: $fc
	push af                                          ; $65b4: $f5
	rst SubAFromDE                                          ; $65b5: $df
	ccf                                              ; $65b6: $3f
	add b                                            ; $65b7: $80
	push bc                                          ; $65b8: $c5
	cp $ba                                           ; $65b9: $fe $ba
	ld a, l                                          ; $65bb: $7d
	rst SubAFromDE                                          ; $65bc: $df
	rst SubAFromBC                                          ; $65bd: $e7
	ld a, [hl]                                       ; $65be: $7e
	add e                                            ; $65bf: $83
	rst $38                                          ; $65c0: $ff
	ld bc, $a05f                                     ; $65c1: $01 $5f $a0
	rst $38                                          ; $65c4: $ff
	nop                                              ; $65c5: $00
	rst $38                                          ; $65c6: $ff
	rst $38                                          ; $65c7: $ff
	ld d, d                                          ; $65c8: $52
	cp a                                             ; $65c9: $bf
	xor d                                            ; $65ca: $aa
	ld [hl], a                                       ; $65cb: $77
	db $dd                                           ; $65cc: $dd
	ld h, a                                          ; $65cd: $67
	ld d, l                                          ; $65ce: $55
	rst AddAOntoHL                                          ; $65cf: $ef
	or l                                             ; $65d0: $b5
	rst GetHLinHL                                          ; $65d1: $cf
	ld l, d                                          ; $65d2: $6a
	sbc a                                            ; $65d3: $9f
	ld a, [hl+]                                      ; $65d4: $2a
	sbc a                                            ; $65d5: $9f
	ld c, e                                          ; $65d6: $4b
	adc h                                            ; $65d7: $8c
	ld a, $ad                                        ; $65d8: $3e $ad
	ld a, [hl]                                       ; $65da: $7e
	ld a, a                                          ; $65db: $7f
	cp $c5                                           ; $65dc: $fe $c5
	cp [hl]                                          ; $65de: $be
	jr c, @+$81                                      ; $65df: $38 $7f

	ld d, c                                          ; $65e1: $51
	rst $38                                          ; $65e2: $ff
	or $ff                                           ; $65e3: $f6 $ff
	sbc c                                            ; $65e5: $99
	rst $38                                          ; $65e6: $ff
	ld c, l                                          ; $65e7: $4d
	add [hl]                                         ; $65e8: $86
	cp $f3                                           ; $65e9: $fe $f3
	ldh [$c1], a                                     ; $65eb: $e0 $c1
	sub l                                            ; $65ed: $95
	ldh [$f0], a                                     ; $65ee: $e0 $f0
	and b                                            ; $65f0: $a0
	ldh a, [rAUD1SWEEP]                              ; $65f1: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $65f3: $f0 $10
	stop                                             ; $65f5: $10 $00
	db $10                                           ; $65f7: $10
	halt                                             ; $65f8: $76
	add hl, hl                                       ; $65f9: $29
	sub c                                            ; $65fa: $91
	nop                                              ; $65fb: $00
	adc l                                            ; $65fc: $8d

jr_06e_65fd:
	ld bc, $0363                                     ; $65fd: $01 $63 $03
	ld b, $0f                                        ; $6600: $06 $0f
	inc e                                            ; $6602: $1c
	rra                                              ; $6603: $1f
	jr nc, jr_06e_6685                               ; $6604: $30 $7f

	ldh [rIE], a                                     ; $6606: $e0 $ff
	add b                                            ; $6608: $80
	ld a, e                                          ; $6609: $7b
	ld a, [hl]                                       ; $660a: $7e
	ld c, a                                          ; $660b: $4f
	call nc, $e080                                   ; $660c: $d4 $80 $e0
	sbc b                                            ; $660f: $98
	ld a, b                                          ; $6610: $78
	ld a, h                                          ; $6611: $7c
	db $fc                                           ; $6612: $fc
	cp e                                             ; $6613: $bb
	rst JumpTable                                          ; $6614: $c7
	ld h, e                                          ; $6615: $63
	sbc h                                            ; $6616: $9c
	sbc a                                            ; $6617: $9f
	rst $38                                          ; $6618: $ff
	db $ec                                           ; $6619: $ec
	di                                               ; $661a: $f3
	sbc a                                            ; $661b: $9f
	ldh [rIE], a                                     ; $661c: $e0 $ff
	rst $38                                          ; $661e: $ff
	ldh a, [rIE]                                     ; $661f: $f0 $ff
	sbc h                                            ; $6621: $9c
	rst $38                                          ; $6622: $ff
	ld d, e                                          ; $6623: $53
	cp a                                             ; $6624: $bf
	ld d, a                                          ; $6625: $57
	cp e                                             ; $6626: $bb
	sub l                                            ; $6627: $95
	dec sp                                           ; $6628: $3b
	sbc a                                            ; $6629: $9f
	ld sp, $3326                                     ; $662a: $31 $26 $33
	adc e                                            ; $662d: $8b
	ld [hl+], a                                      ; $662e: $22
	scf                                              ; $662f: $37
	push bc                                          ; $6630: $c5
	ld l, [hl]                                       ; $6631: $6e
	ld b, [hl]                                       ; $6632: $46
	db $ed                                           ; $6633: $ed
	xor e                                            ; $6634: $ab
	db $dd                                           ; $6635: $dd
	db $ed                                           ; $6636: $ed
	sbc e                                            ; $6637: $9b
	ld [de], a                                       ; $6638: $12
	rst $38                                          ; $6639: $ff
	db $e4                                           ; $663a: $e4
	rst $38                                          ; $663b: $ff
	jr c, jr_06e_65fd                                ; $663c: $38 $bf

	sbc c                                            ; $663e: $99
	rst GetHLinHL                                          ; $663f: $cf
	ld l, a                                          ; $6640: $6f
	ld [hl], a                                       ; $6641: $77
	ldh [$c0], a                                     ; $6642: $e0 $c0
	sub b                                            ; $6644: $90
	rlca                                             ; $6645: $07
	nop                                              ; $6646: $00
	rlca                                             ; $6647: $07
	ld bc, $030f                                     ; $6648: $01 $0f $03
	ld c, $07                                        ; $664b: $0e $07
	inc e                                            ; $664d: $1c
	rrca                                             ; $664e: $0f
	ld a, b                                          ; $664f: $78
	ccf                                              ; $6650: $3f
	ldh a, [rIE]                                     ; $6651: $f0 $ff
	ret nz                                           ; $6653: $c0

	ld [hl], a                                       ; $6654: $77
	ld l, h                                          ; $6655: $6c
	ld d, a                                          ; $6656: $57
	cp $ef                                           ; $6657: $fe $ef
	rst SubAFromDE                                          ; $6659: $df
	add b                                            ; $665a: $80
	add b                                            ; $665b: $80
	ld h, b                                          ; $665c: $60
	ldh [rAUD1SWEEP], a                              ; $665d: $e0 $10
	ldh a, [$c8]                                     ; $665f: $f0 $c8
	ld hl, sp+$24                                    ; $6661: $f8 $24
	db $fc                                           ; $6663: $fc
	sub h                                            ; $6664: $94
	db $fc                                           ; $6665: $fc
	ld a, d                                          ; $6666: $7a
	cp $f7                                           ; $6667: $fe $f7
	rrca                                             ; $6669: $0f
	dec de                                           ; $666a: $1b
	rst SubAFromBC                                          ; $666b: $e7
	call nz, Call_06e_78fb                           ; $666c: $c4 $fb $78
	rst $38                                          ; $666f: $ff
	ld h, $ff                                        ; $6670: $26 $ff
	or c                                             ; $6672: $b1
	ld a, a                                          ; $6673: $7f
	db $f4                                           ; $6674: $f4
	ld a, c                                          ; $6675: $79
	reti                                             ; $6676: $d9


	cp $d7                                           ; $6677: $fe $d7
	rst $38                                          ; $6679: $ff
	ld d, h                                          ; $667a: $54
	add b                                            ; $667b: $80
	rst $38                                          ; $667c: $ff
	ld e, d                                          ; $667d: $5a
	rst FarCall                                          ; $667e: $f7
	xor d                                            ; $667f: $aa
	rst FarCall                                          ; $6680: $f7
	xor e                                            ; $6681: $ab
	rst FarCall                                          ; $6682: $f7
	or a                                             ; $6683: $b7
	db $eb                                           ; $6684: $eb

jr_06e_6685:
	ld d, e                                          ; $6685: $53
	rst AddAOntoHL                                          ; $6686: $ef
	ld l, d                                          ; $6687: $6a
	rst SubAFromHL                                          ; $6688: $d7
	add l                                            ; $6689: $85
	rst $38                                          ; $668a: $ff
	dec e                                            ; $668b: $1d
	rst AddAOntoHL                                          ; $668c: $ef
	ld a, [hl+]                                      ; $668d: $2a
	rst SubAFromDE                                          ; $668e: $df
	sub l                                            ; $668f: $95
	cp $6a                                           ; $6690: $fe $6a
	db $fd                                           ; $6692: $fd
	inc [hl]                                         ; $6693: $34
	ei                                               ; $6694: $fb
	cp c                                             ; $6695: $b9
	rst $38                                          ; $6696: $ff
	xor l                                            ; $6697: $ad
	rst FarCall                                          ; $6698: $f7
	or a                                             ; $6699: $b7
	ei                                               ; $669a: $fb
	sub d                                            ; $669b: $92
	or $bb                                           ; $669c: $f6 $bb
	cp $b3                                           ; $669e: $fe $b3
	rst $38                                          ; $66a0: $ff
	or e                                             ; $66a1: $b3
	cp l                                             ; $66a2: $bd
	rst FarCall                                          ; $66a3: $f7
	or l                                             ; $66a4: $b5
	rst AddAOntoHL                                          ; $66a5: $ef
	ld a, h                                          ; $66a6: $7c
	rst $38                                          ; $66a7: $ff
	ld [hl], h                                       ; $66a8: $74
	ld a, e                                          ; $66a9: $7b
	jp nc, Jump_06e_5095                             ; $66aa: $d2 $95 $50

	rst $38                                          ; $66ad: $ff
	pop de                                           ; $66ae: $d1
	rst $38                                          ; $66af: $ff
	reti                                             ; $66b0: $d9


	rst $38                                          ; $66b1: $ff
	ld a, [$6afe]                                    ; $66b2: $fa $fe $6a
	ld l, [hl]                                       ; $66b5: $6e
	db $dd                                           ; $66b6: $dd
	ld c, h                                          ; $66b7: $4c

jr_06e_66b8:
	rst SubAFromDE                                          ; $66b8: $df
	add h                                            ; $66b9: $84
	sub l                                            ; $66ba: $95
	jp nz, $f042                                     ; $66bb: $c2 $42 $f0

	jr nc, jr_06e_66b8                               ; $66be: $30 $f8

	adc b                                            ; $66c0: $88
	db $fc                                           ; $66c1: $fc
	call nz, $c3ff                                   ; $66c2: $c4 $ff $c3
	ld a, e                                          ; $66c5: $7b
	ld [hl], d                                       ; $66c6: $72
	ld a, a                                          ; $66c7: $7f
	cp $7e                                           ; $66c8: $fe $7e
	jp c, $8098                                      ; $66ca: $da $98 $80

	ld a, [hl]                                       ; $66cd: $7e
	add c                                            ; $66ce: $81
	cp $01                                           ; $66cf: $fe $01
	db $fc                                           ; $66d1: $fc
	inc bc                                           ; $66d2: $03
	ld e, a                                          ; $66d3: $5f
	ld l, h                                          ; $66d4: $6c
	ld a, l                                          ; $66d5: $7d
	bit 7, [hl]                                      ; $66d6: $cb $7e
	add hl, hl                                       ; $66d8: $29
	sub a                                            ; $66d9: $97
	ld sp, hl                                        ; $66da: $f9
	nop                                              ; $66db: $00
	di                                               ; $66dc: $f3
	nop                                              ; $66dd: $00
	rst SubAFromBC                                          ; $66de: $e7
	ld bc, $03c5                                     ; $66df: $01 $c5 $03
	ld [hl], a                                       ; $66e2: $77
	ld [hl], b                                       ; $66e3: $70
	rst SubAFromDE                                          ; $66e4: $df
	add b                                            ; $66e5: $80
	add b                                            ; $66e6: $80
	ld b, b                                          ; $66e7: $40
	ret nz                                           ; $66e8: $c0

	ld h, b                                          ; $66e9: $60
	ldh [$b0], a                                     ; $66ea: $e0 $b0
	ldh a, [$f8]                                     ; $66ec: $f0 $f8
	ld hl, sp-$20                                    ; $66ee: $f8 $e0
	ld h, b                                          ; $66f0: $60
	ld h, b                                          ; $66f1: $60
	and b                                            ; $66f2: $a0
	or b                                             ; $66f3: $b0
	ret nc                                           ; $66f4: $d0

	ld d, b                                          ; $66f5: $50

jr_06e_66f6:
	ldh a, [$d8]                                     ; $66f6: $f0 $d8
	ld l, b                                          ; $66f8: $68
	ld l, b                                          ; $66f9: $68
	cp b                                             ; $66fa: $b8
	ld l, b                                          ; $66fb: $68
	cp b                                             ; $66fc: $b8
	or h                                             ; $66fd: $b4
	call c, $fcd4                                    ; $66fe: $dc $d4 $fc
	call nc, $aafc                                   ; $6701: $d4 $fc $aa
	cp $9a                                           ; $6704: $fe $9a
	add b                                            ; $6706: $80
	cp $8a                                           ; $6707: $fe $8a
	cp $aa                                           ; $6709: $fe $aa
	sbc $f6                                          ; $670b: $de $f6
	xor $9e                                          ; $670d: $ee $9e
	or $6b                                           ; $670f: $f6 $6b
	rst SubAFromHL                                          ; $6711: $d7
	ld e, l                                          ; $6712: $5d
	db $eb                                           ; $6713: $eb
	dec [hl]                                         ; $6714: $35

jr_06e_6715:
	db $eb                                           ; $6715: $eb
	ld a, [hl+]                                      ; $6716: $2a
	push af                                          ; $6717: $f5
	ld a, [hl+]                                      ; $6718: $2a
	push af                                          ; $6719: $f5
	dec hl                                           ; $671a: $2b
	push af                                          ; $671b: $f5
	add hl, hl                                       ; $671c: $29
	rst FarCall                                          ; $671d: $f7
	xor c                                            ; $671e: $a9
	rst FarCall                                          ; $671f: $f7
	and l                                            ; $6720: $a5
	rst $38                                          ; $6721: $ff
	rst $38                                          ; $6722: $ff
	and l                                            ; $6723: $a5
	cp $a6                                           ; $6724: $fe $a6
	sub e                                            ; $6726: $93
	ld a, [hl]                                       ; $6727: $7e
	ld l, d                                          ; $6728: $6a
	ld a, [hl]                                       ; $6729: $7e
	ld l, d                                          ; $672a: $6a
	ld a, h                                          ; $672b: $7c
	ld l, h                                          ; $672c: $6c
	inc a                                            ; $672d: $3c
	inc l                                            ; $672e: $2c
	jr c, jr_06e_6759                                ; $672f: $38 $28

	jr c, jr_06e_675b                                ; $6731: $38 $28

	db $db                                           ; $6733: $db
	jr jr_06e_6715                                   ; $6734: $18 $df

	ld [$0cdf], sp                                   ; $6736: $08 $df $0c
	rst SubAFromDE                                          ; $6739: $df
	inc b                                            ; $673a: $04
	rst SubAFromDE                                          ; $673b: $df
	ret nz                                           ; $673c: $c0

	sbc d                                            ; $673d: $9a
	jr nc, @-$0e                                     ; $673e: $30 $f0

	rrca                                             ; $6740: $0f
	rst $38                                          ; $6741: $ff
	ld bc, $8b73                                     ; $6742: $01 $73 $8b
	ld a, a                                          ; $6745: $7f
	ld a, h                                          ; $6746: $7c
	ld a, a                                          ; $6747: $7f
	adc h                                            ; $6748: $8c
	ld a, a                                          ; $6749: $7f
	adc [hl]                                         ; $674a: $8e
	adc a                                            ; $674b: $8f
	call z, $9303                                    ; $674c: $cc $03 $93
	rrca                                             ; $674f: $0f
	inc l                                            ; $6750: $2c
	rra                                              ; $6751: $1f
	ld d, a                                          ; $6752: $57
	jr c, jr_06e_66f6                                ; $6753: $38 $a1

	ld [hl], b                                       ; $6755: $70
	ld b, b                                          ; $6756: $40
	ldh [$80], a                                     ; $6757: $e0 $80

jr_06e_6759:
	ret nz                                           ; $6759: $c0

	nop                                              ; $675a: $00

jr_06e_675b:
	add b                                            ; $675b: $80
	db $eb                                           ; $675c: $eb
	db $db                                           ; $675d: $db
	add b                                            ; $675e: $80
	rst SubAFromDE                                          ; $675f: $df
	ret nz                                           ; $6760: $c0

	rst SubAFromDE                                          ; $6761: $df
	ld b, b                                          ; $6762: $40
	rst SubAFromDE                                          ; $6763: $df
	jr nz, jr_06e_67dd                               ; $6764: $20 $77

	ldh a, [c]                                       ; $6766: $f2
	ld a, a                                          ; $6767: $7f
	ld h, d                                          ; $6768: $62
	sbc [hl]                                         ; $6769: $9e
	jr nz, jr_06e_67e6                               ; $676a: $20 $7a

	adc $7a                                          ; $676c: $ce $7a
	call z, $388c                                    ; $676e: $cc $8c $38
	inc b                                            ; $6771: $04
	db $fc                                           ; $6772: $fc
	ld a, [$0dfe]                                    ; $6773: $fa $fe $0d
	rst $38                                          ; $6776: $ff
	jp $ed3f                                         ; $6777: $c3 $3f $ed


	inc de                                           ; $677a: $13
	xor $11                                          ; $677b: $ee $11
	ld [hl], a                                       ; $677d: $77
	adc b                                            ; $677e: $88
	ld [hl], a                                       ; $677f: $77
	adc b                                            ; $6780: $88
	ei                                               ; $6781: $fb
	inc b                                            ; $6782: $04
	jp hl                                            ; $6783: $e9


	db $db                                           ; $6784: $db
	add b                                            ; $6785: $80
	ld a, a                                          ; $6786: $7f
	add $19                                          ; $6787: $c6 $19
	nop                                              ; $6789: $00
	call c, $9eaa                                    ; $678a: $dc $aa $9e
	ld [hl+], a                                      ; $678d: $22
	sbc $99                                          ; $678e: $de $99
	ld [hl], a                                       ; $6790: $77
	ei                                               ; $6791: $fb
	sbc [hl]                                         ; $6792: $9e
	inc sp                                           ; $6793: $33
	ld d, a                                          ; $6794: $57
	ei                                               ; $6795: $fb
	sub l                                            ; $6796: $95
	nop                                              ; $6797: $00
	cp e                                             ; $6798: $bb
	ld d, l                                          ; $6799: $55
	xor d                                            ; $679a: $aa
	xor d                                            ; $679b: $aa
	call z, $aa55                                    ; $679c: $cc $55 $aa
	db $dd                                           ; $679f: $dd
	db $dd                                           ; $67a0: $dd
	cp a                                             ; $67a1: $bf
	ld bc, $eb80                                     ; $67a2: $01 $80 $eb
	sbc a                                            ; $67a5: $9f
	add $3f                                          ; $67a6: $c6 $3f
	adc d                                            ; $67a8: $8a
	ld a, a                                          ; $67a9: $7f
	rla                                              ; $67aa: $17
	cp $3e                                           ; $67ab: $fe $3e
	rst FarCall                                          ; $67ad: $f7
	halt                                             ; $67ae: $76
	rst $38                                          ; $67af: $ff
	or l                                             ; $67b0: $b5
	rst $38                                          ; $67b1: $ff
	sub $bd                                          ; $67b2: $d6 $bd
	ld l, e                                          ; $67b4: $6b
	cp [hl]                                          ; $67b5: $be
	ccf                                              ; $67b6: $3f
	rst SubAFromBC                                          ; $67b7: $e7
	cp c                                             ; $67b8: $b9

jr_06e_67b9:
	rst SubAFromBC                                          ; $67b9: $e7
	and [hl]                                         ; $67ba: $a6

jr_06e_67bb:
	rst $38                                          ; $67bb: $ff
	cp a                                             ; $67bc: $bf
	ld hl, sp-$21                                    ; $67bd: $f8 $df
	pop af                                           ; $67bf: $f1
	ld a, a                                          ; $67c0: $7f
	di                                               ; $67c1: $f3
	ld [hl], a                                       ; $67c2: $77
	add h                                            ; $67c3: $84
	ei                                               ; $67c4: $fb
	or a                                             ; $67c5: $b7
	cp $7b                                           ; $67c6: $fe $7b
	ld a, h                                          ; $67c8: $7c
	ld d, l                                          ; $67c9: $55
	ld a, [hl]                                       ; $67ca: $7e
	jp c, $fdb7                                      ; $67cb: $da $b7 $fd

	sbc e                                            ; $67ce: $9b
	rst FarCall                                          ; $67cf: $f7
	sub a                                            ; $67d0: $97
	or c                                             ; $67d1: $b1
	pop de                                           ; $67d2: $d1
	ld c, b                                          ; $67d3: $48
	ld a, b                                          ; $67d4: $78
	jr z, jr_06e_680f                                ; $67d5: $28 $38

	jr jr_06e_67f1                                   ; $67d7: $18 $18

	ld [$0408], sp                                   ; $67d9: $08 $08 $04
	inc b                                            ; $67dc: $04

jr_06e_67dd:
	ld [bc], a                                       ; $67dd: $02
	ld [bc], a                                       ; $67de: $02
	db $fd                                           ; $67df: $fd
	rst SubAFromDE                                          ; $67e0: $df
	ld bc, $ee96                                     ; $67e1: $01 $96 $ee
	pop af                                           ; $67e4: $f1
	pop de                                           ; $67e5: $d1

jr_06e_67e6:
	ldh [$a0], a                                     ; $67e6: $e0 $a0
	ret nz                                           ; $67e8: $c0

	ld h, b                                          ; $67e9: $60
	add b                                            ; $67ea: $80
	ret nz                                           ; $67eb: $c0

	ld a, e                                          ; $67ec: $7b
	cp $80                                           ; $67ed: $fe $80
	ldh [$80], a                                     ; $67ef: $e0 $80

jr_06e_67f1:
	ldh [$c0], a                                     ; $67f1: $e0 $c0
	ldh a, [$60]                                     ; $67f3: $f0 $60
	ld hl, sp-$80                                    ; $67f5: $f8 $80
	jr c, jr_06e_67b9                                ; $67f7: $38 $c0

	jr c, jr_06e_67bb                                ; $67f9: $38 $c0

	ldh [$f0], a                                     ; $67fb: $e0 $f0
	ld hl, sp-$10                                    ; $67fd: $f8 $f0
	sub b                                            ; $67ff: $90
	sbc b                                            ; $6800: $98
	add sp, -$08                                     ; $6801: $e8 $f8
	db $fd                                           ; $6803: $fd
	ld hl, sp+$7a                                    ; $6804: $f8 $7a
	ld l, b                                          ; $6806: $68
	db $ec                                           ; $6807: $ec
	ld c, b                                          ; $6808: $48
	ld hl, sp+$30                                    ; $6809: $f8 $30
	add b                                            ; $680b: $80
	nop                                              ; $680c: $00
	add b                                            ; $680d: $80
	ld [hl], a                                       ; $680e: $77

jr_06e_680f:
	sbc $7f                                          ; $680f: $de $7f
	ldh [hDisp1_OBP0], a                                     ; $6811: $e0 $93
	ldh [$fc], a                                     ; $6813: $e0 $fc
	or b                                             ; $6815: $b0
	rst $38                                          ; $6816: $ff
	sbc h                                            ; $6817: $9c
	rst $38                                          ; $6818: $ff

jr_06e_6819:
	xor a                                            ; $6819: $af
	rst $38                                          ; $681a: $ff
	xor a                                            ; $681b: $af
	ldh a, [$bf]                                     ; $681c: $f0 $bf
	ldh [$7b], a                                     ; $681e: $e0 $7b
	cp $82                                           ; $6820: $fe $82
	xor [hl]                                         ; $6822: $ae
	ei                                               ; $6823: $fb
	ld e, a                                          ; $6824: $5f
	push af                                          ; $6825: $f5
	cp $73                                           ; $6826: $fe $73
	ld l, h                                          ; $6828: $6c
	inc sp                                           ; $6829: $33

jr_06e_682a:
	ld l, a                                          ; $682a: $6f
	jr nc, jr_06e_686c                               ; $682b: $30 $3f

	ld a, a                                          ; $682d: $7f

jr_06e_682e:
	ld [hl], e                                       ; $682e: $73
	inc a                                            ; $682f: $3c
	daa                                              ; $6830: $27
	rra                                              ; $6831: $1f

jr_06e_6832:
	cpl                                              ; $6832: $2f
	rra                                              ; $6833: $1f
	ld a, $0c                                        ; $6834: $3e $0c
	ccf                                              ; $6836: $3f
	dec bc                                           ; $6837: $0b
	dec de                                           ; $6838: $1b
	inc bc                                           ; $6839: $03
	ld bc, $0103                                     ; $683a: $01 $03 $01
	ld bc, $bf15                                     ; $683d: $01 $15 $bf
	xor d                                            ; $6840: $aa

jr_06e_6841:
	db $d3                                           ; $6841: $d3
	add c                                            ; $6842: $81
	rst $38                                          ; $6843: $ff
	ld e, c                                          ; $6844: $59
	rst $38                                          ; $6845: $ff
	db $fd                                           ; $6846: $fd
	rst FarCall                                          ; $6847: $f7
	cp e                                             ; $6848: $bb
	rst FarCall                                          ; $6849: $f7
	rst SubAFromDE                                          ; $684a: $df
	inc sp                                           ; $684b: $33
	xor l                                            ; $684c: $ad
	db $d3                                           ; $684d: $d3
	cp $01                                           ; $684e: $fe $01
	rst GetHLinHL                                          ; $6850: $cf
	ldh a, [$fb]                                     ; $6851: $f0 $fb
	db $fc                                           ; $6853: $fc
	ld [hl], a                                       ; $6854: $77
	ld a, b                                          ; $6855: $78
	rst $38                                          ; $6856: $ff
	ldh a, [$d7]                                     ; $6857: $f0 $d7
	ldh a, [$37]                                     ; $6859: $f0 $37
	ret nc                                           ; $685b: $d0

	cp a                                             ; $685c: $bf
	jr nz, jr_06e_682e                               ; $685d: $20 $cf

	ldh a, [$a7]                                     ; $685f: $f0 $a7
	cp l                                             ; $6861: $bd
	rrca                                             ; $6862: $0f
	rra                                              ; $6863: $1f
	rra                                              ; $6864: $1f
	ld e, $86                                        ; $6865: $1e $86
	ld bc, $013e                                     ; $6867: $01 $3e $01
	dec a                                            ; $686a: $3d
	inc bc                                           ; $686b: $03

jr_06e_686c:
	dec sp                                           ; $686c: $3b
	rlca                                             ; $686d: $07
	scf                                              ; $686e: $37
	rrca                                             ; $686f: $0f
	ld l, l                                          ; $6870: $6d
	rra                                              ; $6871: $1f
	ld e, l                                          ; $6872: $5d
	ccf                                              ; $6873: $3f
	cp c                                             ; $6874: $b9
	ld a, a                                          ; $6875: $7f
	ld [hl], c                                       ; $6876: $71
	rst $38                                          ; $6877: $ff
	ret nz                                           ; $6878: $c0

	rst $38                                          ; $6879: $ff
	ld [hl], b                                       ; $687a: $70
	rrca                                             ; $687b: $0f
	jr jr_06e_6885                                   ; $687c: $18 $07

	ld [$1b07], sp                                   ; $687e: $08 $07 $1b
	jr nz, jr_06e_6819                               ; $6881: $20 $96

	ldh a, [$7f]                                     ; $6883: $f0 $7f

jr_06e_6885:
	pop af                                           ; $6885: $f1
	ld [hl], a                                       ; $6886: $77
	ld sp, hl                                        ; $6887: $f9
	or a                                             ; $6888: $b7
	ei                                               ; $6889: $fb
	ld a, a                                          ; $688a: $7f
	ld a, [hl]                                       ; $688b: $7e
	inc bc                                           ; $688c: $03
	jr nz, @+$3d                                     ; $688d: $20 $3b

	jr nz, jr_06e_682a                               ; $688f: $20 $99

	ldh a, [rP1]                                     ; $6891: $f0 $00
	add sp, -$10                                     ; $6893: $e8 $f0
	ldh a, [$f8]                                     ; $6895: $f0 $f8
	inc bc                                           ; $6897: $03
	jr nz, @+$49                                     ; $6898: $20 $47

	jr nz, jr_06e_6832                               ; $689a: $20 $96

	jr jr_06e_68cd                                   ; $689c: $18 $2f

	rla                                              ; $689e: $17
	ccf                                              ; $689f: $3f
	rrca                                             ; $68a0: $0f
	ccf                                              ; $68a1: $3f
	rrca                                             ; $68a2: $0f
	dec de                                           ; $68a3: $1b
	dec bc                                           ; $68a4: $0b
	cpl                                              ; $68a5: $2f
	jr nz, jr_06e_6841                               ; $68a6: $20 $99

	rst $38                                          ; $68a8: $ff
	nop                                              ; $68a9: $00
	rst SubAFromDE                                          ; $68aa: $df
	ldh [rIE], a                                     ; $68ab: $e0 $ff
	db $fc                                           ; $68ad: $fc
	ld d, a                                          ; $68ae: $57
	jr nz, jr_06e_68c4                               ; $68af: $20 $13

	ld b, b                                          ; $68b1: $40
	sbc b                                            ; $68b2: $98
	ldh a, [rPCM34]                                  ; $68b3: $f0 $77
	ld hl, sp-$49                                    ; $68b5: $f8 $b7
	ld sp, hl                                        ; $68b7: $f9
	ld a, a                                          ; $68b8: $7f
	ld a, a                                          ; $68b9: $7f
	inc bc                                           ; $68ba: $03
	ld b, b                                          ; $68bb: $40
	dec sp                                           ; $68bc: $3b
	ld b, b                                          ; $68bd: $40
	sbc [hl]                                         ; $68be: $9e
	ld hl, sp-$41                                    ; $68bf: $f8 $bf
	ldh a, [$e0]                                     ; $68c1: $f0 $e0
	ld a, a                                          ; $68c3: $7f

jr_06e_68c4:
	db $f4                                           ; $68c4: $f4
	ld a, a                                          ; $68c5: $7f
	ld b, b                                          ; $68c6: $40
	sbc h                                            ; $68c7: $9c
	db $fc                                           ; $68c8: $fc
	ld a, [$03e8]                                    ; $68c9: $fa $e8 $03
	ld b, b                                          ; $68cc: $40

jr_06e_68cd:
	ld d, a                                          ; $68cd: $57
	ld b, b                                          ; $68ce: $40
	sub [hl]                                         ; $68cf: $96
	db $10                                           ; $68d0: $10
	dec a                                            ; $68d1: $3d
	ld bc, $033b                                     ; $68d2: $01 $3b $03
	dec de                                           ; $68d5: $1b
	inc bc                                           ; $68d6: $03
	rlca                                             ; $68d7: $07
	rlca                                             ; $68d8: $07
	cpl                                              ; $68d9: $2f
	ld b, b                                          ; $68da: $40
	ld a, e                                          ; $68db: $7b
	cp $7e                                           ; $68dc: $fe $7e
	add l                                            ; $68de: $85
	sbc e                                            ; $68df: $9b
	ldh a, [rIE]                                     ; $68e0: $f0 $ff
	db $fc                                           ; $68e2: $fc
	or a                                             ; $68e3: $b7
	inc bc                                           ; $68e4: $03
	ld b, b                                          ; $68e5: $40
	ld l, e                                          ; $68e6: $6b
	ld b, b                                          ; $68e7: $40
	sbc h                                            ; $68e8: $9c
	ld hl, sp+$7b                                    ; $68e9: $f8 $7b
	ld a, l                                          ; $68eb: $7d
	inc bc                                           ; $68ec: $03
	ld b, b                                          ; $68ed: $40
	dec hl                                           ; $68ee: $2b
	ld b, b                                          ; $68ef: $40
	ld a, a                                          ; $68f0: $7f
	ld c, h                                          ; $68f1: $4c
	rst $38                                          ; $68f2: $ff
	sbc c                                            ; $68f3: $99
	pop hl                                           ; $68f4: $e1
	nop                                              ; $68f5: $00
	sbc [hl]                                         ; $68f6: $9e
	adc h                                            ; $68f7: $8c
	db $fc                                           ; $68f8: $fc
	ld a, b                                          ; $68f9: $78
	inc bc                                           ; $68fa: $03
	ld b, b                                          ; $68fb: $40
	ld e, e                                          ; $68fc: $5b
	ld b, b                                          ; $68fd: $40
	sbc [hl]                                         ; $68fe: $9e
	inc a                                            ; $68ff: $3c
	cp l                                             ; $6900: $bd
	jr c, jr_06e_691c                                ; $6901: $38 $19

	nop                                              ; $6903: $00
	inc bc                                           ; $6904: $03
	sbc [hl]                                         ; $6905: $9e
	inc bc                                           ; $6906: $03
	cpl                                              ; $6907: $2f
	ld b, b                                          ; $6908: $40
	sbc [hl]                                         ; $6909: $9e
	ld a, a                                          ; $690a: $7f
	cp a                                             ; $690b: $bf
	ccf                                              ; $690c: $3f
	rst $38                                          ; $690d: $ff
	sbc c                                            ; $690e: $99
	inc c                                            ; $690f: $0c
	ld [hl], a                                       ; $6910: $77
	jr c, @+$01                                      ; $6911: $38 $ff

	ldh a, [$ef]                                     ; $6913: $f0 $ef
	ld a, e                                          ; $6915: $7b
	ld b, b                                          ; $6916: $40
	sbc [hl]                                         ; $6917: $9e
	ld [hl], l                                       ; $6918: $75
	cp a                                             ; $6919: $bf
	ld hl, sp+$38                                    ; $691a: $f8 $38

jr_06e_691c:
	sub d                                            ; $691c: $92
	ld b, b                                          ; $691d: $40
	ret nc                                           ; $691e: $d0

	ld h, b                                          ; $691f: $60
	ld h, b                                          ; $6920: $60
	jr nz, jr_06e_6923                               ; $6921: $20 $00

jr_06e_6923:
	ld [$3038], sp                                   ; $6923: $08 $38 $30
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	ld [$fd10], sp                                   ; $6928: $08 $10 $fd
	sub l                                            ; $692b: $95
	ld b, e                                          ; $692c: $43
	add b                                            ; $692d: $80
	db $ed                                           ; $692e: $ed
	di                                               ; $692f: $f3
	rst $38                                          ; $6930: $ff
	cp $64                                           ; $6931: $fe $64
	ld hl, sp+$68                                    ; $6933: $f8 $68
	ldh a, [$5f]                                     ; $6935: $f0 $5f
	ldh [$df], a                                     ; $6937: $e0 $df
	ld [$38df], sp                                   ; $6939: $08 $df $38
	sbc h                                            ; $693c: $9c
	db $10                                           ; $693d: $10
	jr jr_06e_6940                                   ; $693e: $18 $00

jr_06e_6940:
	cp [hl]                                          ; $6940: $be
	jr jr_06e_6943                                   ; $6941: $18 $00

jr_06e_6943:
	ld b, e                                          ; $6943: $43
	dec sp                                           ; $6944: $3b
	ldh [$98], a                                     ; $6945: $e0 $98
	inc c                                            ; $6947: $0c
	ld [$383c], sp                                   ; $6948: $08 $3c $38

jr_06e_694b:
	ld [$0818], sp                                   ; $694b: $08 $18 $08
	cp [hl]                                          ; $694e: $be
	nop                                              ; $694f: $00
	db $10                                           ; $6950: $10
	ld b, e                                          ; $6951: $43
	dec sp                                           ; $6952: $3b
	ldh [$98], a                                     ; $6953: $e0 $98
	inc e                                            ; $6955: $1c
	ld [$783c], sp                                   ; $6956: $08 $3c $78
	ld [$1838], sp                                   ; $6959: $08 $38 $18
	ld a, e                                          ; $695c: $7b
	and b                                            ; $695d: $a0
	ld d, a                                          ; $695e: $57
	ldh [$cd], a                                     ; $695f: $e0 $cd
	ld bc, $eb80                                     ; $6961: $01 $80 $eb
	sbc a                                            ; $6964: $9f
	add $3f                                          ; $6965: $c6 $3f
	adc d                                            ; $6967: $8a
	ld a, a                                          ; $6968: $7f
	rla                                              ; $6969: $17
	cp $3e                                           ; $696a: $fe $3e
	rst FarCall                                          ; $696c: $f7
	halt                                             ; $696d: $76
	rst $38                                          ; $696e: $ff
	or l                                             ; $696f: $b5
	rst $38                                          ; $6970: $ff
	sub $bd                                          ; $6971: $d6 $bd
	ld l, e                                          ; $6973: $6b
	cp [hl]                                          ; $6974: $be
	ccf                                              ; $6975: $3f
	rst SubAFromBC                                          ; $6976: $e7
	cp h                                             ; $6977: $bc

jr_06e_6978:
	rst AddAOntoHL                                          ; $6978: $ef
	xor d                                            ; $6979: $aa
	db $fd                                           ; $697a: $fd
	or a                                             ; $697b: $b7
	ld sp, hl                                        ; $697c: $f9
	rst SubAFromDE                                          ; $697d: $df
	di                                               ; $697e: $f3
	ld a, a                                          ; $697f: $7f
	rst FarCall                                          ; $6980: $f7
	ld [hl], a                                       ; $6981: $77
	add h                                            ; $6982: $84
	ld a, [$fab7]                                    ; $6983: $fa $b7 $fa
	ld a, e                                          ; $6986: $7b
	ld a, h                                          ; $6987: $7c
	ld d, l                                          ; $6988: $55
	ld a, [hl]                                       ; $6989: $7e
	jp c, $fdb7                                      ; $698a: $da $b7 $fd

	sbc e                                            ; $698d: $9b
	rst FarCall                                          ; $698e: $f7
	sub a                                            ; $698f: $97
	or c                                             ; $6990: $b1
	pop de                                           ; $6991: $d1
	ld c, b                                          ; $6992: $48
	ld a, b                                          ; $6993: $78
	jr z, jr_06e_69ce                                ; $6994: $28 $38

	jr jr_06e_69b0                                   ; $6996: $18 $18

	ld [$0408], sp                                   ; $6998: $08 $08 $04
	inc b                                            ; $699b: $04
	ld [bc], a                                       ; $699c: $02
	ld [bc], a                                       ; $699d: $02
	db $fd                                           ; $699e: $fd
	rst SubAFromDE                                          ; $699f: $df
	ld bc, $ee96                                     ; $69a0: $01 $96 $ee
	pop af                                           ; $69a3: $f1
	pop de                                           ; $69a4: $d1
	ldh [$a0], a                                     ; $69a5: $e0 $a0
	ret nz                                           ; $69a7: $c0

	ld h, b                                          ; $69a8: $60

jr_06e_69a9:
	add b                                            ; $69a9: $80
	ret nz                                           ; $69aa: $c0

	ld a, e                                          ; $69ab: $7b
	cp $8c                                           ; $69ac: $fe $8c
	ldh [$80], a                                     ; $69ae: $e0 $80

jr_06e_69b0:
	ldh [$c0], a                                     ; $69b0: $e0 $c0
	ldh a, [$60]                                     ; $69b2: $f0 $60
	ld hl, sp-$80                                    ; $69b4: $f8 $80
	jr c, jr_06e_6978                                ; $69b6: $38 $c0

	ld hl, sp-$40                                    ; $69b8: $f8 $c0
	ldh [$f0], a                                     ; $69ba: $e0 $f0
	cp b                                             ; $69bc: $b8
	or b                                             ; $69bd: $b0
	db $10                                           ; $69be: $10
	jr jr_06e_69a9                                   ; $69bf: $18 $e8

	sbc $f8                                          ; $69c1: $de $f8
	sub [hl]                                         ; $69c3: $96
	ld a, b                                          ; $69c4: $78
	ld l, b                                          ; $69c5: $68
	add sp, $48                                      ; $69c6: $e8 $48
	db $fc                                           ; $69c8: $fc
	jr nc, jr_06e_694b                               ; $69c9: $30 $80

	nop                                              ; $69cb: $00
	add b                                            ; $69cc: $80
	ld [hl], a                                       ; $69cd: $77

jr_06e_69ce:
	sbc $7f                                          ; $69ce: $de $7f
	ldh [hDisp1_OBP0], a                                     ; $69d0: $e0 $93
	ldh [$fc], a                                     ; $69d2: $e0 $fc
	or b                                             ; $69d4: $b0
	rst $38                                          ; $69d5: $ff
	sbc h                                            ; $69d6: $9c
	rst $38                                          ; $69d7: $ff
	xor a                                            ; $69d8: $af

jr_06e_69d9:
	rst $38                                          ; $69d9: $ff
	xor a                                            ; $69da: $af
	ldh a, [$bf]                                     ; $69db: $f0 $bf
	ldh [$7b], a                                     ; $69dd: $e0 $7b
	cp $85                                           ; $69df: $fe $85
	xor [hl]                                         ; $69e1: $ae
	ei                                               ; $69e2: $fb
	ld e, a                                          ; $69e3: $5f
	push af                                          ; $69e4: $f5
	cp $73                                           ; $69e5: $fe $73
	ld l, a                                          ; $69e7: $6f
	inc sp                                           ; $69e8: $33
	ld l, [hl]                                       ; $69e9: $6e
	ccf                                              ; $69ea: $3f
	ld a, c                                          ; $69eb: $79

jr_06e_69ec:
	ld e, $53                                        ; $69ec: $1e $53
	rra                                              ; $69ee: $1f
	scf                                              ; $69ef: $37
	rrca                                             ; $69f0: $0f
	ld a, $0e                                        ; $69f1: $3e $0e
	ld a, $0c                                        ; $69f3: $3e $0c
	ccf                                              ; $69f5: $3f
	dec bc                                           ; $69f6: $0b
	dec de                                           ; $69f7: $1b
	inc bc                                           ; $69f8: $03
	ld bc, $de03                                     ; $69f9: $01 $03 $de
	ld bc, $03bf                                     ; $69fc: $01 $bf $03
	db $d3                                           ; $69ff: $d3
	add c                                            ; $6a00: $81
	rst $38                                          ; $6a01: $ff
	ld e, c                                          ; $6a02: $59
	rst $38                                          ; $6a03: $ff
	db $fd                                           ; $6a04: $fd
	rst FarCall                                          ; $6a05: $f7
	cp e                                             ; $6a06: $bb
	rst FarCall                                          ; $6a07: $f7
	sbc a                                            ; $6a08: $9f
	di                                               ; $6a09: $f3
	db $ed                                           ; $6a0a: $ed
	inc de                                           ; $6a0b: $13
	cp [hl]                                          ; $6a0c: $be
	pop bc                                           ; $6a0d: $c1
	ld a, e                                          ; $6a0e: $7b
	ld a, h                                          ; $6a0f: $7c
	scf                                              ; $6a10: $37
	jr c, jr_06e_6a8a                                ; $6a11: $38 $77

	ld a, b                                          ; $6a13: $78
	rst $38                                          ; $6a14: $ff
	ldh a, [$d7]                                     ; $6a15: $f0 $d7
	ldh a, [$37]                                     ; $6a17: $f0 $37
	ret nc                                           ; $6a19: $d0

	cp a                                             ; $6a1a: $bf
	jr nz, jr_06e_69ec                               ; $6a1b: $20 $cf

	ldh a, [rTAC]                                    ; $6a1d: $f0 $07
	cp l                                             ; $6a1f: $bd
	rrca                                             ; $6a20: $0f
	rra                                              ; $6a21: $1f
	rra                                              ; $6a22: $1f
	ld e, $86                                        ; $6a23: $1e $86
	ld bc, $013e                                     ; $6a25: $01 $3e $01
	dec a                                            ; $6a28: $3d
	inc bc                                           ; $6a29: $03
	dec sp                                           ; $6a2a: $3b
	rlca                                             ; $6a2b: $07
	scf                                              ; $6a2c: $37
	rrca                                             ; $6a2d: $0f
	ld l, l                                          ; $6a2e: $6d
	rra                                              ; $6a2f: $1f
	ld e, l                                          ; $6a30: $5d
	ccf                                              ; $6a31: $3f
	cp c                                             ; $6a32: $b9
	ld a, a                                          ; $6a33: $7f
	ld [hl], c                                       ; $6a34: $71
	rst $38                                          ; $6a35: $ff
	ret nz                                           ; $6a36: $c0

	rst $38                                          ; $6a37: $ff
	ld [hl], b                                       ; $6a38: $70
	rrca                                             ; $6a39: $0f
	jr jr_06e_6a43                                   ; $6a3a: $18 $07

	ld [$2307], sp                                   ; $6a3c: $08 $07 $23
	jr nz, jr_06e_69d9                               ; $6a3f: $20 $98

	ld hl, sp-$21                                    ; $6a41: $f8 $df

jr_06e_6a43:
	pop af                                           ; $6a43: $f1
	ld a, a                                          ; $6a44: $7f
	di                                               ; $6a45: $f3
	ld [hl], a                                       ; $6a46: $77
	cp $03                                           ; $6a47: $fe $03
	jr nz, @+$35                                     ; $6a49: $20 $33

	jr nz, jr_06e_6acc                               ; $6a4b: $20 $7f

	cp $7f                                           ; $6a4d: $fe $7f
	jr nz, jr_06e_69ec                               ; $6a4f: $20 $9b

	ld hl, sp-$10                                    ; $6a51: $f8 $f0
	sub b                                            ; $6a53: $90
	sbc b                                            ; $6a54: $98
	inc bc                                           ; $6a55: $03
	jr nz, jr_06e_6aa7                               ; $6a56: $20 $4f

	jr nz, @-$64                                     ; $6a58: $20 $9a

	inc e                                            ; $6a5a: $1c
	scf                                              ; $6a5b: $37
	dec bc                                           ; $6a5c: $0b
	ccf                                              ; $6a5d: $3f
	rlca                                             ; $6a5e: $07
	rra                                              ; $6a5f: $1f
	jr nz, @-$65                                     ; $6a60: $20 $99

	cp $01                                           ; $6a62: $fe $01
	rst SubAFromDE                                          ; $6a64: $df
	ldh [rIE], a                                     ; $6a65: $e0 $ff
	db $fc                                           ; $6a67: $fc
	ld c, a                                          ; $6a68: $4f
	jr nz, jr_06e_6a9a                               ; $6a69: $20 $2f

	ld b, b                                          ; $6a6b: $40
	sbc l                                            ; $6a6c: $9d
	xor e                                            ; $6a6d: $ab
	db $fc                                           ; $6a6e: $fc
	ld a, e                                          ; $6a6f: $7b
	ld b, b                                          ; $6a70: $40
	sub [hl]                                         ; $6a71: $96
	ldh a, [$7f]                                     ; $6a72: $f0 $7f
	ldh a, [rPCM34]                                  ; $6a74: $f0 $77
	ld hl, sp-$49                                    ; $6a76: $f8 $b7
	ld hl, sp+$7b                                    ; $6a78: $f8 $7b
	ld a, a                                          ; $6a7a: $7f
	inc bc                                           ; $6a7b: $03

jr_06e_6a7c:
	ld b, b                                          ; $6a7c: $40
	ld a, $60                                        ; $6a7d: $3e $60
	cp l                                             ; $6a7f: $bd
	ld hl, sp-$70                                    ; $6a80: $f8 $90
	nop                                              ; $6a82: $00
	ld a, b                                          ; $6a83: $78
	sbc d                                            ; $6a84: $9a
	ld [hl], b                                       ; $6a85: $70
	db $fc                                           ; $6a86: $fc
	db $fc                                           ; $6a87: $fc
	ld hl, sp-$18                                    ; $6a88: $f8 $e8

jr_06e_6a8a:
	inc bc                                           ; $6a8a: $03
	ld b, b                                          ; $6a8b: $40
	ld e, a                                          ; $6a8c: $5f
	ld b, b                                          ; $6a8d: $40
	sub h                                            ; $6a8e: $94
	ld [$003f], sp                                   ; $6a8f: $08 $3f $00
	dec a                                            ; $6a92: $3d
	ld bc, $033b                                     ; $6a93: $01 $3b $03
	dec de                                           ; $6a96: $1b
	rlca                                             ; $6a97: $07
	dec c                                            ; $6a98: $0d
	rrca                                             ; $6a99: $0f

jr_06e_6a9a:
	scf                                              ; $6a9a: $37
	ld b, b                                          ; $6a9b: $40
	sbc [hl]                                         ; $6a9c: $9e
	rst $38                                          ; $6a9d: $ff
	cp a                                             ; $6a9e: $bf
	rst $38                                          ; $6a9f: $ff
	rst AddAOntoHL                                          ; $6aa0: $ef
	sbc h                                            ; $6aa1: $9c
	ldh a, [rIE]                                     ; $6aa2: $f0 $ff
	db $fc                                           ; $6aa4: $fc
	dec bc                                           ; $6aa5: $0b
	ld b, b                                          ; $6aa6: $40

jr_06e_6aa7:
	sbc d                                            ; $6aa7: $9a
	rst SubAFromBC                                          ; $6aa8: $e7
	xor c                                            ; $6aa9: $a9
	cp $bb                                           ; $6aaa: $fe $bb
	db $fc                                           ; $6aac: $fc
	ld h, e                                          ; $6aad: $63
	ld b, b                                          ; $6aae: $40
	ld [bc], a                                       ; $6aaf: $02
	add b                                            ; $6ab0: $80
	rra                                              ; $6ab1: $1f
	ld b, b                                          ; $6ab2: $40
	rst $38                                          ; $6ab3: $ff
	sbc c                                            ; $6ab4: $99
	ldh [rP1], a                                     ; $6ab5: $e0 $00
	sbc h                                            ; $6ab7: $9c
	inc c                                            ; $6ab8: $0c
	ld hl, sp-$08                                    ; $6ab9: $f8 $f8
	inc bc                                           ; $6abb: $03
	ld b, b                                          ; $6abc: $40
	sbc d                                            ; $6abd: $9a
	inc sp                                           ; $6abe: $33
	ld l, a                                          ; $6abf: $6f
	ccf                                              ; $6ac0: $3f
	ld a, b                                          ; $6ac1: $78
	rra                                              ; $6ac2: $1f
	ld l, a                                          ; $6ac3: $6f
	ld b, b                                          ; $6ac4: $40
	sbc [hl]                                         ; $6ac5: $9e
	inc a                                            ; $6ac6: $3c
	cp l                                             ; $6ac7: $bd
	jr c, jr_06e_6ae3                                ; $6ac8: $38 $19

	nop                                              ; $6aca: $00
	rlca                                             ; $6acb: $07

jr_06e_6acc:
	sbc [hl]                                         ; $6acc: $9e
	rlca                                             ; $6acd: $07
	ld a, d                                          ; $6ace: $7a
	ld a, e                                          ; $6acf: $7b

jr_06e_6ad0:
	ld e, e                                          ; $6ad0: $5b
	ld b, b                                          ; $6ad1: $40
	sbc l                                            ; $6ad2: $9d
	ld l, l                                          ; $6ad3: $6d
	db $d3                                           ; $6ad4: $d3
	ld l, a                                          ; $6ad5: $6f
	ld b, b                                          ; $6ad6: $40
	ld a, a                                          ; $6ad7: $7f
	sbc $94                                          ; $6ad8: $de $94
	ld a, a                                          ; $6ada: $7f
	nop                                              ; $6adb: $00
	rst $38                                          ; $6adc: $ff
	inc c                                            ; $6add: $0c
	rst SubAFromDE                                          ; $6ade: $df
	jr nc, jr_06e_6ad0                               ; $6adf: $30 $ef

	ldh a, [$df]                                     ; $6ae1: $f0 $df

jr_06e_6ae3:
	ldh [rTAC], a                                    ; $6ae3: $e0 $07
	cp [hl]                                          ; $6ae5: $be
	ld [hl], b                                       ; $6ae6: $70
	ld a, b                                          ; $6ae7: $78
	jr c, jr_06e_6a7c                                ; $6ae8: $38 $92

	ld b, b                                          ; $6aea: $40
	ret nc                                           ; $6aeb: $d0

	ld h, b                                          ; $6aec: $60
	ld h, h                                          ; $6aed: $64
	inc h                                            ; $6aee: $24
	ld [$3044], sp                                   ; $6aef: $08 $44 $30
	jr c, jr_06e_6af4                                ; $6af2: $38 $00

jr_06e_6af4:
	nop                                              ; $6af4: $00
	ld [$fd10], sp                                   ; $6af5: $08 $10 $fd
	sub l                                            ; $6af8: $95
	ld b, e                                          ; $6af9: $43
	add b                                            ; $6afa: $80
	db $ed                                           ; $6afb: $ed
	di                                               ; $6afc: $f3
	rst $38                                          ; $6afd: $ff
	cp $64                                           ; $6afe: $fe $64
	ld hl, sp+$68                                    ; $6b00: $f8 $68
	ldh a, [$5f]                                     ; $6b02: $f0 $5f
	ldh [$9a], a                                     ; $6b04: $e0 $9a
	nop                                              ; $6b06: $00
	ld c, h                                          ; $6b07: $4c
	inc [hl]                                         ; $6b08: $34
	jr c, jr_06e_6b23                                ; $6b09: $38 $18

	cp l                                             ; $6b0b: $bd
	nop                                              ; $6b0c: $00
	jr jr_06e_6b0f                                   ; $6b0d: $18 $00

jr_06e_6b0f:
	ld b, e                                          ; $6b0f: $43
	ld b, e                                          ; $6b10: $43
	ldh [$99], a                                     ; $6b11: $e0 $99
	ld h, b                                          ; $6b13: $60
	inc h                                            ; $6b14: $24
	inc e                                            ; $6b15: $1c
	ld c, h                                          ; $6b16: $4c
	inc [hl]                                         ; $6b17: $34

jr_06e_6b18:
	inc a                                            ; $6b18: $3c
	cp a                                             ; $6b19: $bf
	jr jr_06e_6b1c                                   ; $6b1a: $18 $00

jr_06e_6b1c:
	cpl                                              ; $6b1c: $2f
	ldh [$7f], a                                     ; $6b1d: $e0 $7f
	ret nz                                           ; $6b1f: $c0

	ld a, a                                          ; $6b20: $7f
	ldh [$df], a                                     ; $6b21: $e0 $df

jr_06e_6b23:
	inc a                                            ; $6b23: $3c
	sbc e                                            ; $6b24: $9b
	inc d                                            ; $6b25: $14
	inc e                                            ; $6b26: $1c
	ld [$7b08], sp                                   ; $6b27: $08 $08 $7b
	sbc h                                            ; $6b2a: $9c
	ld e, e                                          ; $6b2b: $5b
	ldh [$c6], a                                     ; $6b2c: $e0 $c6
	ld bc, $eb80                                     ; $6b2e: $01 $80 $eb
	sbc a                                            ; $6b31: $9f
	add $3f                                          ; $6b32: $c6 $3f
	adc d                                            ; $6b34: $8a
	ld a, a                                          ; $6b35: $7f
	rla                                              ; $6b36: $17
	cp $3e                                           ; $6b37: $fe $3e
	rst FarCall                                          ; $6b39: $f7
	halt                                             ; $6b3a: $76
	rst $38                                          ; $6b3b: $ff
	or l                                             ; $6b3c: $b5
	rst $38                                          ; $6b3d: $ff
	sub $bd                                          ; $6b3e: $d6 $bd
	ld l, e                                          ; $6b40: $6b
	cp [hl]                                          ; $6b41: $be
	ccf                                              ; $6b42: $3f
	rst SubAFromBC                                          ; $6b43: $e7
	or [hl]                                          ; $6b44: $b6

jr_06e_6b45:
	rst AddAOntoHL                                          ; $6b45: $ef
	xor b                                            ; $6b46: $a8

jr_06e_6b47:
	rst $38                                          ; $6b47: $ff
	or a                                             ; $6b48: $b7
	ld sp, hl                                        ; $6b49: $f9
	rst SubAFromDE                                          ; $6b4a: $df
	di                                               ; $6b4b: $f3
	ld a, a                                          ; $6b4c: $7f
	di                                               ; $6b4d: $f3
	ld [hl], a                                       ; $6b4e: $77
	add h                                            ; $6b4f: $84
	cp $b7                                           ; $6b50: $fe $b7
	ld a, [$7c7b]                                    ; $6b52: $fa $7b $7c
	ld d, l                                          ; $6b55: $55
	ld a, [hl]                                       ; $6b56: $7e
	jp c, $fdb7                                      ; $6b57: $da $b7 $fd

	sbc e                                            ; $6b5a: $9b
	rst FarCall                                          ; $6b5b: $f7
	sub a                                            ; $6b5c: $97
	or c                                             ; $6b5d: $b1
	pop de                                           ; $6b5e: $d1
	ld c, b                                          ; $6b5f: $48
	ld a, b                                          ; $6b60: $78
	jr z, jr_06e_6b9b                                ; $6b61: $28 $38

	jr jr_06e_6b7d                                   ; $6b63: $18 $18

	ld [$0408], sp                                   ; $6b65: $08 $08 $04
	inc b                                            ; $6b68: $04
	ld [bc], a                                       ; $6b69: $02
	ld [bc], a                                       ; $6b6a: $02
	db $fd                                           ; $6b6b: $fd
	rst SubAFromDE                                          ; $6b6c: $df
	ld bc, $ee96                                     ; $6b6d: $01 $96 $ee
	pop af                                           ; $6b70: $f1
	pop de                                           ; $6b71: $d1
	ldh [$a0], a                                     ; $6b72: $e0 $a0
	ret nz                                           ; $6b74: $c0

	ld h, b                                          ; $6b75: $60

jr_06e_6b76:
	add b                                            ; $6b76: $80
	ret nz                                           ; $6b77: $c0

	ld a, e                                          ; $6b78: $7b
	cp $8c                                           ; $6b79: $fe $8c
	ldh [$80], a                                     ; $6b7b: $e0 $80

jr_06e_6b7d:
	ldh [$c0], a                                     ; $6b7d: $e0 $c0
	ldh a, [$60]                                     ; $6b7f: $f0 $60
	ld hl, sp-$80                                    ; $6b81: $f8 $80
	jr c, jr_06e_6b45                                ; $6b83: $38 $c0

	jr c, jr_06e_6b47                                ; $6b85: $38 $c0

	ldh [$f0], a                                     ; $6b87: $e0 $f0
	cp b                                             ; $6b89: $b8
	or b                                             ; $6b8a: $b0
	db $10                                           ; $6b8b: $10
	jr jr_06e_6b76                                   ; $6b8c: $18 $e8

	sbc $f8                                          ; $6b8e: $de $f8
	sub [hl]                                         ; $6b90: $96
	ld a, b                                          ; $6b91: $78
	ld l, b                                          ; $6b92: $68
	add sp, $48                                      ; $6b93: $e8 $48
	db $fc                                           ; $6b95: $fc
	jr nc, jr_06e_6b18                               ; $6b96: $30 $80

	nop                                              ; $6b98: $00
	add b                                            ; $6b99: $80
	ld [hl], a                                       ; $6b9a: $77

jr_06e_6b9b:
	sbc $7f                                          ; $6b9b: $de $7f
	ldh [hDisp1_OBP0], a                                     ; $6b9d: $e0 $93
	ldh [$fc], a                                     ; $6b9f: $e0 $fc
	or b                                             ; $6ba1: $b0
	rst $38                                          ; $6ba2: $ff
	sbc h                                            ; $6ba3: $9c
	rst $38                                          ; $6ba4: $ff
	xor a                                            ; $6ba5: $af
	rst $38                                          ; $6ba6: $ff
	xor a                                            ; $6ba7: $af
	ldh a, [$bf]                                     ; $6ba8: $f0 $bf

jr_06e_6baa:
	ldh [$7b], a                                     ; $6baa: $e0 $7b
	cp $85                                           ; $6bac: $fe $85
	xor [hl]                                         ; $6bae: $ae
	ei                                               ; $6baf: $fb

jr_06e_6bb0:
	ld e, a                                          ; $6bb0: $5f
	push af                                          ; $6bb1: $f5
	cp $73                                           ; $6bb2: $fe $73
	ld l, h                                          ; $6bb4: $6c
	inc sp                                           ; $6bb5: $33
	ld h, e                                          ; $6bb6: $63
	ccf                                              ; $6bb7: $3f
	ld a, l                                          ; $6bb8: $7d

jr_06e_6bb9:
	ld c, $53                                        ; $6bb9: $0e $53
	rra                                              ; $6bbb: $1f
	scf                                              ; $6bbc: $37
	rrca                                             ; $6bbd: $0f
	ld a, $0e                                        ; $6bbe: $3e $0e
	ld a, $0c                                        ; $6bc0: $3e $0c
	ccf                                              ; $6bc2: $3f
	dec bc                                           ; $6bc3: $0b
	dec de                                           ; $6bc4: $1b
	inc bc                                           ; $6bc5: $03
	ld bc, $de03                                     ; $6bc6: $01 $03 $de
	ld bc, $03bf                                     ; $6bc9: $01 $bf $03

jr_06e_6bcc:
	db $d3                                           ; $6bcc: $d3
	add c                                            ; $6bcd: $81
	rst $38                                          ; $6bce: $ff
	ld e, c                                          ; $6bcf: $59
	rst $38                                          ; $6bd0: $ff
	db $fd                                           ; $6bd1: $fd
	rst FarCall                                          ; $6bd2: $f7
	cp e                                             ; $6bd3: $bb
	rst FarCall                                          ; $6bd4: $f7
	sbc a                                            ; $6bd5: $9f
	di                                               ; $6bd6: $f3
	db $ed                                           ; $6bd7: $ed
	inc de                                           ; $6bd8: $13
	cp [hl]                                          ; $6bd9: $be
	pop bc                                           ; $6bda: $c1
	rst AddAOntoHL                                          ; $6bdb: $ef
	ldh a, [$3b]                                     ; $6bdc: $f0 $3b
	inc a                                            ; $6bde: $3c
	ld [hl], a                                       ; $6bdf: $77
	ld a, b                                          ; $6be0: $78
	rst $38                                          ; $6be1: $ff
	ldh a, [$d7]                                     ; $6be2: $f0 $d7
	ldh a, [$37]                                     ; $6be4: $f0 $37
	ret nc                                           ; $6be6: $d0

	cp a                                             ; $6be7: $bf
	jr nz, jr_06e_6bb9                               ; $6be8: $20 $cf

	ldh a, [rTAC]                                    ; $6bea: $f0 $07
	cp l                                             ; $6bec: $bd
	rrca                                             ; $6bed: $0f
	rra                                              ; $6bee: $1f
	rra                                              ; $6bef: $1f
	ld e, $86                                        ; $6bf0: $1e $86
	ld bc, $013e                                     ; $6bf2: $01 $3e $01
	dec a                                            ; $6bf5: $3d
	inc bc                                           ; $6bf6: $03
	dec sp                                           ; $6bf7: $3b
	rlca                                             ; $6bf8: $07
	scf                                              ; $6bf9: $37
	rrca                                             ; $6bfa: $0f
	ld l, l                                          ; $6bfb: $6d
	rra                                              ; $6bfc: $1f
	ld e, l                                          ; $6bfd: $5d
	ccf                                              ; $6bfe: $3f
	cp c                                             ; $6bff: $b9
	ld a, a                                          ; $6c00: $7f
	ld [hl], c                                       ; $6c01: $71
	rst $38                                          ; $6c02: $ff
	ret nz                                           ; $6c03: $c0

	rst $38                                          ; $6c04: $ff
	ld [hl], b                                       ; $6c05: $70
	rrca                                             ; $6c06: $0f
	jr jr_06e_6c10                                   ; $6c07: $18 $07

	ld [$2307], sp                                   ; $6c09: $08 $07 $23
	jr nz, jr_06e_6baa                               ; $6c0c: $20 $9c

	ld hl, sp-$21                                    ; $6c0e: $f8 $df

jr_06e_6c10:
	pop af                                           ; $6c10: $f1
	ld a, e                                          ; $6c11: $7b
	jr nz, jr_06e_6bb0                               ; $6c12: $20 $9c

	ei                                               ; $6c14: $fb
	or a                                             ; $6c15: $b7
	cp $03                                           ; $6c16: $fe $03
	jr nz, jr_06e_6c55                               ; $6c18: $20 $3b

	jr nz, @-$67                                     ; $6c1a: $20 $97

	ld a, b                                          ; $6c1c: $78
	add b                                            ; $6c1d: $80
	ldh a, [rP1]                                     ; $6c1e: $f0 $00
	ld hl, sp-$10                                    ; $6c20: $f8 $f0
	sub b                                            ; $6c22: $90
	sbc b                                            ; $6c23: $98
	inc bc                                           ; $6c24: $03
	jr nz, jr_06e_6c76                               ; $6c25: $20 $4f

	jr nz, @-$68                                     ; $6c27: $20 $96

	inc e                                            ; $6c29: $1c
	scf                                              ; $6c2a: $37
	dec bc                                           ; $6c2b: $0b
	ccf                                              ; $6c2c: $3f
	rlca                                             ; $6c2d: $07
	ld a, $0e                                        ; $6c2e: $3e $0e
	ccf                                              ; $6c30: $3f
	rrca                                             ; $6c31: $0f
	cpl                                              ; $6c32: $2f
	jr nz, jr_06e_6bcc                               ; $6c33: $20 $97

	cp $01                                           ; $6c35: $fe $01
	rst SubAFromDE                                          ; $6c37: $df
	ldh [$f7], a                                     ; $6c38: $e0 $f7
	ld hl, sp+$7b                                    ; $6c3a: $f8 $7b
	ld a, h                                          ; $6c3c: $7c
	ld d, a                                          ; $6c3d: $57
	jr nz, @+$1d                                     ; $6c3e: $20 $1b

	ld b, b                                          ; $6c40: $40
	sub [hl]                                         ; $6c41: $96
	ldh a, [$7f]                                     ; $6c42: $f0 $7f
	ldh a, [rPCM34]                                  ; $6c44: $f0 $77
	ld hl, sp-$49                                    ; $6c46: $f8 $b7
	ld hl, sp+$7b                                    ; $6c48: $f8 $7b
	ld a, a                                          ; $6c4a: $7f
	inc bc                                           ; $6c4b: $03
	ld b, b                                          ; $6c4c: $40
	dec sp                                           ; $6c4d: $3b
	ld b, b                                          ; $6c4e: $40

jr_06e_6c4f:
	sbc [hl]                                         ; $6c4f: $9e
	ld hl, sp-$41                                    ; $6c50: $f8 $bf
	sub b                                            ; $6c52: $90
	ld a, b                                          ; $6c53: $78
	sbc b                                            ; $6c54: $98

jr_06e_6c55:
	ld [hl], b                                       ; $6c55: $70
	ld hl, sp-$08                                    ; $6c56: $f8 $f8
	db $fc                                           ; $6c58: $fc
	db $fc                                           ; $6c59: $fc
	ld hl, sp-$18                                    ; $6c5a: $f8 $e8
	inc bc                                           ; $6c5c: $03
	ld b, b                                          ; $6c5d: $40
	ld e, a                                          ; $6c5e: $5f
	ld b, b                                          ; $6c5f: $40
	sub h                                            ; $6c60: $94
	ld [$003f], sp                                   ; $6c61: $08 $3f $00
	dec a                                            ; $6c64: $3d
	ld bc, $033b                                     ; $6c65: $01 $3b $03
	dec de                                           ; $6c68: $1b
	rlca                                             ; $6c69: $07
	dec c                                            ; $6c6a: $0d
	rrca                                             ; $6c6b: $0f
	scf                                              ; $6c6c: $37
	ld b, b                                          ; $6c6d: $40
	sbc [hl]                                         ; $6c6e: $9e
	rst $38                                          ; $6c6f: $ff
	cp a                                             ; $6c70: $bf

jr_06e_6c71:
	rst $38                                          ; $6c71: $ff
	rst AddAOntoHL                                          ; $6c72: $ef
	sbc h                                            ; $6c73: $9c
	ldh a, [rIE]                                     ; $6c74: $f0 $ff

jr_06e_6c76:
	db $fc                                           ; $6c76: $fc
	rlca                                             ; $6c77: $07
	ld b, b                                          ; $6c78: $40
	sbc e                                            ; $6c79: $9b
	xor h                                            ; $6c7a: $ac
	rst $38                                          ; $6c7b: $ff
	or e                                             ; $6c7c: $b3
	db $fc                                           ; $6c7d: $fc
	ld h, e                                          ; $6c7e: $63
	ld b, b                                          ; $6c7f: $40
	ld a, [hl]                                       ; $6c80: $7e
	add b                                            ; $6c81: $80
	sbc [hl]                                         ; $6c82: $9e
	ld a, a                                          ; $6c83: $7f
	inc bc                                           ; $6c84: $03
	ld b, b                                          ; $6c85: $40
	inc sp                                           ; $6c86: $33
	ld b, b                                          ; $6c87: $40
	db $fd                                           ; $6c88: $fd
	sbc e                                            ; $6c89: $9b
	ldh [rP1], a                                     ; $6c8a: $e0 $00
	sbc h                                            ; $6c8c: $9c
	inc c                                            ; $6c8d: $0c
	ld a, e                                          ; $6c8e: $7b
	ld a, [hl-]                                      ; $6c8f: $3a
	inc bc                                           ; $6c90: $03
	ld b, b                                          ; $6c91: $40
	ld a, a                                          ; $6c92: $7f
	ld b, b                                          ; $6c93: $40
	sbc l                                            ; $6c94: $9d
	ld a, [hl]                                       ; $6c95: $7e
	rrca                                             ; $6c96: $0f
	ld l, a                                          ; $6c97: $6f
	ld b, b                                          ; $6c98: $40
	sbc [hl]                                         ; $6c99: $9e
	inc a                                            ; $6c9a: $3c
	cp l                                             ; $6c9b: $bd
	jr c, @+$1b                                      ; $6c9c: $38 $19

	nop                                              ; $6c9e: $00
	rlca                                             ; $6c9f: $07
	sbc [hl]                                         ; $6ca0: $9e
	rlca                                             ; $6ca1: $07
	ld a, d                                          ; $6ca2: $7a
	ld a, e                                          ; $6ca3: $7b
	ld h, e                                          ; $6ca4: $63
	ld b, b                                          ; $6ca5: $40
	ld a, l                                          ; $6ca6: $7d
	ld [de], a                                       ; $6ca7: $12
	ld h, a                                          ; $6ca8: $67
	ld b, b                                          ; $6ca9: $40
	ld a, a                                          ; $6caa: $7f
	sbc $94                                          ; $6cab: $de $94
	ld a, a                                          ; $6cad: $7f
	nop                                              ; $6cae: $00
	rst AddAOntoHL                                          ; $6caf: $ef
	jr jr_06e_6c71                                   ; $6cb0: $18 $bf

	ld [hl], b                                       ; $6cb2: $70
	rst AddAOntoHL                                          ; $6cb3: $ef
	ldh a, [$df]                                     ; $6cb4: $f0 $df
	ldh [rTAC], a                                    ; $6cb6: $e0 $07
	cp [hl]                                          ; $6cb8: $be
	ld [hl], b                                       ; $6cb9: $70
	ld a, b                                          ; $6cba: $78
	jr c, jr_06e_6c4f                                ; $6cbb: $38 $92

	ld b, b                                          ; $6cbd: $40
	ret nc                                           ; $6cbe: $d0

	ld h, b                                          ; $6cbf: $60
	ld h, h                                          ; $6cc0: $64
	jr nz, jr_06e_6ccf                               ; $6cc1: $20 $0c

	inc b                                            ; $6cc3: $04
	jr c, @+$32                                      ; $6cc4: $38 $30

	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	ld [$fd10], sp                                   ; $6cc8: $08 $10 $fd
	sub l                                            ; $6ccb: $95
	ld b, e                                          ; $6ccc: $43
	add b                                            ; $6ccd: $80
	db $ed                                           ; $6cce: $ed

jr_06e_6ccf:
	di                                               ; $6ccf: $f3
	rst $38                                          ; $6cd0: $ff
	cp $64                                           ; $6cd1: $fe $64
	ld hl, sp+$68                                    ; $6cd3: $f8 $68
	ldh a, [$5f]                                     ; $6cd5: $f0 $5f
	ldh [$9b], a                                     ; $6cd7: $e0 $9b
	inc b                                            ; $6cd9: $04
	inc c                                            ; $6cda: $0c
	jr nc, jr_06e_6d15                               ; $6cdb: $30 $38

	rrca                                             ; $6cdd: $0f

jr_06e_6cde:
	ldh [$9d], a                                     ; $6cde: $e0 $9d
	inc [hl]                                         ; $6ce0: $34
	inc a                                            ; $6ce1: $3c
	ld [hl], a                                       ; $6ce2: $77
	ldh [c], a                                       ; $6ce3: $e2
	sbc [hl]                                         ; $6ce4: $9e
	jr jr_06e_6d0a                                   ; $6ce5: $18 $23

	ldh [$df], a                                     ; $6ce7: $e0 $df
	inc a                                            ; $6ce9: $3c
	sbc e                                            ; $6cea: $9b
	inc d                                            ; $6ceb: $14
	inc e                                            ; $6cec: $1c
	ld [$7b08], sp                                   ; $6ced: $08 $08 $7b
	cp h                                             ; $6cf0: $bc
	ld e, e                                          ; $6cf1: $5b
	ldh [$bc], a                                     ; $6cf2: $e0 $bc
	ld bc, $eb80                                     ; $6cf4: $01 $80 $eb
	sbc a                                            ; $6cf7: $9f
	add $3f                                          ; $6cf8: $c6 $3f
	adc d                                            ; $6cfa: $8a
	ld a, a                                          ; $6cfb: $7f
	rla                                              ; $6cfc: $17
	cp $3e                                           ; $6cfd: $fe $3e
	rst FarCall                                          ; $6cff: $f7
	halt                                             ; $6d00: $76
	rst $38                                          ; $6d01: $ff
	or l                                             ; $6d02: $b5
	rst $38                                          ; $6d03: $ff
	sub $bd                                          ; $6d04: $d6 $bd
	ld l, e                                          ; $6d06: $6b
	cp [hl]                                          ; $6d07: $be
	ccf                                              ; $6d08: $3f
	rst SubAFromBC                                          ; $6d09: $e7

jr_06e_6d0a:
	or [hl]                                          ; $6d0a: $b6

jr_06e_6d0b:
	rst AddAOntoHL                                          ; $6d0b: $ef
	xor b                                            ; $6d0c: $a8

jr_06e_6d0d:
	rst $38                                          ; $6d0d: $ff
	or a                                             ; $6d0e: $b7
	ld sp, hl                                        ; $6d0f: $f9
	rst SubAFromDE                                          ; $6d10: $df
	di                                               ; $6d11: $f3
	ld a, a                                          ; $6d12: $7f
	di                                               ; $6d13: $f3
	ld [hl], a                                       ; $6d14: $77

jr_06e_6d15:
	add h                                            ; $6d15: $84
	cp $b7                                           ; $6d16: $fe $b7
	ld a, [$7c7b]                                    ; $6d18: $fa $7b $7c
	ld d, l                                          ; $6d1b: $55
	ld a, [hl]                                       ; $6d1c: $7e
	jp c, $fdb7                                      ; $6d1d: $da $b7 $fd

	sbc e                                            ; $6d20: $9b
	rst FarCall                                          ; $6d21: $f7
	sub a                                            ; $6d22: $97
	or c                                             ; $6d23: $b1
	pop de                                           ; $6d24: $d1
	ld c, b                                          ; $6d25: $48
	ld a, b                                          ; $6d26: $78
	jr z, jr_06e_6d61                                ; $6d27: $28 $38

	jr jr_06e_6d43                                   ; $6d29: $18 $18

	ld [$0408], sp                                   ; $6d2b: $08 $08 $04
	inc b                                            ; $6d2e: $04
	ld [bc], a                                       ; $6d2f: $02
	ld [bc], a                                       ; $6d30: $02
	db $fd                                           ; $6d31: $fd
	rst SubAFromDE                                          ; $6d32: $df
	ld bc, $ee96                                     ; $6d33: $01 $96 $ee
	pop af                                           ; $6d36: $f1
	pop de                                           ; $6d37: $d1
	ldh [$a0], a                                     ; $6d38: $e0 $a0
	ret nz                                           ; $6d3a: $c0

	ld h, b                                          ; $6d3b: $60

jr_06e_6d3c:
	add b                                            ; $6d3c: $80
	ret nz                                           ; $6d3d: $c0

	ld a, e                                          ; $6d3e: $7b
	cp $8c                                           ; $6d3f: $fe $8c
	ldh [$80], a                                     ; $6d41: $e0 $80

jr_06e_6d43:
	ldh [$c0], a                                     ; $6d43: $e0 $c0
	ldh a, [$60]                                     ; $6d45: $f0 $60
	ld hl, sp-$80                                    ; $6d47: $f8 $80
	jr c, jr_06e_6d0b                                ; $6d49: $38 $c0

	jr c, jr_06e_6d0d                                ; $6d4b: $38 $c0

	ldh [$f0], a                                     ; $6d4d: $e0 $f0
	cp b                                             ; $6d4f: $b8
	or b                                             ; $6d50: $b0
	db $10                                           ; $6d51: $10
	jr jr_06e_6d3c                                   ; $6d52: $18 $e8

	sbc $f8                                          ; $6d54: $de $f8
	sub [hl]                                         ; $6d56: $96
	ld a, b                                          ; $6d57: $78
	ld l, b                                          ; $6d58: $68
	add sp, $48                                      ; $6d59: $e8 $48
	db $fc                                           ; $6d5b: $fc
	jr nc, jr_06e_6cde                               ; $6d5c: $30 $80

	nop                                              ; $6d5e: $00
	add b                                            ; $6d5f: $80
	ld [hl], a                                       ; $6d60: $77

jr_06e_6d61:
	sbc $7f                                          ; $6d61: $de $7f
	ldh [hDisp1_OBP0], a                                     ; $6d63: $e0 $93
	ldh [$fc], a                                     ; $6d65: $e0 $fc
	or b                                             ; $6d67: $b0
	rst $38                                          ; $6d68: $ff
	sbc h                                            ; $6d69: $9c
	rst $38                                          ; $6d6a: $ff
	xor a                                            ; $6d6b: $af
	rst $38                                          ; $6d6c: $ff
	xor a                                            ; $6d6d: $af
	ldh a, [$bf]                                     ; $6d6e: $f0 $bf

jr_06e_6d70:
	ldh [$7b], a                                     ; $6d70: $e0 $7b
	cp $85                                           ; $6d72: $fe $85
	xor [hl]                                         ; $6d74: $ae
	ei                                               ; $6d75: $fb
	ld e, a                                          ; $6d76: $5f

jr_06e_6d77:
	push af                                          ; $6d77: $f5

jr_06e_6d78:
	cp $73                                           ; $6d78: $fe $73
	ld l, h                                          ; $6d7a: $6c
	inc sp                                           ; $6d7b: $33
	ld h, e                                          ; $6d7c: $63
	ccf                                              ; $6d7d: $3f
	ld a, l                                          ; $6d7e: $7d

jr_06e_6d7f:
	ld c, $53                                        ; $6d7f: $0e $53
	rra                                              ; $6d81: $1f
	scf                                              ; $6d82: $37

jr_06e_6d83:
	rrca                                             ; $6d83: $0f
	ld a, $0e                                        ; $6d84: $3e $0e
	ld a, $0c                                        ; $6d86: $3e $0c
	ccf                                              ; $6d88: $3f
	dec bc                                           ; $6d89: $0b
	dec de                                           ; $6d8a: $1b
	inc bc                                           ; $6d8b: $03
	ld bc, $de03                                     ; $6d8c: $01 $03 $de
	ld bc, $03bf                                     ; $6d8f: $01 $bf $03
	db $d3                                           ; $6d92: $d3
	add c                                            ; $6d93: $81
	rst $38                                          ; $6d94: $ff
	ld e, c                                          ; $6d95: $59
	rst $38                                          ; $6d96: $ff
	db $fd                                           ; $6d97: $fd
	rst FarCall                                          ; $6d98: $f7
	cp e                                             ; $6d99: $bb
	rst FarCall                                          ; $6d9a: $f7
	sbc a                                            ; $6d9b: $9f
	di                                               ; $6d9c: $f3
	db $ed                                           ; $6d9d: $ed
	inc de                                           ; $6d9e: $13
	cp [hl]                                          ; $6d9f: $be
	pop bc                                           ; $6da0: $c1
	rst AddAOntoHL                                          ; $6da1: $ef
	ldh a, [$3b]                                     ; $6da2: $f0 $3b
	inc a                                            ; $6da4: $3c
	ld [hl], a                                       ; $6da5: $77
	ld a, b                                          ; $6da6: $78
	rst $38                                          ; $6da7: $ff
	ldh a, [$d7]                                     ; $6da8: $f0 $d7
	ldh a, [$37]                                     ; $6daa: $f0 $37
	ret nc                                           ; $6dac: $d0

	cp a                                             ; $6dad: $bf
	jr nz, jr_06e_6d7f                               ; $6dae: $20 $cf

	ldh a, [rTAC]                                    ; $6db0: $f0 $07
	cp l                                             ; $6db2: $bd
	rrca                                             ; $6db3: $0f
	rra                                              ; $6db4: $1f
	rra                                              ; $6db5: $1f
	ld e, $86                                        ; $6db6: $1e $86
	ld bc, $013e                                     ; $6db8: $01 $3e $01
	dec a                                            ; $6dbb: $3d
	inc bc                                           ; $6dbc: $03
	dec sp                                           ; $6dbd: $3b
	rlca                                             ; $6dbe: $07
	scf                                              ; $6dbf: $37
	rrca                                             ; $6dc0: $0f
	ld l, l                                          ; $6dc1: $6d
	rra                                              ; $6dc2: $1f
	ld e, l                                          ; $6dc3: $5d
	ccf                                              ; $6dc4: $3f
	cp c                                             ; $6dc5: $b9
	ld a, a                                          ; $6dc6: $7f
	ld [hl], c                                       ; $6dc7: $71
	rst $38                                          ; $6dc8: $ff
	ret nz                                           ; $6dc9: $c0

	rst $38                                          ; $6dca: $ff
	ld [hl], b                                       ; $6dcb: $70
	rrca                                             ; $6dcc: $0f
	jr jr_06e_6dd6                                   ; $6dcd: $18 $07

	ld [$2307], sp                                   ; $6dcf: $08 $07 $23
	jr nz, jr_06e_6d70                               ; $6dd2: $20 $9c

	ld hl, sp-$21                                    ; $6dd4: $f8 $df

jr_06e_6dd6:
	pop af                                           ; $6dd6: $f1
	ld a, e                                          ; $6dd7: $7b
	jr nz, jr_06e_6d78                               ; $6dd8: $20 $9e

	ei                                               ; $6dda: $fb
	inc bc                                           ; $6ddb: $03
	jr nz, jr_06e_6e11                               ; $6ddc: $20 $33

	jr nz, jr_06e_6d77                               ; $6dde: $20 $97

	ld a, b                                          ; $6de0: $78
	add b                                            ; $6de1: $80
	ldh a, [rP1]                                     ; $6de2: $f0 $00
	ld hl, sp-$10                                    ; $6de4: $f8 $f0
	sub b                                            ; $6de6: $90
	sbc b                                            ; $6de7: $98
	inc bc                                           ; $6de8: $03
	jr nz, jr_06e_6e3a                               ; $6de9: $20 $4f

	jr nz, jr_06e_6d83                               ; $6deb: $20 $96

	inc e                                            ; $6ded: $1c
	scf                                              ; $6dee: $37
	dec bc                                           ; $6def: $0b
	ccf                                              ; $6df0: $3f
	rlca                                             ; $6df1: $07
	ld a, $0e                                        ; $6df2: $3e $0e
	ccf                                              ; $6df4: $3f
	rrca                                             ; $6df5: $0f
	cpl                                              ; $6df6: $2f
	jr nz, @-$67                                     ; $6df7: $20 $97

	cp $01                                           ; $6df9: $fe $01
	rst SubAFromDE                                          ; $6dfb: $df
	ldh [$f7], a                                     ; $6dfc: $e0 $f7
	ld hl, sp+$7b                                    ; $6dfe: $f8 $7b
	ld a, h                                          ; $6e00: $7c
	ld d, a                                          ; $6e01: $57
	jr nz, jr_06e_6e1f                               ; $6e02: $20 $1b

	ld b, b                                          ; $6e04: $40
	sbc b                                            ; $6e05: $98
	ldh a, [$7f]                                     ; $6e06: $f0 $7f
	ldh a, [rPCM34]                                  ; $6e08: $f0 $77
	ld hl, sp-$49                                    ; $6e0a: $f8 $b7
	ei                                               ; $6e0c: $fb
	inc bc                                           ; $6e0d: $03
	ld b, b                                          ; $6e0e: $40

jr_06e_6e0f:
	inc sp                                           ; $6e0f: $33
	ld b, b                                          ; $6e10: $40

jr_06e_6e11:
	sbc [hl]                                         ; $6e11: $9e
	ld hl, sp-$41                                    ; $6e12: $f8 $bf
	sub b                                            ; $6e14: $90
	ld a, b                                          ; $6e15: $78
	sbc [hl]                                         ; $6e16: $9e
	ld [hl], b                                       ; $6e17: $70
	db $dd                                           ; $6e18: $dd
	ld hl, sp+$03                                    ; $6e19: $f8 $03
	ld b, b                                          ; $6e1b: $40
	ld d, a                                          ; $6e1c: $57
	ld b, b                                          ; $6e1d: $40
	sub h                                            ; $6e1e: $94

jr_06e_6e1f:
	ld [$003f], sp                                   ; $6e1f: $08 $3f $00
	dec a                                            ; $6e22: $3d
	ld bc, $033b                                     ; $6e23: $01 $3b $03
	dec de                                           ; $6e26: $1b
	rlca                                             ; $6e27: $07
	dec c                                            ; $6e28: $0d
	rrca                                             ; $6e29: $0f
	scf                                              ; $6e2a: $37
	ld b, b                                          ; $6e2b: $40
	sbc [hl]                                         ; $6e2c: $9e
	rst $38                                          ; $6e2d: $ff
	cp a                                             ; $6e2e: $bf
	rst $38                                          ; $6e2f: $ff
	rst AddAOntoHL                                          ; $6e30: $ef

jr_06e_6e31:
	sbc h                                            ; $6e31: $9c
	ldh a, [rIE]                                     ; $6e32: $f0 $ff
	db $fc                                           ; $6e34: $fc
	inc de                                           ; $6e35: $13
	ld b, b                                          ; $6e36: $40
	sbc l                                            ; $6e37: $9d
	and $b7                                          ; $6e38: $e6 $b7

jr_06e_6e3a:
	ld d, a                                          ; $6e3a: $57
	ld b, b                                          ; $6e3b: $40
	ld a, e                                          ; $6e3c: $7b
	db $10                                           ; $6e3d: $10
	sbc l                                            ; $6e3e: $9d
	ld d, l                                          ; $6e3f: $55
	ld a, a                                          ; $6e40: $7f
	inc bc                                           ; $6e41: $03
	ld b, b                                          ; $6e42: $40
	ld d, a                                          ; $6e43: $57
	ld b, b                                          ; $6e44: $40
	ld a, [hl]                                       ; $6e45: $7e
	add [hl]                                         ; $6e46: $86
	ld l, e                                          ; $6e47: $6b
	ld b, b                                          ; $6e48: $40
	db $fd                                           ; $6e49: $fd
	sbc c                                            ; $6e4a: $99
	ldh [rP1], a                                     ; $6e4b: $e0 $00
	sbc h                                            ; $6e4d: $9c
	inc c                                            ; $6e4e: $0c
	ld hl, sp-$08                                    ; $6e4f: $f8 $f8
	inc bc                                           ; $6e51: $03
	ld b, b                                          ; $6e52: $40
	sub l                                            ; $6e53: $95
	inc sp                                           ; $6e54: $33
	ld l, e                                          ; $6e55: $6b
	scf                                              ; $6e56: $37
	ld [hl], l                                       ; $6e57: $75
	ld c, $4b                                        ; $6e58: $0e $4b
	inc e                                            ; $6e5a: $1c
	scf                                              ; $6e5b: $37
	jr jr_06e_6e9d                                   ; $6e5c: $18 $3f

	cp h                                             ; $6e5e: $bc
	inc a                                            ; $6e5f: $3c
	jr c, jr_06e_6e7b                                ; $6e60: $38 $19

	nop                                              ; $6e62: $00
	rlca                                             ; $6e63: $07
	sbc [hl]                                         ; $6e64: $9e
	rlca                                             ; $6e65: $07
	ld a, d                                          ; $6e66: $7a
	ld a, e                                          ; $6e67: $7b
	dec sp                                           ; $6e68: $3b
	ld b, b                                          ; $6e69: $40
	ld a, a                                          ; $6e6a: $7f
	sbc $94                                          ; $6e6b: $de $94
	ld a, a                                          ; $6e6d: $7f
	nop                                              ; $6e6e: $00
	rst AddAOntoHL                                          ; $6e6f: $ef
	jr jr_06e_6e31                                   ; $6e70: $18 $bf

	ld [hl], b                                       ; $6e72: $70
	rst AddAOntoHL                                          ; $6e73: $ef
	ldh a, [$df]                                     ; $6e74: $f0 $df
	ldh [rTAC], a                                    ; $6e76: $e0 $07
	cp [hl]                                          ; $6e78: $be
	ld [hl], b                                       ; $6e79: $70
	ld a, b                                          ; $6e7a: $78

jr_06e_6e7b:
	jr c, jr_06e_6e0f                                ; $6e7b: $38 $92

	ld b, b                                          ; $6e7d: $40
	ret nc                                           ; $6e7e: $d0

	ld h, b                                          ; $6e7f: $60
	ld h, b                                          ; $6e80: $60
	jr nz, jr_06e_6e83                               ; $6e81: $20 $00

jr_06e_6e83:
	nop                                              ; $6e83: $00
	jr c, jr_06e_6eb6                                ; $6e84: $38 $30

	nop                                              ; $6e86: $00
	nop                                              ; $6e87: $00
	ld [$fd10], sp                                   ; $6e88: $08 $10 $fd
	sub l                                            ; $6e8b: $95
	ld b, e                                          ; $6e8c: $43
	add b                                            ; $6e8d: $80
	db $ed                                           ; $6e8e: $ed
	di                                               ; $6e8f: $f3
	rst $38                                          ; $6e90: $ff
	cp $64                                           ; $6e91: $fe $64
	ld hl, sp+$68                                    ; $6e93: $f8 $68
	ldh a, [rVBK]                                    ; $6e95: $f0 $4f
	ldh [$df], a                                     ; $6e97: $e0 $df
	jr @+$01                                         ; $6e99: $18 $ff

	ld a, e                                          ; $6e9b: $7b
	db $fd                                           ; $6e9c: $fd

jr_06e_6e9d:
	daa                                              ; $6e9d: $27
	ldh [$9d], a                                     ; $6e9e: $e0 $9d
	jr c, jr_06e_6eca                                ; $6ea0: $38 $28

	rrca                                             ; $6ea2: $0f
	ldh [$9b], a                                     ; $6ea3: $e0 $9b
	jr nc, jr_06e_6ecf                               ; $6ea5: $30 $28

	jr jr_06e_6ee1                                   ; $6ea7: $18 $38

	ld a, e                                          ; $6ea9: $7b
	pop hl                                           ; $6eaa: $e1
	sbc [hl]                                         ; $6eab: $9e
	ld [$e05b], sp                                   ; $6eac: $08 $5b $e0
	cp b                                             ; $6eaf: $b8
	ld bc, $eb80                                     ; $6eb0: $01 $80 $eb
	sbc a                                            ; $6eb3: $9f
	add $3f                                          ; $6eb4: $c6 $3f

jr_06e_6eb6:
	adc d                                            ; $6eb6: $8a
	ld a, a                                          ; $6eb7: $7f
	rla                                              ; $6eb8: $17
	cp $3e                                           ; $6eb9: $fe $3e
	rst FarCall                                          ; $6ebb: $f7
	halt                                             ; $6ebc: $76
	rst $38                                          ; $6ebd: $ff
	or l                                             ; $6ebe: $b5
	rst $38                                          ; $6ebf: $ff
	sub $bd                                          ; $6ec0: $d6 $bd
	ld l, e                                          ; $6ec2: $6b
	cp [hl]                                          ; $6ec3: $be
	ccf                                              ; $6ec4: $3f
	and $b7                                          ; $6ec5: $e6 $b7
	rst AddAOntoHL                                          ; $6ec7: $ef
	xor b                                            ; $6ec8: $a8
	rst $38                                          ; $6ec9: $ff

jr_06e_6eca:
	or a                                             ; $6eca: $b7
	ld hl, sp-$21                                    ; $6ecb: $f8 $df
	pop af                                           ; $6ecd: $f1
	ld a, a                                          ; $6ece: $7f

jr_06e_6ecf:
	di                                               ; $6ecf: $f3
	ld [hl], a                                       ; $6ed0: $77
	add h                                            ; $6ed1: $84
	cp $b7                                           ; $6ed2: $fe $b7
	ld a, [$7c7b]                                    ; $6ed4: $fa $7b $7c

Call_06e_6ed7:
	ld d, l                                          ; $6ed7: $55
	ld a, [hl]                                       ; $6ed8: $7e
	jp c, $fdb7                                      ; $6ed9: $da $b7 $fd

	sbc e                                            ; $6edc: $9b
	rst FarCall                                          ; $6edd: $f7
	sub a                                            ; $6ede: $97
	or c                                             ; $6edf: $b1
	pop de                                           ; $6ee0: $d1

jr_06e_6ee1:
	ld c, b                                          ; $6ee1: $48
	ld a, b                                          ; $6ee2: $78
	jr z, jr_06e_6f1d                                ; $6ee3: $28 $38

	jr jr_06e_6eff                                   ; $6ee5: $18 $18

	ld [$0408], sp                                   ; $6ee7: $08 $08 $04
	inc b                                            ; $6eea: $04
	ld [bc], a                                       ; $6eeb: $02
	ld [bc], a                                       ; $6eec: $02
	db $fd                                           ; $6eed: $fd
	rst SubAFromDE                                          ; $6eee: $df
	ld bc, $ee96                                     ; $6eef: $01 $96 $ee
	pop af                                           ; $6ef2: $f1
	pop de                                           ; $6ef3: $d1
	ldh [$a0], a                                     ; $6ef4: $e0 $a0
	ret nz                                           ; $6ef6: $c0

	ld h, b                                          ; $6ef7: $60

jr_06e_6ef8:
	add b                                            ; $6ef8: $80

jr_06e_6ef9:
	ret nz                                           ; $6ef9: $c0

	ld a, e                                          ; $6efa: $7b
	cp $8c                                           ; $6efb: $fe $8c
	ldh [$80], a                                     ; $6efd: $e0 $80

jr_06e_6eff:
	ldh [$c0], a                                     ; $6eff: $e0 $c0
	ldh a, [$60]                                     ; $6f01: $f0 $60
	ld hl, sp+$00                                    ; $6f03: $f8 $00
	ld hl, sp-$40                                    ; $6f05: $f8 $c0
	jr c, jr_06e_6ef9                                ; $6f07: $38 $f0

	ldh [$f0], a                                     ; $6f09: $e0 $f0
	ld hl, sp-$10                                    ; $6f0b: $f8 $f0
	db $10                                           ; $6f0d: $10
	jr jr_06e_6ef8                                   ; $6f0e: $18 $e8

	sbc $f8                                          ; $6f10: $de $f8
	sub [hl]                                         ; $6f12: $96
	ld a, b                                          ; $6f13: $78
	ld l, b                                          ; $6f14: $68
	add sp, $48                                      ; $6f15: $e8 $48
	db $fc                                           ; $6f17: $fc
	jr nc, @-$7e                                     ; $6f18: $30 $80

	nop                                              ; $6f1a: $00
	add b                                            ; $6f1b: $80
	ld [hl], a                                       ; $6f1c: $77

jr_06e_6f1d:
	sbc $7f                                          ; $6f1d: $de $7f
	ldh [hDisp1_OBP0], a                                     ; $6f1f: $e0 $93
	ldh [$fc], a                                     ; $6f21: $e0 $fc
	or b                                             ; $6f23: $b0
	rst $38                                          ; $6f24: $ff
	sbc h                                            ; $6f25: $9c

jr_06e_6f26:
	rst $38                                          ; $6f26: $ff
	xor a                                            ; $6f27: $af
	rst $38                                          ; $6f28: $ff
	xor a                                            ; $6f29: $af
	ldh a, [$bf]                                     ; $6f2a: $f0 $bf
	ldh [$7b], a                                     ; $6f2c: $e0 $7b
	cp $85                                           ; $6f2e: $fe $85
	xor [hl]                                         ; $6f30: $ae
	ei                                               ; $6f31: $fb
	ld e, a                                          ; $6f32: $5f
	push af                                          ; $6f33: $f5
	cp $73                                           ; $6f34: $fe $73
	ld l, h                                          ; $6f36: $6c

jr_06e_6f37:
	inc sp                                           ; $6f37: $33
	ld h, e                                          ; $6f38: $63
	ccf                                              ; $6f39: $3f
	ld a, l                                          ; $6f3a: $7d

jr_06e_6f3b:
	ld b, $1b                                        ; $6f3b: $06 $1b
	inc c                                            ; $6f3d: $0c
	dec de                                           ; $6f3e: $1b

jr_06e_6f3f:
	dec e                                            ; $6f3f: $1d
	scf                                              ; $6f40: $37
	ccf                                              ; $6f41: $3f
	ld a, $0c                                        ; $6f42: $3e $0c
	ccf                                              ; $6f44: $3f
	dec bc                                           ; $6f45: $0b
	dec de                                           ; $6f46: $1b
	inc bc                                           ; $6f47: $03
	ld bc, $de03                                     ; $6f48: $01 $03 $de
	ld bc, $03bf                                     ; $6f4b: $01 $bf $03

jr_06e_6f4e:
	db $d3                                           ; $6f4e: $d3
	add c                                            ; $6f4f: $81
	rst $38                                          ; $6f50: $ff
	ld e, c                                          ; $6f51: $59
	rst $38                                          ; $6f52: $ff
	db $fd                                           ; $6f53: $fd
	rst FarCall                                          ; $6f54: $f7
	cp e                                             ; $6f55: $bb
	rst FarCall                                          ; $6f56: $f7
	sbc a                                            ; $6f57: $9f
	di                                               ; $6f58: $f3
	db $ed                                           ; $6f59: $ed
	inc de                                           ; $6f5a: $13
	cp $01                                           ; $6f5b: $fe $01
	rst AddAOntoHL                                          ; $6f5d: $ef
	ldh a, [$fb]                                     ; $6f5e: $f0 $fb
	db $fc                                           ; $6f60: $fc
	ld [hl], a                                       ; $6f61: $77
	ld a, b                                          ; $6f62: $78
	rst $38                                          ; $6f63: $ff
	ldh a, [$d7]                                     ; $6f64: $f0 $d7
	ldh a, [$37]                                     ; $6f66: $f0 $37
	ret nc                                           ; $6f68: $d0

	cp a                                             ; $6f69: $bf
	jr nz, jr_06e_6f3b                               ; $6f6a: $20 $cf

	ldh a, [rTAC]                                    ; $6f6c: $f0 $07
	cp l                                             ; $6f6e: $bd
	rrca                                             ; $6f6f: $0f
	rra                                              ; $6f70: $1f
	rra                                              ; $6f71: $1f
	ld e, $86                                        ; $6f72: $1e $86
	ld bc, $013e                                     ; $6f74: $01 $3e $01
	dec a                                            ; $6f77: $3d
	inc bc                                           ; $6f78: $03
	dec sp                                           ; $6f79: $3b
	rlca                                             ; $6f7a: $07
	scf                                              ; $6f7b: $37
	rrca                                             ; $6f7c: $0f
	ld l, l                                          ; $6f7d: $6d
	rra                                              ; $6f7e: $1f
	ld e, l                                          ; $6f7f: $5d
	ccf                                              ; $6f80: $3f
	cp c                                             ; $6f81: $b9
	ld a, a                                          ; $6f82: $7f
	ld [hl], c                                       ; $6f83: $71
	rst $38                                          ; $6f84: $ff
	ret nz                                           ; $6f85: $c0

	rst $38                                          ; $6f86: $ff
	ld [hl], b                                       ; $6f87: $70
	rrca                                             ; $6f88: $0f
	jr jr_06e_6f92                                   ; $6f89: $18 $07

	ld [$1b07], sp                                   ; $6f8b: $08 $07 $1b
	jr nz, jr_06e_6f26                               ; $6f8e: $20 $96

	ldh a, [$7f]                                     ; $6f90: $f0 $7f

jr_06e_6f92:
	pop af                                           ; $6f92: $f1
	ld [hl], a                                       ; $6f93: $77
	ei                                               ; $6f94: $fb
	or a                                             ; $6f95: $b7
	cp $7b                                           ; $6f96: $fe $7b
	ld a, [hl]                                       ; $6f98: $7e

jr_06e_6f99:
	inc bc                                           ; $6f99: $03
	jr nz, jr_06e_6fd7                               ; $6f9a: $20 $3b

	jr nz, jr_06e_6f37                               ; $6f9c: $20 $99

	ret nz                                           ; $6f9e: $c0

	jr nc, jr_06e_6f99                               ; $6f9f: $30 $f8

	ldh a, [$f0]                                     ; $6fa1: $f0 $f0
	ld hl, sp+$03                                    ; $6fa3: $f8 $03
	jr nz, jr_06e_6fee                               ; $6fa5: $20 $47

	jr nz, jr_06e_6f3f                               ; $6fa7: $20 $96

	inc e                                            ; $6fa9: $1c
	scf                                              ; $6faa: $37
	add hl, sp                                       ; $6fab: $39
	ccf                                              ; $6fac: $3f
	rlca                                             ; $6fad: $07
	ccf                                              ; $6fae: $3f
	rrca                                             ; $6faf: $0f
	dec de                                           ; $6fb0: $1b
	dec bc                                           ; $6fb1: $0b
	cpl                                              ; $6fb2: $2f
	jr nz, jr_06e_6f4e                               ; $6fb3: $20 $99

	rst $38                                          ; $6fb5: $ff
	nop                                              ; $6fb6: $00
	rst $38                                          ; $6fb7: $ff
	ldh [rIE], a                                     ; $6fb8: $e0 $ff
	ld hl, sp+$57                                    ; $6fba: $f8 $57
	jr nz, @+$15                                     ; $6fbc: $20 $13

	ld b, b                                          ; $6fbe: $40
	sbc b                                            ; $6fbf: $98
	ldh a, [rPCM34]                                  ; $6fc0: $f0 $77
	ld hl, sp-$49                                    ; $6fc2: $f8 $b7
	ei                                               ; $6fc4: $fb
	ld a, e                                          ; $6fc5: $7b
	ld a, l                                          ; $6fc6: $7d
	inc bc                                           ; $6fc7: $03
	ld b, b                                          ; $6fc8: $40
	ld [hl], $60                                     ; $6fc9: $36 $60

jr_06e_6fcb:
	sbc l                                            ; $6fcb: $9d
	db $10                                           ; $6fcc: $10
	ld hl, sp-$41                                    ; $6fcd: $f8 $bf
	db $10                                           ; $6fcf: $10
	ld hl, sp-$66                                    ; $6fd0: $f8 $9a
	ld hl, sp-$04                                    ; $6fd2: $f8 $fc
	db $fc                                           ; $6fd4: $fc
	ld hl, sp-$18                                    ; $6fd5: $f8 $e8

jr_06e_6fd7:
	inc bc                                           ; $6fd7: $03
	ld b, b                                          ; $6fd8: $40
	ld d, a                                          ; $6fd9: $57
	ld b, b                                          ; $6fda: $40
	sub [hl]                                         ; $6fdb: $96
	jr c, jr_06e_701b                                ; $6fdc: $38 $3d

	ld bc, $033b                                     ; $6fde: $01 $3b $03
	rra                                              ; $6fe1: $1f
	rlca                                             ; $6fe2: $07
	rrca                                             ; $6fe3: $0f
	rrca                                             ; $6fe4: $0f
	dec hl                                           ; $6fe5: $2b
	ld b, b                                          ; $6fe6: $40
	sbc d                                            ; $6fe7: $9a
	nop                                              ; $6fe8: $00

jr_06e_6fe9:
	rst AddAOntoHL                                          ; $6fe9: $ef
	ldh a, [rIE]                                     ; $6fea: $f0 $ff
	db $fc                                           ; $6fec: $fc
	inc bc                                           ; $6fed: $03

jr_06e_6fee:
	ld b, b                                          ; $6fee: $40
	ld e, a                                          ; $6fef: $5f
	ld b, b                                          ; $6ff0: $40
	sbc [hl]                                         ; $6ff1: $9e
	ld hl, sp+$79                                    ; $6ff2: $f8 $79
	and b                                            ; $6ff4: $a0
	sbc [hl]                                         ; $6ff5: $9e
	ld a, a                                          ; $6ff6: $7f
	inc bc                                           ; $6ff7: $03
	ld b, b                                          ; $6ff8: $40
	ld d, e                                          ; $6ff9: $53
	ld b, b                                          ; $6ffa: $40
	sbc c                                            ; $6ffb: $99
	cp b                                             ; $6ffc: $b8
	ret nz                                           ; $6ffd: $c0

	ld l, b                                          ; $6ffe: $68
	ldh a, [$d0]                                     ; $6fff: $f0 $d0
	jr nc, jr_06e_707a                               ; $7001: $30 $77

	ld b, b                                          ; $7003: $40
	rst $38                                          ; $7004: $ff
	sbc e                                            ; $7005: $9b
	ldh [rP1], a                                     ; $7006: $e0 $00
	sbc h                                            ; $7008: $9c
	inc c                                            ; $7009: $0c
	ld a, e                                          ; $700a: $7b
	ld a, [hl-]                                      ; $700b: $3a
	inc bc                                           ; $700c: $03
	ld b, b                                          ; $700d: $40
	ld l, a                                          ; $700e: $6f
	ld b, b                                          ; $700f: $40
	sbc b                                            ; $7010: $98
	dec bc                                           ; $7011: $0b
	inc e                                            ; $7012: $1c
	rla                                              ; $7013: $17
	jr c, jr_06e_7052                                ; $7014: $38 $3c

	jr nc, jr_06e_7050                               ; $7016: $30 $38

	cp [hl]                                          ; $7018: $be
	add hl, de                                       ; $7019: $19
	nop                                              ; $701a: $00

jr_06e_701b:
	rlca                                             ; $701b: $07
	sbc h                                            ; $701c: $9c
	rlca                                             ; $701d: $07
	ld bc, $3701                                     ; $701e: $01 $01 $37
	ld b, b                                          ; $7021: $40
	sbc [hl]                                         ; $7022: $9e
	ccf                                              ; $7023: $3f
	cp a                                             ; $7024: $bf
	ld a, a                                          ; $7025: $7f
	rst AddAOntoHL                                          ; $7026: $ef
	sub a                                            ; $7027: $97
	jr jr_06e_6fe9                                   ; $7028: $18 $bf

	ld [hl], b                                       ; $702a: $70
	rst AddAOntoHL                                          ; $702b: $ef
	ldh a, [$df]                                     ; $702c: $f0 $df
	ldh [rTAC], a                                    ; $702e: $e0 $07
	cp [hl]                                          ; $7030: $be
	ld [hl], b                                       ; $7031: $70
	ld a, b                                          ; $7032: $78
	jr c, jr_06e_6fcb                                ; $7033: $38 $96

	ld b, b                                          ; $7035: $40
	ret nc                                           ; $7036: $d0

	ld h, b                                          ; $7037: $60
	ld h, b                                          ; $7038: $60
	jr nz, jr_06e_703b                               ; $7039: $20 $00

jr_06e_703b:
	nop                                              ; $703b: $00
	inc e                                            ; $703c: $1c
	jr c, @+$79                                      ; $703d: $38 $77

	adc [hl]                                         ; $703f: $8e
	sbc [hl]                                         ; $7040: $9e
	jr @-$3f                                         ; $7041: $18 $bf

	nop                                              ; $7043: $00
	ld b, e                                          ; $7044: $43
	sub [hl]                                         ; $7045: $96
	add b                                            ; $7046: $80
	db $ed                                           ; $7047: $ed
	di                                               ; $7048: $f3
	rst $38                                          ; $7049: $ff
	cp $64                                           ; $704a: $fe $64
	ld hl, sp+$68                                    ; $704c: $f8 $68
	ldh a, [rVBK]                                    ; $704e: $f0 $4f

jr_06e_7050:
	ldh [$7f], a                                     ; $7050: $e0 $7f

jr_06e_7052:
	ld b, l                                          ; $7052: $45
	rla                                              ; $7053: $17
	ldh [$9c], a                                     ; $7054: $e0 $9c
	inc a                                            ; $7056: $3c
	jr c, @+$2e                                      ; $7057: $38 $2c

	ld a, e                                          ; $7059: $7b
	db $e3                                           ; $705a: $e3
	rra                                              ; $705b: $1f
	ldh [$7f], a                                     ; $705c: $e0 $7f
	ld h, a                                          ; $705e: $67
	ld a, a                                          ; $705f: $7f
	ldh [$9e], a                                     ; $7060: $e0 $9e
	inc e                                            ; $7062: $1c
	ld [hl], e                                       ; $7063: $73
	sbc $5f                                          ; $7064: $de $5f
	ldh [rAUD2HIGH], a                               ; $7066: $e0 $19
	ld bc, $eb80                                     ; $7068: $01 $80 $eb
	sbc a                                            ; $706b: $9f
	add $3f                                          ; $706c: $c6 $3f
	adc d                                            ; $706e: $8a
	ld a, a                                          ; $706f: $7f
	rla                                              ; $7070: $17
	cp $3e                                           ; $7071: $fe $3e
	rst FarCall                                          ; $7073: $f7
	halt                                             ; $7074: $76
	rst $38                                          ; $7075: $ff
	or l                                             ; $7076: $b5
	rst $38                                          ; $7077: $ff
	sub $bd                                          ; $7078: $d6 $bd

jr_06e_707a:
	ld l, e                                          ; $707a: $6b
	cp [hl]                                          ; $707b: $be
	ccf                                              ; $707c: $3f
	rst SubAFromBC                                          ; $707d: $e7
	cp a                                             ; $707e: $bf
	ldh [$af], a                                     ; $707f: $e0 $af
	ldh a, [$bf]                                     ; $7081: $f0 $bf
	pop af                                           ; $7083: $f1
	sbc $f7                                          ; $7084: $de $f7
	ld a, a                                          ; $7086: $7f
	ldh a, [rPCM34]                                  ; $7087: $f0 $77
	add h                                            ; $7089: $84
	ld hl, sp-$49                                    ; $708a: $f8 $b7
	ld hl, sp+$7b                                    ; $708c: $f8 $7b
	ld a, h                                          ; $708e: $7c
	ld d, l                                          ; $708f: $55
	ld a, a                                          ; $7090: $7f
	jp c, $fdb7                                      ; $7091: $da $b7 $fd

	sbc e                                            ; $7094: $9b
	rst FarCall                                          ; $7095: $f7
	sub a                                            ; $7096: $97
	or c                                             ; $7097: $b1
	pop de                                           ; $7098: $d1
	ld c, b                                          ; $7099: $48
	ld a, b                                          ; $709a: $78
	jr z, @+$3a                                      ; $709b: $28 $38

	jr jr_06e_70b7                                   ; $709d: $18 $18

	ld [$0408], sp                                   ; $709f: $08 $08 $04
	inc b                                            ; $70a2: $04
	ld [bc], a                                       ; $70a3: $02
	ld [bc], a                                       ; $70a4: $02
	db $fd                                           ; $70a5: $fd
	rst SubAFromDE                                          ; $70a6: $df
	ld bc, $ee96                                     ; $70a7: $01 $96 $ee
	pop af                                           ; $70aa: $f1
	pop de                                           ; $70ab: $d1
	ldh [$a0], a                                     ; $70ac: $e0 $a0
	ret nz                                           ; $70ae: $c0

	ld h, b                                          ; $70af: $60
	add b                                            ; $70b0: $80
	ret nz                                           ; $70b1: $c0

	ld a, e                                          ; $70b2: $7b
	cp $90                                           ; $70b3: $fe $90
	ldh [$80], a                                     ; $70b5: $e0 $80

jr_06e_70b7:
	ldh [$c0], a                                     ; $70b7: $e0 $c0
	ldh a, [$60]                                     ; $70b9: $f0 $60
	add sp, $30                                      ; $70bb: $e8 $30
	add sp, $70                                      ; $70bd: $e8 $70
	ret c                                            ; $70bf: $d8

	ldh [$b0], a                                     ; $70c0: $e0 $b0
	ret nz                                           ; $70c2: $c0

	ld hl, sp-$41                                    ; $70c3: $f8 $bf
	ld hl, sp-$46                                    ; $70c5: $f8 $ba
	sub a                                            ; $70c7: $97
	ld a, b                                          ; $70c8: $78
	db $fd                                           ; $70c9: $fd
	db $fc                                           ; $70ca: $fc
	and $e0                                          ; $70cb: $e6 $e0
	db $fd                                           ; $70cd: $fd
	add b                                            ; $70ce: $80
	add sp, -$41                                     ; $70cf: $e8 $bf
	ret nz                                           ; $70d1: $c0

	add b                                            ; $70d2: $80
	ld [hl], a                                       ; $70d3: $77
	sbc $7f                                          ; $70d4: $de $7f
	ldh [$97], a                                     ; $70d6: $e0 $97
	ldh [$fc], a                                     ; $70d8: $e0 $fc
	or b                                             ; $70da: $b0
	rst $38                                          ; $70db: $ff
	sbc h                                            ; $70dc: $9c
	rst $38                                          ; $70dd: $ff
	xor a                                            ; $70de: $af
	rst $38                                          ; $70df: $ff
	ld a, e                                          ; $70e0: $7b
	sbc l                                            ; $70e1: $9d
	sbc [hl]                                         ; $70e2: $9e
	ldh [$7b], a                                     ; $70e3: $e0 $7b
	cp $8c                                           ; $70e5: $fe $8c
	xor [hl]                                         ; $70e7: $ae
	ei                                               ; $70e8: $fb
	ld e, a                                          ; $70e9: $5f
	push af                                          ; $70ea: $f5
	cp $73                                           ; $70eb: $fe $73
	ld l, h                                          ; $70ed: $6c
	inc sp                                           ; $70ee: $33
	ld l, a                                          ; $70ef: $6f
	jr nc, jr_06e_7171                               ; $70f0: $30 $7f

	nop                                              ; $70f2: $00
	ld a, e                                          ; $70f3: $7b
	inc e                                            ; $70f4: $1c
	cpl                                              ; $70f5: $2f
	rra                                              ; $70f6: $1f
	inc a                                            ; $70f7: $3c
	inc bc                                           ; $70f8: $03
	ccf                                              ; $70f9: $3f
	cp a                                             ; $70fa: $bf
	ccf                                              ; $70fb: $3f
	rra                                              ; $70fc: $1f
	sbc [hl]                                         ; $70fd: $9e
	ld bc, $03de                                     ; $70fe: $01 $de $03
	sbc l                                            ; $7101: $9d
	ld [bc], a                                       ; $7102: $02
	dec d                                            ; $7103: $15
	cp a                                             ; $7104: $bf
	xor e                                            ; $7105: $ab
	db $d3                                           ; $7106: $d3
	adc l                                            ; $7107: $8d
	rst $38                                          ; $7108: $ff
	ld e, c                                          ; $7109: $59
	rst $38                                          ; $710a: $ff
	db $fd                                           ; $710b: $fd
	rst FarCall                                          ; $710c: $f7
	cp e                                             ; $710d: $bb
	rst FarCall                                          ; $710e: $f7
	sbc a                                            ; $710f: $9f
	ld [hl], e                                       ; $7110: $73
	db $fd                                           ; $7111: $fd
	inc bc                                           ; $7112: $03
	cp $01                                           ; $7113: $fe $01
	cp a                                             ; $7115: $bf
	ret nz                                           ; $7116: $c0

	ld a, a                                          ; $7117: $7f
	db $fc                                           ; $7118: $fc
	rst $38                                          ; $7119: $ff
	cp a                                             ; $711a: $bf
	rst $38                                          ; $711b: $ff
	rst AddAOntoHL                                          ; $711c: $ef
	sbc e                                            ; $711d: $9b
	ldh a, [rIE]                                     ; $711e: $f0 $ff
	db $fc                                           ; $7120: $fc
	rst JumpTable                                          ; $7121: $c7
	cp e                                             ; $7122: $bb
	rst $38                                          ; $7123: $ff
	add a                                            ; $7124: $87
	ld c, a                                          ; $7125: $4f
	sbc a                                            ; $7126: $9f
	rra                                              ; $7127: $1f
	ld e, $85                                        ; $7128: $1e $85
	ld bc, $013e                                     ; $712a: $01 $3e $01
	dec a                                            ; $712d: $3d
	inc bc                                           ; $712e: $03
	dec sp                                           ; $712f: $3b
	rlca                                             ; $7130: $07
	scf                                              ; $7131: $37
	rrca                                             ; $7132: $0f
	ld l, l                                          ; $7133: $6d
	rra                                              ; $7134: $1f
	ld e, l                                          ; $7135: $5d
	ccf                                              ; $7136: $3f
	cp c                                             ; $7137: $b9
	ld a, a                                          ; $7138: $7f
	ld [hl], c                                       ; $7139: $71
	rst $38                                          ; $713a: $ff
	ret nz                                           ; $713b: $c0

	rst $38                                          ; $713c: $ff
	ld [hl], b                                       ; $713d: $70

Jump_06e_713e:
	rrca                                             ; $713e: $0f
	jr jr_06e_7148                                   ; $713f: $18 $07

	ld [$7507], sp                                   ; $7141: $08 $07 $75
	cp a                                             ; $7144: $bf
	ld a, [$9338]                                    ; $7145: $fa $38 $93

jr_06e_7148:
	ld b, b                                          ; $7148: $40
	ld d, b                                          ; $7149: $50
	ld h, b                                          ; $714a: $60
	ld h, b                                          ; $714b: $60
	jr nz, jr_06e_714e                               ; $714c: $20 $00

jr_06e_714e:
	nop                                              ; $714e: $00
	inc a                                            ; $714f: $3c
	jr c, @+$2e                                      ; $7150: $38 $2c

	inc h                                            ; $7152: $24
	nop                                              ; $7153: $00
	cp [hl]                                          ; $7154: $be
	jr jr_06e_7157                                   ; $7155: $18 $00

jr_06e_7157:
	ld b, e                                          ; $7157: $43
	sub [hl]                                         ; $7158: $96
	add b                                            ; $7159: $80
	db $ed                                           ; $715a: $ed
	di                                               ; $715b: $f3
	rst $38                                          ; $715c: $ff
	cp $64                                           ; $715d: $fe $64
	ld hl, sp+$68                                    ; $715f: $f8 $68
	ldh a, [rVBK]                                    ; $7161: $f0 $4f
	ldh [$9d], a                                     ; $7163: $e0 $9d
	inc [hl]                                         ; $7165: $34
	inc a                                            ; $7166: $3c
	rrca                                             ; $7167: $0f
	ldh [$9c], a                                     ; $7168: $e0 $9c
	ld l, h                                          ; $716a: $6c
	ld a, h                                          ; $716b: $7c
	inc h                                            ; $716c: $24
	ld a, e                                          ; $716d: $7b
	pop hl                                           ; $716e: $e1
	ld a, a                                          ; $716f: $7f
	db $fd                                           ; $7170: $fd

jr_06e_7171:
	scf                                              ; $7171: $37
	ldh [hDisp1_WY], a                                     ; $7172: $e0 $95
	jr nc, jr_06e_7176                               ; $7174: $30 $00

jr_06e_7176:
	jr c, @+$3e                                      ; $7176: $38 $3c

	ld a, h                                          ; $7178: $7c
	ld a, h                                          ; $7179: $7c
	ld h, h                                          ; $717a: $64
	inc a                                            ; $717b: $3c
	inc c                                            ; $717c: $0c
	jr jr_06e_71d6                                   ; $717d: $18 $57

	ldh [$fd], a                                     ; $717f: $e0 $fd
	ld [bc], a                                       ; $7181: $02
	pop af                                           ; $7182: $f1
	rst SubAFromDE                                          ; $7183: $df
	ld bc, $0391                                     ; $7184: $01 $91 $03
	ld [bc], a                                       ; $7187: $02
	rlca                                             ; $7188: $07
	inc b                                            ; $7189: $04
	inc c                                            ; $718a: $0c
	dec bc                                           ; $718b: $0b
	ld [$080f], sp                                   ; $718c: $08 $0f $08
	rrca                                             ; $718f: $0f
	inc d                                            ; $7190: $14
	rra                                              ; $7191: $1f
	add hl, de                                       ; $7192: $19
	ld e, $e3                                        ; $7193: $1e $e3
	rst SubAFromDE                                          ; $7195: $df
	inc bc                                           ; $7196: $03
	add b                                            ; $7197: $80
	inc b                                            ; $7198: $04
	rlca                                             ; $7199: $07
	dec bc                                           ; $719a: $0b
	rrca                                             ; $719b: $0f
	rra                                              ; $719c: $1f
	rra                                              ; $719d: $1f
	db $10                                           ; $719e: $10
	rra                                              ; $719f: $1f
	inc hl                                           ; $71a0: $23
	inc a                                            ; $71a1: $3c
	ld b, a                                          ; $71a2: $47
	ld a, b                                          ; $71a3: $78
	adc a                                            ; $71a4: $8f
	ldh a, [$9f]                                     ; $71a5: $f0 $9f
	ldh [$3f], a                                     ; $71a7: $e0 $3f
	ret nz                                           ; $71a9: $c0

	pop af                                           ; $71aa: $f1
	ld c, $81                                        ; $71ab: $0e $81
	ld a, [hl]                                       ; $71ad: $7e
	inc bc                                           ; $71ae: $03
	db $fc                                           ; $71af: $fc
	rrca                                             ; $71b0: $0f
	ldh a, [$1f]                                     ; $71b1: $f0 $1f
	ldh [$7f], a                                     ; $71b3: $e0 $7f
	add b                                            ; $71b5: $80
	rst $38                                          ; $71b6: $ff
	add sp, -$21                                     ; $71b7: $e8 $df
	ld bc, $029c                                     ; $71b9: $01 $9c $02
	inc bc                                           ; $71bc: $03
	ld [bc], a                                       ; $71bd: $02
	ld a, e                                          ; $71be: $7b
	jp nz, $058e                                     ; $71bf: $c2 $8e $05

	ld b, $06                                        ; $71c2: $06 $06
	dec b                                            ; $71c4: $05
	dec bc                                           ; $71c5: $0b
	dec c                                            ; $71c6: $0d
	add hl, bc                                       ; $71c7: $09
	rrca                                             ; $71c8: $0f
	ld a, [bc]                                       ; $71c9: $0a
	rrca                                             ; $71ca: $0f
	dec bc                                           ; $71cb: $0b
	ld c, $15                                        ; $71cc: $0e $15
	ld e, $16                                        ; $71ce: $1e $16
	dec e                                            ; $71d0: $1d
	rla                                              ; $71d1: $17
	ld [hl], e                                       ; $71d2: $73
	cp $9a                                           ; $71d3: $fe $9a
	add hl, de                                       ; $71d5: $19

jr_06e_71d6:
	rra                                              ; $71d6: $1f
	dec de                                           ; $71d7: $1b
	rra                                              ; $71d8: $1f
	ld a, [bc]                                       ; $71d9: $0a
	ld a, e                                          ; $71da: $7b
	db $ec                                           ; $71db: $ec
	ld [hl], a                                       ; $71dc: $77
	cp $93                                           ; $71dd: $fe $93
	ld [de], a                                       ; $71df: $12
	rra                                              ; $71e0: $1f
	dec d                                            ; $71e1: $15
	dec e                                            ; $71e2: $1d
	dec d                                            ; $71e3: $15
	dec e                                            ; $71e4: $1d
	add hl, hl                                       ; $71e5: $29
	add hl, sp                                       ; $71e6: $39
	ld [hl-], a                                      ; $71e7: $32
	inc sp                                           ; $71e8: $33
	ld b, d                                          ; $71e9: $42
	ld b, e                                          ; $71ea: $43
	ld [hl], a                                       ; $71eb: $77
	call z, $fe77                                    ; $71ec: $cc $77 $fe
	push de                                          ; $71ef: $d5
	ld bc, $ac57                                     ; $71f0: $01 $57 $ac
	ld a, e                                          ; $71f3: $7b
	ld b, d                                          ; $71f4: $42
	sbc [hl]                                         ; $71f5: $9e
	inc bc                                           ; $71f6: $03
	ld sp, hl                                        ; $71f7: $f9
	rst SubAFromDE                                          ; $71f8: $df
	rrca                                             ; $71f9: $0f
	add b                                            ; $71fa: $80
	ldh a, [rIE]                                     ; $71fb: $f0 $ff
	inc e                                            ; $71fd: $1c
	db $e3                                           ; $71fe: $e3
	ld b, $f9                                        ; $71ff: $06 $f9
	db $e3                                           ; $7201: $e3
	db $fc                                           ; $7202: $fc
	add hl, de                                       ; $7203: $19
	cp $cc                                           ; $7204: $fe $cc
	rst $38                                          ; $7206: $ff
	or h                                             ; $7207: $b4
	ld a, a                                          ; $7208: $7f
	ld [$f61f], a                                    ; $7209: $ea $1f $f6
	rrca                                             ; $720c: $0f
	ei                                               ; $720d: $fb
	rlca                                             ; $720e: $07
	ld sp, hl                                        ; $720f: $f9
	rlca                                             ; $7210: $07
	db $fd                                           ; $7211: $fd
	inc bc                                           ; $7212: $03
	db $fd                                           ; $7213: $fd
	inc bc                                           ; $7214: $03
	db $fc                                           ; $7215: $fc
	inc bc                                           ; $7216: $03
	ld hl, sp+$07                                    ; $7217: $f8 $07
	ldh a, [$9a]                                     ; $7219: $f0 $9a
	rrca                                             ; $721b: $0f
	ret nz                                           ; $721c: $c0

	ccf                                              ; $721d: $3f
	add b                                            ; $721e: $80
	ld a, a                                          ; $721f: $7f
	ld c, a                                          ; $7220: $4f
	ld l, h                                          ; $7221: $6c
	add b                                            ; $7222: $80
	ld b, $07                                        ; $7223: $06 $07
	add hl, de                                       ; $7225: $19
	ld e, $27                                        ; $7226: $1e $27
	jr c, jr_06e_7285                                ; $7228: $38 $5b

	ld h, h                                          ; $722a: $64
	xor [hl]                                         ; $722b: $ae
	pop de                                           ; $722c: $d1
	ld e, e                                          ; $722d: $5b
	and a                                            ; $722e: $a7
	and a                                            ; $722f: $a7
	ld e, [hl]                                       ; $7230: $5e
	ld e, a                                          ; $7231: $5f
	cp h                                             ; $7232: $bc
	and a                                            ; $7233: $a7
	ld a, h                                          ; $7234: $7c
	ld d, e                                          ; $7235: $53
	xor $af                                          ; $7236: $ee $af
	rst SubAFromDE                                          ; $7238: $df
	ld d, c                                          ; $7239: $51
	cp a                                             ; $723a: $bf
	ld l, a                                          ; $723b: $6f
	or e                                             ; $723c: $b3
	ld sp, hl                                        ; $723d: $f9
	ld h, a                                          ; $723e: $67
	push af                                          ; $723f: $f5
	ld c, e                                          ; $7240: $4b
	db $ec                                           ; $7241: $ec
	add b                                            ; $7242: $80
	add a                                            ; $7243: $87
	jp c, $6d8d                                      ; $7244: $da $8d $6d

	sbc e                                            ; $7247: $9b
	or c                                             ; $7248: $b1
	ld e, e                                          ; $7249: $5b
	ld h, [hl]                                       ; $724a: $66
	or e                                             ; $724b: $b3
	ld a, d                                          ; $724c: $7a
	and a                                            ; $724d: $a7
	call nz, $f76f                                   ; $724e: $c4 $6f $f7
	ld c, l                                          ; $7251: $4d
	ld e, e                                          ; $7252: $5b
	call $db8d                                       ; $7253: $cd $8d $db
	push hl                                          ; $7256: $e5
	sbc e                                            ; $7257: $9b
	rst JumpTable                                          ; $7258: $c7
	cp e                                             ; $7259: $bb
	res 6, a                                         ; $725a: $cb $b7
	ld c, d                                          ; $725c: $4a
	or a                                             ; $725d: $b7
	xor d                                            ; $725e: $aa
	ld d, a                                          ; $725f: $57
	xor e                                            ; $7260: $ab
	ld d, a                                          ; $7261: $57
	add c                                            ; $7262: $81
	sub e                                            ; $7263: $93
	ld b, a                                          ; $7264: $47
	add e                                            ; $7265: $83
	ld b, a                                          ; $7266: $47
	sub d                                            ; $7267: $92
	ld b, a                                          ; $7268: $47
	rra                                              ; $7269: $1f
	rst JumpTable                                          ; $726a: $c7
	dec l                                            ; $726b: $2d
	rst SubAFromHL                                          ; $726c: $d7
	dec h                                            ; $726d: $25
	rst SubAFromDE                                          ; $726e: $df
	ld l, d                                          ; $726f: $6a
	sbc l                                            ; $7270: $9d
	ld c, d                                          ; $7271: $4a
	cp l                                             ; $7272: $bd
	ld c, d                                          ; $7273: $4a
	cp l                                             ; $7274: $bd
	ld c, [hl]                                       ; $7275: $4e
	cp e                                             ; $7276: $bb
	rst $38                                          ; $7277: $ff
	ld a, [hl+]                                      ; $7278: $2a
	rst $38                                          ; $7279: $ff
	xor d                                            ; $727a: $aa
	rst $38                                          ; $727b: $ff
	xor e                                            ; $727c: $ab
	cp $ba                                           ; $727d: $fe $ba
	cp $ba                                           ; $727f: $fe $ba
	sbc $cc                                          ; $7281: $de $cc
	sbc h                                            ; $7283: $9c
	ld c, h                                          ; $7284: $4c

jr_06e_7285:
	adc b                                            ; $7285: $88
	adc b                                            ; $7286: $88
	ld l, a                                          ; $7287: $6f
	sbc b                                            ; $7288: $98
	sbc [hl]                                         ; $7289: $9e
	ld c, $7b                                        ; $728a: $0e $7b
	ld h, h                                          ; $728c: $64
	sbc [hl]                                         ; $728d: $9e
	nop                                              ; $728e: $00
	ld h, e                                          ; $728f: $63
	cp $7f                                           ; $7290: $fe $7f
	ld a, d                                          ; $7292: $7a
	sbc d                                            ; $7293: $9a
	ccf                                              ; $7294: $3f
	nop                                              ; $7295: $00
	cp a                                             ; $7296: $bf
	nop                                              ; $7297: $00
	sbc a                                            ; $7298: $9f
	ld a, e                                          ; $7299: $7b
	cp $96                                           ; $729a: $fe $96
	ld e, a                                          ; $729c: $5f
	add b                                            ; $729d: $80
	ld c, a                                          ; $729e: $4f
	add b                                            ; $729f: $80
	rst GetHLinHL                                          ; $72a0: $cf
	add b                                            ; $72a1: $80
	xor a                                            ; $72a2: $af
	ret nz                                           ; $72a3: $c0

	and a                                            ; $72a4: $a7
	ld a, e                                          ; $72a5: $7b
	cp $99                                           ; $72a6: $fe $99
	rst FarCall                                          ; $72a8: $f7
	ret nz                                           ; $72a9: $c0

	db $d3                                           ; $72aa: $d3
	ldh [$d3], a                                     ; $72ab: $e0 $d3
	ldh [$fb], a                                     ; $72ad: $e0 $fb
	rst SubAFromDE                                          ; $72af: $df
	inc a                                            ; $72b0: $3c
	adc l                                            ; $72b1: $8d
	ld a, [bc]                                       ; $72b2: $0a
	ld c, $7d                                        ; $72b3: $0e $7d
	ld a, a                                          ; $72b5: $7f
	add h                                            ; $72b6: $84
	rst $38                                          ; $72b7: $ff
	ld [hl], e                                       ; $72b8: $73
	adc [hl]                                         ; $72b9: $8e
	cp [hl]                                          ; $72ba: $be
	ld a, a                                          ; $72bb: $7f
	ei                                               ; $72bc: $fb
	rlca                                             ; $72bd: $07
	add c                                            ; $72be: $81
	ld a, a                                          ; $72bf: $7f
	ld a, a                                          ; $72c0: $7f
	rst $38                                          ; $72c1: $ff
	rst $38                                          ; $72c2: $ff
	add c                                            ; $72c3: $81
	ld a, e                                          ; $72c4: $7b
	rst JumpTable                                          ; $72c5: $c7
	add b                                            ; $72c6: $80
	rlca                                             ; $72c7: $07
	rst $38                                          ; $72c8: $ff
	nop                                              ; $72c9: $00
	add e                                            ; $72ca: $83
	nop                                              ; $72cb: $00
	sbc a                                            ; $72cc: $9f
	rlca                                             ; $72cd: $07
	rst $38                                          ; $72ce: $ff
	rra                                              ; $72cf: $1f
	cp h                                             ; $72d0: $bc
	ld a, a                                          ; $72d1: $7f
	jp hl                                            ; $72d2: $e9


	ld a, [hl]                                       ; $72d3: $7e
	pop de                                           ; $72d4: $d1
	cp [hl]                                          ; $72d5: $be
	ld [hl-], a                                      ; $72d6: $32
	db $fc                                           ; $72d7: $fc
	ldh [$fe], a                                     ; $72d8: $e0 $fe
	ld d, c                                          ; $72da: $51
	xor $55                                          ; $72db: $ee $55
	ld [$ebd4], a                                    ; $72dd: $ea $d4 $eb
	jp z, $aaf5                                      ; $72e0: $ca $f5 $aa

	push af                                          ; $72e3: $f5
	and l                                            ; $72e4: $a5
	ld a, [$5580]                                    ; $72e5: $fa $80 $55
	ld a, [$fd2a]                                    ; $72e8: $fa $2a $fd
	dec d                                            ; $72eb: $15
	cp $34                                           ; $72ec: $fe $34
	rst SubAFromDE                                          ; $72ee: $df
	xor d                                            ; $72ef: $aa
	rst SubAFromDE                                          ; $72f0: $df
	push de                                          ; $72f1: $d5
	xor a                                            ; $72f2: $af
	jp nz, $29b7                                     ; $72f3: $c2 $b7 $29

	db $d3                                           ; $72f6: $d3
	ld l, b                                          ; $72f7: $68
	pop bc                                           ; $72f8: $c1
	or a                                             ; $72f9: $b7
	ldh [$b5], a                                     ; $72fa: $e0 $b5
	ei                                               ; $72fc: $fb
	ld a, e                                          ; $72fd: $7b
	db $dd                                           ; $72fe: $dd
	ld e, l                                          ; $72ff: $5d
	rst AddAOntoHL                                          ; $7300: $ef
	rst SubAFromBC                                          ; $7301: $e7
	rst $38                                          ; $7302: $ff
	cp a                                             ; $7303: $bf
	rst $38                                          ; $7304: $ff
	rst SubAFromDE                                          ; $7305: $df
	add b                                            ; $7306: $80
	db $fd                                           ; $7307: $fd
	rst GetHLinHL                                          ; $7308: $cf
	ld sp, hl                                        ; $7309: $f9
	db $ed                                           ; $730a: $ed
	ei                                               ; $730b: $fb
	rst $38                                          ; $730c: $ff
	db $db                                           ; $730d: $db
	rst AddAOntoHL                                          ; $730e: $ef
	xor c                                            ; $730f: $a9
	rst SubAFromBC                                          ; $7310: $e7
	and l                                            ; $7311: $a5
	db $e3                                           ; $7312: $e3
	and d                                            ; $7313: $a2
	ld b, c                                          ; $7314: $41
	ld b, c                                          ; $7315: $41
	ld b, b                                          ; $7316: $40
	ld b, b                                          ; $7317: $40
	ld bc, $0701                                     ; $7318: $01 $01 $07
	rlca                                             ; $731b: $07
	dec de                                           ; $731c: $1b
	ld e, $67                                        ; $731d: $1e $67
	ld a, [hl]                                       ; $731f: $7e
	adc a                                            ; $7320: $8f
	db $fc                                           ; $7321: $fc
	rrca                                             ; $7322: $0f
	ld hl, sp+$0f                                    ; $7323: $f8 $0f
	ld hl, sp-$6a                                    ; $7325: $f8 $96
	rlca                                             ; $7327: $07
	db $fc                                           ; $7328: $fc
	inc bc                                           ; $7329: $03
	cp $03                                           ; $732a: $fe $03
	cp $01                                           ; $732c: $fe $01
	rst $38                                          ; $732e: $ff
	ld bc, $977b                                     ; $732f: $01 $7b $97
	ld a, [hl]                                       ; $7332: $7e
	ld l, $9b                                        ; $7333: $2e $9b
	pop hl                                           ; $7335: $e1
	ld e, $f1                                        ; $7336: $1e $f1
	ld c, $77                                        ; $7338: $0e $77
	db $ed                                           ; $733a: $ed
	ld a, e                                          ; $733b: $7b
	db $eb                                           ; $733c: $eb
	ld [hl], a                                       ; $733d: $77
	rst AddAOntoHL                                          ; $733e: $ef
	ld h, e                                          ; $733f: $63
	cp $f7                                           ; $7340: $fe $f7
	rst SubAFromDE                                          ; $7342: $df
	db $10                                           ; $7343: $10
	rst SubAFromDE                                          ; $7344: $df
	and b                                            ; $7345: $a0
	rst SubAFromDE                                          ; $7346: $df
	db $ec                                           ; $7347: $ec
	rst SubAFromDE                                          ; $7348: $df
	ret c                                            ; $7349: $d8

	add b                                            ; $734a: $80
	xor e                                            ; $734b: $ab
	ei                                               ; $734c: $fb
	rst AddAOntoHL                                          ; $734d: $ef
	cp h                                             ; $734e: $bc
	xor a                                            ; $734f: $af
	ld sp, hl                                        ; $7350: $f9
	rst $38                                          ; $7351: $ff
	cp $ff                                           ; $7352: $fe $ff
	adc b                                            ; $7354: $88
	rst $38                                          ; $7355: $ff
	ret                                              ; $7356: $c9


	rst $38                                          ; $7357: $ff
	ld a, a                                          ; $7358: $7f
	db $e4                                           ; $7359: $e4
	rst $38                                          ; $735a: $ff
	pop hl                                           ; $735b: $e1
	cp $58                                           ; $735c: $fe $58
	or a                                             ; $735e: $b7
	ld l, [hl]                                       ; $735f: $6e
	sub c                                            ; $7360: $91
	ld [hl], a                                       ; $7361: $77
	adc b                                            ; $7362: $88
	inc l                                            ; $7363: $2c
	ret nz                                           ; $7364: $c0

	inc de                                           ; $7365: $13
	ldh [$b2], a                                     ; $7366: $e0 $b2
	ld h, c                                          ; $7368: $61
	xor d                                            ; $7369: $aa
	sub c                                            ; $736a: $91
	ld [hl], c                                       ; $736b: $71
	ld e, a                                          ; $736c: $5f
	jr nc, @+$59                                     ; $736d: $30 $57

	add hl, sp                                       ; $736f: $39
	ld l, d                                          ; $7370: $6a
	rra                                              ; $7371: $1f
	or a                                             ; $7372: $b7
	inc c                                            ; $7373: $0c
	ret z                                            ; $7374: $c8

	rra                                              ; $7375: $1f
	ld [hl], e                                       ; $7376: $73
	sbc a                                            ; $7377: $9f
	ld l, $1d                                        ; $7378: $2e $1d
	rst SubAFromDE                                          ; $737a: $df
	ldh [$d9], a                                     ; $737b: $e0 $d9
	add b                                            ; $737d: $80
	and b                                            ; $737e: $a0
	nop                                              ; $737f: $00
	or b                                             ; $7380: $b0
	add b                                            ; $7381: $80
	ret nc                                           ; $7382: $d0

	add b                                            ; $7383: $80
	ret z                                            ; $7384: $c8

	add b                                            ; $7385: $80
	ldh [$c0], a                                     ; $7386: $e0 $c0
	ld h, b                                          ; $7388: $60
	ret nz                                           ; $7389: $c0

	ld [hl], b                                       ; $738a: $70
	ldh [$30], a                                     ; $738b: $e0 $30
	ldh [$38], a                                     ; $738d: $e0 $38
	ldh a, [rAUD3LEVEL]                              ; $738f: $f0 $1c
	ldh a, [rAUD2HIGH]                               ; $7391: $f0 $19
	ldh a, [rAUD3LEVEL]                              ; $7393: $f0 $1c
	rst $38                                          ; $7395: $ff
	rrca                                             ; $7396: $0f
	rst $38                                          ; $7397: $ff
	ld [$08f8], sp                                   ; $7398: $08 $f8 $08
	rst $38                                          ; $739b: $ff
	inc b                                            ; $739c: $04
	pop af                                           ; $739d: $f1
	rst SubAFromDE                                          ; $739e: $df
	ld hl, sp-$67                                    ; $739f: $f8 $99
	db $fc                                           ; $73a1: $fc
	inc b                                            ; $73a2: $04
	cp $1e                                           ; $73a3: $fe $1e
	cp a                                             ; $73a5: $bf
	pop bc                                           ; $73a6: $c1
	ld [hl], e                                       ; $73a7: $73
	ld b, d                                          ; $73a8: $42
	add b                                            ; $73a9: $80
	rst $38                                          ; $73aa: $ff
	jr nc, @+$01                                     ; $73ab: $30 $ff

	call $36fe                                       ; $73ad: $cd $fe $36
	ei                                               ; $73b0: $fb
	adc e                                            ; $73b1: $8b
	ld a, l                                          ; $73b2: $7d
	ld h, l                                          ; $73b3: $65
	sbc [hl]                                         ; $73b4: $9e
	ld [hl-], a                                      ; $73b5: $32
	rst GetHLinHL                                          ; $73b6: $cf
	adc c                                            ; $73b7: $89
	ld h, a                                          ; $73b8: $67
	inc l                                            ; $73b9: $2c
	inc de                                           ; $73ba: $13
	sub [hl]                                         ; $73bb: $96
	add hl, bc                                       ; $73bc: $09
	ld a, d                                          ; $73bd: $7a
	add l                                            ; $73be: $85
	ld a, a                                          ; $73bf: $7f
	rst $38                                          ; $73c0: $ff
	sbc h                                            ; $73c1: $9c
	db $e3                                           ; $73c2: $e3
	adc [hl]                                         ; $73c3: $8e
	ld bc, $3f5f                                     ; $73c4: $01 $5f $3f
	db $f4                                           ; $73c7: $f4
	ei                                               ; $73c8: $fb
	sbc e                                            ; $73c9: $9b
	dec hl                                           ; $73ca: $2b
	rst FarCall                                          ; $73cb: $f7
	ld d, [hl]                                       ; $73cc: $56
	rst AddAOntoHL                                          ; $73cd: $ef
	ldh [$c1], a                                     ; $73ce: $e0 $c1
	adc e                                            ; $73d0: $8b
	db $f4                                           ; $73d1: $f4
	inc e                                            ; $73d2: $1c
	ldh a, [c]                                       ; $73d3: $f2
	ld e, $f2                                        ; $73d4: $1e $f2
	ld a, $f1                                        ; $73d6: $3e $f1
	ccf                                              ; $73d8: $3f
	ldh a, [$3f]                                     ; $73d9: $f0 $3f
	ldh a, [$7f]                                     ; $73db: $f0 $7f
	ldh a, [$5f]                                     ; $73dd: $f0 $5f
	ldh a, [$df]                                     ; $73df: $f0 $df
	ldh a, [$9f]                                     ; $73e1: $f0 $9f
	ldh a, [$1f]                                     ; $73e3: $f0 $1f
	ld a, e                                          ; $73e5: $7b
	cp $7f                                           ; $73e6: $fe $7f
	ldh a, [c]                                       ; $73e8: $f2
	sbc l                                            ; $73e9: $9d
	rst $38                                          ; $73ea: $ff
	jr nz, jr_06e_7460                               ; $73eb: $20 $73

	cp $e9                                           ; $73ed: $fe $e9
	rst SubAFromDE                                          ; $73ef: $df
	add b                                            ; $73f0: $80
	add b                                            ; $73f1: $80
	ret nz                                           ; $73f2: $c0

	ld b, b                                          ; $73f3: $40
	ret nz                                           ; $73f4: $c0

	ld b, b                                          ; $73f5: $40
	ld hl, sp-$08                                    ; $73f6: $f8 $f8
	or a                                             ; $73f8: $b7
	ld a, a                                          ; $73f9: $7f
	push de                                          ; $73fa: $d5
	dec sp                                           ; $73fb: $3b
	ld l, d                                          ; $73fc: $6a
	sbc l                                            ; $73fd: $9d
	or a                                             ; $73fe: $b7
	call z, Call_06e_6ed7                            ; $73ff: $cc $d7 $6e
	ld e, e                                          ; $7402: $5b
	and $ab                                          ; $7403: $e6 $ab
	rst FarCall                                          ; $7405: $f7
	sbc h                                            ; $7406: $9c
	rst FarCall                                          ; $7407: $f7
	sbc c                                            ; $7408: $99
	db $fc                                           ; $7409: $fc
	sub e                                            ; $740a: $93
	ld sp, hl                                        ; $740b: $f9
	xor [hl]                                         ; $740c: $ae
	rst FarCall                                          ; $740d: $f7
	ld c, a                                          ; $740e: $4f
	rst $38                                          ; $740f: $ff
	sbc b                                            ; $7410: $98
	sbc b                                            ; $7411: $98
	rst $38                                          ; $7412: $ff
	rst SubAFromBC                                          ; $7413: $e7
	rst $38                                          ; $7414: $ff
	ld a, l                                          ; $7415: $7d
	ei                                               ; $7416: $fb
	cp $85                                           ; $7417: $fe $85
	ldh [$b9], a                                     ; $7419: $e0 $b9
	rst SubAFromDE                                          ; $741b: $df
	ret nz                                           ; $741c: $c0

	adc c                                            ; $741d: $89
	jr nz, @-$1e                                     ; $741e: $20 $e0

	db $10                                           ; $7420: $10
	ldh a, [$50]                                     ; $7421: $f0 $50
	or b                                             ; $7423: $b0
	ld d, b                                          ; $7424: $50
	or b                                             ; $7425: $b0
	ld e, b                                          ; $7426: $58
	cp b                                             ; $7427: $b8
	ld e, b                                          ; $7428: $58
	cp b                                             ; $7429: $b8
	ld d, h                                          ; $742a: $54
	cp h                                             ; $742b: $bc
	call nc, $d43c                                   ; $742c: $d4 $3c $d4
	inc a                                            ; $742f: $3c
	and h                                            ; $7430: $a4
	ld a, h                                          ; $7431: $7c
	and h                                            ; $7432: $a4
	ld a, h                                          ; $7433: $7c
	ld [hl], a                                       ; $7434: $77
	and $8b                                          ; $7435: $e6 $8b
	or b                                             ; $7437: $b0
	ldh a, [$98]                                     ; $7438: $f0 $98
	ld hl, sp+$4c                                    ; $743a: $f8 $4c
	db $fc                                           ; $743c: $fc
	ld c, d                                          ; $743d: $4a
	cp $cf                                           ; $743e: $fe $cf
	ei                                               ; $7440: $fb
	dec sp                                           ; $7441: $3b
	cp $d2                                           ; $7442: $fe $d2
	rst $38                                          ; $7444: $ff
	ld a, $ff                                        ; $7445: $3e $ff
	db $dd                                           ; $7447: $dd
	db $e3                                           ; $7448: $e3
	ld a, a                                          ; $7449: $7f
	add b                                            ; $744a: $80
	ld a, d                                          ; $744b: $7a
	jp $ff9a                                         ; $744c: $c3 $9a $ff


	sbc [hl]                                         ; $744f: $9e
	pop hl                                           ; $7450: $e1
	rst SubAFromBC                                          ; $7451: $e7
	ld hl, sp-$20                                    ; $7452: $f8 $e0
	or e                                             ; $7454: $b3
	rst SubAFromDE                                          ; $7455: $df
	add b                                            ; $7456: $80
	ld a, e                                          ; $7457: $7b
	dec bc                                           ; $7458: $0b
	sbc e                                            ; $7459: $9b
	ret nz                                           ; $745a: $c0

	and b                                            ; $745b: $a0
	ldh [$60], a                                     ; $745c: $e0 $60
	ld a, e                                          ; $745e: $7b
	ld [hl], h                                       ; $745f: $74

jr_06e_7460:
	rst SubAFromDE                                          ; $7460: $df
	db $fc                                           ; $7461: $fc
	adc a                                            ; $7462: $8f
	sub b                                            ; $7463: $90
	ldh a, [$50]                                     ; $7464: $f0 $50
	ldh a, [$b0]                                     ; $7466: $f0 $b0
	ld [hl], b                                       ; $7468: $70
	ld d, b                                          ; $7469: $50
	or b                                             ; $746a: $b0
	add sp, -$08                                     ; $746b: $e8 $f8
	ld d, h                                          ; $746d: $54
	db $fc                                           ; $746e: $fc
	ld c, h                                          ; $746f: $4c
	db $fc                                           ; $7470: $fc
	ret z                                            ; $7471: $c8

	ld a, b                                          ; $7472: $78
	ld [hl], a                                       ; $7473: $77
	cp $7f                                           ; $7474: $fe $7f
	xor $7f                                          ; $7476: $ee $7f
	ldh [c], a                                       ; $7478: $e2
	rst SubAFromDE                                          ; $7479: $df
	ret nz                                           ; $747a: $c0

	rst SubAFromHL                                          ; $747b: $d7
	add b                                            ; $747c: $80
	ld hl, $de00                                     ; $747d: $21 $00 $de
	db $dd                                           ; $7480: $dd
	sbc $aa                                          ; $7481: $de $aa
	sbc c                                            ; $7483: $99
	db $dd                                           ; $7484: $dd
	ld d, l                                          ; $7485: $55
	xor d                                            ; $7486: $aa
	ld [hl+], a                                      ; $7487: $22
	ld [hl+], a                                      ; $7488: $22
	call z, $fb67                                    ; $7489: $cc $67 $fb
	rst SubAFromDE                                          ; $748c: $df
	sbc c                                            ; $748d: $99
	sbc [hl]                                         ; $748e: $9e
	inc sp                                           ; $748f: $33
	ld [hl], a                                       ; $7490: $77
	ei                                               ; $7491: $fb
	sub h                                            ; $7492: $94
	call z, $00aa                                    ; $7493: $cc $aa $00
	sbc c                                            ; $7496: $99
	sbc c                                            ; $7497: $99
	db $dd                                           ; $7498: $dd
	xor d                                            ; $7499: $aa
	sbc c                                            ; $749a: $99
	sbc c                                            ; $749b: $99
	xor d                                            ; $749c: $aa
	xor d                                            ; $749d: $aa
	call $8001                                       ; $749e: $cd $01 $80
	ld [hl], l                                       ; $74a1: $75
	cp $2b                                           ; $74a2: $fe $2b
	db $fd                                           ; $74a4: $fd
	ld l, l                                          ; $74a5: $6d
	ei                                               ; $74a6: $fb
	ld d, [hl]                                       ; $74a7: $56
	ei                                               ; $74a8: $fb
	db $db                                           ; $74a9: $db
	or $9b                                           ; $74aa: $f6 $9b
	or $d7                                           ; $74ac: $f6 $d7
	cp h                                             ; $74ae: $bc
	sub l                                            ; $74af: $95
	cp a                                             ; $74b0: $bf
	rst $38                                          ; $74b1: $ff
	xor a                                            ; $74b2: $af
	cp a                                             ; $74b3: $bf
	db $e4                                           ; $74b4: $e4
	ld a, a                                          ; $74b5: $7f
	ldh [$7d], a                                     ; $74b6: $e0 $7d
	db $e3                                           ; $74b8: $e3
	ei                                               ; $74b9: $fb
	ld h, a                                          ; $74ba: $67
	or $6e                                           ; $74bb: $f6 $6e
	ld e, a                                          ; $74bd: $5f
	cp $7f                                           ; $74be: $fe $7f
	add c                                            ; $74c0: $81
	jp $c366                                         ; $74c1: $c3 $66 $c3


	ld h, e                                          ; $74c4: $63
	pop bc                                           ; $74c5: $c1
	rst SubAFromBC                                          ; $74c6: $e7
	ret nz                                           ; $74c7: $c0

	ldh [$c0], a                                     ; $74c8: $e0 $c0
	ldh a, [$c0]                                     ; $74ca: $f0 $c0
	ldh a, [$e0]                                     ; $74cc: $f0 $e0
	ld hl, sp-$60                                    ; $74ce: $f8 $a0
	db $fc                                           ; $74d0: $fc
	db $10                                           ; $74d1: $10
	cp $08                                           ; $74d2: $fe $08
	rst GetHLinHL                                          ; $74d4: $cf
	ld b, $47                                        ; $74d5: $06 $47
	inc bc                                           ; $74d7: $03
	ld b, e                                          ; $74d8: $43
	ld bc, $0041                                     ; $74d9: $01 $41 $00
	ld b, c                                          ; $74dc: $41
	nop                                              ; $74dd: $00
	ld hl, $fe7b                                     ; $74de: $21 $7b $fe
	add b                                            ; $74e1: $80
	xor l                                            ; $74e2: $ad
	rst SubAFromDE                                          ; $74e3: $df
	reti                                             ; $74e4: $d9


	cp a                                             ; $74e5: $bf
	cp a                                             ; $74e6: $bf
	ld [$eabb], a                                    ; $74e7: $ea $bb $ea
	rst AddAOntoHL                                          ; $74ea: $ef
	jp z, $8eeb                                      ; $74eb: $ca $eb $8e

	and $86                                          ; $74ee: $e6 $86
	ld a, [$3cf3]                                    ; $74f0: $fa $f3 $3c
	ret nz                                           ; $74f3: $c0

	db $fc                                           ; $74f4: $fc
	nop                                              ; $74f5: $00
	ld c, $f0                                        ; $74f6: $0e $f0
	or $f8                                           ; $74f8: $f6 $f8

jr_06e_74fa:
	ld a, $3c                                        ; $74fa: $3e $3c
	ld a, d                                          ; $74fc: $7a
	ld [hl], h                                       ; $74fd: $74
	call nc, $d0f0                                   ; $74fe: $d4 $f0 $d0
	sub h                                            ; $7501: $94
	ldh a, [$3f]                                     ; $7502: $f0 $3f
	ret nc                                           ; $7504: $d0

	cp $21                                           ; $7505: $fe $21
	push de                                          ; $7507: $d5
	ld [$15ea], a                                    ; $7508: $ea $ea $15
	rst $38                                          ; $750b: $ff
	nop                                              ; $750c: $00
	ld h, a                                          ; $750d: $67
	cp $88                                           ; $750e: $fe $88
	ld a, a                                          ; $7510: $7f
	add b                                            ; $7511: $80
	cp a                                             ; $7512: $bf
	ret nz                                           ; $7513: $c0

jr_06e_7514:
	rst AddAOntoHL                                          ; $7514: $ef
	ldh a, [$f9]                                     ; $7515: $f0 $f9
	cp $7f                                           ; $7517: $fe $7f
	rst $38                                          ; $7519: $ff
	jr c, jr_06e_7514                                ; $751a: $38 $f8

	jr @-$06                                         ; $751c: $18 $f8

	push bc                                          ; $751e: $c5
	ld b, $c7                                        ; $751f: $06 $c7
	ld [bc], a                                       ; $7521: $02
	add d                                            ; $7522: $82
	inc bc                                           ; $7523: $03
	add e                                            ; $7524: $83
	ld bc, $7781                                     ; $7525: $01 $81 $77
	cp $7b                                           ; $7528: $fe $7b
	xor h                                            ; $752a: $ac
	sub [hl]                                         ; $752b: $96
	ld [bc], a                                       ; $752c: $02
	ld bc, $0007                                     ; $752d: $01 $07 $00
	rlca                                             ; $7530: $07
	nop                                              ; $7531: $00
	ld b, $01                                        ; $7532: $06 $01
	inc bc                                           ; $7534: $03
	ld a, e                                          ; $7535: $7b
	cp $dd                                           ; $7536: $fe $dd

jr_06e_7538:
	ld bc, $d980                                     ; $7538: $01 $80 $d9
	cp $5f                                           ; $753b: $fe $5f
	rst AddAOntoHL                                          ; $753d: $ef
	ld l, h                                          ; $753e: $6c
	rst FarCall                                          ; $753f: $f7
	ld d, d                                          ; $7540: $52
	rst $38                                          ; $7541: $ff
	ld l, d                                          ; $7542: $6a
	rst SubAFromDE                                          ; $7543: $df
	ld a, e                                          ; $7544: $7b
	rst GetHLinHL                                          ; $7545: $cf
	or a                                             ; $7546: $b7
	rst GetHLinHL                                          ; $7547: $cf
	push af                                          ; $7548: $f5
	rst $38                                          ; $7549: $ff
	rra                                              ; $754a: $1f
	ld sp, hl                                        ; $754b: $f9
	cp $03                                           ; $754c: $fe $03
	rra                                              ; $754e: $1f
	db $e3                                           ; $754f: $e3
	db $fd                                           ; $7550: $fd
	di                                               ; $7551: $f3
	cp l                                             ; $7552: $bd
	cp e                                             ; $7553: $bb
	ld [hl], $3f                                     ; $7554: $36 $3f
	sub $f3                                          ; $7556: $d6 $f3
	ld [hl], e                                       ; $7558: $73
	adc b                                            ; $7559: $88
	sub $fb                                          ; $755a: $d6 $fb
	and [hl]                                         ; $755c: $a6
	rst GetHLinHL                                          ; $755d: $cf
	push af                                          ; $755e: $f5
	rst FarCall                                          ; $755f: $f7
	dec c                                            ; $7560: $0d
	xor $1e                                          ; $7561: $ee $1e
	ret z                                            ; $7563: $c8

	jr c, @-$36                                      ; $7564: $38 $c8

	jr c, jr_06e_7538                                ; $7566: $38 $d0

	jr nc, jr_06e_74fa                               ; $7568: $30 $90

	ld [hl], b                                       ; $756a: $70
	and b                                            ; $756b: $a0
	ld h, b                                          ; $756c: $60

jr_06e_756d:
	ld b, b                                          ; $756d: $40
	ret nz                                           ; $756e: $c0

	add b                                            ; $756f: $80
	add b                                            ; $7570: $80
	rst FarCall                                          ; $7571: $f7
	cpl                                              ; $7572: $2f
	jr nz, jr_06e_75f4                               ; $7573: $20 $7f

	cp $97                                           ; $7575: $fe $97
	db $fd                                           ; $7577: $fd
	ld h, e                                          ; $7578: $63
	ld a, [$4766]                                    ; $7579: $fa $66 $47
	cp $7f                                           ; $757c: $fe $7f
	rst SubAFromDE                                          ; $757e: $df
	inc bc                                           ; $757f: $03
	jr nz, jr_06e_75bd                               ; $7580: $20 $3b

	jr nz, @-$67                                     ; $7582: $20 $97

	cp $00                                           ; $7584: $fe $00
	ld e, $e0                                        ; $7586: $1e $e0
	or $f8                                           ; $7588: $f6 $f8
	ld a, [hl]                                       ; $758a: $7e
	ld a, h                                          ; $758b: $7c
	inc bc                                           ; $758c: $03
	jr nz, jr_06e_75b2                               ; $758d: $20 $23

	jr nz, jr_06e_7610                               ; $758f: $20 $7f

	cp $7f                                           ; $7591: $fe $7f
	ld hl, sp+$1f                                    ; $7593: $f8 $1f
	jr nz, @-$66                                     ; $7595: $20 $98

	rst $38                                          ; $7597: $ff
	inc bc                                           ; $7598: $03

jr_06e_7599:
	ld l, l                                          ; $7599: $6d
	di                                               ; $759a: $f3
	push af                                          ; $759b: $f5
	ei                                               ; $759c: $fb
	ld a, $03                                        ; $759d: $3e $03
	jr nz, jr_06e_75c0                               ; $759f: $20 $1f

	jr nz, jr_06e_7538                               ; $75a1: $20 $95

	ld a, h                                          ; $75a3: $7c
	ldh [$f8], a                                     ; $75a4: $e0 $f8
	ld h, b                                          ; $75a6: $60
	ldh a, [$60]                                     ; $75a7: $f0 $60
	ld d, c                                          ; $75a9: $51
	db $e3                                           ; $75aa: $e3
	ld l, a                                          ; $75ab: $6f
	rst GetHLinHL                                          ; $75ac: $cf
	inc bc                                           ; $75ad: $03
	jr nz, jr_06e_75e3                               ; $75ae: $20 $33

	jr nz, jr_06e_7631                               ; $75b0: $20 $7f

jr_06e_75b2:
	cp $91                                           ; $75b2: $fe $91
	ld a, [hl]                                       ; $75b4: $7e
	nop                                              ; $75b5: $00

jr_06e_75b6:
	ld a, $00                                        ; $75b6: $3e $00

jr_06e_75b8:
	db $ec                                           ; $75b8: $ec
	ldh a, [$fc]                                     ; $75b9: $f0 $fc
	db $fc                                           ; $75bb: $fc
	rst $38                                          ; $75bc: $ff

jr_06e_75bd:
	ret nc                                           ; $75bd: $d0

	cp $a1                                           ; $75be: $fe $a1

jr_06e_75c0:
	dec [hl]                                         ; $75c0: $35
	jp z, $2003                                      ; $75c1: $ca $03 $20

	ld b, e                                          ; $75c4: $43
	jr nz, @-$60                                     ; $75c5: $20 $9e

	inc bc                                           ; $75c7: $03
	ld a, e                                          ; $75c8: $7b
	cp $9e                                           ; $75c9: $fe $9e
	nop                                              ; $75cb: $00
	inc hl                                           ; $75cc: $23
	jr nz, jr_06e_756d                               ; $75cd: $20 $9e

	db $fd                                           ; $75cf: $fd
	ld a, e                                          ; $75d0: $7b
	cp $95                                           ; $75d1: $fe $95
	ld e, $03                                        ; $75d3: $1e $03
	xor $f3                                          ; $75d5: $ee $f3
	ld a, e                                          ; $75d7: $7b
	sbc $eb                                          ; $75d8: $de $eb
	or [hl]                                          ; $75da: $b6
	rra                                              ; $75db: $1f
	push hl                                          ; $75dc: $e5
	inc bc                                           ; $75dd: $03
	jr nz, jr_06e_7643                               ; $75de: $20 $63

	jr nz, @-$77                                     ; $75e0: $20 $87

	sub a                                            ; $75e2: $97

jr_06e_75e3:
	cp h                                             ; $75e3: $bc
	rst $38                                          ; $75e4: $ff
	xor h                                            ; $75e5: $ac
	cp a                                             ; $75e6: $bf
	rst SubAFromBC                                          ; $75e7: $e7
	ld a, e                                          ; $75e8: $7b
	db $ec                                           ; $75e9: $ec
	ld a, a                                          ; $75ea: $7f
	ldh [$fc], a                                     ; $75eb: $e0 $fc
	ld h, b                                          ; $75ed: $60
	ld hl, sp+$60                                    ; $75ee: $f8 $60
	ld d, b                                          ; $75f0: $50
	ldh [$60], a                                     ; $75f1: $e0 $60
	ret nz                                           ; $75f3: $c0

jr_06e_75f4:
	ld h, b                                          ; $75f4: $60
	ret nz                                           ; $75f5: $c0

	ld l, [hl]                                       ; $75f6: $6e
	rst JumpTable                                          ; $75f7: $c7
	rst SubAFromBC                                          ; $75f8: $e7
	pop bc                                           ; $75f9: $c1
	inc bc                                           ; $75fa: $03
	jr nz, @+$69                                     ; $75fb: $20 $67

	jr nz, jr_06e_7599                               ; $75fd: $20 $9a

	inc bc                                           ; $75ff: $03
	db $fc                                           ; $7600: $fc
	ld hl, sp+$7c                                    ; $7601: $f8 $7c
	add b                                            ; $7603: $80
	ld [hl], a                                       ; $7604: $77
	jr nz, jr_06e_767e                               ; $7605: $20 $77

	ld e, $9e                                        ; $7607: $1e $9e
	ld a, h                                          ; $7609: $7c
	ld a, e                                          ; $760a: $7b
	cp $99                                           ; $760b: $fe $99
	rlca                                             ; $760d: $07
	ld hl, sp-$02                                    ; $760e: $f8 $fe

jr_06e_7610:
	add hl, de                                       ; $7610: $19
	push af                                          ; $7611: $f5
	ld a, [$2003]                                    ; $7612: $fa $03 $20
	inc sp                                           ; $7615: $33
	jr nz, jr_06e_75b6                               ; $7616: $20 $9e

	ld bc, $fe7b                                     ; $7618: $01 $7b $fe
	ld c, e                                          ; $761b: $4b
	jr nz, jr_06e_75b8                               ; $761c: $20 $9a

	adc a                                            ; $761e: $8f
	rst AddAOntoHL                                          ; $761f: $ef
	pop af                                           ; $7620: $f1
	sbc $3b                                          ; $7621: $de $3b
	ld l, a                                          ; $7623: $6f
	jr nz, jr_06e_76a5                               ; $7624: $20 $7f

	jr @+$81                                         ; $7626: $18 $7f

	cp $9a                                           ; $7628: $fe $9a
	dec de                                           ; $762a: $1b
	ld b, $5b                                        ; $762b: $06 $5b
	cp [hl]                                          ; $762d: $be
	rst AddAOntoHL                                          ; $762e: $ef
	ld [de], a                                       ; $762f: $12
	ld b, b                                          ; $7630: $40

jr_06e_7631:
	add c                                            ; $7631: $81
	ld d, a                                          ; $7632: $57
	xor c                                            ; $7633: $a9
	and e                                            ; $7634: $a3
	ld e, h                                          ; $7635: $5c
	ld e, b                                          ; $7636: $58
	xor a                                            ; $7637: $af
	db $ed                                           ; $7638: $ed
	ld e, $eb                                        ; $7639: $1e $eb
	inc e                                            ; $763b: $1c
	rst $38                                          ; $763c: $ff
	nop                                              ; $763d: $00
	ld l, a                                          ; $763e: $6f
	ret c                                            ; $763f: $d8

	or a                                             ; $7640: $b7
	ld a, b                                          ; $7641: $78
	rst $38                                          ; $7642: $ff

jr_06e_7643:
	nop                                              ; $7643: $00
	rst SubAFromDE                                          ; $7644: $df

jr_06e_7645:
	jr nc, jr_06e_7645                               ; $7645: $30 $fe

	ld bc, $03fd                                     ; $7647: $01 $fd $03
	or $0e                                           ; $764a: $f6 $0e
	inc l                                            ; $764c: $2c
	call c, $f0f0                                    ; $764d: $dc $f0 $f0
	ld c, a                                          ; $7650: $4f
	ldh [$9d], a                                     ; $7651: $e0 $9d
	ld a, a                                          ; $7653: $7f
	ld hl, sp+$07                                    ; $7654: $f8 $07
	ldh [$97], a                                     ; $7656: $e0 $97
	rst FarCall                                          ; $7658: $f7
	ld a, b                                          ; $7659: $78
	cp a                                             ; $765a: $bf
	ld [hl], b                                       ; $765b: $70
	rst $38                                          ; $765c: $ff
	nop                                              ; $765d: $00
	sbc $31                                          ; $765e: $de $31
	rra                                              ; $7660: $1f
	ldh [rPCM34], a                                  ; $7661: $e0 $77
	sbc $7f                                          ; $7663: $de $7f
	ret nz                                           ; $7665: $c0

	sbc l                                            ; $7666: $9d
	db $dd                                           ; $7667: $dd
	inc sp                                           ; $7668: $33
	ld h, a                                          ; $7669: $67
	ldh [$bf], a                                     ; $766a: $e0 $bf
	ld bc, $7580                                     ; $766c: $01 $80 $75
	cp $2b                                           ; $766f: $fe $2b
	db $fd                                           ; $7671: $fd
	ld l, l                                          ; $7672: $6d
	ei                                               ; $7673: $fb
	ld d, [hl]                                       ; $7674: $56
	ei                                               ; $7675: $fb
	db $db                                           ; $7676: $db
	or $9b                                           ; $7677: $f6 $9b
	or $d7                                           ; $7679: $f6 $d7
	cp h                                             ; $767b: $bc
	sub l                                            ; $767c: $95
	cp a                                             ; $767d: $bf

jr_06e_767e:
	db $fd                                           ; $767e: $fd
	xor [hl]                                         ; $767f: $ae
	cp a                                             ; $7680: $bf
	db $e4                                           ; $7681: $e4
	ld a, [hl]                                       ; $7682: $7e
	pop hl                                           ; $7683: $e1
	ld a, l                                          ; $7684: $7d
	db $e3                                           ; $7685: $e3
	or $6e                                           ; $7686: $f6 $6e
	ld a, [$5b66]                                    ; $7688: $fa $66 $5b
	rst SubAFromBC                                          ; $768b: $e7
	ld a, [hl]                                       ; $768c: $7e
	add l                                            ; $768d: $85
	jp $c366                                         ; $768e: $c3 $66 $c3


	ld h, e                                          ; $7691: $63
	pop bc                                           ; $7692: $c1
	rst SubAFromBC                                          ; $7693: $e7
	ret nz                                           ; $7694: $c0

	ldh [$c0], a                                     ; $7695: $e0 $c0
	ldh a, [$c0]                                     ; $7697: $f0 $c0
	ldh a, [$e0]                                     ; $7699: $f0 $e0
	ld hl, sp-$60                                    ; $769b: $f8 $a0
	db $fc                                           ; $769d: $fc
	db $10                                           ; $769e: $10
	cp $08                                           ; $769f: $fe $08
	rst GetHLinHL                                          ; $76a1: $cf
	ld b, $47                                        ; $76a2: $06 $47
	inc bc                                           ; $76a4: $03

jr_06e_76a5:
	ld b, e                                          ; $76a5: $43
	ld bc, $bd41                                     ; $76a6: $01 $41 $bd
	ld b, c                                          ; $76a9: $41
	ld hl, $ad21                                     ; $76aa: $21 $21 $ad
	add b                                            ; $76ad: $80
	rst SubAFromDE                                          ; $76ae: $df
	reti                                             ; $76af: $d9


	cp a                                             ; $76b0: $bf
	cp a                                             ; $76b1: $bf
	ld [$eabb], a                                    ; $76b2: $ea $bb $ea
	rst AddAOntoHL                                          ; $76b5: $ef
	jp z, $8eeb                                      ; $76b6: $ca $eb $8e

	and $86                                          ; $76b9: $e6 $86
	ld a, [$fcf3]                                    ; $76bb: $fa $f3 $fc
	nop                                              ; $76be: $00
	adc h                                            ; $76bf: $8c
	ld [hl], b                                       ; $76c0: $70
	or $f8                                           ; $76c1: $f6 $f8
	ld a, [hl-]                                      ; $76c3: $3a
	inc a                                            ; $76c4: $3c
	halt                                             ; $76c5: $76

jr_06e_76c6:
	inc a                                            ; $76c6: $3c
	db $f4                                           ; $76c7: $f4
	ld [hl], b                                       ; $76c8: $70
	ret nc                                           ; $76c9: $d0

	ldh a, [$d0]                                     ; $76ca: $f0 $d0
	ldh a, [$98]                                     ; $76cc: $f0 $98
	ccf                                              ; $76ce: $3f
	ret nc                                           ; $76cf: $d0

	rst $38                                          ; $76d0: $ff
	jr nz, @-$37                                     ; $76d1: $20 $c7

	ld hl, sp-$01                                    ; $76d3: $f8 $ff
	cp e                                             ; $76d5: $bb
	rst $38                                          ; $76d6: $ff
	rst $38                                          ; $76d7: $ff
	rst $38                                          ; $76d8: $ff
	rst $38                                          ; $76d9: $ff
	rst $38                                          ; $76da: $ff
	ld a, a                                          ; $76db: $7f
	adc c                                            ; $76dc: $89
	add b                                            ; $76dd: $80
	cp a                                             ; $76de: $bf
	ret nz                                           ; $76df: $c0

jr_06e_76e0:
	rst AddAOntoHL                                          ; $76e0: $ef
	ldh a, [$f9]                                     ; $76e1: $f0 $f9
	cp $7f                                           ; $76e3: $fe $7f
	rst $38                                          ; $76e5: $ff
	jr c, jr_06e_76e0                                ; $76e6: $38 $f8

	jr @-$06                                         ; $76e8: $18 $f8

	push bc                                          ; $76ea: $c5
	ld b, $c7                                        ; $76eb: $06 $c7
	ld [bc], a                                       ; $76ed: $02
	add d                                            ; $76ee: $82
	inc bc                                           ; $76ef: $03

jr_06e_76f0:
	add e                                            ; $76f0: $83
	ld bc, $7781                                     ; $76f1: $01 $81 $77
	cp $bf                                           ; $76f4: $fe $bf
	ld b, c                                          ; $76f6: $41
	ld [bc], a                                       ; $76f7: $02

jr_06e_76f8:
	sbc l                                            ; $76f8: $9d
	ld bc, $bf07                                     ; $76f9: $01 $07 $bf
	rlca                                             ; $76fc: $07
	rlca                                             ; $76fd: $07

jr_06e_76fe:
	sbc l                                            ; $76fe: $9d
	ld bc, $7b03                                     ; $76ff: $01 $03 $7b
	cp $dd                                           ; $7702: $fe $dd

jr_06e_7704:
	ld bc, $d980                                     ; $7704: $01 $80 $d9
	cp $5f                                           ; $7707: $fe $5f
	rst AddAOntoHL                                          ; $7709: $ef
	ld l, h                                          ; $770a: $6c
	rst FarCall                                          ; $770b: $f7
	ld d, d                                          ; $770c: $52
	rst $38                                          ; $770d: $ff
	ld l, d                                          ; $770e: $6a
	rst SubAFromDE                                          ; $770f: $df
	ld a, e                                          ; $7710: $7b
	rst GetHLinHL                                          ; $7711: $cf
	or a                                             ; $7712: $b7
	rst GetHLinHL                                          ; $7713: $cf
	push af                                          ; $7714: $f5
	rst $38                                          ; $7715: $ff
	rst $38                                          ; $7716: $ff
	ld bc, $639e                                     ; $7717: $01 $9e $63

jr_06e_771a:
	rst FarCall                                          ; $771a: $f7
	ei                                               ; $771b: $fb
	sbc l                                            ; $771c: $9d
	sbc a                                            ; $771d: $9f
	dec a                                            ; $771e: $3d
	dec sp                                           ; $771f: $3b
	halt                                             ; $7720: $76
	ei                                               ; $7721: $fb
	sub $f3                                          ; $7722: $d6 $f3
	ld [hl], a                                       ; $7724: $77
	adc b                                            ; $7725: $88
	jp nc, $aef3                                     ; $7726: $d2 $f3 $ae

	rst JumpTable                                          ; $7729: $c7
	db $fd                                           ; $772a: $fd
	rlca                                             ; $772b: $07
	db $fd                                           ; $772c: $fd
	xor $1e                                          ; $772d: $ee $1e
	ret z                                            ; $772f: $c8

	jr c, @-$36                                      ; $7730: $38 $c8

	jr c, jr_06e_7704                                ; $7732: $38 $d0

	jr nc, jr_06e_76c6                               ; $7734: $30 $90

	ld [hl], b                                       ; $7736: $70

jr_06e_7737:
	and b                                            ; $7737: $a0
	ld h, b                                          ; $7738: $60
	ld b, b                                          ; $7739: $40
	ret nz                                           ; $773a: $c0

	add b                                            ; $773b: $80
	add b                                            ; $773c: $80
	rst FarCall                                          ; $773d: $f7
	daa                                              ; $773e: $27
	jr nz, jr_06e_77c0                               ; $773f: $20 $7f

	ld [hl+], a                                      ; $7741: $22
	ld a, a                                          ; $7742: $7f
	ld e, $03                                        ; $7743: $1e $03
	jr nz, jr_06e_777a                               ; $7745: $20 $33

	jr nz, jr_06e_77c8                               ; $7747: $20 $7f

	cp $9a                                           ; $7749: $fe $9a

jr_06e_774b:
	xor $f0                                          ; $774b: $ee $f0
	or $f8                                           ; $774d: $f6 $f8
	ld a, [hl]                                       ; $774f: $7e

jr_06e_7750:
	ld e, e                                          ; $7750: $5b
	jr nz, jr_06e_76f0                               ; $7751: $20 $9d

	rst SubAFromDE                                          ; $7753: $df
	ldh [$03], a                                     ; $7754: $e0 $03
	jr nz, jr_06e_77a3                               ; $7756: $20 $4b

	jr nz, jr_06e_76f8                               ; $7758: $20 $9e

	ld b, $1b                                        ; $775a: $06 $1b
	jr nz, @-$67                                     ; $775c: $20 $97

	cp $03                                           ; $775e: $fe $03
	ld l, a                                          ; $7760: $6f
	di                                               ; $7761: $f3
	push af                                          ; $7762: $f5
	ei                                               ; $7763: $fb
	dec a                                            ; $7764: $3d
	ccf                                              ; $7765: $3f
	inc bc                                           ; $7766: $03
	jr nz, jr_06e_778c                               ; $7767: $20 $23

	jr nz, jr_06e_76fe                               ; $7769: $20 $93

	ld a, a                                          ; $776b: $7f
	ldh [$7c], a                                     ; $776c: $e0 $7c
	ldh [$f8], a                                     ; $776e: $e0 $f8
	ld h, b                                          ; $7770: $60
	ldh a, [$60]                                     ; $7771: $f0 $60
	ld d, c                                          ; $7773: $51

jr_06e_7774:
	db $e3                                           ; $7774: $e3
	ld l, a                                          ; $7775: $6f
	rst GetHLinHL                                          ; $7776: $cf
	inc bc                                           ; $7777: $03
	jr nz, @+$3d                                     ; $7778: $20 $3b

jr_06e_777a:
	jr nz, jr_06e_771a                               ; $777a: $20 $9e

	cp $bd                                           ; $777c: $fe $bd
	cp $7e                                           ; $777e: $fe $7e
	ld a, $ec                                        ; $7780: $3e $ec
	sub [hl]                                         ; $7782: $96
	ldh a, [$fc]                                     ; $7783: $f0 $fc
	db $fc                                           ; $7785: $fc
	rst $38                                          ; $7786: $ff
	ret nc                                           ; $7787: $d0

	rst $38                                          ; $7788: $ff
	ldh [$3f], a                                     ; $7789: $e0 $3f
	ret nz                                           ; $778b: $c0

jr_06e_778c:
	inc bc                                           ; $778c: $03
	jr nz, @+$48                                     ; $778d: $20 $46

	ld b, b                                          ; $778f: $40
	cp [hl]                                          ; $7790: $be
	inc bc                                           ; $7791: $03
	inc bc                                           ; $7792: $03
	nop                                              ; $7793: $00
	ld a, a                                          ; $7794: $7f
	inc e                                            ; $7795: $1c
	sbc [hl]                                         ; $7796: $9e
	inc bc                                           ; $7797: $03
	scf                                              ; $7798: $37
	jr nz, jr_06e_7737                               ; $7799: $20 $9c

	rst $38                                          ; $779b: $ff
	inc bc                                           ; $779c: $03
	db $fd                                           ; $779d: $fd
	ld a, e                                          ; $779e: $7b
	cp $93                                           ; $779f: $fe $93
	ld e, $03                                        ; $77a1: $1e $03

jr_06e_77a3:
	xor $f3                                          ; $77a3: $ee $f3
	ld a, e                                          ; $77a5: $7b
	sbc $eb                                          ; $77a6: $de $eb
	or [hl]                                          ; $77a8: $b6
	rra                                              ; $77a9: $1f
	push hl                                          ; $77aa: $e5
	rst FarCall                                          ; $77ab: $f7
	dec c                                            ; $77ac: $0d
	inc bc                                           ; $77ad: $03
	jr nz, jr_06e_7813                               ; $77ae: $20 $63

	jr nz, jr_06e_7750                               ; $77b0: $20 $9e

	rst $38                                          ; $77b2: $ff
	ld e, e                                          ; $77b3: $5b
	jr nz, jr_06e_774b                               ; $77b4: $20 $95

	ld d, b                                          ; $77b6: $50
	ldh [$60], a                                     ; $77b7: $e0 $60
	ret nz                                           ; $77b9: $c0

	ld h, b                                          ; $77ba: $60
	ret nz                                           ; $77bb: $c0

	ld l, [hl]                                       ; $77bc: $6e
	rst JumpTable                                          ; $77bd: $c7
	rst SubAFromBC                                          ; $77be: $e7
	pop bc                                           ; $77bf: $c1

jr_06e_77c0:
	inc bc                                           ; $77c0: $03
	jr nz, jr_06e_7806                               ; $77c1: $20 $43

	jr nz, jr_06e_783c                               ; $77c3: $20 $77

	ld e, $9e                                        ; $77c5: $1e $9e
	ld a, h                                          ; $77c7: $7c

jr_06e_77c8:
	cp a                                             ; $77c8: $bf
	ld a, h                                          ; $77c9: $7c
	inc bc                                           ; $77ca: $03
	sbc d                                            ; $77cb: $9a
	db $fc                                           ; $77cc: $fc
	rst SubAFromDE                                          ; $77cd: $df
	jr c, @+$01                                      ; $77ce: $38 $ff

	ldh a, [$03]                                     ; $77d0: $f0 $03
	jr nz, @+$35                                     ; $77d2: $20 $33

	jr nz, jr_06e_7774                               ; $77d4: $20 $9e

	ld bc, $01bf                                     ; $77d6: $01 $bf $01
	reti                                             ; $77d9: $d9


	ld c, e                                          ; $77da: $4b
	jr nz, jr_06e_785c                               ; $77db: $20 $7f

	inc [hl]                                         ; $77dd: $34
	ld h, a                                          ; $77de: $67
	jr nz, jr_06e_7860                               ; $77df: $20 $7f

	ld hl, sp+$7f                                    ; $77e1: $f8 $7f
	cp $99                                           ; $77e3: $fe $99
	dec de                                           ; $77e5: $1b
	ld b, $5b                                        ; $77e6: $06 $5b
	cp [hl]                                          ; $77e8: $be
	rst AddAOntoHL                                          ; $77e9: $ef
	push af                                          ; $77ea: $f5
	rla                                              ; $77eb: $17
	jr nz, @-$7d                                     ; $77ec: $20 $81

	rst FarCall                                          ; $77ee: $f7
	add hl, bc                                       ; $77ef: $09
	ldh a, [c]                                       ; $77f0: $f2
	dec c                                            ; $77f1: $0d
	ld sp, hl                                        ; $77f2: $f9
	ld c, $ed                                        ; $77f3: $0e $ed
	ld e, $eb                                        ; $77f5: $1e $eb
	inc e                                            ; $77f7: $1c
	rst $38                                          ; $77f8: $ff
	nop                                              ; $77f9: $00
	db $eb                                           ; $77fa: $eb
	call c, Call_06e_78b7                            ; $77fb: $dc $b7 $78
	rst $38                                          ; $77fe: $ff
	nop                                              ; $77ff: $00
	rst SubAFromDE                                          ; $7800: $df

jr_06e_7801:
	jr nc, jr_06e_7801                               ; $7801: $30 $fe

	ld bc, $03fd                                     ; $7803: $01 $fd $03

jr_06e_7806:
	or $0e                                           ; $7806: $f6 $0e
	inc l                                            ; $7808: $2c
	call c, $f0f0                                    ; $7809: $dc $f0 $f0
	ld c, a                                          ; $780c: $4f
	ldh [$9c], a                                     ; $780d: $e0 $9c
	rst GetHLinHL                                          ; $780f: $cf
	db $fc                                           ; $7810: $fc
	ld a, a                                          ; $7811: $7f
	ld a, b                                          ; $7812: $78

jr_06e_7813:
	or [hl]                                          ; $7813: $b6
	rrca                                             ; $7814: $0f
	ldh [$99], a                                     ; $7815: $e0 $99
	cp a                                             ; $7817: $bf
	ld [hl], b                                       ; $7818: $70
	rst $38                                          ; $7819: $ff
	nop                                              ; $781a: $00
	sbc $31                                          ; $781b: $de $31
	rra                                              ; $781d: $1f
	ldh [$97], a                                     ; $781e: $e0 $97
	rst FarCall                                          ; $7820: $f7
	ld a, b                                          ; $7821: $78
	cp a                                             ; $7822: $bf
	ld [hl], b                                       ; $7823: $70
	cp $01                                           ; $7824: $fe $01
	db $dd                                           ; $7826: $dd
	inc sp                                           ; $7827: $33
	ld h, a                                          ; $7828: $67
	ldh [$f0], a                                     ; $7829: $e0 $f0
	ld bc, $7580                                     ; $782b: $01 $80 $75
	cp $2b                                           ; $782e: $fe $2b
	db $fd                                           ; $7830: $fd
	ld l, l                                          ; $7831: $6d
	ei                                               ; $7832: $fb
	ld d, [hl]                                       ; $7833: $56
	ei                                               ; $7834: $fb
	db $db                                           ; $7835: $db
	or $9b                                           ; $7836: $f6 $9b
	or $d7                                           ; $7838: $f6 $d7
	cp h                                             ; $783a: $bc
	sub l                                            ; $783b: $95

jr_06e_783c:
	cp a                                             ; $783c: $bf
	cp $af                                           ; $783d: $fe $af
	cp a                                             ; $783f: $bf
	db $e4                                           ; $7840: $e4
	ld a, a                                          ; $7841: $7f
	ldh [$7d], a                                     ; $7842: $e0 $7d
	db $e3                                           ; $7844: $e3
	ei                                               ; $7845: $fb
	ld h, a                                          ; $7846: $67
	cp $6e                                           ; $7847: $fe $6e
	ld e, e                                          ; $7849: $5b
	and $7f                                          ; $784a: $e6 $7f
	add c                                            ; $784c: $81
	jp $c366                                         ; $784d: $c3 $66 $c3


	ld h, e                                          ; $7850: $63
	pop bc                                           ; $7851: $c1
	rst SubAFromBC                                          ; $7852: $e7
	ret nz                                           ; $7853: $c0

	ldh [$c0], a                                     ; $7854: $e0 $c0
	ldh a, [$c0]                                     ; $7856: $f0 $c0
	ldh a, [$e0]                                     ; $7858: $f0 $e0
	ld hl, sp-$60                                    ; $785a: $f8 $a0

jr_06e_785c:
	db $fc                                           ; $785c: $fc
	db $10                                           ; $785d: $10
	cp $08                                           ; $785e: $fe $08

jr_06e_7860:
	rst GetHLinHL                                          ; $7860: $cf
	ld b, $47                                        ; $7861: $06 $47
	inc bc                                           ; $7863: $03
	ld b, e                                          ; $7864: $43
	ld bc, $0041                                     ; $7865: $01 $41 $00
	ld b, c                                          ; $7868: $41
	nop                                              ; $7869: $00
	ld hl, $fe7b                                     ; $786a: $21 $7b $fe
	add b                                            ; $786d: $80
	xor l                                            ; $786e: $ad
	rst SubAFromDE                                          ; $786f: $df
	reti                                             ; $7870: $d9


	cp a                                             ; $7871: $bf
	cp a                                             ; $7872: $bf
	ld [$eabb], a                                    ; $7873: $ea $bb $ea
	rst AddAOntoHL                                          ; $7876: $ef
	jp z, $8eeb                                      ; $7877: $ca $eb $8e

	and $86                                          ; $787a: $e6 $86
	ld a, [$ecf3]                                    ; $787c: $fa $f3 $ec
	jr @-$02                                         ; $787f: $18 $fc

	nop                                              ; $7881: $00
	ld e, $e0                                        ; $7882: $1e $e0
	or $f8                                           ; $7884: $f6 $f8

jr_06e_7886:
	ld a, $38                                        ; $7886: $3e $38
	halt                                             ; $7888: $76
	ld a, b                                          ; $7889: $78
	call nc, $d0f0                                   ; $788a: $d4 $f0 $d0
	sub [hl]                                         ; $788d: $96
	ldh a, [$3f]                                     ; $788e: $f0 $3f
	ret nc                                           ; $7890: $d0

	rst $38                                          ; $7891: $ff
	jr nz, @-$37                                     ; $7892: $20 $c7

	ld hl, sp-$01                                    ; $7894: $f8 $ff
	nop                                              ; $7896: $00
	ld e, a                                          ; $7897: $5f
	cp $88                                           ; $7898: $fe $88
	ld a, a                                          ; $789a: $7f
	add b                                            ; $789b: $80

jr_06e_789c:
	cp a                                             ; $789c: $bf
	ret nz                                           ; $789d: $c0

jr_06e_789e:
	rst AddAOntoHL                                          ; $789e: $ef
	ldh a, [$f9]                                     ; $789f: $f0 $f9
	cp $7f                                           ; $78a1: $fe $7f
	rst $38                                          ; $78a3: $ff
	jr c, jr_06e_789e                                ; $78a4: $38 $f8

	jr @-$06                                         ; $78a6: $18 $f8

	push bc                                          ; $78a8: $c5
	ld b, $c7                                        ; $78a9: $06 $c7
	ld [bc], a                                       ; $78ab: $02
	add d                                            ; $78ac: $82
	inc bc                                           ; $78ad: $03
	add e                                            ; $78ae: $83
	ld bc, $7781                                     ; $78af: $01 $81 $77
	cp $7b                                           ; $78b2: $fe $7b
	xor h                                            ; $78b4: $ac
	sub h                                            ; $78b5: $94
	nop                                              ; $78b6: $00

Call_06e_78b7:
	ld bc, $0003                                     ; $78b7: $01 $03 $00

jr_06e_78ba:
	inc bc                                           ; $78ba: $03
	nop                                              ; $78bb: $00
	ld b, $01                                        ; $78bc: $06 $01
	rlca                                             ; $78be: $07
	ld bc, $7b03                                     ; $78bf: $01 $03 $7b
	cp $df                                           ; $78c2: $fe $df

jr_06e_78c4:
	ld bc, $d980                                     ; $78c4: $01 $80 $d9
	cp $5f                                           ; $78c7: $fe $5f
	rst AddAOntoHL                                          ; $78c9: $ef

jr_06e_78ca:
	ld l, h                                          ; $78ca: $6c
	rst FarCall                                          ; $78cb: $f7
	ld d, d                                          ; $78cc: $52
	rst $38                                          ; $78cd: $ff
	ld l, d                                          ; $78ce: $6a
	rst SubAFromDE                                          ; $78cf: $df
	ld a, e                                          ; $78d0: $7b
	rst GetHLinHL                                          ; $78d1: $cf
	or a                                             ; $78d2: $b7
	rst GetHLinHL                                          ; $78d3: $cf
	push af                                          ; $78d4: $f5
	rst $38                                          ; $78d5: $ff
	ld l, a                                          ; $78d6: $6f
	sbc c                                            ; $78d7: $99
	cp $03                                           ; $78d8: $fe $03
	ld l, a                                          ; $78da: $6f
	di                                               ; $78db: $f3

jr_06e_78dc:
	push af                                          ; $78dc: $f5
	ei                                               ; $78dd: $fb
	sbc l                                            ; $78de: $9d
	sbc a                                            ; $78df: $9f
	ld l, [hl]                                       ; $78e0: $6e
	dec sp                                           ; $78e1: $3b
	or $eb                                           ; $78e2: $f6 $eb
	ld l, a                                          ; $78e4: $6f
	adc b                                            ; $78e5: $88
	ldh [c], a                                       ; $78e6: $e2
	di                                               ; $78e7: $f3
	xor [hl]                                         ; $78e8: $ae
	rst JumpTable                                          ; $78e9: $c7
	db $fd                                           ; $78ea: $fd
	rlca                                             ; $78eb: $07
	db $fd                                           ; $78ec: $fd
	xor $1e                                          ; $78ed: $ee $1e
	ret z                                            ; $78ef: $c8

	jr c, jr_06e_78ba                                ; $78f0: $38 $c8

	jr c, jr_06e_78c4                                ; $78f2: $38 $d0

	jr nc, jr_06e_7886                               ; $78f4: $30 $90

	ld [hl], b                                       ; $78f6: $70
	and b                                            ; $78f7: $a0
	ld h, b                                          ; $78f8: $60
	ld b, b                                          ; $78f9: $40
	ret nz                                           ; $78fa: $c0

Call_06e_78fb:
	add b                                            ; $78fb: $80
	add b                                            ; $78fc: $80
	rst FarCall                                          ; $78fd: $f7
	ld b, a                                          ; $78fe: $47
	jr nz, jr_06e_789e                               ; $78ff: $20 $9d

	db $fd                                           ; $7901: $fd
	xor [hl]                                         ; $7902: $ae
	ld [hl], a                                       ; $7903: $77
	jr nz, jr_06e_789c                               ; $7904: $20 $96

	ld a, [hl]                                       ; $7906: $7e
	pop hl                                           ; $7907: $e1
	db $fd                                           ; $7908: $fd
	ld h, e                                          ; $7909: $63
	ld a, [$5f66]                                    ; $790a: $fa $66 $5f
	xor $77                                          ; $790d: $ee $77

jr_06e_790f:
	inc bc                                           ; $790f: $03
	jr nz, jr_06e_7959                               ; $7910: $20 $47

	jr nz, @+$81                                     ; $7912: $20 $7f

	ld [hl+], a                                      ; $7914: $22
	ld a, a                                          ; $7915: $7f
	cp $97                                           ; $7916: $fe $97
	cp $00                                           ; $7918: $fe $00
	xor $f0                                          ; $791a: $ee $f0
	ld a, [$7efc]                                    ; $791c: $fa $fc $7e
	ld a, h                                          ; $791f: $7c
	inc bc                                           ; $7920: $03
	jr nz, @+$3d                                     ; $7921: $20 $3b

	jr nz, @-$63                                     ; $7923: $20 $9b

	ld [bc], a                                       ; $7925: $02

jr_06e_7926:
	ld bc, $0007                                     ; $7926: $01 $07 $00
	ld [hl], a                                       ; $7929: $77
	cp $7f                                           ; $792a: $fe $7f
	ld hl, sp+$77                                    ; $792c: $f8 $77
	ld [hl+], a                                      ; $792e: $22
	ccf                                              ; $792f: $3f
	jr nz, jr_06e_78ca                               ; $7930: $20 $98

	ld a, a                                          ; $7932: $7f
	add c                                            ; $7933: $81
	cp $03                                           ; $7934: $fe $03
	sbc a                                            ; $7936: $9f
	ld h, e                                          ; $7937: $63
	ld l, l                                          ; $7938: $6d
	ld a, e                                          ; $7939: $7b
	ld e, $99                                        ; $793a: $1e $99
	ld a, [hl]                                       ; $793c: $7e

jr_06e_793d:
	ccf                                              ; $793d: $3f
	sub $f3                                          ; $793e: $d6 $f3
	ld [hl], a                                       ; $7940: $77
	jp nc, $2003                                     ; $7941: $d2 $03 $20

	inc sp                                           ; $7944: $33
	jr nz, jr_06e_78dc                               ; $7945: $20 $95

	ld a, h                                          ; $7947: $7c
	ldh [$f8], a                                     ; $7948: $e0 $f8
	ld h, b                                          ; $794a: $60
	ldh a, [$60]                                     ; $794b: $f0 $60
	ld d, c                                          ; $794d: $51
	db $e3                                           ; $794e: $e3
	ld l, a                                          ; $794f: $6f
	rst GetHLinHL                                          ; $7950: $cf
	inc bc                                           ; $7951: $03
	jr nz, @+$35                                     ; $7952: $20 $33

	jr nz, @+$81                                     ; $7954: $20 $7f

	cp $91                                           ; $7956: $fe $91
	ld a, [hl]                                       ; $7958: $7e

jr_06e_7959:
	nop                                              ; $7959: $00

jr_06e_795a:
	ld a, $00                                        ; $795a: $3e $00
	db $ec                                           ; $795c: $ec

jr_06e_795d:
	ldh a, [$fc]                                     ; $795d: $f0 $fc
	db $fc                                           ; $795f: $fc
	rst $38                                          ; $7960: $ff
	ret nc                                           ; $7961: $d0

	rst $38                                          ; $7962: $ff
	ldh [$3f], a                                     ; $7963: $e0 $3f
	ret nz                                           ; $7965: $c0

	inc bc                                           ; $7966: $03
	jr nz, jr_06e_79ac                               ; $7967: $20 $43

	jr nz, jr_06e_79e1                               ; $7969: $20 $76

	ld a, [hl-]                                      ; $796b: $3a
	ld a, d                                          ; $796c: $7a
	inc [hl]                                         ; $796d: $34
	sbc [hl]                                         ; $796e: $9e
	inc bc                                           ; $796f: $03
	scf                                              ; $7970: $37
	jr nz, jr_06e_790f                               ; $7971: $20 $9c

	rst $38                                          ; $7973: $ff
	inc bc                                           ; $7974: $03
	db $fd                                           ; $7975: $fd
	ld a, e                                          ; $7976: $7b
	cp $93                                           ; $7977: $fe $93
	ld e, $03                                        ; $7979: $1e $03
	xor $f3                                          ; $797b: $ee $f3
	ld a, e                                          ; $797d: $7b
	sbc $eb                                          ; $797e: $de $eb
	or [hl]                                          ; $7980: $b6
	rra                                              ; $7981: $1f
	push hl                                          ; $7982: $e5
	rst FarCall                                          ; $7983: $f7
	dec c                                            ; $7984: $0d
	inc bc                                           ; $7985: $03
	jr nz, jr_06e_79e1                               ; $7986: $20 $59

	ld h, b                                          ; $7988: $60
	sbc e                                            ; $7989: $9b
	cp l                                             ; $798a: $bd
	and $77                                          ; $798b: $e6 $77
	add sp, $6f                                      ; $798d: $e8 $6f
	jr nz, jr_06e_7926                               ; $798f: $20 $95

	ld d, b                                          ; $7991: $50
	ldh [$60], a                                     ; $7992: $e0 $60
	ret nz                                           ; $7994: $c0

	ld h, b                                          ; $7995: $60
	ret nz                                           ; $7996: $c0

	ld l, [hl]                                       ; $7997: $6e
	rst JumpTable                                          ; $7998: $c7
	rst SubAFromBC                                          ; $7999: $e7
	pop bc                                           ; $799a: $c1
	inc bc                                           ; $799b: $03
	jr nz, jr_06e_7a01                               ; $799c: $20 $63

	jr nz, jr_06e_793d                               ; $799e: $20 $9d

	ld l, h                                          ; $79a0: $6c
	sbc b                                            ; $79a1: $98
	ld l, a                                          ; $79a2: $6f
	jr nz, @+$79                                     ; $79a3: $20 $77

	ld e, $9e                                        ; $79a5: $1e $9e
	ld a, h                                          ; $79a7: $7c
	ld a, e                                          ; $79a8: $7b
	cp $99                                           ; $79a9: $fe $99
	inc bc                                           ; $79ab: $03

jr_06e_79ac:
	db $fc                                           ; $79ac: $fc
	rst SubAFromDE                                          ; $79ad: $df
	jr c, @+$01                                      ; $79ae: $38 $ff

	ldh a, [$03]                                     ; $79b0: $f0 $03
	jr nz, jr_06e_7a17                               ; $79b2: $20 $63

	jr nz, jr_06e_7a34                               ; $79b4: $20 $7e

	ld c, d                                          ; $79b6: $4a
	ld a, c                                          ; $79b7: $79
	ld h, h                                          ; $79b8: $64
	ld l, e                                          ; $79b9: $6b
	jr nz, jr_06e_795a                               ; $79ba: $20 $9e

	ld bc, $fe7b                                     ; $79bc: $01 $7b $fe
	ld b, a                                          ; $79bf: $47
	jr nz, jr_06e_795d                               ; $79c0: $20 $9b

	scf                                              ; $79c2: $37
	call $837e                                       ; $79c3: $cd $7e $83
	ld l, a                                          ; $79c6: $6f
	jr nz, jr_06e_7a48                               ; $79c7: $20 $7f

	jr jr_06e_7a4a                                   ; $79c9: $18 $7f

	cp $99                                           ; $79cb: $fe $99
	dec de                                           ; $79cd: $1b
	ld b, $5b                                        ; $79ce: $06 $5b
	cp [hl]                                          ; $79d0: $be
	rst AddAOntoHL                                          ; $79d1: $ef
	push af                                          ; $79d2: $f5
	rla                                              ; $79d3: $17
	jr nz, @-$7d                                     ; $79d4: $20 $81

	rst FarCall                                          ; $79d6: $f7
	add hl, bc                                       ; $79d7: $09
	di                                               ; $79d8: $f3
	inc c                                            ; $79d9: $0c
	ld sp, hl                                        ; $79da: $f9
	ld c, $ed                                        ; $79db: $0e $ed
	ld e, $eb                                        ; $79dd: $1e $eb
	inc e                                            ; $79df: $1c
	rst $38                                          ; $79e0: $ff

jr_06e_79e1:
	nop                                              ; $79e1: $00
	db $eb                                           ; $79e2: $eb
	call c, Call_06e_78b7                            ; $79e3: $dc $b7 $78
	rst $38                                          ; $79e6: $ff
	nop                                              ; $79e7: $00
	rst SubAFromDE                                          ; $79e8: $df

jr_06e_79e9:
	jr nc, jr_06e_79e9                               ; $79e9: $30 $fe

	ld bc, $03fd                                     ; $79eb: $01 $fd $03
	or $0e                                           ; $79ee: $f6 $0e
	inc l                                            ; $79f0: $2c
	call c, $f0f0                                    ; $79f1: $dc $f0 $f0
	ld c, a                                          ; $79f4: $4f
	ldh [$9d], a                                     ; $79f5: $e0 $9d
	ld a, e                                          ; $79f7: $7b
	db $fc                                           ; $79f8: $fc
	rlca                                             ; $79f9: $07
	ldh [$97], a                                     ; $79fa: $e0 $97
	ld e, a                                          ; $79fc: $5f
	ld hl, sp-$41                                    ; $79fd: $f8 $bf
	ld [hl], b                                       ; $79ff: $70
	rst $38                                          ; $7a00: $ff

jr_06e_7a01:
	nop                                              ; $7a01: $00
	sbc $31                                          ; $7a02: $de $31
	ld e, a                                          ; $7a04: $5f
	ldh [$9d], a                                     ; $7a05: $e0 $9d
	push af                                          ; $7a07: $f5
	dec bc                                           ; $7a08: $0b
	ld e, a                                          ; $7a09: $5f
	ldh [hDisp1_OBP0], a                                     ; $7a0a: $e0 $93
	ld a, a                                          ; $7a0c: $7f
	db $fc                                           ; $7a0d: $fc
	ld a, e                                          ; $7a0e: $7b
	db $fc                                           ; $7a0f: $fc
	rst SubAFromDE                                          ; $7a10: $df
	ld a, b                                          ; $7a11: $78
	cp a                                             ; $7a12: $bf
	ld [hl], b                                       ; $7a13: $70
	cp $01                                           ; $7a14: $fe $01
	db $dd                                           ; $7a16: $dd

jr_06e_7a17:
	inc sp                                           ; $7a17: $33
	ld h, a                                          ; $7a18: $67
	ldh [$e8], a                                     ; $7a19: $e0 $e8
	ld bc, $7580                                     ; $7a1b: $01 $80 $75
	cp $2b                                           ; $7a1e: $fe $2b
	db $fd                                           ; $7a20: $fd
	ld l, l                                          ; $7a21: $6d
	ei                                               ; $7a22: $fb
	ld d, [hl]                                       ; $7a23: $56
	ei                                               ; $7a24: $fb
	db $db                                           ; $7a25: $db
	or $9b                                           ; $7a26: $f6 $9b
	or $d7                                           ; $7a28: $f6 $d7
	cp h                                             ; $7a2a: $bc
	sub l                                            ; $7a2b: $95
	cp a                                             ; $7a2c: $bf
	cp $af                                           ; $7a2d: $fe $af
	cp a                                             ; $7a2f: $bf
	db $e4                                           ; $7a30: $e4
	ld a, a                                          ; $7a31: $7f
	ldh [$7d], a                                     ; $7a32: $e0 $7d

jr_06e_7a34:
	db $e3                                           ; $7a34: $e3
	ei                                               ; $7a35: $fb
	ld h, a                                          ; $7a36: $67
	cp $6e                                           ; $7a37: $fe $6e
	ld e, e                                          ; $7a39: $5b
	and $7f                                          ; $7a3a: $e6 $7f
	add c                                            ; $7a3c: $81
	jp $c366                                         ; $7a3d: $c3 $66 $c3


	ld h, e                                          ; $7a40: $63
	pop bc                                           ; $7a41: $c1
	rst SubAFromBC                                          ; $7a42: $e7
	ret nz                                           ; $7a43: $c0

	ldh [$c0], a                                     ; $7a44: $e0 $c0
	ldh a, [$c0]                                     ; $7a46: $f0 $c0

jr_06e_7a48:
	ldh a, [$e0]                                     ; $7a48: $f0 $e0

jr_06e_7a4a:
	ld hl, sp-$60                                    ; $7a4a: $f8 $a0
	db $fc                                           ; $7a4c: $fc
	db $10                                           ; $7a4d: $10
	cp $08                                           ; $7a4e: $fe $08
	rst GetHLinHL                                          ; $7a50: $cf
	ld b, $47                                        ; $7a51: $06 $47
	inc bc                                           ; $7a53: $03
	ld b, e                                          ; $7a54: $43
	ld bc, $0041                                     ; $7a55: $01 $41 $00
	ld b, c                                          ; $7a58: $41
	nop                                              ; $7a59: $00
	ld hl, $fe7b                                     ; $7a5a: $21 $7b $fe
	add b                                            ; $7a5d: $80
	xor l                                            ; $7a5e: $ad
	rst SubAFromDE                                          ; $7a5f: $df
	reti                                             ; $7a60: $d9


	cp a                                             ; $7a61: $bf
	cp a                                             ; $7a62: $bf
	ld [$eabb], a                                    ; $7a63: $ea $bb $ea
	rst AddAOntoHL                                          ; $7a66: $ef
	jp z, $8eeb                                      ; $7a67: $ca $eb $8e

	and $86                                          ; $7a6a: $e6 $86
	ld a, [$ecf3]                                    ; $7a6c: $fa $f3 $ec
	jr @-$02                                         ; $7a6f: $18 $fc

	nop                                              ; $7a71: $00
	ld e, $e0                                        ; $7a72: $1e $e0
	or $f8                                           ; $7a74: $f6 $f8

jr_06e_7a76:
	ld a, $38                                        ; $7a76: $3e $38
	halt                                             ; $7a78: $76
	ld a, b                                          ; $7a79: $78
	call nc, $d0f0                                   ; $7a7a: $d4 $f0 $d0
	sub [hl]                                         ; $7a7d: $96
	ldh a, [$3f]                                     ; $7a7e: $f0 $3f
	ret nc                                           ; $7a80: $d0

	rst $38                                          ; $7a81: $ff
	jr nz, @-$37                                     ; $7a82: $20 $c7

	ld hl, sp-$01                                    ; $7a84: $f8 $ff
	nop                                              ; $7a86: $00
	ld e, a                                          ; $7a87: $5f
	cp $88                                           ; $7a88: $fe $88
	ld a, a                                          ; $7a8a: $7f
	add b                                            ; $7a8b: $80

jr_06e_7a8c:
	cp a                                             ; $7a8c: $bf
	ret nz                                           ; $7a8d: $c0

jr_06e_7a8e:
	rst AddAOntoHL                                          ; $7a8e: $ef
	ldh a, [$f9]                                     ; $7a8f: $f0 $f9
	cp $7f                                           ; $7a91: $fe $7f
	rst $38                                          ; $7a93: $ff
	jr c, jr_06e_7a8e                                ; $7a94: $38 $f8

	jr @-$06                                         ; $7a96: $18 $f8

	push bc                                          ; $7a98: $c5
	ld b, $c7                                        ; $7a99: $06 $c7
	ld [bc], a                                       ; $7a9b: $02
	add d                                            ; $7a9c: $82
	inc bc                                           ; $7a9d: $03
	add e                                            ; $7a9e: $83
	ld bc, $7781                                     ; $7a9f: $01 $81 $77
	cp $7b                                           ; $7aa2: $fe $7b
	xor h                                            ; $7aa4: $ac
	sub h                                            ; $7aa5: $94
	nop                                              ; $7aa6: $00
	ld bc, $0003                                     ; $7aa7: $01 $03 $00

jr_06e_7aaa:
	inc bc                                           ; $7aaa: $03
	nop                                              ; $7aab: $00
	ld b, $01                                        ; $7aac: $06 $01
	rlca                                             ; $7aae: $07
	ld bc, $7b03                                     ; $7aaf: $01 $03 $7b
	cp $df                                           ; $7ab2: $fe $df

jr_06e_7ab4:
	ld bc, $d980                                     ; $7ab4: $01 $80 $d9
	cp $5f                                           ; $7ab7: $fe $5f
	rst AddAOntoHL                                          ; $7ab9: $ef
	ld l, h                                          ; $7aba: $6c
	rst FarCall                                          ; $7abb: $f7
	ld d, d                                          ; $7abc: $52
	rst $38                                          ; $7abd: $ff
	ld l, d                                          ; $7abe: $6a

jr_06e_7abf:
	rst SubAFromDE                                          ; $7abf: $df
	ld a, e                                          ; $7ac0: $7b
	rst GetHLinHL                                          ; $7ac1: $cf
	or a                                             ; $7ac2: $b7
	rst GetHLinHL                                          ; $7ac3: $cf
	push af                                          ; $7ac4: $f5
	rst $38                                          ; $7ac5: $ff
	ld l, a                                          ; $7ac6: $6f
	sbc c                                            ; $7ac7: $99
	cp $03                                           ; $7ac8: $fe $03
	ld l, a                                          ; $7aca: $6f
	di                                               ; $7acb: $f3
	push af                                          ; $7acc: $f5
	ei                                               ; $7acd: $fb
	sbc l                                            ; $7ace: $9d
	sbc a                                            ; $7acf: $9f
	ld l, [hl]                                       ; $7ad0: $6e

jr_06e_7ad1:
	dec sp                                           ; $7ad1: $3b
	or $eb                                           ; $7ad2: $f6 $eb
	ld l, a                                          ; $7ad4: $6f
	adc b                                            ; $7ad5: $88
	ldh [c], a                                       ; $7ad6: $e2
	di                                               ; $7ad7: $f3
	xor [hl]                                         ; $7ad8: $ae
	rst JumpTable                                          ; $7ad9: $c7
	db $fd                                           ; $7ada: $fd
	rlca                                             ; $7adb: $07
	db $fd                                           ; $7adc: $fd
	xor $1e                                          ; $7add: $ee $1e
	ret z                                            ; $7adf: $c8

	jr c, jr_06e_7aaa                                ; $7ae0: $38 $c8

	jr c, jr_06e_7ab4                                ; $7ae2: $38 $d0

	jr nc, jr_06e_7a76                               ; $7ae4: $30 $90

	ld [hl], b                                       ; $7ae6: $70
	and b                                            ; $7ae7: $a0
	ld h, b                                          ; $7ae8: $60
	ld b, b                                          ; $7ae9: $40
	ret nz                                           ; $7aea: $c0

	add b                                            ; $7aeb: $80
	add b                                            ; $7aec: $80
	rst FarCall                                          ; $7aed: $f7
	ld b, a                                          ; $7aee: $47
	jr nz, jr_06e_7a8e                               ; $7aef: $20 $9d

	db $fd                                           ; $7af1: $fd
	xor [hl]                                         ; $7af2: $ae
	ld [hl], a                                       ; $7af3: $77
	jr nz, jr_06e_7a8c                               ; $7af4: $20 $96

	ld a, [hl]                                       ; $7af6: $7e
	pop hl                                           ; $7af7: $e1
	db $fd                                           ; $7af8: $fd
	ld h, e                                          ; $7af9: $63
	ld a, [$5f66]                                    ; $7afa: $fa $66 $5f
	xor $77                                          ; $7afd: $ee $77
	inc bc                                           ; $7aff: $03
	jr nz, jr_06e_7b49                               ; $7b00: $20 $47

	jr nz, jr_06e_7b83                               ; $7b02: $20 $7f

jr_06e_7b04:
	ld [hl+], a                                      ; $7b04: $22
	ld a, a                                          ; $7b05: $7f
	cp $97                                           ; $7b06: $fe $97
	cp $00                                           ; $7b08: $fe $00
	xor $f0                                          ; $7b0a: $ee $f0
	ld a, [$7efc]                                    ; $7b0c: $fa $fc $7e
	ld a, h                                          ; $7b0f: $7c
	ld h, a                                          ; $7b10: $67
	jr nz, @-$61                                     ; $7b11: $20 $9d

	rst SubAFromDE                                          ; $7b13: $df
	ldh [$03], a                                     ; $7b14: $e0 $03
	jr nz, @+$65                                     ; $7b16: $20 $63

	jr nz, @-$63                                     ; $7b18: $20 $9b

	ld [bc], a                                       ; $7b1a: $02
	ld bc, $0007                                     ; $7b1b: $01 $07 $00
	ld [hl], a                                       ; $7b1e: $77
	cp $7f                                           ; $7b1f: $fe $7f
	ld hl, sp+$77                                    ; $7b21: $f8 $77
	ld [hl+], a                                      ; $7b23: $22
	ccf                                              ; $7b24: $3f
	jr nz, jr_06e_7abf                               ; $7b25: $20 $98

	ld a, a                                          ; $7b27: $7f
	add c                                            ; $7b28: $81
	cp $03                                           ; $7b29: $fe $03
	sbc a                                            ; $7b2b: $9f

jr_06e_7b2c:
	ld h, e                                          ; $7b2c: $63
	ld l, l                                          ; $7b2d: $6d
	ld a, e                                          ; $7b2e: $7b
	ld e, $99                                        ; $7b2f: $1e $99
	ld a, [hl]                                       ; $7b31: $7e
	ccf                                              ; $7b32: $3f
	sub $f3                                          ; $7b33: $d6 $f3
	ld [hl], a                                       ; $7b35: $77
	jp nc, $2003                                     ; $7b36: $d2 $03 $20

	inc sp                                           ; $7b39: $33
	jr nz, jr_06e_7ad1                               ; $7b3a: $20 $95

	ld a, h                                          ; $7b3c: $7c
	ldh [$f8], a                                     ; $7b3d: $e0 $f8
	ld h, b                                          ; $7b3f: $60
	ldh a, [$60]                                     ; $7b40: $f0 $60
	ld d, c                                          ; $7b42: $51
	db $e3                                           ; $7b43: $e3
	ld l, a                                          ; $7b44: $6f
	rst GetHLinHL                                          ; $7b45: $cf
	inc bc                                           ; $7b46: $03
	jr nz, jr_06e_7b7c                               ; $7b47: $20 $33

jr_06e_7b49:
	jr nz, jr_06e_7bca                               ; $7b49: $20 $7f

	cp $91                                           ; $7b4b: $fe $91
	ld a, [hl]                                       ; $7b4d: $7e
	nop                                              ; $7b4e: $00
	ld a, $00                                        ; $7b4f: $3e $00
	db $ec                                           ; $7b51: $ec
	ldh a, [$fc]                                     ; $7b52: $f0 $fc
	db $fc                                           ; $7b54: $fc
	rst $38                                          ; $7b55: $ff
	ret nc                                           ; $7b56: $d0

	rst $38                                          ; $7b57: $ff
	ldh [$3f], a                                     ; $7b58: $e0 $3f
	ret nz                                           ; $7b5a: $c0

	inc bc                                           ; $7b5b: $03
	jr nz, jr_06e_7ba1                               ; $7b5c: $20 $43

	jr nz, jr_06e_7bd6                               ; $7b5e: $20 $76

	ld a, [hl-]                                      ; $7b60: $3a
	ld a, d                                          ; $7b61: $7a
	inc [hl]                                         ; $7b62: $34
	sbc [hl]                                         ; $7b63: $9e
	inc bc                                           ; $7b64: $03
	scf                                              ; $7b65: $37
	jr nz, jr_06e_7b04                               ; $7b66: $20 $9c

	rst $38                                          ; $7b68: $ff
	inc bc                                           ; $7b69: $03
	db $fd                                           ; $7b6a: $fd
	ld a, e                                          ; $7b6b: $7b
	cp $99                                           ; $7b6c: $fe $99
	ld e, $03                                        ; $7b6e: $1e $03
	xor $f3                                          ; $7b70: $ee $f3
	ld a, e                                          ; $7b72: $7b
	sbc $03                                          ; $7b73: $de $03
	jr nz, jr_06e_7bb8                               ; $7b75: $20 $41

	ld h, b                                          ; $7b77: $60
	sbc e                                            ; $7b78: $9b
	cp l                                             ; $7b79: $bd
	and $77                                          ; $7b7a: $e6 $77

jr_06e_7b7c:
	add sp, $6f                                      ; $7b7c: $e8 $6f
	jr nz, @-$69                                     ; $7b7e: $20 $95

	ld d, b                                          ; $7b80: $50
	ldh [$60], a                                     ; $7b81: $e0 $60

jr_06e_7b83:
	ret nz                                           ; $7b83: $c0

	ld h, b                                          ; $7b84: $60
	ret nz                                           ; $7b85: $c0

	ld l, [hl]                                       ; $7b86: $6e
	rst JumpTable                                          ; $7b87: $c7
	rst SubAFromBC                                          ; $7b88: $e7
	pop bc                                           ; $7b89: $c1
	inc bc                                           ; $7b8a: $03
	jr nz, jr_06e_7bf0                               ; $7b8b: $20 $63

	jr nz, jr_06e_7b2c                               ; $7b8d: $20 $9d

	ld l, h                                          ; $7b8f: $6c
	sbc b                                            ; $7b90: $98
	ld l, a                                          ; $7b91: $6f
	jr nz, jr_06e_7c0b                               ; $7b92: $20 $77

	ld e, $9e                                        ; $7b94: $1e $9e
	ld a, h                                          ; $7b96: $7c
	ld a, e                                          ; $7b97: $7b
	cp $99                                           ; $7b98: $fe $99
	inc bc                                           ; $7b9a: $03
	db $fc                                           ; $7b9b: $fc
	rst SubAFromDE                                          ; $7b9c: $df
	jr c, @+$01                                      ; $7b9d: $38 $ff

	ldh a, [$03]                                     ; $7b9f: $f0 $03

jr_06e_7ba1:
	jr nz, jr_06e_7c06                               ; $7ba1: $20 $63

	jr nz, @+$80                                     ; $7ba3: $20 $7e

	ld c, d                                          ; $7ba5: $4a
	ld a, c                                          ; $7ba6: $79
	ld h, h                                          ; $7ba7: $64
	ld l, e                                          ; $7ba8: $6b
	jr nz, jr_06e_7b49                               ; $7ba9: $20 $9e

	ld bc, $fe7b                                     ; $7bab: $01 $7b $fe
	ld b, a                                          ; $7bae: $47
	jr nz, @-$63                                     ; $7baf: $20 $9b

	ccf                                              ; $7bb1: $3f
	pop bc                                           ; $7bb2: $c1
	ld a, [hl]                                       ; $7bb3: $7e
	add e                                            ; $7bb4: $83
	ld l, a                                          ; $7bb5: $6f
	jr nz, @+$81                                     ; $7bb6: $20 $7f

jr_06e_7bb8:
	jr jr_06e_7c39                                   ; $7bb8: $18 $7f

	cp $97                                           ; $7bba: $fe $97
	dec de                                           ; $7bbc: $1b
	ld b, $5b                                        ; $7bbd: $06 $5b
	cp [hl]                                          ; $7bbf: $be
	rst AddAOntoHL                                          ; $7bc0: $ef
	push af                                          ; $7bc1: $f5
	rst FarCall                                          ; $7bc2: $f7
	dec c                                            ; $7bc3: $0d
	rra                                              ; $7bc4: $1f
	jr nz, @-$7d                                     ; $7bc5: $20 $81

	rst FarCall                                          ; $7bc7: $f7
	add hl, bc                                       ; $7bc8: $09
	di                                               ; $7bc9: $f3

jr_06e_7bca:
	inc c                                            ; $7bca: $0c
	ld sp, hl                                        ; $7bcb: $f9
	ld c, $ed                                        ; $7bcc: $0e $ed
	ld e, $eb                                        ; $7bce: $1e $eb
	inc e                                            ; $7bd0: $1c
	rst $38                                          ; $7bd1: $ff
	nop                                              ; $7bd2: $00
	db $db                                           ; $7bd3: $db
	inc a                                            ; $7bd4: $3c
	rst GetHLinHL                                          ; $7bd5: $cf

jr_06e_7bd6:
	jr nc, @+$01                                     ; $7bd6: $30 $ff

	nop                                              ; $7bd8: $00
	rst FarCall                                          ; $7bd9: $f7

jr_06e_7bda:
	jr jr_06e_7bda                                   ; $7bda: $18 $fe

	ld bc, $03fd                                     ; $7bdc: $01 $fd $03
	or $0e                                           ; $7bdf: $f6 $0e
	inc l                                            ; $7be1: $2c
	call c, $f0f0                                    ; $7be2: $dc $f0 $f0
	ld b, a                                          ; $7be5: $47
	ldh [$7f], a                                     ; $7be6: $e0 $7f
	ld l, l                                          ; $7be8: $6d
	rla                                              ; $7be9: $17
	ldh [$7b], a                                     ; $7bea: $e0 $7b
	ld [hl], $9d                                     ; $7bec: $36 $9d
	jr c, @-$07                                      ; $7bee: $38 $f7

jr_06e_7bf0:
	ld a, e                                          ; $7bf0: $7b
	sbc $9d                                          ; $7bf1: $de $9d
	or $19                                           ; $7bf3: $f6 $19
	rra                                              ; $7bf5: $1f
	ldh [$7f], a                                     ; $7bf6: $e0 $7f
	cp $99                                           ; $7bf8: $fe $99
	rst SubAFromHL                                          ; $7bfa: $d7

jr_06e_7bfb:
	jr c, jr_06e_7bfb                                ; $7bfb: $38 $fe

	ld bc, $13ed                                     ; $7bfd: $01 $ed $13
	ld h, a                                          ; $7c00: $67
	ldh [$d2], a                                     ; $7c01: $e0 $d2
	ld bc, $7580                                     ; $7c03: $01 $80 $75

jr_06e_7c06:
	cp $2b                                           ; $7c06: $fe $2b
	db $fd                                           ; $7c08: $fd
	ld l, l                                          ; $7c09: $6d
	ei                                               ; $7c0a: $fb

jr_06e_7c0b:
	ld d, [hl]                                       ; $7c0b: $56
	ei                                               ; $7c0c: $fb
	db $db                                           ; $7c0d: $db
	or $9b                                           ; $7c0e: $f6 $9b
	or $d7                                           ; $7c10: $f6 $d7
	cp h                                             ; $7c12: $bc
	sub l                                            ; $7c13: $95
	cp a                                             ; $7c14: $bf
	rst $38                                          ; $7c15: $ff
	xor [hl]                                         ; $7c16: $ae
	cp a                                             ; $7c17: $bf
	db $e4                                           ; $7c18: $e4
	ld a, a                                          ; $7c19: $7f
	ldh [$7d], a                                     ; $7c1a: $e0 $7d
	db $e3                                           ; $7c1c: $e3
	ei                                               ; $7c1d: $fb
	ld h, a                                          ; $7c1e: $67
	cp $6e                                           ; $7c1f: $fe $6e
	ld e, e                                          ; $7c21: $5b
	and $7f                                          ; $7c22: $e6 $7f
	add c                                            ; $7c24: $81
	jp $c366                                         ; $7c25: $c3 $66 $c3


	ld h, e                                          ; $7c28: $63
	pop bc                                           ; $7c29: $c1
	rst SubAFromBC                                          ; $7c2a: $e7
	ret nz                                           ; $7c2b: $c0

	ldh [$c0], a                                     ; $7c2c: $e0 $c0
	ldh a, [$c0]                                     ; $7c2e: $f0 $c0
	ldh a, [$e0]                                     ; $7c30: $f0 $e0
	ld hl, sp-$60                                    ; $7c32: $f8 $a0
	db $fc                                           ; $7c34: $fc
	db $10                                           ; $7c35: $10
	cp $08                                           ; $7c36: $fe $08
	rst GetHLinHL                                          ; $7c38: $cf

jr_06e_7c39:
	ld b, $47                                        ; $7c39: $06 $47
	inc bc                                           ; $7c3b: $03
	ld b, e                                          ; $7c3c: $43
	ld bc, $0041                                     ; $7c3d: $01 $41 $00
	ld b, c                                          ; $7c40: $41
	nop                                              ; $7c41: $00
	ld hl, $fe7b                                     ; $7c42: $21 $7b $fe
	add b                                            ; $7c45: $80
	xor l                                            ; $7c46: $ad
	rst SubAFromDE                                          ; $7c47: $df
	reti                                             ; $7c48: $d9


	cp a                                             ; $7c49: $bf
	cp a                                             ; $7c4a: $bf

jr_06e_7c4b:
	ld [$eabb], a                                    ; $7c4b: $ea $bb $ea
	rst AddAOntoHL                                          ; $7c4e: $ef
	jp z, $8eeb                                      ; $7c4f: $ca $eb $8e

	and $86                                          ; $7c52: $e6 $86
	ld a, [$3cc3]                                    ; $7c54: $fa $c3 $3c
	ldh a, [$cc]                                     ; $7c57: $f0 $cc
	jr c, @+$38                                      ; $7c59: $38 $36

	call z, $f0fe                                    ; $7c5b: $cc $fe $f0
	ld a, $38                                        ; $7c5e: $3e $38
	ld a, [hl]                                       ; $7c60: $7e
	ld [hl], h                                       ; $7c61: $74
	call nc, $d0f0                                   ; $7c62: $d4 $f0 $d0
	sub [hl]                                         ; $7c65: $96
	ldh a, [$3f]                                     ; $7c66: $f0 $3f
	ret nc                                           ; $7c68: $d0

	rst $38                                          ; $7c69: $ff
	jr nz, jr_06e_7c4b                               ; $7c6a: $20 $df

	ldh [rIE], a                                     ; $7c6c: $e0 $ff
	nop                                              ; $7c6e: $00
	ld e, a                                          ; $7c6f: $5f
	cp $88                                           ; $7c70: $fe $88
	ld a, a                                          ; $7c72: $7f
	add b                                            ; $7c73: $80
	cp a                                             ; $7c74: $bf
	ret nz                                           ; $7c75: $c0

jr_06e_7c76:
	rst AddAOntoHL                                          ; $7c76: $ef
	ldh a, [$f9]                                     ; $7c77: $f0 $f9
	cp $7f                                           ; $7c79: $fe $7f
	rst $38                                          ; $7c7b: $ff

jr_06e_7c7c:
	jr c, jr_06e_7c76                                ; $7c7c: $38 $f8

	jr @-$06                                         ; $7c7e: $18 $f8

	push bc                                          ; $7c80: $c5
	ld b, $c7                                        ; $7c81: $06 $c7
	ld [bc], a                                       ; $7c83: $02
	add d                                            ; $7c84: $82
	inc bc                                           ; $7c85: $03
	add e                                            ; $7c86: $83
	ld bc, $7781                                     ; $7c87: $01 $81 $77
	cp $7b                                           ; $7c8a: $fe $7b
	xor h                                            ; $7c8c: $ac
	sub [hl]                                         ; $7c8d: $96
	inc bc                                           ; $7c8e: $03
	ld bc, $0007                                     ; $7c8f: $01 $07 $00
	rlca                                             ; $7c92: $07
	nop                                              ; $7c93: $00

jr_06e_7c94:
	ld b, $01                                        ; $7c94: $06 $01
	inc bc                                           ; $7c96: $03
	ld a, e                                          ; $7c97: $7b
	cp $dd                                           ; $7c98: $fe $dd

jr_06e_7c9a:
	ld bc, $d980                                     ; $7c9a: $01 $80 $d9
	cp $5f                                           ; $7c9d: $fe $5f
	rst AddAOntoHL                                          ; $7c9f: $ef
	ld l, h                                          ; $7ca0: $6c
	rst FarCall                                          ; $7ca1: $f7
	ld d, d                                          ; $7ca2: $52

jr_06e_7ca3:
	rst $38                                          ; $7ca3: $ff
	ld l, d                                          ; $7ca4: $6a
	rst SubAFromDE                                          ; $7ca5: $df
	ld a, e                                          ; $7ca6: $7b
	rst GetHLinHL                                          ; $7ca7: $cf
	or a                                             ; $7ca8: $b7
	rst GetHLinHL                                          ; $7ca9: $cf
	push af                                          ; $7caa: $f5
	rst $38                                          ; $7cab: $ff
	ld a, a                                          ; $7cac: $7f
	add c                                            ; $7cad: $81
	cp $03                                           ; $7cae: $fe $03
	rrca                                             ; $7cb0: $0f
	di                                               ; $7cb1: $f3
	push af                                          ; $7cb2: $f5
	ei                                               ; $7cb3: $fb
	sbc l                                            ; $7cb4: $9d
	sbc a                                            ; $7cb5: $9f
	halt                                             ; $7cb6: $76
	dec sp                                           ; $7cb7: $3b
	sub $f3                                          ; $7cb8: $d6 $f3
	ld [hl], a                                       ; $7cba: $77
	adc b                                            ; $7cbb: $88
	jp nc, $aef3                                     ; $7cbc: $d2 $f3 $ae

	rst JumpTable                                          ; $7cbf: $c7
	db $fd                                           ; $7cc0: $fd
	rlca                                             ; $7cc1: $07
	db $fd                                           ; $7cc2: $fd
	xor $1e                                          ; $7cc3: $ee $1e
	ret z                                            ; $7cc5: $c8

	jr c, @-$36                                      ; $7cc6: $38 $c8

	jr c, jr_06e_7c9a                                ; $7cc8: $38 $d0

	jr nc, @-$6e                                     ; $7cca: $30 $90

	ld [hl], b                                       ; $7ccc: $70
	and b                                            ; $7ccd: $a0
	ld h, b                                          ; $7cce: $60
	ld b, b                                          ; $7ccf: $40
	ret nz                                           ; $7cd0: $c0

	add b                                            ; $7cd1: $80

jr_06e_7cd2:
	add b                                            ; $7cd2: $80
	rst FarCall                                          ; $7cd3: $f7
	cpl                                              ; $7cd4: $2f
	jr nz, @-$68                                     ; $7cd5: $20 $96

	ld a, [hl]                                       ; $7cd7: $7e
	pop hl                                           ; $7cd8: $e1
	db $fd                                           ; $7cd9: $fd
	ld h, e                                          ; $7cda: $63
	ld a, [$5f66]                                    ; $7cdb: $fa $66 $5f

jr_06e_7cde:
	xor $77                                          ; $7cde: $ee $77
	inc bc                                           ; $7ce0: $03
	jr nz, jr_06e_7d1a                               ; $7ce1: $20 $37

	jr nz, jr_06e_7c7c                               ; $7ce3: $20 $97

	or $0c                                           ; $7ce5: $f6 $0c
	xor $f0                                          ; $7ce7: $ee $f0
	ld a, [$7efc]                                    ; $7ce9: $fa $fc $7e
	ld a, h                                          ; $7cec: $7c
	inc bc                                           ; $7ced: $03
	jr nz, @+$25                                     ; $7cee: $20 $23

	jr nz, @+$81                                     ; $7cf0: $20 $7f

	cp $9e                                           ; $7cf2: $fe $9e
	ld [bc], a                                       ; $7cf4: $02
	dec de                                           ; $7cf5: $1b
	jr nz, jr_06e_7c94                               ; $7cf6: $20 $9c

	rst $38                                          ; $7cf8: $ff
	inc bc                                           ; $7cf9: $03
	ld l, l                                          ; $7cfa: $6d
	ld a, e                                          ; $7cfb: $7b
	ld e, $9d                                        ; $7cfc: $1e $9d
	ld a, [hl]                                       ; $7cfe: $7e
	ccf                                              ; $7cff: $3f
	inc bc                                           ; $7d00: $03
	jr nz, @+$25                                     ; $7d01: $20 $23

	jr nz, jr_06e_7c9a                               ; $7d03: $20 $95

	ld a, h                                          ; $7d05: $7c
	ldh [$f8], a                                     ; $7d06: $e0 $f8
	ld h, b                                          ; $7d08: $60
	ldh a, [$60]                                     ; $7d09: $f0 $60
	ld d, c                                          ; $7d0b: $51
	db $e3                                           ; $7d0c: $e3
	ld l, a                                          ; $7d0d: $6f
	rst GetHLinHL                                          ; $7d0e: $cf
	inc bc                                           ; $7d0f: $03
	jr nz, jr_06e_7d45                               ; $7d10: $20 $33

	jr nz, jr_06e_7ca3                               ; $7d12: $20 $8f

	cp $00                                           ; $7d14: $fe $00
	ld a, [hl]                                       ; $7d16: $7e
	nop                                              ; $7d17: $00
	ld a, $00                                        ; $7d18: $3e $00

jr_06e_7d1a:
	db $ec                                           ; $7d1a: $ec
	ldh a, [$fc]                                     ; $7d1b: $f0 $fc

jr_06e_7d1d:
	db $fc                                           ; $7d1d: $fc
	rst $38                                          ; $7d1e: $ff
	ret nc                                           ; $7d1f: $d0

	rst $38                                          ; $7d20: $ff
	and b                                            ; $7d21: $a0
	ccf                                              ; $7d22: $3f
	ret nz                                           ; $7d23: $c0

	inc bc                                           ; $7d24: $03
	jr nz, jr_06e_7d6a                               ; $7d25: $20 $43

	jr nz, @-$60                                     ; $7d27: $20 $9e

	inc bc                                           ; $7d29: $03
	ld a, e                                          ; $7d2a: $7b
	cp $9b                                           ; $7d2b: $fe $9b
	nop                                              ; $7d2d: $00
	ld bc, $0303                                     ; $7d2e: $01 $03 $03
	cpl                                              ; $7d31: $2f
	jr nz, jr_06e_7cd2                               ; $7d32: $20 $9e

	db $fd                                           ; $7d34: $fd
	ld a, e                                          ; $7d35: $7b
	cp $99                                           ; $7d36: $fe $99
	ld e, $03                                        ; $7d38: $1e $03
	xor $f3                                          ; $7d3a: $ee $f3
	ld a, e                                          ; $7d3c: $7b
	sbc $03                                          ; $7d3d: $de $03
	jr nz, jr_06e_7d94                               ; $7d3f: $20 $53

	jr nz, jr_06e_7cde                               ; $7d41: $20 $9b

	sub a                                            ; $7d43: $97
	cp h                                             ; $7d44: $bc

jr_06e_7d45:
	rst $38                                          ; $7d45: $ff
	xor a                                            ; $7d46: $af
	ld e, a                                          ; $7d47: $5f
	jr nz, @-$69                                     ; $7d48: $20 $95

	ld d, b                                          ; $7d4a: $50
	ldh [$60], a                                     ; $7d4b: $e0 $60
	ret nz                                           ; $7d4d: $c0

	ld h, b                                          ; $7d4e: $60
	ret nz                                           ; $7d4f: $c0

	ld l, [hl]                                       ; $7d50: $6e
	rst JumpTable                                          ; $7d51: $c7
	rst SubAFromBC                                          ; $7d52: $e7
	pop bc                                           ; $7d53: $c1
	inc bc                                           ; $7d54: $03
	jr nz, jr_06e_7dbe                               ; $7d55: $20 $67

	jr nz, @-$68                                     ; $7d57: $20 $96

jr_06e_7d59:
	add e                                            ; $7d59: $83
	call z, $f4f0                                    ; $7d5a: $cc $f0 $f4
	jr c, jr_06e_7d59                                ; $7d5d: $38 $fa

	inc c                                            ; $7d5f: $0c
	cp $04                                           ; $7d60: $fe $04
	ld [hl], a                                       ; $7d62: $77
	ld e, $9e                                        ; $7d63: $1e $9e
	ld a, h                                          ; $7d65: $7c
	ld a, e                                          ; $7d66: $7b
	cp $99                                           ; $7d67: $fe $99
	inc bc                                           ; $7d69: $03

jr_06e_7d6a:
	db $fc                                           ; $7d6a: $fc
	rst SubAFromDE                                          ; $7d6b: $df
	jr c, @+$01                                      ; $7d6c: $38 $ff

	ldh a, [$03]                                     ; $7d6e: $f0 $03
	jr nz, jr_06e_7dd5                               ; $7d70: $20 $63

	jr nz, @+$80                                     ; $7d72: $20 $7e

	ld c, b                                          ; $7d74: $48
	sbc [hl]                                         ; $7d75: $9e
	rlca                                             ; $7d76: $07
	ld [hl], e                                       ; $7d77: $73
	ld e, $77                                        ; $7d78: $1e $77
	jr nz, jr_06e_7d1a                               ; $7d7a: $20 $9e

	ld bc, $fe7b                                     ; $7d7c: $01 $7b $fe
	ld c, a                                          ; $7d7f: $4f
	jr nz, jr_06e_7d1d                               ; $7d80: $20 $9b

	or l                                             ; $7d82: $b5
	rst $38                                          ; $7d83: $ff
	rst $38                                          ; $7d84: $ff
	pop bc                                           ; $7d85: $c1
	ld h, a                                          ; $7d86: $67
	jr nz, jr_06e_7e08                               ; $7d87: $20 $7f

	ld hl, sp+$7f                                    ; $7d89: $f8 $7f
	cp $97                                           ; $7d8b: $fe $97
	dec de                                           ; $7d8d: $1b
	ld b, $5b                                        ; $7d8e: $06 $5b
	cp [hl]                                          ; $7d90: $be
	rst AddAOntoHL                                          ; $7d91: $ef
	push af                                          ; $7d92: $f5
	rst FarCall                                          ; $7d93: $f7

jr_06e_7d94:
	dec c                                            ; $7d94: $0d
	rra                                              ; $7d95: $1f
	jr nz, @-$7d                                     ; $7d96: $20 $81

	rst FarCall                                          ; $7d98: $f7
	add hl, bc                                       ; $7d99: $09
	ldh a, [c]                                       ; $7d9a: $f2
	dec c                                            ; $7d9b: $0d
	ld sp, hl                                        ; $7d9c: $f9
	ld c, $ed                                        ; $7d9d: $0e $ed
	ld e, $eb                                        ; $7d9f: $1e $eb
	inc e                                            ; $7da1: $1c
	rst $38                                          ; $7da2: $ff
	nop                                              ; $7da3: $00
	ei                                               ; $7da4: $fb
	inc e                                            ; $7da5: $1c
	rst AddAOntoHL                                          ; $7da6: $ef
	inc [hl]                                         ; $7da7: $34
	rst $38                                          ; $7da8: $ff
	nop                                              ; $7da9: $00
	rst SubAFromHL                                          ; $7daa: $d7

jr_06e_7dab:
	jr c, jr_06e_7dab                                ; $7dab: $38 $fe

	ld bc, $03fd                                     ; $7dad: $01 $fd $03
	or $0e                                           ; $7db0: $f6 $0e
	inc l                                            ; $7db2: $2c
	call c, $f0f0                                    ; $7db3: $dc $f0 $f0
	ld b, a                                          ; $7db6: $47
	ldh [$9d], a                                     ; $7db7: $e0 $9d
	rst $38                                          ; $7db9: $ff
	inc a                                            ; $7dba: $3c
	inc bc                                           ; $7dbb: $03
	ldh [$7f], a                                     ; $7dbc: $e0 $7f

jr_06e_7dbe:
	ld [hl-], a                                      ; $7dbe: $32
	sbc h                                            ; $7dbf: $9c
	nop                                              ; $7dc0: $00
	sbc $31                                          ; $7dc1: $de $31
	cpl                                              ; $7dc3: $2f
	ldh [$9c], a                                     ; $7dc4: $e0 $9c
	db $db                                           ; $7dc6: $db
	inc a                                            ; $7dc7: $3c
	ei                                               ; $7dc8: $fb
	ld a, e                                          ; $7dc9: $7b
	cp $7f                                           ; $7dca: $fe $7f
	db $10                                           ; $7dcc: $10
	ld a, a                                          ; $7dcd: $7f
	ret nz                                           ; $7dce: $c0

	sbc l                                            ; $7dcf: $9d
	db $dd                                           ; $7dd0: $dd
	inc sp                                           ; $7dd1: $33
	ld h, a                                          ; $7dd2: $67
	ldh [rP1], a                                     ; $7dd3: $e0 $00

jr_06e_7dd5:
	ld [bc], a                                       ; $7dd5: $02
	add b                                            ; $7dd6: $80
	ld [hl], l                                       ; $7dd7: $75
	cp $2b                                           ; $7dd8: $fe $2b
	db $fd                                           ; $7dda: $fd
	ld l, l                                          ; $7ddb: $6d
	ei                                               ; $7ddc: $fb
	ld d, [hl]                                       ; $7ddd: $56
	ei                                               ; $7dde: $fb
	db $db                                           ; $7ddf: $db
	or $9b                                           ; $7de0: $f6 $9b
	or $d7                                           ; $7de2: $f6 $d7
	cp h                                             ; $7de4: $bc
	sub l                                            ; $7de5: $95
	cp a                                             ; $7de6: $bf
	cp $af                                           ; $7de7: $fe $af
	cp a                                             ; $7de9: $bf
	db $e4                                           ; $7dea: $e4
	ld a, a                                          ; $7deb: $7f
	ldh [$7d], a                                     ; $7dec: $e0 $7d
	db $e3                                           ; $7dee: $e3
	ei                                               ; $7def: $fb
	ld h, a                                          ; $7df0: $67
	or $6e                                           ; $7df1: $f6 $6e
	ld e, a                                          ; $7df3: $5f
	cp $7f                                           ; $7df4: $fe $7f
	add c                                            ; $7df6: $81
	jp $c366                                         ; $7df7: $c3 $66 $c3


	ld h, e                                          ; $7dfa: $63
	pop bc                                           ; $7dfb: $c1
	rst SubAFromBC                                          ; $7dfc: $e7
	ret nz                                           ; $7dfd: $c0

	ldh [$c0], a                                     ; $7dfe: $e0 $c0
	ldh a, [$c0]                                     ; $7e00: $f0 $c0
	ldh a, [$e0]                                     ; $7e02: $f0 $e0
	ld hl, sp-$60                                    ; $7e04: $f8 $a0
	db $fc                                           ; $7e06: $fc
	db $10                                           ; $7e07: $10

jr_06e_7e08:
	cp $08                                           ; $7e08: $fe $08
	rst GetHLinHL                                          ; $7e0a: $cf
	ld b, $47                                        ; $7e0b: $06 $47
	inc bc                                           ; $7e0d: $03
	ld b, e                                          ; $7e0e: $43
	ld bc, $0041                                     ; $7e0f: $01 $41 $00
	ld b, c                                          ; $7e12: $41
	nop                                              ; $7e13: $00
	ld hl, $fe7b                                     ; $7e14: $21 $7b $fe
	add b                                            ; $7e17: $80
	xor l                                            ; $7e18: $ad
	rst SubAFromDE                                          ; $7e19: $df
	reti                                             ; $7e1a: $d9


	cp a                                             ; $7e1b: $bf
	cp a                                             ; $7e1c: $bf

jr_06e_7e1d:
	ld [$eabb], a                                    ; $7e1d: $ea $bb $ea
	rst AddAOntoHL                                          ; $7e20: $ef
	jp z, $beeb                                      ; $7e21: $ca $eb $be

	and [hl]                                         ; $7e24: $a6
	or $da                                           ; $7e25: $f6 $da
	db $e3                                           ; $7e27: $e3
	db $fc                                           ; $7e28: $fc
	nop                                              ; $7e29: $00
	db $fc                                           ; $7e2a: $fc
	nop                                              ; $7e2b: $00
	ld c, $f0                                        ; $7e2c: $0e $f0

jr_06e_7e2e:
	or $f8                                           ; $7e2e: $f6 $f8
	ld a, $3c                                        ; $7e30: $3e $3c
	ld a, d                                          ; $7e32: $7a
	ld [hl], h                                       ; $7e33: $74
	call nc, $d0f0                                   ; $7e34: $d4 $f0 $d0
	sub [hl]                                         ; $7e37: $96
	ldh a, [$3f]                                     ; $7e38: $f0 $3f
	ret nc                                           ; $7e3a: $d0

	rst $38                                          ; $7e3b: $ff
	jr nz, jr_06e_7e1d                               ; $7e3c: $20 $df

	ldh [rIE], a                                     ; $7e3e: $e0 $ff
	nop                                              ; $7e40: $00
	ld e, a                                          ; $7e41: $5f
	cp $88                                           ; $7e42: $fe $88
	ld a, a                                          ; $7e44: $7f

jr_06e_7e45:
	add b                                            ; $7e45: $80
	cp a                                             ; $7e46: $bf
	ret nz                                           ; $7e47: $c0

jr_06e_7e48:
	rst AddAOntoHL                                          ; $7e48: $ef
	ldh a, [$f9]                                     ; $7e49: $f0 $f9
	cp $7f                                           ; $7e4b: $fe $7f
	rst $38                                          ; $7e4d: $ff
	jr c, jr_06e_7e48                                ; $7e4e: $38 $f8

	jr @-$06                                         ; $7e50: $18 $f8

	push bc                                          ; $7e52: $c5
	ld b, $c7                                        ; $7e53: $06 $c7
	ld [bc], a                                       ; $7e55: $02

jr_06e_7e56:
	add d                                            ; $7e56: $82
	inc bc                                           ; $7e57: $03
	add e                                            ; $7e58: $83
	ld bc, $7781                                     ; $7e59: $01 $81 $77
	cp $7b                                           ; $7e5c: $fe $7b
	xor h                                            ; $7e5e: $ac
	sbc h                                            ; $7e5f: $9c
	inc bc                                           ; $7e60: $03
	nop                                              ; $7e61: $00

jr_06e_7e62:
	rlca                                             ; $7e62: $07
	ld a, e                                          ; $7e63: $7b
	cp $9c                                           ; $7e64: $fe $9c
	ld b, $01                                        ; $7e66: $06 $01
	inc bc                                           ; $7e68: $03
	ld a, e                                          ; $7e69: $7b

jr_06e_7e6a:
	cp $dd                                           ; $7e6a: $fe $dd

jr_06e_7e6c:
	ld bc, $d980                                     ; $7e6c: $01 $80 $d9
	cp $5f                                           ; $7e6f: $fe $5f
	rst AddAOntoHL                                          ; $7e71: $ef
	ld l, h                                          ; $7e72: $6c
	rst FarCall                                          ; $7e73: $f7
	ld d, d                                          ; $7e74: $52
	rst $38                                          ; $7e75: $ff
	ld l, d                                          ; $7e76: $6a
	rst SubAFromDE                                          ; $7e77: $df
	ld a, e                                          ; $7e78: $7b
	rst GetHLinHL                                          ; $7e79: $cf
	rst SubAFromHL                                          ; $7e7a: $d7
	rst AddAOntoHL                                          ; $7e7b: $ef
	cp l                                             ; $7e7c: $bd

jr_06e_7e7d:
	rst $38                                          ; $7e7d: $ff
	rst SubAFromBC                                          ; $7e7e: $e7
	add hl, de                                       ; $7e7f: $19
	cp $03                                           ; $7e80: $fe $03
	rra                                              ; $7e82: $1f
	db $e3                                           ; $7e83: $e3
	db $fd                                           ; $7e84: $fd
	di                                               ; $7e85: $f3
	cp l                                             ; $7e86: $bd
	cp e                                             ; $7e87: $bb
	ld [hl], $3f                                     ; $7e88: $36 $3f

Call_06e_7e8a:
	sub $f3                                          ; $7e8a: $d6 $f3
	ld [hl], e                                       ; $7e8c: $73
	adc b                                            ; $7e8d: $88
	sub $fb                                          ; $7e8e: $d6 $fb
	and [hl]                                         ; $7e90: $a6
	rst GetHLinHL                                          ; $7e91: $cf
	push af                                          ; $7e92: $f5
	rst FarCall                                          ; $7e93: $f7
	dec c                                            ; $7e94: $0d
	xor $1e                                          ; $7e95: $ee $1e
	ret z                                            ; $7e97: $c8

	jr c, jr_06e_7e62                                ; $7e98: $38 $c8

	jr c, jr_06e_7e6c                                ; $7e9a: $38 $d0

jr_06e_7e9c:
	jr nc, jr_06e_7e2e                               ; $7e9c: $30 $90

	ld [hl], b                                       ; $7e9e: $70
	and b                                            ; $7e9f: $a0
	ld h, b                                          ; $7ea0: $60
	ld b, b                                          ; $7ea1: $40
	ret nz                                           ; $7ea2: $c0

	add b                                            ; $7ea3: $80
	add b                                            ; $7ea4: $80
	rst FarCall                                          ; $7ea5: $f7
	ld c, a                                          ; $7ea6: $4f
	jr nz, jr_06e_7e45                               ; $7ea7: $20 $9c

	sub [hl]                                         ; $7ea9: $96
	cp l                                             ; $7eaa: $bd
	rst $38                                          ; $7eab: $ff
	ld [hl], e                                       ; $7eac: $73
	jr nz, jr_06e_7f2e                               ; $7ead: $20 $7f

	cp $97                                           ; $7eaf: $fe $97
	db $fd                                           ; $7eb1: $fd
	ld h, e                                          ; $7eb2: $63
	ld a, [$4766]                                    ; $7eb3: $fa $66 $47
	cp $7f                                           ; $7eb6: $fe $7f
	rst SubAFromDE                                          ; $7eb8: $df
	inc bc                                           ; $7eb9: $03
	jr nz, jr_06e_7f1b                               ; $7eba: $20 $5f

	jr nz, @-$61                                     ; $7ebc: $20 $9d

	adc [hl]                                         ; $7ebe: $8e
	or [hl]                                          ; $7ebf: $b6
	ld a, e                                          ; $7ec0: $7b
	jr nz, jr_06e_7e56                               ; $7ec1: $20 $93

	ld a, h                                          ; $7ec3: $7c
	add b                                            ; $7ec4: $80
	db $fc                                           ; $7ec5: $fc
	nop                                              ; $7ec6: $00
	cp $00                                           ; $7ec7: $fe $00
	ld e, $e0                                        ; $7ec9: $1e $e0
	or $f8                                           ; $7ecb: $f6 $f8
	ld a, [hl]                                       ; $7ecd: $7e
	ld a, h                                          ; $7ece: $7c
	inc bc                                           ; $7ecf: $03

jr_06e_7ed0:
	jr nz, jr_06e_7ef5                               ; $7ed0: $20 $23

	jr nz, jr_06e_7f53                               ; $7ed2: $20 $7f

	cp $9e                                           ; $7ed4: $fe $9e
	ld [bc], a                                       ; $7ed6: $02
	dec sp                                           ; $7ed7: $3b
	jr nz, jr_06e_7e6a                               ; $7ed8: $20 $90

	rst FarCall                                          ; $7eda: $f7
	rst GetHLinHL                                          ; $7edb: $cf
	and l                                            ; $7edc: $a5
	rst $38                                          ; $7edd: $ff

jr_06e_7ede:
	rst SubAFromDE                                          ; $7ede: $df
	add hl, sp                                       ; $7edf: $39
	cp $03                                           ; $7ee0: $fe $03
	rst $38                                          ; $7ee2: $ff
	inc bc                                           ; $7ee3: $03
	ld l, l                                          ; $7ee4: $6d

jr_06e_7ee5:
	di                                               ; $7ee5: $f3
	push af                                          ; $7ee6: $f5
	ei                                               ; $7ee7: $fb
	ld a, $03                                        ; $7ee8: $3e $03
	jr nz, jr_06e_7f1b                               ; $7eea: $20 $2f

	jr nz, jr_06e_7e7d                               ; $7eec: $20 $8f

	or l                                             ; $7eee: $b5
	xor $7f                                          ; $7eef: $ee $7f
	ldh [$7c], a                                     ; $7ef1: $e0 $7c
	ldh [$f8], a                                     ; $7ef3: $e0 $f8

jr_06e_7ef5:
	ld h, b                                          ; $7ef5: $60
	ldh a, [$60]                                     ; $7ef6: $f0 $60
	ld d, b                                          ; $7ef8: $50
	pop hl                                           ; $7ef9: $e1
	ld h, e                                          ; $7efa: $63
	jp $cf6e                                         ; $7efb: $c3 $6e $cf


	inc bc                                           ; $7efe: $03
	jr nz, @+$65                                     ; $7eff: $20 $63

	jr nz, jr_06e_7e9c                               ; $7f01: $20 $99

	sub $b6                                          ; $7f03: $d6 $b6
	ld [$3cf3], a                                    ; $7f05: $ea $f3 $3c
	ret nz                                           ; $7f08: $c0

	ld [hl], a                                       ; $7f09: $77
	jr nz, jr_06e_7f8b                               ; $7f0a: $20 $7f

	cp $91                                           ; $7f0c: $fe $91
	ld a, [hl]                                       ; $7f0e: $7e
	nop                                              ; $7f0f: $00
	ld a, $00                                        ; $7f10: $3e $00

jr_06e_7f12:
	db $ec                                           ; $7f12: $ec
	ldh a, [$fc]                                     ; $7f13: $f0 $fc
	db $fc                                           ; $7f15: $fc
	pop af                                           ; $7f16: $f1
	sbc $ef                                          ; $7f17: $de $ef
	or b                                             ; $7f19: $b0
	ccf                                              ; $7f1a: $3f

jr_06e_7f1b:
	ret nz                                           ; $7f1b: $c0

	inc bc                                           ; $7f1c: $03
	jr nz, @+$45                                     ; $7f1d: $20 $43

	jr nz, jr_06e_7fa0                               ; $7f1f: $20 $7f

	ld hl, sp+$7f                                    ; $7f21: $f8 $7f
	cp $9e                                           ; $7f23: $fe $9e
	nop                                              ; $7f25: $00
	ld c, e                                          ; $7f26: $4b
	jr nz, @-$65                                     ; $7f27: $20 $99

	or a                                             ; $7f29: $b7
	rst GetHLinHL                                          ; $7f2a: $cf
	push hl                                          ; $7f2b: $e5
	rst $38                                          ; $7f2c: $ff
	sbc a                                            ; $7f2d: $9f

jr_06e_7f2e:
	ld a, c                                          ; $7f2e: $79
	ld [hl], a                                       ; $7f2f: $77
	jr nz, jr_06e_7ed0                               ; $7f30: $20 $9e

	db $fd                                           ; $7f32: $fd
	ld a, e                                          ; $7f33: $7b
	cp $95                                           ; $7f34: $fe $95
	ld e, $03                                        ; $7f36: $1e $03
	xor $f3                                          ; $7f38: $ee $f3
	ld a, e                                          ; $7f3a: $7b
	sbc $eb                                          ; $7f3b: $de $eb
	or [hl]                                          ; $7f3d: $b6
	rra                                              ; $7f3e: $1f
	push hl                                          ; $7f3f: $e5
	inc bc                                           ; $7f40: $03
	jr nz, jr_06e_7f9e                               ; $7f41: $20 $5b

	jr nz, jr_06e_7ede                               ; $7f43: $20 $99

	db $fd                                           ; $7f45: $fd
	xor a                                            ; $7f46: $af
	cp [hl]                                          ; $7f47: $be
	rst SubAFromBC                                          ; $7f48: $e7
	ld a, a                                          ; $7f49: $7f
	add sp, $6b                                      ; $7f4a: $e8 $6b
	jr nz, jr_06e_7ee5                               ; $7f4c: $20 $97

	ldh [$61], a                                     ; $7f4e: $e0 $61
	ret nz                                           ; $7f50: $c0

	ld h, e                                          ; $7f51: $63
	pop bc                                           ; $7f52: $c1

jr_06e_7f53:
	ld l, a                                          ; $7f53: $6f
	rst JumpTable                                          ; $7f54: $c7
	db $e3                                           ; $7f55: $e3
	inc bc                                           ; $7f56: $03
	jr nz, jr_06e_7fc8                               ; $7f57: $20 $6f

	jr nz, jr_06e_7ef5                               ; $7f59: $20 $9a

	and $86                                          ; $7f5b: $e6 $86
	ld a, [$bcf3]                                    ; $7f5d: $fa $f3 $bc
	ld h, e                                          ; $7f60: $63
	jr nz, jr_06e_7fe2                               ; $7f61: $20 $7f

	cp $7f                                           ; $7f63: $fe $7f
	or $97                                           ; $7f65: $f6 $97
	cp b                                             ; $7f67: $b8
	ld a, b                                          ; $7f68: $78
	db $fd                                           ; $7f69: $fd
	cp $b3                                           ; $7f6a: $fe $b3
	call z, $807f                                    ; $7f6c: $cc $7f $80
	inc bc                                           ; $7f6f: $03
	jr nz, @+$35                                     ; $7f70: $20 $33

	jr nz, jr_06e_7f12                               ; $7f72: $20 $9e

	ld bc, $fe77                                     ; $7f74: $01 $77 $fe
	ld a, a                                          ; $7f77: $7f
	db $fd                                           ; $7f78: $fd
	db $f4                                           ; $7f79: $f4
	ld c, a                                          ; $7f7a: $4f
	db $10                                           ; $7f7b: $10
	sbc e                                            ; $7f7c: $9b
	push bc                                          ; $7f7d: $c5
	rst $38                                          ; $7f7e: $ff
	ccf                                              ; $7f7f: $3f
	ld sp, hl                                        ; $7f80: $f9
	ld h, a                                          ; $7f81: $67
	db $10                                           ; $7f82: $10
	ld a, a                                          ; $7f83: $7f
	ld hl, sp+$7f                                    ; $7f84: $f8 $7f
	cp $99                                           ; $7f86: $fe $99
	db $eb                                           ; $7f88: $eb
	or $fb                                           ; $7f89: $f6 $fb

jr_06e_7f8b:
	cp $8f                                           ; $7f8b: $fe $8f
	ld [hl], l                                       ; $7f8d: $75
	rla                                              ; $7f8e: $17
	db $10                                           ; $7f8f: $10
	add c                                            ; $7f90: $81
	and l                                            ; $7f91: $a5
	ld e, e                                          ; $7f92: $5b
	ld d, d                                          ; $7f93: $52
	xor l                                            ; $7f94: $ad
	cp c                                             ; $7f95: $b9
	ld c, [hl]                                       ; $7f96: $4e
	db $ed                                           ; $7f97: $ed
	ld e, $eb                                        ; $7f98: $1e $eb
	inc e                                            ; $7f9a: $1c
	rst $38                                          ; $7f9b: $ff
	nop                                              ; $7f9c: $00
	cp e                                             ; $7f9d: $bb

jr_06e_7f9e:
	ld a, h                                          ; $7f9e: $7c
	ld a, a                                          ; $7f9f: $7f

jr_06e_7fa0:
	ld hl, sp-$61                                    ; $7fa0: $f8 $9f
	ld hl, sp-$71                                    ; $7fa2: $f8 $8f
	ld hl, sp+$76                                    ; $7fa4: $f8 $76
	ld sp, hl                                        ; $7fa6: $f9
	cp l                                             ; $7fa7: $bd
	ld b, e                                          ; $7fa8: $43
	sub $2e                                          ; $7fa9: $d6 $2e
	inc l                                            ; $7fab: $2c
	call c, $f0f0                                    ; $7fac: $dc $f0 $f0
	scf                                              ; $7faf: $37
	ldh [$97], a                                     ; $7fb0: $e0 $97
	ld [hl], a                                       ; $7fb2: $77
	ld hl, sp-$02                                    ; $7fb3: $f8 $fe
	ld bc, $639d                                     ; $7fb5: $01 $9d $63
	or $0e                                           ; $7fb8: $f6 $0e
	scf                                              ; $7fba: $37
	ldh [$9e], a                                     ; $7fbb: $e0 $9e
	ld e, a                                          ; $7fbd: $5f
	ld a, e                                          ; $7fbe: $7b
	ldh [c], a                                       ; $7fbf: $e2
	sbc c                                            ; $7fc0: $99
	cp a                                             ; $7fc1: $bf
	ld b, b                                          ; $7fc2: $40
	sbc $21                                          ; $7fc3: $de $21
	db $fd                                           ; $7fc5: $fd
	inc bc                                           ; $7fc6: $03
	cpl                                              ; $7fc7: $2f

jr_06e_7fc8:
	ldh [$97], a                                     ; $7fc8: $e0 $97
	ld a, a                                          ; $7fca: $7f
	ret nz                                           ; $7fcb: $c0

	rst GetHLinHL                                          ; $7fcc: $cf
	jr nc, @+$01                                     ; $7fcd: $30 $ff

	nop                                              ; $7fcf: $00
	cp $01                                           ; $7fd0: $fe $01
	ld e, a                                          ; $7fd2: $5f
	ldh [$9b], a                                     ; $7fd3: $e0 $9b
	ld [bc], a                                       ; $7fd5: $02
	pop af                                           ; $7fd6: $f1
	db $db                                           ; $7fd7: $db
	ld bc, $029c                                     ; $7fd8: $01 $9c $02
	inc bc                                           ; $7fdb: $03
	ld [bc], a                                       ; $7fdc: $02
	call c, $7703                                    ; $7fdd: $dc $03 $77
	ld hl, sp+$73                                    ; $7fe0: $f8 $73

jr_06e_7fe2:
	or $9a                                           ; $7fe2: $f6 $9a
	ld [bc], a                                       ; $7fe4: $02
	rlca                                             ; $7fe5: $07
	dec b                                            ; $7fe6: $05
	ld c, $0f                                        ; $7fe7: $0e $0f
	ld l, a                                          ; $7fe9: $6f
	and $df                                          ; $7fea: $e6 $df
	inc bc                                           ; $7fec: $03
	rst SubAFromDE                                          ; $7fed: $df
	ld b, $ef                                        ; $7fee: $06 $ef
	db $db                                           ; $7ff0: $db
	ld bc, $03df                                     ; $7ff1: $01 $df $03
	adc a                                            ; $7ff4: $8f
	dec b                                            ; $7ff5: $05
	rlca                                             ; $7ff6: $07
	dec c                                            ; $7ff7: $0d
	dec bc                                           ; $7ff8: $0b
	dec de                                           ; $7ff9: $1b
	rla                                              ; $7ffa: $17
	daa                                              ; $7ffb: $27
	dec a                                            ; $7ffc: $3d
	dec [hl]                                         ; $7ffd: $35
	ccf                                              ; $7ffe: $3f
	ld a, [hl+]                                      ; $7fff: $2a
